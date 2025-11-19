@interface SharingBTLESuggestedItem
+ (id)cornerActionBTLEItemWithPayload:(id)a3 device:(id)a4 options:(id)a5 optionBits:(unsigned int)a6 scanner:(id)a7 receiver:(id)a8;
+ (id)statusString;
- (BOOL)requestPayloadWithCompletionHandler:(id)a3;
- (BOOL)updateFromSFAdvertisement:(id)a3;
- (SharingBTLESuggestedItem)initWithPayload:(id)a3 device:(id)a4 options:(id)a5 optionBits:(unsigned int)a6 type:(unint64_t)a7 activityType:(id)a8 bundleIdentifier:(id)a9 teamIDs:(id)a10 advertisingOptions:(id)a11 scanner:(id)a12 receiver:(id)a13;
- (id)description;
- (id)statusString;
- (id)when;
- (void)clearPayload;
- (void)resignCurrent;
- (void)setWhen:(id)a3;
@end

@implementation SharingBTLESuggestedItem

+ (id)cornerActionBTLEItemWithPayload:(id)a3 device:(id)a4 options:(id)a5 optionBits:(unsigned int)a6 scanner:(id)a7 receiver:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = +[NSMutableSet set];
  v19 = [NSMutableDictionary dictionaryWithDictionary:v15];
  v20 = _LSAdvertisementBytesKind();
  if (v20 == 3)
  {
    v21 = 3;
  }

  else
  {
    v21 = 1;
  }

  if (!v13)
  {
    v51 = 0;
    goto LABEL_110;
  }

  v22 = v20;
  v125 = v15;
  v126 = v14;
  v123 = v21;
  if ((a6 & 4) != 0)
  {
    v52 = v19;
    v53 = v18;
    v138 = 0;
    v54 = BRGetCloudEnabledStatus();
    v55 = 0;
    v56 = v55;
    if (v54 - 252 < 4 || !v54)
    {
      v50 = sub_100001A30(0);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v140 = v54;
        v141 = 2114;
        v142 = v56;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "--- Ignoring incoming advertisement because it contains cloud documents, but BRGetCloudEnabledStatus() returned %ld, %{public}@", buf, 0x16u);
      }

      v51 = 0;
      v57 = v56;
      goto LABEL_109;
    }

    v18 = v53;
    v19 = v52;
  }

  v23 = +[LSApplicationWorkspace defaultWorkspace];
  v124 = v13;
  v24 = _LSCreateDatabaseLookupStringFromHashedBytesForAdvertising();
  v25 = v24;
  v13 = 0;
  v122 = a6;
  v121 = v24;
  if (v22 <= 2)
  {
    if (v22 != 1)
    {
      if (v22 == 2)
      {
        v117 = v18;
        v26 = sub_100001A30(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v140 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, " -- Received a kLSAdvertisementStringDomainNameKind; looking for native application application with advertising string %{public}@", buf, 0xCu);
        }

        v130 = [v23 applicationForUserActivityType:v25];
        if (v130)
        {
          v108 = v19;
          v109 = v23;
          v110 = v16;
          v113 = v17;
          v27 = objc_alloc_init(NSMutableSet);
          sub_100051988(v130, v27);
          v28 = [v130 bundleIdentifier];
          v29 = _LSCopyUserActivityDomainNamesForBundleID();
          v30 = [NSMutableArray arrayWithArray:v29];

          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v31 = v27;
          v32 = [v31 countByEnumeratingWithState:&v134 objects:v147 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v135;
            do
            {
              for (i = 0; i != v33; i = i + 1)
              {
                if (*v135 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v134 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v37 = [v130 bundleIdentifier];
                  v38 = [v36 stringByAppendingFormat:@".%@", v37];

                  v39 = _LSCopyUserActivityDomainNamesForBundleID();
                  v40 = sub_100001A30(0);
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138477827;
                    v140 = v38;
                    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, " -- Adding domains for bundleID: %{private}@", buf, 0xCu);
                  }

                  [v30 addObjectsFromArray:v39];
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v134 objects:v147 count:16];
            }

            while (v33);
          }

          v41 = sub_100001A30(0);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            v42 = [v30 description];
            v43 = sub_100009684(v42);
            *buf = 138477827;
            v140 = v43;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, " -- Domain name strings: %{private}@", buf, 0xCu);
          }

          v16 = v110;
          v17 = v113;
          v19 = v108;
          v23 = v109;
          if ([v30 count])
          {
            v44 = 0;
            while (1)
            {
              v45 = [v30 objectAtIndex:v44];
              v46 = _LSCreateHashedBytesForAdvertisingFromString();
              if (!_LSCompareHashedBytesFromAdvertisingStrings())
              {
                break;
              }

              if (++v44 >= [v30 count])
              {
                goto LABEL_29;
              }
            }

            v74 = sub_100001A30(0);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = sub_100006EF4(v46);
              v76 = [v130 bundleIdentifier];
              *buf = 138543875;
              v140 = v75;
              v141 = 2113;
              v142 = v45;
              v143 = 2113;
              v144 = v76;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, " -- MATCHED, adverising bytes %{public}@ to domain name %{private}@, from application %{private}@", buf, 0x20u);

              v23 = v109;
            }

            v18 = v117;
            sub_100051988(v130, v117);
            v13 = [v130 bundleIdentifier];

            v48 = v130;
            v49 = 0;
            v50 = @"NSUserActivityTypeBrowsingWeb";
            v16 = v110;
            v17 = v113;
            goto LABEL_103;
          }

