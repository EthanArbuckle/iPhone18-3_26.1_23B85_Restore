@interface VIQueryContext
+ (VIQueryContext)contextWithDictionary:(id)dictionary error:(id *)error;
- (VIQueryContext)initWithQueryID:(unint64_t)d applicationIdentifier:(id)identifier uiScale:(double)scale teamID:(id)iD catalogIDs:(id)ds frameTimestamp:(double)timestamp lastSearchTimestamp:(double)searchTimestamp location:(id)self0 imageURL:(id)self1 referralURL:(id)self2 imageType:(int64_t)self3 featureIdentifier:(id)self4 engagementSuggestionType:(id)self5 locale:(id)self6 countryCode:(id)self7 preferredMetalDevice:(id)self8 includeLowConfidenceRegions:(BOOL)self9 customDetectorThreshold:(id)threshold;
@end

@implementation VIQueryContext

- (VIQueryContext)initWithQueryID:(unint64_t)d applicationIdentifier:(id)identifier uiScale:(double)scale teamID:(id)iD catalogIDs:(id)ds frameTimestamp:(double)timestamp lastSearchTimestamp:(double)searchTimestamp location:(id)self0 imageURL:(id)self1 referralURL:(id)self2 imageType:(int64_t)self3 featureIdentifier:(id)self4 engagementSuggestionType:(id)self5 locale:(id)self6 countryCode:(id)self7 preferredMetalDevice:(id)self8 includeLowConfidenceRegions:(BOOL)self9 customDetectorThreshold:(id)threshold
{
  identifierCopy = identifier;
  iDCopy = iD;
  dsCopy = ds;
  locationCopy = location;
  lCopy = l;
  rLCopy = rL;
  featureIdentifierCopy = featureIdentifier;
  suggestionTypeCopy = suggestionType;
  localeCopy = locale;
  codeCopy = code;
  v33 = rLCopy;
  deviceCopy = device;
  thresholdCopy = threshold;
  v65.receiver = self;
  v65.super_class = VIQueryContext;
  v36 = [(VIQueryContext *)&v65 init];
  v37 = v36;
  if (v36)
  {
    v36->_queryID = d;
    v38 = [identifierCopy copy];
    applicationIdentifier = v37->_applicationIdentifier;
    v37->_applicationIdentifier = v38;

    v37->_uiScale = scale;
    v40 = [iDCopy copy];
    teamID = v37->_teamID;
    v37->_teamID = v40;

    v42 = [dsCopy copy];
    catalogIDs = v37->_catalogIDs;
    v37->_catalogIDs = v42;

    v37->_frameTimestamp = timestamp;
    v37->_lastSearchTimestamp = searchTimestamp;
    v44 = [locationCopy copy];
    location = v37->_location;
    v37->_location = v44;

    v46 = [lCopy copy];
    imageURL = v37->_imageURL;
    v37->_imageURL = v46;

    v48 = [v33 copy];
    referralURL = v37->_referralURL;
    v37->_referralURL = v48;

    v37->_imageType = type;
    v50 = [featureIdentifierCopy copy];
    featureIdentifier = v37->_featureIdentifier;
    v37->_featureIdentifier = v50;

    v52 = [suggestionTypeCopy copy];
    engagementSuggestionType = v37->_engagementSuggestionType;
    v37->_engagementSuggestionType = v52;

    v54 = [localeCopy copy];
    locale = v37->_locale;
    v37->_locale = v54;

    v56 = [codeCopy copy];
    countryCode = v37->_countryCode;
    v37->_countryCode = v56;

    objc_storeStrong(&v37->_preferredMetalDevice, device);
    v37->_includeLowConfidenceRegions = regions;
    objc_storeStrong(&v37->_customDetectorThreshold, threshold);
  }

  return v37;
}

