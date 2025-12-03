@interface PLQueryHandler
+ (BOOL)_containsKey:(int)key inQuery:(id)query;
+ (BOOL)_findAndReplaceLatitudeLongitudeKeyInQuery:(id)query;
+ (BOOL)hasMatchingFetchingAlbumForSingleQuery:(id)query outKind:(int *)kind;
+ (BOOL)includesHiddenAssetsInQuery:(id)query;
+ (id)_assetsPredicateForPersonPredicate:(id)predicate assetObjectIDs:(id *)ds additionalAssetPredicate:(id)assetPredicate invert:(BOOL)invert inLibrary:(id)library;
+ (id)_convertQueryKeyTypeToString:(int)string;
+ (id)_convertQueryValueForAssetType:(int)type;
+ (id)_equalityPredicateForDoubleQuery:(id)query withValue:(double)value comparator:(int)comparator inLibrary:(id)library;
+ (id)_expressionForStringValue:(id)value inLibrary:(id)library;
+ (id)_getConvertedKeys:(id)keys;
+ (id)_getConvertedQueryKey:(id)key;
+ (id)_getTargetDateForTheLastDays:(int64_t)days weeks:(int64_t)weeks months:(int64_t)months years:(int64_t)years seconds:(int64_t)seconds targetDate:(id)date;
+ (id)_getTargetDateWithUnit:(int)unit dateValue:(id)value;
+ (id)_infoFromSingleQuery:(id)query;
+ (id)_personMatchesPredicateForCriteria:(id)criteria;
+ (id)_personNameQueryKeyPaths;
+ (id)_predicateForDoubleQuery:(id)query inLibrary:(id)library;
+ (id)_predicateForEmptyQuery:(id)query inLibrary:(id)library;
+ (id)_predicateForIsReferencedQuery:(id)query inLibrary:(id)library;
+ (id)_predicateForLoopingQuery:(id)query inLibrary:(id)library;
+ (id)_predicateForPersonQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria;
+ (id)_predicateForPersonUUIDQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria;
+ (id)_predicateForPersonUUIDinMomentForSharedLibraryQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria;
+ (id)_predicateForProResQuery:(id)query inLibrary:(id)library;
+ (id)_predicateForQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria;
+ (id)_predicateForRangeQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria;
+ (id)_predicateForSingleQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria;
+ (id)_predicateForTaggedWithGPSQuery:(id)query inLibrary:(id)library;
+ (id)_predicateForTextQuery:(id)query inLibrary:(id)library;
+ (id)_predicateFromAlbumKind:(int)kind negate:(BOOL)negate;
+ (id)_predicateFromSearchIndexForText:(id)text comparator:(int)comparator inLibrary:(id)library;
+ (id)_singleQueryInQuery:(id)query passingTest:(id)test;
+ (id)constructQueryFromData:(id)data;
+ (id)infoFromQuery:(id)query;
+ (id)predicateForQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria;
+ (id)queryFromInfo:(id)info;
+ (int)_convertComparatorToNumericComparator:(int)comparator;
+ (unint64_t)_comparatorToOperatorType:(int)type;
@end

@implementation PLQueryHandler

+ (BOOL)_findAndReplaceLatitudeLongitudeKeyInQuery:(id)query
{
  v22 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  if (![queryCopy hasFirst])
  {
    if (![queryCopy hasSecond])
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    second = [queryCopy second];
    v7 = [PLQueryHandler _findAndReplaceLatitudeLongitudeKeyInQuery:second];

    goto LABEL_8;
  }

  first = [queryCopy first];
  v5 = [PLQueryHandler _findAndReplaceLatitudeLongitudeKeyInQuery:first];

  hasSecond = [queryCopy hasSecond];
  v7 = hasSecond | v5;
  if (hasSecond && !v5)
  {
    goto LABEL_6;
  }

LABEL_8:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  singleQueries = [queryCopy singleQueries];
  v10 = [singleQueries countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(singleQueries);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 key] == 307 || objc_msgSend(v14, "key") == 308)
        {
          [v14 setKey:319];
          if ([v14 comparator] == 51)
          {
            v15 = 1;
            goto LABEL_19;
          }

          if ([v14 comparator] == 50)
          {
            v15 = 2;
LABEL_19:
            [v14 setComparator:v15];
          }

          v7 = 1;
          continue;
        }
      }

      v11 = [singleQueries countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v7 & 1;
}

+ (BOOL)includesHiddenAssetsInQuery:(id)query
{
  v3 = [self _singleQueryInQuery:query passingTest:&__block_literal_global_297];
  v4 = v3 != 0;

  return v4;
}

uint64_t __46__PLQueryHandler_includesHiddenAssetsInQuery___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 key] == 2 && objc_msgSend(v2, "hasComparator") && objc_msgSend(v2, "comparator") == 1)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)_singleQueryInQuery:(id)query passingTest:(id)test
{
  v23 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  testCopy = test;
  if (queryCopy)
  {
    if ([queryCopy singleQueriesCount])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      singleQueries = [queryCopy singleQueries];
      v9 = [singleQueries countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(singleQueries);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          if (testCopy[2](testCopy, v13))
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [singleQueries countByEnumeratingWithState:&v18 objects:v22 count:16];
            if (v10)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v14 = v13;

        if (v14)
        {
          goto LABEL_16;
        }
      }

      else
      {
LABEL_11:
      }
    }

    first = [queryCopy first];
    v14 = [self _singleQueryInQuery:first passingTest:testCopy];

    if (!v14)
    {
      second = [queryCopy second];
      v14 = [self _singleQueryInQuery:second passingTest:testCopy];
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_16:

  return v14;
}

+ (BOOL)_containsKey:(int)key inQuery:(id)query
{
  v4 = *&key;
  v20 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v6 = queryCopy;
  if (queryCopy)
  {
    if ([queryCopy singleQueriesCount])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      singleQueries = [v6 singleQueries];
      v8 = [singleQueries countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v8)
      {
LABEL_11:
        v12 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v9 = v8;
      v10 = *v16;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(singleQueries);
        }

        if ([*(*(&v15 + 1) + 8 * v11) key] == v4)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [singleQueries countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
      singleQueries = [v6 first];
      if (![PLQueryHandler _containsKey:v4 inQuery:singleQueries])
      {
        second = [v6 second];
        v12 = [PLQueryHandler _containsKey:v4 inQuery:second];

        goto LABEL_16;
      }
    }

    v12 = 1;
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

+ (id)_predicateForQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria
{
  v47 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  libraryCopy = library;
  criteriaCopy = criteria;
  if (!queryCopy)
  {
    v18 = 0;
    goto LABEL_48;
  }

  if (![queryCopy singleQueriesCount])
  {
    conjunction = [queryCopy conjunction];
    first = [queryCopy first];
    v10 = [PLQueryHandler _predicateForQuery:first inLibrary:libraryCopy changeDetectionCriteria:criteriaCopy];

    if (conjunction == 2)
    {
      if (v10)
      {
        v18 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v10];
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_47;
    }

    second = [queryCopy second];
    v23 = [PLQueryHandler _predicateForQuery:second inLibrary:libraryCopy changeDetectionCriteria:criteriaCopy];

    if (!v10 || !v23)
    {
      if (v23)
      {
        v18 = 0;
      }

      else
      {
        v18 = v10;
      }

      goto LABEL_46;
    }

    conjunction2 = [queryCopy conjunction];
    v25 = MEMORY[0x1E696AB28];
    if (conjunction2)
    {
      v40[0] = v10;
      v40[1] = v23;
      logDescription2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
      v27 = [v25 andPredicateWithSubpredicates:logDescription2];
    }

    else
    {
      v41[0] = v10;
      v41[1] = v23;
      logDescription2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
      v27 = [v25 orPredicateWithSubpredicates:logDescription2];
    }

    v18 = v27;
    goto LABEL_45;
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(queryCopy, "singleQueriesCount")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v35 = queryCopy;
  singleQueries = [queryCopy singleQueries];
  v12 = [singleQueries countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(singleQueries);
        }

        v17 = [PLQueryHandler _predicateForSingleQuery:*(*(&v36 + 1) + 8 * i) inLibrary:libraryCopy changeDetectionCriteria:criteriaCopy];
        if (v17)
        {
          [v10 addObject:v17];
        }

        else
        {
          v14 = 1;
        }
      }

      v13 = [singleQueries countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  if (![v10 count])
  {
    v18 = 0;
    queryCopy = v35;
    goto LABEL_30;
  }

  queryCopy = v35;
  if (![v35 conjunction])
  {
    v21 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v10];
    goto LABEL_29;
  }

  if ([v35 conjunction] == 1)
  {
    v21 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v10];
LABEL_29:
    v18 = v21;
    goto LABEL_30;
  }

  if ([v35 conjunction] == 2)
  {
    v28 = MEMORY[0x1E696AB28];
    firstObject = [v10 firstObject];
    v18 = [v28 notPredicateWithSubpredicate:firstObject];

    if ([v10 count] >= 2)
    {
      v30 = PLUserSmartAlbumGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        logDescription = [v35 logDescription];
        *buf = 138412546;
        v43 = logDescription;
        v44 = 2112;
        v45 = v18;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Only processing the first single query for NOT conjection, query: %@, predicate: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_30:
  if (v14)
  {
    v23 = PLUserSmartAlbumGetLog();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
LABEL_46:

      goto LABEL_47;
    }

    logDescription2 = [queryCopy logDescription];
    *buf = 138412546;
    v43 = logDescription2;
    v44 = 2112;
    v45 = v18;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Dropping some unsupported predicate, query: %@, predicate: %@", buf, 0x16u);
LABEL_45:

    goto LABEL_46;
  }

LABEL_47:

LABEL_48:
  v32 = PLUserSmartAlbumGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    logDescription3 = [queryCopy logDescription];
    *buf = 138412546;
    v43 = logDescription3;
    v44 = 2112;
    v45 = v18;
    _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEBUG, "Query: %@, predicate: %@", buf, 0x16u);
  }

  return v18;
}

+ (id)predicateForQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = [PLQueryHandler _predicateForQuery:query inLibrary:library changeDetectionCriteria:criteria];
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForSmartAlbumExclusions"), 1}];
    v8 = MEMORY[0x1E696AB28];
    v12[0] = v6;
    v12[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v10 = [v8 andPredicateWithSubpredicates:v9];
  }

  else
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  return v10;
}

