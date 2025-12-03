@interface SharingBTLESuggestedItem
+ (id)cornerActionBTLEItemWithPayload:(id)payload device:(id)device options:(id)options optionBits:(unsigned int)bits scanner:(id)scanner receiver:(id)receiver;
+ (id)statusString;
- (BOOL)requestPayloadWithCompletionHandler:(id)handler;
- (BOOL)updateFromSFAdvertisement:(id)advertisement;
- (SharingBTLESuggestedItem)initWithPayload:(id)payload device:(id)device options:(id)options optionBits:(unsigned int)bits type:(unint64_t)type activityType:(id)activityType bundleIdentifier:(id)identifier teamIDs:(id)self0 advertisingOptions:(id)self1 scanner:(id)self2 receiver:(id)self3;
- (id)description;
- (id)statusString;
- (id)when;
- (void)clearPayload;
- (void)resignCurrent;
- (void)setWhen:(id)when;
@end

@implementation SharingBTLESuggestedItem

+ (id)cornerActionBTLEItemWithPayload:(id)payload device:(id)device options:(id)options optionBits:(unsigned int)bits scanner:(id)scanner receiver:(id)receiver
{
  payloadCopy = payload;
  deviceCopy = device;
  optionsCopy = options;
  scannerCopy = scanner;
  receiverCopy = receiver;
  v18 = +[NSMutableSet set];
  v19 = [NSMutableDictionary dictionaryWithDictionary:optionsCopy];
  v20 = _LSAdvertisementBytesKind();
  if (v20 == 3)
  {
    v21 = 3;
  }

  else
  {
    v21 = 1;
  }

  if (!payloadCopy)
  {
    v51 = 0;
    goto LABEL_110;
  }

  v22 = v20;
  v125 = optionsCopy;
  v126 = deviceCopy;
  v123 = v21;
  if ((bits & 4) != 0)
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
  v124 = payloadCopy;
  v24 = _LSCreateDatabaseLookupStringFromHashedBytesForAdvertising();
  v25 = v24;
  payloadCopy = 0;
  bitsCopy = bits;
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
          v110 = scannerCopy;
          v113 = receiverCopy;
          v27 = objc_alloc_init(NSMutableSet);
          sub_100051988(v130, v27);
          bundleIdentifier = [v130 bundleIdentifier];
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
                  bundleIdentifier2 = [v130 bundleIdentifier];
                  v38 = [v36 stringByAppendingFormat:@".%@", bundleIdentifier2];

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

          scannerCopy = v110;
          receiverCopy = v113;
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
              bundleIdentifier3 = [v130 bundleIdentifier];
              *buf = 138543875;
              v140 = v75;
              v141 = 2113;
              v142 = v45;
              v143 = 2113;
              v144 = bundleIdentifier3;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, " -- MATCHED, adverising bytes %{public}@ to domain name %{private}@, from application %{private}@", buf, 0x20u);

              v23 = v109;
            }

            v18 = v117;
            sub_100051988(v130, v117);
            payloadCopy = [v130 bundleIdentifier];

            v48 = v130;
            v49 = 0;
            v50 = @"NSUserActivityTypeBrowsingWeb";
            scannerCopy = v110;
            receiverCopy = v113;
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

        payloadCopy = [v48 bundleIdentifier];
        v18 = v117;
        sub_100051988(v48, v117);
        v49 = 0;
        v50 = @"NSUserActivityTypeBrowsingWeb";
