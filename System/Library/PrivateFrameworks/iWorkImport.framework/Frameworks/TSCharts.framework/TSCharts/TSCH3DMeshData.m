@interface TSCH3DMeshData
+ (id)dataWithGeometry:(id)a3 texcoordGenerator:(id)a4;
- (TSCH3DMeshData)initWithGeometry:(id)a3 texcoordGenerator:(id)a4;
@end

@implementation TSCH3DMeshData

+ (id)dataWithGeometry:(id)a3 texcoordGenerator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithGeometry_texcoordGenerator_(v8, v9, v10, v11, v12, v6, v7);

  return v13;
}

- (TSCH3DMeshData)initWithGeometry:(id)a3 texcoordGenerator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TSCH3DMeshData;
  v9 = [(TSCH3DMeshData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_geometry, a3);
    objc_storeStrong(&v10->_texcoordGenerator, a4);
  }

  return v10;
}

@end