LABEL_29:
        }

        v47 = sub_100001A30(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, " -- Received a kLSAdvertisementStringDomainNameKind; no match for native application, so looking for browser", buf, 2u);
        }

        v48 = sub_10006224C();

        v13 = [v48 bundleIdentifier];
        v18 = v117;
        sub_100051988(v48, v117);
        v49 = 0;
        v50 = @"NSUserActivityTypeBrowsingWeb";
LABEL_103:
        if (v13 && v50)
        {
          v100 = sub_100001A30(0);
          if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
          {
            sub_100006EF4(v124);
            v133 = v49;
            v101 = v23;
            v102 = v48;
            v104 = v103 = v18;
            *buf = 138478595;
            v140 = v50;
            v141 = 2113;
            v142 = v13;
            v143 = 2113;
            v144 = v126;
            v145 = 2114;
            v146 = v104;
            _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_INFO, " -- Found application %{private}@, with matching advertisingIdentifier %{private}@, from %{private}@ for payload %{public}@", buf, 0x2Au);

            v18 = v103;
            v48 = v102;
            v23 = v101;
            v49 = v133;
          }
        }

        goto LABEL_108;
      }

      goto LABEL_49;
    }

    v64 = sub_100001A30(0);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v140 = v25;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, " -- Received a kLSAdvertisementStringUserActivityKind; finding application with advertising string %{public}@", buf, 0xCu);
    }

    v65 = [v23 applicationForUserActivityType:v25];
    if (v65)
    {
      v48 = v65;
      v66 = 0;
      v49 = 0;
      v50 = 0;
      v13 = 0;
    }

    else
    {
      v114 = v17;
      v119 = v18;
      v111 = v16;
      v68 = [NSUserDefaults alloc];
      v69 = [v68 initWithSuiteName:kUADynamicUserActivitesPreferences];
      v70 = [v69 objectForKey:kUADynamicUserActivitiesKey];
      v71 = [v70 objectForKey:v25];
      v72 = v71;
      if (v71)
      {
        v127 = [v71 objectForKey:kUADynamicUserActivityHashKey];
        v73 = [v23 applicationForUserActivityType:?];
        v49 = [v72 objectForKey:kUADynamicUserActivityDynamicActivityKey];
        v13 = [v73 bundleIdentifier];
        v50 = [v72 objectForKey:kUADynamicUserActivityAppActivityKey];
        v48 = v73;
        sub_100051988(v73, v119);
      }

      else
      {
        v127 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v13 = 0;
      }

      v16 = v111;
      v17 = v114;
      v18 = v119;
      v66 = v127;
      if (v49)
      {
LABEL_95:
        if (!v48)
        {
          if (v122)
          {
            v48 = sub_10006224C();
            if (v48)
            {
              v129 = v66;
              v98 = sub_100001A30(0);
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v140 = v121;
                _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "-- Falling back to _UAUserActivityTypeBrowsingWeb because no application matched the advertisement %{public}@ and kUserActivityAdvertisingBytesItemHasWebpageURLMask was set.", buf, 0xCu);
              }

              sub_100051988(v48, v18);
              v99 = [v48 bundleIdentifier];

              v50 = @"NSUserActivityTypeBrowsingWeb";
              v13 = v99;
              v66 = v129;
            }
          }

          else
          {
            v48 = 0;
          }
        }

        goto LABEL_103;
      }
    }

    if (v48)
    {
      v132 = v48;
      v86 = [v48 activityTypes];
      if ([v86 count])
      {
        v128 = v66;
        v116 = v17;
        v120 = v18;
        v112 = v16;
        v87 = 0;
        while (1)
        {
          v88 = [v86 objectAtIndex:v87];
          v89 = _LSCreateHashedBytesForAdvertisingFromString();
          if (!_LSCompareHashedBytesFromAdvertisingStrings())
          {
            break;
          }

          if (++v87 >= [v86 count])
          {
            goto LABEL_91;
          }
        }

        v90 = sub_100001A30(0);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v91 = [v132 bundleIdentifier];
          *buf = 138543875;
          v140 = v89;
          v141 = 2113;
          v142 = v88;
          v143 = 2113;
          v144 = v91;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, " -- MATCHED, adverising bytes %{public}@ to activityType %{private}@, from application %{private}@", buf, 0x20u);
        }

        sub_100051988(v132, v120);
        v92 = [v132 bundleIdentifier];

        v93 = [v88 rangeOfString:@":"];
        if (v94 && (v95 = v93 + 1, v93 + 1 < [v88 length]))
        {
          v96 = [v88 substringFromIndex:v95];
        }

        else
        {
          v96 = v88;
        }

        v97 = v96;

        v50 = v97;
        v13 = v92;
