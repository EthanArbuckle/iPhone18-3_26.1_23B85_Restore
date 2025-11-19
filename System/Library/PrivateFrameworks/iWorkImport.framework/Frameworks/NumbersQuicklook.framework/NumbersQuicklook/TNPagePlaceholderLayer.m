@interface TNPagePlaceholderLayer
- (void)setDelegate:(id)a3;
@end

@implementation TNPagePlaceholderLayer

- (void)setDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = TNPagePlaceholderLayer;
  [(TNPagePlaceholderLayer *)&v7 setDelegate:?];
  if (a3)
  {
    objc_msgSend_updateBorder(self, v5, v6);
  }
}

@end