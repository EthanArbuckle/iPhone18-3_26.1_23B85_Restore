@interface PLQueryHandler
+ (BOOL)_containsKey:(int)a3 inQuery:(id)a4;
+ (BOOL)_findAndReplaceLatitudeLongitudeKeyInQuery:(id)a3;
+ (BOOL)hasMatchingFetchingAlbumForSingleQuery:(id)a3 outKind:(int *)a4;
+ (BOOL)includesHiddenAssetsInQuery:(id)a3;
+ (id)_assetsPredicateForPersonPredicate:(id)a3 assetObjectIDs:(id *)a4 additionalAssetPredicate:(id)a5 invert:(BOOL)a6 inLibrary:(id)a7;
+ (id)_convertQueryKeyTypeToString:(int)a3;
+ (id)_convertQueryValueForAssetType:(int)a3;
+ (id)_equalityPredicateForDoubleQuery:(id)a3 withValue:(double)a4 comparator:(int)a5 inLibrary:(id)a6;
+ (id)_expressionForStringValue:(id)a3 inLibrary:(id)a4;
+ (id)_getConvertedKeys:(id)a3;
+ (id)_getConvertedQueryKey:(id)a3;
+ (id)_getTargetDateForTheLastDays:(int64_t)a3 weeks:(int64_t)a4 months:(int64_t)a5 years:(int64_t)a6 seconds:(int64_t)a7 targetDate:(id)a8;
+ (id)_getTargetDateWithUnit:(int)a3 dateValue:(id)a4;
+ (id)_infoFromSingleQuery:(id)a3;
+ (id)_personMatchesPredicateForCriteria:(id)a3;
+ (id)_personNameQueryKeyPaths;
+ (id)_predicateForDoubleQuery:(id)a3 inLibrary:(id)a4;
+ (id)_predicateForEmptyQuery:(id)a3 inLibrary:(id)a4;
+ (id)_predicateForIsReferencedQuery:(id)a3 inLibrary:(id)a4;
+ (id)_predicateForLoopingQuery:(id)a3 inLibrary:(id)a4;
+ (id)_predicateForPersonQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5;
+ (id)_predicateForPersonUUIDQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5;
+ (id)_predicateForPersonUUIDinMomentForSharedLibraryQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5;
+ (id)_predicateForProResQuery:(id)a3 inLibrary:(id)a4;
+ (id)_predicateForQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5;
+ (id)_predicateForRangeQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5;
+ (id)_predicateForSingleQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5;
+ (id)_predicateForTaggedWithGPSQuery:(id)a3 inLibrary:(id)a4;
+ (id)_predicateForTextQuery:(id)a3 inLibrary:(id)a4;
+ (id)_predicateFromAlbumKind:(int)a3 negate:(BOOL)a4;
+ (id)_predicateFromSearchIndexForText:(id)a3 comparator:(int)a4 inLibrary:(id)a5;
+ (id)_singleQueryInQuery:(id)a3 passingTest:(id)a4;
+ (id)constructQueryFromData:(id)a3;
+ (id)infoFromQuery:(id)a3;
+ (id)predicateForQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5;
+ (id)queryFromInfo:(id)a3;
+ (int)_convertComparatorToNumericComparator:(int)a3;
+ (unint64_t)_comparatorToOperatorType:(int)a3;
@end

@implementation PLQueryHandler

+ (BOOL)_findAndReplaceLatitudeLongitudeKeyInQuery:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![v3 hasFirst])
  {
    if (![v3 hasSecond])
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    v8 = [v3 second];
    v7 = [PLQueryHandler _findAndReplaceLatitudeLongitudeKeyInQuery:v8];

    goto LABEL_8;
  }

  v4 = [v3 first];
  v5 = [PLQueryHandler _findAndReplaceLatitudeLongitudeKeyInQuery:v4];

  v6 = [v3 hasSecond];
  v7 = v6 | v5;
  if (v6 && !v5)
  {
    goto LABEL_6;
  }

LABEL_8:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v3 singleQueries];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
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

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v7 & 1;
}

+ (BOOL)includesHiddenAssetsInQuery:(id)a3
{
  v3 = [a1 _singleQueryInQuery:a3 passingTest:&__block_literal_global_297];
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

+ (id)_singleQueryInQuery:(id)a3 passingTest:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if ([v6 singleQueriesCount])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v6 singleQueries];
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          if (v7[2](v7, v13))
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

    v15 = [v6 first];
    v14 = [a1 _singleQueryInQuery:v15 passingTest:v7];

    if (!v14)
    {
      v16 = [v6 second];
      v14 = [a1 _singleQueryInQuery:v16 passingTest:v7];
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_16:

  return v14;
}

