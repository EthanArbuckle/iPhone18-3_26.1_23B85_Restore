@interface SUScriptPurchaseManager
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (SUScriptPurchaseManager)init;
- (id)isPurchasedItemIdentifier:(id)identifier;
- (id)isPurchasingItemIdentifier:(id)identifier;
- (void)dealloc;
@end

@implementation SUScriptPurchaseManager

- (SUScriptPurchaseManager)init
{
  v4.receiver = self;
  v4.super_class = SUScriptPurchaseManager;
  v2 = [(SUScriptObject *)&v4 init];
  if (v2)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = SUScriptPurchaseManager;
  [(SUScriptObject *)&v3 dealloc];
}

- (id)isPurchasedItemIdentifier:(id)identifier
{
  v4 = SSGetUnsignedLongLongFromValue();
  if (v4)
  {
    v5 = [(SUPurchaseManager *)[(SUClientInterface *)[(SUScriptObject *)self clientInterface] purchaseManager] itemIdentifierIsPurchased:v4];
    v6 = MEMORY[0x1E695E4D0];
    if (!v5)
    {
      v6 = MEMORY[0x1E695E4C0];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  return *v6;
}

- (id)isPurchasingItemIdentifier:(id)identifier
{
  v4 = SSGetUnsignedLongLongFromValue();
  if (v4)
  {
    v5 = [(SUPurchaseManager *)[(SUClientInterface *)[(SUScriptObject *)self clientInterface] purchaseManager] itemIdentifierIsPurchasing:v4];
    v6 = MEMORY[0x1E695E4D0];
    if (!v5)
    {
      v6 = MEMORY[0x1E695E4C0];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  return *v6;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_44, 2);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptPurchaseManager;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_44 = sel_isPurchasedItemIdentifier_;
    unk_1EBF3B5D0 = @"isPurchasedItemIdentifier";
    qword_1EBF3B5D8 = sel_isPurchasingItemIdentifier_;
    unk_1EBF3B5E0 = @"isPurchasingItemIdentifier";
  }
}

@end