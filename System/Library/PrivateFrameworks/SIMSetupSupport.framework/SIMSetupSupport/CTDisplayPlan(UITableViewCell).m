@interface CTDisplayPlan(UITableViewCell)
- (__CFString)imageName;
- (id)text;
@end

@implementation CTDisplayPlan(UITableViewCell)

- (id)text
{
  v2 = [a1 plan];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  v4 = [a1 plan];
  objc_opt_class();
  v5 = objc_opt_isKindOfClass();

  if (v5)
  {
    v6 = [a1 carrierName];
    v7 = [v6 length];

    if (v7)
    {
LABEL_4:
      v8 = [a1 carrierName];
      goto LABEL_12;
    }

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v17;
    v18 = @"NEW_CELLULAR_PLAN_NO_CARRIER_TITLE";
    goto LABEL_10;
  }

  v9 = [a1 plan];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if ((v10 & 1) == 0)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [a1 plan];
    v8 = [v15 stringWithFormat:@"unimplemented plan type : %@", objc_opt_class()];

    goto LABEL_12;
  }

  v11 = [a1 phoneNumber];
  v12 = [v11 length];

  if (!v12)
  {
    v20 = [a1 carrierName];
    v21 = [v20 length];

    if (v21)
    {
      goto LABEL_4;
    }

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v17;
    v18 = @"TRANSFER_PLAN_ITEM_TITLE_NO_PHONENUMBER";
LABEL_10:
    v14 = [v17 localizedStringForKey:v18 value:&stru_28753DF48 table:@"Localizable"];
    goto LABEL_11;
  }

  v13 = [a1 phoneNumber];
  v14 = [v13 formattedPhoneNumber];
LABEL_11:
  v8 = v14;

LABEL_12:

  return v8;
}

- (__CFString)imageName
{
  if ([a1 isPhysical])
  {
    return @"simcard";
  }

  else
  {
    return @"esim";
  }
}

@end