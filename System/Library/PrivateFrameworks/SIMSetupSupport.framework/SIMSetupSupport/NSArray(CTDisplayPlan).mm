@interface NSArray(CTDisplayPlan)
- (id)carrierNames;
- (id)filteredPlansForHiddenInCloudBucket:()CTDisplayPlan;
- (id)filteredPlansForNonInstallableBucket;
- (id)filteredPlansForTransferableBucket;
- (id)filteredPlansForVisitStoreBucket;
- (id)filteredPlansWithTransferCapabilities:()CTDisplayPlan restrictionAllowed:;
- (id)filteredPlansWithTransferCapability:()CTDisplayPlan;
- (id)getCombinedFooterForNonTransferablePlans;
- (void)getCombinedTitleAndDetailsForNonTransferablePlans:()CTDisplayPlan details:;
- (void)getCombinedTitleAndDetailsForTransferCapability:()CTDisplayPlan title:detail:;
@end

@implementation NSArray(CTDisplayPlan)

- (id)carrierNames
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 carrierName];
        v10 = [v9 length];

        if (v10)
        {
          v11 = [v8 carrierName];
          [v2 addObject:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)filteredPlansWithTransferCapability:()CTDisplayPlan
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__NSArray_CTDisplayPlan__filteredPlansWithTransferCapability___block_invoke;
  v7[3] = &__block_descriptor_40_e25_B24__0_8__NSDictionary_16l;
  v7[4] = a3;
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:v7];
  v5 = [a1 filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)filteredPlansWithTransferCapabilities:()CTDisplayPlan restrictionAllowed:
{
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = MEMORY[0x277CCAC30];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __83__NSArray_CTDisplayPlan__filteredPlansWithTransferCapabilities_restrictionAllowed___block_invoke;
    v15 = &unk_279B44BA0;
    v17 = a4;
    v16 = v7;
    v9 = [v8 predicateWithBlock:&v12];
    v10 = [a1 filteredArrayUsingPredicate:{v9, v12, v13, v14, v15}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)filteredPlansForNonInstallableBucket
{
  v2 = [&unk_287583F20 mutableCopy];
  if (!+[TSUtilities inBuddy])
  {
    [v2 addObject:&unk_287583A00];
  }

  v3 = [a1 filteredPlansWithTransferCapabilities:v2 restrictionAllowed:1];

  return v3;
}

- (id)filteredPlansForTransferableBucket
{
  v2 = [&unk_287583F38 mutableCopy];
  if (!+[TSUtilities inBuddy])
  {
    [v2 addObject:&unk_287583A00];
  }

  v3 = [a1 filteredPlansWithTransferCapabilities:v2 restrictionAllowed:0];

  return v3;
}

- (id)filteredPlansForVisitStoreBucket
{
  v2 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3];
  v3 = [a1 filteredArrayUsingPredicate:v2];

  return v3;
}

