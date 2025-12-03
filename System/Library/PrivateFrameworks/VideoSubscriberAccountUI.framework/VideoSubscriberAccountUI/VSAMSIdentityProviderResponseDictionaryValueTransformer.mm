@interface VSAMSIdentityProviderResponseDictionaryValueTransformer
- (id)createProviderAppArtworkFromAttributes:(id)attributes;
- (id)transformedValue:(id)value;
@end

@implementation VSAMSIdentityProviderResponseDictionaryValueTransformer

- (id)createProviderAppArtworkFromAttributes:(id)attributes
{
  v3 = [attributes vs_dictionaryForKey:*MEMORY[0x277CE23D0]];
  currentDevice = [MEMORY[0x277CE2238] currentDevice];
  stringForAMSPlatformAttributes = [currentDevice stringForAMSPlatformAttributes];
  v6 = [v3 vs_dictionaryForKey:stringForAMSPlatformAttributes];

  if (!v6)
  {
    bincompatOS = [currentDevice bincompatOS];
    if (bincompatOS)
    {
      v6 = [v3 vs_dictionaryForKey:bincompatOS];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)transformedValue:(id)value
{
  v179 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v173 = valueCopy;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Handling response %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = 0x277CBE000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v112 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v102 = *MEMORY[0x277CE23F8];
    v7 = [valueCopy vs_arrayForKey:?];
    v101 = v7;
    if (v7)
    {
      v8 = v7;
      if ([v8 count])
      {
        v169 = 0u;
        v170 = 0u;
        v167 = 0u;
        v168 = 0u;
        obj = v8;
        v9 = [obj countByEnumeratingWithState:&v167 objects:v178 count:16];
        if (!v9)
        {
          goto LABEL_92;
        }

        v10 = v9;
        v11 = *v168;
        v117 = *MEMORY[0x277CBE660];
        v134 = *MEMORY[0x277CE23C8];
        v133 = *MEMORY[0x277CE2398];
        v128 = *MEMORY[0x277CE23B0];
        v127 = *MEMORY[0x277CE2390];
        v126 = *MEMORY[0x277CE23F0];
        v125 = *MEMORY[0x277CE2430];
        v124 = *MEMORY[0x277CE23B8];
        v123 = *MEMORY[0x277CE23C0];
        v122 = *MEMORY[0x277CE23A8];
        v121 = *MEMORY[0x277CE23A0];
        v110 = *MEMORY[0x277CE23E0];
        v109 = *MEMORY[0x277CE23E8];
        v108 = *MEMORY[0x277CE23D8];
        v107 = *MEMORY[0x277CE2408];
        v106 = *MEMORY[0x277CE2410];
        v105 = *MEMORY[0x277CE2418];
        v104 = *MEMORY[0x277CE2400];
        v103 = *MEMORY[0x277CE2388];
        v132 = *MEMORY[0x277CE2360];
        v130 = *MEMORY[0x277CE2350];
        v131 = *MEMORY[0x277CE2358];
        v119 = v5;
        v120 = valueCopy;
        v118 = v8;
        v135 = *v168;
        while (1)
        {
          v12 = 0;
          v136 = v10;
          do
          {
            if (*v168 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v167 + 1) + 8 * v12);
            v14 = *(v6 + 2752);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = *(v6 + 2752);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v16 = MEMORY[0x277CBEAD8];
                v17 = objc_opt_class();
                v18 = NSStringFromClass(v17);
                [v16 raise:v117 format:{@"Unexpectedly, providerObject was %@, instead of NSDictionary.", v18, v101}];
              }

              v19 = v13;
              v20 = [v19 vs_stringForKey:v134];
              v21 = [v19 vs_dictionaryForKey:v133];
              v152 = v21;
              v153 = v12;
              v156 = v19;
              if (v21)
              {
                v22 = v21;
                v23 = [v22 vs_stringForKey:v128];
                if (v23)
                {
                  v24 = [MEMORY[0x277CBEBC0] URLWithString:v23];
                }

                else
                {
                  v24 = 0;
                }

                v25 = [v22 vs_stringForKey:v127];
                v139 = v25;
                if (v25)
                {
                  v144 = [MEMORY[0x277CBEBC0] URLWithString:v25];
                }

                else
                {
                  v144 = 0;
                }

                v26 = [v22 vs_stringForKey:v126];
                if (!v26)
                {
                  v26 = v20;
                }

                v27 = [v22 vs_dictionaryForKey:v125];
                v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v165[0] = MEMORY[0x277D85DD0];
                v165[1] = 3221225472;
                v165[2] = __76__VSAMSIdentityProviderResponseDictionaryValueTransformer_transformedValue___block_invoke;
                v165[3] = &unk_279E19F58;
                v143 = v28;
                v166 = v143;
                v140 = v27;
                [v27 enumerateKeysAndObjectsUsingBlock:v165];
                v148 = [v22 vs_stringForKey:v124];
                v138 = [v22 vs_numberForKey:v123];
                bOOLValue = [v138 BOOLValue];
                v145 = v24;
                v30 = v24 == 0;
                v142 = [v22 vs_arrayOfStringsForKey:v122];
                v141 = [v22 vs_arrayOfStringsForKey:v121];
                v150 = [v22 vs_stringForKey:@"minimumOSVersion"];
                if (v20)
                {
                  v155 = bOOLValue;
                  v31 = v20;
                  v32 = -[NSObject length](v31, "length") && -[NSObject length](v148, "length") && (-[NSObject containsObject:](v112, "containsObject:", v31) & 1) == 0 && [v140 count] != 0;
                  v129 = v23;
                  v146 = v20;
                  if (![v150 length])
                  {
                    if (v32)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_54;
                  }

                  currentDevice = [MEMORY[0x277CE2238] currentDevice];
                  productVersion = [currentDevice productVersion];

                  if (productVersion)
                  {
                    v35 = [v150 compare:productVersion options:64] != 1 && v32;

                    if (v35)
                    {
                      goto LABEL_39;
                    }

LABEL_54:
                    v36 = VSDefaultLogObject();
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412802;
                      v173 = v148;
                      v174 = 2112;
                      v175 = v31;
                      v176 = 2112;
                      v177 = v156;
                      _os_log_impl(&dword_270DD4000, v36, OS_LOG_TYPE_DEFAULT, "Excluding provider %@ (%@): %@", buf, 0x20u);
                    }

                    v154 = 0;
                  }

                  else
                  {
                    v71 = VSErrorLogObject();
                    if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
                    {
                      [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)&v163 transformedValue:v164, v71];
                    }

                    if (!v32)
                    {
                      goto LABEL_54;
                    }

LABEL_39:
                    [v112 addObject:v31];
                    v36 = objc_alloc_init(MEMORY[0x277CE2260]);
                    v37 = MEMORY[0x277CE2298];
                    v38 = [v31 copy];
                    v39 = [v37 optionalWithObject:v38];
                    [v36 setUniqueID:v39];

                    v40 = MEMORY[0x277CE2298];
                    v41 = [v26 copy];
                    v42 = [v40 optionalWithObject:v41];
                    [v36 setProviderID:v42];

                    v43 = MEMORY[0x277CE2298];
                    v44 = [v156 copy];
                    v45 = [v43 optionalWithObject:v44];
                    [v36 setProviderInfo:v45];

                    [v36 setNameForSorting:v148];
                    [v36 setAuthenticationURL:v145];
                    [v36 setRequireAuthenticationURLSystemTrust:1];
                    [v36 setRequireXHRRequestSystemTrust:1];
                    v116 = [v22 vs_dictionaryForKey:v110];
                    v115 = [v116 vs_stringForKey:v109];
                    [v36 setProviderArtworkTemplateURL:?];
                    v114 = [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)self createProviderAppArtworkFromAttributes:v22];
                    v113 = [v114 vs_stringForKey:v108];
                    [v36 setProviderAppArtworkTemplateURL:?];
                    v46 = [v22 vs_numberForKey:v107];
                    v47 = v46;
                    if (v46)
                    {
                      -[NSObject setIsSetTopBoxSupported:](v36, "setIsSetTopBoxSupported:", [v46 BOOLValue]);
                    }

                    v48 = [v22 vs_numberForKey:v106];
                    v49 = v48;
                    if (v48)
                    {
                      -[NSObject setShouldShowChannelApps:](v36, "setShouldShowChannelApps:", [v48 BOOLValue]);
                    }

                    v50 = [v22 vs_numberForKey:v105];
                    v51 = v50;
                    if (v50)
                    {
                      -[NSObject setShouldShowSubscriptionApps:](v36, "setShouldShowSubscriptionApps:", [v50 BOOLValue]);
                    }

                    v52 = [v22 vs_numberForKey:v104];
                    v53 = v52;
                    if (v52)
                    {
                      -[NSObject setIsSTBOptOutAllowed:](v36, "setIsSTBOptOutAllowed:", [v52 BOOLValue]);
                    }

                    v54 = [v22 vs_numberForKey:v103];
                    if (v54)
                    {
                      [v36 setAppPlacementPosition:v54];
                    }

                    [v36 setStorefronts:v143];
                    [v36 setAppStoreRoomURL:v144];
                    [v36 setSupportedTemplates:v142];
                    [v36 setSupportedAuthenticationSchemes:v141];
                    [v36 setProhibitedByStore:(v30 | v155 ^ 1) & 1];
                    [v119 addObject:v36];

                    v5 = v119;
                    v154 = v36;
                    valueCopy = v120;
                    v8 = v118;
                  }

                  v6 = 0x277CBE000;
                  v55 = v145;
                  v20 = v146;

                  v23 = v129;
                }

                else
                {
                  v31 = VSDefaultLogObject();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v173 = v156;
                    _os_log_impl(&dword_270DD4000, v31, OS_LOG_TYPE_DEFAULT, "No unique ID for provider: %@", buf, 0xCu);
                  }

                  v154 = 0;
                  v55 = v145;
                }

                v12 = v153;
                v19 = v156;
              }

              else
              {
                v22 = VSErrorLogObject();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)&v161 transformedValue:v162, v22];
                }

                v154 = 0;
              }

              v56 = [v19 vs_dictionaryForKey:v132];
              v57 = [v56 vs_dictionaryForKey:v131];
              v58 = [v57 vs_arrayOfDictionariesForKey:v130];
              v59 = v58;
              if (v58 && [v58 count])
              {
                v149 = v57;
                v151 = v56;
                v147 = v20;
                v60 = v59;
                v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v62 = [MEMORY[0x277CCAE68] valueTransformerForName:@"VSAMSAppsValueTransformer"];
                v157 = 0u;
                v158 = 0u;
                v159 = 0u;
                v160 = 0u;
                v63 = v60;
                v64 = [v63 countByEnumeratingWithState:&v157 objects:v171 count:16];
                if (v64)
                {
                  v65 = v64;
                  v66 = *v158;
                  do
                  {
                    for (i = 0; i != v65; ++i)
                    {
                      if (*v158 != v66)
                      {
                        objc_enumerationMutation(v63);
                      }

                      v68 = *(*(&v157 + 1) + 8 * i);
                      v69 = [v62 transformedValue:v68];
                      if (v69)
                      {
                        [v61 addObject:v69];
                      }

                      else
                      {
                        v70 = VSErrorLogObject();
                        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          v173 = v68;
                          _os_log_error_impl(&dword_270DD4000, v70, OS_LOG_TYPE_ERROR, "App dictionary contained data but no attributes: %@", buf, 0xCu);
                        }
                      }
                    }

                    v65 = [v63 countByEnumeratingWithState:&v157 objects:v171 count:16];
                  }

                  while (v65);
                }

                if (v154)
                {
                  [v154 setNonChannelAppDescriptions:v61];
                }

                v5 = v119;
                valueCopy = v120;
                v8 = v118;
                v6 = 0x277CBE000;
                v12 = v153;
                v19 = v156;
                v20 = v147;
                v57 = v149;
                v56 = v151;
              }

              v11 = v135;
              v10 = v136;
              goto LABEL_77;
            }

            v19 = VSErrorLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v173 = v102;
              v174 = 2112;
              v175 = v13;
              _os_log_error_impl(&dword_270DD4000, v19, OS_LOG_TYPE_ERROR, "Unexpected value as item in %@ array: %@", buf, 0x16u);
            }