LABEL_91:
        v16 = v112;
        v17 = v116;
        v18 = v120;
        v66 = v128;
      }

      if (!v13)
      {

        v132 = 0;
      }

      v48 = v132;
    }

    goto LABEL_95;
  }

  if (v22 == 3)
  {
    v50 = v24;
    v67 = UAUserActivityTypeSiri;
    if ([v50 isEqualToString:UAUserActivityTypeSiri])
    {
      v13 = v67;

      v48 = 0;
      v49 = 0;
      v18 = 0;
      goto LABEL_103;
    }

    v13 = 0;
    v49 = 0;
    v48 = 0;
  }

  else
  {
    if (v22 != 4)
    {
LABEL_49:
      v50 = 0;
      v49 = 0;
      v48 = 0;
      goto LABEL_108;
    }

    v58 = sub_100001A30(0);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v140 = v25;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, " -- Received a kLSAdvertisementStringPrivateSpaceKind; finding application with private space string %{public}@", buf, 0xCu);
    }

    v59 = [v23 applicationForUserActivityType:v25];
    v48 = v59;
    if (v59)
    {
      v60 = [v59 activityTypes];
      if ([v60 count])
      {
        v131 = v48;
        v118 = v18;
        v61 = 0;
        while (1)
        {
          v62 = [v60 objectAtIndex:v61];
          v63 = _LSCreateHashedBytesForAdvertisingFromString();
          if (!_LSCompareHashedBytesFromAdvertisingStrings())
          {
            break;
          }

          if (++v61 >= [v60 count])
          {
            v50 = 0;
            v13 = 0;
            v18 = v118;
            goto LABEL_87;
          }
        }

        v115 = v17;
        v77 = sub_100001A30(0);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          v78 = sub_100006EF4(v63);
          [v131 bundleIdentifier];
          v80 = v79 = v23;
          *buf = 138543875;
          v140 = v78;
          v141 = 2113;
          v142 = v62;
          v143 = 2113;
          v144 = v80;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, " -- MATCHED, adverising bytes %{public}@ to privateType string %{private}@, from application %{private}@", buf, 0x20u);

          v23 = v79;
        }

        v13 = [v131 bundleIdentifier];
        sub_100051988(v131, v118);
        if ([v62 hasPrefix:@"NOTIFICATION#"])
        {
          [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:UAUserActivityIsNotificationOptionKey];
          v81 = [v62 substringFromIndex:{objc_msgSend(@"NOTIFICATION#", "length")}];

          v123 = 2;
          v62 = v81;
        }

        v17 = v115;
        v82 = [v62 rangeOfString:@":"];
        if (v83 && (v84 = v82 + 1, v82 + 1 < [v62 length]))
        {
          v85 = [v62 substringFromIndex:v84];
        }

        else
        {
          v85 = v62;
        }

        v50 = v85;
        v18 = v118;

LABEL_87:
        v48 = v131;
      }

      else
      {
        v50 = 0;
        v13 = 0;
      }

      v49 = 0;
      goto LABEL_103;
    }

    v13 = 0;
    v50 = 0;
    v49 = 0;
  }

LABEL_108:

  v107 = v19;
  v52 = v19;
  v53 = v18;
  v106 = v18;
  v57 = v124;
  v51 = [[SharingBTLESuggestedItem alloc] initWithPayload:v124 device:v126 options:v125 optionBits:v122 type:v123 activityType:v50 bundleIdentifier:v13 teamIDs:v106 advertisingOptions:v107 scanner:v16 receiver:v17 dynamicIdentifier:v49];

LABEL_109:
  v18 = v53;
  v19 = v52;
  v15 = v125;
  v14 = v126;
LABEL_110:

  return v51;
}

