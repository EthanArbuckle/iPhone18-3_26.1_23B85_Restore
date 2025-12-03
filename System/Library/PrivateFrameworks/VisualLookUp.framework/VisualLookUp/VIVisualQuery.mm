@interface VIVisualQuery
+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer depthBuffer:(__CVBuffer *)depthBuffer orientation:(unsigned int)orientation normalizedRegionOfInterest:(CGRect)interest textBlockAnnotation:(id)annotation queryContext:(id)context;
+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation;
+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation normalizedRegionOfInterest:(CGRect)interest;
+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation normalizedRegionOfInterest:(CGRect)interest annotation:(id)annotation queryContext:(id)context;
+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation normalizedRegionOfInterest:(CGRect)interest textBlockAnnotation:(id)annotation queryContext:(id)context;
- (CGRect)normalizedRegionOfInterest;
- (VIVisualQuery)initWithImage:(id)image annotation:(id)annotation normalizedRegionOfInterest:(CGRect)interest domainsOfInterest:(id)ofInterest queryContext:(id)context;
- (VIVisualQuery)initWithImage:(id)image textBlockAnnotation:(id)annotation normalizedRegionOfInterest:(CGRect)interest domainsOfInterest:(id)ofInterest queryContext:(id)context;
@end

@implementation VIVisualQuery

- (VIVisualQuery)initWithImage:(id)image textBlockAnnotation:(id)annotation normalizedRegionOfInterest:(CGRect)interest domainsOfInterest:(id)ofInterest queryContext:(id)context
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  imageCopy = image;
  ofInterestCopy = ofInterest;
  contextCopy = context;
  if (annotation)
  {
    annotationCopy = annotation;
    annotation = [[VIAnnotation alloc] initWithTextAnnotations:annotationCopy];
  }

  height = [(VIVisualQuery *)self initWithImage:imageCopy annotation:annotation normalizedRegionOfInterest:ofInterestCopy domainsOfInterest:contextCopy queryContext:x, y, width, height];

  return height;
}

- (VIVisualQuery)initWithImage:(id)image annotation:(id)annotation normalizedRegionOfInterest:(CGRect)interest domainsOfInterest:(id)ofInterest queryContext:(id)context
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  imageCopy = image;
  annotationCopy = annotation;
  ofInterestCopy = ofInterest;
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = VIVisualQuery;
  v20 = [(VIVisualQuery *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_image, image);
    v21->_normalizedRegionOfInterest.origin.x = x;
    v21->_normalizedRegionOfInterest.origin.y = y;
    v21->_normalizedRegionOfInterest.size.width = width;
    v21->_normalizedRegionOfInterest.size.height = height;
    v22 = [ofInterestCopy copy];
    domainsOfInterest = v21->_domainsOfInterest;
    v21->_domainsOfInterest = v22;

    v24 = [contextCopy copy];
    queryContext = v21->_queryContext;
    v21->_queryContext = v24;

    v26 = [annotationCopy copy];
    annotation = v21->_annotation;
    v21->_annotation = v26;
  }

  return v21;
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation
{
  v4 = *&orientation;
  v6 = objc_opt_class();
  v7 = *&VIIdentityRect;
  v8 = unk_1ECB50860;
  v9 = *&qword_1ECB50868;
  v10 = unk_1ECB50870;

  return [v6 queryWithPixelBuffer:buffer orientation:v4 normalizedRegionOfInterest:{v7, v8, v9, v10}];
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation normalizedRegionOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v9 = *&orientation;
  v11 = objc_opt_class();

  return [v11 queryWithPixelBuffer:buffer orientation:v9 normalizedRegionOfInterest:0 textBlockAnnotation:0 queryContext:{x, y, width, height}];
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation normalizedRegionOfInterest:(CGRect)interest textBlockAnnotation:(id)annotation queryContext:(id)context
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v12 = *&orientation;
  contextCopy = context;
  annotationCopy = annotation;
  v16 = objc_alloc(objc_opt_class());
  v17 = [VIImage imageWithPixelBuffer:buffer orientation:v12];
  v18 = VIAllVisualSearchDomains();
  v19 = [v16 initWithImage:v17 textBlockAnnotation:annotationCopy normalizedRegionOfInterest:v18 domainsOfInterest:contextCopy queryContext:{x, y, width, height}];

  return v19;
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer depthBuffer:(__CVBuffer *)depthBuffer orientation:(unsigned int)orientation normalizedRegionOfInterest:(CGRect)interest textBlockAnnotation:(id)annotation queryContext:(id)context
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v13 = *&orientation;
  contextCopy = context;
  annotationCopy = annotation;
  v17 = objc_alloc(objc_opt_class());
  v18 = [VIImage imageWithPixelBuffer:buffer orientation:v13];
  v19 = VIAllVisualSearchDomains();
  v20 = [v17 initWithImage:v18 textBlockAnnotation:annotationCopy normalizedRegionOfInterest:v19 domainsOfInterest:contextCopy queryContext:{x, y, width, height}];

  return v20;
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation normalizedRegionOfInterest:(CGRect)interest annotation:(id)annotation queryContext:(id)context
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v12 = *&orientation;
  contextCopy = context;
  annotationCopy = annotation;
  v16 = objc_alloc(objc_opt_class());
  v17 = [VIImage imageWithPixelBuffer:buffer orientation:v12];
  v18 = VIAllVisualSearchDomains();
  v19 = [v16 initWithImage:v17 annotation:annotationCopy normalizedRegionOfInterest:v18 domainsOfInterest:contextCopy queryContext:{x, y, width, height}];

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