LABEL_77:

            ++v12;
          }

          while (v12 != v10);
          v72 = [obj countByEnumeratingWithState:&v167 objects:v178 count:16];
          v10 = v72;
          if (!v72)
          {
            goto LABEL_92;
          }
        }
      }

      obj = VSErrorLogObject();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)obj transformedValue:v80, v81, v82, v83, v84, v85, v86];
      }

LABEL_92:
    }

    else
    {
      v8 = VSErrorLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)v8 transformedValue:v73, v74, v75, v76, v77, v78, v79];
      }
    }
  }

  else
  {
    v112 = VSErrorLogObject();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
    {
      [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)valueCopy transformedValue:v112];
    }
  }

  if ([v5 count])
  {
    v87 = MEMORY[0x277CE2250];
    v88 = [v5 copy];
    v89 = [v87 failableWithObject:v88];
  }

  else
  {
    v90 = VSErrorLogObject();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      [(VSAMSIdentityProviderResponseDictionaryValueTransformer *)v90 transformedValue:v91, v92, v93, v94, v95, v96, v97];
    }

    v88 = VSPublicError();
    v89 = [MEMORY[0x277CE2250] failableWithError:v88];
  }

  v98 = v89;

  v99 = *MEMORY[0x277D85DE8];

  return v98;
}