LABEL_103:
        if (payloadCopy && v50)
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
            v142 = payloadCopy;
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
      payloadCopy = 0;
    }

    else
    {
      v114 = receiverCopy;
      v119 = v18;
      v111 = scannerCopy;
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
        payloadCopy = [v73 bundleIdentifier];
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
        payloadCopy = 0;
      }

      scannerCopy = v111;
      receiverCopy = v114;
      v18 = v119;
      v66 = v127;
      if (v49)
      {
LABEL_95:
        if (!v48)
        {
          if (bitsCopy)
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
              bundleIdentifier4 = [v48 bundleIdentifier];

              v50 = @"NSUserActivityTypeBrowsingWeb";
              payloadCopy = bundleIdentifier4;
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
      activityTypes = [v48 activityTypes];
      if ([activityTypes count])
      {
        v128 = v66;
        v116 = receiverCopy;
        v120 = v18;
        v112 = scannerCopy;
        v87 = 0;
        while (1)
        {
          v88 = [activityTypes objectAtIndex:v87];
          v89 = _LSCreateHashedBytesForAdvertisingFromString();
          if (!_LSCompareHashedBytesFromAdvertisingStrings())
          {
            break;
          }

          if (++v87 >= [activityTypes count])
          {
            goto LABEL_91;
          }
        }

        v90 = sub_100001A30(0);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier5 = [v132 bundleIdentifier];
          *buf = 138543875;
          v140 = v89;
          v141 = 2113;
          v142 = v88;
          v143 = 2113;
          v144 = bundleIdentifier5;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, " -- MATCHED, adverising bytes %{public}@ to activityType %{private}@, from application %{private}@", buf, 0x20u);
        }

        sub_100051988(v132, v120);
        bundleIdentifier6 = [v132 bundleIdentifier];

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
        payloadCopy = bundleIdentifier6;
LABEL_91:
        scannerCopy = v112;
        receiverCopy = v116;
        v18 = v120;
        v66 = v128;
      }

      if (!payloadCopy)
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
      payloadCopy = v67;

      v48 = 0;
      v49 = 0;
      v18 = 0;
      goto LABEL_103;
    }

    payloadCopy = 0;
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
      activityTypes2 = [v59 activityTypes];
      if ([activityTypes2 count])
      {
        v131 = v48;
        v118 = v18;
        v61 = 0;
        while (1)
        {
          v62 = [activityTypes2 objectAtIndex:v61];
          v63 = _LSCreateHashedBytesForAdvertisingFromString();
          if (!_LSCompareHashedBytesFromAdvertisingStrings())
          {
            break;
          }

          if (++v61 >= [activityTypes2 count])
          {
            v50 = 0;
            payloadCopy = 0;
            v18 = v118;
            goto LABEL_87;
          }
        }

        v115 = receiverCopy;
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

        payloadCopy = [v131 bundleIdentifier];
        sub_100051988(v131, v118);
        if ([v62 hasPrefix:@"NOTIFICATION#"])
        {
          [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:UAUserActivityIsNotificationOptionKey];
          v81 = [v62 substringFromIndex:{objc_msgSend(@"NOTIFICATION#", "length")}];

          v123 = 2;
          v62 = v81;
        }

        receiverCopy = v115;
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
        payloadCopy = 0;
      }

      v49 = 0;
      goto LABEL_103;
    }

    payloadCopy = 0;
    v50 = 0;
    v49 = 0;
  }

LABEL_108:

  v107 = v19;
  v52 = v19;
  v53 = v18;
  v106 = v18;
  v57 = v124;
  v51 = [[SharingBTLESuggestedItem alloc] initWithPayload:v124 device:v126 options:v125 optionBits:bitsCopy type:v123 activityType:v50 bundleIdentifier:payloadCopy teamIDs:v106 advertisingOptions:v107 scanner:scannerCopy receiver:receiverCopy dynamicIdentifier:v49];

LABEL_109:
  v18 = v53;
  v19 = v52;
  optionsCopy = v125;
  deviceCopy = v126;
LABEL_110:

  return v51;
}

