@interface VIBarcodeAnnotation
+ (id)annotationFromObservations:(id)a3;
- (BOOL)isEqual:(id)a3;
- (VIBarcodeAnnotation)initWithAnnotationItems:(id)a3;
@end

@implementation VIBarcodeAnnotation

- (VIBarcodeAnnotation)initWithAnnotationItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VIBarcodeAnnotation;
  v5 = [(VIBarcodeAnnotation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    annotationItems = v5->_annotationItems;
    v5->_annotationItems = v6;
  }

  return v5;
}

+ (id)annotationFromObservations:(id)a3
{
  v3 = VICompactMapArray(a3, &__block_literal_global_2);
  v4 = [objc_alloc(objc_opt_class()) initWithAnnotationItems:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v15 = v5;
  v16 = v3;
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  annotationItems = self->_annotationItems;
  v13 = [v11 annotationItems];
  LOBYTE(annotationItems) = VIObjectIsEqual(annotationItems, v13);

  return annotationItems;
}

@end