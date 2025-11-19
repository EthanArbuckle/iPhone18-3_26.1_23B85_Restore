@interface MOTemplateBasedContextBuilder
- (MOTemplateBasedContextBuilder)initWithTemplateStore:(id)a3 ConfigurationManager:(id)a4;
- (double)_computeTemplateScore:(id)a3 withBundleContent:(id)a4;
- (double)_getMostRecentTemplateVersion;
- (id)_createContextStringFromTemplate:(id)a3 withBundleContent:(id)a4;
- (id)_filterTemplates:(id)a3;
- (id)_readTemplatesToRemovePlistFile:(id)a3;
- (id)musicMetaDataWithArtistSongForBundleContent:(id)a3;
- (id)musicMetaDataWithMoodForBundleContent:(id)a3;
- (void)_findTemplatesForBundleContent:(id)a3 withHandler:(id)a4;
- (void)_generateContextStringsBasedOnNewTemplateFromBundleContents:(id)a3 WithHandler:(id)a4;
- (void)_generateContextStringsFromBundleContents:(id)a3 WithHandler:(id)a4;
- (void)_generateContextStringsFromTemplateWithBundleContent:(id)a3 withHandler:(id)a4;
- (void)generateContextStringsFromBundleContents:(id)a3 WithHandler:(id)a4;
@end

@implementation MOTemplateBasedContextBuilder

- (MOTemplateBasedContextBuilder)initWithTemplateStore:(id)a3 ConfigurationManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = MOTemplateBasedContextBuilder;
  v9 = [(MOTemplateBasedContextBuilder *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_templateStore, a3);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("MOTemplateBasedContextBuilder", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    objc_storeStrong(&v10->_configurationManager, a4);
    v14 = [NSArray arrayWithObjects:@", with dreamy music", @", with a dreamy song", @", with sentimental music", @", with a sentimental song", @", with chill music", @", with a chill song", @", with happy music", @", with a happy song", 0];
    musicMoodsForRelaxingEvents = v10->_musicMoodsForRelaxingEvents;
    v10->_musicMoodsForRelaxingEvents = v14;

    v16 = [NSArray arrayWithObjects:@", with happy music", @", with a happy song", @", with uplifting music", @", with an uplifting song", @", with epic music", @", with an epic song", 0];
    musicMoodsForUpbeatEvents = v10->_musicMoodsForUpbeatEvents;
    v10->_musicMoodsForUpbeatEvents = v16;

    v18 = [NSArray arrayWithObjects:@", with chill music", @", with a chill song", @", with happy music", @", with a happy song", @", with uplifting music", @", with an uplifting song", 0];
    musicMoodsForGeneralEvents = v10->_musicMoodsForGeneralEvents;
    v10->_musicMoodsForGeneralEvents = v18;

    v20 = +[MOBundleContentExtractor insignificantPlaceTypes];
    insignificantPlaceTypes = v10->_insignificantPlaceTypes;
    v10->_insignificantPlaceTypes = v20;
  }

  return v10;
}

- (void)_generateContextStringsFromTemplateWithBundleContent:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __98__MOTemplateBasedContextBuilder__generateContextStringsFromTemplateWithBundleContent_withHandler___block_invoke;
  v11[3] = &unk_1000B5330;
  v12 = v6;
  v13 = self;
  v14 = objc_opt_new();
  v15 = v7;
  v8 = v14;
  v9 = v7;
  v10 = v6;
  [(MOTemplateBasedContextBuilder *)self _findTemplatesForBundleContent:v10 withHandler:v11];
}

