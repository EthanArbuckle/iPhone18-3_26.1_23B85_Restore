@interface PGTextFeature
+ (id)_stringToIndexFromTokens:(id)a3;
+ (id)_tokensFromString:(id)a3 lemmatize:(BOOL)a4;
+ (id)graphNamesForNode:(id)a3 locationHelper:(id)a4;
+ (id)mergedTextFeatureFromTextFeatures:(id)a3;
+ (id)stringForFeatureOrigin:(unint64_t)a3;
+ (id)textFeaturesFromNode:(id)a3 type:(unint64_t)a4 weight:(double)a5 options:(unint64_t)a6 locationHelper:(id)a7;
+ (id)textFeaturesFromString:(id)a3 synonyms:(id)a4 type:(unint64_t)a5 weight:(double)a6 options:(unint64_t)a7;
+ (id)textFeaturesFromString:(id)a3 type:(unint64_t)a4 weight:(double)a5 options:(unint64_t)a6;
+ (unint64_t)_mostImportantTextFeatureTypeAmongTypes:(id)a3;
- (PGTextFeature)initWithString:(id)a3 originalString:(id)a4 type:(unint64_t)a5 weight:(double)a6 origin:(unint64_t)a7;
- (id)description;
@end

@implementation PGTextFeature

- (id)description
{
  v12.receiver = self;
  v12.super_class = PGTextFeature;
  v3 = [(PGTextFeature *)&v12 description];
  v4 = [PGFeature stringForFeatureType:self->_type];
  v5 = [(PGTextFeature *)self string];
  v6 = [(PGTextFeature *)self originalString];
  [(PGTextFeature *)self weight];
  v8 = v7;
  v9 = [PGTextFeature stringForFeatureOrigin:[(PGTextFeature *)self origin]];
  v10 = [v3 stringByAppendingFormat:@": %@ -> %@ (original: %@, weight: %f, origin: %@)", v4, v5, v6, v8, v9];

  return v10;
}

- (PGTextFeature)initWithString:(id)a3 originalString:(id)a4 type:(unint64_t)a5 weight:(double)a6 origin:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = PGTextFeature;
  v15 = [(PGTextFeature *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_string, a3);
    objc_storeStrong(&v16->_originalString, a4);
    v16->_type = a5;
    v16->_weight = a6;
    v16->_origin = a7;
  }

  return v16;
}

+ (unint64_t)_mostImportantTextFeatureTypeAmongTypes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 vipTextFeatureTypes];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v4 containsObject:{v9, v12}])
        {
          v6 = [v9 unsignedIntegerValue];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)mergedTextFeatureFromTextFeatures:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 anyObject];
    if (v6 == 1)
    {
      v8 = v7;
      v9 = v8;
    }

    else
    {
      v41 = a1;
      v42 = v7;
      v11 = [v7 string];
      v12 = [MEMORY[0x277CBEB18] array];
      v13 = [MEMORY[0x277CCA940] set];
      v14 = [MEMORY[0x277CCA940] set];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v43 = v4;
      v15 = v4;
      v16 = [v15 countByEnumeratingWithState:&v46 objects:v51 count:16];
      v45 = v13;
      if (v16)
      {
        v17 = v16;
        v18 = *v47;
        v19 = 0.0;
        obj = v15;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            v21 = v14;
            if (*v47 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v46 + 1) + 8 * i);
            v23 = [v22 string];
            v24 = v11;
            v25 = [v23 isEqualToString:v11];

            if ((v25 & 1) == 0)
            {
              v30 = +[PGLogging sharedLogging];
              v31 = [v30 loggingConnection];

              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_ERROR, "Request to squash text features that don't have the same string", buf, 2u);
              }

              v9 = 0;
              v8 = v42;
              v4 = v43;
              v14 = v21;
              v32 = obj;
              goto LABEL_33;
            }

            v26 = [v22 originalString];
            [v12 addObject:v26];

            [v22 weight];
            if (v27 > v19)
            {
              v19 = v27;
            }

            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "type")}];
            v13 = v45;
            [v45 addObject:v28];

            v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "origin")}];
            v14 = v21;
            [v21 addObject:v29];

            v11 = v24;
          }

          v15 = obj;
          v17 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v19 = 0.0;
      }

      v24 = v11;
      if ([v14 count] == 1)
      {
        v33 = [v14 anyObject];
        v34 = [v33 integerValue];
      }

      else if ([v14 containsObject:&unk_284482B50])
      {
        v34 = 1;
      }

      else
      {
        v34 = 6;
      }

      v8 = v42;
      if ([v13 count] == 1)
      {
        v35 = [v13 anyObject];
        v36 = [v35 integerValue];
      }

      else
      {
        v37 = [v41 _mostImportantTextFeatureTypeAmongTypes:v13];
        if (v37)
        {
          v36 = v37;
        }

        else
        {
          v36 = 22;
        }
      }

      v4 = v43;
      v38 = [PGTextFeature alloc];
      v32 = [v12 componentsJoinedByString:@" / "];
      v9 = [(PGTextFeature *)v38 initWithString:v24 originalString:v32 type:v36 weight:v34 origin:v19];
