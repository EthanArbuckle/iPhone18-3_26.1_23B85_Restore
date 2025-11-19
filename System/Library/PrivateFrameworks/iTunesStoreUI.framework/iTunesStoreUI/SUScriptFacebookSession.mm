@interface SUScriptFacebookSession
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (SUScriptFacebookSession)initWithAppleAccount:(id)a3;
- (id)hasAccounts;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)fetchLikeStatusForURL:(id)a3 flags:(id)a4 completionFunction:(id)a5;
- (void)likeURL:(id)a3 completionFunction:(id)a4;
- (void)unlikeURL:(id)a3 completionFunction:(id)a4;
@end

@implementation SUScriptFacebookSession

- (SUScriptFacebookSession)initWithAppleAccount:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptFacebookSession;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_account = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptFacebookSession;
  [(SUScriptObject *)&v3 dealloc];
}

- (void)fetchLikeStatusForURL:(id)a3 flags:(id)a4 completionFunction:(id)a5
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!a4 || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
      v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a3];
      if (self->_account)
      {
        v11 = ISWeakLinkedClassForString();
        v12 = [(SUScriptAppleAccount *)self->_account nativeAccount];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __74__SUScriptFacebookSession_fetchLikeStatusForURL_flags_completionFunction___block_invoke;
        v17[3] = &unk_1E8167330;
        v17[4] = v9;
        v17[5] = a5;
        [v11 fetchLikeStatusForURL:v10 flags:a4 account:v12 completion:v17];
      }

      else
      {
        v14 = [ISWeakLinkedClassForString() sharedSession];
        v15 = [a4 integerValue];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __74__SUScriptFacebookSession_fetchLikeStatusForURL_flags_completionFunction___block_invoke_2;
        v16[3] = &unk_1E8167330;
        v16[4] = v9;
        v16[5] = a5;
        [v14 fetchLikeStatusForURL:v10 flags:v15 completion:v16];
      }

      return;
    }

    v13 = MEMORY[0x1E69E2F88];
  }

  else
  {
    v13 = MEMORY[0x1E69E2F88];
  }

  [v13 throwException:@"Invalid argument"];
}

void __74__SUScriptFacebookSession_fetchLikeStatusForURL_flags_completionFunction___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) object];
  v7 = *(a1 + 40);

  _callTwoArgumentFunction(v7, v6, a2, a3);
}

void __74__SUScriptFacebookSession_fetchLikeStatusForURL_flags_completionFunction___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) object];
  v7 = *(a1 + 40);

  _callTwoArgumentFunction(v7, v6, a2, a3);
}

- (void)likeURL:(id)a3 completionFunction:(id)a4
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = MEMORY[0x1E69E2F88];
  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
      v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a3];
      if (self->_account)
      {
        v11 = ISWeakLinkedClassForString();
        v12 = [(SUScriptAppleAccount *)self->_account nativeAccount];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __54__SUScriptFacebookSession_likeURL_completionFunction___block_invoke;
        v15[3] = &unk_1E8165FD8;
        v15[4] = v9;
        v15[5] = a4;
        [v11 likeURL:v10 account:v12 completion:v15];
      }

      else
      {
        v13 = [ISWeakLinkedClassForString() sharedSession];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __54__SUScriptFacebookSession_likeURL_completionFunction___block_invoke_2;
        v14[3] = &unk_1E8165FD8;
        v14[4] = v9;
        v14[5] = a4;
        [v13 likeURL:v10 completion:v14];
      }

      return;
    }

    v8 = MEMORY[0x1E69E2F88];
  }

  [v8 throwException:@"Invalid argument"];
}

void __54__SUScriptFacebookSession_likeURL_completionFunction___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v5 = *(a1 + 40);

  _callOneArgumentFunction(v5, v4, a2);
}

void __54__SUScriptFacebookSession_likeURL_completionFunction___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v5 = *(a1 + 40);

  _callOneArgumentFunction(v5, v4, a2);
}

- (void)unlikeURL:(id)a3 completionFunction:(id)a4
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = MEMORY[0x1E69E2F88];
  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
      v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a3];
      if (self->_account)
      {
        v11 = ISWeakLinkedClassForString();
        v12 = [(SUScriptAppleAccount *)self->_account nativeAccount];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __56__SUScriptFacebookSession_unlikeURL_completionFunction___block_invoke;
        v15[3] = &unk_1E8165FD8;
        v15[4] = v9;
        v15[5] = a4;
        [v11 unlikeURL:v10 account:v12 completion:v15];
      }

      else
      {
        v13 = [ISWeakLinkedClassForString() sharedSession];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __56__SUScriptFacebookSession_unlikeURL_completionFunction___block_invoke_2;
        v14[3] = &unk_1E8165FD8;
        v14[4] = v9;
        v14[5] = a4;
        [v13 unlikeURL:v10 completion:v14];
      }

      return;
    }

    v8 = MEMORY[0x1E69E2F88];
  }

  [v8 throwException:@"Invalid argument"];
}

void __56__SUScriptFacebookSession_unlikeURL_completionFunction___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v5 = *(a1 + 40);

  _callOneArgumentFunction(v5, v4, a2);
}

void __56__SUScriptFacebookSession_unlikeURL_completionFunction___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v5 = *(a1 + 40);

  _callOneArgumentFunction(v5, v4, a2);
}

- (id)hasAccounts
{
  v2 = ISWeakLinkedClassForString();
  v3 = [objc_msgSend(v2 serviceForServiceType:{SUSLServiceTypeFacebook()), "hasAccounts"}];
  v4 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  return *v4;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_74 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptFacebookSession;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_57, 3);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptFacebookSession;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptFacebookSession;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_74 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_57 = sel_fetchLikeStatusForURL_flags_completionFunction_;
    unk_1EBF3B930 = @"fetchLikeStatus";
    qword_1EBF3B938 = sel_likeURL_completionFunction_;
    unk_1EBF3B940 = @"likeURL";
    qword_1EBF3B948 = sel_unlikeURL_completionFunction_;
    unk_1EBF3B950 = @"unlikeURL";
    __KeyMapping_74 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"hasAccounts", @"STATUS_FLAG_FRIEND_COUNT", @"likeStatusFlagFriendCount", @"STATUS_FLAG_FRIENDS", @"likeStatusFlagFriends", @"STATUS_FLAG_GLOBAL_COUNT", @"likeStatusFlagGlobalCount", @"STATUS_FLAG_ME", @"likeStatusFlagMe", 0}];
  }
}

@end