+ (id)_predicateForSingleQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria
{
  v55[2] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  libraryCopy = library;
  criteriaCopy = criteria;
  v52 = 0;
  if ([queryCopy comparator] == 50 || objc_msgSend(queryCopy, "comparator") == 51)
  {
    v11 = [PLQueryHandler _predicateForEmptyQuery:queryCopy inLibrary:libraryCopy];
LABEL_4:
    v12 = v11;
    goto LABEL_5;
  }

  if ([queryCopy comparator] == 30)
  {
    v11 = [PLQueryHandler _predicateForRangeQuery:queryCopy inLibrary:libraryCopy changeDetectionCriteria:criteriaCopy];
    goto LABEL_4;
  }

  if ([queryCopy key] == 402)
  {
    v11 = [PLQueryHandler _predicateForTextQuery:queryCopy inLibrary:libraryCopy];
    goto LABEL_4;
  }

  if ([queryCopy key] == 550)
  {
    v11 = [PLQueryHandler _predicateForPersonQuery:queryCopy inLibrary:libraryCopy changeDetectionCriteria:criteriaCopy];
    goto LABEL_4;
  }

  if ([queryCopy key] == 551)
  {
    v11 = [PLQueryHandler _predicateForPersonUUIDQuery:queryCopy inLibrary:libraryCopy changeDetectionCriteria:criteriaCopy];
    goto LABEL_4;
  }

  if ([queryCopy key] == 553)
  {
    v11 = [PLQueryHandler _predicateForPersonUUIDinMomentForSharedLibraryQuery:queryCopy inLibrary:libraryCopy changeDetectionCriteria:criteriaCopy];
    goto LABEL_4;
  }

  if ([queryCopy key] == 6)
  {
    v11 = [PLQueryHandler _predicateForIsReferencedQuery:queryCopy inLibrary:libraryCopy];
    goto LABEL_4;
  }

  if ([queryCopy valueType] == 2)
  {
    v11 = [PLQueryHandler _predicateForDoubleQuery:queryCopy inLibrary:libraryCopy];
    goto LABEL_4;
  }

  if ([queryCopy key] == 5)
  {
    firstValue = [queryCopy firstValue];
    v15 = integerFromData();

    if (v15 == 13)
    {
      v11 = [PLQueryHandler _predicateForLoopingQuery:queryCopy inLibrary:libraryCopy];
      goto LABEL_4;
    }
  }

  if ([queryCopy key] == 5 && +[PLQueryHandler hasMatchingFetchingAlbumForSingleQuery:outKind:](PLQueryHandler, "hasMatchingFetchingAlbumForSingleQuery:outKind:", queryCopy, &v52))
  {
    v11 = +[PLQueryHandler _predicateFromAlbumKind:negate:](PLQueryHandler, "_predicateFromAlbumKind:negate:", v52, [queryCopy comparator] == 2);
    goto LABEL_4;
  }

  if ([queryCopy key] == 319)
  {
    v11 = [PLQueryHandler _predicateForTaggedWithGPSQuery:queryCopy inLibrary:libraryCopy];
    goto LABEL_4;
  }

  if ([queryCopy key] == 600)
  {
    v12 = 0;
    goto LABEL_5;
  }

  if ([queryCopy key] == 1000)
  {
    if ([queryCopy comparator] == 2)
    {
      +[PLQueryHandler _predicateForAbleToUploadQuery];
    }

    else
    {
      +[PLQueryHandler _predicateForNotAbleToUploadQuery];
    }
    v11 = ;
    goto LABEL_4;
  }

  if ([queryCopy key] == 9)
  {
    v11 = [PLQueryHandler _predicateForProResQuery:queryCopy inLibrary:libraryCopy];
    goto LABEL_4;
  }

  v16 = [self _getConvertedKeys:queryCopy];
  v17 = v16;
  if (v16)
  {
    v51 = [v16 objectForKey:@"key"];
    if (![v51 length])
    {
      v12 = 0;
LABEL_59:

      goto LABEL_60;
    }

    v50 = [v17 objectForKey:@"firstValue"];
    v18 = [v17 objectForKey:@"comparator"];
    integerValue = [v18 integerValue];

    if (([queryCopy key] == 200 || objc_msgSend(queryCopy, "key") == 201) && (objc_msgSend(queryCopy, "comparator") == 1 || objc_msgSend(queryCopy, "comparator") == 2))
    {
      v20 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v21 = [v20 startOfDayForDate:v50];
      v22 = [PLQueryHandler _getTargetDateForTheLastDays:-1 weeks:0 months:0 years:0 seconds:0 targetDate:v21];
      comparator = [queryCopy comparator];
      v24 = objc_alloc(MEMORY[0x1E69BF2C0]);
      if (comparator == 1)
      {
        v25 = [v24 initWithConjunction:1];
        [v25 addIsAfterDateQueryKey:objc_msgSend(queryCopy withDate:{"key"), v21}];
        [v25 addIsBeforeDateQueryKey:objc_msgSend(queryCopy withDate:{"key"), v22}];
      }

      else
      {
        v25 = [v24 initWithConjunction:0];
        [v25 addIsBeforeDateQueryKey:objc_msgSend(queryCopy withDate:{"key"), v21}];
        [v25 addIsAfterDateQueryKey:objc_msgSend(queryCopy withDate:{"key"), v22}];
      }

      query = [v25 query];

      v34 = [PLQueryHandler predicateForQuery:query inLibrary:libraryCopy changeDetectionCriteria:criteriaCopy];
      goto LABEL_57;
    }

    v26 = [PLQueryHandler _comparatorToOperatorType:integerValue];
    if ([PLQueryHandler _isTextComparator:integerValue])
    {
      v27 = 3;
    }

    else
    {
      v27 = 0;
    }

    if ([queryCopy key] == 4)
    {
      v28 = MEMORY[0x1E696ABC8];
      v29 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"modernResources"];
      v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"($resource.resourceType == %d OR $resource.resourceType == %d) AND $resource.utiConformanceHint == %d", 0, 4, 2];
      v31 = @"resource";
LABEL_54:
      v32 = [v28 expressionForSubquery:v29 usingIteratorVariable:v31 predicate:v30];

      v20 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"%@.@count", v32];

LABEL_71:
      v27 = 0;
      v43 = 1;
LABEL_72:
      v21 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v50];
      v44 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v20 rightExpression:v21 modifier:0 type:v26 options:v27];
      v12 = v44;
      if ((v43 & 1) != 0 || !v44 || ![PLQueryHandler _needToNegateQueryForComparator:integerValue])
      {
        goto LABEL_58;
      }

      v22 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v12];
      query = [queryCopy copy];
      [query setComparator:50];
      v49 = [PLQueryHandler _predicateForSingleQuery:query inLibrary:libraryCopy changeDetectionCriteria:criteriaCopy];
      if (v49)
      {
        v45 = MEMORY[0x1E696AB28];
        v55[0] = v22;
        v55[1] = v49;
        v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
        v34 = [v45 orPredicateWithSubpredicates:v47];

        v12 = v47;
      }

      else
      {
        v46 = PLUserSmartAlbumGetLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          logDescription = [queryCopy logDescription];
          *buf = 138412290;
          v54 = logDescription;
          _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "Only negate the predicate, not checking null value for query: %@", buf, 0xCu);
        }

        v34 = v22;
      }

