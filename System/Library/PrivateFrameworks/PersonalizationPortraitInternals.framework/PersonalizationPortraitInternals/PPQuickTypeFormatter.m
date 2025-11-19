@interface PPQuickTypeFormatter
+ (id)formatterWithQuery:(id)a3;
- (id)_dateFormatForTemplate:(uint64_t)a1;
- (id)attributionPattern;
- (id)destinationLabel;
- (id)distanceLabel;
- (id)etaLabel;
- (id)formattedBirthday:(id)a3;
- (id)formattedEventTime:(id)a3;
- (id)formattedLengthInMeters:(double)a3;
- (id)formattedMeasurement:(id)a3 allowDecimals:(BOOL)a4 scaleUnits:(BOOL)a5;
- (id)formattedPostalAddress:(id)a3;
- (id)formattedStringForLabel:(id)a3;
- (id)formattedStringsForLabels:(id)a3;
- (id)formattedTimeInterval:(double)a3;
- (id)inviteLinkLabel;
- (id)itemLabelForBundleId:(void *)a1 typeLabel:(void *)a2;
- (id)localizedAppNameForBundleIdentifier:(id)a3;
- (id)makeBirthdayFormatter;
- (id)makeChineseBirthdayFormatter;
- (id)makeDateComponentFormatter;
- (id)makeLengthFormatter;
- (id)makeLongEventFormatter;
- (id)makeMeasurementDecimalFormatter;
- (id)makeMeasurementUnscaledFormatter;
- (id)makeMeasurementWholeFormatter;
- (id)makeShortEventFormatter;
- (id)makeYearlessChineseBirthdayFormatter;
- (id)navigationItemLabelForTypeLabel:(id)a3 destination:(id)a4;
- (id)streetLabel;
- (id)timeLeftLabel;
- (uint64_t)_isYearlessComponents:(uint64_t)a1;
- (void)_localizedStringForKey:(void *)a1;
@end

@implementation PPQuickTypeFormatter

- (id)inviteLinkLabel
{
  v2 = [(PPQuickTypeFormatter *)self _localizedStringForKey:?];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
    if (v4)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
      v3 = [v5 localizedStringForKey:@"FaceTime Invitation" value:&stru_284759D38 table:@"Localizable"];
    }

    else
    {
      v3 = @"FaceTime Invitation";
    }
  }

  return v3;
}

- (void)_localizedStringForKey:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__12954;
    v16 = __Block_byref_object_dispose__12955;
    v17 = 0;
    v5 = a1[17];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__PPQuickTypeFormatter__localizedStringForKey___block_invoke;
    v7[3] = &unk_278974EC8;
    v10 = &v12;
    v11 = sel__localizedStringForKey_;
    v8 = v3;
    v9 = a1;
    [v5 runWithLockAcquired:v7];
    a1 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  return a1;
}

void __47__PPQuickTypeFormatter__localizedStringForKey___block_invoke(void *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:a1[4]];
  v5 = [MEMORY[0x277CBEB68] null];

  if (v4 == v5)
  {
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  else if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v32 = [MEMORY[0x277CCA890] currentHandler];
      [v32 handleFailureInMethod:a1[7] object:a1[5] file:@"PPQuickTypeFormatter.m" lineNumber:729 description:{@"Invalid parameter not satisfying: %@", @"[result isKindOfClass:[NSString class]]"}];
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v4);
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
    v11 = v10;
    if (v10)
    {
      v12 = MEMORY[0x277CCA8D8];
      v13 = [v10 localizations];
      v14 = a1[5];
      v16 = *(v14 + 24);
      v15 = *(v14 + 32);
      v39[0] = v16;
      v39[1] = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
      v18 = [v12 preferredLocalizationsFromArray:v13 forPreferences:v17];

      if ([v18 count])
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v20)
        {
          v21 = v20;
          v33 = v18;
          v22 = *v35;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v35 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v34 + 1) + 8 * i);
              v25 = objc_autoreleasePoolPush();
              v26 = [v11 localizedStringForKey:a1[4] value:0 table:0 localization:v24];
              v27 = v26;
              if (v26 && ([v26 isEqual:a1[4]] & 1) == 0)
              {

                objc_autoreleasePoolPop(v25);
                goto LABEL_24;
              }

              objc_autoreleasePoolPop(v25);
            }

            v21 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

          v27 = v4;