- (SharingBTLESuggestedItem)initWithPayload:(id)a3 device:(id)a4 options:(id)a5 optionBits:(unsigned int)a6 type:(unint64_t)a7 activityType:(id)a8 bundleIdentifier:(id)a9 teamIDs:(id)a10 advertisingOptions:(id)a11 scanner:(id)a12 receiver:(id)a13
{
  v91 = a3;
  v88 = a4;
  v87 = a5;
  v16 = a8;
  v93 = a9;
  v17 = a10;
  v18 = a11;
  v19 = a12;
  v86 = a13;
  v20 = sub_100001A30(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = sub_100009EC4(a7);
    v22 = [v17 description];
    v23 = sub_100009684(v22);
    [v18 description];
    v83 = v19;
    v24 = v18;
    v25 = v17;
    v27 = v26 = v16;
    v28 = sub_100009684(v27);
    *buf = 138479363;
    v96 = v91;
    v97 = 2048;
    v98 = a6;
    v99 = 2113;
    v100 = v21;
    v101 = 2113;
    v102 = v26;
    v103 = 2113;
    v104 = v93;
    v105 = 2113;
    v106 = v23;
    v107 = 2114;
    v108 = v28;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Creating CornerActionBTLEItem, advertisementPayload=%{private}@ optionBit=%ld type=%{private}@ activityType=%{private}@ bundleID=%{private}@ teamID=%{private}@ advertisingOptions=%{public}@", buf, 0x48u);

    v16 = v26;
    v17 = v25;
    v18 = v24;
    v19 = v83;
  }

  if (!v16)
  {
    v90 = v18;
    v37 = v17;
    v38 = sub_100001A30(0);
    v31 = v91;
    v32 = v88;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = sub_100006EF4(v91);
      *buf = 138543362;
      v96 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Unable to determine application on this device for advertisement %{public}@, so ignoring this received activity.", buf, 0xCu);
    }

    v30 = 0;
    v35 = v87;
    goto LABEL_41;
  }

  v29 = +[NSUUID UUID];
  v94.receiver = self;
  v94.super_class = SharingBTLESuggestedItem;
  v30 = [(SharingBTLESuggestedItem *)&v94 initWithUUID:v29 type:a7 options:v18];

  v31 = v91;
  v32 = v88;
  if (v30)
  {
    v81 = v16;
    objc_storeStrong(&v30->_scanner, a12);
    objc_storeStrong(&v30->_receiver, a13);
    v33 = [[SharingBTLEAdvertisementPayload alloc] initWithAdvertisedBytes:v91];
    advertisementPayload = v30->_advertisementPayload;
    v30->_advertisementPayload = v33;

    v30->_optionBits = a6;
    v35 = v87;
    if (v87)
    {
      v36 = [v87 mutableCopy];
    }

    else
    {
      v36 = +[NSMutableDictionary dictionary];
    }

    v40 = v36;
    if (a6)
    {
      [(SharingBTLESuggestedItem *)v36 setObject:&__kCFBooleanTrue forKey:UAUserActivityHasWebPageURLOptionKey];
      if ((a6 & 2) == 0)
      {
LABEL_14:
        if ((a6 & 0x40) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_22;
      }
    }

    else if ((a6 & 2) == 0)
    {
      goto LABEL_14;
    }

    [(SharingBTLESuggestedItem *)v40 setObject:&__kCFBooleanTrue forKey:_LSUserActivityContainsFileProviderURLKey, v16];
    if ((a6 & 0x40) == 0)
    {
LABEL_15:
      if ((a6 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

LABEL_22:
    [(SharingBTLESuggestedItem *)v40 setObject:&__kCFBooleanTrue forKey:@"UAUserActivityAdvertiserHasMoreActivities", v81];
    if ((a6 & 0x80) == 0)
    {
LABEL_16:
      if ((a6 & 0x20) == 0)
      {
LABEL_18:
        v90 = v18;
        self = v40;
        v41 = [(SharingBTLESuggestedItem *)v40 copy];
        [(SharingBTLESuggestedItem *)v30 setOptions:v41];

        [(SharingBTLESuggestedItem *)v30 setActivityType:v82];
        [(SharingBTLESuggestedItem *)v30 setBundleIdentifier:v93];
        [(SharingBTLESuggestedItem *)v30 setPeerDevice:v88];
        v84 = v19;
        if (v17)
        {
          v37 = v17;
          v42 = [v17 copy];
          [(SharingBTLESuggestedItem *)v30 setTeamIDs:v42];
        }

        else
        {
          v37 = 0;
          [(SharingBTLESuggestedItem *)v30 setTeamIDs:0];
        }

        v43 = [(SharingBTLESuggestedItem *)v30 advertisementPayload];
        v44 = [v43 time];
        [(SharingBTLESuggestedItem *)v30 setWhen:v44];

        v45 = +[NSDate date];
        [(SharingBTLESuggestedItem *)v30 setLastInterestingTime:v45];

        v46 = [(SharingBTLESuggestedItem *)v30 advertisementPayload];
        v47 = [v46 currentUntil];
        [(SharingBTLESuggestedItem *)v30 setCurrentUntilDate:v47];

        v48 = [(SharingBTLESuggestedItem *)v30 currentUntilDate];
        v49 = NSDate;
        v50 = +[UAUserActivityDefaults sharedDefaults];
        v51 = v50;
        if (v48)
        {
          [v50 cornerActionItemAdditionalTimeToLiveAfterValidIntervalExpires];
          v53 = v52;
          v54 = [(SharingBTLEAdvertisementPayload *)v30->_advertisementPayload validUntil];
          v49 = [NSDate dateWithTimeInterval:v54 sinceDate:v53];
          [(SharingBTLESuggestedItem *)v30 setRemoveAfter:v49];
        }

        else
        {
          [v50 cornerActionItemMaximumTimeForBTLEItemToLive];
          v54 = [NSDate dateWithTimeIntervalSinceNow:?];
          [(SharingBTLESuggestedItem *)v30 setRemoveAfter:v54];
        }

        v55 = objc_alloc_init(UAUserActivityAnalyticsInfo);
        [(SharingBTLESuggestedItem *)v30 setWasContinuedInfo:v55];

        v56 = [v88 isDefaultPairedDevice];
        v57 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [v57 setFromPairedDevice:v56];

        v58 = [(SharingBTLESuggestedItem *)v30 bundleIdentifier];
        v59 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [v59 setBundleIdentifier:v58];

        v60 = [(SharingBTLESuggestedItem *)v30 activityType];
        v61 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [v61 setActivityType:v60];

        v62 = [(SharingBTLESuggestedItem *)v30 type];
        v63 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [v63 setSuggestedActionType:v62];

        v64 = [(SharingBTLESuggestedItem *)v30 activityType];
        v65 = [v64 isEqual:@"NSUserActivityTypeBrowsingWeb"];
        if (v65)
        {
          v66 = 1;
        }

        else
        {
          v49 = [(SharingBTLESuggestedItem *)v30 webpageURL];
          v66 = v49 != 0;
        }

        v67 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [v67 setBrowserFallback:v66];

        if ((v65 & 1) == 0)
        {
        }

        v68 = [(SharingBTLESuggestedItem *)v30 peerDevice];
        v69 = [v68 modelIdentifier];
        v70 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [v70 setRemoteDeviceType:v69];

        v71 = [(SharingBTLESuggestedItem *)v30 uuid];
        v72 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [v72 setUuid:v71];

        v73 = [(SharingBTLESuggestedItem *)v30 activityType];
        LODWORD(v72) = [v73 isEqual:@"NSUserActivityTypeBrowsingWeb"];

        if (v72)
        {
          v74 = sub_10006224C();
          v75 = [v74 bundleIdentifier];
          v76 = [(SharingBTLESuggestedItem *)v30 bundleIdentifier];
          v77 = [v75 isEqual:v76];

          if ((v77 & 1) == 0)
          {
            v78 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
            [v78 setWebToNative:1];
          }
        }

        v38 = sub_100001A30(@"Diagnostic");
        v16 = v82;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v79 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
          *buf = 138477827;
          v96 = v79;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Created wasContinuedInfo for BTLEAd: %{private}@", buf, 0xCu);
        }

        v19 = v84;
LABEL_41:

        v17 = v37;
        v18 = v90;
        goto LABEL_42;
      }

LABEL_17:
      [(SharingBTLESuggestedItem *)v40 setObject:&__kCFBooleanTrue forKey:UAUserActivityAutoPullActivitiesListKey, v81];
      goto LABEL_18;
    }

LABEL_23:
    [(SharingBTLESuggestedItem *)v40 setObject:&__kCFBooleanTrue forKey:@"UAUserActivityItemIsNotActiveKey", v81];
    [(SharingBTLESuggestedItem *)v30 setActive:0];
    if ((a6 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v35 = v87;
LABEL_42:

  return v30;
}

- (BOOL)updateFromSFAdvertisement:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 advertisementPayload];
    v7 = sub_100006EF4(v6);
    v8 = [(SharingBTLESuggestedItem *)self uuid];
    v9 = [v8 UUIDString];
    v40 = 138543618;
    v41 = v7;
    v42 = 2114;
    v43 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "RECEIVED advertisement, %{public}@, matched against existing corner item %{public}@ so merely update it from the flags & options", &v40, 0x16u);
  }

  if (v4)
  {
    v10 = [v4 advertisementPayload];
    v11 = [(SharingBTLESuggestedItem *)self advertisementPayload];
    v12 = [v11 advertisementPayload];
    v13 = [v10 isEqual:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(SharingBTLESuggestedItem *)self advertisementPayload];
  if (v14)
  {
    v15 = [(SharingBTLESuggestedItem *)self advertisementPayload];
    v16 = [v15 isCurrent] ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = [SharingBTLEAdvertisementPayload alloc];
  v18 = [v4 advertisementPayload];
  v19 = [(SharingBTLEAdvertisementPayload *)v17 initWithAdvertisedBytes:v18];
  [(SharingBTLESuggestedItem *)self setAdvertisementPayload:v19];

  v20 = [(SharingBTLESuggestedItem *)self advertisementPayload];
  v21 = [v20 time];

  if ((v13 & 1) == 0)
  {
    v22 = [(SharingBTLESuggestedItem *)self advertisementPayload];
    v23 = [v22 isCurrent];

    if (v16)
    {
      if (v23)
      {
LABEL_15:
        v26 = +[NSDate date];
        [(SharingBTLESuggestedItem *)self setLastInterestingTime:v26];

        goto LABEL_16;
      }
    }

    else if ((v23 & 1) == 0)
    {
      goto LABEL_16;
    }

    v24 = [(SharingBTLESuggestedItem *)self advertisementPayload];
    v25 = [v24 isCurrent];

    if (!v25)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:
  [(SharingBTLESuggestedItem *)self setWhen:v21];
  v27 = [(SharingBTLESuggestedItem *)self advertisementPayload];
  v28 = [v27 currentUntil];
  [(SharingBTLESuggestedItem *)self setCurrentUntilDate:v28];

  v29 = [v4 advertisementPayload];
  v30 = (sub_100064DA0(v29) & 0x80) == 0;

  [(SharingBTLESuggestedItem *)self setActive:v30];
  v31 = [(SharingBTLESuggestedItem *)self currentUntilDate];

  v32 = +[UAUserActivityDefaults sharedDefaults];
  v33 = v32;
  if (v31)
  {
    [v32 cornerActionItemAdditionalTimeToLiveAfterValidIntervalExpires];
    v35 = v34;
    v36 = [(SharingBTLESuggestedItem *)self advertisementPayload];
    v37 = [v36 validUntil];
    v38 = [NSDate dateWithTimeInterval:v37 sinceDate:v35];
    [(SharingBTLESuggestedItem *)self setRemoveAfter:v38];
  }

  else
  {
    [v32 cornerActionItemMaximumTimeForBTLEItemToLive];
    v36 = [NSDate dateWithTimeIntervalSinceNow:?];
    [(SharingBTLESuggestedItem *)self setRemoveAfter:v36];
  }

  return 1;
}

- (BOOL)requestPayloadWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(SharingBTLESuggestedItem *)self uuid];
    v7 = [v6 UUIDString];
    if ([(SharingBTLESuggestedItem *)self isPayloadRequested])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    *buf = 138543874;
    if ([(SharingBTLESuggestedItem *)self isPayloadAvailable])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v51 = v7;
    v52 = 2114;
    v53 = v8;
    v54 = 2114;
    v55 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "for item %{public}@ requested=%{public}@ available=%{public}@", buf, 0x20u);
  }

  v10 = self;
  objc_sync_enter(v10);
  if ([(SharingBTLESuggestedItem *)v10 isPayloadAvailable])
  {
    v11 = sub_100001A30(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(SharingBTLESuggestedItem *)v10 uuid];
      v13 = [v12 UUIDString];
      *buf = 138543362;
      v51 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Requesting payload for item %{public}@ payload, but it is already present, so dispatching directly.", buf, 0xCu);
    }

    v4[2](v4, 0);
  }

  else if ([(SharingBTLESuggestedItem *)v10 isPayloadRequested])
  {
    if (v4)
    {
      payloadRequestedCompletions = v10->_payloadRequestedCompletions;
      v15 = objc_retainBlock(v4);
      [(NSMutableSet *)payloadRequestedCompletions addObject:v15];
    }
  }

  else
  {
    v16 = [(SharingBTLESuggestedItem *)v10 payloadRequestedCompletions];
    v17 = v16 == 0;

    if (v17)
    {
      v18 = +[NSMutableSet set];
      [(SharingBTLESuggestedItem *)v10 setPayloadRequestedCompletions:v18];
    }

    if (v4)
    {
      v19 = [(SharingBTLESuggestedItem *)v10 payloadRequestedCompletions];
      v20 = objc_retainBlock(v4);
      [v19 addObject:v20];
    }

    [(SharingBTLESuggestedItem *)v10 setPayloadRequested:1];
    v21 = [(SharingBTLESuggestedItem *)v10 wasContinuedInfo];
    [v21 setPayloadRequested:1];

    v22 = [(SharingBTLESuggestedItem *)v10 peerDevice];
    v23 = [v22 modelIdentifier];
    v24 = [(SharingBTLESuggestedItem *)v10 wasContinuedInfo];
    [v24 setRemoteDeviceType:v23];

    v25 = +[UAUserActivityDefaults sharedDefaults];
    [v25 handoffPayloadRequestTimout];
    v27 = v26;

    v28 = sub_100001A30(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(SharingBTLESuggestedItem *)v10 uuid];
      v30 = [v29 UUIDString];
      v31 = [(SharingBTLESuggestedItem *)v10 advertisementPayload];
      v32 = [v31 payloadBytes];
      v33 = sub_100006EF4(v32);
      v34 = [(SharingBTLESuggestedItem *)v10 bundleIdentifier];
      v35 = [NSNumber numberWithDouble:v27];
      *buf = 138544131;
      v51 = v30;
      v52 = 2114;
      v53 = v33;
      v54 = 2113;
      v55 = v34;
      v56 = 2114;
      v57 = v35;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Requesting payload for item %{public}@ advertisementPayload=%{public}@ bundleIdentifier=%{private}@ with timeout: %{public}@", buf, 0x2Au);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v37 = sub_1000620EC();
    v38 = [(SharingBTLESuggestedItem *)v10 uuid];
    v39 = qword_1000E5DC8;
    qword_1000E5DC8 = v38;

    v40 = objc_alloc_init(NSDate);
    v41 = qword_1000E5DD0;
    qword_1000E5DD0 = v40;

    kdebug_trace();
    v42 = sub_100001A30(@"signposts");
    v43 = v42;
    if (&v10->UAUserActivityInfo_opaque[1] >= 2 && os_signpost_enabled(v42))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_BEGIN, v10, "sharingFetch", "", buf, 2u);
    }

    v44 = [(SharingBTLESuggestedItem *)v10 scanner];
    v45 = [(SharingBTLESuggestedItem *)v10 peerDevice];
    v46 = [(SharingBTLESuggestedItem *)v10 advertisementPayload];
    v47 = [v46 payloadBytes];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100053064;
    v49[3] = &unk_1000C5E68;
    v49[4] = v10;
    *&v49[5] = v37;
    *&v49[6] = Current;
    [v44 activityPayloadFromDevice:v45 forAdvertisementPayload:v47 command:@"HANDOFF" timeout:v27 withCompletionHandler:v49];
  }

  objc_sync_exit(v10);

  return 1;
}

