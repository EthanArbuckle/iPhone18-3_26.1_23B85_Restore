@interface CTDisplayPlan(UITableViewCell)
- (__CFString)imageName;
- (id)text;
@end

@implementation CTDisplayPlan(UITableViewCell)

- (id)text
{
  plan = [self plan];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  plan2 = [self plan];
  objc_opt_class();
  v5 = objc_opt_isKindOfClass();

  if (v5)
  {
    carrierName = [self carrierName];
    v7 = [carrierName length];

    if (v7)
    {
LABEL_4:
      carrierName2 = [self carrierName];
      goto LABEL_12;
    }

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    phoneNumber2 = v17;
    v18 = @"NEW_CELLULAR_PLAN_NO_CARRIER_TITLE";
    goto LABEL_10;
  }

  plan3 = [self plan];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if ((v10 & 1) == 0)
  {
    v15 = MEMORY[0x277CCACA8];
    plan4 = [self plan];
    carrierName2 = [v15 stringWithFormat:@"unimplemented plan type : %@", objc_opt_class()];

    goto LABEL_12;
  }

  phoneNumber = [self phoneNumber];
  v12 = [phoneNumber length];

  if (!v12)
  {
    carrierName3 = [self carrierName];
    v21 = [carrierName3 length];

    if (v21)
    {
      goto LABEL_4;
    }

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    phoneNumber2 = v17;
    v18 = @"TRANSFER_PLAN_ITEM_TITLE_NO_PHONENUMBER";
LABEL_10:
    formattedPhoneNumber = [v17 localizedStringForKey:v18 value:&stru_28753DF48 table:@"Localizable"];
    goto LABEL_11;
  }

  phoneNumber2 = [self phoneNumber];
  formattedPhoneNumber = [phoneNumber2 formattedPhoneNumber];
LABEL_11:
  carrierName2 = formattedPhoneNumber;

LABEL_12:

  return carrierName2;
}

- (__CFString)imageName
{
  if ([self isPhysical])
  {
    return @"simcard";
  }

  else
  {
    return @"esim";
  }
}

@end