void __98__MOTemplateBasedContextBuilder__generateContextStringsFromTemplateWithBundleContent_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v56 = v6;
    v57 = v5;
    v7 = [*(a1 + 40) _filterTemplates:v5];
    v8 = objc_alloc_init(NSMutableDictionary);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v81 objects:v128 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v82;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v82 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v81 + 1) + 8 * i);
          [*(a1 + 40) _computeTemplateScore:v14 withBundleContent:*(a1 + 32)];
          v16 = v15;
          [v14 setTotalScore:?];
          v17 = [NSNumber numberWithDouble:v16];
          [v8 setObject:v17 forKey:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v81 objects:v128 count:16];
      }

      while (v11);
    }

    v18 = [v8 keysSortedByValueUsingComparator:&__block_literal_global_4];
    v19 = [*(a1 + 32) bundleType];
    v20 = [v18 count];
    v21 = 5;
    if (v20 < 5)
    {
      v21 = v20;
    }

    if (v19 == 6)
    {
      v22 = v20 != 0;
    }

    else
    {
      v22 = v21;
    }

    v53 = v18;
    v23 = [v18 subarrayWithRange:{0, v22}];
    v24 = objc_opt_new();
    v58 = objc_opt_new();
    if ([v23 count] && objc_msgSend(v23, "count"))
    {
      v25 = 0;
      do
      {
        v26 = [v23 objectAtIndexedSubscript:v25];
        v27 = [v26 templateString];
        v28 = [v58 containsObject:v27];

        if ((v28 & 1) == 0)
        {
          v29 = [v23 objectAtIndexedSubscript:v25];
          [v24 addObject:v29];

          v30 = [v23 objectAtIndexedSubscript:v25];
          v31 = [v30 templateString];
          [v58 addObject:v31];
        }

        ++v25;
      }

      while ([v23 count] > v25);
    }

    v52 = v23;
    v54 = v8;
    v55 = v9;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v24;
    v76 = [obj countByEnumeratingWithState:&v77 objects:v127 count:16];
    if (v76)
    {
      v32 = *v78;
      v33 = &MOLogFacilityPersonalizedSensing;
      v59 = *v78;
      do
      {
        for (j = 0; j != v76; j = j + 1)
        {
          if (*v78 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v77 + 1) + 8 * j);
          v36 = _mo_log_facility_get_os_log(v33);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = [*(a1 + 32) associatedBundleID];
            v38 = [*(a1 + 32) suggestionLabel];
            v75 = [*(a1 + 32) activityType];
            v39 = [*(a1 + 32) placeType];
            v74 = [*(a1 + 32) bundleType];
            v73 = [*(a1 + 32) time];
            v72 = [*(a1 + 32) peopleClassification];
            v71 = [*(a1 + 32) photoTrait];
            v70 = [*(a1 + 32) hasPersonName];
            v69 = [*(a1 + 32) hasTimeReference];
            v68 = [*(a1 + 32) patternType];
            v67 = [v35 templateString];
            v66 = [v35 activityType];
            v65 = [v35 placeType];
            v64 = [v35 bundleType];
            v63 = [v35 time];
            v62 = [v35 peopleClassification];
            v61 = [v35 photoTrait];
            v40 = [v35 hasPersonName];
            v41 = v33;
            v42 = [v35 hasTimeReference];
            v43 = [v35 patternType];
            *buf = 138417410;
            v86 = v37;
            v87 = 2112;
            v88 = v38;
            v89 = 2048;
            v90 = v75;
            v91 = 2048;
            v92 = v39;
            v93 = 2048;
            v94 = v74;
            v95 = 2048;
            v96 = v73;
            v97 = 2048;
            v98 = v72;
            v99 = 2048;
            v100 = v71;
            v101 = 1024;
            v102 = v70;
            v103 = 1024;
            v104 = v69;
            v105 = 2048;
            v106 = v68;
            v107 = 2112;
            v108 = v67;
            v109 = 2048;
            v110 = v66;
            v111 = 2048;
            v112 = v65;
            v113 = 2048;
            v114 = v64;
            v115 = 2048;
            v116 = v63;
            v117 = 2048;
            v118 = v62;
            v119 = 2048;
            v120 = v61;
            v121 = 1024;
            v122 = v40;
            v32 = v59;
            v123 = 1024;
            v124 = v42;
            v33 = v41;
            v125 = 2048;
            v126 = v43;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "template found for this bundle content with bundle ID: %@, suggestion label: %@, activityType: %ld, placeType: %ld, bundleType: %ld, time: %ld, peopleClassification, %ld, photoTrait, %ld, hasPerson, %d, hasTimeReference %d, patternType %ld, matching template string: %@, with activityType: %ld, placeType: %ld, bundleType: %ld, time: %ld, peopleClassification, %ld, photoTrait, %ld, hasPerson, %d, hasTimeReference %d, patternType, %ld", buf, 0xC4u);
          }

          v44 = [*(a1 + 40) _createContextStringFromTemplate:v35 withBundleContent:*(a1 + 32)];
          if (v44)
          {
            [*(a1 + 48) addObject:v44];
          }
        }

        v76 = [obj countByEnumeratingWithState:&v77 objects:v127 count:16];
      }

      while (v76);
    }

    v46 = *(a1 + 48);
    v45 = *(a1 + 56);
    v6 = v56;
    if ([v46 count])
    {
      v47 = 0;
    }

    else
    {
      v47 = v56;
    }

    (*(v45 + 16))(v45, v46, v47);

    v5 = v57;
    v48 = v55;
  }

  else
  {
    v49 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      __98__MOTemplateBasedContextBuilder__generateContextStringsFromTemplateWithBundleContent_withHandler___block_invoke_cold_1(a1, v49);
    }

    v129 = NSLocalizedDescriptionKey;
    v130 = @"No matching template is found";
    v50 = [NSDictionary dictionaryWithObjects:&v130 forKeys:&v129 count:1];
    v51 = [NSError errorWithDomain:@"MOContextErrorDomain" code:1544 userInfo:v50];
    v48 = [NSError errorUsingError:v51 withUnderyingError:v6];

    (*(*(a1 + 56) + 16))();
  }
}

