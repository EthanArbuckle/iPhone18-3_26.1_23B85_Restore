@interface MOTemplateLoader
- (id)_createSingleTemplateFromDictionary:(id)dictionary;
- (id)_createTemplatesFromDictionary:(id)dictionary;
- (id)_loadTemplatesDictFromFilePath:(id)path;
- (id)_traitsFromArray:(id)array;
- (id)getTemplateDirectoryURL;
- (id)loadTemplatesFromFile:(id)file;
- (unint64_t)_activityTypeFromString:(id)string;
- (unint64_t)_bundleTypeFromString:(id)string;
- (unint64_t)_peopleClassificationFromString:(id)string;
- (unint64_t)_photoTraitFromString:(id)string;
- (unint64_t)_placeTypeFromString:(id)string;
- (unint64_t)_timeFromString:(id)string;
@end

@implementation MOTemplateLoader

- (id)loadTemplatesFromFile:(id)file
{
  fileCopy = file;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "XPCLoadTemplate", "", buf, 2u);
  }

  v6 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCLoadTemplate" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v6 startSession];
  v7 = [(MOTemplateLoader *)self _loadTemplatesDictFromFilePath:fileCopy];

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
  bundlePath = [v2 bundlePath];
  if (bundlePath)
  {
    v4 = [NSURL fileURLWithPath:bundlePath isDirectory:1];
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

- (id)_loadTemplatesDictFromFilePath:(id)path
{
  pathCopy = path;
  v13 = 0;
  v4 = [NSData dataWithContentsOfFile:pathCopy options:0 error:&v13];
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
      [(MOTemplateLoader *)pathCopy _loadTemplatesDictFromFilePath:v9, v7];
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = pathCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "The template json file was successfully read from path, %@", buf, 0xCu);
  }

LABEL_14:

  return v8;
}

- (id)_createTemplatesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [dictionaryCopy allValues];
  v7 = [allValues countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v11 = [(MOTemplateLoader *)self _createSingleTemplateFromDictionary:*(*(&v17 + 1) + 8 * i)];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v8);
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    allValues2 = [dictionaryCopy allValues];
    v14 = [allValues2 count];
    v15 = [v5 count];
    *buf = 134218240;
    v22 = v14;
    v23 = 2048;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "json dictionary count, %ld, templates count, %ld", buf, 0x16u);
  }

  return v5;
}

