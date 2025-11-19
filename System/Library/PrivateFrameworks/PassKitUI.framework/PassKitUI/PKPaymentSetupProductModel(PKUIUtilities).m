@interface PKPaymentSetupProductModel(PKUIUtilities)
- (id)filteredPaymentSetupProductModelWithLocalCredentials:()PKUIUtilities setupContext:webService:mobileCarrierRegion:deviceRegion:;
- (uint64_t)_localCredentials:()PKUIUtilities containProduct:;
@end

@implementation PKPaymentSetupProductModel(PKUIUtilities)

- (id)filteredPaymentSetupProductModelWithLocalCredentials:()PKUIUtilities setupContext:webService:mobileCarrierRegion:deviceRegion:
{
  v174 = *MEMORY[0x1E69E9840];
  v113 = a3;
  v12 = a5;
  v125 = a6;
  v124 = a7;
  v109 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v116 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  IsBridge = PKPaymentSetupContextIsBridge();
  IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  v132 = a4;
  IsMerchantApp = PKPaymentSetupContextIsMerchantApp();
  IsAvailable = PKFelicaSecureElementIsAvailable();
  v119 = [v12 paymentSetupSupportedInRegion];
  v107 = v12;
  v13 = [v12 targetDevice];
  v14 = [v13 appleAccountInformation];
  v126 = [v14 isManagedAppleAccount];

  if (PKIsPhone())
  {
    v130 = 1;
  }

  else
  {
    v130 = PKIsWatch();
  }

  v134 = PKPaymentSetupContextIsiOSSetupAssistant();
  v108 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:4 context:a4];
  if ([v113 count])
  {
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v15 = [a1 allSetupProducts];
    v16 = [v15 countByEnumeratingWithState:&v158 objects:v173 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v159;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v159 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v158 + 1) + 8 * i);
          if ([a1 _localCredentials:v113 containProduct:v20])
          {
            [v116 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v158 objects:v173 count:16];
      }

      while (v17);
    }
  }

  v120 = a1;
  [a1 filteredPaymentSetupProductModel:v107 mobileCarrierRegion:v125 deviceRegion:v124 cardOnFiles:v116];
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  obj = v157 = 0u;
  v21 = [obj countByEnumeratingWithState:&v154 objects:v172 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v155;
    do
    {
      v24 = 0;
      do
      {
        if (*v155 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v154 + 1) + 8 * v24);
        v26 = [v116 containsObject:v25];
        v27 = [v25 configuration];
        if ([v27 type] == 7 && objc_msgSend(v27, "featureIdentifier") == 2 && (v132 > 8 || ((1 << v132) & 0x109) == 0))
        {
          v58 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = [v25 displayName];
            *buf = 138412290;
            v164 = v59;
            _os_log_impl(&dword_1BD026000, v58, OS_LOG_TYPE_DEFAULT, "Product: %@ is not supported in context", buf, 0xCu);
          }

          v28 = 0;
        }

        else
        {
          v28 = 1;
        }

        v29 = [v25 setupProductMethods];
        v30 = [v29 count];

        v31 = [v25 supportsSetupProductMethodForType:2];
        v32 = v31;
        if (v30 == 1)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0;
        }

        v34 = [v25 supportsSetupProductMethodForType:5];
        if ((v28 & 1) == 0)
        {
          v37 = PKLogFacilityTypeGetObject();
LABEL_79:
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v60 = [v25 displayName];
            *buf = 138412290;
            v164 = v60;
            _os_log_impl(&dword_1BD026000, v37, OS_LOG_TYPE_DEFAULT, "Product: %@ is unsupported and will not be shown in the flow picker", buf, 0xCu);
          }

          goto LABEL_82;
        }

        v35 = IsSetupAssistant;
        v36 = (v32 | v34) & IsSetupAssistant & (v30 == 1);
        if (v36 == 1)
        {
          v37 = PKLogFacilityTypeGetObject();
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          if (!v26)
          {
            if (!v38)
            {
              goto LABEL_78;
            }

            v44 = [v25 displayName];
            *buf = 138412290;
            v164 = v44;
            v49 = v37;
            v50 = "Product: %@ is not supported in setup context due to lack of card on file";
LABEL_73:
            _os_log_impl(&dword_1BD026000, v49, OS_LOG_TYPE_DEFAULT, v50, buf, 0xCu);
            goto LABEL_77;
          }

          if (v38)
          {
            v39 = [v25 displayName];
            *buf = 138412290;
            v164 = v39;
            _os_log_impl(&dword_1BD026000, v37, OS_LOG_TYPE_DEFAULT, "Product: %@ is supported due to matching card on file (DCI / In-App check)", buf, 0xCu);
          }

          v35 = IsSetupAssistant;
        }

        v40 = v36 ^ 1;
        if (((v33 | v35) & 1) == 0 && ([v25 allSupportedProtocols] & 4) != 0 && !IsAvailable)
        {
          v37 = PKLogFacilityTypeGetObject();
          v47 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          if (!v26)
          {
            if (!v47)
            {
              goto LABEL_78;
            }

            v44 = [v25 displayName];
            *buf = 138412290;
            v164 = v44;
            v49 = v37;
            v50 = "Product: %@ is not supported due to lack of card on file and Type F support";
            goto LABEL_73;
          }

          if (v47)
          {
            v48 = [v25 displayName];
            *buf = 138412290;
            v164 = v48;
            _os_log_impl(&dword_1BD026000, v37, OS_LOG_TYPE_DEFAULT, "Product: %@ is supported due to matching card on file (type f support check)", buf, 0xCu);
          }

          v40 = 0;
        }

        if (!PKSecureElementIsAvailable())
        {
          v37 = PKLogFacilityTypeGetObject();
          v41 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          if ((v26 & IsBridge) != 1)
          {
            if (v41)
            {
              v44 = [v25 displayName];
              *buf = 138412290;
              v164 = v44;
              v45 = v37;
              v46 = "Product: %@ is not supported due to lack of SE";
              goto LABEL_76;
            }

            goto LABEL_78;
          }

          if (v41)
          {
            v42 = [v25 displayName];
            *buf = 138412290;
            v164 = v42;
            _os_log_impl(&dword_1BD026000, v37, OS_LOG_TYPE_DEFAULT, "Product: %@ is supported due to matching card on file and bridge context (SE check)", buf, 0xCu);
          }

          v40 = 0;
        }

        if (v134 && [v25 hsa2Requirement] == 2 && !-[PKSecurityCapabilitiesController isHSA2Enabled](v108, "isHSA2Enabled"))
        {
          v37 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v44 = [v25 displayName];
            *buf = 138412290;
            v164 = v44;
            v45 = v37;
            v46 = "Product: %@ is not supported in setup context due to HSA requirement";
LABEL_76:
            _os_log_impl(&dword_1BD026000, v45, OS_LOG_TYPE_DEFAULT, v46, buf, 0xCu);

LABEL_77:
          }