- (void)_findTemplatesForBundleContent:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MOTemplateBasedContextBuilder *)self templateStore];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __76__MOTemplateBasedContextBuilder__findTemplatesForBundleContent_withHandler___block_invoke;
  v10[3] = &unk_1000B5358;
  v11 = v6;
  v9 = v6;
  [v8 fetchTemplatesWithBundleContent:v7 handler:v10];
}

- (id)_createContextStringFromTemplate:(id)a3 withBundleContent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MOContextString alloc];
  v8 = +[NSUUID UUID];
  v9 = [v5 templateString];
  v10 = [(MOContextString *)v7 initWithIdentifier:v8 string:v9];

  [(MOContextString *)v10 setSource:2];
  [v5 accuracy];
  [(MOContextString *)v10 setAccuracy:?];
  [v5 satisfaction];
  [(MOContextString *)v10 setSatisfaction:?];
  -[MOContextString setPromptIndex:](v10, "setPromptIndex:", [v5 promptIndex]);
  [v5 totalScore];
  [(MOContextString *)v10 setTotalScore:?];
  v11 = objc_opt_new();
  v12 = [v5 globalTraits];
  v13 = [v12 count];

  if (v13)
  {
    v25 = v5;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = [v5 globalTraits];
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          v20 = [MOContextDimension alloc];
          v21 = [v19 title];
          v22 = [(MOContextDimension *)v20 initWithName:v21];

          v23 = [v19 queries];
          [(MOContextDimension *)v22 setQueries:v23];

          if (v22)
          {
            [v11 addObject:v22];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    v5 = v25;
  }

  if ([v11 count])
  {
    [(MOContextString *)v10 setContextDimensions:v11];
  }

  if ([v5 photoTrait])
  {
    [(MOContextString *)v10 setContentType:[(MOContextString *)v10 contentType]| 0x100];
  }

  if ([v5 hasPersonName])
  {
    [(MOContextString *)v10 setContentType:[(MOContextString *)v10 contentType]| 1];
  }

  if ([v5 peopleClassification])
  {
    [(MOContextString *)v10 setContentType:[(MOContextString *)v10 contentType]| 2];
    if ([v5 peopleClassification] == 1)
    {
      [(MOContextString *)v10 setContentType:[(MOContextString *)v10 contentType]| 0x200];
    }

    if ([v5 peopleClassification] == 2)
    {
      [(MOContextString *)v10 setContentType:[(MOContextString *)v10 contentType]| 0x400];
    }

    if ([v5 peopleClassification] == 3)
    {
      [(MOContextString *)v10 setContentType:[(MOContextString *)v10 contentType]| 0x800];
    }

    if ([v5 peopleClassification] == 4)
    {
      [(MOContextString *)v10 setContentType:[(MOContextString *)v10 contentType]| 0x1000];
    }

    if ([v5 peopleClassification] == 5)
    {
      [(MOContextString *)v10 setContentType:[(MOContextString *)v10 contentType]| 0x2000];
    }
  }

  if ([v5 hasPlaceName])
  {
    [(MOContextString *)v10 setContentType:[(MOContextString *)v10 contentType]| 4];
  }

  if ([v5 hasCityName])
  {
    [(MOContextString *)v10 setContentType:[(MOContextString *)v10 contentType]| 8];
  }

  if ([v6 hasTimeReference])
  {
    [(MOContextString *)v10 setContentType:[(MOContextString *)v10 contentType]| 0x4000];
  }

  return v10;
}

- (id)_filterTemplates:(id)a3
{
  v4 = a3;
  v5 = [(MOContextConfigurationManager *)self->_configurationManager getFilePathSettingForKey:@"Templates_To_Remove" withFallback:@"fallback"];
  v46 = v5;
  if (v5 && (v6 = v5, ([v5 isEqualToString:@"fallback"] & 1) == 0))
  {
    v7 = [NSURL fileURLWithPath:v6];
    if (v7)
    {
      v8 = [(MOTemplateBasedContextBuilder *)self _readTemplatesToRemovePlistFile:v7];
      goto LABEL_6;
    }

    v45 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [MOTemplateBasedContextBuilder _filterTemplates:];
    }
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOTemplateBasedContextBuilder _filterTemplates:];
    }
  }

  v8 = 0;