+ (BOOL)_containsKey:(int)a3 inQuery:(id)a4
{
  v4 = *&a3;
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    if ([v5 singleQueriesCount])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = [v6 singleQueries];
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v15 + 1) + 8 * v11) key] == v4)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
      v7 = [v6 first];
      if (![PLQueryHandler _containsKey:v4 inQuery:v7])
      {
        v13 = [v6 second];
        v12 = [PLQueryHandler _containsKey:v4 inQuery:v13];

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

+ (id)_predicateForQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v18 = 0;
    goto LABEL_48;
  }

  if (![v7 singleQueriesCount])
  {
    v19 = [v7 conjunction];
    v20 = [v7 first];
    v10 = [PLQueryHandler _predicateForQuery:v20 inLibrary:v8 changeDetectionCriteria:v9];

    if (v19 == 2)
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

    v22 = [v7 second];
    v23 = [PLQueryHandler _predicateForQuery:v22 inLibrary:v8 changeDetectionCriteria:v9];

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

    v24 = [v7 conjunction];
    v25 = MEMORY[0x1E696AB28];
    if (v24)
    {
      v40[0] = v10;
      v40[1] = v23;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
      v27 = [v25 andPredicateWithSubpredicates:v26];
    }

    else
    {
      v41[0] = v10;
      v41[1] = v23;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
      v27 = [v25 orPredicateWithSubpredicates:v26];
    }

    v18 = v27;
    goto LABEL_45;
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "singleQueriesCount")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v35 = v7;
  v11 = [v7 singleQueries];
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
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
          objc_enumerationMutation(v11);
        }

        v17 = [PLQueryHandler _predicateForSingleQuery:*(*(&v36 + 1) + 8 * i) inLibrary:v8 changeDetectionCriteria:v9];
        if (v17)
        {
          [v10 addObject:v17];
        }

        else
        {
          v14 = 1;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
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
    v7 = v35;
    goto LABEL_30;
  }

  v7 = v35;
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
    v29 = [v10 firstObject];
    v18 = [v28 notPredicateWithSubpredicate:v29];

    if ([v10 count] >= 2)
    {
      v30 = PLUserSmartAlbumGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v35 logDescription];
        *buf = 138412546;
        v43 = v31;
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

    v26 = [v7 logDescription];
    *buf = 138412546;
    v43 = v26;
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
    v33 = [v7 logDescription];
    *buf = 138412546;
    v43 = v33;
    v44 = 2112;
    v45 = v18;
    _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEBUG, "Query: %@, predicate: %@", buf, 0x16u);
  }

  return v18;
}

+ (id)predicateForQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = [PLQueryHandler _predicateForQuery:a3 inLibrary:a4 changeDetectionCriteria:a5];
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

+ (id)_predicateForSingleQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5
{
  v55[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v52 = 0;
  if ([v8 comparator] == 50 || objc_msgSend(v8, "comparator") == 51)
  {
    v11 = [PLQueryHandler _predicateForEmptyQuery:v8 inLibrary:v9];
LABEL_4:
    v12 = v11;
    goto LABEL_5;
  }

  if ([v8 comparator] == 30)
  {
    v11 = [PLQueryHandler _predicateForRangeQuery:v8 inLibrary:v9 changeDetectionCriteria:v10];
    goto LABEL_4;
  }

  if ([v8 key] == 402)
  {
    v11 = [PLQueryHandler _predicateForTextQuery:v8 inLibrary:v9];
    goto LABEL_4;
  }

  if ([v8 key] == 550)
  {
    v11 = [PLQueryHandler _predicateForPersonQuery:v8 inLibrary:v9 changeDetectionCriteria:v10];
    goto LABEL_4;
  }

  if ([v8 key] == 551)
  {
    v11 = [PLQueryHandler _predicateForPersonUUIDQuery:v8 inLibrary:v9 changeDetectionCriteria:v10];
    goto LABEL_4;
  }

  if ([v8 key] == 553)
  {
    v11 = [PLQueryHandler _predicateForPersonUUIDinMomentForSharedLibraryQuery:v8 inLibrary:v9 changeDetectionCriteria:v10];
    goto LABEL_4;
  }

  if ([v8 key] == 6)
  {
    v11 = [PLQueryHandler _predicateForIsReferencedQuery:v8 inLibrary:v9];
    goto LABEL_4;
  }

  if ([v8 valueType] == 2)
  {
    v11 = [PLQueryHandler _predicateForDoubleQuery:v8 inLibrary:v9];
    goto LABEL_4;
  }

  if ([v8 key] == 5)
  {
    v14 = [v8 firstValue];
    v15 = integerFromData();

    if (v15 == 13)
    {
      v11 = [PLQueryHandler _predicateForLoopingQuery:v8 inLibrary:v9];
      goto LABEL_4;
    }
  }

  if ([v8 key] == 5 && +[PLQueryHandler hasMatchingFetchingAlbumForSingleQuery:outKind:](PLQueryHandler, "hasMatchingFetchingAlbumForSingleQuery:outKind:", v8, &v52))
  {
    v11 = +[PLQueryHandler _predicateFromAlbumKind:negate:](PLQueryHandler, "_predicateFromAlbumKind:negate:", v52, [v8 comparator] == 2);
    goto LABEL_4;
  }

  if ([v8 key] == 319)
  {
    v11 = [PLQueryHandler _predicateForTaggedWithGPSQuery:v8 inLibrary:v9];
    goto LABEL_4;
  }

  if ([v8 key] == 600)
  {
    v12 = 0;
    goto LABEL_5;
  }

  if ([v8 key] == 1000)
  {
    if ([v8 comparator] == 2)
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

  if ([v8 key] == 9)
  {
    v11 = [PLQueryHandler _predicateForProResQuery:v8 inLibrary:v9];
    goto LABEL_4;
  }

  v16 = [a1 _getConvertedKeys:v8];
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
    v19 = [v18 integerValue];

    if (([v8 key] == 200 || objc_msgSend(v8, "key") == 201) && (objc_msgSend(v8, "comparator") == 1 || objc_msgSend(v8, "comparator") == 2))
    {
      v20 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v21 = [v20 startOfDayForDate:v50];
      v22 = [PLQueryHandler _getTargetDateForTheLastDays:-1 weeks:0 months:0 years:0 seconds:0 targetDate:v21];
      v23 = [v8 comparator];
      v24 = objc_alloc(MEMORY[0x1E69BF2C0]);
      if (v23 == 1)
      {
        v25 = [v24 initWithConjunction:1];
        [v25 addIsAfterDateQueryKey:objc_msgSend(v8 withDate:{"key"), v21}];
        [v25 addIsBeforeDateQueryKey:objc_msgSend(v8 withDate:{"key"), v22}];
      }

      else
      {
        v25 = [v24 initWithConjunction:0];
        [v25 addIsBeforeDateQueryKey:objc_msgSend(v8 withDate:{"key"), v21}];
        [v25 addIsAfterDateQueryKey:objc_msgSend(v8 withDate:{"key"), v22}];
      }

      v33 = [v25 query];

      v34 = [PLQueryHandler predicateForQuery:v33 inLibrary:v9 changeDetectionCriteria:v10];
      goto LABEL_57;
    }

    v26 = [PLQueryHandler _comparatorToOperatorType:v19];
    if ([PLQueryHandler _isTextComparator:v19])
    {
      v27 = 3;
    }

    else
    {
      v27 = 0;
    }

    if ([v8 key] == 4)
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
      if ((v43 & 1) != 0 || !v44 || ![PLQueryHandler _needToNegateQueryForComparator:v19])
      {
        goto LABEL_58;
      }

      v22 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v12];
      v33 = [v8 copy];
      [v33 setComparator:50];
      v49 = [PLQueryHandler _predicateForSingleQuery:v33 inLibrary:v9 changeDetectionCriteria:v10];
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
          v48 = [v8 logDescription];
          *buf = 138412290;
          v54 = v48;
          _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "Only negate the predicate, not checking null value for query: %@", buf, 0xCu);
        }

        v34 = v22;
      }

