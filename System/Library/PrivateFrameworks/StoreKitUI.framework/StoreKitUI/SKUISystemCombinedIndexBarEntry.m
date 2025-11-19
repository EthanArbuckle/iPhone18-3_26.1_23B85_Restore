@interface SKUISystemCombinedIndexBarEntry
- (CGSize)_calculatedContentSize;
- (SKUISystemCombinedIndexBarEntry)init;
- (void)_drawContentInRect:(CGRect)a3;
@end

@implementation SKUISystemCombinedIndexBarEntry

- (SKUISystemCombinedIndexBarEntry)init
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUISystemCombinedIndexBarEntry *)v3 init:v4];
      }
    }
  }

  v14.receiver = self;
  v14.super_class = SKUISystemCombinedIndexBarEntry;
  v11 = [(SKUISystemCombinedIndexBarEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SKUIIndexBarEntry *)v11 setEntryType:3];
  }

  return v12;
}

- (CGSize)_calculatedContentSize
{
  [objc_opt_class() _dotDiameter];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_drawContentInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SKUIIndexBarEntry *)self tintColor];
  [v7 setFill];

  v8 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x, y, width, height}];
  [v8 fill];
}

@end