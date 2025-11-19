@interface VIVisualUnderstanding
- (BOOL)isEqual:(id)a3;
- (VIVisualUnderstanding)initWithImageRegions:(id)a3 annotation:(id)a4 payload:(id)a5;
- (VIVisualUnderstanding)initWithImageRegions:(id)a3 textBlockAnnotation:(id)a4 payload:(id)a5;
- (unint64_t)hash;
@end

@implementation VIVisualUnderstanding

- (VIVisualUnderstanding)initWithImageRegions:(id)a3 textBlockAnnotation:(id)a4 payload:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4)
  {
    v10 = a4;
    a4 = [[VIAnnotation alloc] initWithTextAnnotations:v10];
  }

  v11 = [(VIVisualUnderstanding *)self initWithImageRegions:v8 annotation:a4 payload:v9];

  return v11;
}

- (VIVisualUnderstanding)initWithImageRegions:(id)a3 annotation:(id)a4 payload:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = VIVisualUnderstanding;
  v11 = [(VIVisualUnderstanding *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    imageRegions = v11->_imageRegions;
    v11->_imageRegions = v12;

    v14 = [v9 copy];
    annotation = v11->_annotation;
    v11->_annotation = v14;

    v16 = [v10 copy];
    payload = v11->_payload;
    v11->_payload = v16;
  }

  return v11;
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
    imageRegions = self->_imageRegions;
    v8 = [(VIVisualUnderstanding *)v6 imageRegions];
    if (VIObjectIsEqual(imageRegions, v8))
    {
      annotation = self->_annotation;
      v10 = [(VIVisualUnderstanding *)v6 annotation];
      if (VIObjectIsEqual(annotation, v10))
      {
        payload = self->_payload;
        v12 = [(VIVisualUnderstanding *)v6 payload];
        IsEqual = VIObjectIsEqual(payload, v12);
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