- (void)resignCurrent
{
  v3 = [(SharingBTLESuggestedItem *)self when];
  v4.receiver = self;
  v4.super_class = SharingBTLESuggestedItem;
  [(SharingBTLESuggestedItem *)&v4 setWhen:v3];

  [(SharingBTLESuggestedItem *)self setCurrentUntilDate:0];
}

- (void)clearPayload
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(SharingBTLESuggestedItem *)self uuid];
    v5 = [v4 UUIDString];
    *buf = 138543619;
    v12 = v5;
    v13 = 2113;
    v14 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "PAYLOAD: clearing payload for activity %{public}@, self=%{private}@", buf, 0x16u);
  }

  v6 = self;
  objc_sync_enter(v6);
  v10.receiver = v6;
  v10.super_class = SharingBTLESuggestedItem;
  [(SharingBTLESuggestedItem *)&v10 clearPayload];
  if ([(SharingBTLESuggestedItem *)v6 isPayloadAvailable])
  {
    v7 = sub_100001A30(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(SharingBTLESuggestedItem *)v6 uuid];
      v9 = [v8 UUIDString];
      *buf = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "--- item %{public}@ payload already present, so nil-ing it out.", buf, 0xCu);
    }

    [(SharingBTLESuggestedItem *)v6 setPayloadAvailable:0];
  }

  objc_sync_exit(v6);
}