LABEL_24:
          v18 = v33;
        }

        else
        {
          v27 = v4;
        }

        [v3 setObject:v27 forKeyedSubscript:a1[4]];
        v30 = *(a1[6] + 8);
        v4 = v27;
        v28 = *(v30 + 40);
        *(v30 + 40) = v4;
      }

      else
      {
        v28 = pp_quicktype_log_handle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(a1[5] + 24);
          *buf = 138412290;
          v41 = v29;
          _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "Could not determine localizations for %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v18 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = @"com.apple.proactive.PersonalizationPortraitInternals";
        _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "Could not load bundle for %@", buf, 0xCu);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)timeLeftLabel
{
  v2 = [(PPQuickTypeFormatter *)self _localizedStringForKey:?];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
    if (v4)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
      v3 = [v5 localizedStringForKey:@"time to %@" value:&stru_284759D38 table:@"Localizable"];
    }

    else
    {
      v3 = @"time to %@";
    }
  }

  return v3;
}

- (id)streetLabel
{
  v2 = [(PPQuickTypeFormatter *)self _localizedStringForKey:?];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
    if (v4)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
      v3 = [v5 localizedStringForKey:@"street" value:&stru_284759D38 table:@"Localizable"];
    }

    else
    {
      v3 = @"street";
    }
  }

  return v3;
}

- (id)distanceLabel
{
  v2 = [(PPQuickTypeFormatter *)self _localizedStringForKey:?];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
    if (v4)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
      v3 = [v5 localizedStringForKey:@"distance to %@" value:&stru_284759D38 table:@"Localizable"];
    }

    else
    {
      v3 = @"distance to %@";
    }
  }

  return v3;
}

- (id)destinationLabel
{
  v2 = [(PPQuickTypeFormatter *)self _localizedStringForKey:?];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
    if (v4)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
      v3 = [v5 localizedStringForKey:@"destination" value:&stru_284759D38 table:@"Localizable"];
    }

    else
    {
      v3 = @"destination";
    }
  }

  return v3;
}

- (id)etaLabel
{
  v2 = [(PPQuickTypeFormatter *)self _localizedStringForKey:?];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
    if (v4)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
      v3 = [v5 localizedStringForKey:@"arrival at %@" value:&stru_284759D38 table:@"Localizable"];
    }

    else
    {
      v3 = @"arrival at %@";
    }
  }

  return v3;
}

- (id)attributionPattern
{
  v2 = [(PPQuickTypeFormatter *)self _localizedStringForKey:?];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.proactive.PersonalizationPortraitInternals"];
    v5 = v4;
    if (v4)
    {
      v3 = [v4 localizedStringForKey:@"%@ (%@ App)" value:&stru_284759D38 table:@"Localizable"];
    }

    else
    {
      v3 = @"%@ (%@ App)";
    }
  }

  return v3;
}

- (id)navigationItemLabelForTypeLabel:(id)a3 destination:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v14 = _PASValidatedFormat(v6, @"%@", v8, v9, v10, v11, v12, v13, v7);
    v15 = [PPQuickTypeFormatter itemLabelForBundleId:v14 typeLabel:?];
  }

  else
  {
    v14 = [(PPQuickTypeFormatter *)self destinationLabel];
    v22 = _PASValidatedFormat(v6, @"%@", v16, v17, v18, v19, v20, v21, v14);
    v15 = [PPQuickTypeFormatter itemLabelForBundleId:v22 typeLabel:?];
  }

  return v15;
}

- (id)itemLabelForBundleId:(void *)a1 typeLabel:(void *)a2
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = @"com.apple.Maps";
  v5 = a2;
  if (a1)
  {
    v6 = [a1 localizedAppNameForBundleIdentifier:@"com.apple.Maps"];
    v7 = [a1 attributionPattern];
    v14 = v7;
    if (v7)
    {
      v15 = _PASValidatedFormat(v7, @"%@%@", v8, v9, v10, v11, v12, v13, v5);
    }

    else
    {
      v16 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v21 = @"com.apple.Maps";
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Formatter failed to get label pattern for bundle: %@ label: %@", buf, 0x16u);
      }

      v15 = v5;
    }

    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)formattedTimeInterval:(double)a3
{
  v4 = [(PPQuickTypeFormatter *)self makeDateComponentFormatter];
  v5 = [v4 stringFromTimeInterval:a3];

  return v5;
}