LABEL_57:
      v12 = v34;
LABEL_58:

      goto LABEL_59;
    }

    if ([v8 key] == 100)
    {
      if (([v8 hasFirstValue] & 1) == 0)
      {
        v28 = MEMORY[0x1E696ABC8];
        v29 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"albums"];
        v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$album.kind == %d AND $album.trashedState == %d", 2, 0];
        v31 = @"album";
        goto LABEL_54;
      }

      v35 = [v8 firstValue];
      v36 = stringFromData();

      v37 = MEMORY[0x1E696ABC8];
      v38 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"albums"];
      v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$album.cloudGUID == %@ OR $album.uuid == %@", v36, v36];
      v40 = @"album";
    }

    else
    {
      if ([v8 key] != 500)
      {
        v20 = [PLQueryHandler _expressionForStringValue:v51 inLibrary:v9];
        v43 = 0;
        goto LABEL_72;
      }

      if (([v8 hasFirstValue] & 1) == 0)
      {
        v20 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"additionalAttributes.keywords.@count"];
        goto LABEL_71;
      }

      v41 = [v8 firstValue];
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

+ (BOOL)hasMatchingFetchingAlbumForSingleQuery:(id)a3 outKind:(int *)a4
{
  v5 = [a3 firstValue];
  v6 = integerFromData();

  v7 = v6 - 2;
  if ((v6 - 2) > 0xF || ((0xF77Fu >> v7) & 1) == 0)
  {
    return 0;
  }

  *a4 = dword_19C60B99C[v7];
  return 1;
}

+ (id)_predicateForTaggedWithGPSQuery:(id)a3 inLibrary:(id)a4
{
  v6 = a4;
  v7 = [a1 _getConvertedKeys:a3];
  v8 = [v7 objectForKey:@"key"];
  if ([v8 length])
  {
    v9 = [v7 objectForKey:@"comparator"];
    v10 = [v9 integerValue];

    v11 = [PLQueryHandler _comparatorToOperatorType:v10];
    v12 = [PLQueryHandler _expressionForStringValue:v8 inLibrary:v6];
    v13 = MEMORY[0x1E696ABC8];
    v14 = [MEMORY[0x1E695DFB0] null];
    v15 = [v13 expressionForConstantValue:v14];

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

+ (id)_predicateForProResQuery:(id)a3 inLibrary:(id)a4
{
  v4 = a3;
  v5 = +[PLManagedAsset predicateForProResAssets];
  v6 = [v4 comparator];

  if (v6 == 2)
  {
    v7 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v5];

    v5 = v7;
  }

  return v5;
}

+ (id)_predicateFromAlbumKind:(int)a3 negate:(BOOL)a4
{
  v4 = a4;
  v5 = [PLFetchingAlbum predicateForAlbumKind:*&a3];
  if (v4)
  {
    v6 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v5];

    v5 = v6;
  }

  return v5;
}

+ (id)_predicateForLoopingQuery:(id)a3 inLibrary:(id)a4
{
  v4 = MEMORY[0x1E696AE18];
  v5 = a3;
  v6 = [v4 predicateWithFormat:@"noindex:(kind) == %d AND noindex:(playbackStyle) == %d", 1, 5];
  v7 = [v5 comparator];

  if (v7 == 2)
  {
    v8 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v6];

    v6 = v8;
  }

  return v6;
}

+ (id)_predicateForIsReferencedQuery:(id)a3 inLibrary:(id)a4
{
  v4 = [a3 comparator];
  v5 = MEMORY[0x1E69BF328];
  v6 = [MEMORY[0x1E69BF328] maskForReferencedAsset];
  if (v4 == 2)
  {
    [v5 predicateForExcludeMask:v6 useIndex:1];
  }

  else
  {
    [v5 predicateForIncludeMask:v6 useIndex:1];
  }
  v7 = ;

  return v7;
}