LABEL_6:

  [(MOContextConfigurationManager *)self->_configurationManager getDoubleSettingForKey:@"Template_Accuracy_MaxThreshold" withFallback:2.0];
  v10 = v9;
  [(MOContextConfigurationManager *)self->_configurationManager getDoubleSettingForKey:@"Template_Satisfaction_MaxThreshold" withFallback:2.0];
  v12 = v11;
  [(MOContextConfigurationManager *)self->_configurationManager getDoubleSettingForKey:@"Template_Utility_MaxThreshold" withFallback:2.0];
  v14 = v13;
  [(MOContextConfigurationManager *)self->_configurationManager getDoubleSettingForKey:@"Template_Generalizability_MaxThreshold" withFallback:4.0];
  v16 = v15;
  [(MOContextConfigurationManager *)self->_configurationManager getDoubleSettingForKey:@"Template_Satisfaction_MinThreshold" withFallback:1.0];
  v18 = v17;
  [(MOContextConfigurationManager *)self->_configurationManager getDoubleSettingForKey:@"Template_Generalizability_MinThreshold" withFallback:2.0];
  v20 = v19;
  [(MOContextConfigurationManager *)self->_configurationManager getDoubleSettingForKey:@"Template_Accuracy_MinThreshold" withFallback:0.0];
  v22 = v21;
  [(MOContextConfigurationManager *)self->_configurationManager getDoubleSettingForKey:@"Template_Utility_MinThreshold" withFallback:0.0];
  v24 = v23;
  v47 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v4;
  v25 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (!v25)
  {
    goto LABEL_29;
  }

  v26 = v25;
  v27 = *v50;
  do
  {
    for (i = 0; i != v26; i = i + 1)
    {
      if (*v50 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v49 + 1) + 8 * i);
      [v29 satisfaction];
      if (v30 >= v18)
      {
        [v29 utility];
        if (v31 >= v24)
        {
          [v29 accuracy];
          if (v32 >= v22)
          {
            [v29 generalizability];
            if (v33 >= v20)
            {
              [v29 accuracy];
              if (v34 <= v10)
              {
                [v29 satisfaction];
                if (v35 <= v12)
                {
                  [v29 utility];
                  if (v36 <= v14)
                  {
                    [v29 generalizability];
                    if (v37 <= v16)
                    {
                      [v47 addObject:v29];
                      v38 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v54 = v29;
                        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Template is filtered because of score, %@", buf, 0xCu);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v39 = [v8 allValues];
      if ([v39 count])
      {
        v40 = [v8 allValues];
        v41 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v29 promptIndex]);
        v42 = [v41 stringValue];
        v43 = [v40 containsObject:v42];

        if (!v43)
        {
          continue;
        }

        [v47 addObject:v29];
        v39 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v54 = v29;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Template is filtered because of plist, %@", buf, 0xCu);
        }
      }
    }

    v26 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  }

  while (v26);
LABEL_29:

  return v47;
}

- (double)_computeTemplateScore:(id)a3 withBundleContent:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 accuracy];
  v9 = v8 + 0.0;
  [v6 satisfaction];
  v11 = v10;
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [MOTemplateBasedContextBuilder _computeTemplateScore:withBundleContent:];
  }

  v13 = v9 + v11;

  if ([v6 bundleType])
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 templateString];
      v39 = 134218242;
      v40 = 10;
      v41 = 2112;
      v42 = *&v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#score, kMOContextStringBundleTypeScore (%lu) score added for %@,", &v39, 0x16u);
    }

    v13 = v13 + 10.0;
  }

  if ([v6 hasPersonName])
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 templateString];
      v39 = 134218242;
      v40 = 30;
      v41 = 2112;
      v42 = *&v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#score, kMOContextStringPersonNameScore (%lu) score added for %@,", &v39, 0x16u);
    }

    v13 = v13 + 30.0;
  }

  if ([v6 hasPlaceName])
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v6 templateString];
      v39 = 134218242;
      v40 = 30;
      v41 = 2112;
      v42 = *&v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#score, kMOContextStringPlaceNameScore score (%lu) added for %@,", &v39, 0x16u);
    }

    v13 = v13 + 30.0;
  }

  if ([v6 hasCityName])
  {
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v6 templateString];
      v39 = 134218242;
      v40 = 10;
      v41 = 2112;
      v42 = *&v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#score, kMOContextStringCityNameScore (%lu) score added for %@,", &v39, 0x16u);
    }

    v13 = v13 + 10.0;
  }

  if ([v6 peopleClassification])
  {
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v6 templateString];
      v39 = 134218242;
      v40 = 30;
      v41 = 2112;
      v42 = *&v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "kMOContextStringPeopleClassificationScore (%lu) score added for %@,", &v39, 0x16u);
    }

    v13 = v13 + 30.0;
  }

  if ([v6 photoTrait])
  {
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v6 templateString];
      v39 = 134218242;
      v40 = 40;
      v41 = 2112;
      v42 = *&v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "kMOContextStringTraitScore (%lu) score added for %@,", &v39, 0x16u);
    }

    v13 = v13 + 40.0;
  }

  if ([v6 placeType])
  {
    insignificantPlaceTypes = self->_insignificantPlaceTypes;
    v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 placeType]);
    LOBYTE(insignificantPlaceTypes) = [(NSArray *)insignificantPlaceTypes containsObject:v27];

    if ((insignificantPlaceTypes & 1) == 0)
    {
      v28 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v6 templateString];
        v39 = 134218242;
        v40 = 30;
        v41 = 2112;
        v42 = *&v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "kMOContextStringPlaceTypeScore (%lu) score added for %@", &v39, 0x16u);
      }

      v13 = v13 + 30.0;
    }
  }

  if ([v6 activityType])
  {
    v30 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v6 templateString];
      v39 = 134218242;
      v40 = 10;
      v41 = 2112;
      v42 = *&v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "kMOContextStringActivityTypeScore (%lu) score added for %@,", &v39, 0x16u);
    }

    v13 = v13 + 10.0;
  }

  if ([v6 patternType])
  {
    v32 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v6 templateString];
      v39 = 134218242;
      v40 = 30;
      v41 = 2112;
      v42 = *&v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "kMOContextStringPatternTypeScore (%lu) score added for %@,", &v39, 0x16u);
    }

    v13 = v13 + 30.0;
  }

  if ([v6 hasTimeReference])
  {
    v34 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v6 templateString];
      v39 = 134218242;
      v40 = 10;
      v41 = 2112;
      v42 = *&v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#score, kMOContextStringTimeReferenceScore (%lu) score added for %@,", &v39, 0x16u);
    }

    v13 = v13 + 10.0;
  }

  v36 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v6 templateString];
    v39 = 138412546;
    v40 = v37;
    v41 = 2048;
    v42 = v13;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#score, string, %@, score, %f", &v39, 0x16u);
  }

  return v13;
}

