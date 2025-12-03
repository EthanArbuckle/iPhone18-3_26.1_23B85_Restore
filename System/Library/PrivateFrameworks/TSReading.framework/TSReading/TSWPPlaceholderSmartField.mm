@interface TSWPPlaceholderSmartField
- (TSWPPlaceholderSmartField)initWithContext:(id)context;
- (id)copyWithContext:(id)context;
- (void)dealloc;
@end

@implementation TSWPPlaceholderSmartField

- (TSWPPlaceholderSmartField)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSWPPlaceholderSmartField;
  return [(TSWPSmartField *)&v4 initWithContext:context];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSWPPlaceholderSmartField;
  [(TSWPSmartField *)&v2 dealloc];
}

- (id)copyWithContext:(id)context
{
  v6.receiver = self;
  v6.super_class = TSWPPlaceholderSmartField;
  v4 = [(TSWPSmartField *)&v6 copyWithContext:context];
  if (v4)
  {
    [v4 setIsLocalizable:{-[TSWPPlaceholderSmartField isLocalizable](self, "isLocalizable")}];
  }

  return v4;
}

@end