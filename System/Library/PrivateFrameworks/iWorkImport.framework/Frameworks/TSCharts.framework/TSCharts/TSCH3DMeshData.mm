@interface TSCH3DMeshData
+ (id)dataWithGeometry:(id)geometry texcoordGenerator:(id)generator;
- (TSCH3DMeshData)initWithGeometry:(id)geometry texcoordGenerator:(id)generator;
@end

@implementation TSCH3DMeshData

+ (id)dataWithGeometry:(id)geometry texcoordGenerator:(id)generator
{
  geometryCopy = geometry;
  generatorCopy = generator;
  v8 = [self alloc];
  v13 = objc_msgSend_initWithGeometry_texcoordGenerator_(v8, v9, v10, v11, v12, geometryCopy, generatorCopy);

  return v13;
}

- (TSCH3DMeshData)initWithGeometry:(id)geometry texcoordGenerator:(id)generator
{
  geometryCopy = geometry;
  generatorCopy = generator;
  v12.receiver = self;
  v12.super_class = TSCH3DMeshData;
  v9 = [(TSCH3DMeshData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_geometry, geometry);
    objc_storeStrong(&v10->_texcoordGenerator, generator);
  }

  return v10;
}

@end