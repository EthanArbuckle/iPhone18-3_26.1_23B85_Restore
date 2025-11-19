@interface VIVisualQuery
+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 depthBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 normalizedRegionOfInterest:(CGRect)a6 textBlockAnnotation:(id)a7 queryContext:(id)a8;
+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4;
+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 normalizedRegionOfInterest:(CGRect)a5;
+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 normalizedRegionOfInterest:(CGRect)a5 annotation:(id)a6 queryContext:(id)a7;
+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 normalizedRegionOfInterest:(CGRect)a5 textBlockAnnotation:(id)a6 queryContext:(id)a7;
- (CGRect)normalizedRegionOfInterest;
- (VIVisualQuery)initWithImage:(id)a3 annotation:(id)a4 normalizedRegionOfInterest:(CGRect)a5 domainsOfInterest:(id)a6 queryContext:(id)a7;
- (VIVisualQuery)initWithImage:(id)a3 textBlockAnnotation:(id)a4 normalizedRegionOfInterest:(CGRect)a5 domainsOfInterest:(id)a6 queryContext:(id)a7;
@end

@implementation VIVisualQuery

- (VIVisualQuery)initWithImage:(id)a3 textBlockAnnotation:(id)a4 normalizedRegionOfInterest:(CGRect)a5 domainsOfInterest:(id)a6 queryContext:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a3;
  v16 = a6;
  v17 = a7;
  if (a4)
  {
    v18 = a4;
    a4 = [[VIAnnotation alloc] initWithTextAnnotations:v18];
  }

  v19 = [(VIVisualQuery *)self initWithImage:v15 annotation:a4 normalizedRegionOfInterest:v16 domainsOfInterest:v17 queryContext:x, y, width, height];

  return v19;
}

- (VIVisualQuery)initWithImage:(id)a3 annotation:(id)a4 normalizedRegionOfInterest:(CGRect)a5 domainsOfInterest:(id)a6 queryContext:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v29.receiver = self;
  v29.super_class = VIVisualQuery;
  v20 = [(VIVisualQuery *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_image, a3);
    v21->_normalizedRegionOfInterest.origin.x = x;
    v21->_normalizedRegionOfInterest.origin.y = y;
    v21->_normalizedRegionOfInterest.size.width = width;
    v21->_normalizedRegionOfInterest.size.height = height;
    v22 = [v18 copy];
    domainsOfInterest = v21->_domainsOfInterest;
    v21->_domainsOfInterest = v22;

    v24 = [v19 copy];
    queryContext = v21->_queryContext;
    v21->_queryContext = v24;

    v26 = [v17 copy];
    annotation = v21->_annotation;
    v21->_annotation = v26;
  }

  return v21;
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4
{
  v4 = *&a4;
  v6 = objc_opt_class();
  v7 = *&VIIdentityRect;
  v8 = unk_1ECB50860;
  v9 = *&qword_1ECB50868;
  v10 = unk_1ECB50870;

  return [v6 queryWithPixelBuffer:a3 orientation:v4 normalizedRegionOfInterest:{v7, v8, v9, v10}];
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 normalizedRegionOfInterest:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = *&a4;
  v11 = objc_opt_class();

  return [v11 queryWithPixelBuffer:a3 orientation:v9 normalizedRegionOfInterest:0 textBlockAnnotation:0 queryContext:{x, y, width, height}];
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 normalizedRegionOfInterest:(CGRect)a5 textBlockAnnotation:(id)a6 queryContext:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = *&a4;
  v14 = a7;
  v15 = a6;
  v16 = objc_alloc(objc_opt_class());
  v17 = [VIImage imageWithPixelBuffer:a3 orientation:v12];
  v18 = VIAllVisualSearchDomains();
  v19 = [v16 initWithImage:v17 textBlockAnnotation:v15 normalizedRegionOfInterest:v18 domainsOfInterest:v14 queryContext:{x, y, width, height}];

  return v19;
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 depthBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 normalizedRegionOfInterest:(CGRect)a6 textBlockAnnotation:(id)a7 queryContext:(id)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = *&a5;
  v15 = a8;
  v16 = a7;
  v17 = objc_alloc(objc_opt_class());
  v18 = [VIImage imageWithPixelBuffer:a3 orientation:v13];
  v19 = VIAllVisualSearchDomains();
  v20 = [v17 initWithImage:v18 textBlockAnnotation:v16 normalizedRegionOfInterest:v19 domainsOfInterest:v15 queryContext:{x, y, width, height}];

  return v20;
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 normalizedRegionOfInterest:(CGRect)a5 annotation:(id)a6 queryContext:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = *&a4;
  v14 = a7;
  v15 = a6;
  v16 = objc_alloc(objc_opt_class());
  v17 = [VIImage imageWithPixelBuffer:a3 orientation:v12];
  v18 = VIAllVisualSearchDomains();
  v19 = [v16 initWithImage:v17 annotation:v15 normalizedRegionOfInterest:v18 domainsOfInterest:v14 queryContext:{x, y, width, height}];

  return v19;
}

- (CGRect)normalizedRegionOfInterest
{
  x = self->_normalizedRegionOfInterest.origin.x;
  y = self->_normalizedRegionOfInterest.origin.y;
  width = self->_normalizedRegionOfInterest.size.width;
  height = self->_normalizedRegionOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end