- (id)makeDateComponentFormatter
{
  v2 = self;
  objc_sync_enter(v2);
  dateComponentFormatter = v2->_dateComponentFormatter;
  if (dateComponentFormatter)
  {
    v4 = dateComponentFormatter;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    [v6 setLocale:v2->_locale];
    [(NSDateComponentsFormatter *)v5 setCalendar:v6];
    [(NSDateComponentsFormatter *)v5 setUnitsStyle:5];
    [(NSDateComponentsFormatter *)v5 setAllowedUnits:96];
    v7 = v2->_dateComponentFormatter;
    v2->_dateComponentFormatter = v5;
    v8 = v5;

    v4 = v2->_dateComponentFormatter;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)formattedPostalAddress:(id)a3
{
  v4 = MEMORY[0x277D0EAA8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 toCNPostalAddress];

  v8 = [(NSLocale *)self->_locale languageCode];
  v9 = [(NSLocale *)self->_locale countryCode];
  v10 = [v6 initWithCNPostalAddress:v7 language:v8 country:v9 phoneticLocale:self->_desiredLanguage];

  v11 = [v10 fullAddressNoCurrentCountryWithMultiline:0];

  return v11;
}

- (id)formattedLengthInMeters:(double)a3
{
  v4 = [(PPQuickTypeFormatter *)self makeLengthFormatter];
  v5 = [v4 stringFromMeters:a3];

  return v5;
}

- (id)makeLengthFormatter
{
  v2 = self;
  objc_sync_enter(v2);
  lengthFormatter = v2->_lengthFormatter;
  if (lengthFormatter)
  {
    v4 = lengthFormatter;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    [v6 setMaximumFractionDigits:1];
    [(NSLengthFormatter *)v5 setNumberFormatter:v6];
    v7 = v2->_lengthFormatter;
    v2->_lengthFormatter = v5;
    v8 = v5;

    v4 = v2->_lengthFormatter;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)formattedMeasurement:(id)a3 allowDecimals:(BOOL)a4 scaleUnits:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (v6)
  {
    v9 = [(PPQuickTypeFormatter *)self makeMeasurementDecimalFormatter];
  }

  else
  {
    if (v5)
    {
      [(PPQuickTypeFormatter *)self makeMeasurementWholeFormatter];
    }

    else
    {
      [(PPQuickTypeFormatter *)self makeMeasurementUnscaledFormatter];
    }
    v9 = ;
  }

  v10 = v9;
  v11 = [v9 stringFromMeasurement:v8];

  return v11;
}

- (id)makeMeasurementUnscaledFormatter
{
  v2 = self;
  objc_sync_enter(v2);
  measurementUnscaledFormatter = v2->_measurementUnscaledFormatter;
  if (measurementUnscaledFormatter)
  {
    v4 = measurementUnscaledFormatter;
  }

  else
  {
    v5 = objc_opt_new();
    [(NSMeasurementFormatter *)v5 setLocale:v2->_locale];
    [(NSMeasurementFormatter *)v5 setUnitOptions:1];
    v6 = objc_opt_new();
    [v6 setMaximumFractionDigits:0];
    [v6 setMinimumFractionDigits:0];
    [v6 setMinimumIntegerDigits:1];
    [(NSMeasurementFormatter *)v5 setNumberFormatter:v6];
    v7 = v2->_measurementUnscaledFormatter;
    v2->_measurementUnscaledFormatter = v5;
    v8 = v5;

    v4 = v2->_measurementUnscaledFormatter;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)makeMeasurementDecimalFormatter
{
  v2 = self;
  objc_sync_enter(v2);
  measurementDecimalFormatter = v2->_measurementDecimalFormatter;
  if (measurementDecimalFormatter)
  {
    v4 = measurementDecimalFormatter;
  }

  else
  {
    v5 = objc_opt_new();
    [(NSMeasurementFormatter *)v5 setLocale:v2->_locale];
    [(NSMeasurementFormatter *)v5 setUnitOptions:3];
    v6 = objc_opt_new();
    [v6 setMaximumFractionDigits:1];
    [v6 setMinimumFractionDigits:1];
    [v6 setMinimumIntegerDigits:1];
    [(NSMeasurementFormatter *)v5 setNumberFormatter:v6];
    v7 = v2->_measurementDecimalFormatter;
    v2->_measurementDecimalFormatter = v5;
    v8 = v5;

    v4 = v2->_measurementDecimalFormatter;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)makeMeasurementWholeFormatter
{
  v2 = self;
  objc_sync_enter(v2);
  measurementWholeFormatter = v2->_measurementWholeFormatter;
  if (measurementWholeFormatter)
  {
    v4 = measurementWholeFormatter;
  }

  else
  {
    v5 = objc_opt_new();
    [(NSMeasurementFormatter *)v5 setLocale:v2->_locale];
    [(NSMeasurementFormatter *)v5 setUnitOptions:3];
    v6 = objc_opt_new();
    [v6 setMaximumFractionDigits:0];
    [v6 setMinimumFractionDigits:0];
    [v6 setMinimumIntegerDigits:1];
    [(NSMeasurementFormatter *)v5 setNumberFormatter:v6];
    v7 = v2->_measurementWholeFormatter;
    v2->_measurementWholeFormatter = v5;
    v8 = v5;

    v4 = v2->_measurementWholeFormatter;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)localizedAppNameForBundleIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSCache *)self->_appNameCache objectForKey:v4];
  if (!v5)
  {
    v12 = 0;
    v6 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v12];
    v7 = v12;
    if (v6)
    {
      fallbackLanguage = self->_fallbackLanguage;
      v13[0] = self->_desiredLanguage;
      v13[1] = fallbackLanguage;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
      v5 = [v6 localizedNameWithPreferredLocalizations:v9];

      if (v5)
      {
        [(NSCache *)self->_appNameCache setObject:v5 forKey:v4];
      }
    }

    else
    {
      v6 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = v4;
        v16 = 2112;
        v17 = v7;
        _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPQuickTypeFormatter: Failed to get application record for %@: %@", buf, 0x16u);
      }

      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)formattedStringsForLabels:(id)a3
{
  v4 = a3;
  if (formattedStringsForLabels__onceToken != -1)
  {
    dispatch_once(&formattedStringsForLabels__onceToken, &__block_literal_global_69_13016);
  }

  cachedContactsLabeledValuesLprojs = self->_cachedContactsLabeledValuesLprojs;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __50__PPQuickTypeFormatter_formattedStringsForLabels___block_invoke_2;
  v22[3] = &unk_278974E50;
  v22[4] = self;
  v6 = [(_PASCachedResult *)cachedContactsLabeledValuesLprojs resultNonnullWithBlock:v22];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__12954;
  v20 = __Block_byref_object_dispose__12955;
  v21 = 0;
  v7 = formattedStringsForLabels__lprojAndLabelToLocalizedStringCache;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__PPQuickTypeFormatter_formattedStringsForLabels___block_invoke_3;
  v12[3] = &unk_278974EA0;
  v15 = &v16;
  v8 = v4;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  [v7 runWithLockAcquired:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

id __50__PPQuickTypeFormatter_formattedStringsForLabels___block_invoke_2(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA8D8];
  v3 = [formattedStringsForLabels__cnBundle localizations];
  v4 = *(a1 + 32);
  v6 = *(v4 + 24);
  v5 = *(v4 + 32);
  v11[0] = v6;
  v11[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 preferredLocalizationsFromArray:v3 forPreferences:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __50__PPQuickTypeFormatter_formattedStringsForLabels___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__PPQuickTypeFormatter_formattedStringsForLabels___block_invoke_4;
  v9[3] = &unk_278974E78;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v3;
  v5 = v3;
  v6 = [v4 _pas_mappedArrayWithTransform:v9];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id __50__PPQuickTypeFormatter_formattedStringsForLabels___block_invoke_4(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([(__CFString *)v3 hasPrefix:@"_$!<"]&& ([(__CFString *)v3 hasSuffix:@">!$_"]& 1) != 0)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = *(a1 + 32);
    v4 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v25;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v24 + 1) + 8 * i);
          v9 = objc_autoreleasePoolPush();
          v10 = [MEMORY[0x277D42648] tupleWithFirst:v8 second:v3];
          v11 = [*(a1 + 40) objectForKeyedSubscript:v10];
          if (!v11)
          {
            v12 = [formattedStringsForLabels__cnBundle localizedStringForKey:v3 value:0 table:formattedStringsForLabels__table localization:v8];
            v13 = v12;
            if (v12 && ([v12 isEqual:v3] & 1) == 0)
            {
              v14 = v13;
            }

            else
            {
              v14 = [MEMORY[0x277CBEB68] null];
            }

            v11 = v14;
            if ([*(a1 + 40) count] >= 0x800)
            {
              v15 = pp_quicktype_log_handle();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "clearing formattedStringsForLabels cache due to size", buf, 2u);
              }

              [*(a1 + 40) removeAllObjects];
            }

            v16 = [v11 copy];
            [*(a1 + 40) setObject:v16 forKeyedSubscript:v10];
          }

          v17 = [MEMORY[0x277CBEB68] null];

          if (v11 != v17)
          {
            v22 = pp_quicktype_log_handle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v29 = @"cache miss";
              v30 = 2112;
              v31 = v3;
              v32 = 2112;
              v33 = v11;
              _os_log_debug_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEBUG, "(%@) localized label: %@ -> %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v9);
            goto LABEL_26;
          }

          objc_autoreleasePoolPop(v9);
        }

        v5 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v18 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v29 = v3;
      _os_log_debug_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEBUG, "no localized label available for %{private}@ -- must be either a custom label, or localizations not available", buf, 0xCu);
    }

    v19 = [MEMORY[0x277CBDB20] localizedStringForLabel:v3];
  }

  else
  {
    v19 = v3;
  }

  v11 = v19;
