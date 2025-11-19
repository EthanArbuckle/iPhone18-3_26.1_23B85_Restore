@interface TSCH3DSelectionPathRenderInfo
+ (id)renderInfoWithString:(id)a3 styleIndex:(unint64_t)a4 rotation:(double)a5;
- (TSCH3DSelectionPathRenderInfo)initWithString:(id)a3 styleIndex:(unint64_t)a4 rotation:(double)a5;
@end

@implementation TSCH3DSelectionPathRenderInfo

- (TSCH3DSelectionPathRenderInfo)initWithString:(id)a3 styleIndex:(unint64_t)a4 rotation:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = TSCH3DSelectionPathRenderInfo;
  v10 = [(TSCH3DSelectionPathRenderInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_string, a3);
    v11->_styleIndex = a4;
    v11->_rotation = a5;
  }

  return v11;
}

+ (id)renderInfoWithString:(id)a3 styleIndex:(unint64_t)a4 rotation:(double)a5
{
  v8 = a3;
  v9 = [a1 alloc];
  v13 = objc_msgSend_initWithString_styleIndex_rotation_(v9, v10, a5, v11, v12, v8, a4);

  return v13;
}

@end