LABEL_57:
      v12 = v34;
LABEL_58:

      goto LABEL_59;
    }

    if ([queryCopy key] == 100)
    {
      if (([queryCopy hasFirstValue] & 1) == 0)
      {
        v28 = MEMORY[0x1E696ABC8];
        v29 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"albums"];
        v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$album.kind == %d AND $album.trashedState == %d", 2, 0];
        v31 = @"album";
        goto LABEL_54;
      }

      firstValue2 = [queryCopy firstValue];
      v36 = stringFromData();

      v37 = MEMORY[0x1E696ABC8];
      v38 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"albums"];
      v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$album.cloudGUID == %@ OR $album.uuid == %@", v36, v36];
      v40 = @"album";
    }

    else
    {
      if ([queryCopy key] != 500)
      {
        v20 = [PLQueryHandler _expressionForStringValue:v51 inLibrary:libraryCopy];
        v43 = 0;
        goto LABEL_72;
      }

      if (([queryCopy hasFirstValue] & 1) == 0)
      {
        v20 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"additionalAttributes.keywords.@count"];
        goto LABEL_71;
      }

      firstValue3 = [queryCopy firstValue];
      v36 = stringFromData();

      v37 = MEMORY[0x1E696ABC8];
      v38 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"additionalAttributes.keywords"];
      v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$keyword.title LIKE[cd] %@", v36];
      v40 = @"keyword";
    }

    v42 = [v37 expressionForSubquery:v38 usingIteratorVariable:v40 predicate:v39];

    v20 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"%@.@count", v42];

    goto LABEL_71;
  }

  v12 = 0;
LABEL_60:

LABEL_5:

  return v12;
}

+ (BOOL)hasMatchingFetchingAlbumForSingleQuery:(id)query outKind:(int *)kind
{
  firstValue = [query firstValue];
  v6 = integerFromData();

  v7 = v6 - 2;
  if ((v6 - 2) > 0xF || ((0xF77Fu >> v7) & 1) == 0)
  {
    return 0;
  }

  *kind = dword_19C60B99C[v7];
  return 1;
}

+ (id)_predicateForTaggedWithGPSQuery:(id)query inLibrary:(id)library
{
  libraryCopy = library;
  v7 = [self _getConvertedKeys:query];
  v8 = [v7 objectForKey:@"key"];
  if ([v8 length])
  {
    v9 = [v7 objectForKey:@"comparator"];
    integerValue = [v9 integerValue];

    v11 = [PLQueryHandler _comparatorToOperatorType:integerValue];
    v12 = [PLQueryHandler _expressionForStringValue:v8 inLibrary:libraryCopy];
    v13 = MEMORY[0x1E696ABC8];
    null = [MEMORY[0x1E695DFB0] null];
    v15 = [v13 expressionForConstantValue:null];

    v16 = MEMORY[0x1E696AB28];
    v17 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v12 rightExpression:v15 modifier:0 type:v11 options:0];
    v18 = [v16 notPredicateWithSubpredicate:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_predicateForProResQuery:(id)query inLibrary:(id)library
{
  queryCopy = query;
  v5 = +[PLManagedAsset predicateForProResAssets];
  comparator = [queryCopy comparator];

  if (comparator == 2)
  {
    v7 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v5];

    v5 = v7;
  }

  return v5;
}

+ (id)_predicateFromAlbumKind:(int)kind negate:(BOOL)negate
{
  negateCopy = negate;
  v5 = [PLFetchingAlbum predicateForAlbumKind:*&kind];
  if (negateCopy)
  {
    v6 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v5];

    v5 = v6;
  }

  return v5;
}

+ (id)_predicateForLoopingQuery:(id)query inLibrary:(id)library
{
  v4 = MEMORY[0x1E696AE18];
  queryCopy = query;
  v6 = [v4 predicateWithFormat:@"noindex:(kind) == %d AND noindex:(playbackStyle) == %d", 1, 5];
  comparator = [queryCopy comparator];

  if (comparator == 2)
  {
    v8 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v6];

    v6 = v8;
  }

  return v6;
}

+ (id)_predicateForIsReferencedQuery:(id)query inLibrary:(id)library
{
  comparator = [query comparator];
  v5 = MEMORY[0x1E69BF328];
  maskForReferencedAsset = [MEMORY[0x1E69BF328] maskForReferencedAsset];
  if (comparator == 2)
  {
    [v5 predicateForExcludeMask:maskForReferencedAsset useIndex:1];
  }

  else
  {
    [v5 predicateForIncludeMask:maskForReferencedAsset useIndex:1];
  }
  v7 = ;

  return v7;
}

+ (id)_assetsPredicateForPersonPredicate:(id)predicate assetObjectIDs:(id *)ds additionalAssetPredicate:(id)assetPredicate invert:(BOOL)invert inLibrary:(id)library
{
  invertCopy = invert;
  predicateCopy = predicate;
  assetPredicateCopy = assetPredicate;
  libraryCopy = library;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__37882;
  v37[4] = __Block_byref_object_dispose__37883;
  v38 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__37882;
  v35[4] = __Block_byref_object_dispose__37883;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__37882;
  v33 = __Block_byref_object_dispose__37883;
  v34 = 0;
  managedObjectContext = [libraryCopy managedObjectContext];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __110__PLQueryHandler__assetsPredicateForPersonPredicate_assetObjectIDs_additionalAssetPredicate_invert_inLibrary___block_invoke;
  v23 = &unk_1E756F910;
  v15 = predicateCopy;
  v24 = v15;
  v26 = v37;
  v27 = v35;
  v16 = assetPredicateCopy;
  v25 = v16;
  v28 = &v29;
  [managedObjectContext performBlockAndWait:&v20];

  if (v30[5])
  {
    if (invertCopy)
    {
      v17 = @"NONE self IN %@";
    }

    else
    {
      v17 = @"ANY self IN %@";
    }

    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:v17, v30[5], v20, v21, v22, v23, v24];
    if (!ds)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v18 = 0;
  if (ds)
  {
LABEL_6:
    *ds = v30[5];
  }

LABEL_7:

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v35, 8);

  _Block_object_dispose(v37, 8);

  return v18;
}

void __110__PLQueryHandler__assetsPredicateForPersonPredicate_assetObjectIDs_additionalAssetPredicate_invert_inLibrary___block_invoke(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695D5E0]);
  v3 = +[PLPerson entityName];
  v4 = [v2 initWithEntityName:v3];

  [v4 setPredicate:a1[4]];
  [v4 setResultType:1];
  v37 = 0;
  v5 = [v4 execute:&v37];
  v6 = v37;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (!*(*(a1[6] + 8) + 40))
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v6;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Error executing person query: %@", buf, 0xCu);
    }
  }

  v10 = *(*(a1[6] + 8) + 40);
  if (v10)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"personForFace", v10];
    v12 = objc_alloc(MEMORY[0x1E695D5E0]);
    v13 = +[PLDetectedFace entityName];
    v14 = [v12 initWithEntityName:v13];

    [v14 setPredicate:v11];
    [v14 setResultType:1];
    v36 = 0;
    v15 = [v14 execute:&v36];
    v16 = v36;
    v17 = *(a1[7] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v15;

    if (!*(*(a1[7] + 8) + 40))
    {
      v19 = PLBackendGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v16;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Error executing detectedFaces query: %@", buf, 0xCu);
      }
    }
  }

  v20 = *(*(a1[7] + 8) + 40);
  if (v20)
  {
    v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"detectedFaces", v20];
    v22 = v21;
    v23 = a1[5];
    if (v23)
    {
      v24 = MEMORY[0x1E696AB28];
      v38[0] = v21;
      v38[1] = v23;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
      v26 = [v24 andPredicateWithSubpredicates:v25];

      v22 = v26;
    }

    v27 = objc_alloc(MEMORY[0x1E695D5E0]);
    v28 = +[PLManagedAsset entityName];
    v29 = [v27 initWithEntityName:v28];

    [v29 setPredicate:v22];
    [v29 setResultType:1];
    v35 = 0;
    v30 = [v29 execute:&v35];
    v31 = v35;
    v32 = *(a1[8] + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v30;

    if (!*(*(a1[8] + 8) + 40))
    {
      v34 = PLBackendGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v31;
        _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Error executing assetObjectIDs query: %@", buf, 0xCu);
      }
    }
  }
}

