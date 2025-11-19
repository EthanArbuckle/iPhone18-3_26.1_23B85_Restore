@interface SXSearchHighlight
- (SXSearchHighlight)initWithRects:(id)a3 ranges:(id)a4 item:(id)a5 index:(unint64_t)a6;
@end

@implementation SXSearchHighlight

- (SXSearchHighlight)initWithRects:(id)a3 ranges:(id)a4 item:(id)a5 index:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = SXSearchHighlight;
  v14 = [(SXSearchHighlight *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_rects, a3);
    objc_storeStrong(&v15->_ranges, a4);
    objc_storeStrong(&v15->_item, a5);
    v15->_index = a6;
  }

  return v15;
}

@end