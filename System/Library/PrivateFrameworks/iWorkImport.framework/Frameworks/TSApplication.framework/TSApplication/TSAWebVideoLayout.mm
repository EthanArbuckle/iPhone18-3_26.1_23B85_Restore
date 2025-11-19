@interface TSAWebVideoLayout
- (void)invalidateSize;
@end

@implementation TSAWebVideoLayout

- (void)invalidateSize
{
  v6.receiver = self;
  v6.super_class = TSAWebVideoLayout;
  [(TSAWebVideoLayout *)&v6 invalidateSize];
  objc_msgSend_invalidateExteriorWrap(self, v3, v4, v5);
}

@end