- (id)filteredPlansForHiddenInCloudBucket:()CTDisplayPlan
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__NSArray_CTDisplayPlan__filteredPlansForHiddenInCloudBucket___block_invoke;
  v7[3] = &__block_descriptor_33_e25_B24__0_8__NSDictionary_16l;
  v8 = a3;
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:v7];
  v5 = [a1 filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)getCombinedFooterForNonTransferablePlans
{
  v44[6] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CBEB38] dictionaryWithPlansByGroupByTransferCapability:a1];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v44[0] = v2;
  v44[1] = &unk_287583928;
  v44[2] = &unk_2875839E8;
  v44[3] = &unk_2875839D0;
  v44[4] = &unk_287583940;
  v44[5] = &unk_2875838E0;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:6];

  v36 = [MEMORY[0x277CCAB68] string];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = v3;
  v5 = v1;
  obj = v4;
  v6 = [v4 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    v37 = v1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v11 = [v5 objectForKey:v10];
        v12 = v11;
        if (v11 && [v11 count])
        {
          v13 = [v10 unsignedIntegerValue];
          v14 = [v12 carrierNames];
          v15 = sFormattedCarrierListFromSet(v14);
          v16 = v15;
          if (!v15 || ![v15 length])
          {
            v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v18 = [v17 localizedStringForKey:@"YOUR_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

            v16 = v18;
          }

          if (v13 == 11001)
          {
            v19 = [v14 count];
            v20 = MEMORY[0x277CCACA8];
            v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v22 = v21;
            if (v19 > 1)
            {
              v23 = @"MULTI_TRANSFER_PLAN_LABELS_SECTION_FOOTER_VISIT_STORE_%@";
            }

            else
            {
              v23 = @"SINGLE_TRANSFER_PLAN_LABELS_SECTION_FOOTER_VISIT_STORE_%@";
            }

            v25 = [v21 localizedStringForKey:v23 value:&stru_28753DF48 table:@"Localizable"];
            [v20 stringWithFormat:v25, v16];
            v24 = LABEL_28:;

LABEL_29:
LABEL_30:
            if ([v24 length])
            {
              v32 = [MEMORY[0x277CCAB68] stringWithString:v24];
              v33 = [TSUtilities getStringWithFirstCharacterUppercase:v32];

              if ([v36 length])
              {
                [v36 appendString:@"\n\n"];
              }

              [v36 appendString:v33];
              v24 = v33;
              v5 = v37;
            }

            goto LABEL_35;
          }

          v24 = 0;
          if (v13 <= 14)
          {
            if (v13 == 12)
            {
              v26 = MEMORY[0x277CCACA8];
              v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v22 = v27;
              v28 = @"TRANSFER_PLAN_LABELS_SECTION_FOOTER_CARRIER_UNLOCK_%@";
            }

            else
            {
              if (v13 != 14)
              {
                goto LABEL_30;
              }

              v26 = MEMORY[0x277CCACA8];
              v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v22 = v27;
              v28 = @"TRANSFER_PLAN_LABELS_SECTION_FOOTER_REQUIRE_TARGET_SOFTWARE_UPDATE_%@";
            }
          }

          else
          {
            if (v13 == 15)
            {
              v29 = MEMORY[0x277CCACA8];
              v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v30 = [v22 localizedStringForKey:@"TRANSFER_PLAN_LABELS_SECTION_FOOTER_REQUIRE_SOURCE_SOFTWARE_UPDATE_%@" value:&stru_28753DF48 table:@"Localizable"];
              v24 = [v29 stringWithFormat:v30, v16];

              v5 = v37;
              goto LABEL_29;
            }

            if (v13 != 16)
            {
              if (v13 == 19)
              {
                v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v24 = [v22 localizedStringForKey:@"TRANSFER_PLAN_LABELS_SECTION_FOOTER_UNKNOWN_LOCATION" value:&stru_28753DF48 table:@"Localizable"];
                goto LABEL_29;
              }

              goto LABEL_30;
            }

            v26 = MEMORY[0x277CCACA8];
            v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v22 = v27;
            v28 = @"TRANSFER_PLAN_LABELS_SECTION_FOOTER_MISSING_CERTIFICATE_%@";
          }

          v25 = [v27 localizedStringForKey:v28 value:&stru_28753DF48 table:@"Localizable"];
          v31 = v26;
          v5 = v37;
          [v31 stringWithFormat:v25, v16];
          goto LABEL_28;
        }

LABEL_35:
      }

      v7 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v7);
  }

  v34 = *MEMORY[0x277D85DE8];

  return v36;
}