+ (id)_predicateForPersonUUIDinMomentForSharedLibraryQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria
{
  queryCopy = query;
  libraryCopy = library;
  criteriaCopy = criteria;
  firstValue = [queryCopy firstValue];
  v12 = stringFromData();

  v13 = 0x1E696A000uLL;
  if (([queryCopy comparator] & 0xFFFFFFFE) == 0x16)
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personUUID == %@", v12];
    comparator = [queryCopy comparator];
    v16 = comparator == 23;
    if (v14)
    {
      v17 = comparator == 23;
      v18 = +[PLPerson entityName];
      [criteriaCopy addAttributeKeyPath:@"personUUID" forEntityName:v18];

      v19 = +[PLPerson entityName];
      [criteriaCopy addRelationshipKeyPath:@"detectedFaces" forEntityName:v19];

      v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"additionalAttributes.syndicationIdentifier"];
      v21 = [PLLibraryScope compoundPredicateForMarkingOnboardingPreviewAssetsWithRulePredicate:v20];
      v42 = 0;
      v22 = [self _assetsPredicateForPersonPredicate:v14 assetObjectIDs:&v42 additionalAssetPredicate:v21 invert:v17 inLibrary:libraryCopy];
      v23 = v42;

      v13 = 0x1E696A000;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v23 = 0;
LABEL_6:
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__37882;
  v40 = __Block_byref_object_dispose__37883;
  v41 = 0;
  managedObjectContext = [libraryCopy managedObjectContext];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __105__PLQueryHandler__predicateForPersonUUIDinMomentForSharedLibraryQuery_inLibrary_changeDetectionCriteria___block_invoke;
  v32[3] = &unk_1E7578820;
  v25 = v23;
  v33 = v25;
  v26 = libraryCopy;
  v34 = v26;
  v35 = &v36;
  [managedObjectContext performBlockAndWait:v32];

  v27 = [MEMORY[0x1E695DFD8] setWithArray:v25];
  v28 = [v27 setByAddingObjectsFromArray:v37[5]];

  if (v28)
  {
    if (v16)
    {
      v29 = @"NONE self IN %@";
    }

    else
    {
      v29 = @"ANY self IN %@";
    }

    v30 = [*(v13 + 3608) predicateWithFormat:v29, v28];
  }

  else
  {
    v30 = 0;
  }

  _Block_object_dispose(&v36, 8);

  return v30;
}

void __105__PLQueryHandler__predicateForPersonUUIDinMomentForSharedLibraryQuery_inLibrary_changeDetectionCriteria___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v31 = 0;
  v4 = [PLMoment batchFetchMomentObjectIDsByAssetObjectIDsWithAssetObjectIDs:v2 andAssetPredicate:0 inManagedObjectContext:v3 error:&v31];
  v5 = v31;

  if (v4)
  {
    v6 = objc_alloc(MEMORY[0x1E695D5E0]);
    v7 = +[PLPhotosHighlight entityName];
    v8 = [v6 initWithEntityName:v7];

    v9 = MEMORY[0x1E696AB28];
    v10 = +[PLPhotosHighlight predicateForAllTripHighlights];
    v32[0] = v10;
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K in %@", @"dayGroupAssets", *(a1 + 32)];
    v32[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v13 = [v9 andPredicateWithSubpredicates:v12];
    [v8 setPredicate:v13];

    [v8 setResultType:1];
    v30 = 0;
    v14 = [v8 execute:&v30];
    v15 = v30;
    v16 = PLBackendGetLog();
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v14;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Fetched trip highlights with people: %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v15;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Error fetching trip highlights for day group assets: %@", buf, 0xCu);
      }

      v14 = MEMORY[0x1E695E0F0];
    }

    v18 = MEMORY[0x1E696AE18];
    v19 = [v4 allValues];
    v20 = [v18 predicateWithFormat:@"%K in %@ OR %K in %@", @"moment", v19, @"dayGroupHighlightBeingAssets", v14];

    v21 = objc_alloc(MEMORY[0x1E695D5E0]);
    v22 = +[PLManagedAsset entityName];
    v23 = [v21 initWithEntityName:v22];

    [v23 setPredicate:v20];
    [v23 setResultType:1];
    v29 = 0;
    v24 = [v23 execute:&v29];
    v25 = v29;
    v26 = *(*(a1 + 48) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v24;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v28 = PLBackendGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v25;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Error executing allAssetsObjectIDs query: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v5;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Error executing batchFetchMomentObjectIDsByAssetObjectIDsWithAssetObjectIDs: %@", buf, 0xCu);
    }
  }
}

+ (id)_predicateForPersonUUIDQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria
{
  queryCopy = query;
  libraryCopy = library;
  criteriaCopy = criteria;
  firstValue = [queryCopy firstValue];
  v12 = stringFromData();

  if (([queryCopy comparator] & 0xFFFFFFFE) == 0x16)
  {
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personUUID == %@", v12];
    comparator = [queryCopy comparator];
    if (v13)
    {
      v15 = comparator == 23;
      v16 = +[PLPerson entityName];
      [criteriaCopy addAttributeKeyPath:@"personUUID" forEntityName:v16];

      v17 = +[PLPerson entityName];
      [criteriaCopy addRelationshipKeyPath:@"detectedFaces" forEntityName:v17];

      v18 = [self _assetsPredicateForPersonPredicate:v13 assetObjectIDs:0 additionalAssetPredicate:0 invert:v15 inLibrary:libraryCopy];
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
  }

  v18 = 0;
LABEL_6:

  return v18;
}

+ (id)_predicateForPersonQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria
{
  libraryCopy = library;
  criteriaCopy = criteria;
  queryCopy = query;
  firstValue = [queryCopy firstValue];
  v11 = stringFromData();

  v12 = [MEMORY[0x1E696AE70] escapedPatternForString:v11];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(^|.*\\s+)%@(\\s+.*|$)", v12];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@".*%@.*", v12];
  comparator = [queryCopy comparator];

  v16 = 0;
  if (comparator <= 23)
  {
    if (comparator > 21)
    {
      if (comparator != 22)
      {
        selfCopy8 = self;
        selfCopy2 = self;
        v20 = v13;
        goto LABEL_13;
      }

      selfCopy8 = self;
      selfCopy7 = self;
      v23 = v13;
    }

    else
    {
      if (comparator != 20)
      {
        selfCopy8 = self;
        v18 = 0;
        if (comparator != 21)
        {
          goto LABEL_27;
        }

        selfCopy2 = selfCopy8;
        v20 = v14;
LABEL_13:
        v16 = [selfCopy2 _personMatchesPredicateForCriteria:v20];
        v21 = 1;
        if (!v16)
        {
LABEL_14:
          v18 = 0;
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      selfCopy8 = self;
      selfCopy7 = self;
      v23 = v14;
    }

    v16 = [selfCopy7 _personMatchesPredicateForCriteria:v23];
LABEL_23:
    v21 = 0;
    if (!v16)
    {
      goto LABEL_14;
    }

LABEL_24:
    v25 = +[PLPerson entityName];
    [criteriaCopy addAttributeKeyPath:@"fullName" forEntityName:v25];

    v26 = +[PLPerson entityName];
    [criteriaCopy addAttributeKeyPath:@"displayName" forEntityName:v26];

    v27 = +[PLPerson entityName];
    [criteriaCopy addRelationshipKeyPath:@"detectedFaces" forEntityName:v27];

    v18 = [selfCopy8 _assetsPredicateForPersonPredicate:v16 assetObjectIDs:0 additionalAssetPredicate:0 invert:v21 inLibrary:libraryCopy];
    goto LABEL_27;
  }

  if (comparator <= 49)
  {
    selfCopy8 = self;
    if (comparator == 24)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"(^|\\s+)%@.*", v12];
    }

    else
    {
      v18 = 0;
      if (comparator != 25)
      {
        goto LABEL_27;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@".*%@(\\s+|$)", v12];
    }
    v24 = ;
    v16 = [PLQueryHandler _personMatchesPredicateForCriteria:v24];

    goto LABEL_23;
  }

  if (comparator == 50)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.@count == 0", @"detectedFaces"];
  }

  else
  {
    v18 = 0;
    if (comparator != 51)
    {
      goto LABEL_27;
    }

    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.@count > 0", @"detectedFaces"];
  }
  v18 = ;
  v16 = 0;
LABEL_27:

  return v18;
}

