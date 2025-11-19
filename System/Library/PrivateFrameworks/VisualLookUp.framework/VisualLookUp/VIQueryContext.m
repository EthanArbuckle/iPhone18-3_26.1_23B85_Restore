@interface VIQueryContext
+ (VIQueryContext)contextWithDictionary:(id)a3 error:(id *)a4;
- (VIQueryContext)initWithQueryID:(unint64_t)a3 applicationIdentifier:(id)a4 uiScale:(double)a5 teamID:(id)a6 catalogIDs:(id)a7 frameTimestamp:(double)a8 lastSearchTimestamp:(double)a9 location:(id)a10 imageURL:(id)a11 referralURL:(id)a12 imageType:(int64_t)a13 featureIdentifier:(id)a14 engagementSuggestionType:(id)a15 locale:(id)a16 countryCode:(id)a17 preferredMetalDevice:(id)a18 includeLowConfidenceRegions:(BOOL)a19 customDetectorThreshold:(id)a20;
@end

@implementation VIQueryContext

- (VIQueryContext)initWithQueryID:(unint64_t)a3 applicationIdentifier:(id)a4 uiScale:(double)a5 teamID:(id)a6 catalogIDs:(id)a7 frameTimestamp:(double)a8 lastSearchTimestamp:(double)a9 location:(id)a10 imageURL:(id)a11 referralURL:(id)a12 imageType:(int64_t)a13 featureIdentifier:(id)a14 engagementSuggestionType:(id)a15 locale:(id)a16 countryCode:(id)a17 preferredMetalDevice:(id)a18 includeLowConfidenceRegions:(BOOL)a19 customDetectorThreshold:(id)a20
{
  v62 = a4;
  v27 = a6;
  v61 = a7;
  v64 = a10;
  v63 = a11;
  v28 = a12;
  v29 = a14;
  v30 = a15;
  v31 = a16;
  v32 = a17;
  v33 = v28;
  v34 = a18;
  v35 = a20;
  v65.receiver = self;
  v65.super_class = VIQueryContext;
  v36 = [(VIQueryContext *)&v65 init];
  v37 = v36;
  if (v36)
  {
    v36->_queryID = a3;
    v38 = [v62 copy];
    applicationIdentifier = v37->_applicationIdentifier;
    v37->_applicationIdentifier = v38;

    v37->_uiScale = a5;
    v40 = [v27 copy];
    teamID = v37->_teamID;
    v37->_teamID = v40;

    v42 = [v61 copy];
    catalogIDs = v37->_catalogIDs;
    v37->_catalogIDs = v42;

    v37->_frameTimestamp = a8;
    v37->_lastSearchTimestamp = a9;
    v44 = [v64 copy];
    location = v37->_location;
    v37->_location = v44;

    v46 = [v63 copy];
    imageURL = v37->_imageURL;
    v37->_imageURL = v46;

    v48 = [v33 copy];
    referralURL = v37->_referralURL;
    v37->_referralURL = v48;

    v37->_imageType = a13;
    v50 = [v29 copy];
    featureIdentifier = v37->_featureIdentifier;
    v37->_featureIdentifier = v50;

    v52 = [v30 copy];
    engagementSuggestionType = v37->_engagementSuggestionType;
    v37->_engagementSuggestionType = v52;

    v54 = [v31 copy];
    locale = v37->_locale;
    v37->_locale = v54;

    v56 = [v32 copy];
    countryCode = v37->_countryCode;
    v37->_countryCode = v56;

    objc_storeStrong(&v37->_preferredMetalDevice, a18);
    v37->_includeLowConfidenceRegions = a19;
    objc_storeStrong(&v37->_customDetectorThreshold, a20);
  }

  return v37;
}

