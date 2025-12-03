@interface PKDQuery
+ (id)queryWithCriteria:(id)criteria discoveryUUID:(id)d database:(id)database;
- (BOOL)_allowPlugInForRecord:(id)record;
- (BOOL)_needsFilter;
- (BOOL)allowPlugInWithBundleIdentifier:(id)identifier entitlements:(id)entitlements;
- (BOOL)criteriaIsSimple;
- (PKDatabase)database;
- (id)_allPlugIns;
- (id)_electionPatternAsArray;
- (id)_filterDictForRecord:(id)record;
- (id)_findPlugIns;
- (id)_findPlugInsFromEnumerator:(id)enumerator;
- (id)_findPlugInsWithExtensionPoint:(id)point platforms:(id)platforms;
- (id)_findPlugInsWithExtensionPoints:(id)points platforms:(id)platforms;
- (id)_findPlugInsWithIdentifier:(id)identifier;
- (id)_lsPattern:(id)pattern;
- (id)findPlugIns;
- (void)_safelyAddPlugIn:(id)in toSet:(id)set;
- (void)signpostBegin;
- (void)signpostEnd;
@end

@implementation PKDQuery

- (void)signpostBegin
{
  criteria = [(PKDQuery *)self criteria];
  v4 = [criteria objectForKeyedSubscript:PKProtocolAttribute];

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
  discoveryUUID = [(PKDQuery *)self discoveryUUID];
  [(PKDQuery *)self setInterval:os_signpost_id_make_with_pointer(v7, discoveryUUID)];

  v9 = pklog_handle_for_category();
  interval = [(PKDQuery *)self interval];
  if (interval - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = interval;
    if (os_signpost_enabled(v9))
    {
      discoveryUUID2 = [(PKDQuery *)self discoveryUUID];
      v13 = 138543619;
      v14 = discoveryUUID2;
      v15 = 2113;
      v16 = v6;
      _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "LSQuery", " discoveryUUID=%{public, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@ ", &v13, 0x16u);
    }
  }
}

- (id)findPlugIns
{
  _findPlugIns = [(PKDQuery *)self _findPlugIns];

  return _findPlugIns;
}

- (id)_findPlugIns
{
  criteria = [(PKDQuery *)self criteria];
  criteriaIsSimple = [(PKDQuery *)self criteriaIsSimple];
  v5 = pklog_handle_for_category();
  v6 = v5;
  if (criteriaIsSimple)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = criteria;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "got simple query: %@", &v15, 0xCu);
    }

    if (![criteria count])
    {
      _allPlugIns = [(PKDQuery *)self _allPlugIns];
      goto LABEL_23;
    }

    v7 = [criteria objectForKeyedSubscript:PKIdentifierAttribute];
    v8 = v7;
    if (!v7)
    {
      v8 = [criteria objectForKeyedSubscript:PKCFBundleIdentifierAttribute];
    }

    v9 = v8;
    if (!v7)
    {
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _allPlugIns = [(PKDQuery *)self _findPlugInsWithIdentifier:v9];
LABEL_22:

      goto LABEL_23;
    }

    v11 = [criteria objectForKeyedSubscript:PKProtocolAttribute];
    v12 = [criteria objectForKeyedSubscript:PKExtensionPlatformsAttribute];
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
        _allPlugIns = 0;
        goto LABEL_21;
      }

      v13 = [(PKDQuery *)self _findPlugInsWithExtensionPoints:v11 platforms:v12];
    }

    _allPlugIns = v13;
LABEL_21:

    goto LABEL_22;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PKDQuery _findPlugIns];
  }

  _allPlugIns = 0;
LABEL_23:

  return _allPlugIns;
}

- (BOOL)criteriaIsSimple
{
  if (criteriaIsSimple_onceToken != -1)
  {
    selfCopy = self;
    [PKDQuery criteriaIsSimple];
    self = selfCopy;
  }

  criteria = [(PKDQuery *)self criteria];
  allKeys = [criteria allKeys];
  v4 = [NSSet setWithArray:allKeys];

  LOBYTE(criteria) = [v4 isSubsetOfSet:criteriaIsSimple_simpleSet];
  return criteria;
}

- (PKDatabase)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

- (id)_electionPatternAsArray
{
  criteria = [(PKDQuery *)self criteria];
  v4 = [criteria objectForKeyedSubscript:PKUserElectionAttribute];

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
  _electionPatternAsArray = [(PKDQuery *)self _electionPatternAsArray];
  v3 = _electionPatternAsArray != 0;

  return v3;
}

- (void)signpostEnd
{
  v3 = pklog_handle_for_category();
  interval = [(PKDQuery *)self interval];
  if (interval - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = interval;
    if (os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_END, v5, "LSQuery", &unk_2111E, v6, 2u);
    }
  }
}

+ (id)queryWithCriteria:(id)criteria discoveryUUID:(id)d database:(id)database
{
  criteriaCopy = criteria;
  dCopy = d;
  databaseCopy = database;
  v10 = objc_opt_new();
  v11 = *(v10 + 8);
  *(v10 + 8) = criteriaCopy;
  v12 = criteriaCopy;

  v13 = *(v10 + 40);
  *(v10 + 40) = dCopy;

  objc_storeWeak((v10 + 32), databaseCopy);

  return v10;
}