- (id)_readTemplatesToRemovePlistFile:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [MOTemplateBasedContextBuilder _readTemplatesToRemovePlistFile:];
    }

    v6 = [v3 URLByAppendingPathComponent:@"templates_to_remove.plist"];
    v7 = [v6 path];
    v8 = [v4 fileExistsAtPath:v7];

    v9 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        [MOTemplateBasedContextBuilder _readTemplatesToRemovePlistFile:];
      }

      v16 = 0;
      v11 = [[NSDictionary alloc] initWithContentsOfURL:v6 error:&v16];
      v12 = v16;
      if (v12)
      {
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [MOTemplateBasedContextBuilder _readTemplatesToRemovePlistFile:];
        }

        v14 = 0;
      }

      else
      {
        v14 = v11;
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Templates to remove plist: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v10)
      {
        [MOTemplateBasedContextBuilder _readTemplatesToRemovePlistFile:];
      }

      v14 = objc_alloc_init(NSDictionary);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_generateContextStringsFromBundleContents:(id)a3 WithHandler:(id)a4
{
  v6 = a3;
  v16 = a4;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__2;
  v34[4] = __Block_byref_object_dispose__2;
  v35 = +[NSMutableDictionary dictionary];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__2;
  v32[4] = __Block_byref_object_dispose__2;
  v33 = 0;
  v7 = dispatch_group_create();
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.mosaic.contextsGenerationTemplate", v8);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v10)
  {
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        dispatch_group_enter(v7);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = __87__MOTemplateBasedContextBuilder__generateContextStringsFromBundleContents_WithHandler___block_invoke;
        v22[3] = &unk_1000B53A8;
        v23 = v9;
        v24 = v13;
        v26 = v34;
        v27 = v32;
        v25 = v7;
        [(MOTemplateBasedContextBuilder *)self _generateContextStringsFromTemplateWithBundleContent:v13 withHandler:v22];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v10);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __87__MOTemplateBasedContextBuilder__generateContextStringsFromBundleContents_WithHandler___block_invoke_3;
  block[3] = &unk_1000B53D0;
  v20 = v34;
  v21 = v32;
  v19 = v16;
  v15 = v16;
  dispatch_group_notify(v7, queue, block);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);
}

void __87__MOTemplateBasedContextBuilder__generateContextStringsFromBundleContents_WithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __87__MOTemplateBasedContextBuilder__generateContextStringsFromBundleContents_WithHandler___block_invoke_2;
  block[3] = &unk_1000B5380;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = *(a1 + 56);
  v9 = v6;
  v10 = v5;
  dispatch_sync(v8, block);
  dispatch_group_leave(*(a1 + 48));
}

void __87__MOTemplateBasedContextBuilder__generateContextStringsFromBundleContents_WithHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(*(*(a1 + 56) + 8) + 40);
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) bundleContentIdentifier];
    [v2 setObject:v3 forKey:v4];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = (*(*(a1 + 64) + 8) + 40);

    objc_storeStrong(v6, v5);
  }
}

