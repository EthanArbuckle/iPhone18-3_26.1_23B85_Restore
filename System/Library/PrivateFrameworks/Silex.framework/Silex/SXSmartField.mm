@interface SXSmartField
- (SXSmartField)initWithContext:(id)context URL:(id)l action:(id)action;
- (id)copyWithContext:(id)context;
@end

@implementation SXSmartField

- (SXSmartField)initWithContext:(id)context URL:(id)l action:(id)action
{
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = SXSmartField;
  v10 = [(TSWPHyperlinkField *)&v13 initWithContext:context url:l];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_action, action);
  }

  return v11;
}

- (id)copyWithContext:(id)context
{
  v6.receiver = self;
  v6.super_class = SXSmartField;
  v4 = [(TSWPHyperlinkField *)&v6 copyWithContext:context];
  objc_storeStrong(v4 + 9, self->_action);
  return v4;
}

@end