- (id)statusString
{
  v31 = [(SharingBTLESuggestedItem *)self uuid];
  v36 = [v31 UUIDString];
  v35 = [(SharingBTLESuggestedItem *)self advertisementPayload];
  v30 = [(SharingBTLESuggestedItem *)self optionBits];
  if (v30)
  {
    v3 = "";
    if (([(SharingBTLESuggestedItem *)self optionBits]& 1) != 0)
    {
      v4 = " webPage";
    }

    else
    {
      v4 = "";
    }

    if (([(SharingBTLESuggestedItem *)self optionBits]& 2) != 0)
    {
      v5 = " fp";
    }

    else
    {
      v5 = "";
    }

    if (([(SharingBTLESuggestedItem *)self optionBits]& 4) != 0)
    {
      v6 = " cloud";
    }

    else
    {
      v6 = "";
    }

    if (([(SharingBTLESuggestedItem *)self optionBits]& 0x20) != 0)
    {
      v3 = " autopull";
    }

    v32 = [NSString stringWithFormat:@"%s%s%s%s/%lx", v4, v5, v6, v3, [(SharingBTLESuggestedItem *)self optionBits]];
  }

  else
  {
    v32 = &stru_1000C67D0;
  }

  v34 = [(SharingBTLESuggestedItem *)self bundleIdentifier];
  v29 = [(SharingBTLESuggestedItem *)self when];
  v33 = sub_100009AC0(v29);
  v7 = [(SharingBTLESuggestedItem *)self removeAfter];
  if (v7)
  {
    v28 = [(SharingBTLESuggestedItem *)self removeAfter];
    v27 = sub_100009AC0(v28);
    v8 = [NSString stringWithFormat:@"remove:%@ ", v27];
  }

  else
  {
    v8 = &stru_1000C67D0;
  }

  v9 = [(SharingBTLESuggestedItem *)self peerDevice];
  v10 = [v9 name];
  v11 = [(SharingBTLESuggestedItem *)self peerDevice];
  v12 = [v11 modelIdentifier];
  v13 = [(SharingBTLESuggestedItem *)self peerDevice];
  v14 = [v13 deviceType];
  v15 = [NSMutableString stringWithFormat:@"BTLEItem:%@ %@%@ id=%@ when=%@ %@device=%@ modelCode=%@ deviceType=%@", v36, v35, v32, v34, v33, v8, v10, v12, v14];

  if (v7)
  {
  }

  if (v30)
  {
  }

  v16 = [(SharingBTLESuggestedItem *)self options];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [(SharingBTLESuggestedItem *)self options];
    v19 = [NSJSONSerialization dataWithJSONObject:v18 options:0 error:0];

    v20 = [[NSString alloc] initWithData:v19 encoding:4];
    [v15 appendFormat:@" options=%@", v20];
  }

  if ([(SharingBTLESuggestedItem *)self isPayloadAvailable])
  {
    v21 = [(SharingBTLESuggestedItem *)self payloadForIdentifier:UAUserActivityUserInfoPayload];
    v22 = sub_1000021AC(v21, 0x40uLL);
    v23 = [NSString stringWithFormat:@" payload=$%@", v22];
    [v15 appendString:v23];
  }

  else
  {
    if ([(SharingBTLESuggestedItem *)self isPayloadRequested])
    {
      v24 = @" payloadRequested";
    }

    else
    {
      v24 = @" payload NA";
    }

    [v15 appendString:v24];
  }

  v25 = [v15 copy];

  return v25;
}