+ (id)_assetsPredicateForPersonPredicate:(id)a3 assetObjectIDs:(id *)a4 additionalAssetPredicate:(id)a5 invert:(BOOL)a6 inLibrary:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a5;
  v13 = a7;
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
  v14 = [v13 managedObjectContext];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __110__PLQueryHandler__assetsPredicateForPersonPredicate_assetObjectIDs_additionalAssetPredicate_invert_inLibrary___block_invoke;
  v23 = &unk_1E756F910;
  v15 = v11;
  v24 = v15;
  v26 = v37;
  v27 = v35;
  v16 = v12;
  v25 = v16;
  v28 = &v29;
  [v14 performBlockAndWait:&v20];

  if (v30[5])
  {
    if (v8)
    {
      v17 = @"NONE self IN %@";
    }

    else
    {
      v17 = @"ANY self IN %@";
    }

    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:v17, v30[5], v20, v21, v22, v23, v24];
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v18 = 0;
  if (a4)
  {
LABEL_6:
    *a4 = v30[5];
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

+ (id)_predicateForPersonUUIDinMomentForSharedLibraryQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 firstValue];
  v12 = stringFromData();

  v13 = 0x1E696A000uLL;
  if (([v8 comparator] & 0xFFFFFFFE) == 0x16)
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personUUID == %@", v12];
    v15 = [v8 comparator];
    v16 = v15 == 23;
    if (v14)
    {
      v17 = v15 == 23;
      v18 = +[PLPerson entityName];
      [v10 addAttributeKeyPath:@"personUUID" forEntityName:v18];

      v19 = +[PLPerson entityName];
      [v10 addRelationshipKeyPath:@"detectedFaces" forEntityName:v19];

      v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"additionalAttributes.syndicationIdentifier"];
      v21 = [PLLibraryScope compoundPredicateForMarkingOnboardingPreviewAssetsWithRulePredicate:v20];
      v42 = 0;
      v22 = [a1 _assetsPredicateForPersonPredicate:v14 assetObjectIDs:&v42 additionalAssetPredicate:v21 invert:v17 inLibrary:v9];
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
  v24 = [v9 managedObjectContext];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __105__PLQueryHandler__predicateForPersonUUIDinMomentForSharedLibraryQuery_inLibrary_changeDetectionCriteria___block_invoke;
  v32[3] = &unk_1E7578820;
  v25 = v23;
  v33 = v25;
  v26 = v9;
  v34 = v26;
  v35 = &v36;
  [v24 performBlockAndWait:v32];

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

