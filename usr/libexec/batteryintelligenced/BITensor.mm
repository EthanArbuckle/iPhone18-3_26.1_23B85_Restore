@interface BITensor
+ (BOOL)verifyArraysHaveSameCount:(id)a3;
+ (id)create3DMultiArrayFromFeatureArrays:(id)a3 withInputShape:(id)a4 usingFeatureDimensionsDict:(id)a5;
+ (id)createSubArraysFromArrays:(id)a3 fromStartIndex:(unint64_t)a4 withSize:(unint64_t)a5;
+ (id)getValuesFrom2DMultiArray:(id)a3 withFeatureNamesForDimensions:(id)a4;
+ (id)getValuesFrom3DMultiArray:(id)a3 withFeatureNamesForDimensions:(id)a4;
+ (id)log;
@end

@implementation BITensor

+ (id)log
{
  v2 = qword_100057928;
  if (!qword_100057928)
  {
    v3 = os_log_create("com.apple.batteryintelligence", "tensorhandling");
    v4 = qword_100057928;
    qword_100057928 = v3;

    v2 = qword_100057928;
  }

  return v2;
}

+ (BOOL)verifyArraysHaveSameCount:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    if ([v4 count] == 1)
    {
      v5 = 1;
    }

    else
    {
      v6 = objc_alloc_init(NSMutableArray);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [v7 objectForKey:{*(*(&v21 + 1) + 8 * i), v21}];
            v13 = [v12 count];

            v14 = [NSNumber numberWithUnsignedInteger:v13];
            [v6 addObject:v14];
          }

          v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v9);
      }

      v15 = [v6 objectAtIndex:0];
      v16 = [v15 unsignedIntValue];

      if ([v6 count] >= 2)
      {
        v17 = 1;
        do
        {
          v18 = [v6 objectAtIndex:{v17, v21}];
          v19 = [v18 unsignedIntValue];

          v5 = v19 == v16;
          if (v19 != v16)
          {
            break;
          }

          ++v17;
        }

        while ([v6 count] > v17);
      }

      else
      {
        v5 = 1;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)create3DMultiArrayFromFeatureArrays:(id)a3 withInputShape:(id)a4 usingFeatureDimensionsDict:(id)a5
{
  v8 = a3;
  v9 = a4;
  v51 = a5;
  if (![BITensor verifyArraysHaveSameCount:v8])
  {
    v11 = [a1 log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002FFE0();
    }

    goto LABEL_58;
  }

  if ([v9 count] != 3)
  {
    v11 = [a1 log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100030020(v9, v11);
    }

LABEL_58:
    v45 = 0;
    goto LABEL_59;
  }

  if ([v9 count])
  {
    v10 = 0;
    while (1)
    {
      v11 = [v9 objectAtIndexedSubscript:v10];
      if ([v11 intValue]<= 0)
      {
        break;
      }

      if (!v10 && [v11 intValue]!= 1)
      {
        v42 = [a1 log];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_1000300A8();
        }

        goto LABEL_57;
      }

      if (++v10 >= [v9 count])
      {
        goto LABEL_9;
      }
    }

    v42 = [a1 log];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_100030118(v11, v10, v42);
    }

LABEL_57:

    goto LABEL_58;
  }

