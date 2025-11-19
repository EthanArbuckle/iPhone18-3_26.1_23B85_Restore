@interface TSWPLinkedTextBoxLayout
- (void)i_invalidateWrap;
@end

@implementation TSWPLinkedTextBoxLayout

- (void)i_invalidateWrap
{
  v5 = objc_msgSend_wrapInvalidationParent(self, a2, v2);
  objc_msgSend_wrappableChildInvalidated_(v5, v4, self);
}

@end