- (void)getCombinedTitleAndDetailsForNonTransferablePlans:()CTDisplayPlan details:
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithPlansByGroupByTransferCapability:a1];
  v7 = [v6 mergeByTransferCapabilities:&unk_287583F68];
  v8 = [v6 mergeByTransferCapabilities:&unk_287583F80];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  v12 = 0;
  v28 = *v32;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v32 != v28)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v31 + 1) + 8 * i);
      v15 = [v14 unsignedIntegerValue];
      v16 = [v9 objectForKeyedSubscript:v14];
      v29 = 0;
      v30 = 0;
      [v16 getCombinedTitleAndDetailsForTransferCapability:v15 title:&v30 detail:&v29];
      v17 = v30;
      v18 = v29;

      if ([v12 length])
      {
        if ([v12 isEqualToString:v17])
        {
          goto LABEL_11;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = [v19 localizedStringForKey:@"MULTISIM_INELIGIBLE_TRANSFER_PLANS_TITLE" value:&stru_28753DF48 table:@"Localizable"];

        v12 = v19;
      }

      else
      {
        v20 = v17;
      }

      v12 = v20;
LABEL_11:
      if ([v18 length])
      {
        v21 = [MEMORY[0x277CCAB68] stringWithString:v18];
        v22 = [TSUtilities getStringWithFirstCharacterUppercase:v21];

        if ([v5 length])
        {
          [v5 appendString:@"\n\n"];
        }

        [v5 appendString:v22];
        v18 = v22;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v11);
LABEL_19:

  if (a3)
  {
    v23 = v12;
    *a3 = v12;
  }

  if (a4)
  {
    v24 = v5;
    *a4 = v5;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)getCombinedTitleAndDetailsForTransferCapability:()CTDisplayPlan title:detail:
{
  if ([a1 count])
  {
    v9 = [a1 carrierNames];
    v10 = sFormattedCarrierListFromSet(v9);
    v11 = v10;
    if (!v10 || ![v10 length])
    {
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"YOUR_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

      v11 = v13;
    }

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = &stru_28753DF48;
    v16 = [v14 localizedStringForKey:@"CONTACT_CARRIER_TO_SETUP_ESIM" value:&stru_28753DF48 table:@"Localizable"];

    if (a3 == 11001)
    {
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v17 localizedStringForKey:@"VISIT_STORE_TITLE" value:&stru_28753DF48 table:@"Localizable"];
      v18 = v9;
      v19 = a4;
      v21 = v20 = a5;

      v22 = MEMORY[0x277CCACA8];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"VISIT_STORE_FOR_WARNING_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
      v15 = [v22 stringWithFormat:v24, v11];

      v16 = v21;
      a5 = v20;
      a4 = v19;
      v9 = v18;
    }

    switch(a3)
    {
      case 0:
      case 1:
      case 8:
      case 13:
        v26 = MEMORY[0x277CCACA8];
        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v28 = [v27 localizedStringForKey:@"TRANSFER_UNSUPPORTED_PLAN_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
        v29 = [v26 stringWithFormat:v28, v11];

        v15 = v29;
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 11:
        v25 = _TSLogDomain();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [NSArray(CTDisplayPlan) getCombinedTitleAndDetailsForTransferCapability:a3 title:v25 detail:?];
        }

        v15 = &stru_28753DF48;
        break;
      case 9:
        v30 = [v9 count];
        v31 = MEMORY[0x277CCACA8];
        v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v33 = v32;
        if (v30 > 1)
        {
          v34 = @"COMBINED_MULTI_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_INELIGIBLE_DETAIL_%@_%@";
        }

        else
        {
          v34 = @"COMBINED_SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_INELIGIBLE_DETAIL_%@_%@";
        }

        v64 = [v32 localizedStringForKey:v34 value:&stru_28753DF48 table:@"Localizable"];
        v65 = [v31 stringWithFormat:v64, v11, v11];

        v15 = v65;
        break;
      case 10:
        v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v35 localizedStringForKey:@"TRANSFER_INELIGIBLE_FOR_NOW_PLAN" value:&stru_28753DF48 table:@"Localizable"];
        v36 = v68 = a5;

        v37 = MEMORY[0x277CCACA8];
        v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = [v38 localizedStringForKey:@"COMBINED_TRANSFER_INELIGIBLE_FOR_NOW_PLAN_DETAIL_%@_%@" value:&stru_28753DF48 table:@"Localizable"];
        [v37 stringWithFormat:v39, v11, v11];
        goto LABEL_29;
      case 12:
        v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v44 localizedStringForKey:@"TRANSFER_INELIGIBLE_PLAN" value:&stru_28753DF48 table:@"Localizable"];
        v36 = v68 = a5;

        v41 = MEMORY[0x277CCACA8];
        v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = v42;
        v43 = @"COMBINED_SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_INELIGIBLE_DETAIL_ACTIVATION_POLICY_MISMATCH_CARRIER_UNLOCK_%@";
        goto LABEL_28;
      case 14:
        v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v54 localizedStringForKey:@"TRANSFER_UPDATE_REQUIRED_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        v36 = v68 = a5;

        v41 = MEMORY[0x277CCACA8];
        v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = v42;
        v43 = @"COMBINED_TRANSFER_TARGET_UPDATE_REQUIRED_DETAIL_%@";
        goto LABEL_28;
      case 15:
        v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v40 localizedStringForKey:@"TRANSFER_UPDATE_REQUIRED_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        v36 = v68 = a5;

        v41 = MEMORY[0x277CCACA8];
        v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = v42;
        v43 = @"COMBINED_TRANSFER_SOURCE_UPDATE_REQUIRED_DETAIL_%@";
        goto LABEL_28;
      case 16:
        v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v60 localizedStringForKey:@"UNABLE_TO_TRANSFER" value:&stru_28753DF48 table:@"Localizable"];
        v36 = v68 = a5;

        v41 = MEMORY[0x277CCACA8];
        v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = v42;
        v43 = @"COMBINED_SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_MISSING_CERTIFICATE_%@";
        goto LABEL_28;
      case 17:
        v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v45 localizedStringForKey:@"UNABLE_TO_TRANSFER" value:&stru_28753DF48 table:@"Localizable"];
        v36 = v68 = a5;

        v41 = MEMORY[0x277CCACA8];
        v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = v42;
        v43 = @"COMBINED_SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_REGULATORY_RESTRICTED_%@";
        goto LABEL_28;
      case 18:
        v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v53 localizedStringForKey:@"UNABLE_TO_TRANSFER" value:&stru_28753DF48 table:@"Localizable"];
        v36 = v68 = a5;

        v41 = MEMORY[0x277CCACA8];
        v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = v42;
        v43 = @"COMBINED_SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_UNREGULATORY_RESTRICTED_%@";