LABEL_33:
    }
  }

  else
  {
    v10 = +[PGLogging sharedLogging];
    v8 = [v10 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "Request to merge text features with empty array", buf, 2u);
    }

    v9 = 0;
  }

  v39 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)stringForFeatureOrigin:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788804B8[a3 - 1];
  }
}

+ (id)graphNamesForNode:(id)a3 locationHelper:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [v6 label];
  v10 = [v6 domain];
  if ([v6 domain] == 103)
  {
    v11 = [v6 label];
    v12 = [v11 isEqualToString:@"ShortTrip"];

    if (v12)
    {
      if ([@"PGHighlightShortTripSearchableText" length])
      {
        [v8 addObject:@"PGHighlightShortTripSearchableText"];
      }

      else
      {
        v21 = +[PGLogging sharedLogging];
        v22 = [v21 loggingConnection];

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v33 = 138412290;
          v34 = v6;
          _os_log_error_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_ERROR, "Error: nil or empty localizedName from node %@", &v33, 0xCu);
        }
      }

      v23 = [v6 graph];
      v14 = [v23 anyNodeForLabel:@"LongTrip" domain:103 properties:0];

      if (v14)
      {
        if ([@"PGHighlightTripSearchableText" length])
        {
          [v8 addObject:@"PGHighlightTripSearchableText"];
          goto LABEL_49;
        }

        v29 = +[PGLogging sharedLogging];
        v17 = [v29 loggingConnection];

        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
LABEL_48:

          goto LABEL_49;
        }

        v33 = 138412290;
        v34 = v14;
        v25 = "Error: nil or empty localizedName from node %@";
        v26 = v17;
        v27 = 12;
      }

      else
      {
        v24 = +[PGLogging sharedLogging];
        v17 = [v24 loggingConnection];

        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_48;
        }

        LOWORD(v33) = 0;
        v25 = "Highlight type node 'kPGGraphNodeHighlightTypeTrip' non found in graph";
        v26 = v17;
        v27 = 2;
      }

      _os_log_error_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_ERROR, v25, &v33, v27);
      goto LABEL_48;
    }
  }

  if (![objc_opt_class() conformsToProtocol:&unk_284499510])
  {
    if (v10 == 300)
    {
      v20 = [v6 name];
      v18 = [v20 lowercaseString];

      if (![v18 length])
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v10 != 201)
      {
        if (v10 == 200 && [v9 isEqualToString:@"Country"])
        {
          v15 = [v6 fullname];
          v14 = v15;
          if (!v15 || ![v15 length])
          {
            v32 = +[PGLogging sharedLogging];
            v17 = [v32 loggingConnection];

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v33 = 138412290;
              v34 = v6;
              _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Error: nil or empty fullname from node %@", &v33, 0xCu);
            }

            goto LABEL_48;
          }

          goto LABEL_15;
        }

        v18 = [v6 name];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [v18 stringValue];
        }

        else
        {
          v19 = v18;
        }

        v28 = v19;
        if (!v19 || ![v19 length])
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v18 = [v6 shortenedNameWithLocationHelper:v7];
      if (![v18 length])
      {
        v28 = [v6 name];
        if (![v28 length])
        {
LABEL_41:

          goto LABEL_42;
        }

LABEL_40:
        [v8 addObject:v28];
        goto LABEL_41;
      }
    }

    [v8 addObject:v18];
LABEL_42:

    goto LABEL_43;
  }

  v13 = [a1 _localizedNameForLocalizableNode:v6];
  v14 = v13;
  if (!v13 || ![v13 length])
  {
    v16 = +[PGLogging sharedLogging];
    v17 = [v16 loggingConnection];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v33 = 138412290;
      v34 = v6;
      _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Error: nil or empty localizedName from node %@", &v33, 0xCu);
    }

    goto LABEL_48;
  }

