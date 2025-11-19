@interface GQDTPopupCell
- (void)dealloc;
@end

@implementation GQDTPopupCell

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDTPopupCell;
  [(GQDTCell *)&v3 dealloc];
}

@end