LABEL_78:

          goto LABEL_79;
        }

        v43 = [v27 state];
        if ((v43 - 3) >= 2)
        {
          if (v43 == 2)
          {
            v51 = [v25 featureApplications];
            v52 = [v51 count];

            v37 = PKLogFacilityTypeGetObject();
            v53 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
            if (!v52)
            {
              if (v53)
              {
                v44 = [v25 displayName];
                v61 = PKPaymentSetupProductStateToString();
                *buf = 138543618;
                v164 = v44;
                v165 = 2114;
                v166 = v61;
                _os_log_impl(&dword_1BD026000, v37, OS_LOG_TYPE_DEFAULT, "Product: %{public}@ is set as: %{public}@ not including", buf, 0x16u);

                goto LABEL_77;
              }

              goto LABEL_78;
            }

            if (v53)
            {
              v54 = [v25 displayName];
              v55 = PKPaymentSetupProductStateToString();
              *buf = 138543618;
              v164 = v54;
              v165 = 2114;
              v166 = v55;
              _os_log_impl(&dword_1BD026000, v37, OS_LOG_TYPE_DEFAULT, "Product: %{public}@ is set as: %{public}@ but has existing featureApplications so including", buf, 0x16u);
            }
          }
        }

        else if (((IsSetupAssistant ^ 1 | v26) & 1) == 0)
        {
          v37 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v44 = [v25 displayName];
            *buf = 138543362;
            v164 = v44;
            v45 = v37;
            v46 = "Product: %{public}@ is set allowed during setup assistant as it requires onboarding";
            goto LABEL_76;
          }

          goto LABEL_78;
        }

        if ((v40 & 1) == 0)
        {
          v56 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = [v25 displayName];
            *buf = 138412290;
            v164 = v57;
            _os_log_impl(&dword_1BD026000, v56, OS_LOG_TYPE_DEFAULT, "Product: %@ is supported due to matching card but cannot be manually provisioned", buf, 0xCu);
          }
        }

        [v109 addObject:v25];
