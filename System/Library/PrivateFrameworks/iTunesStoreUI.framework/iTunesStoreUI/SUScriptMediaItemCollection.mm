@interface SUScriptMediaItemCollection
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (MPMediaItemCollection)nativeCollection;
- (NSArray)items;
- (NSArray)mediaTypes;
- (SUScriptMediaItem)representativeItem;
- (SUScriptMediaItemCollection)initWithItems:(id)a3;
- (id)scriptAttributeKeys;
- (int64_t)count;
- (void)_beginWatchingLibraryIfNecessary;
- (void)_libraryChangedNotification:(id)a3;
- (void)dealloc;
@end

@implementation SUScriptMediaItemCollection

- (SUScriptMediaItemCollection)initWithItems:(id)a3
{
  v4 = [(SUScriptObject *)self init];
  if (v4)
  {
    if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (a3 = [a3 copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()]) != 0)
    {
      WebThreadRunOnMainThread();
    }

    else
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];

      a3 = 0;
      v4 = 0;
    }
  }

  return v4;
}

void __45__SUScriptMediaItemCollection_initWithItems___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) nativeItem];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [objc_alloc(MEMORY[0x1E69705E0]) initWithItems:v2];
  if (v9)
  {
    v10 = v9;
    [*(a1 + 40) setNativeObject:{+[SUScriptNativeObject objectWithNativeObject:](SUScriptNativeObject, "objectWithNativeObject:", v9)}];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E696FBA8] object:0];

  v4.receiver = self;
  v4.super_class = SUScriptMediaItemCollection;
  [(SUScriptObject *)&v4 dealloc];
}

- (MPMediaItemCollection)nativeCollection
{
  v2 = [(SUScriptObject *)self nativeObject];

  return [(SUScriptNativeObject *)v2 object];
}

- (int64_t)count
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __36__SUScriptMediaItemCollection_count__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeObject")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSArray)items
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__23;
  v12 = __Block_byref_object_dispose__23;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __36__SUScriptMediaItemCollection_items__block_invoke(uint64_t result)
{
  v14 = *MEMORY[0x1E69E9840];
  *(*(*(result + 40) + 8) + 40) = *(*(result + 32) + 72);
  if (!*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    *(*(*(result + 40) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2 = [objc_msgSend(objc_msgSend(*(v1 + 32) "nativeObject")];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v9 + 1) + 8 * v6);
          v8 = objc_alloc_init(SUScriptMediaItem);
          [(SUScriptObject *)v8 setNativeObject:[SUScriptNativeObject objectWithNativeObject:v7]];
          [*(*(*(v1 + 40) + 8) + 40) addObject:v8];

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }

    *(*(v1 + 32) + 72) = *(*(*(v1 + 40) + 8) + 40);
    [*(v1 + 32) checkInScriptObjects:*(*(*(v1 + 40) + 8) + 40)];
    return [*(v1 + 32) _beginWatchingLibraryIfNecessary];
  }

  return result;
}

- (NSArray)mediaTypes
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WebThreadRunOnMainThread();
  return v2;
}

uint64_t __41__SUScriptMediaItemCollection_mediaTypes__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeObject")];
  if (result > 254)
  {
    if (result == 65280)
    {
      v3 = @"any-video";
      goto LABEL_23;
    }

    if (result == 255)
    {
      v3 = @"any-audio";
      goto LABEL_23;
    }
  }

  else
  {
    if (result == -1)
    {
      v3 = @"any";
      goto LABEL_23;
    }

    if (result == 4)
    {
      v3 = @"audiobook";
      goto LABEL_23;
    }
  }

  if (result)
  {
    v3 = @"music";
  }

  else if ((result & 2) != 0)
  {
    v3 = @"podcast";
  }

  else if ((result & 0x100) != 0)
  {
    v3 = @"movie";
  }

  else if ((result & 0x200) != 0)
  {
    v3 = @"tv-show";
  }

  else if ((result & 0x400) != 0)
  {
    v3 = @"video-podcast";
  }

  else
  {
    if ((result & 0x800) == 0)
    {
      return result;
    }

    v3 = @"music-video";
  }

LABEL_23:
  v4 = *(a1 + 40);

  return [v4 addObject:v3];
}

- (SUScriptMediaItem)representativeItem
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__23;
  v12 = __Block_byref_object_dispose__23;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  return v4;
}

id __49__SUScriptMediaItemCollection_representativeItem__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[10])
  {
    v3 = [objc_msgSend(objc_msgSend(v2 "nativeObject")];
    if (v3)
    {
      v4 = v3;
      *(*(a1 + 32) + 80) = objc_alloc_init(SUScriptMediaItem);
      [*(*(a1 + 32) + 80) setNativeObject:{+[SUScriptNativeObject objectWithNativeObject:](SUScriptNativeObject, "objectWithNativeObject:", v4)}];
      [*(a1 + 32) checkInScriptObject:*(*(a1 + 32) + 80)];
      [*(a1 + 32) _beginWatchingLibraryIfNecessary];
    }
  }

  result = *(*(a1 + 32) + 80);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_libraryChangedNotification:(id)a3
{
  self->_items = 0;

  self->_representativeItem = 0;
}

- (void)_beginWatchingLibraryIfNecessary
{
  if (!self->_watchingLibrary)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    self->_watchingLibrary = 1;
    v4 = *MEMORY[0x1E696FBA8];

    [v3 addObserver:self selector:sel__libraryChangedNotification_ name:v4 object:0];
  }
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_36 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptMediaItemCollection;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptMediaItemCollection;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_36 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_36 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"count", @"items", @"items", @"mediaTypes", @"mediaTypes", @"representativeItem", @"representativeItem", 0}];
  }
}

@end