+ (id)_personMatchesPredicateForCriteria:(id)criteria
{
  v20 = *MEMORY[0x1E69E9840];
  criteriaCopy = criteria;
  _personNameQueryKeyPaths = [self _personNameQueryKeyPaths];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_personNameQueryKeyPaths, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = _personNameQueryKeyPaths;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K MATCHES[cd] %@", *(*(&v15 + 1) + 8 * i), criteriaCopy, v15];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v6];

  return v13;
}

+ (id)_personNameQueryKeyPaths
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"fullName";
  v4[1] = @"displayName";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)_predicateForDoubleQuery:(id)query inLibrary:(id)library
{
  v30[2] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  libraryCopy = library;
  firstValue = [queryCopy firstValue];
  doubleFromData();
  v9 = v8;

  v10 = [PLQueryHandler _getConvertedQueryKey:queryCopy];
  if (![v10 length])
  {
    v17 = 0;
    goto LABEL_23;
  }

  if (+[PLQueryHandler _needEqualityForDoubleQuery:](PLQueryHandler, "_needEqualityForDoubleQuery:", [queryCopy comparator]))
  {
    if ([queryCopy comparator] == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = [PLQueryHandler _equalityPredicateForDoubleQuery:v10 withValue:v11 comparator:libraryCopy inLibrary:v9];
    if ([queryCopy hasSecondValue])
    {
      v13 = MEMORY[0x1E696AB28];
      v30[0] = v12;
      v14 = [PLQueryHandler _equalityPredicateForDoubleQuery:v10 withValue:1 comparator:libraryCopy inLibrary:v9];
      v30[1] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
      v16 = [v13 orPredicateWithSubpredicates:v15];

      v12 = v16;
    }
  }

  else
  {
    v12 = 0;
  }

  v18 = [PLQueryHandler _expressionForStringValue:v10 inLibrary:libraryCopy];
  v19 = MEMORY[0x1E696ABC8];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v21 = [v19 expressionForConstantValue:v20];

  comparator = [queryCopy comparator];
  if ([queryCopy key] == 300)
  {
    if ((comparator - 3) >= 3)
    {
      if (comparator == 6)
      {
        comparator = 5;
      }

      else
      {
        comparator = comparator;
      }
    }

    else
    {
      comparator = dword_19C60B990[(comparator - 3)];
    }
  }

  v23 = [PLQueryHandler _comparatorToOperatorType:comparator];
  if (v12)
  {
    if ((comparator - 1) > 1)
    {
      v25 = MEMORY[0x1E696AB28];
      v26 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v18 rightExpression:v21 modifier:0 type:v23 options:0];
      v29[0] = v26;
      v29[1] = v12;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      v17 = [v25 orPredicateWithSubpredicates:v27];

      goto LABEL_22;
    }

    v24 = v12;
  }

  else
  {
    v24 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v18 rightExpression:v21 modifier:0 type:v23 options:0];
  }

  v17 = v24;
LABEL_22:

LABEL_23:

  return v17;
}

+ (id)_equalityPredicateForDoubleQuery:(id)query withValue:(double)value comparator:(int)comparator inLibrary:(id)library
{
  v40[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695DEC8];
  libraryCopy = library;
  queryCopy = query;
  v11 = [PLQueryHandler _expressionForStringValue:queryCopy inLibrary:libraryCopy];
  v12 = MEMORY[0x1E696ABC8];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  v14 = [v12 expressionForConstantValue:v13];
  v15 = [v8 arrayWithObjects:{v11, v14, 0}];

  v16 = [MEMORY[0x1E696ABC8] expressionForFunction:@"from:subtract:" arguments:v15];
  v17 = MEMORY[0x1E696ABC8];
  v40[0] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v19 = [v17 expressionForFunction:@"abs:" arguments:v18];

  v20 = MEMORY[0x1E696ABC8];
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:2.22044605e-16];
  v22 = [v20 expressionForConstantValue:v21];

  if (comparator == 1)
  {
    v23 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v19 rightExpression:v22 modifier:0 type:0 options:0];
    v24 = [PLQueryHandler _expressionForStringValue:queryCopy inLibrary:libraryCopy];

    v25 = MEMORY[0x1E696ABC8];
    null = [MEMORY[0x1E695DFB0] null];
    v27 = [v25 expressionForConstantValue:null];

    v28 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v24 rightExpression:v27 modifier:0 type:5 options:0];
    v29 = MEMORY[0x1E696AB28];
    v39[0] = v23;
    v39[1] = v28;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v31 = [v29 andPredicateWithSubpredicates:v30];
  }

  else
  {
    v23 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v19 rightExpression:v22 modifier:0 type:3 options:0];
    v24 = [PLQueryHandler _expressionForStringValue:queryCopy inLibrary:libraryCopy];

    v32 = MEMORY[0x1E696ABC8];
    null2 = [MEMORY[0x1E695DFB0] null];
    v27 = [v32 expressionForConstantValue:null2];

    v28 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v24 rightExpression:v27 modifier:0 type:4 options:0];
    v34 = MEMORY[0x1E696AB28];
    v38[0] = v23;
    v38[1] = v28;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v31 = [v34 orPredicateWithSubpredicates:v30];
  }

  v35 = v31;

  return v35;
}

+ (id)_predicateForRangeQuery:(id)query inLibrary:(id)library changeDetectionCriteria:(id)criteria
{
  queryCopy = query;
  v8 = MEMORY[0x1E69BF2C0];
  criteriaCopy = criteria;
  libraryCopy = library;
  v11 = [[v8 alloc] initWithConjunction:1];
  if ([queryCopy valueType] == 4)
  {
    firstValue = [queryCopy firstValue];
    v13 = dateFromData();

    secondValue = [queryCopy secondValue];
    v15 = dateFromData();

    v16 = [queryCopy key];
    v17 = [PLQueryHandler _getTargetDateForTheLastDays:-1 weeks:0 months:0 years:0 seconds:0 targetDate:v15];
    [v11 addIsAfterDateQueryKey:v16 withDate:v13];
    [v11 addIsBeforeDateQueryKey:v16 withDate:v17];
  }

  else
  {
    valueType = [queryCopy valueType];
    firstValue2 = [queryCopy firstValue];
    if (valueType == 2)
    {
      doubleFromData();
      v21 = v20;

      secondValue2 = [queryCopy secondValue];
      doubleFromData();
      v24 = v23;

      LODWORD(secondValue2) = [queryCopy key];
      v25 = [queryCopy key];
      if (secondValue2 == 300)
      {
        [v11 addDoubleQueryKey:v25 withValue:6 comparator:v21];
        v26 = [queryCopy key];
        v27 = v11;
        v28 = v24;
        v29 = 5;
      }

      else
      {
        [v11 addDoubleQueryKey:v25 withValue:5 comparator:v21];
        v26 = [queryCopy key];
        v27 = v11;
        v28 = v24;
        v29 = 6;
      }

      [v27 addDoubleQueryKey:v26 withValue:v29 comparator:v28];
    }

    else
    {
      v30 = integerFromData();

      secondValue3 = [queryCopy secondValue];
      v32 = integerFromData();

      [v11 addIntegerQueryKey:objc_msgSend(queryCopy withValue:"key") comparator:{v30, 5}];
      [v11 addIntegerQueryKey:objc_msgSend(queryCopy withValue:"key") comparator:{v32, 6}];
    }
  }

  query = [v11 query];
  v34 = [PLQueryHandler predicateForQuery:query inLibrary:libraryCopy changeDetectionCriteria:criteriaCopy];

  return v34;
}