+ (VIQueryContext)contextWithDictionary:(id)a3 error:(id *)a4
{
  v100 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.query_id"];

  if (!v6)
  {
    v9 = 0;
LABEL_6:
    v10 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.application_id"];

    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.application_id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.application_id"];

      if (v12)
      {
        v10 = [v12 copy];

LABEL_10:
        v13 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.uiScale"];

        if (v13)
        {
          v14 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.uiScale"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.uiScale"];

            if (v15)
            {
              [v15 doubleValue];
              v17 = v16;

              goto LABEL_22;
            }
          }

          else
          {
          }

          if (a4)
          {
            v51 = @"VIQueryContextUIScaleKey";
            v52 = @"NSNumber";
LABEL_64:
            *a4 = _VIQueryContextMapperError(v51, v52);
          }

LABEL_178:

          goto LABEL_179;
        }

        v17 = 0.0;
LABEL_22:
        v21 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.team_id"];

        if (!v21)
        {
          goto LABEL_26;
        }

        v22 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.team_id"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.team_id"];

          if (v23)
          {
            v21 = [v23 copy];

LABEL_26:
            v24 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.catalog_ids"];

            if (!v24)
            {
              goto LABEL_38;
            }

            v25 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.catalog_ids"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.catalog_ids"];

              if (v26)
              {
                v94 = v21;
                v97 = 0u;
                v98 = 0u;
                v95 = 0u;
                v96 = 0u;
                v27 = v26;
                v28 = [v27 countByEnumeratingWithState:&v95 objects:v99 count:16];
                if (v28)
                {
                  v29 = v28;
                  v30 = *v96;
                  while (2)
                  {
                    for (i = 0; i != v29; ++i)
                    {
                      if (*v96 != v30)
                      {
                        objc_enumerationMutation(v27);
                      }

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (a4)
                        {
                          *a4 = _VIQueryContextMapperError(@"VIQueryContextCatalogIDsKey", @"NSArray<NSString *>");
                        }

                        v21 = v94;
                        goto LABEL_177;
                      }
                    }

                    v29 = [v27 countByEnumeratingWithState:&v95 objects:v99 count:16];
                    if (v29)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v24 = [v27 copy];
                v21 = v94;
LABEL_38:
                v32 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.frame_timestamp"];

                v33 = 0.0;
                v34 = 0.0;
                if (v32)
                {
                  v35 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.frame_timestamp"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v36 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.frame_timestamp"];

                    if (v36)
                    {
                      [v36 doubleValue];
                      v34 = v37;

                      goto LABEL_42;
                    }
                  }

                  else
                  {
                  }

                  if (!a4)
                  {
                    goto LABEL_176;
                  }

                  v53 = @"VIQueryContextFrameTimestampKey";
                  goto LABEL_77;
                }

LABEL_42:
                v38 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.last_search_timestamp"];

                if (!v38)
                {
                  goto LABEL_46;
                }

                v39 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.last_search_timestamp"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v40 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.last_search_timestamp"];

                  if (v40)
                  {
                    [v40 doubleValue];
                    v33 = v41;

LABEL_46:
                    v42 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.location"];

                    if (!v42)
                    {
                      goto LABEL_50;
                    }

                    v43 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.location"];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v44 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.location"];

                      if (v44)
                      {
                        v42 = [v44 copy];

LABEL_50:
                        v45 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.image_url"];

                        if (!v45)
                        {
                          goto LABEL_54;
                        }

                        v46 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.image_url"];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v47 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.image_url"];

                          if (v47)
                          {
                            v45 = [v47 copy];

LABEL_54:
                            v48 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.referral_url"];

                            if (v48)
                            {
                              v49 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.referral_url"];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v50 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.referral_url"];

                                if (v50)
                                {
                                  v93 = [v50 copy];

                                  goto LABEL_86;
                                }
                              }

                              else
                              {
                              }

                              if (a4)
                              {
                                *a4 = _VIQueryContextMapperError(@"VIQueryContextReferralURLKey", @"NSURL");
                              }

                              goto LABEL_174;
                            }

                            v93 = 0;
LABEL_86:
                            v55 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.image_type"];

                            if (v55)
                            {
                              v56 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.image_type"];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v57 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.image_type"];

                                if (v57 && ([v57 intValue] & 0x80000000) == 0 && objc_msgSend(v57, "intValue") < 6)
                                {
                                  v91 = [v57 intValue];

                                  goto LABEL_96;
                                }
                              }

                              else
                              {

                                v57 = 0;
                              }

                              if (a4)
                              {
                                *a4 = _VIQueryContextMapperError(@"VIQueryContextImageTypeKey", @"NSNumber(VIQueryContextImageType)");
                              }

                              goto LABEL_173;
                            }

                            v91 = 0;
