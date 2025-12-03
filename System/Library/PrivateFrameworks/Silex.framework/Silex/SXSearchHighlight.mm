@interface SXSearchHighlight
- (SXSearchHighlight)initWithRects:(id)rects ranges:(id)ranges item:(id)item index:(unint64_t)index;
@end

@implementation SXSearchHighlight

- (SXSearchHighlight)initWithRects:(id)rects ranges:(id)ranges item:(id)item index:(unint64_t)index
{
  rectsCopy = rects;
  rangesCopy = ranges;
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = SXSearchHighlight;
  v14 = [(SXSearchHighlight *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_rects, rects);
    objc_storeStrong(&v15->_ranges, ranges);
    objc_storeStrong(&v15->_item, item);
    v15->_index = index;
  }

  return v15;
}

@end