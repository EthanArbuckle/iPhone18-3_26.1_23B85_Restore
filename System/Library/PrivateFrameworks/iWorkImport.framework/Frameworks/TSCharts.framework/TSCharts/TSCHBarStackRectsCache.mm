@interface TSCHBarStackRectsCache
- (CGRect)frame;
- (TSCHBarStackRectsCache)initWithFrame:(CGRect)a3 dictionary:(id)a4;
@end

@implementation TSCHBarStackRectsCache

- (TSCHBarStackRectsCache)initWithFrame:(CGRect)a3 dictionary:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = TSCHBarStackRectsCache;
  v10 = [(TSCHBarStackRectsCache *)&v19 init];
  v15 = v10;
  if (v10)
  {
    v10->_frame.origin.x = x;
    v10->_frame.origin.y = y;
    v10->_frame.size.width = width;
    v10->_frame.size.height = height;
    v16 = objc_msgSend_copy(v9, v11, v12, v13, v14);
    groupToSingleStackMap = v15->_groupToSingleStackMap;
    v15->_groupToSingleStackMap = v16;
  }

  return v15;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end