- (SharingBTLESuggestedItem)initWithPayload:(id)payload device:(id)device options:(id)options optionBits:(unsigned int)bits type:(unint64_t)type activityType:(id)activityType bundleIdentifier:(id)identifier teamIDs:(id)self0 advertisingOptions:(id)self1 scanner:(id)self2 receiver:(id)self3
{
  payloadCopy = payload;
  deviceCopy = device;
  optionsCopy = options;
  activityTypeCopy = activityType;
  identifierCopy = identifier;
  dsCopy = ds;
  advertisingOptionsCopy = advertisingOptions;
  scannerCopy = scanner;
  receiverCopy = receiver;
  v20 = sub_100001A30(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = sub_100009EC4(type);
    v22 = [dsCopy description];
    v23 = sub_100009684(v22);
    [advertisingOptionsCopy description];
    v83 = scannerCopy;
    v24 = advertisingOptionsCopy;
    v25 = dsCopy;
    v27 = v26 = activityTypeCopy;
    v28 = sub_100009684(v27);
    *buf = 138479363;
    v96 = payloadCopy;
    v97 = 2048;
    bitsCopy = bits;
    v99 = 2113;
    v100 = v21;
    v101 = 2113;
    v102 = v26;
    v103 = 2113;
    v104 = identifierCopy;
    v105 = 2113;
    v106 = v23;
    v107 = 2114;
    v108 = v28;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Creating CornerActionBTLEItem, advertisementPayload=%{private}@ optionBit=%ld type=%{private}@ activityType=%{private}@ bundleID=%{private}@ teamID=%{private}@ advertisingOptions=%{public}@", buf, 0x48u);

    activityTypeCopy = v26;
    dsCopy = v25;
    advertisingOptionsCopy = v24;
    scannerCopy = v83;
  }

  if (!activityTypeCopy)
  {
    v90 = advertisingOptionsCopy;
    v37 = dsCopy;
    v38 = sub_100001A30(0);
    v31 = payloadCopy;
    v32 = deviceCopy;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = sub_100006EF4(payloadCopy);
      *buf = 138543362;
      v96 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Unable to determine application on this device for advertisement %{public}@, so ignoring this received activity.", buf, 0xCu);
    }

    v30 = 0;
    v35 = optionsCopy;
    goto LABEL_41;
  }

  v29 = +[NSUUID UUID];
  v94.receiver = self;
  v94.super_class = SharingBTLESuggestedItem;
  v30 = [(SharingBTLESuggestedItem *)&v94 initWithUUID:v29 type:type options:advertisingOptionsCopy];

  v31 = payloadCopy;
  v32 = deviceCopy;
  if (v30)
  {
    v81 = activityTypeCopy;
    objc_storeStrong(&v30->_scanner, scanner);
    objc_storeStrong(&v30->_receiver, receiver);
    v33 = [[SharingBTLEAdvertisementPayload alloc] initWithAdvertisedBytes:payloadCopy];
    advertisementPayload = v30->_advertisementPayload;
    v30->_advertisementPayload = v33;

    v30->_optionBits = bits;
    v35 = optionsCopy;
    if (optionsCopy)
    {
      v36 = [optionsCopy mutableCopy];
    }

    else
    {
      v36 = +[NSMutableDictionary dictionary];
    }

    v40 = v36;
    if (bits)
    {
      [(SharingBTLESuggestedItem *)v36 setObject:&__kCFBooleanTrue forKey:UAUserActivityHasWebPageURLOptionKey];
      if ((bits & 2) == 0)
      {
LABEL_14:
        if ((bits & 0x40) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_22;
      }
    }

    else if ((bits & 2) == 0)
    {
      goto LABEL_14;
    }

    [(SharingBTLESuggestedItem *)v40 setObject:&__kCFBooleanTrue forKey:_LSUserActivityContainsFileProviderURLKey, activityTypeCopy];
    if ((bits & 0x40) == 0)
    {
LABEL_15:
      if ((bits & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

LABEL_22:
    [(SharingBTLESuggestedItem *)v40 setObject:&__kCFBooleanTrue forKey:@"UAUserActivityAdvertiserHasMoreActivities", v81];
    if ((bits & 0x80) == 0)
    {
LABEL_16:
      if ((bits & 0x20) == 0)
      {
LABEL_18:
        v90 = advertisingOptionsCopy;
        self = v40;
        v41 = [(SharingBTLESuggestedItem *)v40 copy];
        [(SharingBTLESuggestedItem *)v30 setOptions:v41];

        [(SharingBTLESuggestedItem *)v30 setActivityType:v82];
        [(SharingBTLESuggestedItem *)v30 setBundleIdentifier:identifierCopy];
        [(SharingBTLESuggestedItem *)v30 setPeerDevice:deviceCopy];
        v84 = scannerCopy;
        if (dsCopy)
        {
          v37 = dsCopy;
          v42 = [dsCopy copy];
          [(SharingBTLESuggestedItem *)v30 setTeamIDs:v42];
        }

        else
        {
          v37 = 0;
          [(SharingBTLESuggestedItem *)v30 setTeamIDs:0];
        }

        advertisementPayload = [(SharingBTLESuggestedItem *)v30 advertisementPayload];
        time = [advertisementPayload time];
        [(SharingBTLESuggestedItem *)v30 setWhen:time];

        v45 = +[NSDate date];
        [(SharingBTLESuggestedItem *)v30 setLastInterestingTime:v45];

        advertisementPayload2 = [(SharingBTLESuggestedItem *)v30 advertisementPayload];
        currentUntil = [advertisementPayload2 currentUntil];
        [(SharingBTLESuggestedItem *)v30 setCurrentUntilDate:currentUntil];

        currentUntilDate = [(SharingBTLESuggestedItem *)v30 currentUntilDate];
        webpageURL = NSDate;
        v50 = +[UAUserActivityDefaults sharedDefaults];
        v51 = v50;
        if (currentUntilDate)
        {
          [v50 cornerActionItemAdditionalTimeToLiveAfterValidIntervalExpires];
          v53 = v52;
          validUntil = [(SharingBTLEAdvertisementPayload *)v30->_advertisementPayload validUntil];
          webpageURL = [NSDate dateWithTimeInterval:validUntil sinceDate:v53];
          [(SharingBTLESuggestedItem *)v30 setRemoveAfter:webpageURL];
        }

        else
        {
          [v50 cornerActionItemMaximumTimeForBTLEItemToLive];
          validUntil = [NSDate dateWithTimeIntervalSinceNow:?];
          [(SharingBTLESuggestedItem *)v30 setRemoveAfter:validUntil];
        }

        v55 = objc_alloc_init(UAUserActivityAnalyticsInfo);
        [(SharingBTLESuggestedItem *)v30 setWasContinuedInfo:v55];

        isDefaultPairedDevice = [deviceCopy isDefaultPairedDevice];
        wasContinuedInfo = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [wasContinuedInfo setFromPairedDevice:isDefaultPairedDevice];

        bundleIdentifier = [(SharingBTLESuggestedItem *)v30 bundleIdentifier];
        wasContinuedInfo2 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [wasContinuedInfo2 setBundleIdentifier:bundleIdentifier];

        activityType = [(SharingBTLESuggestedItem *)v30 activityType];
        wasContinuedInfo3 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [wasContinuedInfo3 setActivityType:activityType];

        type = [(SharingBTLESuggestedItem *)v30 type];
        wasContinuedInfo4 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [wasContinuedInfo4 setSuggestedActionType:type];

        activityType2 = [(SharingBTLESuggestedItem *)v30 activityType];
        v65 = [activityType2 isEqual:@"NSUserActivityTypeBrowsingWeb"];
        if (v65)
        {
          v66 = 1;
        }

        else
        {
          webpageURL = [(SharingBTLESuggestedItem *)v30 webpageURL];
          v66 = webpageURL != 0;
        }

        wasContinuedInfo5 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [wasContinuedInfo5 setBrowserFallback:v66];

        if ((v65 & 1) == 0)
        {
        }

        peerDevice = [(SharingBTLESuggestedItem *)v30 peerDevice];
        modelIdentifier = [peerDevice modelIdentifier];
        wasContinuedInfo6 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [wasContinuedInfo6 setRemoteDeviceType:modelIdentifier];

        uuid = [(SharingBTLESuggestedItem *)v30 uuid];
        wasContinuedInfo7 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
        [wasContinuedInfo7 setUuid:uuid];

        activityType3 = [(SharingBTLESuggestedItem *)v30 activityType];
        LODWORD(wasContinuedInfo7) = [activityType3 isEqual:@"NSUserActivityTypeBrowsingWeb"];

        if (wasContinuedInfo7)
        {
          v74 = sub_10006224C();
          bundleIdentifier2 = [v74 bundleIdentifier];
          bundleIdentifier3 = [(SharingBTLESuggestedItem *)v30 bundleIdentifier];
          v77 = [bundleIdentifier2 isEqual:bundleIdentifier3];

          if ((v77 & 1) == 0)
          {
            wasContinuedInfo8 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
            [wasContinuedInfo8 setWebToNative:1];
          }
        }

        v38 = sub_100001A30(@"Diagnostic");
        activityTypeCopy = v82;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          wasContinuedInfo9 = [(SharingBTLESuggestedItem *)v30 wasContinuedInfo];
          *buf = 138477827;
          v96 = wasContinuedInfo9;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Created wasContinuedInfo for BTLEAd: %{private}@", buf, 0xCu);
        }

        scannerCopy = v84;
LABEL_41:

        dsCopy = v37;
        advertisingOptionsCopy = v90;
        goto LABEL_42;
      }

LABEL_17:
      [(SharingBTLESuggestedItem *)v40 setObject:&__kCFBooleanTrue forKey:UAUserActivityAutoPullActivitiesListKey, v81];
      goto LABEL_18;
    }

LABEL_23:
    [(SharingBTLESuggestedItem *)v40 setObject:&__kCFBooleanTrue forKey:@"UAUserActivityItemIsNotActiveKey", v81];
    [(SharingBTLESuggestedItem *)v30 setActive:0];
    if ((bits & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v35 = optionsCopy;
LABEL_42:

  return v30;
}

- (BOOL)updateFromSFAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    advertisementPayload = [advertisementCopy advertisementPayload];
    v7 = sub_100006EF4(advertisementPayload);
    uuid = [(SharingBTLESuggestedItem *)self uuid];
    uUIDString = [uuid UUIDString];
    v40 = 138543618;
    v41 = v7;
    v42 = 2114;
    v43 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "RECEIVED advertisement, %{public}@, matched against existing corner item %{public}@ so merely update it from the flags & options", &v40, 0x16u);
  }

  if (advertisementCopy)
  {
    advertisementPayload2 = [advertisementCopy advertisementPayload];
    advertisementPayload3 = [(SharingBTLESuggestedItem *)self advertisementPayload];
    v11AdvertisementPayload = [advertisementPayload3 advertisementPayload];
    v13 = [advertisementPayload2 isEqual:v11AdvertisementPayload];
  }

  else
  {
    v13 = 0;
  }

  advertisementPayload4 = [(SharingBTLESuggestedItem *)self advertisementPayload];
  if (advertisementPayload4)
  {
    advertisementPayload5 = [(SharingBTLESuggestedItem *)self advertisementPayload];
    v16 = [advertisementPayload5 isCurrent] ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = [SharingBTLEAdvertisementPayload alloc];
  advertisementPayload6 = [advertisementCopy advertisementPayload];
  v19 = [(SharingBTLEAdvertisementPayload *)v17 initWithAdvertisedBytes:advertisementPayload6];
  [(SharingBTLESuggestedItem *)self setAdvertisementPayload:v19];

  advertisementPayload7 = [(SharingBTLESuggestedItem *)self advertisementPayload];
  time = [advertisementPayload7 time];

  if ((v13 & 1) == 0)
  {
    advertisementPayload8 = [(SharingBTLESuggestedItem *)self advertisementPayload];
    isCurrent = [advertisementPayload8 isCurrent];

    if (v16)
    {
      if (isCurrent)
      {
LABEL_15:
        v26 = +[NSDate date];
        [(SharingBTLESuggestedItem *)self setLastInterestingTime:v26];

        goto LABEL_16;
      }
    }

    else if ((isCurrent & 1) == 0)
    {
      goto LABEL_16;
    }

    advertisementPayload9 = [(SharingBTLESuggestedItem *)self advertisementPayload];
    isCurrent2 = [advertisementPayload9 isCurrent];

    if (!isCurrent2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:
  [(SharingBTLESuggestedItem *)self setWhen:time];
  advertisementPayload10 = [(SharingBTLESuggestedItem *)self advertisementPayload];
  currentUntil = [advertisementPayload10 currentUntil];
  [(SharingBTLESuggestedItem *)self setCurrentUntilDate:currentUntil];

  advertisementPayload11 = [advertisementCopy advertisementPayload];
  v30 = (sub_100064DA0(advertisementPayload11) & 0x80) == 0;

  [(SharingBTLESuggestedItem *)self setActive:v30];
  currentUntilDate = [(SharingBTLESuggestedItem *)self currentUntilDate];

  v32 = +[UAUserActivityDefaults sharedDefaults];
  v33 = v32;
  if (currentUntilDate)
  {
    [v32 cornerActionItemAdditionalTimeToLiveAfterValidIntervalExpires];
    v35 = v34;
    advertisementPayload12 = [(SharingBTLESuggestedItem *)self advertisementPayload];
    validUntil = [advertisementPayload12 validUntil];
    v38 = [NSDate dateWithTimeInterval:validUntil sinceDate:v35];
    [(SharingBTLESuggestedItem *)self setRemoveAfter:v38];
  }

  else
  {
    [v32 cornerActionItemMaximumTimeForBTLEItemToLive];
    advertisementPayload12 = [NSDate dateWithTimeIntervalSinceNow:?];
    [(SharingBTLESuggestedItem *)self setRemoveAfter:advertisementPayload12];
  }

  return 1;
}

- (BOOL)requestPayloadWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(SharingBTLESuggestedItem *)self uuid];
    uUIDString = [uuid UUIDString];
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

    v51 = uUIDString;
    v52 = 2114;
    v53 = v8;
    v54 = 2114;
    v55 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "for item %{public}@ requested=%{public}@ available=%{public}@", buf, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(SharingBTLESuggestedItem *)selfCopy isPayloadAvailable])
  {
    v11 = sub_100001A30(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      uuid2 = [(SharingBTLESuggestedItem *)selfCopy uuid];
      uUIDString2 = [uuid2 UUIDString];
      *buf = 138543362;
      v51 = uUIDString2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Requesting payload for item %{public}@ payload, but it is already present, so dispatching directly.", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else if ([(SharingBTLESuggestedItem *)selfCopy isPayloadRequested])
  {
    if (handlerCopy)
    {
      payloadRequestedCompletions = selfCopy->_payloadRequestedCompletions;
      v15 = objc_retainBlock(handlerCopy);
      [(NSMutableSet *)payloadRequestedCompletions addObject:v15];
    }
  }

  else
  {
    payloadRequestedCompletions = [(SharingBTLESuggestedItem *)selfCopy payloadRequestedCompletions];
    v17 = payloadRequestedCompletions == 0;

    if (v17)
    {
      v18 = +[NSMutableSet set];
      [(SharingBTLESuggestedItem *)selfCopy setPayloadRequestedCompletions:v18];
    }

    if (handlerCopy)
    {
      payloadRequestedCompletions2 = [(SharingBTLESuggestedItem *)selfCopy payloadRequestedCompletions];
      v20 = objc_retainBlock(handlerCopy);
      [payloadRequestedCompletions2 addObject:v20];
    }

    [(SharingBTLESuggestedItem *)selfCopy setPayloadRequested:1];
    wasContinuedInfo = [(SharingBTLESuggestedItem *)selfCopy wasContinuedInfo];
    [wasContinuedInfo setPayloadRequested:1];

    peerDevice = [(SharingBTLESuggestedItem *)selfCopy peerDevice];
    modelIdentifier = [peerDevice modelIdentifier];
    wasContinuedInfo2 = [(SharingBTLESuggestedItem *)selfCopy wasContinuedInfo];
    [wasContinuedInfo2 setRemoteDeviceType:modelIdentifier];

    v25 = +[UAUserActivityDefaults sharedDefaults];
    [v25 handoffPayloadRequestTimout];
    v27 = v26;

    v28 = sub_100001A30(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      uuid3 = [(SharingBTLESuggestedItem *)selfCopy uuid];
      uUIDString3 = [uuid3 UUIDString];
      advertisementPayload = [(SharingBTLESuggestedItem *)selfCopy advertisementPayload];
      payloadBytes = [advertisementPayload payloadBytes];
      v33 = sub_100006EF4(payloadBytes);
      bundleIdentifier = [(SharingBTLESuggestedItem *)selfCopy bundleIdentifier];
      v35 = [NSNumber numberWithDouble:v27];
      *buf = 138544131;
      v51 = uUIDString3;
      v52 = 2114;
      v53 = v33;
      v54 = 2113;
      v55 = bundleIdentifier;
      v56 = 2114;
      v57 = v35;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Requesting payload for item %{public}@ advertisementPayload=%{public}@ bundleIdentifier=%{private}@ with timeout: %{public}@", buf, 0x2Au);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v37 = sub_1000620EC();
    uuid4 = [(SharingBTLESuggestedItem *)selfCopy uuid];
    v39 = qword_1000E5DC8;
    qword_1000E5DC8 = uuid4;

    v40 = objc_alloc_init(NSDate);
    v41 = qword_1000E5DD0;
    qword_1000E5DD0 = v40;

    kdebug_trace();
    v42 = sub_100001A30(@"signposts");
    v43 = v42;
    if (&selfCopy->UAUserActivityInfo_opaque[1] >= 2 && os_signpost_enabled(v42))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_BEGIN, selfCopy, "sharingFetch", "", buf, 2u);
    }

    scanner = [(SharingBTLESuggestedItem *)selfCopy scanner];
    peerDevice2 = [(SharingBTLESuggestedItem *)selfCopy peerDevice];
    advertisementPayload2 = [(SharingBTLESuggestedItem *)selfCopy advertisementPayload];
    payloadBytes2 = [advertisementPayload2 payloadBytes];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100053064;
    v49[3] = &unk_1000C5E68;
    v49[4] = selfCopy;
    *&v49[5] = v37;
    *&v49[6] = Current;
    [scanner activityPayloadFromDevice:peerDevice2 forAdvertisementPayload:payloadBytes2 command:@"HANDOFF" timeout:v27 withCompletionHandler:v49];
  }

  objc_sync_exit(selfCopy);

  return 1;
}

- (void)resignCurrent
{
  when = [(SharingBTLESuggestedItem *)self when];
  v4.receiver = self;
  v4.super_class = SharingBTLESuggestedItem;
  [(SharingBTLESuggestedItem *)&v4 setWhen:when];

  [(SharingBTLESuggestedItem *)self setCurrentUntilDate:0];
}

- (void)clearPayload
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    uuid = [(SharingBTLESuggestedItem *)self uuid];
    uUIDString = [uuid UUIDString];
    *buf = 138543619;
    v12 = uUIDString;
    v13 = 2113;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "PAYLOAD: clearing payload for activity %{public}@, self=%{private}@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v10.receiver = selfCopy2;
  v10.super_class = SharingBTLESuggestedItem;
  [(SharingBTLESuggestedItem *)&v10 clearPayload];
  if ([(SharingBTLESuggestedItem *)selfCopy2 isPayloadAvailable])
  {
    v7 = sub_100001A30(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      uuid2 = [(SharingBTLESuggestedItem *)selfCopy2 uuid];
      uUIDString2 = [uuid2 UUIDString];
      *buf = 138543362;
      v12 = uUIDString2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "--- item %{public}@ payload already present, so nil-ing it out.", buf, 0xCu);
    }

    [(SharingBTLESuggestedItem *)selfCopy2 setPayloadAvailable:0];
  }

  objc_sync_exit(selfCopy2);
}