LABEL_96:
                            v58 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.feature_identifier"];

                            if (v58)
                            {
                              v59 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.feature_identifier"];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v60 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.feature_identifier"];

                                if (v60)
                                {
                                  v92 = [v60 copy];

                                  goto LABEL_105;
                                }
                              }

                              else
                              {
                              }

                              if (a4)
                              {
                                *a4 = _VIQueryContextMapperError(@"VIQueryContextFeatureIdentifierKey", @"NSString");
                              }

                              goto LABEL_173;
                            }

                            v92 = 0;
LABEL_105:
                            v61 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.engagement_suggestion_type"];

                            if (v61)
                            {
                              v62 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.engagement_suggestion_type"];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v63 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.engagement_suggestion_type"];

                                if (v63)
                                {
                                  v90 = [v63 copy];

                                  goto LABEL_113;
                                }
                              }

                              else
                              {
                              }

                              if (a4)
                              {
                                *a4 = _VIQueryContextMapperError(@"VIAEngagementSuggesionTypeKey", @"VISuggestionType");
                              }

                              goto LABEL_172;
                            }

                            v90 = 0;
LABEL_113:
                            v64 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.preferred_metal_device"];

                            if (v64)
                            {
                              v65 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.preferred_metal_device"];
                              if (([v65 conformsToProtocol:&unk_1F5557BC0] & 1) == 0)
                              {

                                goto LABEL_126;
                              }

                              v66 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.preferred_metal_device"];

                              v89 = v66;
                              if (!v66)
                              {
LABEL_126:
                                if (a4)
                                {
                                  *a4 = _VIQueryContextMapperError(@"VIQueryContextPreferredMetalDeviceKey", @"MTLDevice");
                                }

                                goto LABEL_171;
                              }
                            }

                            else
                            {
                              v89 = 0;
                            }

                            v67 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.include_low_confidence_region"];

                            if (v67)
                            {
                              v68 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.include_low_confidence_region"];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v69 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.include_low_confidence_region"];

                                if (v69)
                                {
                                  v88 = [v69 BOOLValue];

                                  goto LABEL_129;
                                }
                              }

                              else
                              {
                              }

                              if (a4)
                              {
                                *a4 = _VIQueryContextMapperError(@"_VIQueryContextIncludeLowConfidenceRegionKey", @"NSNumber");
                              }

                              goto LABEL_170;
                            }

                            v88 = 0;
LABEL_129:
                            v70 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.locale"];

                            if (!v70)
                            {
                              v87 = 0;
LABEL_139:
                              v73 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.country_code"];

                              if (!v73)
                              {
                                v86 = 0;
                                goto LABEL_149;
                              }

                              v74 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.country_code"];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v75 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.country_code"];

                                if (v75)
                                {
                                  if ([v75 length] == 2)
                                  {
                                    v86 = [v75 copy];

LABEL_149:
                                    v77 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.custom_detector_thresholds"];

                                    if (!v77)
                                    {
                                      v80 = 0;
                                      goto LABEL_162;
                                    }

                                    v78 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.custom_detector_thresholds"];
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v79 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.custom_detector_thresholds"];

                                      if (v79)
                                      {
                                        v80 = [v79 copy];

LABEL_162:
                                        v85 = [VIQueryContext alloc];
                                        v82 = _VITeamIDToUse(v21, v24, v10);
                                        LOBYTE(v84) = v88;
                                        v20 = [(VIQueryContext *)v85 initWithQueryID:v9 applicationIdentifier:v10 uiScale:v82 teamID:v24 catalogIDs:v42 frameTimestamp:v45 lastSearchTimestamp:v17 location:v34 imageURL:v33 referralURL:v93 imageType:v91 featureIdentifier:v92 engagementSuggestionType:v90 locale:v87 countryCode:v86 preferredMetalDevice:v89 includeLowConfidenceRegions:v84 customDetectorThreshold:v80];

                                        goto LABEL_180;
                                      }
                                    }

                                    else
                                    {
                                    }

                                    if (a4)
                                    {
                                      *a4 = _VIQueryContextMapperError(@"VIQueryContextCustomDetectorThresholds", @"NSDictionary");
                                    }

                                    goto LABEL_169;
                                  }

                                  if (!a4)
                                  {
LABEL_164:

LABEL_169:
                                    goto LABEL_170;
                                  }

                                  v81 = _VIQueryContextMapperStringValueParseError(@"VIQueryContextCountryCodeKey");