LABEL_28:
        v39 = [v42 localizedStringForKey:v43 value:&stru_28753DF48 table:@"Localizable"];
        [v41 stringWithFormat:v39, v11, v67];
        v61 = LABEL_29:;

        v15 = v61;
        v16 = v36;
        a5 = v68;
        break;
      case 19:
        v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v56 = [v55 localizedStringForKey:@"TURN_ON_LOCATION_SERVICE" value:&stru_28753DF48 table:@"Localizable"];

        LODWORD(v55) = +[TSUtilities inBuddy];
        v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v58 = v57;
        if (v55)
        {
          v59 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_UNKNOWN_LOCATION_BUDDY";
        }

        else
        {
          v59 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_UNKNOWN_LOCATION";
        }

        v66 = [v57 localizedStringForKey:v59 value:&stru_28753DF48 table:@"Localizable"];

        v15 = v66;
        v16 = v56;
        break;
      case 20:
        v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v46 localizedStringForKey:@"ESIM_COUNT_RESTRICTION_WARNING_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        v47 = v9;
        v48 = a4;
        v50 = v49 = a5;

        v51 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v52 = [v51 localizedStringForKey:@"ESIM_COUNT_RESTRICTION_WARNING_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

        v15 = v52;
        v16 = v50;
        a5 = v49;
        a4 = v48;
        v9 = v47;
        break;
      default:
        break;
    }

    if (a4)
    {
      v62 = v16;
      *a4 = v16;
    }

    if (a5)
    {
      v63 = v15;
      *a5 = v15;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = &stru_28753DF48;
    }

    if (a5)
    {
      *a5 = &stru_28753DF48;
    }
  }
}

- (void)getCombinedTitleAndDetailsForTransferCapability:()CTDisplayPlan title:detail:.cold.1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 134218498;
  v5 = a1;
  v6 = 2080;
  v7 = CTPlanTransferCapabilityAsString();
  v8 = 2080;
  v9 = "[NSArray(CTDisplayPlan) getCombinedTitleAndDetailsForTransferCapability:title:detail:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]unexpected transfer capability : %lu(%s) @%s", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end