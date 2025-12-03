@interface SUScriptMediaQuery
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (MPMediaQuery)nativeQuery;
- (NSArray)collections;
- (NSArray)items;
- (NSString)groupingType;
- (id)canFilterByProperty:(id)property;
- (id)filterPredicates;
- (id)makeFilterPredicateWithProperty:(id)property value:(id)value comparisonType:(id)type;
- (id)scriptAttributeKeys;
- (void)_beginWatchingLibraryIfNecessary;
- (void)_resetCaches;
- (void)addFilterPredicate:(id)predicate;
- (void)dealloc;
- (void)removeFilterPredicate:(id)predicate;
- (void)setFilterPredicates:(id)predicates;
- (void)setGroupingType:(id)type;
@end

@implementation SUScriptMediaQuery

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696FBA8] object:0];

  v4.receiver = self;
  v4.super_class = SUScriptMediaQuery;
  [(SUScriptObject *)&v4 dealloc];
}

- (MPMediaQuery)nativeQuery
{
  nativeObject = [(SUScriptObject *)self nativeObject];

  return [(SUScriptNativeObject *)nativeObject object];
}

- (void)addFilterPredicate:(id)predicate
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __41__SUScriptMediaQuery_addFilterPredicate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) nativePredicate];
  if (result)
  {
    [objc_msgSend(objc_msgSend(*(a1 + 40) "nativeObject")];
    v3 = *(a1 + 40);

    return [v3 _resetCaches];
  }

  return result;
}

- (id)canFilterByProperty:(id)property
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  if (*(v7 + 24))
  {
    v3 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;
  _Block_object_dispose(&v6, 8);
  return v4;
}

uint64_t __42__SUScriptMediaQuery_canFilterByProperty___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x1E69705D0] canFilterByProperty:*(a1 + 32)])
  {
    result = 1;
  }

  else
  {
    result = [MEMORY[0x1E6970600] canFilterByProperty:*(a1 + 32)];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)makeFilterPredicateWithProperty:(id)property value:(id)value comparisonType:(id)type
{
  v5 = [[SUScriptMediaPropertyPredicate alloc] initWithProperty:property value:value comparisonType:type];

  return v5;
}

- (void)removeFilterPredicate:(id)predicate
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __44__SUScriptMediaQuery_removeFilterPredicate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) nativePredicate];
  if (result)
  {
    [objc_msgSend(objc_msgSend(*(a1 + 40) "nativeObject")];
    v3 = *(a1 + 40);

    return [v3 _resetCaches];
  }

  return result;
}

- (NSArray)collections
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__22;
  v12 = __Block_byref_object_dispose__22;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

id __33__SUScriptMediaQuery_collections__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  result = *(*(a1 + 32) + 72);
  *(*(*(a1 + 40) + 8) + 40) = result;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeObject")];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = v3;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = off_1E8162EB0;
          }

          else
          {
            v9 = off_1E8162E70;
          }

          v10 = objc_alloc_init(*v9);
          [v10 setNativeObject:{+[SUScriptNativeObject objectWithNativeObject:](SUScriptNativeObject, "objectWithNativeObject:", v8)}];
          [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
        }

        v5 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    *(*(a1 + 32) + 72) = *(*(*(a1 + 40) + 8) + 40);
    [*(a1 + 32) checkInScriptObjects:*(*(*(a1 + 40) + 8) + 40)];
    return [*(a1 + 32) _beginWatchingLibraryIfNecessary];
  }

  return result;
}

- (id)filterPredicates
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__22;
  v12 = __Block_byref_object_dispose__22;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

id __38__SUScriptMediaQuery_filterPredicates__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  result = *(*(a1 + 32) + 80);
  *(*(*(a1 + 40) + 8) + 40) = result;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeObject")];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          v9 = objc_alloc_init(SUScriptMediaPropertyPredicate);
          [(SUScriptObject *)v9 setNativeObject:[SUScriptNativeObject objectWithNativeObject:v8]];
          [*(*(*(a1 + 40) + 8) + 40) addObject:v9];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    *(*(a1 + 32) + 80) = *(*(*(a1 + 40) + 8) + 40);
    return [*(a1 + 32) checkInScriptObjects:*(*(*(a1 + 40) + 8) + 40)];
  }

  return result;
}