LABEL_160:
                                  *a4 = v81;
                                  goto LABEL_164;
                                }
                              }

                              else
                              {
                              }

                              if (!a4)
                              {
                                v75 = 0;
                                goto LABEL_164;
                              }

                              v81 = _VIQueryContextMapperError(@"VIQueryContextCountryCodeKey", @"NSString");
                              v75 = 0;
                              goto LABEL_160;
                            }

                            v71 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.locale"];
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v72 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.locale"];

                              if (v72)
                              {
                                if ([v72 length] == 5 && objc_msgSend(v72, "characterAtIndex:", 2) == 95)
                                {
                                  v87 = [v72 copy];

                                  goto LABEL_139;
                                }

                                if (a4)
                                {
                                  v76 = _VIQueryContextMapperStringValueParseError(@"VIQueryContextLocaleKey");
                                  goto LABEL_155;
                                }

                                goto LABEL_156;
                              }
                            }

                            else
                            {
                            }

                            if (a4)
                            {
                              v76 = _VIQueryContextMapperError(@"VIQueryContextLocaleKey", @"NSString");
                              v72 = 0;
LABEL_155:
                              *a4 = v76;
                              goto LABEL_156;
                            }

                            v72 = 0;
LABEL_156:

LABEL_170:
LABEL_171:

LABEL_172:
LABEL_173:

LABEL_174:
LABEL_175:

                            goto LABEL_176;
                          }
                        }

                        else
                        {
                        }

                        if (a4)
                        {
                          *a4 = _VIQueryContextMapperError(@"VIQueryContextImageURLKey", @"NSURL");
                        }

                        goto LABEL_175;
                      }
                    }

                    else
                    {
                    }

                    if (a4)
                    {
                      v53 = @"VIQueryContextLocationKey";
                      v54 = @"CLLocation";
                      goto LABEL_78;
                    }

LABEL_176:

LABEL_177:
                    goto LABEL_178;
                  }
                }

                else
                {
                }

                if (!a4)
                {
                  goto LABEL_176;
                }

                v53 = @"VIQueryContextLastSearchTimestampKey";
LABEL_77:
                v54 = @"NSNumber";
LABEL_78:
                *a4 = _VIQueryContextMapperError(v53, v54);
                goto LABEL_176;
              }
            }

            else
            {
            }

            if (a4)
            {
              *a4 = _VIQueryContextMapperError(@"VIQueryContextCatalogIDsKey", @"NSArray<NSString *>");
            }

            goto LABEL_177;
          }
        }

        else
        {
        }

        if (a4)
        {
          v51 = @"VIQueryContextTeamIDKey";
          v52 = @"NSString";
          goto LABEL_64;
        }

        goto LABEL_178;
      }
    }

    else
    {
    }

    if (a4)
    {
      v18 = @"VIQueryContextApplicationIdentifierKey";
      v19 = @"NSString";
      goto LABEL_20;
    }

    goto LABEL_179;
  }

  v7 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.query_id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v5 objectForKeyedSubscript:@"com.apple.argos.query_context_key.query_id"];

    if (v8)
    {
      v9 = [v8 unsignedLongLongValue];

      goto LABEL_6;
    }
  }

  else
  {
  }

  if (a4)
  {
    v18 = @"VIQueryContextQueryIDKey";
    v19 = @"NSNumber";
LABEL_20:
    _VIQueryContextMapperError(v18, v19);
    *a4 = v20 = 0;
    goto LABEL_180;
  }

LABEL_179:
  v20 = 0;
LABEL_180:

  return v20;
}

@end