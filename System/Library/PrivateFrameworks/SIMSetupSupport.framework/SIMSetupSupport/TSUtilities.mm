@interface TSUtilities
+ (BOOL)areAnyPlansOnDevice;
+ (BOOL)hasCellularBaseband;
+ (BOOL)isBackAllowed:(id)allowed;
+ (BOOL)isCaseInsensitiveEqual:(id)equal withString:(id)string;
+ (BOOL)isDeviceLocked;
+ (BOOL)isGreenTeaCapable;
+ (BOOL)isIccidForPhySlot:(id)slot;
+ (BOOL)isLanguageRightToLeft;
+ (BOOL)isOnBootstrap;
+ (BOOL)isPad;
+ (BOOL)isPhone;
+ (BOOL)isRegRestActiveLocationAuthorizedOff:(id)off;
+ (BOOL)isRegRestActiveLocationServiceOff:(id)off;
+ (BOOL)isRegRestLocationUnavailable:(id)unavailable;
+ (BOOL)isRegulatoryRestrictionActive:(id)active;
+ (BOOL)isSecureIntentUIRequired:(id)required;
+ (BOOL)isWifiAvailable;
+ (BOOL)needsCustomMemoryError;
+ (BOOL)openPrefsURL:(id)l;
+ (BOOL)transferOptions;
+ (id)FormattedCarrierListFromSet:(id)set;
+ (id)_findPPRItem:(id)item;
+ (id)_isAnyRequireStoreVisitPlan:(id)plan;
+ (id)_isAnySourceNeedsSoftwareUpdatePlan:(id)plan;
+ (id)allPlansRequireSoftwareUpdate:(id)update;
+ (id)alsPlanCarriers:(id)carriers;
+ (id)appendLeftToRightMark:(id)mark;
+ (id)backgroundColorForRemotePlan:(BOOL)plan;
+ (id)concatenateDescriptors:(id)descriptors;
+ (id)displayPlanFromObject:(id)object;
+ (id)findSubscriptionContextForCellularPlanItem:(id)item fromSubscriptionContexts:(id)contexts;
+ (id)formatLocAndConcatenateDescriptors:(id)descriptors;
+ (id)formattedPhoneNumber:(id)number withCountryCode:(id)code;
+ (id)getByteRepresentationOf:(id)of;
+ (id)getCellularPlanItem:(id)item withIccid:(id)iccid;
+ (id)getErrorDescription:(id)description;
+ (id)getErrorTitleDetail:(id)detail forCarrier:(id)carrier;
+ (id)getPlanByID:(id)d fromPlans:(id)plans;
+ (id)getSpinnerBusyText;
+ (id)getStoreVisitStatusForPlan:(id)plan cache:(id)cache;
+ (id)getStringWithFirstCharacterUppercase:(id)uppercase;
+ (id)odaPlanCarriers:(id)carriers;
+ (id)planItemText:(id)text;
+ (id)preinstallPPRAlertControllerWithItems:(id)items completion:(id)completion;
+ (id)productClass;
+ (id)secureIntentAccessControlItem;
+ (id)skEventFromDictionary:(id)dictionary;
+ (id)textColorForRemotePlan:(BOOL)plan;
+ (id)transferablePlanCarriers:(id)carriers;
+ (int64_t)compareProductVersion:(id)version toProductVersion:(id)productVersion;
+ (int64_t)numActivePlansOnDeviceExcept:(id)except;
+ (unint64_t)odaPlans:(id)plans;
+ (unint64_t)sourceDevicesCount:(id)count;
+ (unint64_t)transferablePlans:(id)plans;
+ (void)launchURL:(id)l;
+ (void)secureIntentAccessControlItem;
@end

@implementation TSUtilities

+ (id)getByteRepresentationOf:(id)of
{
  ofCopy = of;
  uTF8String = [ofCopy UTF8String];
  v5 = [ofCopy length];
  v6 = [MEMORY[0x277CBEB28] dataWithCapacity:v5 >> 1];
  v13 = 0;
  v11 = 0;
  if (v5 >= 0x64)
  {
    v7 = 100;
  }

  else
  {
    v7 = v5;
  }

  if (v5)
  {
    v8 = 0;
    v9 = uTF8String + 1;
    do
    {
      *__str = *(v9 - 1);
      v8 += 2;
      v11 = strtoul(__str, 0, 16);
      [v6 appendBytes:&v11 length:1];
      v9 += 2;
    }

    while (v8 < v7);
  }

  return v6;
}

+ (id)formattedPhoneNumber:(id)number withCountryCode:(id)code
{
  numberCopy = number;
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFPhoneNumberCreate();
  if (!v6 || (v7 = v6, String = CFPhoneNumberCreateString(), CFRelease(v7), !String))
  {
    String = numberCopy;
  }

  return String;
}

+ (id)getStringWithFirstCharacterUppercase:(id)uppercase
{
  uppercaseCopy = uppercase;
  if ([uppercaseCopy length])
  {
    v4 = [uppercaseCopy substringToIndex:1];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v6 = [v4 uppercaseStringWithLocale:currentLocale];

    if (([v4 isEqualToString:v6] & 1) == 0)
    {
      if ([uppercaseCopy length] < 2)
      {
        v7 = &stru_28753DF48;
      }

      else
      {
        v7 = [uppercaseCopy substringFromIndex:1];
      }

      v8 = [v6 stringByAppendingString:v7];
      v9 = [v8 mutableCopy];

      uppercaseCopy = v9;
    }
  }

  return uppercaseCopy;
}

