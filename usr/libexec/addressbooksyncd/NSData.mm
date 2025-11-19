@interface NSData
- (id)CNFSDeserialize;
@end

@implementation NSData

- (id)CNFSDeserialize
{
  v2 = [[NSInputStream alloc] initWithData:self];
  [v2 open];
  if (sub_100006268(v2) != 1)
  {
    v86 = NSInvalidUnarchiveOperationException;
    v87 = @"Archive version not supported";
    goto LABEL_157;
  }

  if (sub_100006268(v2) != 1)
  {
    v86 = NSInvalidUnarchiveOperationException;
    v87 = @"Archive type not supported";
    goto LABEL_157;
  }

  if (sub_100006268(v2) != 1)
  {
    v86 = NSInvalidUnarchiveOperationException;
    v87 = @"Archive must start with identifier";
    goto LABEL_157;
  }

  v3 = [CNMutableContact alloc];
  v4 = sub_1000062E8(v2);
  v5 = [v3 initWithIdentifier:v4];

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v105 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  if ([v2 hasBytesAvailable])
  {
    v101 = CNSocialProfileTeamIdentifierKey;
    v100 = CNSocialProfileBundleIdentifiersKey;
    v99 = CNSocialProfileDisplayNameKey;
    v103 = v8;
    v104 = v9;
    v106 = v10;
    v107 = v11;
    v108 = v12;
    while (1)
    {
      v13 = sub_100006268(v2);
      if ((v13 - 32) > 0x1DF)
      {
        break;
      }

LABEL_7:
      v14 = sub_10000644C(v2);
LABEL_118:
      if (([v2 hasBytesAvailable] & 1) == 0)
      {
        goto LABEL_135;
      }
    }

    if ((v13 + 32752) <= 0xEFu)
    {
      v15 = v2;
      for (i = v15; ; v15 = i)
      {
        v17 = sub_100006814(v15);

        if (v17 == @"<<EOB>>")
        {
          break;
        }

        v18 = sub_1000062E8(i);
      }

      goto LABEL_16;
    }

    if (v13 > 0x8000)
    {
      if (v13 <= 32772)
      {
        if (v13 > 32770)
        {
          if (v13 != 32771)
          {
            v35 = v2;
            v36 = sub_100006814(v35);
            v37 = sub_1000062E8(v35);

            v38 = [[CNLabeledValue alloc] initWithLabel:v36 value:v37];
            v9 = v104;

            v11 = v107;
            v39 = v105;
            goto LABEL_53;
          }

          v53 = v2;
          v54 = sub_100006814(v53);
          v55 = objc_alloc_init(CNMutablePostalAddress);
          v56 = sub_100006814(v53);
          if (v56 != @"<<EOB>>")
          {
            v57 = v56;
            do
            {
              if ([(__CFString *)v57 isEqualToString:CNPostalAddressStreetKey])
              {
                v58 = sub_1000062E8(v53);
                [v55 setStreet:v58];
              }

              else if ([(__CFString *)v57 isEqualToString:CNPostalAddressCityKey])
              {
                v58 = sub_1000062E8(v53);
                [v55 setCity:v58];
              }

              else if ([(__CFString *)v57 isEqualToString:CNPostalAddressStateKey])
              {
                v58 = sub_1000062E8(v53);
                [v55 setState:v58];
              }

              else if ([(__CFString *)v57 isEqualToString:CNPostalAddressPostalCodeKey])
              {
                v58 = sub_1000062E8(v53);
                [v55 setPostalCode:v58];
              }

              else if ([(__CFString *)v57 isEqualToString:CNPostalAddressCountryKey])
              {
                v58 = sub_1000062E8(v53);
                [v55 setCountry:v58];
              }

              else if ([(__CFString *)v57 isEqualToString:CNPostalAddressISOCountryCodeKey])
              {
                v58 = sub_1000062E8(v53);
                [v55 setISOCountryCode:v58];
              }

              else if ([(__CFString *)v57 isEqualToString:CNPostalAddressSubLocalityKey])
              {
                v58 = sub_1000062E8(v53);
                [v55 setSubLocality:v58];
              }

              else
              {
                v96 = v7;
                v59 = [(__CFString *)v57 isEqualToString:CNPostalAddressSubAdministrativeAreaKey];
                v58 = sub_1000062E8(v53);
                if (v59)
                {
                  [v55 setSubAdministrativeArea:v58];
                }

                v7 = v96;
              }

              v60 = sub_100006814(v53);

              v57 = v60;
              v61 = v60 == @"<<EOB>>";
              v10 = v106;
            }

            while (!v61);
          }

          v62 = [[CNLabeledValue alloc] initWithLabel:v54 value:v55];

          [v103 addObject:v62];
          v8 = v103;
        }

        else
        {
          if (v13 == 32769)
          {
            v42 = v2;
            v43 = sub_100006814(v42);
            if (v43 == @"<<EOB>>")
            {
              v22 = 0;
            }

            else
            {
              v44 = sub_1000062E8(v42);
              v45 = [CNLabeledValue alloc];
              v46 = [[CNPhoneNumber alloc] initWithStringValue:v44];
              v22 = [v45 initWithLabel:v43 value:v46];

              v10 = v106;
              v8 = v103;
            }

            v79 = v6;
          }

          else
          {
            v19 = v2;
            v20 = sub_100006814(v19);
            if (v20 == @"<<EOB>>")
            {
              v22 = 0;
            }

            else
            {
              v21 = sub_1000062E8(v19);
              v22 = [[CNLabeledValue alloc] initWithLabel:v20 value:v21];

              v8 = v103;
            }

            v79 = v7;
          }

          [v79 addObject:v22];
        }

        goto LABEL_128;
      }

      if (v13 > 32774)
      {
        if (v13 != 32775)
        {
          if (v13 != 32776)
          {
LABEL_162:
            v86 = NSInvalidUnarchiveOperationException;
            v87 = @"Unrecognized tag value";
LABEL_157:
            v88 = [NSException exceptionWithName:v86 reason:v87 userInfo:0];
            objc_exception_throw(v88);
          }

          v38 = sub_100006814(v2);
          v40 = sub_1000065AC(v2);
          v41 = [[CNLabeledValue alloc] initWithLabel:v38 value:v40];
          [v108 addObject:v41];
LABEL_92:

          v9 = v104;
          v11 = v107;
          goto LABEL_116;
        }

        v97 = v7;
        v63 = v2;
        v64 = sub_100006814(v63);
        v65 = sub_100006814(v63);
        if (v65 != @"<<EOB>>")
        {
          v66 = v65;
          v67 = 0;
          v68 = 0;
          do
          {
            if ([(__CFString *)v66 isEqualToString:CNInstantMessageAddressUsernameKey])
            {
              v69 = sub_1000062E8(v63);
              v70 = v67;
              v67 = v69;
            }

            else if ([(__CFString *)v66 isEqualToString:CNInstantMessageAddressServiceKey])
            {
              v71 = sub_100006814(v63);
              v70 = v68;
              v68 = v71;
            }

            else
            {
              v70 = sub_1000062E8(v63);
            }

            v72 = sub_100006814(v63);

            v66 = v72;
          }

          while (v72 != @"<<EOB>>");
          if (!v67)
          {
LABEL_130:
            v67 = &stru_10005E0E0;
          }

          if (v68)
          {
            v81 = v68;
          }

          else
          {
            v81 = &stru_10005E0E0;
          }

          v82 = [CNLabeledValue alloc];
          v83 = [[CNInstantMessageAddress alloc] initWithUsername:v67 service:v81];
          v84 = [v82 initWithLabel:v64 value:v83];

          v11 = v107;
          [v107 addObject:v84];

          v7 = v97;
          v8 = v103;
          v9 = v104;
          v10 = v106;
          goto LABEL_117;
        }

        v68 = 0;
        goto LABEL_130;
      }

      if (v13 == 32773)
      {
        v47 = v2;
        v48 = sub_100006814(v47);
        v49 = sub_1000062E8(v47);
        v50 = sub_1000062E8(v47);

        v51 = [CNLabeledValue alloc];
        v52 = [[CNContactRelation alloc] initWithName:v50];
        v38 = [v51 initWithLabel:v48 value:v52];

        v8 = v103;
        v9 = v104;

        v11 = v107;
        v39 = v104;
LABEL_53:
        [v39 addObject:v38];
LABEL_116:

LABEL_117:
        v12 = v108;
        goto LABEL_118;
      }

      v95 = v7;
      v91 = v6;
      v23 = v2;
      v24 = sub_100006814(v23);
      v25 = sub_100006814(v23);
      v92 = v5;
      v90 = v24;
      if (v25 == @"<<EOB>>")
      {
        v31 = 0;
        v93 = 0;
        v94 = 0;
        v98 = 0;
        v102 = 0;
        v28 = 0;
        v27 = 0;
      }

      else
      {
        v26 = v25;
        v27 = 0;
        v28 = 0;
        v102 = 0;
        v98 = 0;
        v93 = 0;
        v94 = 0;
        v29 = 0;
        do
        {
          if ([(__CFString *)v26 isEqualToString:CNSocialProfileURLStringKey])
          {
            sub_1000062E8(v23);
            v30 = v27;
            v27 = v31 = v29;
          }

          else if ([(__CFString *)v26 isEqualToString:CNSocialProfileUsernameKey])
          {
            sub_1000062E8(v23);
            v30 = v28;
            v28 = v31 = v29;
          }

          else if ([(__CFString *)v26 isEqualToString:CNSocialProfileUserIdentifierKey])
          {
            sub_1000062E8(v23);
            v30 = v102;
            v102 = v31 = v29;
          }

          else if ([(__CFString *)v26 isEqualToString:CNSocialProfileServiceKey])
          {
            sub_100006814(v23);
            v30 = v98;
            v98 = v31 = v29;
          }

          else if ([(__CFString *)v26 isEqualToString:v101])
          {
            sub_1000062E8(v23);
            v30 = v94;
            v94 = v31 = v29;
          }

          else if ([(__CFString *)v26 isEqualToString:v100])
          {
            v30 = sub_10000644C(v23);
            v32 = [[NSInputStream alloc] initWithData:v30];
            [v32 open];
            v31 = [[NSMutableArray alloc] initWithCapacity:20];

            if ([v32 hasBytesAvailable])
            {
              do
              {
                v33 = sub_1000062E8(v32);
                [v31 addObject:v33];
              }

              while (([v32 hasBytesAvailable] & 1) != 0);
            }
          }

          else if ([(__CFString *)v26 isEqualToString:v99])
          {
            sub_1000062E8(v23);
            v30 = v93;
            v93 = v31 = v29;
          }

          else
          {
            v30 = sub_10000644C(v23);
            v31 = v29;
          }

          v34 = sub_100006814(v23);

          v26 = v34;
          v29 = v31;
        }

        while (v34 != @"<<EOB>>");
      }

      v80 = [[CNSocialProfile alloc] initWithUrlString:v27 username:v28 userIdentifier:v102 service:v98 displayname:v93 teamIdentifier:v94 bundleIdentifiers:v31];
      v89 = [[CNLabeledValue alloc] initWithLabel:v90 value:v80];

      v5 = v92;
      v10 = v106;
      [v106 addObject:v89];

      v6 = v91;
      v7 = v95;
    }

    else
    {
      switch(v13)
      {
        case 0:
          v86 = NSInvalidUnarchiveOperationException;
          v87 = @"Uninitialized tag value";
          goto LABEL_157;
        case 1:
          v86 = NSInvalidUnarchiveOperationException;
          v87 = @"Tagged identifier in wrong location.";
          goto LABEL_157;
        case 2:
          v38 = sub_1000062E8(v2);
          [v5 setNamePrefix:v38];
          goto LABEL_116;
        case 3:
          v38 = sub_1000062E8(v2);
          [v5 setGivenName:v38];
          goto LABEL_116;
        case 4:
          v38 = sub_1000062E8(v2);
          [v5 setMiddleName:v38];
          goto LABEL_116;
        case 5:
          v38 = sub_1000062E8(v2);
          [v5 setFamilyName:v38];
          goto LABEL_116;
        case 6:
          v38 = sub_1000062E8(v2);
          [v5 setPreviousFamilyName:v38];
          goto LABEL_116;
        case 7:
          v38 = sub_1000062E8(v2);
          [v5 setNameSuffix:v38];
          goto LABEL_116;
        case 8:
          v38 = sub_1000062E8(v2);
          [v5 setNickname:v38];
          goto LABEL_116;
        case 9:
          v38 = sub_1000062E8(v2);
          [v5 setOrganizationName:v38];
          goto LABEL_116;
        case 10:
          v38 = sub_1000062E8(v2);
          [v5 setDepartmentName:v38];
          goto LABEL_116;
        case 11:
          v38 = sub_1000062E8(v2);
          [v5 setJobTitle:v38];
          goto LABEL_116;
        case 12:
          v38 = sub_1000062E8(v2);
          [v5 setNote:v38];
          goto LABEL_116;
        case 13:
        case 14:
          goto LABEL_7;
        case 15:
          v38 = sub_1000065AC(v2);
          [v5 setBirthday:v38];
          goto LABEL_116;
        case 16:
          v38 = sub_1000065AC(v2);
          [v5 setNonGregorianBirthday:v38];
          goto LABEL_116;
        case 17:
          [v5 setContactType:sub_100006794(v2)];
          goto LABEL_118;
        case 18:
          v38 = sub_1000062E8(v2);
          [v5 setPhoneticOrganizationName:v38];
          goto LABEL_116;
        case 19:
          v38 = sub_1000062E8(v2);
          [v5 setPhoneticFamilyName:v38];
          goto LABEL_116;
        case 20:
          v38 = sub_1000062E8(v2);
          [v5 setPhoneticGivenName:v38];
          goto LABEL_116;
        case 21:
          v38 = sub_1000062E8(v2);
          [v5 setPhoneticMiddleName:v38];
          goto LABEL_116;
        case 22:
          v38 = sub_1000062E8(v2);
          v40 = sub_1000062E8(v2);
          v41 = [[CNActivityAlert alloc] initWithSound:v38 vibration:v40 ignoreMute:sub_100006794(v2) != 0];
          [v5 setCallAlert:v41];
          goto LABEL_92;
        case 23:
          v38 = sub_1000062E8(v2);
          v40 = sub_1000062E8(v2);
          v41 = [[CNActivityAlert alloc] initWithSound:v38 vibration:v40 ignoreMute:sub_100006794(v2) != 0];
          [v5 setTextAlert:v41];
          goto LABEL_92;
        case 24:
          v38 = sub_1000062E8(v2);
          [v5 setPreferredApplePersonaIdentifier:v38];
          goto LABEL_116;
        case 25:
          v38 = sub_1000062E8(v2);
          [v5 setPreferredLikenessSource:v38];
          goto LABEL_116;
        case 26:
          v73 = v2;
          v109[0] = 0;
          if ([v73 read:v109 maxLength:4] != 4)
          {
            v86 = NSInvalidUnarchiveOperationException;
            v87 = @"Unable to read non gregorian date length";
            goto LABEL_157;
          }

          if (v109[0] != 12)
          {
            v86 = NSInvalidUnarchiveOperationException;
            v87 = @"Wrong size for non gregorian date.";
            goto LABEL_157;
          }

          v74 = sub_1000065AC(v73);
          v75 = sub_100006794(v73);
          v76 = sub_10000697C(v75);
          v77 = +[NSNull null];

          if (v76 != v77)
          {
            v78 = [NSCalendar calendarWithIdentifier:v76];
            [v74 setCalendar:v78];
          }

          [v5 setNonGregorianBirthday:v74];
          break;
        case 27:
        case 28:
        case 30:
          sub_1000062E8(v2);

          goto LABEL_118;
        case 29:
          v38 = sub_1000062E8(v2);
          [v5 setPhonemeData:v38];
          goto LABEL_116;
        case 31:
          v38 = sub_1000062E8(v2);
          [v5 setDowntimeWhitelist:v38];
          goto LABEL_116;
        default:
          goto LABEL_162;
      }
    }

    v8 = v103;
LABEL_128:
    v9 = v104;
LABEL_16:
    v11 = v107;
    v12 = v108;
    goto LABEL_118;
  }

LABEL_135:
  [v2 close];
  if ([v6 count])
  {
    [v5 setPhoneNumbers:v6];
  }

  if ([v7 count])
  {
    [v5 setEmailAddresses:v7];
  }

  if ([v8 count])
  {
    [v5 setPostalAddresses:v8];
  }

  if ([v105 count])
  {
    [v5 setUrlAddresses:v105];
  }

  if ([v9 count])
  {
    [v5 setContactRelations:v9];
  }

  if ([v10 count])
  {
    [v5 setSocialProfiles:v10];
  }

  if ([v11 count])
  {
    [v5 setInstantMessageAddresses:v11];
  }

  if ([v12 count])
  {
    [v5 setDates:v12];
  }

  return v5;
}

@end