uint64_t __87__MOTemplateBasedContextBuilder__generateContextStringsFromBundleContents_WithHandler___block_invoke_3(void *a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(a1[5] + 8) + 40) count];
    v4 = *(*(a1[6] + 8) + 40);
    v16 = 134218242;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "context result count, %ld, error, %@", &v16, 0x16u);
  }

  if (!*(*(a1[5] + 8) + 40))
  {
    goto LABEL_11;
  }

  v5 = *(*(a1[6] + 8) + 40);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v5 domain];
  v7 = v6;
  if (v6 != @"MOContextErrorDomain")
  {

LABEL_11:
    v13 = *(*(a1[5] + 8) + 40);
    v14 = *(*(a1[6] + 8) + 40);
    v12 = *(a1[4] + 16);
    return v12();
  }

  v8 = [*(*(a1[6] + 8) + 40) code];

  if (v8 != 1544)
  {
    goto LABEL_11;
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(*(a1[6] + 8) + 40);
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "suppress the template error as the context is not empty so the error is only for part of the bundles, error, %@", &v16, 0xCu);
  }

  v11 = *(*(a1[5] + 8) + 40);
  v12 = *(a1[4] + 16);
  return v12();
}

- (double)_getMostRecentTemplateVersion
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 bundlePath];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = 1;
  v6 = [NSURL fileURLWithPath:v4 isDirectory:1];
  v7 = [v6 path];
  v8 = [v7 stringByAppendingPathComponent:@"templateVersion.json"];

  v18 = 0;
  v9 = [NSData dataWithContentsOfFile:v8 options:0 error:&v18];
  v10 = v18;
  if (!v10 && v9)
  {
    v17 = 0;
    v11 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:&v17];
    v10 = v17;
    if (v11)
    {
      v12 = [v11 objectForKeyedSubscript:@"templateVersion"];

      if (v12)
      {
        v13 = [v11 objectForKeyedSubscript:@"templateVersion"];
        [v13 doubleValue];
        v2 = v14;

        v15 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v20 = v2;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "most recent template version from file: %f", buf, 0xCu);
        }

        v5 = 0;
      }

      else
      {
        v5 = 1;
      }
    }
  }

  if (v5)
  {
LABEL_12:
    v2 = 0.0;
  }

  return v2;
}

- (void)_generateContextStringsBasedOnNewTemplateFromBundleContents:(id)a3 WithHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MOTemplateBasedContextBuilder *)self _getMostRecentTemplateVersion];
  v9 = v8;
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "most recent template version: %f", buf, 0xCu);
  }

  [(MOContextConfigurationManager *)self->_configurationManager getDoubleSettingForKey:@"LocalTemplateVersion" withFallback:0.0];
  v12 = v11;
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "local template version: %f", buf, 0xCu);
  }

  v14 = [(MOTemplateBasedContextBuilder *)self templateStore];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __105__MOTemplateBasedContextBuilder__generateContextStringsBasedOnNewTemplateFromBundleContents_WithHandler___block_invoke;
  v17[3] = &unk_1000B5448;
  v20 = v12;
  v21 = v9;
  v17[4] = self;
  v18 = v6;
  v19 = v7;
  v15 = v7;
  v16 = v6;
  [v14 checkTemplateStoreIsEmptyWithHandler:v17];
}

void __105__MOTemplateBasedContextBuilder__generateContextStringsBasedOnNewTemplateFromBundleContents_WithHandler___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && ((v3 = *(a1 + 56), v3 != 0.0) ? (v4 = v3 == *(a1 + 64)) : (v4 = 0), v4))
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "skip removing old templates and loading new templates", buf, 2u);
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __105__MOTemplateBasedContextBuilder__generateContextStringsBasedOnNewTemplateFromBundleContents_WithHandler___block_invoke_104;
    v16[3] = &unk_1000B53F8;
    v6 = &v17;
    v17 = *(a1 + 48);
    [v11 _generateContextStringsFromBundleContents:v12 WithHandler:v16];
  }

  else
  {
    v5 = [*(a1 + 32) templateStore];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __105__MOTemplateBasedContextBuilder__generateContextStringsBasedOnNewTemplateFromBundleContents_WithHandler___block_invoke_2;
    v13[3] = &unk_1000B5420;
    v6 = &v15;
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15 = v7;
    v13[4] = v8;
    v14 = v9;
    [v5 loadNewTemplatesFromFileWithHandler:v13];
  }
}

