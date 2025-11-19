@interface MOTemplateLoader
- (id)_createSingleTemplateFromDictionary:(id)a3;
- (id)_createTemplatesFromDictionary:(id)a3;
- (id)_loadTemplatesDictFromFilePath:(id)a3;
- (id)_traitsFromArray:(id)a3;
- (id)getTemplateDirectoryURL;
- (id)loadTemplatesFromFile:(id)a3;
- (unint64_t)_activityTypeFromString:(id)a3;
- (unint64_t)_bundleTypeFromString:(id)a3;
- (unint64_t)_peopleClassificationFromString:(id)a3;
- (unint64_t)_photoTraitFromString:(id)a3;
- (unint64_t)_placeTypeFromString:(id)a3;
- (unint64_t)_timeFromString:(id)a3;
@end

@implementation MOTemplateLoader

- (id)loadTemplatesFromFile:(id)a3
{
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "XPCLoadTemplate", "", buf, 2u);
  }

  v6 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCLoadTemplate" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v6 startSession];
  v7 = [(MOTemplateLoader *)self _loadTemplatesDictFromFilePath:v4];

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 1uLL, "XPCLoadTemplate", "", v16, 2u);
  }

  [(MOPerformanceMeasurement *)v6 endSession];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v9))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "XPCCreateTemplateObjects", "", v15, 2u);
  }

  v10 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCCreateTemplateObjects" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v10 startSession];
  v11 = [(MOTemplateLoader *)self _createTemplatesFromDictionary:v7];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v12))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 1uLL, "XPCCreateTemplateObjects", "", v14, 2u);
  }

  [(MOPerformanceMeasurement *)v10 endSession];

  return v11;
}

- (id)getTemplateDirectoryURL
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundlePath];
  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3 isDirectory:1];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MOTemplateLoader *)v5 getTemplateDirectoryURL];
    }

    v4 = 0;
  }

  return v4;
}

- (id)_loadTemplatesDictFromFilePath:(id)a3
{
  v3 = a3;
  v13 = 0;
  v4 = [NSData dataWithContentsOfFile:v3 options:0 error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v9 = v5;
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MOTemplateLoader *)v9 _loadTemplatesDictFromFilePath:v7];
    }

    goto LABEL_13;
  }

  v12 = 0;
  v8 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v12];
  v9 = v12;
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v7 = v10;
  if (!v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MOTemplateLoader *)v3 _loadTemplatesDictFromFilePath:v9, v7];
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "The template json file was successfully read from path, %@", buf, 0xCu);
  }

LABEL_14:

  return v8;
}

- (id)_createTemplatesFromDictionary:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 allValues];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MOTemplateLoader *)self _createSingleTemplateFromDictionary:*(*(&v17 + 1) + 8 * i)];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v8);
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v4 allValues];
    v14 = [v13 count];
    v15 = [v5 count];
    *buf = 134218240;
    v22 = v14;
    v23 = 2048;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "json dictionary count, %ld, templates count, %ld", buf, 0x16u);
  }

  return v5;
}