LABEL_26:

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

void __50__PPQuickTypeFormatter_formattedStringsForLabels___block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = formattedStringsForLabels__cnBundle;
  formattedStringsForLabels__cnBundle = v0;

  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = formattedStringsForLabels__table;
  formattedStringsForLabels__table = v3;

  v5 = objc_alloc(MEMORY[0x277D425F8]);
  v8 = objc_opt_new();
  v6 = [v5 initWithGuardedData:v8];
  v7 = formattedStringsForLabels__lprojAndLabelToLocalizedStringCache;
  formattedStringsForLabels__lprojAndLabelToLocalizedStringCache = v6;
}

- (id)formattedStringForLabel:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v11 count:1];

  v7 = [(PPQuickTypeFormatter *)self formattedStringsForLabels:v6, v11, v12];
  v8 = [v7 firstObject];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)formattedEventTime:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_debug_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEBUG, "formatting event time: %@", &v12, 0xCu);
  }

  v6 = PPNextMidnight();
  v7 = [v4 compare:v6];

  if (v7 == 1)
  {
    [(PPQuickTypeFormatter *)self makeLongEventFormatter];
  }

  else
  {
    [(PPQuickTypeFormatter *)self makeShortEventFormatter];
  }
  v8 = ;
  v9 = [v8 stringFromDate:v4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)formattedBirthday:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v39 = 138412290;
    v40 = v4;
    _os_log_debug_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEBUG, "formatting birthday: %@", &v39, 0xCu);
  }

  v6 = [v4 calendar];
  v7 = [v6 calendarIdentifier];
  v8 = [v7 isEqualToString:*MEMORY[0x277CBE5C0]];

  if (v8)
  {
    v9 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v39) = 0;
      _os_log_debug_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEBUG, "using gregorian formatter", &v39, 2u);
    }

    v10 = [(PPQuickTypeFormatter *)self makeBirthdayFormatter];