void __76__VSAMSIdentityProviderResponseDictionaryValueTransformer_transformedValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a3;
  v5 = [a2 lowercaseString];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x277CBEAD8];
      v7 = *MEMORY[0x277CBE660];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v6 raise:v7 format:{@"Unexpectedly, value was %@, instead of NSDictionary.", v9}];
    }

    v10 = *MEMORY[0x277CE2420];
    v11 = v16;
    v12 = [v11 vs_numberForKey:v10];
    v13 = [v12 BOOLValue];

    v14 = [v11 vs_numberForKey:*MEMORY[0x277CE2428]];

    v15 = objc_alloc_init(MEMORY[0x277CE2270]);
    [v15 setStorefrontTwoCharCode:v5];
    [v15 setIsFeatured:v13];
    [v15 setSortOrdinal:v14];
    [*(a1 + 32) addObject:v15];
  }
}

- (void)transformedValue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Response was not a dictionary: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)transformedValue:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_270DD4000, log, OS_LOG_TYPE_FAULT, "Failed to get current version. Skipping TV Provider minimumOSVersion check.", buf, 2u);
}

- (void)transformedValue:(os_log_t)log .cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_270DD4000, log, OS_LOG_TYPE_ERROR, "No attributes dictionary for provider", buf, 2u);
}

@end