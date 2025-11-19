@interface SUScriptMediaPlaylist
+ (id)scriptPlaylistAttributesForNativePlaylistAttributes:(unint64_t)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (unint64_t)nativePlaylistAttributesForScriptPlaylistAttributes:(id)a3;
+ (void)initialize;
- (MPMediaPlaylist)nativePlaylist;
- (id)valueForProperty:(id)a3;
@end

@implementation SUScriptMediaPlaylist

+ (unint64_t)nativePlaylistAttributesForScriptPlaylistAttributes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v14;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(a3);
      }

      v9 = *(*(&v13 + 1) + 8 * i);
      v10 = &off_1E8165EA8;
      v11 = 4;
      do
      {
        if ([*v10 isEqual:v9])
        {
          v6 |= *(v10 - 1);
        }

        v10 += 2;
        --v11;
      }

      while (v11);
    }

    v5 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v5);
  return v6;
}

+ (id)scriptPlaylistAttributesForNativePlaylistAttributes:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = &off_1E8165EA8;
  v6 = 4;
  while (1)
  {
    v7 = *(v5 - 1);
    if (v7 == a3)
    {
      break;
    }

    if ((v7 & a3) != 0)
    {
      [v4 addObject:*v5];
    }

    v5 += 2;
    if (!--v6)
    {
      return v4;
    }
  }

  [v4 removeAllObjects];
  [v4 addObject:*v5];
  return v4;
}

- (MPMediaPlaylist)nativePlaylist
{
  v2 = [(SUScriptObject *)self nativeObject];

  return [(SUScriptNativeObject *)v2 object];
}

- (id)valueForProperty:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__25;
  v31 = __Block_byref_object_dispose__25;
  v32 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    goto LABEL_16;
  }

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __42__SUScriptMediaPlaylist_valueForProperty___block_invoke;
  v23 = &unk_1E8165E08;
  v25 = a3;
  v26 = &v27;
  v24 = self;
  WebThreadRunOnMainThread();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E69E2F88] throwException:{objc_msgSend(v28[5], "reason")}];

    v5 = 0;
  }

  else if ([a3 isEqualToString:@"attributes"])
  {
    v5 = [objc_opt_class() scriptPlaylistAttributesForNativePlaylistAttributes:{objc_msgSend(v28[5], "integerValue")}];
  }

  else
  {
    if (![a3 isEqualToString:@"seed-items"])
    {
      goto LABEL_16;
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v28[5];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v33 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = objc_alloc_init(SUScriptMediaItem);
          [(SUScriptObject *)v11 setNativeObject:[SUScriptNativeObject objectWithNativeObject:v10]];
          [(SUScriptObject *)self checkInScriptObject:v11];
          [v5 addObject:v11];
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v33 count:16];
      }

      while (v7);
    }
  }

  v28[5] = v5;
LABEL_16:
  v12 = v28[5];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v14 = v13;
  _Block_object_dispose(&v27, 8);
  return v14;
}

id __42__SUScriptMediaPlaylist_valueForProperty___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeObject")];
  v2 = *(*(*(a1 + 48) + 8) + 40);

  return v2;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_31, 1);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptMediaPlaylist;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_31 = sel_valueForProperty_;
    unk_1EBF3B0C0 = @"valueForProperty";
  }
}

@end