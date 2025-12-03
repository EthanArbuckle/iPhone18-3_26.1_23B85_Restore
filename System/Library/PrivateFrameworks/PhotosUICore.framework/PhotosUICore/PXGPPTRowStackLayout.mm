@interface PXGPPTRowStackLayout
- (CGSize)layout:(id)layout estimatedContentSizeForSublayoutAtIndex:(int64_t)index referenceSize:(CGSize)result;
- (PXGPPTRowStackLayout)initWithSettings:(id)settings;
- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index;
@end

@implementation PXGPPTRowStackLayout

- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index
{
  v5 = [[PXGPPTRowLayout alloc] initWithNumberOfItems:self->_numberOfItemsPerRow hue:modf(index / 20.0, &__y)];
  v6 = [[off_1E77216A8 alloc] initWithContentLayout:v5];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rowHeight];
  [v6 setFixedHeight:v7];

  return v6;
}

- (CGSize)layout:(id)layout estimatedContentSizeForSublayoutAtIndex:(int64_t)index referenceSize:(CGSize)result
{
  rowHeight = self->_rowHeight;
  result.height = rowHeight;
  return result;
}

- (PXGPPTRowStackLayout)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v8.receiver = self;
  v8.super_class = PXGPPTRowStackLayout;
  v5 = [(PXGStackLayout *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_rowHeight = 80.0;
    v5->_numberOfItemsPerRow = 100;
    [(PXGStackLayout *)v5 setAxis:1];
    [(PXGStackLayout *)v6 setInterlayoutSpacing:1.0];
    -[PXGStackLayout insertSublayoutProvider:inRange:](v6, "insertSublayoutProvider:inRange:", v6, 0, [settingsCopy numberOfSections]);
  }

  return v6;
}

@end