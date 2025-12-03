@interface TSCH3DSelectionPathRenderInfo
+ (id)renderInfoWithString:(id)string styleIndex:(unint64_t)index rotation:(double)rotation;
- (TSCH3DSelectionPathRenderInfo)initWithString:(id)string styleIndex:(unint64_t)index rotation:(double)rotation;
@end

@implementation TSCH3DSelectionPathRenderInfo

- (TSCH3DSelectionPathRenderInfo)initWithString:(id)string styleIndex:(unint64_t)index rotation:(double)rotation
{
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = TSCH3DSelectionPathRenderInfo;
  v10 = [(TSCH3DSelectionPathRenderInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_string, string);
    v11->_styleIndex = index;
    v11->_rotation = rotation;
  }

  return v11;
}

+ (id)renderInfoWithString:(id)string styleIndex:(unint64_t)index rotation:(double)rotation
{
  stringCopy = string;
  v9 = [self alloc];
  v13 = objc_msgSend_initWithString_styleIndex_rotation_(v9, v10, rotation, v11, v12, stringCopy, index);

  return v13;
}

@end