LABEL_82:

        ++v24;
      }

      while (v22 != v24);
      v62 = [obj countByEnumeratingWithState:&v154 objects:v172 count:16];
      v22 = v62;
    }

    while (v62);
  }

  v63 = objc_alloc_init(MEMORY[0x1E69B8E60]);
  [v63 updatePaymentSetupProducts:v109];
  v112 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v110 = [v120 allSections];
  v64 = 0x1E695D000uLL;
  v115 = [v110 countByEnumeratingWithState:&v150 objects:v171 count:16];
  if (v115)
  {
    v114 = *v151;
    v123 = *MEMORY[0x1E69BC2A8];
    v121 = *MEMORY[0x1E69BC298];
    v133 = v63;
    do
    {
      v65 = 0;
      do
      {
        if (*v151 != v114)
        {
          objc_enumerationMutation(v110);
        }

        v118 = v65;
        v66 = *(*(&v150 + 1) + 8 * v65);
        v122 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v146 = 0u;
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v117 = v66;
        v129 = [v66 categories];
        v137 = [v129 countByEnumeratingWithState:&v146 objects:v170 count:16];
        if (v137)
        {
          v135 = *v147;
          do
          {
            for (j = 0; j != v137; ++j)
            {
              if (*v147 != v135)
              {
                objc_enumerationMutation(v129);
              }

              v68 = *(*(&v146 + 1) + 8 * j);
              if (IsSetupAssistant && ([*(*(&v146 + 1) + 8 * j) excludedContexts] & 1) != 0)
              {
                v70 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  v71 = [v68 identifier];
                  *buf = 138412290;
                  v164 = v71;
                  v72 = v70;
                  v73 = "Dropping category: %@ as it is not supported in setup assistant";
LABEL_118:
                  _os_log_impl(&dword_1BD026000, v72, OS_LOG_TYPE_DEFAULT, v73, buf, 0xCu);
                }
              }

              else if (IsBridge && ([v68 excludedContexts] & 2) != 0)
              {
                v70 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  v71 = [v68 identifier];
                  *buf = 138412290;
                  v164 = v71;
                  v72 = v70;
                  v73 = "Dropping category: %@ as it is not supported in bridge";
                  goto LABEL_118;
                }
              }

              else if (v130 & 1) == 0 && ([v68 capabilities])
              {
                v70 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  v71 = [v68 identifier];
                  *buf = 138412290;
                  v164 = v71;
                  v72 = v70;
                  v73 = "Dropping category: %@ as it requires NFC support";
                  goto LABEL_118;
                }
              }

              else if (IsMerchantApp && ([v68 excludedContexts] & 4) != 0)
              {
                v70 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  v71 = [v68 identifier];
                  *buf = 138412290;
                  v164 = v71;
                  v72 = v70;
                  v73 = "Dropping category: %@ as it is not supported in merchant apps";
                  goto LABEL_118;
                }
              }

              else
              {
                if (!v126 || ([v68 allowOnManagedAccount] & 1) != 0)
                {
                  v69 = 1;
                  goto LABEL_120;
                }

                v70 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  v71 = [v68 identifier];
                  *buf = 138412290;
                  v164 = v71;
                  v72 = v70;
                  v73 = "Dropping category: %@ as it is not supported on managed account";
                  goto LABEL_118;
                }
              }

              v69 = 0;
LABEL_120:
              v74 = [v68 productIdentifiers];
              v75 = [v63 productsForProductIdentifiers:v74];

              v76 = [v68 regions];
              v77 = [v76 mutableCopy];
              v78 = v77;
              if (v77)
              {
                v79 = v77;
              }

              else
              {
                v79 = objc_alloc_init(*(v64 + 4008));
              }

              v144 = 0u;
              v145 = 0u;
              v142 = 0u;
              v143 = 0u;
              v80 = v75;
              v81 = [v80 countByEnumeratingWithState:&v142 objects:v169 count:16];
              if (v81)
              {
                v82 = v81;
                v83 = *v143;
                do
                {
                  for (k = 0; k != v82; ++k)
                  {
                    if (*v143 != v83)
                    {
                      objc_enumerationMutation(v80);
                    }

                    v85 = [*(*(&v142 + 1) + 8 * k) regions];
                    if (v85)
                    {
                      [v79 unionSet:v85];
                    }
                  }

                  v82 = [v80 countByEnumeratingWithState:&v142 objects:v169 count:16];
                }

                while (v82);
              }

              if (v69)
              {
                if (![v79 count])
                {
                  goto LABEL_146;
                }

                v86 = [v68 identifier];
                if ([v86 isEqualToString:v123])
                {
                  v87 = 1;
                }

                else
                {
                  v88 = [v68 identifier];
                  v87 = [v88 isEqualToString:v121];
                }

                if (v124)
                {
                  v89 = [v79 containsObject:?];
                }

                else
                {
                  v89 = 0;
                }

                v90 = v87 ^ 1;
                if (!v125)
                {
                  v90 = 1;
                }

                v91 = (v90 & 1) != 0 ? 0 : [v79 containsObject:?];
                if (((v89 | v91) & 1) == 0)
                {
                  v92 = PKLogFacilityTypeGetObject();
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                  {
                    v99 = [v68 identifier];
                    *buf = 138412802;
                    v164 = v99;
                    v165 = 2112;
                    v166 = @"NO";
                    v167 = 2112;
                    v168 = @"NO";
                    _os_log_impl(&dword_1BD026000, v92, OS_LOG_TYPE_DEFAULT, "Dropping category: %@ as it was not in device region: %@ carrier region: %@", buf, 0x20u);
                  }
                }

                else
                {
LABEL_146:
                  v92 = objc_alloc_init(*(v64 + 4008));
                  v138 = 0u;
                  v139 = 0u;
                  v140 = 0u;
                  v141 = 0u;
                  v93 = v80;
                  v94 = [v93 countByEnumeratingWithState:&v138 objects:v162 count:16];
                  if (v94)
                  {
                    v95 = v94;
                    v96 = *v139;
                    do
                    {
                      for (m = 0; m != v95; ++m)
                      {
                        if (*v139 != v96)
                        {
                          objc_enumerationMutation(v93);
                        }

                        v98 = [*(*(&v138 + 1) + 8 * m) productIdentifier];
                        [v92 addObject:v98];
                      }

                      v95 = [v93 countByEnumeratingWithState:&v138 objects:v162 count:16];
                    }

                    while (v95);
                  }

                  [v68 setProductIdentifiers:v92];
                  if ([v92 count])
                  {
LABEL_154:

                    [v122 addObject:v68];
                    v64 = 0x1E695D000;
                    goto LABEL_166;
                  }

                  if ([v68 needsProducts])
                  {
                    v100 = PKLogFacilityTypeGetObject();
                    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                    {
                      v101 = [v68 identifier];
                      *buf = 138412290;
                      v164 = v101;
                      v102 = v100;
                      v103 = "Dropping category: %@ as it has no products that are supported";
                      goto LABEL_163;
                    }
                  }

                  else
                  {
                    if (v119 == 1)
                    {
                      goto LABEL_154;
                    }

                    v100 = PKLogFacilityTypeGetObject();
                    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                    {
                      v101 = [v68 identifier];
                      *buf = 138412290;
                      v164 = v101;
                      v102 = v100;
                      v103 = "Dropping category: %@ as it has no products and apple pay unsupported";
LABEL_163:
                      _os_log_impl(&dword_1BD026000, v102, OS_LOG_TYPE_DEFAULT, v103, buf, 0xCu);
                    }
                  }

                  v64 = 0x1E695D000;
                }
              }

LABEL_166:

              v63 = v133;
            }

            v137 = [v129 countByEnumeratingWithState:&v146 objects:v170 count:16];
          }

          while (v137);
        }

        if ([v122 count])
        {
          [v117 setCategories:v122];
          [v112 addObject:v117];
        }

        else
        {
          v104 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BD026000, v104, OS_LOG_TYPE_DEFAULT, "Dropping section all its categories have no products", buf, 2u);
          }
        }

        v65 = v118 + 1;
      }

      while (v118 + 1 != v115);
      v115 = [v110 countByEnumeratingWithState:&v150 objects:v171 count:16];
    }

    while (v115);
  }

  [v63 setAllSections:v112];
  v105 = v63;

  return v63;
}

- (uint64_t)_localCredentials:()PKUIUtilities containProduct:
{
  v5 = a3;
  v6 = [a4 configuration];
  v7 = [v6 productIdentifier];

  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__PKPaymentSetupProductModel_PKUIUtilities___localCredentials_containProduct___block_invoke;
    v10[3] = &unk_1E8021270;
    v11 = v7;
    v8 = [v5 pk_containsObjectPassingTest:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end