- (id)_createSingleTemplateFromDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 objectForKeyedSubscript:@"accuracy"];

  v7 = 0.0;
  v8 = 0.0;
  if (v6)
  {
    v9 = [v4 objectForKeyedSubscript:@"accuracy"];
    [v9 doubleValue];
    v8 = v10;
  }

  v11 = [v4 objectForKeyedSubscript:@"utility"];

  if (v11)
  {
    v12 = [v4 objectForKeyedSubscript:@"utility"];
    [v12 doubleValue];
    v7 = v13;
  }

  v14 = [v4 objectForKeyedSubscript:@"satisfaction"];

  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    v17 = [v4 objectForKeyedSubscript:@"satisfaction"];
    [v17 doubleValue];
    v16 = v18;
  }

  v19 = [v4 objectForKeyedSubscript:@"generalizability"];

  if (v19)
  {
    v20 = [v4 objectForKeyedSubscript:@"generalizability"];
    [v20 doubleValue];
    v15 = v21;
  }

  v22 = [v4 objectForKeyedSubscript:@"templateString"];

  if (v22)
  {
    v68 = [v4 objectForKeyedSubscript:@"templateString"];
  }

  else
  {
    v68 = 0;
  }

  v23 = [v4 objectForKeyedSubscript:@"promptIndex"];

  if (v23)
  {
    v24 = [v4 objectForKeyedSubscript:@"promptIndex"];
    v67 = [v24 integerValue];
  }

  else
  {
    v67 = 0;
  }

  v25 = [v4 objectForKeyedSubscript:@"activityType"];

  if (v25)
  {
    v26 = [v4 objectForKeyedSubscript:@"activityType"];
    v66 = [(MOTemplateLoader *)self _activityTypeFromString:v26];
  }

  else
  {
    v66 = 0;
  }

  v27 = [v4 objectForKeyedSubscript:@"placeType"];

  if (v27)
  {
    v28 = [v4 objectForKeyedSubscript:@"placeType"];
    v65 = [(MOTemplateLoader *)self _placeTypeFromString:v28];
  }

  else
  {
    v65 = 0;
  }

  v29 = [v4 objectForKeyedSubscript:@"time"];

  if (v29)
  {
    v30 = [v4 objectForKeyedSubscript:@"time"];
    v64 = [(MOTemplateLoader *)self _timeFromString:v30];
  }

  else
  {
    v64 = 0;
  }

  v31 = [v4 objectForKeyedSubscript:@"peopleClassification"];

  if (v31)
  {
    v32 = [v4 objectForKeyedSubscript:@"peopleClassification"];
    v63 = [(MOTemplateLoader *)self _peopleClassificationFromString:v32];
  }

  else
  {
    v63 = 0;
  }

  v33 = [v4 objectForKeyedSubscript:@"bundleType"];

  if (v33)
  {
    v34 = [v4 objectForKeyedSubscript:@"bundleType"];
    v62 = [(MOTemplateLoader *)self _bundleTypeFromString:v34];
  }

  else
  {
    v62 = 0;
  }

  v35 = v5;
  v36 = [v4 objectForKeyedSubscript:@"personName"];

  if (v36)
  {
    v37 = [v4 objectForKeyedSubscript:@"personName"];
    v38 = [v37 intValue];

    v61 = [(MOTemplateLoader *)self _hasItemFromInt:v38];
  }

  else
  {
    v61 = 0;
  }

  v39 = [v4 objectForKeyedSubscript:@"placeName"];

  if (v39)
  {
    v39 = [v4 objectForKeyedSubscript:@"placeName"];
    v40 = [v39 intValue];

    LOBYTE(v39) = [(MOTemplateLoader *)self _hasItemFromInt:v40];
  }

  v41 = [v4 objectForKeyedSubscript:@"cityName"];

  if (v41)
  {
    v41 = [v4 objectForKeyedSubscript:@"cityName"];
    v42 = [v41 intValue];

    LOBYTE(v41) = [(MOTemplateLoader *)self _hasItemFromInt:v42];
  }

  v43 = [v4 objectForKeyedSubscript:@"timeReference"];

  if (v43)
  {
    v43 = [v4 objectForKeyedSubscript:@"timeReference"];
    v44 = [v43 intValue];

    LOBYTE(v43) = [(MOTemplateLoader *)self _hasItemFromInt:v44];
  }

  v45 = [v4 objectForKeyedSubscript:@"patternType"];

  if (v45)
  {
    v46 = [v4 objectForKeyedSubscript:@"patternType"];
    v45 = [(MOTemplateLoader *)self _patternTypeFromString:v46];
  }

  v47 = [v4 objectForKeyedSubscript:@"globalTraits"];

  if (v47)
  {
    v48 = [v4 objectForKeyedSubscript:@"globalTraits"];
    if ([v48 count])
    {
      v49 = [(MOTemplateLoader *)self _traitsFromArray:v48];
      v50 = [v49 mutableCopy];

      v35 = v50;
    }
  }

  v51 = [v4 objectForKeyedSubscript:@"personalTraits"];

  if (v51)
  {
    v52 = [v4 objectForKeyedSubscript:@"personalTraits"];
    v53 = [(MOTemplateLoader *)self _photoTraitFromString:v52];
  }

  else
  {
    v53 = 0;
  }

  v54 = v68;
  if (v68)
  {
    v55 = [MOTemplate alloc];
    v56 = +[NSUUID UUID];
    BYTE3(v60) = v43;
    BYTE2(v60) = v41;
    BYTE1(v60) = v39;
    LOBYTE(v60) = v61;
    v54 = [MOTemplate initWithTemplateIdentifier:v55 patternType:"initWithTemplateIdentifier:patternType:placeType:activityType:time:bundleType:peopleClassification:hasPersonName:hasPlaceName:hasCityName:hasTimeReference:templateString:utility:accuracy:satisfaction:generalizability:promptIndex:" placeType:v56 activityType:v45 time:v65 bundleType:v66 peopleClassification:v64 hasPersonName:v62 hasPlaceName:v7 hasCityName:v8 hasTimeReference:v16 templateString:v15 utility:v63 accuracy:v60 satisfaction:v68 generalizability:v67 promptIndex:?];

    [(MOTemplate *)v54 setPhotoTrait:v53];
    if ([v35 count])
    {
      [(MOTemplate *)v54 setGlobalTraits:v35];
    }

    v57 = [v4 objectForKeyedSubscript:@"templateVersion"];

    if (v57)
    {
      v58 = [v4 objectForKeyedSubscript:@"templateVersion"];
      -[MOTemplate setPromptVersion:](v54, "setPromptVersion:", [v58 integerValue]);
    }
  }

  return v54;
}