LABEL_15:
  [v8 addObject:v14];
LABEL_49:

LABEL_43:
  v30 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)textFeaturesFromString:(id)a3 synonyms:(id)a4 type:(unint64_t)a5 weight:(double)a6 options:(unint64_t)a7
{
  v7 = a7;
  v79[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = v7 & 8;
  v15 = v11;
  v16 = [MEMORY[0x277CBEB58] set];
  if ((v7 & 0x4C) != 0)
  {
    v17 = [a1 _tokensFromString:v15 lemmatize:v14 != 0];
  }

  else
  {
    v79[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:1];
  }

  v18 = v17;
  v52 = [MEMORY[0x277CBEB38] dictionary];
  v46 = v7;
  v47 = v18;
  if ((v7 & 0x40) != 0)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v20)
    {
      v21 = v20;
      v49 = v13;
      v22 = *v74;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v74 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v52 setObject:&unk_2844870C8 forKeyedSubscript:*(*(&v73 + 1) + 8 * i)];
        }

        v21 = [v19 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v21);
      v13 = v49;
    }
  }

  else
  {
    v19 = [a1 _stringToIndexFromTokens:v18];
    if (v19)
    {
      [v52 setObject:&unk_2844870C8 forKeyedSubscript:v19];
    }
  }

  v45 = [v52 count];
  if (v45 < 2)
  {
    v24 = 1;
  }

  else
  {
    v24 = 4;
  }

  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __69__PGTextFeature_textFeaturesFromString_synonyms_type_weight_options___block_invoke;
  v66[3] = &unk_278880470;
  v70 = a6;
  v50 = v15;
  v67 = v50;
  v71 = a5;
  v72 = v24;
  v48 = v13;
  v68 = v48;
  v53 = v16;
  v69 = v53;
  [v52 enumerateKeysAndObjectsUsingBlock:v66];
  v65 = 0u;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v25 = v12;
  v26 = [v25 countByEnumeratingWithState:&v62 objects:v77 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v63;
    v29 = @"_";
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v63 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v31 = [a1 _tokensFromString:*(*(&v62 + 1) + 8 * j) lemmatize:v14 != 0];
        if ([v31 count] <= 2)
        {
          v32 = [v31 componentsJoinedByString:v29];
          if (([v53 containsObject:v32] & 1) == 0)
          {
            v33 = v14;
            v34 = a1;
            v35 = v25;
            v36 = v29;
            v37 = [[PGTextFeature alloc] initWithString:v32 originalString:v50 type:a5 weight:2 origin:a6 * 0.75];
            [v48 addObject:v37];
            [v53 addObject:v32];

            v29 = v36;
            v25 = v35;
            a1 = v34;
            v14 = v33;
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v62 objects:v77 count:16];
    }

    while (v27);
  }

  if ((v46 & 0x10) != 0 && v45 <= 1)
  {
    v38 = [MEMORY[0x277CBEAF8] currentLocale];
    LODWORD(v39) = 1063675494;
    v40 = [MEMORY[0x277D27738] wordEmbeddingNeighborsWithDistanceForNgram:v50 locale:v38 limit:10 distance:v39];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __69__PGTextFeature_textFeaturesFromString_synonyms_type_weight_options___block_invoke_2;
    v54[3] = &unk_278880498;
    v58 = a1;
    v61 = v14 >> 3;
    v55 = v53;
    v59 = a6;
    v56 = v50;
    v60 = a5;
    v57 = v48;
    [v40 enumerateKeysAndObjectsUsingBlock:v54];
  }

  v41 = v69;
  v42 = v48;

  v43 = *MEMORY[0x277D85DE8];
  return v48;
}

void __69__PGTextFeature_textFeaturesFromString_synonyms_type_weight_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 56);
  v6 = a2;
  [a3 doubleValue];
  v8 = [[PGTextFeature alloc] initWithString:v6 originalString:*(a1 + 32) type:*(a1 + 64) weight:*(a1 + 72) origin:v5 * (1.0 - v7)];
  [*(a1 + 40) addObject:v8];
  [*(a1 + 48) addObject:v6];
}

