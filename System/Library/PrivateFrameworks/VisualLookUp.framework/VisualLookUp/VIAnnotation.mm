@interface VIAnnotation
- (BOOL)isEqual:(id)equal;
- (VIAnnotation)initWithReducePersonOverTriggerAnnotation:(id)annotation faceAnnotations:(id)annotations humanAnnotations:(id)humanAnnotations nsfwAnnotations:(id)nsfwAnnotations textBlockAnnotation:(id)blockAnnotation scenenetAnnotation:(id)scenenetAnnotation barcodeAnnotation:(id)barcodeAnnotation;
- (unint64_t)hash;
@end

@implementation VIAnnotation

- (VIAnnotation)initWithReducePersonOverTriggerAnnotation:(id)annotation faceAnnotations:(id)annotations humanAnnotations:(id)humanAnnotations nsfwAnnotations:(id)nsfwAnnotations textBlockAnnotation:(id)blockAnnotation scenenetAnnotation:(id)scenenetAnnotation barcodeAnnotation:(id)barcodeAnnotation
{
  annotationCopy = annotation;
  annotationsCopy = annotations;
  humanAnnotationsCopy = humanAnnotations;
  nsfwAnnotationsCopy = nsfwAnnotations;
  blockAnnotationCopy = blockAnnotation;
  scenenetAnnotationCopy = scenenetAnnotation;
  barcodeAnnotationCopy = barcodeAnnotation;
  v38.receiver = self;
  v38.super_class = VIAnnotation;
  v22 = [(VIAnnotation *)&v38 init];
  if (v22)
  {
    v23 = [annotationCopy copy];
    reducePersonOverTriggerAnnotation = v22->_reducePersonOverTriggerAnnotation;
    v22->_reducePersonOverTriggerAnnotation = v23;

    v25 = [annotationsCopy copy];
    faceAnnotations = v22->_faceAnnotations;
    v22->_faceAnnotations = v25;

    v27 = [humanAnnotationsCopy copy];
    humanAnnotations = v22->_humanAnnotations;
    v22->_humanAnnotations = v27;

    v29 = [nsfwAnnotationsCopy copy];
    nsfwAnnotations = v22->_nsfwAnnotations;
    v22->_nsfwAnnotations = v29;

    v31 = [blockAnnotationCopy copy];
    textBlockAnnotation = v22->_textBlockAnnotation;
    v22->_textBlockAnnotation = v31;

    v33 = [scenenetAnnotationCopy copy];
    scenenetAnnotation = v22->_scenenetAnnotation;
    v22->_scenenetAnnotation = v33;

    v35 = [barcodeAnnotationCopy copy];
    barcodeAnnotation = v22->_barcodeAnnotation;
    v22->_barcodeAnnotation = v35;
  }

  return v22;
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
    faceAnnotations = self->_faceAnnotations;
    faceAnnotations = [(VIAnnotation *)v6 faceAnnotations];
    if (VIObjectIsEqual(faceAnnotations, faceAnnotations))
    {
      humanAnnotations = self->_humanAnnotations;
      humanAnnotations = [(VIAnnotation *)v6 humanAnnotations];
      if (VIObjectIsEqual(humanAnnotations, humanAnnotations))
      {
        nsfwAnnotations = self->_nsfwAnnotations;
        nsfwAnnotations = [(VIAnnotation *)v6 nsfwAnnotations];
        if (VIObjectIsEqual(nsfwAnnotations, nsfwAnnotations))
        {
          textBlockAnnotation = self->_textBlockAnnotation;
          textBlockAnnotation = [(VIAnnotation *)v6 textBlockAnnotation];
          if (VIObjectIsEqual(textBlockAnnotation, textBlockAnnotation))
          {
            scenenetAnnotation = self->_scenenetAnnotation;
            scenenetAnnotation = [(VIAnnotation *)v6 scenenetAnnotation];
            if (VIObjectIsEqual(scenenetAnnotation, scenenetAnnotation))
            {
              barcodeAnnotation = self->_barcodeAnnotation;
              barcodeAnnotation = [(VIAnnotation *)v6 barcodeAnnotation];
              if (VIObjectIsEqual(barcodeAnnotation, barcodeAnnotation))
              {
                reducePersonOverTriggerAnnotation = self->_reducePersonOverTriggerAnnotation;
                reducePersonOverTriggerAnnotation = [(VIAnnotation *)v6 reducePersonOverTriggerAnnotation];
                IsEqual = VIObjectIsEqual(reducePersonOverTriggerAnnotation, reducePersonOverTriggerAnnotation);
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
  v3 = [(NSArray *)self->_faceAnnotations hash];
  v4 = [(NSArray *)self->_humanAnnotations hash]^ v3;
  v5 = [(NSArray *)self->_nsfwAnnotations hash];
  v6 = v4 ^ v5 ^ [(VITextBlockAnnotation *)self->_textBlockAnnotation hash];
  v7 = [(VIScenenetAnnotation *)self->_scenenetAnnotation hash];
  return v6 ^ v7 ^ [(VIBarcodeAnnotation *)self->_barcodeAnnotation hash];
}

@end