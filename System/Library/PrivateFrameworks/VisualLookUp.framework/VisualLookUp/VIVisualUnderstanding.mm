@interface VIVisualUnderstanding
- (BOOL)isEqual:(id)equal;
- (VIVisualUnderstanding)initWithImageRegions:(id)regions annotation:(id)annotation payload:(id)payload;
- (VIVisualUnderstanding)initWithImageRegions:(id)regions textBlockAnnotation:(id)annotation payload:(id)payload;
- (unint64_t)hash;
@end

@implementation VIVisualUnderstanding

- (VIVisualUnderstanding)initWithImageRegions:(id)regions textBlockAnnotation:(id)annotation payload:(id)payload
{
  regionsCopy = regions;
  payloadCopy = payload;
  if (annotation)
  {
    annotationCopy = annotation;
    annotation = [[VIAnnotation alloc] initWithTextAnnotations:annotationCopy];
  }

  v11 = [(VIVisualUnderstanding *)self initWithImageRegions:regionsCopy annotation:annotation payload:payloadCopy];

  return v11;
}

- (VIVisualUnderstanding)initWithImageRegions:(id)regions annotation:(id)annotation payload:(id)payload
{
  regionsCopy = regions;
  annotationCopy = annotation;
  payloadCopy = payload;
  v19.receiver = self;
  v19.super_class = VIVisualUnderstanding;
  v11 = [(VIVisualUnderstanding *)&v19 init];
  if (v11)
  {
    v12 = [regionsCopy copy];
    imageRegions = v11->_imageRegions;
    v11->_imageRegions = v12;

    v14 = [annotationCopy copy];
    annotation = v11->_annotation;
    v11->_annotation = v14;

    v16 = [payloadCopy copy];
    payload = v11->_payload;
    v11->_payload = v16;
  }

  return v11;
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
    imageRegions = self->_imageRegions;
    imageRegions = [(VIVisualUnderstanding *)v6 imageRegions];
    if (VIObjectIsEqual(imageRegions, imageRegions))
    {
      annotation = self->_annotation;
      annotation = [(VIVisualUnderstanding *)v6 annotation];
      if (VIObjectIsEqual(annotation, annotation))
      {
        payload = self->_payload;
        payload = [(VIVisualUnderstanding *)v6 payload];
        IsEqual = VIObjectIsEqual(payload, payload);
      }

      else
      {
        IsEqual = 0;
      }
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_imageRegions hash];
  v4 = [(VIAnnotation *)self->_annotation hash]^ v3;
  return v4 ^ [(NSData *)self->_payload hash];
}

@end