void __69__PGTextFeature_textFeaturesFromString_synonyms_type_weight_options___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 56) _tokensFromString:v5 lemmatize:*(a1 + 80)];
  v8 = [v7 count];
  if (v8 > 2)
  {
    v13 = v8;
    v14 = +[PGLogging sharedLogging];
    v15 = [v14 loggingConnection];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v5;
      _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Ignoring PGTextFeature embedding n gram %@", &v20, 0xCu);
    }

    v16 = +[PGLogging sharedLogging];
    v17 = [v16 loggingConnection];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [*(a1 + 56) stringForFeatureType:*(a1 + 72)];
      v20 = 138413058;
      v21 = v5;
      v22 = 2112;
      v23 = v18;
      v24 = 2048;
      v25 = v13;
      v26 = 2048;
      v27 = 7;
      _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "Ignoring PGTextFeature %@ (%@) because it exceeds the maximum number of tokens %lu > %lu", &v20, 0x2Au);
    }
  }

  else
  {
    v9 = [v7 componentsJoinedByString:@"_"];
    if (v9 && ([*(a1 + 32) containsObject:v9] & 1) == 0)
    {
      v10 = *(a1 + 64);
      [v6 doubleValue];
      v12 = [[PGTextFeature alloc] initWithString:v9 originalString:*(a1 + 40) type:*(a1 + 72) weight:3 origin:v10 * (1.0 - v11)];
      [*(a1 + 48) addObject:v12];
      [*(a1 + 32) addObject:v9];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)_tokensFromString:(id)a3 lemmatize:(BOOL)a4
{
  v23 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v4 = [MEMORY[0x277D27738] tokensFromString:a3 options:1];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [MEMORY[0x277D3ACF8] lemmasForToken:v11 locale:0 options:{4, v18}];
          if ([v12 count])
          {
            v13 = [v12 firstObject];
          }

          else
          {
            v14 = MEMORY[0x277D3ACF8];
            v15 = [v11 lowercaseString];
            v13 = [v14 stringWithoutDiacriticsFromString:v15];
          }

          [v5 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [MEMORY[0x277D27738] tokensFromString:a3 options:4];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)textFeaturesFromString:(id)a3 type:(unint64_t)a4 weight:(double)a5 options:(unint64_t)a6
{
  v10 = [a3 lowercaseString];
  v11 = [a1 textFeaturesFromString:v10 synonyms:MEMORY[0x277CBEBF8] type:a4 weight:a6 options:a5];

  return v11;
}

+ (id)_stringToIndexFromTokens:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 count];
  if (v4 == 1)
  {
    v5 = [v3 firstObject];
LABEL_5:
    v7 = v5;
    goto LABEL_9;
  }

  v6 = v4;
  if (v4 <= 7)
  {
    v5 = [v3 componentsJoinedByString:@"_"];
    goto LABEL_5;
  }

  v8 = +[PGLogging sharedLogging];
  v9 = [v8 loggingConnection];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 138412802;
    v13 = v3;
    v14 = 2048;
    v15 = v6;
    v16 = 2048;
    v17 = 7;
    _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Ignoring PGTextFeature %@ because it exceeds the maximum number of tokens %lu > %lu", &v12, 0x20u);
  }

  v7 = 0;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)textFeaturesFromNode:(id)a3 type:(unint64_t)a4 weight:(double)a5 options:(unint64_t)a6 locationHelper:(id)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = [PGTextFeature graphNamesForNode:v12 locationHelper:a7];
  v27 = v12;
  if ((a6 & 0x20) != 0)
  {
    if ([objc_opt_class() conformsToProtocol:&unk_2844BA4D8])
    {
      v14 = [v12 localizedSynonyms];
      goto LABEL_8;
    }

    v15 = +[PGLogging sharedLogging];
    v16 = [v15 loggingConnection];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v26 = [v12 label];
      *buf = 138412546;
      v34 = v26;
      v35 = 2048;
      v36 = [v12 domain];
      _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, "Node label %@ domain %lu doesn't comform to PGGraphSynonymSupport protocol -> cannot get synonyms", buf, 0x16u);
    }
  }

  v14 = MEMORY[0x277CBEBF8];
LABEL_8:
  v17 = [MEMORY[0x277CBEB58] set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v13;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [a1 textFeaturesFromString:*(*(&v28 + 1) + 8 * i) synonyms:v14 type:a4 weight:a6 options:a5];
        [v17 unionSet:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

@end