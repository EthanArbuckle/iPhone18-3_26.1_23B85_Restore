@interface VIParsedVisualQuery
+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation imageRegions:(id)regions payload:(id)payload;
+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation imageRegions:(id)regions textBlockAnnotation:(id)annotation queryContext:(id)context payload:(id)payload;
- (BOOL)isEqual:(id)equal;
- (VIParsedVisualQuery)initWithImage:(id)image imageRegions:(id)regions textBlockAnnotation:(id)annotation queryContext:(id)context payload:(id)payload;
- (VIParsedVisualQuery)initWithImage:(id)image visualUnderstanding:(id)understanding queryContext:(id)context;
@end

@implementation VIParsedVisualQuery

- (VIParsedVisualQuery)initWithImage:(id)image imageRegions:(id)regions textBlockAnnotation:(id)annotation queryContext:(id)context payload:(id)payload
{
  payloadCopy = payload;
  contextCopy = context;
  annotationCopy = annotation;
  regionsCopy = regions;
  imageCopy = image;
  v17 = [[VIVisualUnderstanding alloc] initWithImageRegions:regionsCopy textBlockAnnotation:annotationCopy payload:payloadCopy];

  v18 = [(VIParsedVisualQuery *)self initWithImage:imageCopy visualUnderstanding:v17 queryContext:contextCopy];
  return v18;
}

- (VIParsedVisualQuery)initWithImage:(id)image visualUnderstanding:(id)understanding queryContext:(id)context
{
  imageCopy = image;
  understandingCopy = understanding;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = VIParsedVisualQuery;
  v12 = [(VIParsedVisualQuery *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, image);
    v14 = [understandingCopy copy];
    visualUnderstanding = v13->_visualUnderstanding;
    v13->_visualUnderstanding = v14;

    v16 = [contextCopy copy];
    queryContext = v13->_queryContext;
    v13->_queryContext = v16;
  }

  return v13;
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation imageRegions:(id)regions payload:(id)payload
{
  v7 = *&orientation;
  payloadCopy = payload;
  regionsCopy = regions;
  v11 = [objc_opt_class() queryWithPixelBuffer:buffer orientation:v7 imageRegions:regionsCopy textBlockAnnotation:0 queryContext:0 payload:payloadCopy];

  return v11;
}

+ (id)queryWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation imageRegions:(id)regions textBlockAnnotation:(id)annotation queryContext:(id)context payload:(id)payload
{
  v11 = *&orientation;
  payloadCopy = payload;
  contextCopy = context;
  annotationCopy = annotation;
  regionsCopy = regions;
  v17 = [[VIVisualUnderstanding alloc] initWithImageRegions:regionsCopy textBlockAnnotation:annotationCopy payload:payloadCopy];

  v18 = [VIImage imageWithPixelBuffer:buffer orientation:v11];
  v19 = [objc_alloc(objc_opt_class()) initWithImage:v18 visualUnderstanding:v17 queryContext:contextCopy];

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    image = self->_image;
    image = [(VIParsedVisualQuery *)v6 image];
    if (VIObjectIsEqual(image, image))
    {
      visualUnderstanding = self->_visualUnderstanding;
      visualUnderstanding = [(VIParsedVisualQuery *)v6 visualUnderstanding];
      IsEqual = VIObjectIsEqual(visualUnderstanding, visualUnderstanding);
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

@end