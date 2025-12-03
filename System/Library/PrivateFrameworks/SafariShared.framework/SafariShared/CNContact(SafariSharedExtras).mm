@interface CNContact(SafariSharedExtras)
+ (id)safari_defaultDescriptors;
+ (id)safari_imageViewDescriptors;
+ (id)safari_oneTimeCodeViewDescriptors;
+ (id)safari_valueStringForValue:()SafariSharedExtras wbsProperty:wbsComponent:;
+ (id)safari_valueStringForValue:()SafariSharedExtras wbsProperty:wbsComponent:atIndex:;
+ (id)safari_valueStringForWBSComponent:()SafariSharedExtras inAddress:;
+ (id)safari_valueStringForWBSComponent:()SafariSharedExtras inInstantMessageAddress:;
+ (uint64_t)safari_indexForIdentifier:()SafariSharedExtras inValues:;
+ (uint64_t)safari_isValueAStringForContactsProperty:()SafariSharedExtras;
+ (uint64_t)safari_wbsPropertySupportsMultipleValues:()SafariSharedExtras;
- (id)safari_valueForWBSABProperty:()SafariSharedExtras;
- (id)safari_valueForWBSProxyProperty:()SafariSharedExtras;
- (id)safari_valueStringForIdentifier:()SafariSharedExtras wbsProperty:wbsComponent:;
- (id)safari_valueStringForWBSProperty:()SafariSharedExtras wbsComponent:atIndex:;
- (uint64_t)safari_indexOfIdentifier:()SafariSharedExtras forWBSProperty:;
- (uint64_t)safari_numberOfValuesForWBSProperty:()SafariSharedExtras;
@end

@implementation CNContact(SafariSharedExtras)

+ (id)safari_defaultDescriptors
{
  v10[12] = *MEMORY[0x1E69E9840];
  v0 = safari_defaultDescriptors_descriptors;
  if (!safari_defaultDescriptors_descriptors)
  {
    v1 = *MEMORY[0x1E695C1D0];
    v10[0] = *MEMORY[0x1E695C360];
    v10[1] = v1;
    v2 = *MEMORY[0x1E695C240];
    v10[2] = *MEMORY[0x1E695C208];
    v10[3] = v2;
    v3 = *MEMORY[0x1E695C2F0];
    v10[4] = *MEMORY[0x1E695C230];
    v10[5] = v3;
    v4 = *MEMORY[0x1E695C2C8];
    v10[6] = *MEMORY[0x1E695C330];
    v10[7] = v4;
    v5 = *MEMORY[0x1E695C418];
    v10[8] = *MEMORY[0x1E695C328];
    v10[9] = v5;
    v10[10] = *MEMORY[0x1E695C2B0];
    v6 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    v10[11] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:12];
    v8 = safari_defaultDescriptors_descriptors;
    safari_defaultDescriptors_descriptors = v7;

    v0 = safari_defaultDescriptors_descriptors;
  }

  return v0;
}

+ (id)safari_imageViewDescriptors
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = safari_imageViewDescriptors_descriptors;
  if (!safari_imageViewDescriptors_descriptors)
  {
    v1 = *MEMORY[0x1E695C230];
    v6[0] = *MEMORY[0x1E695C240];
    v6[1] = v1;
    v2 = *MEMORY[0x1E695C278];
    v6[2] = *MEMORY[0x1E695C2F0];
    v6[3] = v2;
    v6[4] = *MEMORY[0x1E695C400];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
    v4 = safari_imageViewDescriptors_descriptors;
    safari_imageViewDescriptors_descriptors = v3;

    v0 = safari_imageViewDescriptors_descriptors;
  }

  return v0;
}

+ (id)safari_oneTimeCodeViewDescriptors
{
  if (safari_oneTimeCodeViewDescriptors_onceToken != -1)
  {
    +[CNContact(SafariSharedExtras) safari_oneTimeCodeViewDescriptors];
  }

  v1 = safari_oneTimeCodeViewDescriptors_descriptors;

  return v1;
}

- (id)safari_valueForWBSProxyProperty:()SafariSharedExtras
{
  if ([a3 isEqualToString:*MEMORY[0x1E69C8AD8]])
  {
    safari_fullName = [self safari_fullName];
  }

  else
  {
    safari_fullName = 0;
  }

  return safari_fullName;
}

- (uint64_t)safari_indexOfIdentifier:()SafariSharedExtras forWBSProperty:
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] && objc_msgSend(v7, "length") && objc_msgSend(objc_opt_class(), "safari_wbsPropertySupportsMultipleValues:", v7))
  {
    v8 = [self safari_valueForWBSABProperty:v7];
    if (v8)
    {
      v9 = [objc_opt_class() safari_indexForIdentifier:v6 inValues:v8];
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

+ (uint64_t)safari_indexForIdentifier:()SafariSharedExtras inValues:
{
  v5 = a3;
  v6 = a4;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__CNContact_SafariSharedExtras__safari_indexForIdentifier_inValues___block_invoke;
    v9[3] = &unk_1E7FB8A80;
    v10 = v5;
    v11 = &v12;
    [v6 enumerateObjectsUsingBlock:v9];
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  return v7;
}

- (id)safari_valueForWBSABProperty:()SafariSharedExtras
{
  v2 = [WBSContactsHelper CNContactKeyFromWBSABKey:?];
  if ([v2 length] && objc_msgSend(self, "isKeyAvailable:", v2))
  {
    v3 = [self valueForKey:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)safari_valueStringForIdentifier:()SafariSharedExtras wbsProperty:wbsComponent:
{
  v8 = a4;
  v9 = a5;
  v10 = [self safari_indexOfIdentifier:a3 forWBSProperty:v8];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = [self safari_valueStringForWBSProperty:v8 wbsComponent:v9 atIndex:v10];
  }

  return v11;
}

+ (uint64_t)safari_wbsPropertySupportsMultipleValues:()SafariSharedExtras
{
  v3 = a3;
  if ([v3 length])
  {
    if ([v3 isEqualToString:*MEMORY[0x1E69C8A90]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C8AA0]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69C8AB8]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"URLs"))
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isEqualToString:*MEMORY[0x1E69C8AA8]];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)safari_valueStringForValue:()SafariSharedExtras wbsProperty:wbsComponent:atIndex:
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 objectAtIndex:a6];

    v12 = v13;
  }

  v14 = [self safari_valueStringForValue:v12 wbsProperty:v10 wbsComponent:v11];

  return v14;
}

