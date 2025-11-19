@interface SUScriptPurchaseManager
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (SUScriptPurchaseManager)init;
- (id)isPurchasedItemIdentifier:(id)a3;
- (id)isPurchasingItemIdentifier:(id)a3;
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

- (id)isPurchasedItemIdentifier:(id)a3
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

- (id)isPurchasingItemIdentifier:(id)a3
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

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_44, 2);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptPurchaseManager;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_44 = sel_isPurchasedItemIdentifier_;
    unk_1EBF3B5D0 = @"isPurchasedItemIdentifier";
    qword_1EBF3B5D8 = sel_isPurchasingItemIdentifier_;
    unk_1EBF3B5E0 = @"isPurchasingItemIdentifier";
  }
}

@end