- (NSString)groupingType
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__22;
  v12 = __Block_byref_object_dispose__22;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

unint64_t __34__SUScriptMediaQuery_groupingType__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeObject")];
  if (result <= 7)
  {
    result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:off_1E8165E28[result]];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (NSArray)items
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__22;
  v12 = __Block_byref_object_dispose__22;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

id __27__SUScriptMediaQuery_items__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  result = *(*(a1 + 32) + 88);
  *(*(*(a1 + 40) + 8) + 40) = result;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeObject")];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          v9 = objc_alloc_init(SUScriptMediaItem);
          [(SUScriptObject *)v9 setNativeObject:[SUScriptNativeObject objectWithNativeObject:v8]];
          [*(*(*(a1 + 40) + 8) + 40) addObject:v9];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    *(*(a1 + 32) + 88) = *(*(*(a1 + 40) + 8) + 40);
    [*(a1 + 32) checkInScriptObjects:*(*(*(a1 + 40) + 8) + 40)];
    return [*(a1 + 32) _beginWatchingLibraryIfNecessary];
  }

  return result;
}

- (void)setFilterPredicates:(id)predicates
{
  predicatesCopy = predicates;
  if (predicates)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
      predicatesCopy = 0;
      goto LABEL_7;
    }

    predicatesCopy = [predicatesCopy copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
    if (!predicatesCopy)
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
      goto LABEL_7;
    }
  }

  WebThreadRunOnMainThread();
LABEL_7:
}

void __42__SUScriptMediaQuery_setFilterPredicates___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * i) nativePredicate];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) _resetCaches];
  [objc_msgSend(objc_msgSend(*(a1 + 40) "nativeObject")];
}

- (void)setGroupingType:(id)type
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __38__SUScriptMediaQuery_setGroupingType___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "nativeObject")];
  if ([*(a1 + 40) isEqualToString:@"album"])
  {
    v3 = 1;
  }

  else if ([*(a1 + 40) isEqualToString:@"album-artist"])
  {
    v3 = 3;
  }

  else if ([*(a1 + 40) isEqualToString:@"artist"])
  {
    v3 = 2;
  }

  else if ([*(a1 + 40) isEqualToString:@"composer"])
  {
    v3 = 4;
  }

  else if ([*(a1 + 40) isEqualToString:@"genre"])
  {
    v3 = 5;
  }

  else if ([*(a1 + 40) isEqualToString:@"playlist"])
  {
    v3 = 6;
  }

  else if ([*(a1 + 40) isEqualToString:@"podcast-title"])
  {
    v3 = 7;
  }

  else
  {
    if (![*(a1 + 40) isEqualToString:@"title"])
    {
      goto LABEL_18;
    }

    v3 = 0;
  }

  [v2 setGroupingType:v3];
LABEL_18:
  v4 = *(a1 + 32);

  return [v4 _resetCaches];
}

- (void)_beginWatchingLibraryIfNecessary
{
  if (!self->_watchingLibrary)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    self->_watchingLibrary = 1;
    v4 = *MEMORY[0x1E696FBA8];

    [defaultCenter addObserver:self selector:sel__libraryChangedNotification_ name:v4 object:0];
  }
}

- (void)_resetCaches
{
  self->_collections = 0;

  self->_filterPredicates = 0;
  self->_items = 0;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_35 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptMediaQuery;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_30, 4);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptMediaQuery;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptMediaQuery;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_35 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_30 = sel_addFilterPredicate_;
    unk_1EBF3B070 = @"addFilterPredicate";
    qword_1EBF3B078 = sel_canFilterByProperty_;
    unk_1EBF3B080 = @"canFilterByProperty";
    qword_1EBF3B088 = sel_makeFilterPredicateWithProperty_value_comparisonType_;
    unk_1EBF3B090 = @"createFilterPredicate";
    qword_1EBF3B098 = sel_removeFilterPredicate_;
    unk_1EBF3B0A0 = @"removeFilterPredicate";
    __KeyMapping_35 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"collections", @"filterPredicates", @"filterPredicates", @"groupingType", @"groupingType", @"items", @"items", 0}];
  }
}

@end