- (BOOL)allowPlugInWithBundleIdentifier:(id)identifier entitlements:(id)entitlements
{
  identifierCopy = identifier;
  entitlementsCopy = entitlements;
  _electionPatternAsArray = [(PKDQuery *)self _electionPatternAsArray];
  if (_electionPatternAsArray)
  {
    v9 = [entitlementsCopy objectForKey:PKOverrideEntitlement ofClass:objc_opt_class()];
    v10 = v9;
    if (v9)
    {
      v11 = v9;

      identifierCopy = v11;
    }

    database = [(PKDQuery *)self database];
    v13 = [database annotationForIdentifier:identifierCopy];

    v14 = [v13 objectForKeyedSubscript:PKAnnotationElectionKey];
    if (!v14)
    {
      v15 = [entitlementsCopy objectForKey:PKAutoElectEntitlement ofClass:objc_opt_class()];
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
    v17 = [_electionPatternAsArray containsObject:v16];
    if ((v17 & 1) == 0)
    {
      v18 = pklog_handle_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        discoveryUUID = [(PKDQuery *)self discoveryUUID];
        *buf = 138412802;
        v22 = discoveryUUID;
        v23 = 2112;
        v24 = identifierCopy;
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

- (void)_safelyAddPlugIn:(id)in toSet:(id)set
{
  inCopy = in;
  setCopy = set;
  if (inCopy)
  {
    v6 = +[PKDPlugIn nullPlugIn];
    v7 = v6 != inCopy;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [setCopy addObject:inCopy];
  }
}

- (id)_lsPattern:(id)pattern
{
  patternCopy = pattern;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [patternCopy length])
  {
    v4 = [patternCopy characterAtIndex:0];
    if (v4 == 61)
    {
      v5 = [patternCopy substringFromIndex:1];
LABEL_7:
      v8 = v5;
      goto LABEL_9;
    }

    v6 = v4;
    v7 = +[NSCharacterSet alphanumericCharacterSet];
    LODWORD(v6) = [v7 characterIsMember:v6];

    if (v6)
    {
      v5 = patternCopy;
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_filterDictForRecord:(id)record
{
  recordCopy = record;
  v4 = objc_opt_new();
  entitlements = [recordCopy entitlements];
  v6 = PKOverrideEntitlement;
  v7 = [entitlements objectForKey:PKOverrideEntitlement ofClass:objc_opt_class()];
  [v4 setObject:v7 forKeyedSubscript:v6];

  entitlements2 = [recordCopy entitlements];

  v9 = PKAutoElectEntitlement;
  v10 = [entitlements2 objectForKey:PKAutoElectEntitlement ofClass:objc_opt_class()];
  [v4 setObject:v10 forKeyedSubscript:v9];

  v11 = [v4 copy];

  return v11;
}

- (BOOL)_allowPlugInForRecord:(id)record
{
  recordCopy = record;
  v5 = [(PKDQuery *)self _filterDictForRecord:recordCopy];
  bundleIdentifier = [recordCopy bundleIdentifier];

  LOBYTE(self) = [(PKDQuery *)self allowPlugInWithBundleIdentifier:bundleIdentifier entitlements:v5];
  return self;
}

- (id)_findPlugInsFromEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v5 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  if ([(PKDQuery *)self _needsFilter])
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __39__PKDQuery__findPlugInsFromEnumerator___block_invoke;
    v23[3] = &unk_28B58;
    v23[4] = self;
    [enumeratorCopy setFilter:v23];
  }

  v6 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = enumeratorCopy;
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
        database = [(PKDQuery *)self database];
        discoveryUUID = [(PKDQuery *)self discoveryUUID];
        v15 = [database plugInForExtensionRecord:v12 discoveryInstanceUUID:discoveryUUID extensionPointCache:v6];

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
  database = [(PKDQuery *)self database];
  external = [database external];
  v5 = [external ls];
  plugInRecordEnumerator = [v5 plugInRecordEnumerator];

  v7 = [(PKDQuery *)self _findPlugInsFromEnumerator:plugInRecordEnumerator];

  return v7;
}

- (id)_findPlugInsWithExtensionPoint:(id)point platforms:(id)platforms
{
  pointCopy = point;
  platformsCopy = platforms;
  v8 = objc_opt_new();
  objc_opt_class();
  v37 = pointCopy;
  if (objc_opt_isKindOfClass())
  {
    if (platformsCopy)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v9 = platformsCopy;
      v10 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (!v10)
      {
        goto LABEL_27;
      }

      v36 = platformsCopy;
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
          database = [(PKDQuery *)self database];
          external = [database external];
          v17 = [external ls];
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
      database2 = [(PKDQuery *)self database];
      external2 = [database2 external];
      v22 = [external2 ls];
      v23 = [v22 extensionPointRecordEnumeratorForExtensionPointIdentifier:pointCopy];

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
            database3 = [(PKDQuery *)self database];
            external3 = [database3 external];
            v31 = [external3 ls];
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

    platformsCopy = v36;
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

- (id)_findPlugInsWithExtensionPoints:(id)points platforms:(id)platforms
{
  pointsCopy = points;
  platformsCopy = platforms;
  v8 = objc_opt_new();
  v9 = objc_autoreleasePoolPush();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = pointsCopy;
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

        v15 = [(PKDQuery *)self _findPlugInsWithExtensionPoint:*(*(&v18 + 1) + 8 * v13) platforms:platformsCopy, v18];
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

- (id)_findPlugInsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_opt_new();
  v6 = objc_autoreleasePoolPush();
  database = [(PKDQuery *)self database];
  external = [database external];
  v9 = [external ls];
  v10 = [v9 plugInRecordForIdentifier:identifierCopy];

  if (v10)
  {
    if (![(PKDQuery *)self _needsFilter]|| [(PKDQuery *)self _allowPlugInForRecord:v10])
    {
      v11 = +[NSMutableDictionary dictionary];
      database2 = [(PKDQuery *)self database];
      discoveryUUID = [(PKDQuery *)self discoveryUUID];
      v14 = [database2 plugInForExtensionRecord:v10 discoveryInstanceUUID:discoveryUUID extensionPointCache:v11];

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