+ (id)_predicateForTextQuery:(id)query inLibrary:(id)library
{
  queryCopy = query;
  libraryCopy = library;
  if (PLPlatformSearchSupported() && [queryCopy hasFirstValue])
  {
    firstValue = [queryCopy firstValue];
    v8 = stringFromData();

    v9 = +[PLQueryHandler _needToNegateQueryForComparator:](PLQueryHandler, "_needToNegateQueryForComparator:", [queryCopy comparator]);
    v10 = +[PLQueryHandler _predicateFromSearchIndexForText:comparator:inLibrary:](PLQueryHandler, "_predicateFromSearchIndexForText:comparator:inLibrary:", v8, [queryCopy comparator], libraryCopy);
    if (v10 && v9)
    {
      v11 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v10];

      v10 = v11;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_predicateFromSearchIndexForText:(id)text comparator:(int)comparator inLibrary:(id)library
{
  v41 = *MEMORY[0x1E69E9840];
  textCopy = text;
  libraryCopy = library;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__37882;
  v37 = __Block_byref_object_dispose__37883;
  v38 = 0;
  pathManager = [libraryCopy pathManager];
  v10 = [[PSIDatabase alloc] initWithPathManager:pathManager options:1];
  v11 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_37978);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PLQueryHandler__predicateFromSearchIndexForText_comparator_inLibrary___block_invoke_2;
  block[3] = &unk_1E756BBA8;
  comparatorCopy = comparator;
  v12 = textCopy;
  v28 = v12;
  v13 = v10;
  v29 = v13;
  v31 = &v33;
  v14 = v11;
  v30 = v14;
  v15 = dispatch_block_create(0, block);
  if ((PLIsReallyAssetsd() & 1) == 0)
  {
    if (!v13)
    {
      v18 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Unable to execute query, failure to confirm search index existence.", buf, 2u);
      }

      v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_UTILITY, 0);

      v21 = dispatch_queue_create("com.apple.photos.search.query_handler", v20);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __72__PLQueryHandler__predicateFromSearchIndexForText_comparator_inLibrary___block_invoke_192;
      v25[3] = &unk_1E75781E8;
      v26 = libraryCopy;
      dispatch_async(v21, v25);
      v14[2](v14);

      goto LABEL_9;
    }

LABEL_4:
    v15[2](v15);
LABEL_9:
    dispatch_block_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_10;
  }

  libraryServicesManager = [libraryCopy libraryServicesManager];
  v17 = [libraryServicesManager state] > 5;

  if (!v17)
  {
    goto LABEL_10;
  }

  if (v13)
  {
    goto LABEL_4;
  }

  v24 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v40 = libraryCopy;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Unable to querySearchIndex. nil search index for library: %@", buf, 0xCu);
  }

LABEL_10:
  v22 = v34[5];

  _Block_object_dispose(&v33, 8);

  return v22;
}

void __72__PLQueryHandler__predicateFromSearchIndexForText_comparator_inLibrary___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64) == 24;
  v3 = [PSITokenizer normalizeString:*(a1 + 32)];
  v4 = [*(a1 + 40) groupsForGroupIds:objc_msgSend(*(a1 + 40) includeObjectIds:"groupIdsForNormalizedText:wildcardSearch:leadingAnchored:searchIndexCategories:" searchResultTypes:{v3, v2, 0, 0), 1, 1}];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        -[__CFSet addObjectsFromArray:](Mutable, "addObjectsFromArray:", [*(*(&v15 + 1) + 8 * v10++) assetIds]);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v11 = [*(a1 + 40) assetUUIDsForAssetIds:Mutable];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v11];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  (*(*(a1 + 48) + 16))();
}

void __72__PLQueryHandler__predicateFromSearchIndexForText_comparator_inLibrary___block_invoke_192(uint64_t a1)
{
  v2 = [*(a1 + 32) assetsdClient];
  v1 = [v2 libraryInternalClient];
  [v1 waitForSearchIndexExistenceWithError:0];
}

+ (id)_predicateForEmptyQuery:(id)query inLibrary:(id)library
{
  v40[2] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  libraryCopy = library;
  if ([queryCopy key] == 100)
  {
    if ([queryCopy comparator] == 51)
    {
      v8 = 2;
    }

    else
    {
      v8 = 4;
    }

    v9 = MEMORY[0x1E696ABC8];
    v10 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"albums"];
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$album.kind == %d AND $album.trashedState == %d", 2, 0];
    v12 = [v9 expressionForSubquery:v10 usingIteratorVariable:@"album" predicate:v11];

    v13 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"%@.@count", v12];
    v14 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F0FBC700];
    v15 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v13 rightExpression:v14 modifier:0 type:v8 options:0];
  }

  else
  {
    if ([queryCopy key] == 500)
    {
      if ([queryCopy comparator] == 51)
      {
        v16 = 2;
      }

      else
      {
        v16 = 4;
      }

      firstValue = [queryCopy firstValue];
      v18 = stringFromData();

      v19 = MEMORY[0x1E696ABC8];
      v20 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"additionalAttributes.keywords"];
      v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$keyword.title LIKE[cd] %@", v18];
      v22 = [v19 expressionForSubquery:v20 usingIteratorVariable:@"keyword" predicate:v21];

      v23 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"%@.@count", v22];
      v24 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F0FBC700];
      v15 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v23 rightExpression:v24 modifier:0 type:v16 options:0];
    }

    else
    {
      v18 = [PLQueryHandler _getConvertedQueryKey:queryCopy];
      if ([v18 length])
      {
        comparator = [queryCopy comparator];
        if (comparator == 51)
        {
          v26 = 5;
        }

        else
        {
          v26 = 4;
        }

        v27 = [PLQueryHandler _expressionForStringValue:v18 inLibrary:libraryCopy];
        v28 = MEMORY[0x1E696ABC8];
        null = [MEMORY[0x1E695DFB0] null];
        v30 = [v28 expressionForConstantValue:null];

        v31 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v27 rightExpression:v30 modifier:0 type:v26 options:0];
        if ([self _isTextFieldQuery:{objc_msgSend(queryCopy, "key")}])
        {
          v32 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&stru_1F0F06D80];
          v33 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v27 rightExpression:v32 modifier:0 type:v26 options:0];
          v34 = v33;
          v35 = MEMORY[0x1E696AB28];
          if (comparator == 51)
          {
            v40[0] = v31;
            v40[1] = v33;
            v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
            v37 = [v35 andPredicateWithSubpredicates:v36];
          }

          else
          {
            v39[0] = v31;
            v39[1] = v33;
            v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
            v37 = [v35 orPredicateWithSubpredicates:v36];
          }

          v15 = v37;
        }

        else
        {
          v15 = v31;
        }
      }

      else
      {
        v15 = 0;
      }
    }
  }

  return v15;
}