+ (id)_predicateForPersonUUIDQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 firstValue];
  v12 = stringFromData();

  if (([v8 comparator] & 0xFFFFFFFE) == 0x16)
  {
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personUUID == %@", v12];
    v14 = [v8 comparator];
    if (v13)
    {
      v15 = v14 == 23;
      v16 = +[PLPerson entityName];
      [v10 addAttributeKeyPath:@"personUUID" forEntityName:v16];

      v17 = +[PLPerson entityName];
      [v10 addRelationshipKeyPath:@"detectedFaces" forEntityName:v17];

      v18 = [a1 _assetsPredicateForPersonPredicate:v13 assetObjectIDs:0 additionalAssetPredicate:0 invert:v15 inLibrary:v9];
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

+ (id)_predicateForPersonQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5
{
  v29 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 firstValue];
  v11 = stringFromData();

  v12 = [MEMORY[0x1E696AE70] escapedPatternForString:v11];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(^|.*\\s+)%@(\\s+.*|$)", v12];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@".*%@.*", v12];
  v15 = [v9 comparator];

  v16 = 0;
  if (v15 <= 23)
  {
    if (v15 > 21)
    {
      if (v15 != 22)
      {
        v17 = a1;
        v19 = a1;
        v20 = v13;
        goto LABEL_13;
      }

      v17 = a1;
      v22 = a1;
      v23 = v13;
    }

    else
    {
      if (v15 != 20)
      {
        v17 = a1;
        v18 = 0;
        if (v15 != 21)
        {
          goto LABEL_27;
        }

        v19 = v17;
        v20 = v14;
LABEL_13:
        v16 = [v19 _personMatchesPredicateForCriteria:v20];
        v21 = 1;
        if (!v16)
        {
LABEL_14:
          v18 = 0;
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      v17 = a1;
      v22 = a1;
      v23 = v14;
    }

    v16 = [v22 _personMatchesPredicateForCriteria:v23];
LABEL_23:
    v21 = 0;
    if (!v16)
    {
      goto LABEL_14;
    }

LABEL_24:
    v25 = +[PLPerson entityName];
    [v8 addAttributeKeyPath:@"fullName" forEntityName:v25];

    v26 = +[PLPerson entityName];
    [v8 addAttributeKeyPath:@"displayName" forEntityName:v26];

    v27 = +[PLPerson entityName];
    [v8 addRelationshipKeyPath:@"detectedFaces" forEntityName:v27];

    v18 = [v17 _assetsPredicateForPersonPredicate:v16 assetObjectIDs:0 additionalAssetPredicate:0 invert:v21 inLibrary:v29];
    goto LABEL_27;
  }

  if (v15 <= 49)
  {
    v17 = a1;
    if (v15 == 24)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"(^|\\s+)%@.*", v12];
    }

    else
    {
      v18 = 0;
      if (v15 != 25)
      {
        goto LABEL_27;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@".*%@(\\s+|$)", v12];
    }
    v24 = ;
    v16 = [PLQueryHandler _personMatchesPredicateForCriteria:v24];

    goto LABEL_23;
  }

  if (v15 == 50)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.@count == 0", @"detectedFaces"];
  }

  else
  {
    v18 = 0;
    if (v15 != 51)
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

+ (id)_personMatchesPredicateForCriteria:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _personNameQueryKeyPaths];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
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

        v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K MATCHES[cd] %@", *(*(&v15 + 1) + 8 * i), v4, v15];
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

+ (id)_predicateForDoubleQuery:(id)a3 inLibrary:(id)a4
{
  v30[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 firstValue];
  doubleFromData();
  v9 = v8;

  v10 = [PLQueryHandler _getConvertedQueryKey:v5];
  if (![v10 length])
  {
    v17 = 0;
    goto LABEL_23;
  }

  if (+[PLQueryHandler _needEqualityForDoubleQuery:](PLQueryHandler, "_needEqualityForDoubleQuery:", [v5 comparator]))
  {
    if ([v5 comparator] == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = [PLQueryHandler _equalityPredicateForDoubleQuery:v10 withValue:v11 comparator:v6 inLibrary:v9];
    if ([v5 hasSecondValue])
    {
      v13 = MEMORY[0x1E696AB28];
      v30[0] = v12;
      v14 = [PLQueryHandler _equalityPredicateForDoubleQuery:v10 withValue:1 comparator:v6 inLibrary:v9];
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

  v18 = [PLQueryHandler _expressionForStringValue:v10 inLibrary:v6];
  v19 = MEMORY[0x1E696ABC8];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v21 = [v19 expressionForConstantValue:v20];

  v22 = [v5 comparator];
  if ([v5 key] == 300)
  {
    if ((v22 - 3) >= 3)
    {
      if (v22 == 6)
      {
        v22 = 5;
      }

      else
      {
        v22 = v22;
      }
    }

    else
    {
      v22 = dword_19C60B990[(v22 - 3)];
    }
  }

  v23 = [PLQueryHandler _comparatorToOperatorType:v22];
  if (v12)
  {
    if ((v22 - 1) > 1)
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

+ (id)_equalityPredicateForDoubleQuery:(id)a3 withValue:(double)a4 comparator:(int)a5 inLibrary:(id)a6
{
  v40[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695DEC8];
  v9 = a6;
  v10 = a3;
  v11 = [PLQueryHandler _expressionForStringValue:v10 inLibrary:v9];
  v12 = MEMORY[0x1E696ABC8];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
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

  if (a5 == 1)
  {
    v23 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v19 rightExpression:v22 modifier:0 type:0 options:0];
    v24 = [PLQueryHandler _expressionForStringValue:v10 inLibrary:v9];

    v25 = MEMORY[0x1E696ABC8];
    v26 = [MEMORY[0x1E695DFB0] null];
    v27 = [v25 expressionForConstantValue:v26];

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
    v24 = [PLQueryHandler _expressionForStringValue:v10 inLibrary:v9];

    v32 = MEMORY[0x1E696ABC8];
    v33 = [MEMORY[0x1E695DFB0] null];
    v27 = [v32 expressionForConstantValue:v33];

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

+ (id)_predicateForRangeQuery:(id)a3 inLibrary:(id)a4 changeDetectionCriteria:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E69BF2C0];
  v9 = a5;
  v10 = a4;
  v11 = [[v8 alloc] initWithConjunction:1];
  if ([v7 valueType] == 4)
  {
    v12 = [v7 firstValue];
    v13 = dateFromData();

    v14 = [v7 secondValue];
    v15 = dateFromData();

    v16 = [v7 key];
    v17 = [PLQueryHandler _getTargetDateForTheLastDays:-1 weeks:0 months:0 years:0 seconds:0 targetDate:v15];
    [v11 addIsAfterDateQueryKey:v16 withDate:v13];
    [v11 addIsBeforeDateQueryKey:v16 withDate:v17];
  }

  else
  {
    v18 = [v7 valueType];
    v19 = [v7 firstValue];
    if (v18 == 2)
    {
      doubleFromData();
      v21 = v20;

      v22 = [v7 secondValue];
      doubleFromData();
      v24 = v23;

      LODWORD(v22) = [v7 key];
      v25 = [v7 key];
      if (v22 == 300)
      {
        [v11 addDoubleQueryKey:v25 withValue:6 comparator:v21];
        v26 = [v7 key];
        v27 = v11;
        v28 = v24;
        v29 = 5;
      }

      else
      {
        [v11 addDoubleQueryKey:v25 withValue:5 comparator:v21];
        v26 = [v7 key];
        v27 = v11;
        v28 = v24;
        v29 = 6;
      }

      [v27 addDoubleQueryKey:v26 withValue:v29 comparator:v28];
    }

    else
    {
      v30 = integerFromData();

      v31 = [v7 secondValue];
      v32 = integerFromData();

      [v11 addIntegerQueryKey:objc_msgSend(v7 withValue:"key") comparator:{v30, 5}];
      [v11 addIntegerQueryKey:objc_msgSend(v7 withValue:"key") comparator:{v32, 6}];
    }
  }

  v33 = [v11 query];
  v34 = [PLQueryHandler predicateForQuery:v33 inLibrary:v10 changeDetectionCriteria:v9];

  return v34;
}

+ (id)_predicateForTextQuery:(id)a3 inLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (PLPlatformSearchSupported() && [v5 hasFirstValue])
  {
    v7 = [v5 firstValue];
    v8 = stringFromData();

    v9 = +[PLQueryHandler _needToNegateQueryForComparator:](PLQueryHandler, "_needToNegateQueryForComparator:", [v5 comparator]);
    v10 = +[PLQueryHandler _predicateFromSearchIndexForText:comparator:inLibrary:](PLQueryHandler, "_predicateFromSearchIndexForText:comparator:inLibrary:", v8, [v5 comparator], v6);
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

+ (id)_predicateFromSearchIndexForText:(id)a3 comparator:(int)a4 inLibrary:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__37882;
  v37 = __Block_byref_object_dispose__37883;
  v38 = 0;
  v9 = [v8 pathManager];
  v10 = [[PSIDatabase alloc] initWithPathManager:v9 options:1];
  v11 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_37978);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PLQueryHandler__predicateFromSearchIndexForText_comparator_inLibrary___block_invoke_2;
  block[3] = &unk_1E756BBA8;
  v32 = a4;
  v12 = v7;
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
      v26 = v8;
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

  v16 = [v8 libraryServicesManager];
  v17 = [v16 state] > 5;

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
    v40 = v8;
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

+ (id)_predicateForEmptyQuery:(id)a3 inLibrary:(id)a4
{
  v40[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 key] == 100)
  {
    if ([v6 comparator] == 51)
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
    if ([v6 key] == 500)
    {
      if ([v6 comparator] == 51)
      {
        v16 = 2;
      }

      else
      {
        v16 = 4;
      }

      v17 = [v6 firstValue];
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
      v18 = [PLQueryHandler _getConvertedQueryKey:v6];
      if ([v18 length])
      {
        v25 = [v6 comparator];
        if (v25 == 51)
        {
          v26 = 5;
        }

        else
        {
          v26 = 4;
        }

        v27 = [PLQueryHandler _expressionForStringValue:v18 inLibrary:v7];
        v28 = MEMORY[0x1E696ABC8];
        v29 = [MEMORY[0x1E695DFB0] null];
        v30 = [v28 expressionForConstantValue:v29];

        v31 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v27 rightExpression:v30 modifier:0 type:v26 options:0];
        if ([a1 _isTextFieldQuery:{objc_msgSend(v6, "key")}])
        {
          v32 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&stru_1F0F06D80];
          v33 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v27 rightExpression:v32 modifier:0 type:v26 options:0];
          v34 = v33;
          v35 = MEMORY[0x1E696AB28];
          if (v25 == 51)
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

+ (id)_expressionForStringValue:(id)a3 inLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 componentsSeparatedByString:@"."];
  v8 = [v6 managedObjectContext];

  v9 = [v8 persistentStoreCoordinator];
  v10 = [v9 managedObjectModel];
  v11 = [v10 entitiesByName];

  v12 = +[PLManagedAsset entityName];
  v13 = [v11 objectForKeyedSubscript:v12];

  v14 = [v11 objectForKeyedSubscript:@"ExtendedAttributes"];
  v15 = [v11 objectForKeyedSubscript:@"AdditionalAssetAttributes"];
  v16 = [v11 objectForKeyedSubscript:@"AssetDescription"];
  if ([v7 count] == 1)
  {
    v17 = [v13 propertiesByName];
    v18 = [v7 objectAtIndexedSubscript:0];
    v19 = [v17 objectForKey:v18];

    if (v19)
    {
      v20 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v5];
LABEL_4:

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if ([v7 count] == 2)
  {
    v17 = [v13 propertiesByName];
    v21 = [v7 objectAtIndexedSubscript:0];
    v22 = [v17 objectForKey:v21];

    if (v22)
    {
      v23 = [v7 objectAtIndexedSubscript:0];
      v24 = [v23 isEqualToString:@"extendedAttributes"];

      if (v24)
      {
        v25 = [v14 propertiesByName];
        v26 = [v7 objectAtIndexedSubscript:1];
        v50 = v25;
        v27 = [v25 objectForKey:v26];

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
        v45 = [v15 propertiesByName];
        v46 = [v7 objectAtIndexedSubscript:1];
        v50 = v45;
        v47 = [v45 objectForKey:v46];

        if (!v47)
        {
LABEL_23:
          v28 = v50;
          goto LABEL_24;
        }

LABEL_19:
        v20 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v5];

        goto LABEL_4;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  if ([v7 count] == 3)
  {
    v17 = [v13 propertiesByName];
    v28 = [v7 objectAtIndexedSubscript:0];
    v29 = [v17 objectForKey:v28];
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
      v33 = [v15 propertiesByName];
      v34 = [v7 objectAtIndexedSubscript:1];
      v50 = v33;
      v35 = [v33 objectForKey:v34];

      if (v35)
      {
        v36 = [v7 objectAtIndexedSubscript:1];
        v37 = [v36 isEqualToString:@"assetDescription"];

        if (v37)
        {
          v38 = [v16 propertiesByName];
          v39 = [v7 objectAtIndexedSubscript:2];
          v40 = [v38 objectForKey:v39];

          if (v40)
          {
            v41 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v5];
            v42 = v38;
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
  v20 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v5];
LABEL_27:

  return v20;
}

+ (unint64_t)_comparatorToOperatorType:(int)a3
{
  result = 4;
  if (a3 > 21)
  {
    if (a3 <= 30)
    {
      v4 = 8;
      v5 = 9;
      if (a3 != 25)
      {
        v5 = 4;
      }

      if (a3 != 24)
      {
        v4 = v5;
      }

      if ((a3 - 22) >= 2)
      {
        return v4;
      }

      else
      {
        return 7;
      }
    }

    if ((a3 - 31) < 2)
    {
      return 10;
    }

    if (a3 != 40)
    {
      if (a3 != 41)
      {
        return result;
      }

      return 0;
    }

    return 3;
  }

  if (a3 > 4)
  {
    if ((a3 - 20) < 2)
    {
      return 99;
    }

    if (a3 == 5)
    {
      return 3;
    }

    if (a3 == 6)
    {
      return 1;
    }
  }

  else
  {
    switch(a3)
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

+ (id)_getConvertedKeys:(id)a3
{
  v3 = a3;
  if (+[PLQueryHandler _isTextComparator:](PLQueryHandler, "_isTextComparator:", [v3 comparator]))
  {
    v4 = &stru_1F0F06D80;
    v5 = &stru_1F0F06D80;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v6 = [PLQueryHandler _getConvertedQueryKey:v3];
  v7 = [v3 key];
  v8 = [v3 valueType];
  v9 = [v3 comparator];
  if (v7 > 199)
  {
    if ((v7 - 200) < 2)
    {
      if ([v3 valueType] == 1)
      {
        v14 = [v3 unit];
        v15 = [v3 firstValue];
        v11 = [PLQueryHandler _getTargetDateWithUnit:v14 dateValue:v15];
      }

      else
      {
        v19 = [v3 firstValue];
        v11 = dateFromData();
      }

      goto LABEL_56;
    }

    if (v7 != 500)
    {
      goto LABEL_8;
    }

LABEL_18:

    v16 = [v3 hasFirstValue];
    if (v9 == 22)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v9 == 22)
    {
      v18 = 5;
    }

    else
    {
      v18 = 4;
    }

    v11 = &unk_1F0FBC6E8;
    if (v16)
    {
      v9 = v17;
    }

    else
    {
      v9 = v18;
    }

    goto LABEL_56;
  }

  switch(v7)
  {
    case 3:

      if (v9 == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      v11 = &unk_1F0FBC700;
      goto LABEL_56;
    case 5:
      v20 = [v3 firstValue];
      v21 = integerFromData();

      v22 = [v3 firstValue];
      v11 = [PLQueryHandler _convertQueryValueForAssetType:integerFromData()];

      v23 = +[PLQueryHandler _convertComparatorToNumericComparator:](PLQueryHandler, "_convertComparatorToNumericComparator:", [v3 comparator]);
      if (v21 == 9)
      {
        if ([v3 comparator] == 1)
        {
          v9 = 31;
        }

        else
        {
          v9 = 32;
        }
      }

      else
      {
        v9 = v23;
      }

      goto LABEL_56;
    case 100:
      goto LABEL_18;
  }

LABEL_8:
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      v31 = MEMORY[0x1E696AD98];
      v32 = [v3 firstValue];
      v11 = [v31 numberWithInteger:integerFromData()];

      if (![v3 hasSecondValue])
      {
        goto LABEL_56;
      }

      v33 = MEMORY[0x1E696AD98];
      v27 = [v3 secondValue];
      v28 = [v33 numberWithInteger:integerFromData()];
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_48;
      }

      v24 = MEMORY[0x1E696AD98];
      v25 = [v3 firstValue];
      doubleFromData();
      v11 = [v24 numberWithDouble:?];

      if (![v3 hasSecondValue])
      {
        goto LABEL_56;
      }

      v26 = MEMORY[0x1E696AD98];
      v27 = [v3 secondValue];
      doubleFromData();
      v28 = [v26 numberWithDouble:?];
    }

    v34 = v28;

    v4 = v34;
    goto LABEL_56;
  }

  switch(v8)
  {
    case 3:
      if ([v3 hasFirstValue])
      {
        v29 = [v3 firstValue];
        v11 = stringFromData();

        v5 = v29;
      }

      else
      {
        v11 = &stru_1F0F06D80;
      }

      if ([v3 hasSecondValue])
      {
        v12 = [v3 secondValue];
        v13 = stringFromData();
LABEL_55:
        v35 = v13;

        v4 = v35;
      }

      break;
    case 5:
      if ([v3 hasFirstValue])
      {
        v30 = [v3 firstValue];
        v11 = circularRegionFromData();
      }

      else
      {
        v11 = v5;
      }

      if ([v3 hasSecondValue])
      {
        v12 = [v3 secondValue];
        v13 = circularRegionFromData();
        goto LABEL_55;
      }

      break;
    case 4:
      v10 = [v3 firstValue];
      v11 = dateFromData();

      if (![v3 hasSecondValue])
      {
        break;
      }

      v12 = [v3 secondValue];
      v13 = dateFromData();
      goto LABEL_55;
    default:
LABEL_48:
      v11 = v5;
      break;
  }

LABEL_56:
  if (v6)
  {
    v36 = MEMORY[0x1E695DF20];
    v37 = [MEMORY[0x1E696AD98] numberWithInt:v9];
    v38 = [v36 dictionaryWithObjectsAndKeys:{v6, @"key", v11, @"firstValue", v4, @"secondValue", v37, @"comparator", 0}];
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

+ (int)_convertComparatorToNumericComparator:(int)a3
{
  result = a3;
  if ((a3 - 20) <= 5)
  {
    return dword_19C60B978[a3 - 20];
  }

  return result;
}

+ (id)_getConvertedQueryKey:(id)a3
{
  v3 = a3;
  v4 = [v3 key];
  if (v4 == 5)
  {
    v5 = [v3 firstValue];
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

+ (id)_convertQueryValueForAssetType:(int)a3
{
  if (a3 == 9)
  {
    v5 = +[PLManagedAsset allHDRValues];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_convertQueryKeyTypeToString:(int)a3
{
  result = &stru_1F0F06D80;
  if (a3 > 399)
  {
    if (a3 > 499)
    {
      if (((a3 - 550) > 0x32 || ((1 << (a3 - 38)) & 0x400000000000BLL) == 0) && a3 != 500 && a3 != 1000)
      {
        return result;
      }

      return @"special";
    }

    v4 = @"additionalAttributes.originalFilename";
    v5 = @"additionalAttributes.title";
    v6 = @"additionalAttributes.assetDescription.longDescription";
    if (a3 != 403)
    {
      v6 = &stru_1F0F06D80;
    }

    if (a3 != 401)
    {
      v5 = v6;
    }

    v7 = a3 == 400;
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

  if (a3 <= 199)
  {
    if (a3 > 3)
    {
      if (a3 > 8)
      {
        if (a3 != 9 && a3 != 100)
        {
          return result;
        }
      }

      else if (a3 != 4 && a3 != 6)
      {
        return result;
      }

      return @"special";
    }

    v4 = @"favorite";
    v5 = @"hidden";
    v8 = @"adjustmentsState";
    if (a3 != 3)
    {
      v8 = &stru_1F0F06D80;
    }

    if (a3 != 2)
    {
      v5 = v8;
    }

    v7 = a3 == 1;
    goto LABEL_33;
  }

  switch(a3)
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
      if (a3 != 201)
      {
        v5 = &stru_1F0F06D80;
      }

      v7 = a3 == 200;
      goto LABEL_33;
  }

  return result;
}

+ (id)_getTargetDateForTheLastDays:(int64_t)a3 weeks:(int64_t)a4 months:(int64_t)a5 years:(int64_t)a6 seconds:(int64_t)a7 targetDate:(id)a8
{
  v13 = a8;
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DF00] date];
  }

  v14 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v15 setDay:-a3];
  [v15 setWeekOfYear:-a4];
  [v15 setMonth:-a5];
  [v15 setYear:-a6];
  [v15 setSecond:-a7];
  v16 = [v14 dateByAddingComponents:v15 toDate:v13 options:0];
  v17 = [v14 startOfDayForDate:v16];

  return v17;
}

+ (id)_getTargetDateWithUnit:(int)a3 dateValue:(id)a4
{
  v5 = integerFromData();
  v6 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v7 = v5;
      v8 = 0;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_16;
      }

      v7 = 0;
      v8 = v5;
    }

    v9 = 0;
    goto LABEL_13;
  }

  if (a3 == 3)
  {
    v7 = 0;
    v8 = 0;
    v9 = v5;
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if (a3 != 4)
  {
    if (a3 != 5)
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

+ (id)_infoFromSingleQuery:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "key")}];
  [v4 setValue:v5 forKey:*MEMORY[0x1E69C05D8]];

  v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "valueType")}];
  [v4 setValue:v6 forKey:*MEMORY[0x1E69C0600]];

  v7 = [v3 firstValue];
  [v4 setValue:v7 forKey:*MEMORY[0x1E69C05D0]];

  if ([v3 hasSecondValue])
  {
    v8 = [v3 secondValue];
    [v4 setValue:v8 forKey:*MEMORY[0x1E69C05F0]];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "comparator")}];
  [v4 setValue:v9 forKey:*MEMORY[0x1E69C05B8]];

  if ([v3 hasUnit])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "unit")}];
    [v4 setValue:v10 forKey:*MEMORY[0x1E69C05F8]];
  }

  return v4;
}