+ (id)getErrorTitleDetail:(id)detail forCarrier:(id)carrier
{
  detailCopy = detail;
  carrierCopy = carrier;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v8 = +[TSUtilities inBuddy];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  if (v8)
  {
    v11 = @"CONTINUE";
  }

  else
  {
    v11 = @"DONE";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_28753DF48 table:@"Localizable"];
  [v7 setObject:v12 forKeyedSubscript:@"ErrorButton"];

  domain = [detailCopy domain];
  v14 = [domain isEqualToString:*MEMORY[0x277CF9680]];

  if (v14)
  {
    code = [detailCopy code];
    switch(code)
    {
      case 2:
        v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v77 = [v76 localizedStringForKey:@"CTCELLULARPLANERROR_PARSE_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v77 forKeyedSubscript:@"ErrorHeader"];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"CTCELLULARPLANERROR_PARSE_MESSAGE";
        goto LABEL_12;
      case 3:
      case 4:
      case 5:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 23:
      case 24:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 38:
      case 39:
      case 41:
      case 42:
      case 43:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 61:
      case 64:
      case 68:
      case 71:
        goto LABEL_29;
      case 6:
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v29 = [v23 localizedStringForKey:@"CTCELLULARPLANERROR_INVALID_ARGUMENT_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        v30 = @"ErrorHeader";
        goto LABEL_13;
      case 12:
      case 62:
      case 63:
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"CTCELLULARPLANERROR_REGULATORY_RESTRICTION_ACTIVE_LOC_OFF_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v17 forKeyedSubscript:@"ErrorHeader"];

        LODWORD(v16) = +[TSUtilities inBuddy];
        v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v19 = v18;
        if (v16)
        {
          v20 = @"CTCELLULARPLANERROR_REGULATORY_RESTRICTION_ACTIVE_LOC_ON_MESSAGE";
        }

        else
        {
          v20 = @"CTCELLULARPLANERROR_REGULATORY_RESTRICTION_ACTIVE_LOC_OFF_MESSAGE";
        }

        v21 = [v18 localizedStringForKey:v20 value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v21 forKeyedSubscript:@"ErrorDetail"];

        if (+[TSUtilities inBuddy])
        {
          goto LABEL_15;
        }

        v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v22;
        v24 = @"TURN_ON_LOCATION_SERVICE";
LABEL_47:
        v29 = [v22 localizedStringForKey:v24 value:&stru_28753DF48 table:@"Localizable"];
        v30 = @"ErrorButton";
        goto LABEL_13;
      case 13:
        v65 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v66 = [v65 localizedStringForKey:@"CTCELLULARPLANERROR_BUSY_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v66 forKeyedSubscript:@"ErrorHeader"];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"CTCELLULARPLANERROR_BUSY_MESSAGE";
        goto LABEL_12;
      case 22:
      case 54:
        v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v33 = [v32 localizedStringForKey:@"CTCELLULARPLANERROR_CARRIER_ERROR_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v33 forKeyedSubscript:@"ErrorHeader"];

        if (carrierCopy && [carrierCopy length])
        {
          v34 = MEMORY[0x277CCACA8];
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = v35;
          v36 = @"CARRIER_TRANSFER_ERROR_CODE_PERMANENT_FAILURE_%@";
          goto LABEL_111;
        }

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"CARRIER_TRANSFER_ERROR_CODE_PERMANENT_FAILURE_NO_NAME";
        goto LABEL_12;
      case 25:
        v87 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v88 = [v87 localizedStringForKey:@"CTCELLULARPLANERROR_INVALID_PPR_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v88 forKeyedSubscript:@"ErrorHeader"];

        if (![carrierCopy length])
        {
          v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = v27;
          v28 = @"CTCELLULARPLANERROR_INVALID_PPR_MESSAGE_NO_NAME";
          goto LABEL_12;
        }

        v73 = MEMORY[0x277CCACA8];
        v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v74;
        v75 = @"CTCELLULARPLANERROR_INVALID_PPR_MESSAGE_%@_%@";
LABEL_70:
        v29 = [v74 localizedStringForKey:v75 value:&stru_28753DF48 table:@"Localizable"];
        [v73 stringWithFormat:v29, carrierCopy, carrierCopy];
        goto LABEL_112;
      case 26:
        v85 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v86 = [v85 localizedStringForKey:@"CTCELLULARPLANERROR_INVALID_FAUX_CARD_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v86 forKeyedSubscript:@"ErrorHeader"];

        if ([carrierCopy length])
        {
          v34 = MEMORY[0x277CCACA8];
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = v35;
          v36 = @"CTCELLULARPLANERROR_INVALID_FAUX_CARD_MESSAGE_CARRIER_LOCK_%@";
          goto LABEL_111;
        }

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"CTCELLULARPLANERROR_INVALID_FAUX_CARD_MESSAGE_CARRIER_LOCK_NO_CARRIER";
        goto LABEL_12;
      case 34:
      case 46:
        if (carrierCopy && [carrierCopy length])
        {
          v37 = MEMORY[0x277CCACA8];
          v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v39 = [v38 localizedStringForKey:@"ESIM_NOT_SUPPORT_TITLE_ADD_PLAN_%@" value:&stru_28753DF48 table:@"Localizable"];
          carrierCopy = [v37 stringWithFormat:v39, carrierCopy];
          [v7 setObject:carrierCopy forKeyedSubscript:@"ErrorHeader"];
        }

        else
        {
          v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v39 = [v38 localizedStringForKey:@"ESIM_NOT_SUPPORT_TITLE_ADD_PLAN" value:&stru_28753DF48 table:@"Localizable"];
          [v7 setObject:v39 forKeyedSubscript:@"ErrorHeader"];
        }

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"ESIM_NOT_SUPPORT_DETAIL_ADD_PLAN_CARRIER_UNLOCK";
        goto LABEL_12;
      case 35:
        v91 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v92 = [v91 localizedStringForKey:@"CTCELLULARPLANERROR_NO_ELIGIBLE_PROFILES_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v92 forKeyedSubscript:@"ErrorHeader"];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"CTCELLULARPLANERROR_NO_ELIGIBLE_PROFILES_MESSAGE";
        goto LABEL_12;
      case 36:
        v98 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v99 = [v98 localizedStringForKey:@"CTCELLULARPLANERROR_INVALID_SMDP_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v99 forKeyedSubscript:@"ErrorHeader"];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"CTCELLULARPLANERROR_INVALID_SMDP_MESSAGE";
        goto LABEL_12;
      case 37:
        v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v58 = [v57 localizedStringForKey:@"CTCELLULARPLANERROR_CARRIER_ERROR_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v58 forKeyedSubscript:@"ErrorHeader"];

        if (carrierCopy && [carrierCopy length])
        {
          v34 = MEMORY[0x277CCACA8];
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = v35;
          v36 = @"TRANSFER_ERROR_INELIGIBLE_ACCOUNT_%@";
          goto LABEL_111;
        }

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"TRANSFER_ERROR_INELIGIBLE_ACCOUNT_NO_NAME";
        goto LABEL_12;
      case 40:
        v67 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v68 = [v67 localizedStringForKey:@"ERROR_TRANSFER_ITEM_WEBSHEET_IN_BUDDY_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v68 forKeyedSubscript:@"ErrorHeader"];

        if (carrierCopy && [carrierCopy length])
        {
          v34 = MEMORY[0x277CCACA8];
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = v35;
          v36 = @"ERROR_TRANSFER_ITEM_WEBSHEET_IN_BUDDY_%@";
          goto LABEL_111;
        }

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"ERROR_TRANSFER_ITEM_WEBSHEET_IN_BUDDY_NO_NAME";
        goto LABEL_12;
      case 44:
        v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v56 = [v55 localizedStringForKey:@"CTCELLULARPLANERROR_NO_DATA_PATH_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v56 forKeyedSubscript:@"ErrorHeader"];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"CTCELLULARPLANERROR_NO_DATA_PATH_MESSAGE";
        goto LABEL_12;
      case 45:
      case 66:
        v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v42 = [v41 localizedStringForKey:@"CTCELLULARPLANERROR_TRANSFER_CANCEL_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v42 forKeyedSubscript:@"ErrorHeader"];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"CTCELLULARPLANERROR_TRANSFER_CANCEL_ON_TARGET_MESSAGE";
        goto LABEL_12;
      case 52:
        v100 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v101 = [v100 localizedStringForKey:@"CTCELLULARPLANERROR_CARRIER_ERROR_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v101 forKeyedSubscript:@"ErrorHeader"];

        if (carrierCopy && [carrierCopy length])
        {
          v102 = +[TSUtilities inBuddy];
          v34 = MEMORY[0x277CCACA8];
          v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          if (v102)
          {
            v36 = @"CARRIER_TRANSFER_ERROR_CODE_TEMPORARY_FAILURE_BUDDY_%@";
          }

          else
          {
            v36 = @"CARRIER_TRANSFER_ERROR_CODE_TEMPORARY_FAILURE_%@";
          }

          goto LABEL_110;
        }

        v113 = +[TSUtilities inBuddy];
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        if (v113)
        {
          v28 = @"CARRIER_TRANSFER_ERROR_CODE_TEMPORARY_FAILURE_BUDDY_NO_NAME";
        }

        else
        {
          v28 = @"CARRIER_TRANSFER_ERROR_CODE_TEMPORARY_FAILURE_NO_NAME";
        }

        goto LABEL_106;
      case 53:
        v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v81 = [v80 localizedStringForKey:@"CTCELLULARPLANERROR_CARRIER_ERROR_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v81 forKeyedSubscript:@"ErrorHeader"];

        if (carrierCopy && [carrierCopy length])
        {
          v82 = +[TSUtilities inBuddy];
          v34 = MEMORY[0x277CCACA8];
          v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          if (v82)
          {
            v36 = @"CARRIER_TRANSFER_ERROR_CODE_MAINTENANCE_FAILURE_BUDDY_%@";
          }

          else
          {
            v36 = @"CARRIER_TRANSFER_ERROR_CODE_MAINTENANCE_FAILURE_%@";
          }

          goto LABEL_110;
        }

        v111 = +[TSUtilities inBuddy];
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        if (v111)
        {
          v28 = @"CARRIER_TRANSFER_ERROR_CODE_MAINTENANCE_FAILURE_BUDDY_NO_NAME";
        }

        else
        {
          v28 = @"CARRIER_TRANSFER_ERROR_CODE_MAINTENANCE_FAILURE_NO_NAME";
        }

        goto LABEL_106;
      case 55:
        v59 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v60 = [v59 localizedStringForKey:@"CTCELLULARPLANERROR_CARRIER_ERROR_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v60 forKeyedSubscript:@"ErrorHeader"];

        if (carrierCopy && [carrierCopy length])
        {
          v34 = MEMORY[0x277CCACA8];
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = v35;
          v36 = @"TRANSFER_ERROR_BLOCKED_ACCOUNT_%@";
          goto LABEL_111;
        }

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"TRANSFER_ERROR_BLOCKED_ACCOUNT_NO_NAME";
        goto LABEL_12;
      case 56:
        v78 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v79 = [v78 localizedStringForKey:@"CTCELLULARPLANERROR_FAILED_TRANSFER_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v79 forKeyedSubscript:@"ErrorHeader"];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"CTCELLULARPLANERROR_FAILED_TRANSFER_MESSAGE";
        goto LABEL_12;
      case 57:
        v95 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v96 = [v95 localizedStringForKey:@"CTCELLULARPLANERROR_DELAYED_ACTIVATION_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v96 forKeyedSubscript:@"ErrorHeader"];

        if (!carrierCopy || ![carrierCopy length])
        {
          v112 = +[TSUtilities inBuddy];
          v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          if (v112)
          {
            v28 = @"CARRIER_TRANSFER_ERROR_CODE_DELAYED_ACTIVATION_BUDDY_NO_NAME";
          }

          else
          {
            v28 = @"CARRIER_TRANSFER_ERROR_CODE_DELAYED_ACTIVATION_NO_NAME";
          }

          goto LABEL_106;
        }

        v97 = +[TSUtilities inBuddy];
        v34 = MEMORY[0x277CCACA8];
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        if (v97)
        {
          v36 = @"CARRIER_TRANSFER_ERROR_CODE_DELAYED_ACTIVATION_BUDDY_%@";
        }

        else
        {
          v36 = @"CARRIER_TRANSFER_ERROR_CODE_DELAYED_ACTIVATION_%@";
        }

LABEL_110:
        v35 = v23;
        goto LABEL_111;
      case 58:
        v61 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v62 = [v61 localizedStringForKey:@"CTCELLULARPLANERROR_REGULATORY_RESTRICTION_ACTIVE_LOC_ON_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v62 forKeyedSubscript:@"ErrorHeader"];

        v63 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v64 = [v63 localizedStringForKey:@"CTCELLULARPLANERROR_REGULATORY_RESTRICTION_ACTIVE_LOC_ON_MESSAGE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v64 forKeyedSubscript:@"ErrorDetail"];

        v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v22;
        v24 = @"OK";
        goto LABEL_47;
      case 59:
        v105 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v106 = [v105 localizedStringForKey:@"TRANSFER_UPDATE_REQUIRED_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v106 forKeyedSubscript:@"ErrorHeader"];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"TRANSFER_TARGET_UPDATE_REQUIRED_DETAIL";
        goto LABEL_12;
      case 60:
        v89 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v90 = [v89 localizedStringForKey:@"TRANSFER_UPDATE_REQUIRED_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v90 forKeyedSubscript:@"ErrorHeader"];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"TRANSFER_SOURCE_UPDATE_REQUIRED_DETAIL";
        goto LABEL_12;
      case 65:
        v109 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v110 = [v109 localizedStringForKey:@"CTCELLULARPLANERROR_CARRIER_ERROR_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v110 forKeyedSubscript:@"ErrorHeader"];

        if (carrierCopy && [carrierCopy length])
        {
          v34 = MEMORY[0x277CCACA8];
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = v35;
          v36 = @"TRANSFER_ERROR_MAX_OTP_ATTEMPTS_EXHAUSTED_DETAIL_%@";
          goto LABEL_111;
        }

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"TRANSFER_ERROR_MAX_OTP_ATTEMPTS_EXHAUSTED_DETAIL_NO_CARRIER";
        goto LABEL_12;
      case 67:
        v83 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v84 = [v83 localizedStringForKey:@"CTCELLULARPLANERROR_CARRIER_ERROR_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v84 forKeyedSubscript:@"ErrorHeader"];

        if (!carrierCopy || ![carrierCopy length])
        {
          v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = v27;
          v28 = @"TRANSFER_ERROR_MAX_PIN_ATTEMPTS_EXHAUSTED_DETAIL_NO_CARRIER";
          goto LABEL_12;
        }

        v34 = MEMORY[0x277CCACA8];
        v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v35;
        v36 = @"TRANSFER_ERROR_MAX_PIN_ATTEMPTS_EXHAUSTED_DETAIL_%@";
LABEL_111:
        v29 = [v35 localizedStringForKey:v36 value:&stru_28753DF48 table:@"Localizable"];
        [v34 stringWithFormat:v29, carrierCopy, v115];
        v114 = LABEL_112:;
        [v7 setObject:v114 forKeyedSubscript:@"ErrorDetail"];

        break;
      case 69:
        v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v54 = [v53 localizedStringForKey:@"CTCELLULARPLANERROR_OUTOFMEMORY_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v54 forKeyedSubscript:@"ErrorHeader"];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"CTCELLULARPLANERROR_OUTOFMEMORY_MESSAGE";
        goto LABEL_12;
      case 70:
        v107 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v108 = [v107 localizedStringForKey:@"CTCELLULARPLANERROR_AUTHENTICATION_FAILED_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v108 forKeyedSubscript:@"ErrorHeader"];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"CTCELLULARPLANERROR_AUTHENTICATION_FAILED_MESSAGE";
        goto LABEL_12;
      case 72:
        v93 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v94 = [v93 localizedStringForKey:@"CTCELLULARPLANERROR_TRANSFER_CANCEL_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v94 forKeyedSubscript:@"ErrorHeader"];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"CTCELLULARPLANERROR_TRANSFER_CANCEL_MESSAGE";
        goto LABEL_12;
      case 73:
        v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v50 = [v49 localizedStringForKey:@"CTCELLULARPLANERROR_CARRIER_ERROR_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v50 forKeyedSubscript:@"ErrorHeader"];

        if (!carrierCopy || ![carrierCopy length])
        {
          v51 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v52 = [v51 localizedStringForKey:@"YOUR_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

          carrierCopy = v52;
        }

        v34 = MEMORY[0x277CCACA8];
        v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v35;
        v36 = @"TRANSFER_INELIGIBLE_FOR_NOW_PLAN_DETAIL_%@";
        goto LABEL_111;
      case 74:
        v69 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v70 = [v69 localizedStringForKey:@"CTCELLULARPLANERROR_CARRIER_ERROR_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v70 forKeyedSubscript:@"ErrorHeader"];

        if (!carrierCopy || ![carrierCopy length])
        {
          v71 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v72 = [v71 localizedStringForKey:@"YOUR_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

          carrierCopy = v72;
        }

        v73 = MEMORY[0x277CCACA8];
        v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v74;
        v75 = @"CARRIER_TRANSFER_ERROR_CODE_MISSING_INFO_%@_%@";
        goto LABEL_70;
      case 75:
        v103 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v104 = [v103 localizedStringForKey:@"ESIM_COUNT_RESTRICTION_WARNING_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        [v7 setObject:v104 forKeyedSubscript:@"ErrorHeader"];

        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v27;
        v28 = @"ESIM_COUNT_RESTRICTION_WARNING_DETAIL";
        goto LABEL_12;
      default:
        if (code == 4097)
        {
          if (!+[TSUtilities inBuddy])
          {
            v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v44 = [v43 localizedStringForKey:@"DONE" value:&stru_28753DF48 table:@"Localizable"];
            [v7 setObject:v44 forKeyedSubscript:@"ErrorButton"];
          }

          v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v46 = [v45 localizedStringForKey:@"ERROR_TRANSFER_ITEM_ACTIVATION_TIMEOUT_TITLE" value:&stru_28753DF48 table:@"Localizable"];
          [v7 setObject:v46 forKeyedSubscript:@"ErrorHeader"];

          v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = v27;
          v28 = @"ERROR_TRANSFER_ITEM_XPC_CONNECTION_BROKEN_MESSAGE";
        }

        else
        {
LABEL_29:
          v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v48 = [v47 localizedStringForKey:@"CTCELLULARPLANERROR_FAILED_ACTION_TITLE" value:&stru_28753DF48 table:@"Localizable"];
          [v7 setObject:v48 forKeyedSubscript:@"ErrorHeader"];

          LODWORD(v47) = +[TSUtilities inBuddy];
          v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          if (v47)
          {
            v28 = @"CTCELLULARPLANERROR_FAILED_ACTION_MESSAGE_BUDDY";
          }

          else
          {
            v28 = @"CTCELLULARPLANERROR_FAILED_ACTION_MESSAGE";
          }

LABEL_106:
          v27 = v23;
        }

        goto LABEL_12;
    }
  }

  else
  {
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"CTCELLULARPLANERROR_FAILED_ACTION_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    [v7 setObject:v26 forKeyedSubscript:@"ErrorHeader"];

    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = v27;
    v28 = @"CTCELLULARPLANERROR_FAILED_ACTION_MESSAGE";
LABEL_12:
    v29 = [v27 localizedStringForKey:v28 value:&stru_28753DF48 table:@"Localizable"];
    v30 = @"ErrorDetail";
LABEL_13:
    [v7 setObject:v29 forKeyedSubscript:v30];
  }

LABEL_15:

  return v7;
}

+ (id)getErrorDescription:(id)description
{
  descriptionCopy = description;
  domain = [descriptionCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x277CF9680]];

  if (v5)
  {
    code = [descriptionCopy code];
    v7 = &stru_28753DF48;
    if ((code - 45) <= 0x1B && ((1 << (code - 45)) & 0x8200001) != 0)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v8 localizedStringForKey:@"CANCELED" value:&stru_28753DF48 table:@"Localizable"];
    }
  }

  else
  {
    v7 = &stru_28753DF48;
  }

  return v7;
}

+ (id)preinstallPPRAlertControllerWithItems:(id)items completion:(id)completion
{
  v68 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  completionCopy = completion;
  v7 = [TSUtilities _findPPRItem:itemsCopy];
  if (!v7)
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v67 = "+[TSUtilities preinstallPPRAlertControllerWithItems:completion:]";
      v11 = "No plans with PPR @%s";
      goto LABEL_8;
    }

LABEL_9:

    completionCopy[2](completionCopy, 0);
    v12 = 0;
    goto LABEL_29;
  }

  v8 = +[TSCellularPlanManagerCache sharedInstance];
  v9 = [v8 calculateInstallConsentTextTypeFor:itemsCopy];

  if (v9 > 7)
  {
    v26 = 0;
    v27 = 0;
  }

  else
  {
    if (((1 << v9) & 0xCF) != 0)
    {
      v10 = _TSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v67 = "+[TSUtilities preinstallPPRAlertControllerWithItems:completion:]";
        v11 = "Invalid consent @%s";
LABEL_8:
        _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v9 == 4)
    {
      carrierName = [v7 carrierName];
      v14 = [carrierName length];

      if (v14)
      {
        v15 = MEMORY[0x277CCACA8];
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"CONSENT_CURRENT_PLAN_CANNOT_BE_DISABLED_IPHONE_%@_%@" value:&stru_28753DF48 table:@"Localizable"];
        carrierName2 = [v7 carrierName];
        carrierName3 = [v7 carrierName];
        v50 = [v15 stringWithFormat:v17, carrierName2, carrierName3];
      }

      else
      {
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v50 = [v16 localizedStringForKey:@"CONSENT_CURRENT_PLAN_CANNOT_BE_DISABLED_NO_NAME_IPHONE" value:&stru_28753DF48 table:@"Localizable"];
      }

      v28 = MEMORY[0x277D750F8];
      v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v49 localizedStringForKey:@"CONSENT_CANCEL" value:&stru_28753DF48 table:@"Localizable"];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __64__TSUtilities_preinstallPPRAlertControllerWithItems_completion___block_invoke_3;
      v57[3] = &unk_279B44878;
      v48 = &v58;
      v30 = completionCopy;
      v58 = v30;
      v31 = [v28 actionWithTitle:v29 style:1 handler:v57];
      v64[0] = v31;
      v32 = MEMORY[0x277D750F8];
      v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"CONSENT_DELETE_ACTION" value:&stru_28753DF48 table:@"Localizable"];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __64__TSUtilities_preinstallPPRAlertControllerWithItems_completion___block_invoke_4;
      v55[3] = &unk_279B44878;
      v35 = &v56;
      v56 = v30;
      v36 = [v32 actionWithTitle:v34 style:2 handler:v55];
      v64[1] = v36;
      v37 = v64;
    }

    else
    {
      carrierName4 = [v7 carrierName];
      v21 = [carrierName4 length];

      if (v21)
      {
        v22 = MEMORY[0x277CCACA8];
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v24 = [v23 localizedStringForKey:@"CONSENT_CURRENT_PLAN_CANNOT_BE_DELETED_IPHONE_PLAN_LOCK%@" value:&stru_28753DF48 table:@"Localizable"];
        carrierName5 = [v7 carrierName];
        v50 = [v22 stringWithFormat:v24, carrierName5];
      }

      else
      {
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v50 = [v23 localizedStringForKey:@"CONSENT_CURRENT_PLAN_CANNOT_BE_DELETED_NO_NAME_IPHONE_PLAN_LOCK" value:&stru_28753DF48 table:@"Localizable"];
      }

      v38 = MEMORY[0x277D750F8];
      v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v49 localizedStringForKey:@"CONSENT_DELETE_ACTION" value:&stru_28753DF48 table:@"Localizable"];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __64__TSUtilities_preinstallPPRAlertControllerWithItems_completion___block_invoke;
      v61[3] = &unk_279B44878;
      v48 = &v62;
      v39 = completionCopy;
      v62 = v39;
      v31 = [v38 actionWithTitle:v29 style:2 handler:v61];
      v65[0] = v31;
      v40 = MEMORY[0x277D750F8];
      v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"CONSENT_KEEP_ACTION" value:&stru_28753DF48 table:@"Localizable"];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __64__TSUtilities_preinstallPPRAlertControllerWithItems_completion___block_invoke_2;
      v59[3] = &unk_279B44878;
      v35 = &v60;
      v60 = v39;
      v36 = [v40 actionWithTitle:v34 style:0 handler:v59];
      v65[1] = v36;
      v37 = v65;
    }

    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];

    v27 = v50;
  }

  v12 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v27 preferredStyle:0];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v41 = v26;
  v42 = [v41 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v52;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v52 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [v12 addAction:*(*(&v51 + 1) + 8 * i)];
      }

      v43 = [v41 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v43);
  }

LABEL_29:
  v46 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_findPPRItem:(id)item
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  itemCopy = item;
  v4 = [itemCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(itemCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 type] == 2)
        {
          plan = [v9 plan];

          if (plan)
          {
            if (v6)
            {

              goto LABEL_17;
            }

            v6 = v9;
          }
        }
      }

      v5 = [itemCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    if (v6)
    {
      plan2 = [v6 plan];
      if ([plan2 isDeleteNotAllowed])
      {
        goto LABEL_18;
      }

      plan3 = [v6 plan];
      isDisableNotAllowed = [plan3 isDisableNotAllowed];

      if ((isDisableNotAllowed & 1) == 0)
      {
        plan2 = v6;
        v6 = 0;
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_17:
    v6 = 0;
    plan2 = itemCopy;
LABEL_18:
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)backgroundColorForRemotePlan:(BOOL)plan
{
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v5 = secondarySystemBackgroundColor;
  if (plan)
  {
    v6 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    v7 = [v5 resolvedColorWithTraitCollection:v6];
  }

  else
  {
    v7 = secondarySystemBackgroundColor;
  }

  return v7;
}

+ (id)textColorForRemotePlan:(BOOL)plan
{
  if (plan)
  {
    BPSTextColor();
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v3 = ;

  return v3;
}

+ (id)displayPlanFromObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objectCopy objectForKeyedSubscript:@"planItem"];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (unint64_t)sourceDevicesCount:(id)count
{
  v23 = *MEMORY[0x277D85DE8];
  countCopy = count;
  v5 = [MEMORY[0x277CBEB58] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = countCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self displayPlanFromObject:{*(*(&v18 + 1) + 8 * v10), v18}];
        if ([v11 isTransferablePlan])
        {
          plan = [v11 plan];
          deviceID = [plan deviceID];

          if (deviceID)
          {
            deviceID2 = [plan deviceID];
            [v5 addObject:deviceID2];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 count];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (unint64_t)transferablePlans:(id)plans
{
  v18 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [plansCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(plansCopy);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:@"planItem"];
        isTransferablePlan = [v9 isTransferablePlan];

        v6 += isTransferablePlan;
      }

      v5 = [plansCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)transferablePlanCarriers:(id)carriers
{
  v23 = *MEMORY[0x277D85DE8];
  carriersCopy = carriers;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [carriersCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = &stru_28753DF48;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(carriersCopy);
        }

        v10 = [self displayPlanFromObject:*(*(&v18 + 1) + 8 * i)];
        if ([v10 isTransferablePlan])
        {
          v11 = MEMORY[0x277CCACA8];
          carrierName = [v10 carrierName];
          v13 = [v11 stringWithFormat:@"%@_", carrierName];
          v14 = [(__CFString *)v8 stringByAppendingString:v13];

          v8 = v14;
        }
      }

      v6 = [carriersCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = &stru_28753DF48;
  }

  if ([(__CFString *)v8 length])
  {
    v15 = [(__CFString *)v8 substringToIndex:[(__CFString *)v8 length]- 1];

    v8 = v15;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (unint64_t)odaPlans:(id)plans
{
  v18 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [plansCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(plansCopy);
        }

        v10 = [self displayPlanFromObject:*(*(&v13 + 1) + 8 * i)];
        v7 += [v10 isOnDeviceTransferredPlan];
      }

      v6 = [plansCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)odaPlanCarriers:(id)carriers
{
  v23 = *MEMORY[0x277D85DE8];
  carriersCopy = carriers;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [carriersCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = &stru_28753DF48;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(carriersCopy);
        }

        v10 = [self displayPlanFromObject:*(*(&v18 + 1) + 8 * i)];
        if ([v10 isOnDeviceTransferredPlan])
        {
          v11 = MEMORY[0x277CCACA8];
          carrierName = [v10 carrierName];
          v13 = [v11 stringWithFormat:@"%@_", carrierName];
          v14 = [(__CFString *)v8 stringByAppendingString:v13];

          v8 = v14;
        }
      }

      v6 = [carriersCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = &stru_28753DF48;
  }

  if ([(__CFString *)v8 length])
  {
    v15 = [(__CFString *)v8 substringToIndex:[(__CFString *)v8 length]- 1];

    v8 = v15;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)alsPlanCarriers:(id)carriers
{
  v24 = *MEMORY[0x277D85DE8];
  carriersCopy = carriers;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [carriersCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    v7 = &stru_28753DF48;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(carriersCopy);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        plan = [v9 plan];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = MEMORY[0x277CCACA8];
          carrierName = [v9 carrierName];
          v14 = [v12 stringWithFormat:@"%@_", carrierName];
          v15 = [(__CFString *)v7 stringByAppendingString:v14];

          v7 = v15;
        }
      }

      v5 = [carriersCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_28753DF48;
  }

  if ([(__CFString *)v7 length])
  {
    v16 = [(__CFString *)v7 substringToIndex:[(__CFString *)v7 length]- 1];

    v7 = v16;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)hasCellularBaseband
{
  if (hasCellularBaseband___hasBasebandToken != -1)
  {
    +[TSUtilities hasCellularBaseband];
  }

  return hasCellularBaseband___hasBaseband;
}

uint64_t __34__TSUtilities_hasCellularBaseband__block_invoke()
{
  result = MGGetBoolAnswer();
  hasCellularBaseband___hasBaseband = result;
  return result;
}

+ (BOOL)isPad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

+ (BOOL)isPhone
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 0;

  return v3;
}

+ (id)productClass
{
  if (+[TSUtilities isPad])
  {
    return @"Pad";
  }

  else
  {
    return @"Phone";
  }
}

+ (BOOL)isOnBootstrap
{
  mEMORY[0x277CD9200] = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  path = [mEMORY[0x277CD9200] path];
  v4 = [path usesInterfaceType:1];

  v5 = +[TSCoreTelephonyClientCache sharedInstance];
  LOBYTE(path) = [v5 usingBootstrapDataService];

  return (v4 ^ 1) & path;
}

+ (BOOL)isDeviceLocked
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = SBSGetScreenLockStatus();
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v7 = v2;
    v8 = 1024;
    v9 = 0;
    v10 = 2080;
    v11 = "+[TSUtilities isDeviceLocked]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "screen locked : %d, passcode : %d @%s", buf, 0x18u);
  }

  result = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)isWifiAvailable
{
  mEMORY[0x277CD9200] = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  path = [mEMORY[0x277CD9200] path];

  if ([path status] == 1)
  {
    v4 = [path usesInterfaceType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)secureIntentAccessControlItem
{
  v14[6] = *MEMORY[0x277D85DE8];
  key = 0;
  v2 = *MEMORY[0x277CDC228];
  v13[0] = *MEMORY[0x277CDC080];
  v13[1] = v2;
  v3 = *MEMORY[0x277CDC250];
  v14[0] = @"euicc-rk-ucrt";
  v14[1] = v3;
  v4 = *MEMORY[0x277CDC5C8];
  v13[2] = *MEMORY[0x277CDC568];
  v13[3] = v4;
  v14[2] = MEMORY[0x277CBEC38];
  v14[3] = MEMORY[0x277CBEC38];
  v5 = *MEMORY[0x277CDBEC8];
  v13[4] = *MEMORY[0x277CDC5D0];
  v13[5] = v5;
  v14[4] = MEMORY[0x277CBEC38];
  v14[5] = @"com.apple.coretelephony";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v7 = SecItemCopyMatching(v6, &key);
  if (key)
  {
    v8 = SecKeyCopyAttributes(key);
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CDBEC0]];
    CFRelease(key);
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[(TSUtilities *)v7];
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)isSecureIntentUIRequired:(id)required
{
  v27 = *MEMORY[0x277D85DE8];
  requiredCopy = required;
  v4 = +[TSUtilities secureIntentAccessControlItem];
  if (v4)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v5 = getLAContextClass_softClass_0;
    v21 = getLAContextClass_softClass_0;
    if (!getLAContextClass_softClass_0)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getLAContextClass_block_invoke_0;
      v25 = &unk_279B44778;
      v26 = &v18;
      __getLAContextClass_block_invoke_0(buf);
      v5 = v19[3];
    }

    v6 = v5;
    _Block_object_dispose(&v18, 8);
    v7 = [[v5 alloc] initWithExternalizedContext:requiredCopy];
    v22 = &unk_287583E38;
    v23 = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = 0;
    v9 = [v7 evaluateAccessControl:v4 operation:3 options:v8 error:&v17];
    v10 = v17;

    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2080;
      v25 = "+[TSUtilities isSecureIntentUIRequired:]";
      _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "result:%@, error:%@ @%s", buf, 0x20u);
    }

    v14 = 1;
    if (v9)
    {
      v12 = [v9 objectForKeyedSubscript:&unk_287583E50];
      bOOLValue = [v12 BOOLValue];

      if (bOOLValue)
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TSUtilities isSecureIntentUIRequired:v10];
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (void)launchURL:(id)l
{
  v3 = MEMORY[0x277D75128];
  lCopy = l;
  sharedApplication = [v3 sharedApplication];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];

  [sharedApplication openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:&__block_literal_global_710];
}

void __25__TSUtilities_launchURL___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = _TSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __25__TSUtilities_launchURL___block_invoke_cold_1(v2);
    }
  }
}

+ (BOOL)isBackAllowed:(id)allowed
{
  navigationController = [allowed navigationController];
  viewControllers = [navigationController viewControllers];

  if ([viewControllers count] >= 2)
  {
    v7 = [viewControllers count];
    if (v7 - 2 < 0)
    {
LABEL_10:
      v11 = 0;
    }

    else
    {
      v3 = sel_backOption;
      v8 = v7 - 1;
      while (1)
      {
        v9 = [viewControllers objectAtIndex:--v8];
        if (![v9 conformsToProtocol:&unk_28758ABD0] || (objc_opt_respondsToSelector() & 1) == 0 || (v10 = objc_msgSend(v9, "backOption")) == 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_13;
        }

        if (v10 == 2)
        {
          break;
        }

        if (v8 <= 0)
        {
          goto LABEL_10;
        }
      }

      LOBYTE(v3) = 0;
LABEL_13:

      v11 = 1;
    }

    v6 = v11 & v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isGreenTeaCapable
{
  if (isGreenTeaCapable___greenTeaCapabilityToken != -1)
  {
    +[TSUtilities isGreenTeaCapable];
  }

  return isGreenTeaCapable___greenTea;
}

uint64_t __32__TSUtilities_isGreenTeaCapable__block_invoke()
{
  result = MGGetBoolAnswer();
  isGreenTeaCapable___greenTea = result;
  return result;
}

+ (BOOL)isRegulatoryRestrictionActive:(id)active
{
  activeCopy = active;
  v5 = activeCopy;
  if (activeCopy)
  {
    domain = [activeCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CF9680]] && (objc_msgSend(v5, "code") == 58 || objc_msgSend(v5, "code") == 62 || objc_msgSend(v5, "code") == 63 || objc_msgSend(v5, "code") == 12))
    {
      isGreenTeaCapable = [self isGreenTeaCapable];
    }

    else
    {
      isGreenTeaCapable = 0;
    }
  }

  else
  {
    isGreenTeaCapable = 0;
  }

  return isGreenTeaCapable;
}

+ (BOOL)isRegRestLocationUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  v5 = unavailableCopy;
  if (unavailableCopy)
  {
    domain = [unavailableCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CF9680]] && objc_msgSend(v5, "code") == 12)
    {
      isGreenTeaCapable = [self isGreenTeaCapable];
    }

    else
    {
      isGreenTeaCapable = 0;
    }
  }

  else
  {
    isGreenTeaCapable = 0;
  }

  return isGreenTeaCapable;
}

+ (BOOL)isRegRestActiveLocationServiceOff:(id)off
{
  offCopy = off;
  v5 = offCopy;
  if (offCopy)
  {
    domain = [offCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CF9680]] && objc_msgSend(v5, "code") == 62)
    {
      isGreenTeaCapable = [self isGreenTeaCapable];
    }

    else
    {
      isGreenTeaCapable = 0;
    }
  }

  else
  {
    isGreenTeaCapable = 0;
  }

  return isGreenTeaCapable;
}

+ (BOOL)isRegRestActiveLocationAuthorizedOff:(id)off
{
  offCopy = off;
  v5 = offCopy;
  if (offCopy)
  {
    domain = [offCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CF9680]] && objc_msgSend(v5, "code") == 63)
    {
      isGreenTeaCapable = [self isGreenTeaCapable];
    }

    else
    {
      isGreenTeaCapable = 0;
    }
  }

  else
  {
    isGreenTeaCapable = 0;
  }

  return isGreenTeaCapable;
}

+ (BOOL)transferOptions
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  if (!+[TSUtilities isPad])
  {
    return 1;
  }

  v3 = _os_feature_enabled_impl();
  if ([self isGreenTeaCapable])
  {
    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    getSupportedFlowTypes = [mEMORY[0x277CF96D8] getSupportedFlowTypes];

    return (getSupportedFlowTypes != 2) & v3;
  }

  return v3;
}

+ (BOOL)openPrefsURL:(id)l
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC1E80];
  lCopy = l;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];

  v22 = *MEMORY[0x277D0AC58];
  v23[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v15 = 0;
  v8 = [v5 openSensitiveURL:v6 withOptions:v7 error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v9 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      *buf = 136315650;
      v17 = uTF8String;
      v18 = 1024;
      v19 = v8;
      v20 = 2080;
      v21 = "+[TSUtilities openPrefsURL:]";
      _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "openURL failed with error: %s, isOpened:%d\n @%s", buf, 0x1Cu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)isCaseInsensitiveEqual:(id)equal withString:(id)string
{
  equalCopy = equal;
  stringCopy = string;
  v7 = stringCopy;
  if (equalCopy == stringCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (equalCopy && stringCopy)
    {
      v8 = [equalCopy caseInsensitiveCompare:stringCopy] == 0;
    }
  }

  return v8;
}

+ (id)findSubscriptionContextForCellularPlanItem:(id)item fromSubscriptionContexts:(id)contexts
{
  v26 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  contextsCopy = contexts;
  v7 = contextsCopy;
  if (itemCopy && [contextsCopy count])
  {
    v8 = +[TSCellularPlanManagerCache sharedInstance];
    v9 = [v8 getSubscriptionContextUUIDforPlan:itemCopy];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v20 = v7;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          uuid = [v14 uuid];
          uUIDString = [uuid UUIDString];
          v17 = [uUIDString isEqualToString:v9];

          if (v17)
          {
            v11 = v14;
            goto LABEL_14;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_14:
      v7 = v20;
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)needsCustomMemoryError
{
  getHardwareModelName = [self getHardwareModelName];
  v3 = [getHardwareModelName isEqualToString:@"V59AP"];

  return v3;
}

+ (id)getSpinnerBusyText
{
  needsCustomMemoryError = [self needsCustomMemoryError];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (needsCustomMemoryError)
  {
    v5 = @"CONTINUE_BUTTON_STATE_PREPARING";
  }

  else
  {
    v5 = @"CONTINUE_BUTTON_STATE_INSTALLING";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_28753DF48 table:@"Localizable"];

  return v6;
}

+ (id)getPlanByID:(id)d fromPlans:(id)plans
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  plansCopy = plans;
  v7 = [plansCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(plansCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [plansCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (int64_t)compareProductVersion:(id)version toProductVersion:(id)productVersion
{
  versionCopy = version;
  productVersionCopy = productVersion;
  if ([versionCopy isEqualToString:productVersionCopy])
  {
    v7 = 0;
  }

  else
  {
    v8 = [versionCopy componentsSeparatedByString:@"."];
    v9 = [productVersionCopy componentsSeparatedByString:@"."];
    v10 = [v8 count];
    if (v10 | [v9 count])
    {
      v11 = 0;
      v7 = 1;
      while (1)
      {
        if ([v8 count] <= v11)
        {
          intValue = 0;
        }

        else
        {
          v12 = [v8 objectAtIndexedSubscript:v11];
          intValue = [v12 intValue];
        }

        if ([v9 count] <= v11)
        {
          intValue2 = 0;
        }

        else
        {
          v14 = [v9 objectAtIndexedSubscript:v11];
          intValue2 = [v14 intValue];
        }

        if (intValue > intValue2)
        {
          break;
        }

        if (intValue < intValue2)
        {
          v7 = -1;
          break;
        }

        ++v11;
        v16 = [v8 count];
        v17 = [v9 count];
        if (v16 <= v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v16;
        }

        if (v18 <= v11)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      v7 = 0;
    }
  }

  return v7;
}

+ (id)skEventFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
  if (!v4)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v5 = v4;
  intValue = [v4 intValue];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"error"];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D4DAC0]) initWithEventType:intValue error:v7];
  }

  else
  {
    if (intValue > 119)
    {
      if (intValue <= 199)
      {
        if (intValue == 120)
        {
          v14 = [dictionaryCopy objectForKeyedSubscript:@"pairingFlags"];

          if (v14)
          {
            intValue2 = [v14 intValue];
          }

          else
          {
            intValue2 = 0;
          }

          v17 = [dictionaryCopy objectForKeyedSubscript:@"passwordType"];

          if (v17)
          {
            intValue3 = [v17 intValue];
          }

          else
          {
            intValue3 = 0;
          }

          v5 = [dictionaryCopy objectForKeyedSubscript:@"throttleSeconds"];

          if (v5)
          {
            intValue4 = [v5 intValue];
          }

          else
          {
            intValue4 = 0;
          }

          v8 = [objc_alloc(getSKAuthenticationRequestEventClass()) initWithPasswordType:intValue3 pairingFlags:intValue2 throttleSeconds:intValue4];
          goto LABEL_13;
        }

        if (intValue == 130)
        {
          v16 = [dictionaryCopy objectForKeyedSubscript:@"password"];
          v9 = [objc_alloc(getSKAuthenticationResponseEventClass()) initWithPassword:v16];

          goto LABEL_14;
        }
      }
    }

    else if ((intValue > 0x2A || ((1 << intValue) & 0x70040100401) == 0) && intValue == 110)
    {
      v10 = [dictionaryCopy objectForKeyedSubscript:@"password"];
      v11 = [dictionaryCopy objectForKeyedSubscript:@"passwordType"];

      if (v11)
      {
        intValue5 = [v11 intValue];
      }

      else
      {
        intValue5 = 0;
      }

      v9 = [objc_alloc(getSKAuthenticationPresentEventClass()) initWithPasswordType:intValue5 password:v10];

      v5 = v11;
      goto LABEL_14;
    }

    v8 = [objc_alloc(MEMORY[0x277D4DAC0]) initWithEventType:intValue];
  }

LABEL_13:
  v9 = v8;
LABEL_14:

LABEL_15:

  return v9;
}

+ (int64_t)numActivePlansOnDeviceExcept:(id)except
{
  v29 = *MEMORY[0x277D85DE8];
  exceptCopy = except;
  v4 = +[TSCellularPlanManagerCache sharedInstance];
  planItems = [v4 planItems];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = planItems;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 isSelected])
        {
          if (exceptCopy)
          {
            iccid = [v12 iccid];
            v14 = [iccid isEqualToString:exceptCopy];

            v9 += v14 ^ 1u;
          }

          else
          {
            ++v9;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = _TSLogDomain();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = exceptCopy;
    v24 = 2048;
    v25 = v9;
    v26 = 2080;
    v27 = "+[TSUtilities numActivePlansOnDeviceExcept:]";
    _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, "numActivePlansOnDeviceExcept(%@): %ld @%s", buf, 0x20u);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)concatenateDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v4 = objc_opt_new();
  if ([descriptorsCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [descriptorsCopy objectAtIndexedSubscript:v5];
      [v4 appendString:v6];

      if (v5 == [descriptorsCopy count] - 1)
      {
        break;
      }

      if (v5 == [descriptorsCopy count] - 2)
      {
        [v4 appendString:@" "];
        v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = [v7 localizedStringForKey:@"AND" value:&stru_28753DF48 table:@"Localizable"];
        [v4 appendString:v8];

        [v4 appendString:@" "];
      }

      else
      {
        v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v10 = [v9 localizedStringForKey:@"COMMA" value:&stru_28753DF48 table:@"Localizable"];
        [v4 appendString:v10];
      }

      ++v5;
    }

    while (v5 < [descriptorsCopy count]);
  }

  return v4;
}

+ (id)formatLocAndConcatenateDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v4 = objc_opt_new();
  if ([descriptorsCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [descriptorsCopy objectAtIndexedSubscript:v5];
      v7 = [TSUtilities formattedPhoneNumber:v6 withCountryCode:0];
      [v4 appendString:v7];

      if (v5 == [descriptorsCopy count] - 1)
      {
        break;
      }

      if (v5 == [descriptorsCopy count] - 2)
      {
        [v4 appendString:@" "];
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v8 localizedStringForKey:@"AND" value:&stru_28753DF48 table:@"Localizable"];
        [v4 appendString:v9];

        [v4 appendString:@" "];
      }

      else
      {
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v11 = [v10 localizedStringForKey:@"COMMA" value:&stru_28753DF48 table:@"Localizable"];
        [v4 appendString:v11];
      }

      ++v5;
    }

    while (v5 < [descriptorsCopy count]);
  }

  return v4;
}

+ (BOOL)areAnyPlansOnDevice
{
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v3 = [mEMORY[0x277CF96D8] planItemsShouldUpdate:0];

  if (v3)
  {
    v4 = [v3 count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getCellularPlanItem:(id)item withIccid:(id)iccid
{
  v21 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  iccidCopy = iccid;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = itemCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        iccid = [v11 iccid];
        v13 = [iccid isEqualToString:iccidCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)isIccidForPhySlot:(id)slot
{
  v20 = *MEMORY[0x277D85DE8];
  slotCopy = slot;
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v5 = [mEMORY[0x277CF96D8] planItemsShouldUpdate:0];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        iccid = [v10 iccid];
        v12 = [iccid isEqualToString:slotCopy];

        if (v12 && ![v10 type])
        {
          LOBYTE(v7) = 1;
          goto LABEL_12;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)planItemText:(id)text
{
  textCopy = text;
  if (textCopy)
  {
    if (+[TSUtilities isPad])
    {
      goto LABEL_3;
    }

    phoneNumber = [textCopy phoneNumber];
    v10 = [phoneNumber length];

    if (v10)
    {
      phoneNumber2 = [textCopy phoneNumber];
    }

    else
    {
      cachedPhoneNumber = [textCopy cachedPhoneNumber];
      v13 = [cachedPhoneNumber length];

      if (!v13)
      {
LABEL_3:
        carrierName = [textCopy carrierName];
        v5 = [carrierName length];

        if (v5)
        {
          carrierName2 = [textCopy carrierName];
          goto LABEL_12;
        }

        goto LABEL_5;
      }

      phoneNumber2 = [textCopy cachedPhoneNumber];
    }

    v7 = phoneNumber2;
    v8 = [TSUtilities formattedPhoneNumber:phoneNumber2 withCountryCode:0];
    goto LABEL_11;
  }

LABEL_5:
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"NEW_CELLULAR_PLAN_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
LABEL_11:
  carrierName2 = v8;

LABEL_12:

  return carrierName2;
}

+ (BOOL)isLanguageRightToLeft
{
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  LOBYTE(preferredLanguages) = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:firstObject] == 2;
  return preferredLanguages;
}

+ (id)appendLeftToRightMark:(id)mark
{
  markCopy = mark;
  if (+[TSUtilities isLanguageRightToLeft])
  {
    markCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"\u202B%@\u202C", markCopy];
  }

  else
  {
    markCopy = markCopy;
  }

  v5 = markCopy;

  return v5;
}

+ (id)getStoreVisitStatusForPlan:(id)plan cache:(id)cache
{
  planCopy = plan;
  cacheCopy = cache;
  carrierName = [planCopy carrierName];

  if (carrierName)
  {
    carrierName2 = [planCopy carrierName];
    v9 = [cacheCopy objectForKey:carrierName2];

    if (v9)
    {
      null = [MEMORY[0x277CBEB68] null];

      if (v9 == null)
      {
        v11 = 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v13 = +[TSCoreTelephonyClientCache sharedInstance];
      carrierName3 = [planCopy carrierName];
      v9 = [v13 getStoreVisitStatusForCarrier:carrierName3];

      if (v9)
      {
        carrierName4 = [planCopy carrierName];
        [cacheCopy setObject:v9 forKeyedSubscript:carrierName4];
      }

      else
      {
        carrierName4 = [MEMORY[0x277CBEB68] null];
        carrierName5 = [planCopy carrierName];
        [cacheCopy setObject:carrierName4 forKeyedSubscript:carrierName5];
      }
    }

    v11 = v9;
    v9 = v11;
    goto LABEL_13;
  }

  v12 = _TSLogDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [TSUtilities getStoreVisitStatusForPlan:planCopy cache:v12];
  }

  v11 = 0;
LABEL_14:

  return v11;
}

+ (id)FormattedCarrierListFromSet:(id)set
{
  allObjects = [set allObjects];
  v4 = [allObjects sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  v5 = [v4 count];
  if (v5)
  {
    if (v5 == 2)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [v4 objectAtIndexedSubscript:0];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"OR" value:&stru_28753DF48 table:@"Localizable"];
      v12 = [v4 objectAtIndexedSubscript:1];
      v7 = [v8 stringWithFormat:@"%@ %@ %@", v9, v11, v12];
    }

    else
    {
      v6 = v5 - 1;
      if (v5 == 1)
      {
        v7 = [v4 objectAtIndexedSubscript:{0, v6}];
        goto LABEL_9;
      }

      v13 = [v4 subarrayWithRange:{0, v6}];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"COMMA" value:&stru_28753DF48 table:@"Localizable"];
      v9 = [v13 componentsJoinedByString:v15];

      v16 = MEMORY[0x277CCACA8];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"COMMA" value:&stru_28753DF48 table:@"Localizable"];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"OR" value:&stru_28753DF48 table:@"Localizable"];
      lastObject = [v4 lastObject];
      v7 = [v16 stringWithFormat:@"%@%@%@ %@", v9, v18, v20, lastObject];
    }
  }

  else
  {
    v7 = &stru_28753DF48;
  }

LABEL_9:

  return v7;
}

+ (id)_isAnyRequireStoreVisitPlan:(id)plan
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  planCopy = plan;
  v4 = [planCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(planCopy);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 requireVisitStoreOnce])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [planCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_isAnySourceNeedsSoftwareUpdatePlan:(id)plan
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  planCopy = plan;
  v4 = [planCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(planCopy);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 transferCapability] == 15)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [planCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)allPlansRequireSoftwareUpdate:(id)update
{
  v18 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if ([updateCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = updateCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 transferCapability] == 15)
          {
            [array addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    array = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return array;
}

+ (void)secureIntentAccessControlItem
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = self;
  v4 = 2080;
  v5 = "+[TSUtilities secureIntentAccessControlItem]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]No euicc key!!, status code : %d @%s", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)isSecureIntentUIRequired:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "+[TSUtilities isSecureIntentUIRequired:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]No euicc acl!! @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __25__TSUtilities_launchURL___block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "+[TSUtilities launchURL:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Fail to launch the learn more page @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)getStoreVisitStatusForPlan:(void *)a1 cache:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v5 = 138412546;
  v6 = v3;
  v7 = 2080;
  v8 = "+[TSUtilities getStoreVisitStatusForPlan:cache:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]invalid carrier for plan : %@ @%s", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end