+ (id)_expressionForStringValue:(id)value inLibrary:(id)library
{
  valueCopy = value;
  libraryCopy = library;
  v7 = [valueCopy componentsSeparatedByString:@"."];
  managedObjectContext = [libraryCopy managedObjectContext];

  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];
  entitiesByName = [managedObjectModel entitiesByName];

  v12 = +[PLManagedAsset entityName];
  v13 = [entitiesByName objectForKeyedSubscript:v12];

  v14 = [entitiesByName objectForKeyedSubscript:@"ExtendedAttributes"];
  v15 = [entitiesByName objectForKeyedSubscript:@"AdditionalAssetAttributes"];
  v16 = [entitiesByName objectForKeyedSubscript:@"AssetDescription"];
  if ([v7 count] == 1)
  {
    propertiesByName = [v13 propertiesByName];
    v18 = [v7 objectAtIndexedSubscript:0];
    v19 = [propertiesByName objectForKey:v18];

    if (v19)
    {
      v20 = [MEMORY[0x1E696ABC8] expressionForKeyPath:valueCopy];
LABEL_4:

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if ([v7 count] == 2)
  {
    propertiesByName = [v13 propertiesByName];
    v21 = [v7 objectAtIndexedSubscript:0];
    v22 = [propertiesByName objectForKey:v21];

    if (v22)
    {
      v23 = [v7 objectAtIndexedSubscript:0];
      v24 = [v23 isEqualToString:@"extendedAttributes"];

      if (v24)
      {
        propertiesByName2 = [v14 propertiesByName];
        v26 = [v7 objectAtIndexedSubscript:1];
        v50 = propertiesByName2;
        v27 = [propertiesByName2 objectForKey:v26];

        if (!v27)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      v43 = [v7 objectAtIndexedSubscript:0];
      v44 = [v43 isEqualToString:@"additionalAttributes"];

      if (v44)
      {
        propertiesByName3 = [v15 propertiesByName];
        v46 = [v7 objectAtIndexedSubscript:1];
        v50 = propertiesByName3;
        v47 = [propertiesByName3 objectForKey:v46];

        if (!v47)
        {
LABEL_23:
          v28 = v50;
          goto LABEL_24;
        }

LABEL_19:
        v20 = [MEMORY[0x1E696ABC8] expressionForKeyPath:valueCopy];

        goto LABEL_4;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  if ([v7 count] == 3)
  {
    propertiesByName = [v13 propertiesByName];
    v28 = [v7 objectAtIndexedSubscript:0];
    v29 = [propertiesByName objectForKey:v28];
    if (!v29)
    {
LABEL_24:

      goto LABEL_25;
    }

    v30 = v29;
    v49 = v14;
    [v7 objectAtIndexedSubscript:0];
    v31 = v51 = v28;
    v32 = [v31 isEqualToString:@"additionalAttributes"];

    if (v32)
    {
      propertiesByName4 = [v15 propertiesByName];
      v34 = [v7 objectAtIndexedSubscript:1];
      v50 = propertiesByName4;
      v35 = [propertiesByName4 objectForKey:v34];

      if (v35)
      {
        v36 = [v7 objectAtIndexedSubscript:1];
        v37 = [v36 isEqualToString:@"assetDescription"];

        if (v37)
        {
          propertiesByName5 = [v16 propertiesByName];
          v39 = [v7 objectAtIndexedSubscript:2];
          v40 = [propertiesByName5 objectForKey:v39];

          if (v40)
          {
            v41 = [MEMORY[0x1E696ABC8] expressionForKeyPath:valueCopy];
            v42 = propertiesByName5;
            v20 = v41;

            v14 = v49;
            goto LABEL_27;
          }
        }
      }

      v14 = v49;
      goto LABEL_23;
    }

    v14 = v49;
    goto LABEL_25;
  }

LABEL_26:
  v20 = [MEMORY[0x1E696ABC8] expressionForConstantValue:valueCopy];
LABEL_27:

  return v20;
}

+ (unint64_t)_comparatorToOperatorType:(int)type
{
  result = 4;
  if (type > 21)
  {
    if (type <= 30)
    {
      v4 = 8;
      v5 = 9;
      if (type != 25)
      {
        v5 = 4;
      }

      if (type != 24)
      {
        v4 = v5;
      }

      if ((type - 22) >= 2)
      {
        return v4;
      }

      else
      {
        return 7;
      }
    }

    if ((type - 31) < 2)
    {
      return 10;
    }

    if (type != 40)
    {
      if (type != 41)
      {
        return result;
      }

      return 0;
    }

    return 3;
  }

  if (type > 4)
  {
    if ((type - 20) < 2)
    {
      return 99;
    }

    if (type == 5)
    {
      return 3;
    }

    if (type == 6)
    {
      return 1;
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        return 5;
      case 3:
        return 2;
      case 4:
        return 0;
    }
  }

  return result;
}

+ (id)_getConvertedKeys:(id)keys
{
  keysCopy = keys;
  if (+[PLQueryHandler _isTextComparator:](PLQueryHandler, "_isTextComparator:", [keysCopy comparator]))
  {
    null2 = &stru_1F0F06D80;
    null = &stru_1F0F06D80;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v6 = [PLQueryHandler _getConvertedQueryKey:keysCopy];
  v7 = [keysCopy key];
  valueType = [keysCopy valueType];
  comparator = [keysCopy comparator];
  if (v7 > 199)
  {
    if ((v7 - 200) < 2)
    {
      if ([keysCopy valueType] == 1)
      {
        unit = [keysCopy unit];
        firstValue = [keysCopy firstValue];
        v11 = [PLQueryHandler _getTargetDateWithUnit:unit dateValue:firstValue];
      }

      else
      {
        firstValue2 = [keysCopy firstValue];
        v11 = dateFromData();
      }

      goto LABEL_56;
    }

    if (v7 != 500)
    {
      goto LABEL_8;
    }

LABEL_18:

    hasFirstValue = [keysCopy hasFirstValue];
    if (comparator == 22)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (comparator == 22)
    {
      v18 = 5;
    }

    else
    {
      v18 = 4;
    }

    v11 = &unk_1F0FBC6E8;
    if (hasFirstValue)
    {
      comparator = v17;
    }

    else
    {
      comparator = v18;
    }

    goto LABEL_56;
  }

  switch(v7)
  {
    case 3:

      if (comparator == 1)
      {
        comparator = 2;
      }

      else
      {
        comparator = 1;
      }

      v11 = &unk_1F0FBC700;
      goto LABEL_56;
    case 5:
      firstValue3 = [keysCopy firstValue];
      v21 = integerFromData();

      firstValue4 = [keysCopy firstValue];
      v11 = [PLQueryHandler _convertQueryValueForAssetType:integerFromData()];

      v23 = +[PLQueryHandler _convertComparatorToNumericComparator:](PLQueryHandler, "_convertComparatorToNumericComparator:", [keysCopy comparator]);
      if (v21 == 9)
      {
        if ([keysCopy comparator] == 1)
        {
          comparator = 31;
        }

        else
        {
          comparator = 32;
        }
      }

      else
      {
        comparator = v23;
      }

      goto LABEL_56;
    case 100:
      goto LABEL_18;
  }

LABEL_8:
  if (valueType <= 2)
  {
    if (valueType == 1)
    {
      v31 = MEMORY[0x1E696AD98];
      firstValue5 = [keysCopy firstValue];
      v11 = [v31 numberWithInteger:integerFromData()];

      if (![keysCopy hasSecondValue])
      {
        goto LABEL_56;
      }

      v33 = MEMORY[0x1E696AD98];
      secondValue = [keysCopy secondValue];
      v28 = [v33 numberWithInteger:integerFromData()];
    }

    else
    {
      if (valueType != 2)
      {
        goto LABEL_48;
      }

      v24 = MEMORY[0x1E696AD98];
      firstValue6 = [keysCopy firstValue];
      doubleFromData();
      v11 = [v24 numberWithDouble:?];

      if (![keysCopy hasSecondValue])
      {
        goto LABEL_56;
      }

      v26 = MEMORY[0x1E696AD98];
      secondValue = [keysCopy secondValue];
      doubleFromData();
      v28 = [v26 numberWithDouble:?];
    }

    v34 = v28;

    null2 = v34;
    goto LABEL_56;
  }

  switch(valueType)
  {
    case 3:
      if ([keysCopy hasFirstValue])
      {
        firstValue7 = [keysCopy firstValue];
        v11 = stringFromData();

        null = firstValue7;
      }

      else
      {
        v11 = &stru_1F0F06D80;
      }

      if ([keysCopy hasSecondValue])
      {
        secondValue2 = [keysCopy secondValue];
        v13 = stringFromData();
LABEL_55:
        v35 = v13;

        null2 = v35;
      }

      break;
    case 5:
      if ([keysCopy hasFirstValue])
      {
        firstValue8 = [keysCopy firstValue];
        v11 = circularRegionFromData();
      }

      else
      {
        v11 = null;
      }

      if ([keysCopy hasSecondValue])
      {
        secondValue2 = [keysCopy secondValue];
        v13 = circularRegionFromData();
        goto LABEL_55;
      }

      break;
    case 4:
      firstValue9 = [keysCopy firstValue];
      v11 = dateFromData();

      if (![keysCopy hasSecondValue])
      {
        break;
      }

      secondValue2 = [keysCopy secondValue];
      v13 = dateFromData();
      goto LABEL_55;
    default:
LABEL_48:
      v11 = null;
      break;
  }

LABEL_56:
  if (v6)
  {
    v36 = MEMORY[0x1E695DF20];
    v37 = [MEMORY[0x1E696AD98] numberWithInt:comparator];
    v38 = [v36 dictionaryWithObjectsAndKeys:{v6, @"key", v11, @"firstValue", null2, @"secondValue", v37, @"comparator", 0}];
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

+ (int)_convertComparatorToNumericComparator:(int)comparator
{
  result = comparator;
  if ((comparator - 20) <= 5)
  {
    return dword_19C60B978[comparator - 20];
  }

  return result;
}

+ (id)_getConvertedQueryKey:(id)key
{
  keyCopy = key;
  v4 = [keyCopy key];
  if (v4 == 5)
  {
    firstValue = [keyCopy firstValue];
    v6 = integerFromData();

    if (v6 == 9)
    {
      v7 = @"hdrType";
    }

    else
    {
      v7 = &stru_1F0F06D80;
    }
  }

  else
  {
    v7 = [PLQueryHandler _convertQueryKeyTypeToString:v4];
  }

  return v7;
}

+ (id)_convertQueryValueForAssetType:(int)type
{
  if (type == 9)
  {
    v5 = +[PLManagedAsset allHDRValues];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_convertQueryKeyTypeToString:(int)string
{
  result = &stru_1F0F06D80;
  if (string > 399)
  {
    if (string > 499)
    {
      if (((string - 550) > 0x32 || ((1 << (string - 38)) & 0x400000000000BLL) == 0) && string != 500 && string != 1000)
      {
        return result;
      }

      return @"special";
    }

    v4 = @"additionalAttributes.originalFilename";
    v5 = @"additionalAttributes.title";
    v6 = @"additionalAttributes.assetDescription.longDescription";
    if (string != 403)
    {
      v6 = &stru_1F0F06D80;
    }

    if (string != 401)
    {
      v5 = v6;
    }

    v7 = string == 400;
LABEL_33:
    if (v7)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  if (string <= 199)
  {
    if (string > 3)
    {
      if (string > 8)
      {
        if (string != 9 && string != 100)
        {
          return result;
        }
      }

      else if (string != 4 && string != 6)
      {
        return result;
      }

      return @"special";
    }

    v4 = @"favorite";
    v5 = @"hidden";
    v8 = @"adjustmentsState";
    if (string != 3)
    {
      v8 = &stru_1F0F06D80;
    }

    if (string != 2)
    {
      v5 = v8;
    }

    v7 = string == 1;
    goto LABEL_33;
  }

  switch(string)
  {
    case 300:
      result = @"extendedAttributes.aperture";
      break;
    case 301:
      result = @"extendedAttributes.cameraModel";
      break;
    case 302:
      result = @"extendedAttributes.flashFired";
      break;
    case 303:
      result = @"extendedAttributes.focalLength";
      break;
    case 304:
      result = @"extendedAttributes.iso";
      break;
    case 305:
      result = @"extendedAttributes.lensModel";
      break;
    case 306:
      result = @"extendedAttributes.shutterSpeed";
      break;
    case 307:
    case 308:
      return result;
    case 309:
      result = @"extendedAttributes.bitrate";
      break;
    case 310:
      result = @"extendedAttributes.cameraMake";
      break;
    case 311:
      result = @"extendedAttributes.codec";
      break;
    case 312:
      result = @"extendedAttributes.duration";
      break;
    case 313:
      result = @"extendedAttributes.exposureBias";
      break;
    case 314:
      result = @"extendedAttributes.fps";
      break;
    case 315:
      result = @"extendedAttributes.meteringMode";
      break;
    case 316:
      result = @"extendedAttributes.sampleRate";
      break;
    case 317:
      result = @"extendedAttributes.trackFormat";
      break;
    case 318:
      result = @"extendedAttributes.whiteBalance";
      break;
    case 319:
      result = @"locationData";
      break;
    default:
      v4 = @"dateCreated";
      v5 = @"addedDate";
      if (string != 201)
      {
        v5 = &stru_1F0F06D80;
      }

      v7 = string == 200;
      goto LABEL_33;
  }

  return result;
}

+ (id)_getTargetDateForTheLastDays:(int64_t)days weeks:(int64_t)weeks months:(int64_t)months years:(int64_t)years seconds:(int64_t)seconds targetDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x1E695DF00] date];
  }

  v14 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v15 setDay:-days];
  [v15 setWeekOfYear:-weeks];
  [v15 setMonth:-months];
  [v15 setYear:-years];
  [v15 setSecond:-seconds];
  v16 = [v14 dateByAddingComponents:v15 toDate:dateCopy options:0];
  v17 = [v14 startOfDayForDate:v16];

  return v17;
}

+ (id)_getTargetDateWithUnit:(int)unit dateValue:(id)value
{
  v5 = integerFromData();
  v6 = 0;
  if (unit <= 2)
  {
    if (unit == 1)
    {
      v7 = v5;
      v8 = 0;
    }

    else
    {
      if (unit != 2)
      {
        goto LABEL_16;
      }

      v7 = 0;
      v8 = v5;
    }

    v9 = 0;
    goto LABEL_13;
  }

  if (unit == 3)
  {
    v7 = 0;
    v8 = 0;
    v9 = v5;
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if (unit != 4)
  {
    if (unit != 5)
    {
      goto LABEL_16;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = v5;
LABEL_14:
  v5 = 0;
LABEL_15:
  v6 = [PLQueryHandler _getTargetDateForTheLastDays:v7 weeks:v8 months:v9 years:v10 seconds:v5 targetDate:0];
LABEL_16:

  return v6;
}

+ (id)_infoFromSingleQuery:(id)query
{
  queryCopy = query;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(queryCopy, "key")}];
  [dictionary setValue:v5 forKey:*MEMORY[0x1E69C05D8]];

  v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(queryCopy, "valueType")}];
  [dictionary setValue:v6 forKey:*MEMORY[0x1E69C0600]];

  firstValue = [queryCopy firstValue];
  [dictionary setValue:firstValue forKey:*MEMORY[0x1E69C05D0]];

  if ([queryCopy hasSecondValue])
  {
    secondValue = [queryCopy secondValue];
    [dictionary setValue:secondValue forKey:*MEMORY[0x1E69C05F0]];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(queryCopy, "comparator")}];
  [dictionary setValue:v9 forKey:*MEMORY[0x1E69C05B8]];

  if ([queryCopy hasUnit])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(queryCopy, "unit")}];
    [dictionary setValue:v10 forKey:*MEMORY[0x1E69C05F8]];
  }

  return dictionary;
}

+ (id)queryFromInfo:(id)info
{
  v46 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = objc_alloc_init(MEMORY[0x1E69BF2B8]);
  v5 = MEMORY[0x1E69C05C0];
  v6 = [infoCopy objectForKey:*MEMORY[0x1E69C05C0]];

  if (v6)
  {
    v7 = [infoCopy objectForKey:*v5];
    [v4 setConjunction:{objc_msgSend(v7, "integerValue")}];
  }

  v8 = [infoCopy objectForKey:*MEMORY[0x1E69C05E0]];
  v9 = v8;
  if (v8)
  {
    v38 = infoCopy;
    v39 = v4;
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v37 = v9;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v42;
      v14 = MEMORY[0x1E69C05F0];
      v15 = MEMORY[0x1E69C05B8];
      v16 = MEMORY[0x1E69C05F8];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v42 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          v19 = objc_alloc_init(MEMORY[0x1E69BF300]);
          v20 = [v18 objectForKey:*MEMORY[0x1E69C05D8]];
          [v19 setKey:{objc_msgSend(v20, "integerValue")}];

          v21 = [v18 objectForKey:*MEMORY[0x1E69C05D0]];
          [v19 setFirstValue:v21];

          v22 = [v18 objectForKey:*v14];

          if (v22)
          {
            v23 = [v18 objectForKey:*v14];
            [v19 setSecondValue:v23];
          }

          v24 = [v18 objectForKey:{*MEMORY[0x1E69C0600], v37}];
          [v19 setValueType:{objc_msgSend(v24, "integerValue")}];

          v25 = [v18 objectForKey:*v15];
          [v19 setComparator:{objc_msgSend(v25, "integerValue")}];

          v26 = [v18 objectForKey:*v16];

          if (v26)
          {
            v27 = [v18 objectForKey:*v16];
            [v19 setUnit:{objc_msgSend(v27, "integerValue")}];
          }

          [v10 addObject:v19];
        }

        v12 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v12);
    }

    v4 = v39;
    [v39 setSingleQueries:v10];

    v9 = v37;
    infoCopy = v38;
  }

  v28 = MEMORY[0x1E69C05C8];
  v29 = [infoCopy objectForKey:{*MEMORY[0x1E69C05C8], v37}];

  if (v29)
  {
    v30 = [infoCopy objectForKey:*v28];
    v31 = [PLQueryHandler queryFromInfo:v30];
    [v4 setFirst:v31];
  }

  v32 = MEMORY[0x1E69C05E8];
  v33 = [infoCopy objectForKey:*MEMORY[0x1E69C05E8]];

  if (v33)
  {
    v34 = [infoCopy objectForKey:*v32];
    v35 = [PLQueryHandler queryFromInfo:v34];
    [v4 setSecond:v35];
  }

  return v4;
}