+ (id)queryFromInfo:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69BF2B8]);
  v5 = MEMORY[0x1E69C05C0];
  v6 = [v3 objectForKey:*MEMORY[0x1E69C05C0]];

  if (v6)
  {
    v7 = [v3 objectForKey:*v5];
    [v4 setConjunction:{objc_msgSend(v7, "integerValue")}];
  }

  v8 = [v3 objectForKey:*MEMORY[0x1E69C05E0]];
  v9 = v8;
  if (v8)
  {
    v38 = v3;
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
    v3 = v38;
  }

  v28 = MEMORY[0x1E69C05C8];
  v29 = [v3 objectForKey:{*MEMORY[0x1E69C05C8], v37}];

  if (v29)
  {
    v30 = [v3 objectForKey:*v28];
    v31 = [PLQueryHandler queryFromInfo:v30];
    [v4 setFirst:v31];
  }

  v32 = MEMORY[0x1E69C05E8];
  v33 = [v3 objectForKey:*MEMORY[0x1E69C05E8]];

  if (v33)
  {
    v34 = [v3 objectForKey:*v32];
    v35 = [PLQueryHandler queryFromInfo:v34];
    [v4 setSecond:v35];
  }

  return v4;
}

+ (id)infoFromQuery:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  if ([v3 hasConjunction])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "conjunction")}];
    [v4 setValue:v5 forKey:*MEMORY[0x1E69C05C0]];
  }

  if ([v3 singleQueriesCount])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "singleQueriesCount")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v3 singleQueries];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [PLQueryHandler _infoFromSingleQuery:*(*(&v18 + 1) + 8 * i)];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [v4 setValue:v6 forKey:*MEMORY[0x1E69C05E0]];
  }

  else
  {
    if ([v3 hasFirst])
    {
      v13 = [v3 first];
      v14 = [PLQueryHandler infoFromQuery:v13];
      [v4 setValue:v14 forKey:*MEMORY[0x1E69C05C8]];
    }

    if ([v3 hasSecond])
    {
      v15 = [v3 second];
      v16 = [PLQueryHandler infoFromQuery:v15];
      [v4 setValue:v16 forKey:*MEMORY[0x1E69C05E8]];
    }
  }

  return v4;
}

+ (id)constructQueryFromData:(id)a3
{
  v3 = MEMORY[0x1E69BF2B8];
  v4 = a3;
  v5 = [[v3 alloc] initWithData:v4];

  return v5;
}

@end