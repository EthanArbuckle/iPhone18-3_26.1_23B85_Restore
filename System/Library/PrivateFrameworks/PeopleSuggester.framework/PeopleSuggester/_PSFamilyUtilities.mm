@interface _PSFamilyUtilities
+ (BOOL)contactMarkedAsFamilyInFeatureDict:(id)a3;
+ (BOOL)featureDictionaryPassesHeuristic:(id)a3;
+ (id)featureSet;
@end

@implementation _PSFamilyUtilities

+ (id)featureSet
{
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F2D8C378];

  return v2;
}

+ (BOOL)contactMarkedAsFamilyInFeatureDict:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [&unk_1F2D8C390 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(&unk_1F2D8C390);
        }

        v8 = [v3 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        v9 = [v8 BOOLValue];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [&unk_1F2D8C390 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)featureDictionaryPassesHeuristic:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          v10 = [v4 objectForKeyedSubscript:{v9, v29}];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = +[_PSLogging familyRecommenderChannel];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              [(_PSFamilyUtilities *)v9 featureDictionaryPassesHeuristic:v10, v17];
            }

            v16 = 0;
            goto LABEL_17;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = [v4 allValues];
    v12 = [v11 valueForKeyPath:@"@sum.self"];
    [v12 doubleValue];
    v14 = v13;

    if (v14 > 0.0)
    {
      v15 = [v4 objectForKeyedSubscript:@"contactParent"];
      if ([v15 integerValue] == 1)
      {
        v16 = 1;
      }

      else
      {
        v10 = [v4 objectForKeyedSubscript:@"contactFamilyRelation"];
        if ([v10 integerValue] == 1)
        {
          v16 = 1;
        }

        else
        {
          v17 = [v4 objectForKeyedSubscript:@"contactEmergencyFamily"];
          if ([v17 integerValue]== 1)
          {
            v16 = 1;
            v4 = v15;
LABEL_17:

            v15 = v4;
          }

          else
          {
            v20 = [v4 objectForKeyedSubscript:@"contactInHome"];
            v21 = [v20 integerValue];

            if (v21 == 1)
            {
              v16 = 1;
              goto LABEL_20;
            }

            v15 = [v4 objectForKeyedSubscript:@"callOutgoingRatio"];
            [v15 doubleValue];
            v23 = v22;
            if (v22 <= 0.0 && ([v4 objectForKeyedSubscript:@"firstPartyMsgOutgoingRatio"], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "doubleValue"), v24 <= 0.0))
            {
              v16 = 0;
            }

            else
            {
              v25 = [v4 objectForKeyedSubscript:{@"firstPartyMsgSixWeeks", v29}];
              [v25 doubleValue];
              if (v26 <= 0.0)
              {
                v27 = [v4 objectForKeyedSubscript:@"thirdPartyMsgTwoWeeks"];
                [v27 doubleValue];
                v16 = v28 > 0.0;
              }

              else
              {
                v16 = 1;
              }

              if (v23 > 0.0)
              {
                goto LABEL_19;
              }
            }
          }
        }
      }

LABEL_19:

      goto LABEL_20;
    }
  }

  v16 = 0;
LABEL_20:

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (void)featureDictionaryPassesHeuristic:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = objc_opt_class();
  v4 = v9;
  _os_log_fault_impl(&dword_1B5ED1000, a3, OS_LOG_TYPE_FAULT, "Feature value for key: %@ contained an unsupported type of %@", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

@end