- (id)when
{
  v10.receiver = self;
  v10.super_class = SharingBTLESuggestedItem;
  v3 = [(SharingBTLESuggestedItem *)&v10 when];
  v4 = [(SharingBTLESuggestedItem *)self currentUntilDate];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = +[NSDate date];
    if ([v7 compare:v5] == -1)
    {
      v8 = v7;

      v3 = v8;
    }
  }

  return v3;
}

- (void)setWhen:(id)a3
{
  v4 = a3;
  v5 = [(SharingBTLESuggestedItem *)self currentUntilDate];
  if (!v4 || v5)
  {
  }

  else
  {
    v6 = [(SharingBTLESuggestedItem *)self when];
    v7 = [v4 isEqual:v6];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  [(SharingBTLESuggestedItem *)self setCurrentUntilDate:0];
  v9.receiver = self;
  v9.super_class = SharingBTLESuggestedItem;
  [(SharingBTLESuggestedItem *)&v9 setWhen:v4];
  v8 = [(SharingBTLESuggestedItem *)self manager];
  [v8 scheduleBestAppDetermination];

LABEL_7:
}

- (id)description
{
  v3 = [(SharingBTLESuggestedItem *)self uuid];
  v4 = [v3 UUIDString];
  v5 = [(SharingBTLESuggestedItem *)self activityType];
  v6 = [(SharingBTLESuggestedItem *)self bundleIdentifier];
  if (v6)
  {
    v7 = [(SharingBTLESuggestedItem *)self bundleIdentifier];
  }

  else
  {
    v7 = @"-";
  }

  v8 = [(SharingBTLESuggestedItem *)self when];
  v9 = [NSString stringWithFormat:@"UASharingBTLEItem:%@ %@/%@ %@", v4, v5, v7, v8];

  if (v6)
  {
  }

  return v9;
}

+ (id)statusString
{
  if (qword_1000E5DC8)
  {
    v2 = [qword_1000E5DC8 UUIDString];
    v3 = [NSString stringWithFormat:@"Last BTLE payload fetched for item %@, at %@, from %@\n", v2, qword_1000E5DD0, 0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end