LABEL_7:
    v11 = v10;
    goto LABEL_16;
  }

  v12 = [v4 calendar];
  v13 = [v12 calendarIdentifier];
  v14 = [v13 isEqualToString:*MEMORY[0x277CBE590]];

  if (v14)
  {
    v15 = [(PPQuickTypeFormatter *)self _isYearlessComponents:v4];
    v16 = pp_quicktype_log_handle();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      if (v17)
      {
        LOWORD(v39) = 0;
        _os_log_debug_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEBUG, "using yearless chinese formatter", &v39, 2u);
      }

      v10 = [(PPQuickTypeFormatter *)self makeYearlessChineseBirthdayFormatter];
    }

    else
    {
      if (v17)
      {
        LOWORD(v39) = 0;
        _os_log_debug_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEBUG, "using chinese formatter", &v39, 2u);
      }

      v10 = [(PPQuickTypeFormatter *)self makeChineseBirthdayFormatter];
    }

    goto LABEL_7;
  }

  v18 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v39) = 0;
    _os_log_debug_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEBUG, "configuring a new formatter", &v39, 2u);
  }

  v11 = objc_opt_new();
  v19 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v11 setTimeZone:v19];

  v20 = [v4 calendar];
  [v11 setCalendar:v20];

  IntlUtilityClass = getIntlUtilityClass();
  v22 = [v4 calendar];
  v23 = [v22 calendarIdentifier];
  v24 = [IntlUtilityClass localeForCalendarID:v23];
  [v11 setLocale:v24];

  v25 = [(PPQuickTypeFormatter *)self _dateFormatForTemplate:?];
  [v11 setDateFormat:v25];