+ (VIQueryContext)contextWithDictionary:(id)dictionary error:(id *)error
{
  v100 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.query_id"];

  if (!v6)
  {
    unsignedLongLongValue = 0;
LABEL_6:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.application_id"];

    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.application_id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.application_id"];

      if (v12)
      {
        v10 = [v12 copy];

LABEL_10:
        v13 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.uiScale"];

        if (v13)
        {
          v14 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.uiScale"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.uiScale"];

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

          if (error)
          {
            v51 = @"VIQueryContextUIScaleKey";
            v52 = @"NSNumber";
LABEL_64:
            *error = _VIQueryContextMapperError(v51, v52);
          }

LABEL_178:

          goto LABEL_179;
        }

        v17 = 0.0;
LABEL_22:
        v21 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.team_id"];

        if (!v21)
        {
          goto LABEL_26;
        }

        v22 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.team_id"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.team_id"];

          if (v23)
          {
            v21 = [v23 copy];

LABEL_26:
            v24 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.catalog_ids"];

            if (!v24)
            {
              goto LABEL_38;
            }

            v25 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.catalog_ids"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.catalog_ids"];

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
                        if (error)
                        {
                          *error = _VIQueryContextMapperError(@"VIQueryContextCatalogIDsKey", @"NSArray<NSString *>");
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
                v32 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.frame_timestamp"];

                v33 = 0.0;
                v34 = 0.0;
                if (v32)
                {
                  v35 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.frame_timestamp"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v36 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.frame_timestamp"];

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

                  if (!error)
                  {
                    goto LABEL_176;
                  }

                  v53 = @"VIQueryContextFrameTimestampKey";
                  goto LABEL_77;
                }

LABEL_42:
                v38 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.last_search_timestamp"];

                if (!v38)
                {
                  goto LABEL_46;
                }

                v39 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.last_search_timestamp"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v40 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.last_search_timestamp"];

                  if (v40)
                  {
                    [v40 doubleValue];
                    v33 = v41;

LABEL_46:
                    v42 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.location"];

                    if (!v42)
                    {
                      goto LABEL_50;
                    }

                    v43 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.location"];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v44 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.location"];

                      if (v44)
                      {
                        v42 = [v44 copy];

LABEL_50:
                        v45 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.image_url"];

                        if (!v45)
                        {
                          goto LABEL_54;
                        }

                        v46 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.image_url"];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v47 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.image_url"];

                          if (v47)
                          {
                            v45 = [v47 copy];

LABEL_54:
                            v48 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.referral_url"];

                            if (v48)
                            {
                              v49 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.referral_url"];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v50 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.referral_url"];

                                if (v50)
                                {
                                  v93 = [v50 copy];

                                  goto LABEL_86;
                                }
                              }

                              else
                              {
                              }

                              if (error)
                              {
                                *error = _VIQueryContextMapperError(@"VIQueryContextReferralURLKey", @"NSURL");
                              }

                              goto LABEL_174;
                            }

                            v93 = 0;
LABEL_86:
                            v55 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.image_type"];

                            if (v55)
                            {
                              v56 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.image_type"];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v57 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.image_type"];

                                if (v57 && ([v57 intValue] & 0x80000000) == 0 && objc_msgSend(v57, "intValue") < 6)
                                {
                                  intValue = [v57 intValue];

                                  goto LABEL_96;
                                }
                              }

                              else
                              {

                                v57 = 0;
                              }

                              if (error)
                              {
                                *error = _VIQueryContextMapperError(@"VIQueryContextImageTypeKey", @"NSNumber(VIQueryContextImageType)");
                              }

                              goto LABEL_173;
                            }

                            intValue = 0;
LABEL_96:
                            v58 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.feature_identifier"];

                            if (v58)
                            {
                              v59 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.feature_identifier"];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v60 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.feature_identifier"];

                                if (v60)
                                {
                                  v92 = [v60 copy];

                                  goto LABEL_105;
                                }
                              }

                              else
                              {
                              }

                              if (error)
                              {
                                *error = _VIQueryContextMapperError(@"VIQueryContextFeatureIdentifierKey", @"NSString");
                              }

                              goto LABEL_173;
                            }

                            v92 = 0;
LABEL_105:
                            v61 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.engagement_suggestion_type"];

                            if (v61)
                            {
                              v62 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.engagement_suggestion_type"];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v63 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.engagement_suggestion_type"];

                                if (v63)
                                {
                                  v90 = [v63 copy];

                                  goto LABEL_113;
                                }
                              }

                              else
                              {
                              }

                              if (error)
                              {
                                *error = _VIQueryContextMapperError(@"VIAEngagementSuggesionTypeKey", @"VISuggestionType");
                              }

                              goto LABEL_172;
                            }

                            v90 = 0;
LABEL_113:
                            v64 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.preferred_metal_device"];

                            if (v64)
                            {
                              v65 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.preferred_metal_device"];
                              if (([v65 conformsToProtocol:&unk_1F5557BC0] & 1) == 0)
                              {

                                goto LABEL_126;
                              }

                              v66 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.preferred_metal_device"];

                              v89 = v66;
                              if (!v66)
                              {
LABEL_126:
                                if (error)
                                {
                                  *error = _VIQueryContextMapperError(@"VIQueryContextPreferredMetalDeviceKey", @"MTLDevice");
                                }

                                goto LABEL_171;
                              }
                            }

                            else
                            {
                              v89 = 0;
                            }

                            v67 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.include_low_confidence_region"];

                            if (v67)
                            {
                              v68 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.include_low_confidence_region"];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v69 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.include_low_confidence_region"];

                                if (v69)
                                {
                                  bOOLValue = [v69 BOOLValue];

                                  goto LABEL_129;
                                }
                              }

                              else
                              {
                              }

                              if (error)
                              {
                                *error = _VIQueryContextMapperError(@"_VIQueryContextIncludeLowConfidenceRegionKey", @"NSNumber");
                              }

                              goto LABEL_170;
                            }

                            bOOLValue = 0;
