@interface VIParsedVisualQuery
+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 imageRegions:(id)a5 payload:(id)a6;
+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 imageRegions:(id)a5 textBlockAnnotation:(id)a6 queryContext:(id)a7 payload:(id)a8;
- (BOOL)isEqual:(id)a3;
- (VIParsedVisualQuery)initWithImage:(id)a3 imageRegions:(id)a4 textBlockAnnotation:(id)a5 queryContext:(id)a6 payload:(id)a7;
- (VIParsedVisualQuery)initWithImage:(id)a3 visualUnderstanding:(id)a4 queryContext:(id)a5;
@end

@implementation VIParsedVisualQuery

- (VIParsedVisualQuery)initWithImage:(id)a3 imageRegions:(id)a4 textBlockAnnotation:(id)a5 queryContext:(id)a6 payload:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[VIVisualUnderstanding alloc] initWithImageRegions:v15 textBlockAnnotation:v14 payload:v12];

  v18 = [(VIParsedVisualQuery *)self initWithImage:v16 visualUnderstanding:v17 queryContext:v13];
  return v18;
}

- (VIParsedVisualQuery)initWithImage:(id)a3 visualUnderstanding:(id)a4 queryContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = VIParsedVisualQuery;
  v12 = [(VIParsedVisualQuery *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, a3);
    v14 = [v10 copy];
    visualUnderstanding = v13->_visualUnderstanding;
    v13->_visualUnderstanding = v14;

    v16 = [v11 copy];
    queryContext = v13->_queryContext;
    v13->_queryContext = v16;
  }

  return v13;
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 imageRegions:(id)a5 payload:(id)a6
{
  v7 = *&a4;
  v9 = a6;
  v10 = a5;
  v11 = [objc_opt_class() queryWithPixelBuffer:a3 orientation:v7 imageRegions:v10 textBlockAnnotation:0 queryContext:0 payload:v9];

  return v11;
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 imageRegions:(id)a5 textBlockAnnotation:(id)a6 queryContext:(id)a7 payload:(id)a8
{
  v11 = *&a4;
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = [[VIVisualUnderstanding alloc] initWithImageRegions:v16 textBlockAnnotation:v15 payload:v13];

  v18 = [VIImage imageWithPixelBuffer:a3 orientation:v11];
  v19 = [objc_alloc(objc_opt_class()) initWithImage:v18 visualUnderstanding:v17 queryContext:v14];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    image = self->_image;
    v8 = [(VIParsedVisualQuery *)v6 image];
    if (VIObjectIsEqual(image, v8))
    {
      visualUnderstanding = self->_visualUnderstanding;
      v10 = [(VIParsedVisualQuery *)v6 visualUnderstanding];
      IsEqual = VIObjectIsEqual(visualUnderstanding, v10);
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

@end