void __105__MOTemplateBasedContextBuilder__generateContextStringsBasedOnNewTemplateFromBundleContents_WithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __105__MOTemplateBasedContextBuilder__generateContextStringsBasedOnNewTemplateFromBundleContents_WithHandler___block_invoke_2_cold_1();
    }

    v12 = NSLocalizedDescriptionKey;
    v13 = @"MOTemplateStore:load new templates hit error";
    v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v6 = [NSError errorWithDomain:@"MOContextErrorDomain" code:2308 userInfo:v5];
    v7 = [NSError errorUsingError:v6 withUnderyingError:v3];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __105__MOTemplateBasedContextBuilder__generateContextStringsBasedOnNewTemplateFromBundleContents_WithHandler___block_invoke_109;
    v10[3] = &unk_1000B53F8;
    v11 = *(a1 + 48);
    [v8 _generateContextStringsFromBundleContents:v9 WithHandler:v10];
    v7 = v11;
  }
}

- (void)generateContextStringsFromBundleContents:(id)a3 WithHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __86__MOTemplateBasedContextBuilder_generateContextStringsFromBundleContents_WithHandler___block_invoke;
  block[3] = &unk_1000B5470;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __86__MOTemplateBasedContextBuilder_generateContextStringsFromBundleContents_WithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __86__MOTemplateBasedContextBuilder_generateContextStringsFromBundleContents_WithHandler___block_invoke_2;
  v3[3] = &unk_1000B53F8;
  v4 = *(a1 + 48);
  [v1 _generateContextStringsBasedOnNewTemplateFromBundleContents:v2 WithHandler:v3];
}

- (id)musicMetaDataWithArtistSongForBundleContent:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 musicSuggestionArtistName];
  if (v5)
  {
    v6 = [v3 musicSuggestionArtistName];
    v7 = [v6 length] < 0x1F5;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 musicSuggestionSongTitle];
  if (v8)
  {
    v9 = [v3 musicSuggestionSongTitle];
    v10 = [v9 length] < 0x1F5;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v3 musicSuggestionContentRating];
  v12 = [v11 isEqualToString:@"not explicit"];

  if (v12)
  {
    v13 = !v10;
    if (v7 && (v13 & 1) == 0)
    {
      v14 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Appending music strings for case of artist name present and song title present", buf, 2u);
      }

      v15 = [v3 musicSuggestionArtistName];
      v16 = [NSString stringWithFormat:@", with music by %@", v15];

      v17 = [[MOContextMusicMetaData alloc] initWithMusicString:v16];
      v18 = [v3 musicSuggestionArtistName];
      [(MOContextMusicMetaData *)v17 setArtist:v18];

      v19 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "add music metadata based on artist only: %@", buf, 0xCu);
      }

      [v4 addObject:v17];
      v20 = [v3 musicSuggestionSongTitle];
      v21 = [v3 musicSuggestionArtistName];
      v22 = [NSString stringWithFormat:@", with the song %@ by %@", v20, v21];

      v23 = [[MOContextMusicMetaData alloc] initWithMusicString:v22];
      v24 = [v3 musicSuggestionArtistName];
      [(MOContextMusicMetaData *)v23 setArtist:v24];

      v25 = [v3 musicSuggestionSongTitle];
      [(MOContextMusicMetaData *)v23 setTitle:v25];

      v26 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v23;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "add music metadata based on artist and song: %@", buf, 0xCu);
      }

      [v4 addObject:v23];
      goto LABEL_29;
    }

    if (!v7 || v10)
    {
      if ((v7 | v13))
      {
        goto LABEL_30;
      }

      v27 = [v3 musicSuggestionSongTitle];
      v16 = [NSString stringWithFormat:@", with the song %@", v27];

      v28 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Appending music strings for case of artist name not present and song title present", buf, 2u);
      }

      v17 = [[MOContextMusicMetaData alloc] initWithMusicString:v16];
      v29 = [v3 musicSuggestionSongTitle];
      [(MOContextMusicMetaData *)v17 setTitle:v29];

      v30 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v37 = v17;
      v31 = "add music metadata based on song: %@";
    }

    else
    {
      v32 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Appending music strings for case of artist name present and song title not present", buf, 2u);
      }

      v33 = [v3 musicSuggestionArtistName];
      v16 = [NSString stringWithFormat:@", with music by %@", v33];

      v17 = [[MOContextMusicMetaData alloc] initWithMusicString:v16];
      v34 = [v3 musicSuggestionArtistName];
      [(MOContextMusicMetaData *)v17 setArtist:v34];

      v30 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v37 = v17;
      v31 = "add music metadata based on artist: %@";
    }

    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, v31, buf, 0xCu);
LABEL_28:

    [v4 addObject:v17];
LABEL_29:
  }

LABEL_30:

  return v4;
}

