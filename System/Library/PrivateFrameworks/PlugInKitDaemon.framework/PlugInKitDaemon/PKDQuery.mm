@interface PKDQuery
+ (id)queryWithCriteria:(id)a3 discoveryUUID:(id)a4 database:(id)a5;
- (BOOL)_allowPlugInForRecord:(id)a3;
- (BOOL)_needsFilter;
- (BOOL)allowPlugInWithBundleIdentifier:(id)a3 entitlements:(id)a4;
- (BOOL)criteriaIsSimple;
- (PKDatabase)database;
- (id)_allPlugIns;
- (id)_electionPatternAsArray;
- (id)_filterDictForRecord:(id)a3;
- (id)_findPlugIns;
- (id)_findPlugInsFromEnumerator:(id)a3;
- (id)_findPlugInsWithExtensionPoint:(id)a3 platforms:(id)a4;
- (id)_findPlugInsWithExtensionPoints:(id)a3 platforms:(id)a4;
- (id)_findPlugInsWithIdentifier:(id)a3;
- (id)_lsPattern:(id)a3;
- (id)findPlugIns;
- (void)_safelyAddPlugIn:(id)a3 toSet:(id)a4;
- (void)signpostBegin;
- (void)signpostEnd;
@end

@implementation PKDQuery

- (void)signpostBegin
{
  v3 = [(PKDQuery *)self criteria];
  v4 = [v3 objectForKeyedSubscript:PKProtocolAttribute];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [(PKDQuery *)self setSignpostIdentifier:v6];
  v7 = pklog_handle_for_category();
  v8 = [(PKDQuery *)self discoveryUUID];
  [(PKDQuery *)self setInterval:os_signpost_id_make_with_pointer(v7, v8)];

  v9 = pklog_handle_for_category();
  v10 = [(PKDQuery *)self interval];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v12 = [(PKDQuery *)self discoveryUUID];
      v13 = 138543619;
      v14 = v12;
      v15 = 2113;
      v16 = v6;
      _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "LSQuery", " discoveryUUID=%{public, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@ ", &v13, 0x16u);
    }
  }
}

- (id)findPlugIns
{
  v2 = [(PKDQuery *)self _findPlugIns];

  return v2;
}

- (id)_findPlugIns
{
  v3 = [(PKDQuery *)self criteria];
  v4 = [(PKDQuery *)self criteriaIsSimple];
  v5 = pklog_handle_for_category();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "got simple query: %@", &v15, 0xCu);
    }

    if (![v3 count])
    {
      v10 = [(PKDQuery *)self _allPlugIns];
      goto LABEL_23;
    }

    v7 = [v3 objectForKeyedSubscript:PKIdentifierAttribute];
    v8 = v7;
    if (!v7)
    {
      v8 = [v3 objectForKeyedSubscript:PKCFBundleIdentifierAttribute];
    }

    v9 = v8;
    if (!v7)
    {
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(PKDQuery *)self _findPlugInsWithIdentifier:v9];
LABEL_22:

      goto LABEL_23;
    }

    v11 = [v3 objectForKeyedSubscript:PKProtocolAttribute];
    v12 = [v3 objectForKeyedSubscript:PKExtensionPlatformsAttribute];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(PKDQuery *)self _findPlugInsWithExtensionPoint:v11 platforms:v12];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = 0;
        goto LABEL_21;
      }

      v13 = [(PKDQuery *)self _findPlugInsWithExtensionPoints:v11 platforms:v12];
    }

    v10 = v13;
LABEL_21:

    goto LABEL_22;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PKDQuery _findPlugIns];
  }

  v10 = 0;
LABEL_23:

  return v10;
}

- (BOOL)criteriaIsSimple
{
  if (criteriaIsSimple_onceToken != -1)
  {
    v6 = self;
    [PKDQuery criteriaIsSimple];
    self = v6;
  }

  v2 = [(PKDQuery *)self criteria];
  v3 = [v2 allKeys];
  v4 = [NSSet setWithArray:v3];

  LOBYTE(v2) = [v4 isSubsetOfSet:criteriaIsSimple_simpleSet];
  return v2;
}

- (PKDatabase)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

- (id)_electionPatternAsArray
{
  v3 = [(PKDQuery *)self criteria];
  v4 = [v3 objectForKeyedSubscript:PKUserElectionAttribute];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        v9 = 0;
        if (v7 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v7;
        }

        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(PKDQuery *)self _lsPattern:*(*(&v15 + 1) + 8 * v9), v15];
          if (!v11)
          {

            v13 = 0;
            goto LABEL_17;
          }

          [v5 addObject:v11];

          ++v9;
        }

        while (v10 != v9);
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = v5;
    v5 = v12;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_19;
    }

    v5 = [(PKDQuery *)self _lsPattern:v4];
    v19 = v5;
    v12 = [NSArray arrayWithObjects:&v19 count:1];
  }

  v13 = v12;