+ (id)infoFromQuery:(id)query
{
  v23 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([queryCopy hasConjunction])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(queryCopy, "conjunction")}];
    [dictionary setValue:v5 forKey:*MEMORY[0x1E69C05C0]];
  }

  if ([queryCopy singleQueriesCount])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(queryCopy, "singleQueriesCount")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    singleQueries = [queryCopy singleQueries];
    v8 = [singleQueries countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(singleQueries);
          }

          v12 = [PLQueryHandler _infoFromSingleQuery:*(*(&v18 + 1) + 8 * i)];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [singleQueries countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [dictionary setValue:v6 forKey:*MEMORY[0x1E69C05E0]];
  }

  else
  {
    if ([queryCopy hasFirst])
    {
      first = [queryCopy first];
      v14 = [PLQueryHandler infoFromQuery:first];
      [dictionary setValue:v14 forKey:*MEMORY[0x1E69C05C8]];
    }

    if ([queryCopy hasSecond])
    {
      second = [queryCopy second];
      v16 = [PLQueryHandler infoFromQuery:second];
      [dictionary setValue:v16 forKey:*MEMORY[0x1E69C05E8]];
    }
  }

  return dictionary;
}

+ (id)constructQueryFromData:(id)data
{
  v3 = MEMORY[0x1E69BF2B8];
  dataCopy = data;
  v5 = [[v3 alloc] initWithData:dataCopy];

  return v5;
}

@end