LABEL_129:
                            v70 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.locale"];

                            if (!v70)
                            {
                              v87 = 0;
LABEL_139:
                              v73 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.country_code"];

                              if (!v73)
                              {
                                v86 = 0;
                                goto LABEL_149;
                              }

                              v74 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.country_code"];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v75 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.country_code"];

                                if (v75)
                                {
                                  if ([v75 length] == 2)
                                  {
                                    v86 = [v75 copy];

LABEL_149:
                                    v77 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.custom_detector_thresholds"];

                                    if (!v77)
                                    {
                                      v80 = 0;
                                      goto LABEL_162;
                                    }

                                    v78 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.custom_detector_thresholds"];
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v79 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.custom_detector_thresholds"];

                                      if (v79)
                                      {
                                        v80 = [v79 copy];

LABEL_162:
                                        v85 = [VIQueryContext alloc];
                                        v82 = _VITeamIDToUse(v21, v24, v10);
                                        LOBYTE(v84) = bOOLValue;
                                        v20 = [(VIQueryContext *)v85 initWithQueryID:unsignedLongLongValue applicationIdentifier:v10 uiScale:v82 teamID:v24 catalogIDs:v42 frameTimestamp:v45 lastSearchTimestamp:v17 location:v34 imageURL:v33 referralURL:v93 imageType:intValue featureIdentifier:v92 engagementSuggestionType:v90 locale:v87 countryCode:v86 preferredMetalDevice:v89 includeLowConfidenceRegions:v84 customDetectorThreshold:v80];

                                        goto LABEL_180;
                                      }
                                    }

                                    else
                                    {
                                    }

                                    if (error)
                                    {
                                      *error = _VIQueryContextMapperError(@"VIQueryContextCustomDetectorThresholds", @"NSDictionary");
                                    }

                                    goto LABEL_169;
                                  }

                                  if (!error)
                                  {
LABEL_164:

LABEL_169:
                                    goto LABEL_170;
                                  }

                                  v81 = _VIQueryContextMapperStringValueParseError(@"VIQueryContextCountryCodeKey");
LABEL_160:
                                  *error = v81;
                                  goto LABEL_164;
                                }
                              }

                              else
                              {
                              }

                              if (!error)
                              {
                                v75 = 0;
                                goto LABEL_164;
                              }

                              v81 = _VIQueryContextMapperError(@"VIQueryContextCountryCodeKey", @"NSString");
                              v75 = 0;
                              goto LABEL_160;
                            }

                            v71 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.locale"];
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v72 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.locale"];

                              if (v72)
                              {
                                if ([v72 length] == 5 && objc_msgSend(v72, "characterAtIndex:", 2) == 95)
                                {
                                  v87 = [v72 copy];

                                  goto LABEL_139;
                                }

                                if (error)
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

                            if (error)
                            {
                              v76 = _VIQueryContextMapperError(@"VIQueryContextLocaleKey", @"NSString");
                              v72 = 0;
LABEL_155:
                              *error = v76;
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

                        if (error)
                        {
                          *error = _VIQueryContextMapperError(@"VIQueryContextImageURLKey", @"NSURL");
                        }

                        goto LABEL_175;
                      }
                    }

                    else
                    {
                    }

                    if (error)
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

                if (!error)
                {
                  goto LABEL_176;
                }

                v53 = @"VIQueryContextLastSearchTimestampKey";
LABEL_77:
                v54 = @"NSNumber";
LABEL_78:
                *error = _VIQueryContextMapperError(v53, v54);
                goto LABEL_176;
              }
            }

            else
            {
            }

            if (error)
            {
              *error = _VIQueryContextMapperError(@"VIQueryContextCatalogIDsKey", @"NSArray<NSString *>");
            }

            goto LABEL_177;
          }
        }

        else
        {
        }

        if (error)
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

    if (error)
    {
      v18 = @"VIQueryContextApplicationIdentifierKey";
      v19 = @"NSString";
      goto LABEL_20;
    }

    goto LABEL_179;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.query_id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.query_context_key.query_id"];

    if (v8)
    {
      unsignedLongLongValue = [v8 unsignedLongLongValue];

      goto LABEL_6;
    }
  }

  else
  {
  }

  if (error)
  {
    v18 = @"VIQueryContextQueryIDKey";
    v19 = @"NSNumber";
LABEL_20:
    _VIQueryContextMapperError(v18, v19);
    *error = v20 = 0;
    goto LABEL_180;
  }

LABEL_179:
  v20 = 0;
LABEL_180:

  return v20;
}

@end