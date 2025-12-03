@interface TNPagePlaceholderLayer
- (void)setDelegate:(id)delegate;
@end

@implementation TNPagePlaceholderLayer

- (void)setDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = TNPagePlaceholderLayer;
  [(TNPagePlaceholderLayer *)&v7 setDelegate:?];
  if (delegate)
  {
    objc_msgSend_updateBorder(self, v5, v6);
  }
}

@end