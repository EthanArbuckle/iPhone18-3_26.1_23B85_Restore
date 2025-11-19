@interface SUScriptFacebookLikeStatus
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (NSArray)friends;
- (SUScriptFacebookLikeStatus)initWithLikeStatusDictionary:(id)a3;
- (id)isLikedByMe;
- (id)scriptAttributeKeys;
- (unint64_t)friendLikeCount;
- (unint64_t)globalLikeCount;
- (void)dealloc;
@end

@implementation SUScriptFacebookLikeStatus

- (SUScriptFacebookLikeStatus)initWithLikeStatusDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptFacebookLikeStatus;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptFacebookLikeStatus;
  [(SUScriptObject *)&v3 dealloc];
}

- (unint64_t)friendLikeCount
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:ISWeakLinkedStringConstantForString()];

  return [v2 unsignedIntegerValue];
}

- (NSArray)friends
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(NSDictionary *)self->_dictionary objectForKey:ISWeakLinkedStringConstantForString()];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [[SUScriptFacebookFriend alloc] initWithName:v9];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v10 = [[SUScriptFacebookFriend alloc] initWithFriendDictionary:v9];
        }

        v11 = v10;
        if (v10)
        {
          [(NSArray *)v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)globalLikeCount
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:ISWeakLinkedStringConstantForString()];

  return [v2 unsignedIntegerValue];
}

- (id)isLikedByMe
{
  v2 = [-[NSDictionary objectForKey:](self->_dictionary objectForKey:{ISWeakLinkedStringConstantForString()), "BOOLValue"}];
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_76 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptFacebookLikeStatus;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptFacebookLikeStatus;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_76 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_76 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"friendLikeCount", @"friends", @"friends", @"globalLikeCount", @"globalLikeCount", @"isLikedByMe", @"isLikedByMe", 0}];
  }
}

@end