LABEL_9:
  v70 = 0;
  v60 = [[MLMultiArray alloc] initWithShape:v9 dataType:65568 error:&v70];
  v47 = v70;
  v61 = [v9 objectAtIndexedSubscript:1];
  v48 = v9;
  v12 = [v9 objectAtIndexedSubscript:2];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v49 = v8;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
  v50 = v12;
  if (v13)
  {
    v14 = v13;
    v53 = 0;
    v15 = &IOConnectCallMethod_ptr;
    v57 = *v67;
    v16 = v51;
    v52 = a1;
    do
    {
      v17 = 0;
      v54 = v14;
      do
      {
        if (*v67 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v66 + 1) + 8 * v17);
        v19 = [v16 allKeys];
        v20 = [v15[196] null];
        v21 = [v16 objectsForKeys:v19 notFoundMarker:v20];

        v22 = v19;
        v59 = v21;
        v58 = [NSDictionary dictionaryWithObjects:v19 forKeys:v21];
        v23 = [v58 objectForKey:v18];
        v24 = v23;
        if (v23)
        {
          if (([v23 intValue] & 0x80000000) != 0)
          {
            v27 = [a1 log];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              sub_1000301A0(v78, v24, &v79, v27);
            }
          }

          else
          {
            v56 = v22;
            v25 = [v24 intValue];
            v26 = [v12 unsignedIntValue];
            v27 = [a1 log];
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
            if (v25 >= v26)
            {
              v22 = v56;
              if (v28)
              {
                v39 = [v24 intValue];
                v40 = [v12 unsignedIntValue];
                *buf = 67109376;
                *v72 = v39;
                v22 = v56;
                *&v72[4] = 1024;
                *&v72[6] = v40;
                _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Found feature dimension of %d but specified an inputShape to create a multiarray with only %i features, skipping.", buf, 0xEu);
              }

              v14 = v54;
              v15 = &IOConnectCallMethod_ptr;
            }

            else
            {
              if (v28)
              {
                *buf = 138412546;
                *v72 = v18;
                *&v72[8] = 2112;
                v73 = v24;
                _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Placing %@ array at feature dimension %@ in multi-array", buf, 0x16u);
              }

              v29 = [obj objectForKey:v18];
              v62 = 0u;
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              v27 = v29;
              v30 = [v27 countByEnumeratingWithState:&v62 objects:v77 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = 0;
                v33 = *v63;
                while (2)
                {
                  for (i = 0; i != v31; i = i + 1)
                  {
                    if (*v63 != v33)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v35 = *(*(&v62 + 1) + 8 * i);
                    if (v32 >= [v61 unsignedIntValue])
                    {
                      a1 = v52;
                      v38 = [v52 log];
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                      {
                        v41 = [v27 count];
                        *buf = 134218242;
                        *v72 = v41;
                        *&v72[8] = 2112;
                        v73 = v61;
                        _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Warning: arrays contain %lu timesteps, but specified an inputShape to create a multiarray with %@ timesteps.", buf, 0x16u);
                      }

                      goto LABEL_38;
                    }

                    v76[0] = &off_10004D408;
                    v36 = [NSNumber numberWithUnsignedInteger:v32];
                    v76[1] = v36;
                    v76[2] = v24;
                    v37 = [NSArray arrayWithObjects:v76 count:3];
                    [v60 setObject:v35 forKeyedSubscript:v37];

                    ++v32;
                  }

                  v31 = [v27 countByEnumeratingWithState:&v62 objects:v77 count:16];
                  a1 = v52;
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_38:

              ++v53;
              v12 = v50;
              v16 = v51;
              v14 = v54;
              v15 = &IOConnectCallMethod_ptr;
              v22 = v56;
            }
          }
        }

        else
        {
          v27 = [a1 log];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v72 = v18;
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "No feature dimension defined in featureNamesAndDimensions for %@ array, skipping..", buf, 0xCu);
          }
        }

        v17 = v17 + 1;
      }

      while (v17 != v14);
      v14 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
    }

    while (v14);
  }

  else
  {
    v53 = 0;
  }

  if (v53 >= [v12 intValue])
  {
    v44 = v60;
    v45 = v60;
    v9 = v48;
    v8 = v49;
    v11 = v47;
  }

  else
  {
    v43 = [a1 log];
    v9 = v48;
    v8 = v49;
    v11 = v47;
    v44 = v60;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v72 = v48;
      *&v72[8] = 2112;
      v73 = v50;
      v74 = 1024;
      v75 = v53;
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "inputShape of %@ indicates %@ desired features. But only successfully placed %d features into the array. Ensure featureDimensions dictionary contains a key and values for each dimension.", buf, 0x1Cu);
    }

    v45 = 0;
  }

LABEL_59:

  return v45;
}

+ (id)getValuesFrom2DMultiArray:(id)a3 withFeatureNamesForDimensions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableDictionary);
  v22 = [v6 shape];
  v9 = [v22 objectAtIndex:1];
  v10 = [v9 unsignedIntValue];

  v11 = [a1 log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10003020C(v10, v11);
  }

  if (v10)
  {
    v12 = 0;
    v13 = v10;
    while (1)
    {
      v14 = [NSNumber numberWithUnsignedInteger:v12];
      v15 = [v7 objectForKey:v14];

      if (!v15)
      {
        break;
      }

      v23[0] = &off_10004D408;
      v16 = [NSNumber numberWithUnsignedInteger:v12];
      v23[1] = v16;
      v17 = [NSArray arrayWithObjects:v23 count:2];
      v18 = [v6 objectForKeyedSubscript:v17];

      [v8 setObject:v18 forKeyedSubscript:v15];
      if (v13 == ++v12)
      {
        goto LABEL_7;
      }
    }

    v20 = [a1 log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100030284();
    }

    v19 = 0;
  }

  else
  {
LABEL_7:
    v19 = v8;
  }

  return v19;
}