- (id)statusString
{
  uuid = [(SharingBTLESuggestedItem *)self uuid];
  uUIDString = [uuid UUIDString];
  advertisementPayload = [(SharingBTLESuggestedItem *)self advertisementPayload];
  optionBits = [(SharingBTLESuggestedItem *)self optionBits];
  if (optionBits)
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

  bundleIdentifier = [(SharingBTLESuggestedItem *)self bundleIdentifier];
  when = [(SharingBTLESuggestedItem *)self when];
  v33 = sub_100009AC0(when);
  removeAfter = [(SharingBTLESuggestedItem *)self removeAfter];
  if (removeAfter)
  {
    removeAfter2 = [(SharingBTLESuggestedItem *)self removeAfter];
    v27 = sub_100009AC0(removeAfter2);
    v8 = [NSString stringWithFormat:@"remove:%@ ", v27];
  }

  else
  {
    v8 = &stru_1000C67D0;
  }

  peerDevice = [(SharingBTLESuggestedItem *)self peerDevice];
  name = [peerDevice name];
  peerDevice2 = [(SharingBTLESuggestedItem *)self peerDevice];
  modelIdentifier = [peerDevice2 modelIdentifier];
  peerDevice3 = [(SharingBTLESuggestedItem *)self peerDevice];
  deviceType = [peerDevice3 deviceType];
  v15 = [NSMutableString stringWithFormat:@"BTLEItem:%@ %@%@ id=%@ when=%@ %@device=%@ modelCode=%@ deviceType=%@", uUIDString, advertisementPayload, v32, bundleIdentifier, v33, v8, name, modelIdentifier, deviceType];

  if (removeAfter)
  {
  }

  if (optionBits)
  {
  }

  options = [(SharingBTLESuggestedItem *)self options];
  v17 = [options count];

  if (v17)
  {
    options2 = [(SharingBTLESuggestedItem *)self options];
    v19 = [NSJSONSerialization dataWithJSONObject:options2 options:0 error:0];

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
  when = [(SharingBTLESuggestedItem *)&v10 when];
  currentUntilDate = [(SharingBTLESuggestedItem *)self currentUntilDate];
  v5 = currentUntilDate;
  if (when)
  {
    v6 = currentUntilDate == 0;
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

      when = v8;
    }
  }

  return when;
}

