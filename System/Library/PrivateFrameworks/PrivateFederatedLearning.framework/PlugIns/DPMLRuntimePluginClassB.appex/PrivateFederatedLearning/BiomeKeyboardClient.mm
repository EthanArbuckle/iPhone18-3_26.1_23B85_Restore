@interface BiomeKeyboardClient
+ (id)processEvents:(id)events withCount:(int)count;
@end

@implementation BiomeKeyboardClient

+ (id)processEvents:(id)events withCount:(int)count
{
  eventsCopy = events;
  v6 = +[NSMutableDictionary dictionary];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v7 = eventsCopy;
  v8 = [v7 countByEnumeratingWithState:&v98 objects:v108 count:16];
  v9 = &selRef_typesInCombination;
  v69 = v7;
  if (v8)
  {
    v10 = v8;
    v11 = *v99;
    countCopy = count;
    v67 = *v99;
    v68 = v6;
    do
    {
      v12 = 0;
      v70 = v10;
      do
      {
        if (*v99 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v98 + 1) + 8 * v12);
        eventBody = [v13 eventBody];
        locale = [eventBody locale];

        if (locale)
        {
          v72 = v12;
          eventBody2 = [v13 eventBody];
          locale2 = [eventBody2 locale];
          v18 = [locale2 containsString:@"+"];

          if (v18)
          {
            extension = [v9 + 454 extension];
            if (os_log_type_enabled(extension, OS_LOG_TYPE_ERROR))
            {
              sub_10001C83C(&v94, v95);
            }
          }

          else
          {
            eventBody3 = [v13 eventBody];
            tokenType = [eventBody3 tokenType];

            v22 = @"emojis";
            if (tokenType != 2)
            {
              eventBody4 = [v13 eventBody];
              tokenType2 = [eventBody4 tokenType];

              if (tokenType2 != 1)
              {
                extension = [v9 + 454 extension];
                if (os_log_type_enabled(extension, OS_LOG_TYPE_ERROR))
                {
                  sub_10001C810(&v92, v93);
                }

                goto LABEL_33;
              }

              eventBody5 = [v13 eventBody];
              locale3 = [eventBody5 locale];
              v27 = [locale3 componentsSeparatedByString:@"_"];
              v28 = [NSMutableArray arrayWithArray:v27];

              if ([v28 count] >= 2)
              {
                [v28 removeLastObject];
              }

              v22 = [v28 componentsJoinedByString:@"_"];
            }

            v29 = [v6 objectForKey:v22];

            if (!v29)
            {
              v30 = [FedStatsDataSampler samplerWithCount:countCopy];
              [v6 setObject:v30 forKeyedSubscript:v22];
            }

            v71 = v22;
            v31 = [v6 objectForKeyedSubscript:v22];
            v88 = 0u;
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            eventBody6 = [v13 eventBody];
            tokenFrequencies = [eventBody6 tokenFrequencies];

            obj = tokenFrequencies;
            v78 = [tokenFrequencies countByEnumeratingWithState:&v88 objects:v107 count:16];
            if (v78)
            {
              v76 = *v89;
              do
              {
                for (i = 0; i != v78; i = i + 1)
                {
                  if (*v89 != v76)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v35 = *(*(&v88 + 1) + 8 * i);
                  token = [v35 token];

                  if (token && [v35 count] >= 1)
                  {
                    v37 = 0;
                    do
                    {
                      token2 = [v35 token];
                      v106[0] = token2;
                      eventBody7 = [v13 eventBody];
                      locale4 = [eventBody7 locale];
                      v106[1] = locale4;
                      v41 = [NSArray arrayWithObjects:v106 count:2];
                      [v31 addItem:v41];

                      ++v37;
                    }

                    while (v37 < [v35 count]);
                  }
                }

                v78 = [obj countByEnumeratingWithState:&v88 objects:v107 count:16];
              }

              while (v78);
            }

            v6 = v68;
            v7 = v69;
            v9 = &selRef_typesInCombination;
            v10 = v70;
            extension = v71;
            v11 = v67;
          }

LABEL_33:
          v12 = v72;
          goto LABEL_34;
        }

        extension = [v9 + 454 extension];
        if (os_log_type_enabled(extension, OS_LOG_TYPE_ERROR))
        {
          sub_10001C868(&v96, v97);
        }

LABEL_34:

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [v7 countByEnumeratingWithState:&v98 objects:v108 count:16];
    }

    while (v10);
  }

  v42 = +[NSMutableDictionary dictionary];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v77 = v6;
  obja = [v77 countByEnumeratingWithState:&v84 objects:v105 count:16];
  if (obja)
  {
    v73 = *v85;
    do
    {
      v43 = 0;
      do
      {
        if (*v85 != v73)
        {
          objc_enumerationMutation(v77);
        }

        v79 = v43;
        v44 = *(*(&v84 + 1) + 8 * v43);
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v45 = [v77 objectForKeyedSubscript:v44];
        getResults = [v45 getResults];

        v47 = [getResults countByEnumeratingWithState:&v80 objects:v104 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v81;
          do
          {
            for (j = 0; j != v48; j = j + 1)
            {
              if (*v81 != v49)
              {
                objc_enumerationMutation(getResults);
              }

              v51 = *(*(&v80 + 1) + 8 * j);
              v52 = [v42 objectForKeyedSubscript:v44];

              if (!v52)
              {
                v53 = +[NSMutableDictionary dictionary];
                [v42 setObject:v53 forKeyedSubscript:v44];
              }

              v54 = [v42 objectForKeyedSubscript:v44];
              v55 = [v51 objectAtIndexedSubscript:1];
              v56 = [v54 objectForKeyedSubscript:v55];

              if (!v56)
              {
                v57 = +[NSMutableArray array];
                v58 = [v42 objectForKeyedSubscript:v44];
                v59 = [v51 objectAtIndexedSubscript:1];
                [v58 setObject:v57 forKeyedSubscript:v59];
              }

              v60 = [v42 objectForKeyedSubscript:v44];
              v61 = [v51 objectAtIndexedSubscript:1];
              v62 = [v60 objectForKeyedSubscript:v61];
              v63 = [v51 objectAtIndexedSubscript:0];
              [v62 addObject:v63];
            }

            v48 = [getResults countByEnumeratingWithState:&v80 objects:v104 count:16];
          }

          while (v48);
        }

        v43 = v79 + 1;
      }

      while ((v79 + 1) != obja);
      obja = [v77 countByEnumeratingWithState:&v84 objects:v105 count:16];
    }

    while (obja);
  }

  v64 = +[_PFLLog extension];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v103 = v42;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "BiomeKeyboardClient read data %@", buf, 0xCu);
  }

  return v42;
}

@end