LABEL_16:
  v26 = [v4 calendar];
  v27 = v26;
  if (self)
  {
    v28 = v4;
    v29 = [v27 copy];

    v30 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v29 setTimeZone:v30];

    v31 = [v28 copy];
    [v31 setHour:12];
    [v31 setMinute:0];
    [v31 setSecond:0];
    v32 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v31 setTimeZone:v32];

    [v31 setCalendar:v29];
    if ([(PPQuickTypeFormatter *)self _isYearlessComponents:v31])
    {
      [getIntlUtilityClass() setYearlessYear:v31 forCalendar:v29];
      self = [v29 dateFromComponents:v31];
    }

    else
    {
      v33 = [v31 date];
      self = v33;
      if (v29 && v33)
      {
        v34 = [v29 components:2097182 fromDate:v33];
        v35 = [v29 dateFromComponents:v34];

        self = v35;
      }
    }
  }

  else
  {
    v29 = v26;
  }

  if (self)
  {
    v36 = [v11 stringFromDate:self];
  }

  else
  {
    v36 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (uint64_t)_isYearlessComponents:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 year] == 0x7FFFFFFFFFFFFFFFLL)
    {
      a1 = 1;
    }

    else
    {
      a1 = [v4 calendar];

      if (a1)
      {
        IntlUtilityClass = getIntlUtilityClass();
        v6 = [v4 calendar];
        a1 = [IntlUtilityClass isYearlessDate:v4 forCalendar:v6];
      }
    }
  }

  return a1;
}