LABEL_17:

LABEL_19:

  return v13;
}

- (BOOL)_needsFilter
{
  v2 = [(PKDQuery *)self _electionPatternAsArray];
  v3 = v2 != 0;

  return v3;
}

- (void)signpostEnd
{
  v3 = pklog_handle_for_category();
  v4 = [(PKDQuery *)self interval];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_END, v5, "LSQuery", &unk_2111E, v6, 2u);
    }
  }
}

+ (id)queryWithCriteria:(id)a3 discoveryUUID:(id)a4 database:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = *(v10 + 8);
  *(v10 + 8) = v7;
  v12 = v7;

  v13 = *(v10 + 40);
  *(v10 + 40) = v8;

  objc_storeWeak((v10 + 32), v9);

  return v10;
}

- (BOOL)allowPlugInWithBundleIdentifier:(id)a3 entitlements:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKDQuery *)self _electionPatternAsArray];
  if (v8)
  {
    v9 = [v7 objectForKey:PKOverrideEntitlement ofClass:objc_opt_class()];
    v10 = v9;
    if (v9)
    {
      v11 = v9;

      v6 = v11;
    }

    v12 = [(PKDQuery *)self database];
    v13 = [v12 annotationForIdentifier:v6];

    v14 = [v13 objectForKeyedSubscript:PKAnnotationElectionKey];
    if (!v14)
    {
      v15 = [v7 objectForKey:PKAutoElectEntitlement ofClass:objc_opt_class()];
      if ([v15 BOOLValue])
      {
        v14 = &off_2A210;
      }

      else
      {
        v14 = &off_2A228;
      }
    }

    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v14 integerValue]);
    v17 = [v8 containsObject:v16];
    if ((v17 & 1) == 0)
    {
      v18 = pklog_handle_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [(PKDQuery *)self discoveryUUID];
        *buf = 138412802;
        v22 = v19;
        v23 = 2112;
        v24 = v6;
        v25 = 2114;
        v26 = v14;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "[d %@] [%@] rejecting; election criteria excludes election state: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

void __28__PKDQuery_criteriaIsSimple__block_invoke(id a1)
{
  v1 = [NSSet alloc];
  v5[0] = PKProtocolAttribute;
  v5[1] = PKIdentifierAttribute;
  v5[2] = PKCFBundleIdentifierAttribute;
  v5[3] = PKExtensionPlatformsAttribute;
  v5[4] = PKExtensionActivationRuleAttribute;
  v5[5] = PKUserElectionAttribute;
  v2 = [NSArray arrayWithObjects:v5 count:6];
  v3 = [v1 initWithArray:v2];
  v4 = criteriaIsSimple_simpleSet;
  criteriaIsSimple_simpleSet = v3;
}

- (void)_safelyAddPlugIn:(id)a3 toSet:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (v8)
  {
    v6 = +[PKDPlugIn nullPlugIn];
    v7 = v6 != v8;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [v5 addObject:v8];
  }
}

- (id)_lsPattern:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
  {
    v4 = [v3 characterAtIndex:0];
    if (v4 == 61)
    {
      v5 = [v3 substringFromIndex:1];
LABEL_7:
      v8 = v5;
      goto LABEL_9;
    }

    v6 = v4;
    v7 = +[NSCharacterSet alphanumericCharacterSet];
    LODWORD(v6) = [v7 characterIsMember:v6];

    if (v6)
    {
      v5 = v3;
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_filterDictForRecord:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 entitlements];
  v6 = PKOverrideEntitlement;
  v7 = [v5 objectForKey:PKOverrideEntitlement ofClass:objc_opt_class()];
  [v4 setObject:v7 forKeyedSubscript:v6];

  v8 = [v3 entitlements];

  v9 = PKAutoElectEntitlement;
  v10 = [v8 objectForKey:PKAutoElectEntitlement ofClass:objc_opt_class()];
  [v4 setObject:v10 forKeyedSubscript:v9];

  v11 = [v4 copy];

  return v11;
}

- (BOOL)_allowPlugInForRecord:(id)a3
{
  v4 = a3;
  v5 = [(PKDQuery *)self _filterDictForRecord:v4];
  v6 = [v4 bundleIdentifier];

  LOBYTE(self) = [(PKDQuery *)self allowPlugInWithBundleIdentifier:v6 entitlements:v5];
  return self;
}