+ (id)getValuesFrom3DMultiArray:(id)a3 withFeatureNamesForDimensions:(id)a4
{
  v6 = a3;
  v39 = a4;
  v7 = objc_alloc_init(NSMutableDictionary);
  v38 = v6;
  v8 = [v6 shape];
  v9 = [v8 objectAtIndex:1];
  v37 = [v9 unsignedIntValue];

  v34 = v8;
  v10 = [v8 objectAtIndex:2];
  v11 = [v10 unsignedIntValue];

  v33 = a1;
  v12 = [a1 log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000302F4(v37, v11, v12);
  }

  if (v11)
  {
    v13 = 0;
    v35 = v11;
    v36 = v7;
    v14 = &IOConnectCallMethod_ptr;
    v15 = v37;
    while (1)
    {
      v16 = objc_alloc_init(NSMutableArray);
      v17 = [v14[169] numberWithUnsignedInteger:v13];
      v18 = [v39 objectForKey:v17];

      if (!v18)
      {
        break;
      }

      if (v37)
      {
        v19 = 0;
        do
        {
          v40[0] = &off_10004D408;
          v20 = [v14[169] numberWithUnsignedInteger:v19];
          v40[1] = v20;
          [v14[169] numberWithUnsignedInteger:v13];
          v21 = v13;
          v22 = v14;
          v24 = v23 = v15;
          v40[2] = v24;
          v25 = [NSArray arrayWithObjects:v40 count:3];
          v26 = [v38 objectForKeyedSubscript:v25];

          v15 = v23;
          v14 = v22;
          v13 = v21;

          [v16 addObject:v26];
          ++v19;
        }

        while (v15 != v19);
      }

      v27 = [v16 copy];
      v7 = v36;
      [v36 setObject:v27 forKeyedSubscript:v18];

      if (++v13 == v35)
      {
        goto LABEL_10;
      }
    }

    v31 = [v33 log];
    v29 = v34;
    v30 = v38;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_100030284();
    }

    v28 = 0;
  }

  else
  {
LABEL_10:
    v28 = v7;
    v29 = v34;
    v30 = v38;
  }

  return v28;
}

+ (id)createSubArraysFromArrays:(id)a3 fromStartIndex:(unint64_t)a4 withSize:(unint64_t)a5
{
  v7 = a3;
  if ([BITensor verifyArraysHaveSameCount:v7])
  {
    v8 = [v7 allValues];
    v9 = [v8 objectAtIndex:0];

    if ([v9 count]>= a4)
    {
      if ([v9 count]- a4 >= a5)
      {
        v26 = objc_alloc_init(NSMutableDictionary);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v10 = v7;
        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v12)
        {
          v13 = v12;
          v23 = v9;
          v24 = v7;
          v14 = *v28;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v27 + 1) + 8 * i);
              v17 = [v10 objectForKey:v16, v23, v24];
              v18 = a4;
              v19 = [v17 subarrayWithRange:{a4, a5}];
              v20 = [v19 mutableCopy];

              [v26 setValue:v20 forKey:v16];
              v21 = [a1 log];
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v22 = [v20 count];
                *buf = 134218498;
                v33 = v22;
                v34 = 2112;
                v35 = v16;
                v36 = 2112;
                v37 = v20;
                _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Creating subarray of size %lu from array.. Subarray %@ values: %@ ", buf, 0x20u);
              }

              a4 = v18;
            }

            v13 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v13);
          v9 = v23;
          v7 = v24;
        }

        goto LABEL_12;
      }

      v10 = [a1 log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        v33 = a5;
        v34 = 2048;
        v35 = a4;
        v36 = 2048;
        v37 = [v9 count];
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Can't create subarray with length %lu starting from index %lu when array size is %lu", buf, 0x20u);
      }
    }

    else
    {
      v10 = [a1 log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000303BC(v9, a4, v10);
      }
    }

    v26 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v9 = [a1 log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10003037C();
  }

  v26 = 0;
LABEL_13:

  return v26;
}

@end