- (id)_dateFormatForTemplate:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 80) objectForKey:v3];
    if (!v4)
    {
      v4 = [MEMORY[0x277CCA968] dateFormatFromTemplate:v3 options:0 locale:*(a1 + 16)];
      if (v4)
      {
        [*(a1 + 80) setObject:v4 forKey:v3];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)makeBirthdayFormatter
{
  v2 = self;
  objc_sync_enter(v2);
  birthdayFormatter = v2->_birthdayFormatter;
  if (birthdayFormatter)
  {
    v4 = birthdayFormatter;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [(NSDateFormatter *)v5 setTimeZone:v6];

    v7 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    [(NSDateFormatter *)v5 setCalendar:v7];

    [(NSDateFormatter *)v5 setLocale:v2->_locale];
    v8 = [(PPQuickTypeFormatter *)v2 _dateFormatForTemplate:?];
    [(NSDateFormatter *)v5 setDateFormat:v8];

    v9 = objc_opt_new();
    v10 = [(NSDateFormatter *)v5 stringFromDate:v9];

    v11 = v2->_birthdayFormatter;
    v2->_birthdayFormatter = v5;
    v12 = v5;

    v4 = v2->_birthdayFormatter;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)makeChineseBirthdayFormatter
{
  v2 = self;
  objc_sync_enter(v2);
  chineseBirthdayFormatter = v2->_chineseBirthdayFormatter;
  if (chineseBirthdayFormatter)
  {
    v4 = chineseBirthdayFormatter;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [(NSDateFormatter *)v5 setTimeZone:v6];

    v7 = *MEMORY[0x277CBE590];
    v8 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE590]];
    [(NSDateFormatter *)v5 setCalendar:v8];

    v9 = [getIntlUtilityClass() localeForCalendarID:v7];
    [(NSDateFormatter *)v5 setLocale:v9];

    [(NSDateFormatter *)v5 setDateStyle:3];
    [(NSDateFormatter *)v5 setTimeStyle:0];
    v10 = objc_opt_new();
    v11 = [(NSDateFormatter *)v5 stringFromDate:v10];

    v12 = v2->_chineseBirthdayFormatter;
    v2->_chineseBirthdayFormatter = v5;
    v13 = v5;

    v4 = v2->_chineseBirthdayFormatter;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)makeYearlessChineseBirthdayFormatter
{
  v2 = self;
  objc_sync_enter(v2);
  yearlessChineseBirthdayFormatter = v2->_yearlessChineseBirthdayFormatter;
  if (yearlessChineseBirthdayFormatter)
  {
    v4 = yearlessChineseBirthdayFormatter;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [(NSDateFormatter *)v5 setTimeZone:v6];

    v7 = *MEMORY[0x277CBE590];
    v8 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE590]];
    [(NSDateFormatter *)v5 setCalendar:v8];

    v9 = [getIntlUtilityClass() localeForCalendarID:v7];
    [(NSDateFormatter *)v5 setLocale:v9];

    [(NSDateFormatter *)v5 setDateStyle:3];
    [(NSDateFormatter *)v5 setTimeStyle:0];
    v10 = MEMORY[0x277CCA968];
    v11 = [(NSDateFormatter *)v5 locale];
    v12 = [v10 dateFormatFromTemplate:@"MMMMd" options:0 locale:v11];
    [(NSDateFormatter *)v5 setDateFormat:v12];

    v13 = objc_opt_new();
    v14 = [(NSDateFormatter *)v5 stringFromDate:v13];

    v15 = v2->_yearlessChineseBirthdayFormatter;
    v2->_yearlessChineseBirthdayFormatter = v5;
    v16 = v5;

    v4 = v2->_yearlessChineseBirthdayFormatter;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)makeLongEventFormatter
{
  v2 = self;
  objc_sync_enter(v2);
  longEventFormatter = v2->_longEventFormatter;
  if (longEventFormatter)
  {
    v4 = longEventFormatter;
  }

  else
  {
    v5 = objc_opt_new();
    [(NSDateFormatter *)v5 setLocale:v2->_locale];
    v6 = [(PPQuickTypeFormatter *)v2 _dateFormatForTemplate:?];
    [(NSDateFormatter *)v5 setDateFormat:v6];

    v7 = objc_opt_new();
    v8 = [(NSDateFormatter *)v5 stringFromDate:v7];

    v9 = v2->_longEventFormatter;
    v2->_longEventFormatter = v5;
    v10 = v5;

    v4 = v2->_longEventFormatter;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)makeShortEventFormatter
{
  v2 = self;
  objc_sync_enter(v2);
  shortEventFormatter = v2->_shortEventFormatter;
  if (shortEventFormatter)
  {
    v4 = shortEventFormatter;
  }

  else
  {
    v5 = objc_opt_new();
    [(NSDateFormatter *)v5 setLocale:v2->_locale];
    v6 = [(PPQuickTypeFormatter *)v2 _dateFormatForTemplate:?];
    [(NSDateFormatter *)v5 setDateFormat:v6];

    v7 = objc_opt_new();
    v8 = [(NSDateFormatter *)v5 stringFromDate:v7];

    v9 = v2->_shortEventFormatter;
    v2->_shortEventFormatter = v5;
    v10 = v5;

    v4 = v2->_shortEventFormatter;
  }

  objc_sync_exit(v2);

  return v4;
}

+ (id)formatterWithQuery:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_self();
  v25[0] = @"locale";
  v5 = [v4 localeIdentifier];

  v6 = v5;
  if (!v5)
  {
    v3 = [MEMORY[0x277CBEAF8] currentLocale];
    v6 = [v3 localeIdentifier];
  }

  v19 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:v25 count:1];
  if (!v5)
  {
  }

  if (formatterWithQuery___pasOnceToken4 != -1)
  {
    dispatch_once(&formatterWithQuery___pasOnceToken4, &__block_literal_global_13066);
  }

  v8 = formatterWithQuery___pasExprOnceResult;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__12954;
  v23 = __Block_byref_object_dispose__12955;
  v24 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__PPQuickTypeFormatter_formatterWithQuery___block_invoke_40;
  aBlock[3] = &unk_278974EA0;
  v9 = v7;
  v16 = v9;
  v10 = v4;
  v17 = v10;
  v18 = &v19;
  v11 = _Block_copy(aBlock);

  [v8 runWithLockAcquired:v11];
  v12 = v20[5];
  _Block_object_dispose(&v19, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __43__PPQuickTypeFormatter_formatterWithQuery___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D425E8]);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__PPQuickTypeFormatter_formatterWithQuery___block_invoke_2;
    v9[3] = &unk_278974E28;
    v10 = *(a1 + 40);
    v4 = [v5 initWithBlock:v9];
    [v3 setObject:v4 forKeyedSubscript:*(a1 + 32)];
  }

  v6 = [v4 result];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