- (void)setWhen:(id)when
{
  whenCopy = when;
  currentUntilDate = [(SharingBTLESuggestedItem *)self currentUntilDate];
  if (!whenCopy || currentUntilDate)
  {
  }

  else
  {
    when = [(SharingBTLESuggestedItem *)self when];
    v7 = [whenCopy isEqual:when];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  [(SharingBTLESuggestedItem *)self setCurrentUntilDate:0];
  v9.receiver = self;
  v9.super_class = SharingBTLESuggestedItem;
  [(SharingBTLESuggestedItem *)&v9 setWhen:whenCopy];
  manager = [(SharingBTLESuggestedItem *)self manager];
  [manager scheduleBestAppDetermination];

LABEL_7:
}

- (id)description
{
  uuid = [(SharingBTLESuggestedItem *)self uuid];
  uUIDString = [uuid UUIDString];
  activityType = [(SharingBTLESuggestedItem *)self activityType];
  bundleIdentifier = [(SharingBTLESuggestedItem *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    bundleIdentifier2 = [(SharingBTLESuggestedItem *)self bundleIdentifier];
  }

  else
  {
    bundleIdentifier2 = @"-";
  }

  when = [(SharingBTLESuggestedItem *)self when];
  v9 = [NSString stringWithFormat:@"UASharingBTLEItem:%@ %@/%@ %@", uUIDString, activityType, bundleIdentifier2, when];

  if (bundleIdentifier)
  {
  }

  return v9;
}

+ (id)statusString
{
  if (qword_1000E5DC8)
  {
    uUIDString = [qword_1000E5DC8 UUIDString];
    v3 = [NSString stringWithFormat:@"Last BTLE payload fetched for item %@, at %@, from %@\n", uUIDString, qword_1000E5DD0, 0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end