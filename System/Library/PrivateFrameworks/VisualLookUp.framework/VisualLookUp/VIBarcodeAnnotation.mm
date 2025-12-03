@interface VIBarcodeAnnotation
+ (id)annotationFromObservations:(id)observations;
- (BOOL)isEqual:(id)equal;
- (VIBarcodeAnnotation)initWithAnnotationItems:(id)items;
@end

@implementation VIBarcodeAnnotation

- (VIBarcodeAnnotation)initWithAnnotationItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = VIBarcodeAnnotation;
  v5 = [(VIBarcodeAnnotation *)&v9 init];
  if (v5)
  {
    v6 = [itemsCopy copy];
    annotationItems = v5->_annotationItems;
    v5->_annotationItems = v6;
  }

  return v5;
}

+ (id)annotationFromObservations:(id)observations
{
  v3 = VICompactMapArray(observations, &__block_literal_global_2);
  v4 = [objc_alloc(objc_opt_class()) initWithAnnotationItems:v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  v15 = v5;
  v16 = v3;
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = equalCopy;
  }

  else
  {
    v11 = 0;
  }

  annotationItems = self->_annotationItems;
  annotationItems = [v11 annotationItems];
  LOBYTE(annotationItems) = VIObjectIsEqual(annotationItems, annotationItems);

  return annotationItems;
}

@end