PPQuickTypeFormatter *__43__PPQuickTypeFormatter_formatterWithQuery___block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [PPQuickTypeFormatter alloc];
  v3 = *(a1 + 32);
  v4 = v3;
  if (v2)
  {
    v46.receiver = v2;
    v46.super_class = PPQuickTypeFormatter;
    v5 = objc_msgSendSuper2(&v46, sel_init);
    v2 = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_query, v3);
      v6 = [v4 localeIdentifier];

      if (v6)
      {
        v7 = MEMORY[0x277CBEAF8];
        v8 = [v4 localeIdentifier];
        v6 = [v7 localeWithLocaleIdentifier:v8];
      }

      v9 = [MEMORY[0x277CBEAF8] currentLocale];
      v10 = v9;
      if (v6)
      {
        v11 = v6;
      }

      else
      {
        v11 = v9;
      }

      objc_storeStrong(&v2->_locale, v11);
      v12 = [(NSLocale *)v2->_locale localeIdentifier];
      desiredLanguage = v2->_desiredLanguage;
      v2->_desiredLanguage = v12;

      v14 = [v10 localeIdentifier];
      fallbackLanguage = v2->_fallbackLanguage;
      v2->_fallbackLanguage = v14;

      v16 = objc_opt_new();
      dateFormatCache = v2->_dateFormatCache;
      v2->_dateFormatCache = v16;

      [(NSCache *)v2->_dateFormatCache setCountLimit:4];
      v18 = [(PPQuickTypeFormatter *)v2 _dateFormatForTemplate:?];
      v19 = [(PPQuickTypeFormatter *)v2 _dateFormatForTemplate:?];
      v20 = [(PPQuickTypeFormatter *)v2 _dateFormatForTemplate:?];
      v21 = objc_opt_new();
      appNameCache = v2->_appNameCache;
      v2->_appNameCache = v21;

      [(NSCache *)v2->_appNameCache setCountLimit:1];
      v23 = objc_alloc(MEMORY[0x277D425F8]);
      v24 = objc_opt_new();
      v25 = [v23 initWithGuardedData:v24];
      localizedStringsCache = v2->_localizedStringsCache;
      v2->_localizedStringsCache = v25;

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v27 = [&unk_2847855E0 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v43;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v43 != v29)
            {
              objc_enumerationMutation(&unk_2847855E0);
            }

            v31 = [(PPQuickTypeFormatter *)v2 _localizedStringForKey:?];
          }

          v28 = [&unk_2847855E0 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v28);
      }

      v32 = objc_opt_new();
      cachedContactsLabeledValuesLprojs = v2->_cachedContactsLabeledValuesLprojs;
      v2->_cachedContactsLabeledValuesLprojs = v32;

      v34 = *MEMORY[0x277CBD940];
      v47[0] = *MEMORY[0x277CBD8E0];
      v47[1] = v34;
      v35 = *MEMORY[0x277CBD900];
      v47[2] = *MEMORY[0x277CBD908];
      v47[3] = v35;
      v36 = *MEMORY[0x277CBD920];
      v47[4] = *MEMORY[0x277CBD8F8];
      v47[5] = v36;
      v37 = *MEMORY[0x277CBD8E8];
      v47[6] = *MEMORY[0x277CBD918];
      v47[7] = v37;
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:8];
      v39 = [(PPQuickTypeFormatter *)v2 formattedStringsForLabels:v38];
    }
  }

  v40 = *MEMORY[0x277D85DE8];

  return v2;
}

void __43__PPQuickTypeFormatter_formatterWithQuery___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277D425F8]);
  v2 = objc_opt_new();
  v3 = [v1 initWithGuardedData:v2];
  v4 = formatterWithQuery___pasExprOnceResult;
  formatterWithQuery___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

@end