- (id)musicMetaDataWithMoodForBundleContent:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v17 = objc_opt_new();
  v16 = v4;
  if ([v4 activityType] || objc_msgSend(v4, "placeType") == 5 || objc_msgSend(v4, "placeType") == 8 || objc_msgSend(v4, "placeType") == 11 || objc_msgSend(v4, "placeType") == 15 || objc_msgSend(v4, "placeType") == 21 || objc_msgSend(v4, "placeType") == 25 || objc_msgSend(v4, "placeType") == 27 || objc_msgSend(v4, "placeType") == 31 || objc_msgSend(v4, "placeType") == 32 || objc_msgSend(v4, "placeType") == 33 || objc_msgSend(v4, "bundleType") == 2 || objc_msgSend(v4, "photoTrait") == 9 || objc_msgSend(v4, "photoTrait") == 10 || objc_msgSend(v4, "photoTrait") == 11 || objc_msgSend(v4, "photoTrait") == 14 || objc_msgSend(v4, "photoTrait") == 15 || objc_msgSend(v4, "photoTrait") == 17 || objc_msgSend(v4, "photoTrait") == 25 || objc_msgSend(v4, "photoTrait") == 26 || objc_msgSend(v4, "photoTrait") == 27 || objc_msgSend(v4, "photoTrait") == 28 || objc_msgSend(v4, "photoTrait") == 29 || objc_msgSend(v4, "photoTrait") == 30 || objc_msgSend(v4, "photoTrait") == 31 || objc_msgSend(v4, "photoTrait") == 32 || objc_msgSend(v4, "photoTrait") == 33 || objc_msgSend(v4, "photoTrait") == 34 || objc_msgSend(v4, "photoTrait") == 35 || objc_msgSend(v4, "photoTrait") == 36 || objc_msgSend(v4, "photoTrait") == 37 || objc_msgSend(v4, "photoTrait") == 38 || objc_msgSend(v4, "photoTrait") == 42 || objc_msgSend(v4, "photoTrait") == 43 || objc_msgSend(v4, "photoTrait") == 44 || objc_msgSend(v4, "photoTrait") == 45 || objc_msgSend(v4, "photoTrait") == 46 || objc_msgSend(v4, "photoTrait") == 47 || objc_msgSend(v4, "photoTrait") == 48 || objc_msgSend(v4, "photoTrait") == 49 || objc_msgSend(v4, "photoTrait") == 50 || objc_msgSend(v4, "photoTrait") == 51 || objc_msgSend(v4, "photoTrait") == 54 || objc_msgSend(v4, "photoTrait") == 55 || objc_msgSend(v4, "photoTrait") == 56 || objc_msgSend(v4, "photoTrait") == 57 || objc_msgSend(v4, "photoTrait") == 58 || objc_msgSend(v4, "photoTrait") == 60 || objc_msgSend(v4, "photoTrait") == 61 || objc_msgSend(v4, "photoTrait") == 65 || objc_msgSend(v4, "photoTrait") == 66 || objc_msgSend(v4, "photoTrait") == 70 || objc_msgSend(v4, "photoTrait") == 72 || objc_msgSend(v4, "photoTrait") == 73 || objc_msgSend(v4, "photoTrait") == 74 || objc_msgSend(v4, "photoTrait") == 75 || objc_msgSend(v4, "photoTrait") == 77 || objc_msgSend(v4, "photoTrait") == 78 || objc_msgSend(v4, "photoTrait") == 79 || objc_msgSend(v4, "photoTrait") == 82 || objc_msgSend(v4, "photoTrait") == 83 || objc_msgSend(v4, "photoTrait") == 2 || objc_msgSend(v4, "placeType") == 35 || objc_msgSend(v4, "placeType") == 36)
  {
    v6 = [(MOTemplateBasedContextBuilder *)self musicMoodsForUpbeatEvents];
  }

  else if ([v4 bundleType] == 5 || objc_msgSend(v4, "placeType") == 16)
  {
    v6 = [(MOTemplateBasedContextBuilder *)self musicMoodsForRelaxingEvents];
  }

  else
  {
    v6 = [(MOTemplateBasedContextBuilder *)self musicMoodsForGeneralEvents];
  }

  v7 = v6;
  [v5 addObjectsFromArray:v6];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [[MOContextMusicMetaData alloc] initWithMusicString:*(*(&v18 + 1) + 8 * i)];
        v14 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "add music metadata based on mood: %@", buf, 0xCu);
        }

        [v17 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }

  return v17;
}

void __98__MOTemplateBasedContextBuilder__generateContextStringsFromTemplateWithBundleContent_withHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) associatedBundleID];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "no template found for this bundle content with bundle ID %@", v4, 0xCu);
}

- (void)_computeTemplateScore:withBundleContent:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "#score template, %@, with bundle content, %@", v2, 0x16u);
}

- (void)_readTemplatesToRemovePlistFile:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __105__MOTemplateBasedContextBuilder__generateContextStringsBasedOnNewTemplateFromBundleContents_WithHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end