+ (uint64_t)safari_isValueAStringForContactsProperty:()SafariSharedExtras
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E695C230]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C240]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C2F0]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C328]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x1E695C2C8]];
  }

  return v4;
}

- (id)safari_valueStringForWBSProperty:()SafariSharedExtras wbsComponent:atIndex:
{
  v8 = a3;
  v9 = a4;
  if ([v8 length] && objc_msgSend(self, "safari_numberOfValuesForWBSProperty:", v8) > a5)
  {
    if ([objc_opt_class() safari_isWBSProxyProperty:v8])
    {
      v10 = [self safari_valueForWBSProxyProperty:v8];
    }

    else
    {
      v12 = [self safari_valueForWBSABProperty:v8];
      v10 = [objc_opt_class() safari_valueStringForValue:v12 wbsProperty:v8 wbsComponent:v9 atIndex:a5];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)safari_valueStringForWBSComponent:()SafariSharedExtras inInstantMessageAddress:
{
  v5 = a3;
  v6 = a4;
  v7 = [WBSContactsHelper CNContactKeyFromWBSABKey:v5];
  if ([v7 isEqualToString:*MEMORY[0x1E695C460]])
  {
    service = [v6 service];
LABEL_5:
    v9 = service;
    goto LABEL_9;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E695C468]])
  {
    service = [v6 username];
    goto LABEL_5;
  }

  v10 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(CNContact(SafariSharedExtras) *)v5 safari_valueStringForWBSComponent:v10 inInstantMessageAddress:v11, v12, v13, v14, v15, v16];
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (id)safari_valueStringForWBSComponent:()SafariSharedExtras inAddress:
{
  v5 = a3;
  v6 = a4;
  v7 = [WBSContactsHelper CNContactKeyFromWBSABKey:v5];
  if ([v7 isEqualToString:*MEMORY[0x1E695CC30]])
  {
    street = [v6 street];
LABEL_13:
    v9 = street;
    goto LABEL_14;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E695CC00]])
  {
    street = [v6 city];
    goto LABEL_13;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E695CC28]])
  {
    street = [v6 state];
    goto LABEL_13;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E695CC08]])
  {
    street = [v6 country];
    goto LABEL_13;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E695CC18]])
  {
    street = [v6 postalCode];
    goto LABEL_13;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E695CC10]])
  {
    street = [v6 ISOCountryCode];
    goto LABEL_13;
  }

  v11 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(CNContact(SafariSharedExtras) *)v5 safari_valueStringForWBSComponent:v11 inAddress:v12, v13, v14, v15, v16, v17];
  }

  v9 = 0;
LABEL_14:

  return v9;
}

+ (id)safari_valueStringForValue:()SafariSharedExtras wbsProperty:wbsComponent:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [WBSContactsHelper CNContactKeyFromWBSABKey:v9];
  if ([v11 isEqualToString:*MEMORY[0x1E695C360]])
  {
    currentCalendar = v8;
    if ([v10 length])
    {
      value = [currentCalendar value];
      [self safari_valueStringForWBSComponent:v10 inAddress:value];
    }

    else
    {
      v17 = MEMORY[0x1E695CF68];
      value = [currentCalendar value];
      [v17 stringFromPostalAddress:value style:0];
    }

    v14 = LABEL_4:;
    stringValue = v14;
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  if ([self safari_isValueAStringForContactsProperty:v11])
  {
    value2 = v8;
LABEL_7:
    stringValue = value2;
    goto LABEL_13;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E695C1D0]])
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    value = [currentCalendar dateFromComponents:v8];
    v16 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v16 setLocalizedDateFormatFromTemplate:@"dMy"];
    stringValue = [v16 stringFromDate:value];

    goto LABEL_11;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E695C330]])
  {
    currentCalendar = [v8 value];
    stringValue = [currentCalendar stringValue];
    goto LABEL_12;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E695C208]] || objc_msgSend(v11, "isEqualToString:", *MEMORY[0x1E695C418]))
  {
    value2 = [v8 value];
    goto LABEL_7;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E695C2B0]])
  {
    currentCalendar = v8;
    v20 = [v10 length];
    value3 = [currentCalendar value];
    value = value3;
    if (v20)
    {
      [self safari_valueStringForWBSComponent:v10 inInstantMessageAddress:value3];
    }

    else
    {
      [value3 username];
    }

    goto LABEL_4;
  }

  v22 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [(CNContact(SafariSharedExtras) *)v9 safari_valueStringForValue:v22 wbsProperty:v23 wbsComponent:v24, v25, v26, v27, v28];
  }

  stringValue = 0;
LABEL_13:

  return stringValue;
}

- (uint64_t)safari_numberOfValuesForWBSProperty:()SafariSharedExtras
{
  v4 = a3;
  if ([objc_opt_class() safari_isWBSProxyProperty:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [self safari_valueForWBSABProperty:v4];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v6 count];
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end