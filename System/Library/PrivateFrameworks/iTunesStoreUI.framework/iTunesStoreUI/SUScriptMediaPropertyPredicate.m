@interface SUScriptMediaPropertyPredicate
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (MPMediaPropertyPredicate)nativePredicate;
- (NSString)comparisonType;
- (NSString)property;
- (SUScriptMediaPropertyPredicate)initWithProperty:(id)a3 value:(id)a4 comparisonType:(id)a5;
- (id)_playlistAttributesForScriptArray:(id)a3;
- (id)scriptAttributeKeys;
- (id)value;
- (void)dealloc;
@end

@implementation SUScriptMediaPropertyPredicate

- (SUScriptMediaPropertyPredicate)initWithProperty:(id)a3 value:(id)a4 comparisonType:(id)a5
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a5 = 0;
  }

  v7 = [(SUScriptObject *)self init];
  if (v7)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    }

    if (a5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([a5 isEqualToString:@"equals"])
        {
          goto LABEL_10;
        }

        if ([a5 isEqualToString:@"contains"])
        {
          if (isKindOfClass)
          {
            goto LABEL_11;
          }

          goto LABEL_14;
        }

        v9 = @"Unknown comparison type";
      }

      else
      {
        v9 = @"Invalid argument";
      }

      [MEMORY[0x1E69E2F88] throwException:v9];
      goto LABEL_14;
    }

LABEL_10:
    if (isKindOfClass)
    {
LABEL_11:
      WebThreadRunOnMainThread();
      return v7;
    }

LABEL_14:

    return 0;
  }

  return v7;
}

uint64_t __72__SUScriptMediaPropertyPredicate_initWithProperty_value_comparisonType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ([*(a1 + 40) isEqualToString:*MEMORY[0x1E696FBD8]])
  {
    v2 = [*(a1 + 48) _playlistAttributesForScriptArray:*(a1 + 32)];
  }

  result = [MEMORY[0x1E6970610] predicateWithValue:v2 forProperty:*(a1 + 56) comparisonType:*(a1 + 64)];
  if (result)
  {
    v4 = *(a1 + 48);
    v5 = [SUScriptNativeObject objectWithNativeObject:result];

    return [v4 setNativeObject:v5];
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptMediaPropertyPredicate;
  [(SUScriptObject *)&v3 dealloc];
}

- (MPMediaPropertyPredicate)nativePredicate
{
  v2 = [(SUScriptObject *)self nativeObject];

  return [(SUScriptNativeObject *)v2 object];
}

- (NSString)comparisonType
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__24;
  v12 = __Block_byref_object_dispose__24;
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

uint64_t __48__SUScriptMediaPropertyPredicate_comparisonType__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeObject")];
  if (result == 1)
  {
    v3 = @"contains";
  }

  else
  {
    if (result)
    {
      return result;
    }

    v3 = @"equals";
  }

  result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v3];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)property
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__24;
  v12 = __Block_byref_object_dispose__24;
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

id __42__SUScriptMediaPropertyPredicate_property__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeObject")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)value
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__24;
  v12 = __Block_byref_object_dispose__24;
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

id __39__SUScriptMediaPropertyPredicate_value__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeObject")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_playlistAttributesForScriptArray:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [a3 copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{+[SUScriptMediaPlaylist nativePlaylistAttributesForScriptPlaylistAttributes:](SUScriptMediaPlaylist, "nativePlaylistAttributesForScriptPlaylistAttributes:", v4)}];

  return v6;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_37 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptMediaPropertyPredicate;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptMediaPropertyPredicate;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_37 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_37 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"comparisonType", @"property", @"property", @"value", @"value", 0}];
  }
}

@end