- (id)_createSingleTemplateFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_new();
  v6 = [dictionaryCopy objectForKeyedSubscript:@"accuracy"];

  v7 = 0.0;
  v8 = 0.0;
  if (v6)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"accuracy"];
    [v9 doubleValue];
    v8 = v10;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"utility"];

  if (v11)
  {
    v12 = [dictionaryCopy objectForKeyedSubscript:@"utility"];
    [v12 doubleValue];
    v7 = v13;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"satisfaction"];

  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    v17 = [dictionaryCopy objectForKeyedSubscript:@"satisfaction"];
    [v17 doubleValue];
    v16 = v18;
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:@"generalizability"];

  if (v19)
  {
    v20 = [dictionaryCopy objectForKeyedSubscript:@"generalizability"];
    [v20 doubleValue];
    v15 = v21;
  }

  v22 = [dictionaryCopy objectForKeyedSubscript:@"templateString"];

  if (v22)
  {
    v68 = [dictionaryCopy objectForKeyedSubscript:@"templateString"];
  }

  else
  {
    v68 = 0;
  }

  v23 = [dictionaryCopy objectForKeyedSubscript:@"promptIndex"];

  if (v23)
  {
    v24 = [dictionaryCopy objectForKeyedSubscript:@"promptIndex"];
    integerValue = [v24 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v25 = [dictionaryCopy objectForKeyedSubscript:@"activityType"];

  if (v25)
  {
    v26 = [dictionaryCopy objectForKeyedSubscript:@"activityType"];
    v66 = [(MOTemplateLoader *)self _activityTypeFromString:v26];
  }

  else
  {
    v66 = 0;
  }

  v27 = [dictionaryCopy objectForKeyedSubscript:@"placeType"];

  if (v27)
  {
    v28 = [dictionaryCopy objectForKeyedSubscript:@"placeType"];
    v65 = [(MOTemplateLoader *)self _placeTypeFromString:v28];
  }

  else
  {
    v65 = 0;
  }

  v29 = [dictionaryCopy objectForKeyedSubscript:@"time"];

  if (v29)
  {
    v30 = [dictionaryCopy objectForKeyedSubscript:@"time"];
    v64 = [(MOTemplateLoader *)self _timeFromString:v30];
  }

  else
  {
    v64 = 0;
  }

  v31 = [dictionaryCopy objectForKeyedSubscript:@"peopleClassification"];

  if (v31)
  {
    v32 = [dictionaryCopy objectForKeyedSubscript:@"peopleClassification"];
    v63 = [(MOTemplateLoader *)self _peopleClassificationFromString:v32];
  }

  else
  {
    v63 = 0;
  }

  v33 = [dictionaryCopy objectForKeyedSubscript:@"bundleType"];

  if (v33)
  {
    v34 = [dictionaryCopy objectForKeyedSubscript:@"bundleType"];
    v62 = [(MOTemplateLoader *)self _bundleTypeFromString:v34];
  }

  else
  {
    v62 = 0;
  }

  v35 = v5;
  v36 = [dictionaryCopy objectForKeyedSubscript:@"personName"];

  if (v36)
  {
    v37 = [dictionaryCopy objectForKeyedSubscript:@"personName"];
    intValue = [v37 intValue];

    v61 = [(MOTemplateLoader *)self _hasItemFromInt:intValue];
  }

  else
  {
    v61 = 0;
  }

  v39 = [dictionaryCopy objectForKeyedSubscript:@"placeName"];

  if (v39)
  {
    v39 = [dictionaryCopy objectForKeyedSubscript:@"placeName"];
    intValue2 = [v39 intValue];

    LOBYTE(v39) = [(MOTemplateLoader *)self _hasItemFromInt:intValue2];
  }

  v41 = [dictionaryCopy objectForKeyedSubscript:@"cityName"];

  if (v41)
  {
    v41 = [dictionaryCopy objectForKeyedSubscript:@"cityName"];
    intValue3 = [v41 intValue];

    LOBYTE(v41) = [(MOTemplateLoader *)self _hasItemFromInt:intValue3];
  }

  v43 = [dictionaryCopy objectForKeyedSubscript:@"timeReference"];

  if (v43)
  {
    v43 = [dictionaryCopy objectForKeyedSubscript:@"timeReference"];
    intValue4 = [v43 intValue];

    LOBYTE(v43) = [(MOTemplateLoader *)self _hasItemFromInt:intValue4];
  }

  v45 = [dictionaryCopy objectForKeyedSubscript:@"patternType"];

  if (v45)
  {
    v46 = [dictionaryCopy objectForKeyedSubscript:@"patternType"];
    v45 = [(MOTemplateLoader *)self _patternTypeFromString:v46];
  }

  v47 = [dictionaryCopy objectForKeyedSubscript:@"globalTraits"];

  if (v47)
  {
    v48 = [dictionaryCopy objectForKeyedSubscript:@"globalTraits"];
    if ([v48 count])
    {
      v49 = [(MOTemplateLoader *)self _traitsFromArray:v48];
      v50 = [v49 mutableCopy];

      v35 = v50;
    }
  }

  v51 = [dictionaryCopy objectForKeyedSubscript:@"personalTraits"];

  if (v51)
  {
    v52 = [dictionaryCopy objectForKeyedSubscript:@"personalTraits"];
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
    v54 = [MOTemplate initWithTemplateIdentifier:v55 patternType:"initWithTemplateIdentifier:patternType:placeType:activityType:time:bundleType:peopleClassification:hasPersonName:hasPlaceName:hasCityName:hasTimeReference:templateString:utility:accuracy:satisfaction:generalizability:promptIndex:" placeType:v56 activityType:v45 time:v65 bundleType:v66 peopleClassification:v64 hasPersonName:v62 hasPlaceName:v7 hasCityName:v8 hasTimeReference:v16 templateString:v15 utility:v63 accuracy:v60 satisfaction:v68 generalizability:integerValue promptIndex:?];

    [(MOTemplate *)v54 setPhotoTrait:v53];
    if ([v35 count])
    {
      [(MOTemplate *)v54 setGlobalTraits:v35];
    }

    v57 = [dictionaryCopy objectForKeyedSubscript:@"templateVersion"];

    if (v57)
    {
      v58 = [dictionaryCopy objectForKeyedSubscript:@"templateVersion"];
      -[MOTemplate setPromptVersion:](v54, "setPromptVersion:", [v58 integerValue]);
    }
  }

  return v54;
}

- (id)_traitsFromArray:(id)array
{
  arrayCopy = array;
  v17 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = arrayCopy;
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

- (unint64_t)_activityTypeFromString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy isEqualToString:@"walking"];
  if ([stringCopy isEqualToString:@"strength training"])
  {
    v4 = 2;
  }

  if ([stringCopy isEqualToString:@"cycling"])
  {
    v4 = 3;
  }

  if ([stringCopy isEqualToString:@"running"])
  {
    v4 = 4;
  }

  if ([stringCopy isEqualToString:@"HIIT"])
  {
    v4 = 5;
  }

  if ([stringCopy isEqualToString:@"elliptical"])
  {
    v4 = 6;
  }

  if ([stringCopy isEqualToString:@"yoga"])
  {
    v4 = 7;
  }

  if ([stringCopy isEqualToString:@"swimming"])
  {
    v4 = 8;
  }

  if ([stringCopy isEqualToString:@"hiking"])
  {
    v5 = 9;
  }

  else
  {
    v5 = v4;
  }

  v6 = [stringCopy isEqualToString:@"workout"];

  if (v6)
  {
    return 10;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)_placeTypeFromString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy isEqualToString:@"restaurant"];
  if ([stringCopy isEqualToString:@"store"])
  {
    v4 = 2;
  }

  if ([stringCopy isEqualToString:@"hotel"])
  {
    v4 = 3;
  }

  if ([stringCopy isEqualToString:@"airport"])
  {
    v4 = 4;
  }

  if ([stringCopy isEqualToString:@"park"])
  {
    v4 = 5;
  }

  if ([stringCopy isEqualToString:@"cafe"])
  {
    v4 = 6;
  }

  if ([stringCopy isEqualToString:@"food market"])
  {
    v4 = 7;
  }

  if ([stringCopy isEqualToString:@"fitness center"])
  {
    v4 = 8;
  }

  if ([stringCopy isEqualToString:@"university"])
  {
    v4 = 9;
  }

  if ([stringCopy isEqualToString:@"school"])
  {
    v4 = 10;
  }

  if ([stringCopy isEqualToString:@"amusement park"])
  {
    v4 = 11;
  }

  if ([stringCopy isEqualToString:@"movie theater"])
  {
    v4 = 12;
  }

  if ([stringCopy isEqualToString:@"theater"])
  {
    v4 = 13;
  }

  if ([stringCopy isEqualToString:@"museum"])
  {
    v4 = 14;
  }

  if ([stringCopy isEqualToString:@"beach"])
  {
    v4 = 15;
  }

  if ([stringCopy isEqualToString:@"home"])
  {
    v4 = 16;
  }

  if ([stringCopy isEqualToString:@"work"])
  {
    v4 = 17;
  }

  if ([stringCopy isEqualToString:@"aquarium"])
  {
    v4 = 18;
  }

  if ([stringCopy isEqualToString:@"bakery"])
  {
    v4 = 19;
  }

  if ([stringCopy isEqualToString:@"brewery"])
  {
    v4 = 20;
  }

  if ([stringCopy isEqualToString:@"campground"])
  {
    v4 = 21;
  }

  if ([stringCopy isEqualToString:@"fire station"])
  {
    v4 = 22;
  }

  if ([stringCopy isEqualToString:@"library"])
  {
    v4 = 23;
  }

  if ([stringCopy isEqualToString:@"marina"])
  {
    v4 = 24;
  }

  if ([stringCopy isEqualToString:@"national park"])
  {
    v4 = 25;
  }

  if ([stringCopy isEqualToString:@"nightlife"])
  {
    v4 = 26;
  }

  if ([stringCopy isEqualToString:@"playground"])
  {
    v4 = 27;
  }

  if ([stringCopy isEqualToString:@"stadium"])
  {
    v4 = 28;
  }

  if ([stringCopy isEqualToString:@"winery"])
  {
    v4 = 29;
  }

  if ([stringCopy isEqualToString:@"zoo"])
  {
    v4 = 30;
  }

  if ([stringCopy isEqualToString:@"golf"])
  {
    v4 = 31;
  }

  if ([stringCopy isEqualToString:@"mini golf"])
  {
    v4 = 32;
  }

  if ([stringCopy isEqualToString:@"bowling"])
  {
    v4 = 33;
  }

  if ([stringCopy isEqualToString:@"planetarium"])
  {
    v4 = 34;
  }

  if ([stringCopy isEqualToString:@"baseball"])
  {
    v4 = 35;
  }

  if ([stringCopy isEqualToString:@"basketball"])
  {
    v5 = 36;
  }

  else
  {
    v5 = v4;
  }

  v6 = [stringCopy isEqualToString:@"national monument"];

  if (v6)
  {
    return 37;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)_timeFromString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy isEqualToString:@"morning"];
  if ([stringCopy isEqualToString:@"afternoon"])
  {
    v4 = 2;
  }

  if ([stringCopy isEqualToString:@"evening"])
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  v6 = [stringCopy isEqualToString:@"night"];

  if (v6)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)_peopleClassificationFromString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy isEqualToString:@"family"];
  if ([stringCopy isEqualToString:@"friends"])
  {
    v4 = 2;
  }

  if ([stringCopy isEqualToString:@"kids"])
  {
    v4 = 3;
  }

  if ([stringCopy isEqualToString:@"colleagues"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [stringCopy isEqualToString:@"pet"];

  if (v6)
  {
    return 5;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)_bundleTypeFromString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy isEqualToString:@"outing"];
  if ([stringCopy isEqualToString:@"trip"])
  {
    v4 = 2;
  }

  if ([stringCopy isEqualToString:@"shopping"])
  {
    v4 = 3;
  }

  if ([stringCopy isEqualToString:@"dining"])
  {
    v4 = 4;
  }

  if ([stringCopy isEqualToString:@"time at home"])
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = [stringCopy isEqualToString:@"contact"];

  if (v6)
  {
    return 6;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)_photoTraitFromString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy isEqualToString:@"Wedding"];
  if ([stringCopy isEqualToString:@"Birthday"])
  {
    v4 = 2;
  }

  if ([stringCopy isEqualToString:@"Celebration"])
  {
    v4 = 3;
  }

  if ([stringCopy isEqualToString:@"Ceremony"])
  {
    v4 = 4;
  }

  if ([stringCopy isEqualToString:@"Holiday"])
  {
    v4 = 5;
  }

  if ([stringCopy isEqualToString:@"Thanksgiving"])
  {
    v4 = 6;
  }

  if ([stringCopy isEqualToString:@"Halloween"])
  {
    v4 = 7;
  }

  if ([stringCopy isEqualToString:@"Christmas"])
  {
    v4 = 8;
  }

  if ([stringCopy isEqualToString:@"Festival"])
  {
    v4 = 9;
  }

  if ([stringCopy isEqualToString:@"Concert"])
  {
    v4 = 10;
  }

  if ([stringCopy isEqualToString:@"Parade"])
  {
    v4 = 11;
  }

  if ([stringCopy isEqualToString:@"Cooking"])
  {
    v4 = 12;
  }

  if ([stringCopy isEqualToString:@"Eating"])
  {
    v4 = 13;
  }

  if ([stringCopy isEqualToString:@"Camping"])
  {
    v4 = 14;
  }

  if ([stringCopy isEqualToString:@"Graduation"])
  {
    v4 = 15;
  }

  if ([stringCopy isEqualToString:@"Thanksgiving Dinner"])
  {
    v4 = 16;
  }

  if ([stringCopy isEqualToString:@"Carnival"])
  {
    v4 = 17;
  }

  if ([stringCopy isEqualToString:@"Easter Egg"])
  {
    v4 = 18;
  }

  if ([stringCopy isEqualToString:@"Jack O Lantern"])
  {
    v4 = 19;
  }

  if ([stringCopy isEqualToString:@"BabyReading"])
  {
    v4 = 20;
  }

  if ([stringCopy isEqualToString:@"ChildReading"])
  {
    v4 = 21;
  }

  if ([stringCopy isEqualToString:@"BabyBedtimeCuddles"])
  {
    v4 = 22;
  }

  if ([stringCopy isEqualToString:@"ChildBedtimeCuddles"])
  {
    v4 = 23;
  }

  if ([stringCopy isEqualToString:@"Board Game"])
  {
    v4 = 24;
  }

  if ([stringCopy isEqualToString:@"Swimming"])
  {
    v4 = 25;
  }

  if ([stringCopy isEqualToString:@"SwimmingBeach"])
  {
    v4 = 26;
  }

  if ([stringCopy isEqualToString:@"SwimmingPool"])
  {
    v4 = 27;
  }

  if ([stringCopy isEqualToString:@"Surfing"])
  {
    v4 = 28;
  }

  if ([stringCopy isEqualToString:@"Underwater Diving"])
  {
    v4 = 29;
  }

  if ([stringCopy isEqualToString:@"Snorkeling"])
  {
    v4 = 30;
  }

  if ([stringCopy isEqualToString:@"Scuba"])
  {
    v4 = 31;
  }

  if ([stringCopy isEqualToString:@"Skiing"])
  {
    v4 = 32;
  }

  if ([stringCopy isEqualToString:@"Snowboarding"])
  {
    v4 = 33;
  }

  if ([stringCopy isEqualToString:@"Sledding"])
  {
    v4 = 34;
  }

  if ([stringCopy isEqualToString:@"Snow Person"])
  {
    v4 = 35;
  }

  if ([stringCopy isEqualToString:@"Snowball"])
  {
    v4 = 36;
  }

  if ([stringCopy isEqualToString:@"SnowPlay"])
  {
    v4 = 37;
  }

  if ([stringCopy isEqualToString:@"Hiking"])
  {
    v4 = 38;
  }

  if ([stringCopy isEqualToString:@"Dancing"])
  {
    v4 = 39;
  }

  if ([stringCopy isEqualToString:@"ChildPlay"])
  {
    v4 = 40;
  }

  if ([stringCopy isEqualToString:@"BabyPlay"])
  {
    v4 = 41;
  }

  if ([stringCopy isEqualToString:@"Fireworks"])
  {
    v4 = 42;
  }

  if ([stringCopy isEqualToString:@"Sunrise"])
  {
    v4 = 43;
  }

  if ([stringCopy isEqualToString:@"Sunset Sunrise"])
  {
    v4 = 44;
  }

  if ([stringCopy isEqualToString:@"Rainbow"])
  {
    v4 = 45;
  }

  if ([stringCopy isEqualToString:@"Waterfall"])
  {
    v4 = 46;
  }

  if ([stringCopy isEqualToString:@"Lunar Eclipse"])
  {
    v4 = 47;
  }

  if ([stringCopy isEqualToString:@"Eclipse"])
  {
    v4 = 48;
  }

  if ([stringCopy isEqualToString:@"Celestial Body"])
  {
    v4 = 49;
  }

  if ([stringCopy isEqualToString:@"Star"])
  {
    v4 = 50;
  }

  if ([stringCopy isEqualToString:@"Wildlife"])
  {
    v4 = 51;
  }

  if ([stringCopy isEqualToString:@"Flower"])
  {
    v4 = 52;
  }

  if ([stringCopy isEqualToString:@"Blizzard"])
  {
    v4 = 53;
  }

  if ([stringCopy isEqualToString:@"Snow"])
  {
    v4 = 54;
  }

  if ([stringCopy isEqualToString:@"Underwater"])
  {
    v4 = 55;
  }

  if ([stringCopy isEqualToString:@"Basketball"])
  {
    v4 = 56;
  }

  if ([stringCopy isEqualToString:@"Soccer"])
  {
    v4 = 57;
  }

  if ([stringCopy isEqualToString:@"Football"])
  {
    v4 = 58;
  }

  if ([stringCopy isEqualToString:@"Baseball"])
  {
    v4 = 59;
  }

  if ([stringCopy isEqualToString:@"Hockey"])
  {
    v4 = 60;
  }

  if ([stringCopy isEqualToString:@"Ice Hockey"])
  {
    v4 = 61;
  }

  if ([stringCopy isEqualToString:@"Cycling"])
  {
    v4 = 62;
  }

  if ([stringCopy isEqualToString:@"Cake Decorating"])
  {
    v4 = 63;
  }

  if ([stringCopy isEqualToString:@"Bowling"])
  {
    v4 = 64;
  }

  if ([stringCopy isEqualToString:@"Karaoke"])
  {
    v4 = 65;
  }

  if ([stringCopy isEqualToString:@"Golf"])
  {
    v4 = 66;
  }

  if ([stringCopy isEqualToString:@"Baby"])
  {
    v4 = 67;
  }

  if ([stringCopy isEqualToString:@"Vineyard"])
  {
    v4 = 68;
  }

  if ([stringCopy isEqualToString:@"Log Cabin"])
  {
    v4 = 69;
  }

  if ([stringCopy isEqualToString:@"Nightclub"])
  {
    v4 = 70;
  }

  if ([stringCopy isEqualToString:@"Farm"])
  {
    v4 = 71;
  }

  if ([stringCopy isEqualToString:@"Mountain Biking"])
  {
    v4 = 72;
  }

  if ([stringCopy isEqualToString:@"Mountain Bike"])
  {
    v4 = 73;
  }

  if ([stringCopy isEqualToString:@"Ski Mountaineering"])
  {
    v4 = 74;
  }

  if ([stringCopy isEqualToString:@"Mountain"])
  {
    v4 = 75;
  }

  if ([stringCopy isEqualToString:@"Forest"])
  {
    v4 = 76;
  }

  if ([stringCopy isEqualToString:@"Parasailing"])
  {
    v4 = 77;
  }

  if ([stringCopy isEqualToString:@"Sailing"])
  {
    v4 = 78;
  }

  if ([stringCopy isEqualToString:@"Kayaking"])
  {
    v4 = 79;
  }

  if ([stringCopy isEqualToString:@"Cruise Ship"])
  {
    v4 = 80;
  }

  if ([stringCopy isEqualToString:@"Shore"])
  {
    v4 = 81;
  }

  if ([stringCopy isEqualToString:@"Carousel"])
  {
    v4 = 82;
  }

  if ([stringCopy isEqualToString:@"Ferris Wheel"])
  {
    v4 = 83;
  }

  if ([stringCopy isEqualToString:@"Lunar New Year’s Eve"])
  {
    v4 = 84;
  }

  if ([stringCopy isEqualToString:@"Lunar New Year’s Day"])
  {
    v4 = 85;
  }

  if ([stringCopy isEqualToString:@"Valentine’s Day"])
  {
    v4 = 86;
  }

  if ([stringCopy isEqualToString:@"Christmas Eve"])
  {
    v4 = 87;
  }

  if ([stringCopy isEqualToString:@"New Year’s Eve"])
  {
    v4 = 88;
  }

  if ([stringCopy isEqualToString:@"New Year’s Day"])
  {
    v4 = 89;
  }

  if ([stringCopy isEqualToString:@"Independence Day_US"])
  {
    v4 = 90;
  }

  if ([stringCopy isEqualToString:@"Diwali"])
  {
    v4 = 91;
  }

  if ([stringCopy isEqualToString:@"Cinco De Mayo"])
  {
    v4 = 92;
  }

  if ([stringCopy isEqualToString:@"Earth Day"])
  {
    v4 = 93;
  }

  if ([stringCopy isEqualToString:@"St. Patrick’s Day"])
  {
    v4 = 94;
  }

  if ([stringCopy isEqualToString:@"Memorial Day"])
  {
    v4 = 95;
  }

  if ([stringCopy isEqualToString:@"Labor Day"])
  {
    v4 = 96;
  }

  if ([stringCopy isEqualToString:@"Mother’s Day"])
  {
    v5 = 97;
  }

  else
  {
    v5 = v4;
  }

  v6 = [stringCopy isEqualToString:@"Father’s Day"];

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