- (id)_findPlugInsFromEnumerator:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  if ([(PKDQuery *)self _needsFilter])
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __39__PKDQuery__findPlugInsFromEnumerator___block_invoke;
    v23[3] = &unk_28B58;
    v23[4] = self;
    [v4 setFilter:v23];
  }

  v6 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      v10 = 0;
      if (v8 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v8;
      }

      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v10);
        v13 = [(PKDQuery *)self database];
        v14 = [(PKDQuery *)self discoveryUUID];
        v15 = [v13 plugInForExtensionRecord:v12 discoveryInstanceUUID:v14 extensionPointCache:v6];

        [(PKDQuery *)self _safelyAddPlugIn:v15 toSet:v5];
        ++v10;
      }

      while (v11 != v10);
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);
  v16 = [v5 copy];

  return v16;
}

- (id)_allPlugIns
{
  v3 = [(PKDQuery *)self database];
  v4 = [v3 external];
  v5 = [v4 ls];
  v6 = [v5 plugInRecordEnumerator];

  v7 = [(PKDQuery *)self _findPlugInsFromEnumerator:v6];

  return v7;
}

- (id)_findPlugInsWithExtensionPoint:(id)a3 platforms:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  objc_opt_class();
  v37 = v6;
  if (objc_opt_isKindOfClass())
  {
    if (v7)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (!v10)
      {
        goto LABEL_27;
      }

      v36 = v7;
      v11 = *v43;
      do
      {
        v12 = 0;
        if (v10 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v10;
        }

        do
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v42 + 1) + 8 * v12);
          v15 = [(PKDQuery *)self database];
          v16 = [v15 external];
          v17 = [v16 ls];
          v18 = [v17 plugInRecordEnumeratorWithExtensionPointName:v37 platform:{objc_msgSend(v14, "unsignedIntValue")}];

          v19 = [(PKDQuery *)self _findPlugInsFromEnumerator:v18];
          [v8 unionSet:v19];

          ++v12;
        }

        while (v13 != v12);
        v10 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v10);
    }

    else
    {
      v36 = 0;
      v20 = [(PKDQuery *)self database];
      v21 = [v20 external];
      v22 = [v21 ls];
      v23 = [v22 extensionPointRecordEnumeratorForExtensionPointIdentifier:v6];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = v23;
      v24 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v24)
      {
        v25 = *v39;
        do
        {
          v26 = 0;
          if (v24 <= 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = v24;
          }

          do
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(v9);
            }

            v28 = *(*(&v38 + 1) + 8 * v26);
            v29 = [(PKDQuery *)self database];
            v30 = [v29 external];
            v31 = [v30 ls];
            v32 = [v31 plugInRecordEnumeratorForExtensionPointRecord:v28];

            if (v32)
            {
              v33 = [(PKDQuery *)self _findPlugInsFromEnumerator:v32];
              [v8 unionSet:v33];
            }

            ++v26;
          }

          while (v27 != v26);
          v24 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v24);
      }
    }

    v7 = v36;
  }

  else
  {
    v9 = pklog_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PKDQuery _findPlugInsWithExtensionPoint:platforms:];
    }
  }

LABEL_27:

  v34 = [v8 copy];

  return v34;
}

- (id)_findPlugInsWithExtensionPoints:(id)a3 platforms:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = objc_autoreleasePoolPush();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      v13 = 0;
      if (v11 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v11;
      }

      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(PKDQuery *)self _findPlugInsWithExtensionPoint:*(*(&v18 + 1) + 8 * v13) platforms:v7, v18];
        [v8 unionSet:v15];

        ++v13;
      }

      while (v14 != v13);
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(v9);
  v16 = [v8 copy];

  return v16;
}

- (id)_findPlugInsWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_autoreleasePoolPush();
  v7 = [(PKDQuery *)self database];
  v8 = [v7 external];
  v9 = [v8 ls];
  v10 = [v9 plugInRecordForIdentifier:v4];

  if (v10)
  {
    if (![(PKDQuery *)self _needsFilter]|| [(PKDQuery *)self _allowPlugInForRecord:v10])
    {
      v11 = +[NSMutableDictionary dictionary];
      v12 = [(PKDQuery *)self database];
      v13 = [(PKDQuery *)self discoveryUUID];
      v14 = [v12 plugInForExtensionRecord:v10 discoveryInstanceUUID:v13 extensionPointCache:v11];

      [(PKDQuery *)self _safelyAddPlugIn:v14 toSet:v5];
      v15 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = pklog_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PKDQuery _findPlugInsWithIdentifier:];
    }
  }

  self = [v5 copy];
  v15 = 0;
LABEL_9:

  objc_autoreleasePoolPop(v6);
  if (v15)
  {
    self = [v5 copy];
  }

  return self;
}

@end