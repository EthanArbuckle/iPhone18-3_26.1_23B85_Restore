@interface TSWPPlaceholderSmartField
- (TSWPPlaceholderSmartField)initWithContext:(id)a3;
- (id)copyWithContext:(id)a3;
- (void)dealloc;
@end

@implementation TSWPPlaceholderSmartField

- (TSWPPlaceholderSmartField)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSWPPlaceholderSmartField;
  return [(TSWPSmartField *)&v4 initWithContext:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSWPPlaceholderSmartField;
  [(TSWPSmartField *)&v2 dealloc];
}

- (id)copyWithContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSWPPlaceholderSmartField;
  v4 = [(TSWPSmartField *)&v6 copyWithContext:a3];
  if (v4)
  {
    [v4 setIsLocalizable:{-[TSWPPlaceholderSmartField isLocalizable](self, "isLocalizable")}];
  }

  return v4;
}

@end