- (id)_traitsFromArray:(id)a3
{
  v3 = a3;
  v17 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = objc_opt_new();
        v11 = [v9 objectForKeyedSubscript:@"title"];

        if (v11)
        {
          v11 = [v9 objectForKeyedSubscript:@"title"];
        }

        v12 = [v9 objectForKeyedSubscript:@"queries"];

        if (v12)
        {
          v13 = [v9 objectForKeyedSubscript:@"queries"];
          v14 = [v13 mutableCopy];

          v10 = v14;
        }

        if (v11)
        {
          v15 = [[MOGlobalTrait alloc] initWithTitle:v11 queries:v10];
          if (v15)
          {
            [v17 addObject:v15];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v17;
}

- (unint64_t)_activityTypeFromString:(id)a3
{
  v3 = a3;
  v4 = [v3 isEqualToString:@"walking"];
  if ([v3 isEqualToString:@"strength training"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"cycling"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"running"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"HIIT"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"elliptical"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"yoga"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"swimming"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"hiking"])
  {
    v5 = 9;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"workout"];

  if (v6)
  {
    return 10;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)_placeTypeFromString:(id)a3
{
  v3 = a3;
  v4 = [v3 isEqualToString:@"restaurant"];
  if ([v3 isEqualToString:@"store"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"hotel"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"airport"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"park"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"cafe"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"food market"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"fitness center"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"university"])
  {
    v4 = 9;
  }

  if ([v3 isEqualToString:@"school"])
  {
    v4 = 10;
  }

  if ([v3 isEqualToString:@"amusement park"])
  {
    v4 = 11;
  }

  if ([v3 isEqualToString:@"movie theater"])
  {
    v4 = 12;
  }

  if ([v3 isEqualToString:@"theater"])
  {
    v4 = 13;
  }

  if ([v3 isEqualToString:@"museum"])
  {
    v4 = 14;
  }

  if ([v3 isEqualToString:@"beach"])
  {
    v4 = 15;
  }

  if ([v3 isEqualToString:@"home"])
  {
    v4 = 16;
  }

  if ([v3 isEqualToString:@"work"])
  {
    v4 = 17;
  }

  if ([v3 isEqualToString:@"aquarium"])
  {
    v4 = 18;
  }

  if ([v3 isEqualToString:@"bakery"])
  {
    v4 = 19;
  }

  if ([v3 isEqualToString:@"brewery"])
  {
    v4 = 20;
  }

  if ([v3 isEqualToString:@"campground"])
  {
    v4 = 21;
  }

  if ([v3 isEqualToString:@"fire station"])
  {
    v4 = 22;
  }

  if ([v3 isEqualToString:@"library"])
  {
    v4 = 23;
  }

  if ([v3 isEqualToString:@"marina"])
  {
    v4 = 24;
  }

  if ([v3 isEqualToString:@"national park"])
  {
    v4 = 25;
  }

  if ([v3 isEqualToString:@"nightlife"])
  {
    v4 = 26;
  }

  if ([v3 isEqualToString:@"playground"])
  {
    v4 = 27;
  }

  if ([v3 isEqualToString:@"stadium"])
  {
    v4 = 28;
  }

  if ([v3 isEqualToString:@"winery"])
  {
    v4 = 29;
  }

  if ([v3 isEqualToString:@"zoo"])
  {
    v4 = 30;
  }

  if ([v3 isEqualToString:@"golf"])
  {
    v4 = 31;
  }

  if ([v3 isEqualToString:@"mini golf"])
  {
    v4 = 32;
  }

  if ([v3 isEqualToString:@"bowling"])
  {
    v4 = 33;
  }

  if ([v3 isEqualToString:@"planetarium"])
  {
    v4 = 34;
  }

  if ([v3 isEqualToString:@"baseball"])
  {
    v4 = 35;
  }

  if ([v3 isEqualToString:@"basketball"])
  {
    v5 = 36;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"national monument"];

  if (v6)
  {
    return 37;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)_timeFromString:(id)a3
{
  v3 = a3;
  v4 = [v3 isEqualToString:@"morning"];
  if ([v3 isEqualToString:@"afternoon"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"evening"])
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"night"];

  if (v6)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)_peopleClassificationFromString:(id)a3
{
  v3 = a3;
  v4 = [v3 isEqualToString:@"family"];
  if ([v3 isEqualToString:@"friends"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"kids"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"colleagues"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"pet"];

  if (v6)
  {
    return 5;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)_bundleTypeFromString:(id)a3
{
  v3 = a3;
  v4 = [v3 isEqualToString:@"outing"];
  if ([v3 isEqualToString:@"trip"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"shopping"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"dining"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"time at home"])
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"contact"];

  if (v6)
  {
    return 6;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)_photoTraitFromString:(id)a3
{
  v3 = a3;
  v4 = [v3 isEqualToString:@"Wedding"];
  if ([v3 isEqualToString:@"Birthday"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"Celebration"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"Ceremony"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"Holiday"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"Thanksgiving"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"Halloween"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"Christmas"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"Festival"])
  {
    v4 = 9;
  }

  if ([v3 isEqualToString:@"Concert"])
  {
    v4 = 10;
  }

  if ([v3 isEqualToString:@"Parade"])
  {
    v4 = 11;
  }

  if ([v3 isEqualToString:@"Cooking"])
  {
    v4 = 12;
  }

  if ([v3 isEqualToString:@"Eating"])
  {
    v4 = 13;
  }

  if ([v3 isEqualToString:@"Camping"])
  {
    v4 = 14;
  }

  if ([v3 isEqualToString:@"Graduation"])
  {
    v4 = 15;
  }

  if ([v3 isEqualToString:@"Thanksgiving Dinner"])
  {
    v4 = 16;
  }

  if ([v3 isEqualToString:@"Carnival"])
  {
    v4 = 17;
  }

  if ([v3 isEqualToString:@"Easter Egg"])
  {
    v4 = 18;
  }

  if ([v3 isEqualToString:@"Jack O Lantern"])
  {
    v4 = 19;
  }

  if ([v3 isEqualToString:@"BabyReading"])
  {
    v4 = 20;
  }

  if ([v3 isEqualToString:@"ChildReading"])
  {
    v4 = 21;
  }

  if ([v3 isEqualToString:@"BabyBedtimeCuddles"])
  {
    v4 = 22;
  }

  if ([v3 isEqualToString:@"ChildBedtimeCuddles"])
  {
    v4 = 23;
  }

  if ([v3 isEqualToString:@"Board Game"])
  {
    v4 = 24;
  }

  if ([v3 isEqualToString:@"Swimming"])
  {
    v4 = 25;
  }

  if ([v3 isEqualToString:@"SwimmingBeach"])
  {
    v4 = 26;
  }

  if ([v3 isEqualToString:@"SwimmingPool"])
  {
    v4 = 27;
  }

  if ([v3 isEqualToString:@"Surfing"])
  {
    v4 = 28;
  }

  if ([v3 isEqualToString:@"Underwater Diving"])
  {
    v4 = 29;
  }

  if ([v3 isEqualToString:@"Snorkeling"])
  {
    v4 = 30;
  }

  if ([v3 isEqualToString:@"Scuba"])
  {
    v4 = 31;
  }

  if ([v3 isEqualToString:@"Skiing"])
  {
    v4 = 32;
  }

  if ([v3 isEqualToString:@"Snowboarding"])
  {
    v4 = 33;
  }

  if ([v3 isEqualToString:@"Sledding"])
  {
    v4 = 34;
  }

  if ([v3 isEqualToString:@"Snow Person"])
  {
    v4 = 35;
  }

  if ([v3 isEqualToString:@"Snowball"])
  {
    v4 = 36;
  }

  if ([v3 isEqualToString:@"SnowPlay"])
  {
    v4 = 37;
  }

  if ([v3 isEqualToString:@"Hiking"])
  {
    v4 = 38;
  }

  if ([v3 isEqualToString:@"Dancing"])
  {
    v4 = 39;
  }

  if ([v3 isEqualToString:@"ChildPlay"])
  {
    v4 = 40;
  }

  if ([v3 isEqualToString:@"BabyPlay"])
  {
    v4 = 41;
  }

  if ([v3 isEqualToString:@"Fireworks"])
  {
    v4 = 42;
  }

  if ([v3 isEqualToString:@"Sunrise"])
  {
    v4 = 43;
  }

  if ([v3 isEqualToString:@"Sunset Sunrise"])
  {
    v4 = 44;
  }

  if ([v3 isEqualToString:@"Rainbow"])
  {
    v4 = 45;
  }

  if ([v3 isEqualToString:@"Waterfall"])
  {
    v4 = 46;
  }

  if ([v3 isEqualToString:@"Lunar Eclipse"])
  {
    v4 = 47;
  }

  if ([v3 isEqualToString:@"Eclipse"])
  {
    v4 = 48;
  }

  if ([v3 isEqualToString:@"Celestial Body"])
  {
    v4 = 49;
  }

  if ([v3 isEqualToString:@"Star"])
  {
    v4 = 50;
  }

  if ([v3 isEqualToString:@"Wildlife"])
  {
    v4 = 51;
  }

  if ([v3 isEqualToString:@"Flower"])
  {
    v4 = 52;
  }

  if ([v3 isEqualToString:@"Blizzard"])
  {
    v4 = 53;
  }

  if ([v3 isEqualToString:@"Snow"])
  {
    v4 = 54;
  }

  if ([v3 isEqualToString:@"Underwater"])
  {
    v4 = 55;
  }

  if ([v3 isEqualToString:@"Basketball"])
  {
    v4 = 56;
  }

  if ([v3 isEqualToString:@"Soccer"])
  {
    v4 = 57;
  }

  if ([v3 isEqualToString:@"Football"])
  {
    v4 = 58;
  }

  if ([v3 isEqualToString:@"Baseball"])
  {
    v4 = 59;
  }

  if ([v3 isEqualToString:@"Hockey"])
  {
    v4 = 60;
  }

  if ([v3 isEqualToString:@"Ice Hockey"])
  {
    v4 = 61;
  }

  if ([v3 isEqualToString:@"Cycling"])
  {
    v4 = 62;
  }

  if ([v3 isEqualToString:@"Cake Decorating"])
  {
    v4 = 63;
  }

  if ([v3 isEqualToString:@"Bowling"])
  {
    v4 = 64;
  }

  if ([v3 isEqualToString:@"Karaoke"])
  {
    v4 = 65;
  }

  if ([v3 isEqualToString:@"Golf"])
  {
    v4 = 66;
  }

  if ([v3 isEqualToString:@"Baby"])
  {
    v4 = 67;
  }

  if ([v3 isEqualToString:@"Vineyard"])
  {
    v4 = 68;
  }

  if ([v3 isEqualToString:@"Log Cabin"])
  {
    v4 = 69;
  }

  if ([v3 isEqualToString:@"Nightclub"])
  {
    v4 = 70;
  }

  if ([v3 isEqualToString:@"Farm"])
  {
    v4 = 71;
  }

  if ([v3 isEqualToString:@"Mountain Biking"])
  {
    v4 = 72;
  }

  if ([v3 isEqualToString:@"Mountain Bike"])
  {
    v4 = 73;
  }

  if ([v3 isEqualToString:@"Ski Mountaineering"])
  {
    v4 = 74;
  }

  if ([v3 isEqualToString:@"Mountain"])
  {
    v4 = 75;
  }

  if ([v3 isEqualToString:@"Forest"])
  {
    v4 = 76;
  }

  if ([v3 isEqualToString:@"Parasailing"])
  {
    v4 = 77;
  }

  if ([v3 isEqualToString:@"Sailing"])
  {
    v4 = 78;
  }

  if ([v3 isEqualToString:@"Kayaking"])
  {
    v4 = 79;
  }

  if ([v3 isEqualToString:@"Cruise Ship"])
  {
    v4 = 80;
  }

  if ([v3 isEqualToString:@"Shore"])
  {
    v4 = 81;
  }

  if ([v3 isEqualToString:@"Carousel"])
  {
    v4 = 82;
  }

  if ([v3 isEqualToString:@"Ferris Wheel"])
  {
    v4 = 83;
  }

  if ([v3 isEqualToString:@"Lunar New Year’s Eve"])
  {
    v4 = 84;
  }

  if ([v3 isEqualToString:@"Lunar New Year’s Day"])
  {
    v4 = 85;
  }

  if ([v3 isEqualToString:@"Valentine’s Day"])
  {
    v4 = 86;
  }

  if ([v3 isEqualToString:@"Christmas Eve"])
  {
    v4 = 87;
  }

  if ([v3 isEqualToString:@"New Year’s Eve"])
  {
    v4 = 88;
  }

  if ([v3 isEqualToString:@"New Year’s Day"])
  {
    v4 = 89;
  }

  if ([v3 isEqualToString:@"Independence Day_US"])
  {
    v4 = 90;
  }

  if ([v3 isEqualToString:@"Diwali"])
  {
    v4 = 91;
  }

  if ([v3 isEqualToString:@"Cinco De Mayo"])
  {
    v4 = 92;
  }

  if ([v3 isEqualToString:@"Earth Day"])
  {
    v4 = 93;
  }

  if ([v3 isEqualToString:@"St. Patrick’s Day"])
  {
    v4 = 94;
  }

  if ([v3 isEqualToString:@"Memorial Day"])
  {
    v4 = 95;
  }

  if ([v3 isEqualToString:@"Labor Day"])
  {
    v4 = 96;
  }

  if ([v3 isEqualToString:@"Mother’s Day"])
  {
    v5 = 97;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"Father’s Day"];

  if (v6)
  {
    return 98;
  }

  else
  {
    return v5;
  }
}

- (void)_loadTemplatesDictFromFilePath:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't parse teample JSON to dictionary. %@, error, %@", &v3, 0x16u);
}

- (void)_loadTemplatesDictFromFilePath:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not read the template JSON file, error: %@", &v2, 0xCu);
}

@end