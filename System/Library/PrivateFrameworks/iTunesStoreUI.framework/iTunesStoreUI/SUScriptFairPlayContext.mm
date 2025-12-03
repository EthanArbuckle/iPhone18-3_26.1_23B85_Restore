@interface SUScriptFairPlayContext
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (id)signData:(id)data;
@end

@implementation SUScriptFairPlayContext

uint64_t __32__SUScriptFairPlayContext_close__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _accountViewController];

  return [v1 _closeMescalSession];
}

- (id)signData:(id)data
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__54;
  v10 = __Block_byref_object_dispose__54;
  v11 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (data == 0) | objc_opt_isKindOfClass() & 1) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  v4 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v4;
}

id __36__SUScriptFairPlayContext_signData___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_accountViewController")];
  if (result)
  {
    v3 = [result signData:objc_msgSend(*(a1 + 40) error:{"dataUsingEncoding:", 4), 0}];
    result = [v3 length];
    if (result)
    {
      result = [v3 base64EncodedStringWithOptions:0];
      *(*(*(a1 + 48) + 8) + 40) = result;
    }
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_59, 2);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptFairPlayContext;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_59 = sel_close;
    *algn_1EBF3B9B8 = @"close";
    qword_1EBF3B9C0 = sel_signData_;
    unk_1EBF3B9C8 = @"signData";
  }
}

@end