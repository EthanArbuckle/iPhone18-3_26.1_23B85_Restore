@interface VIAnnotation
- (BOOL)isEqual:(id)a3;
- (VIAnnotation)initWithReducePersonOverTriggerAnnotation:(id)a3 faceAnnotations:(id)a4 humanAnnotations:(id)a5 nsfwAnnotations:(id)a6 textBlockAnnotation:(id)a7 scenenetAnnotation:(id)a8 barcodeAnnotation:(id)a9;
- (unint64_t)hash;
@end

@implementation VIAnnotation

- (VIAnnotation)initWithReducePersonOverTriggerAnnotation:(id)a3 faceAnnotations:(id)a4 humanAnnotations:(id)a5 nsfwAnnotations:(id)a6 textBlockAnnotation:(id)a7 scenenetAnnotation:(id)a8 barcodeAnnotation:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v38.receiver = self;
  v38.super_class = VIAnnotation;
  v22 = [(VIAnnotation *)&v38 init];
  if (v22)
  {
    v23 = [v15 copy];
    reducePersonOverTriggerAnnotation = v22->_reducePersonOverTriggerAnnotation;
    v22->_reducePersonOverTriggerAnnotation = v23;

    v25 = [v16 copy];
    faceAnnotations = v22->_faceAnnotations;
    v22->_faceAnnotations = v25;

    v27 = [v17 copy];
    humanAnnotations = v22->_humanAnnotations;
    v22->_humanAnnotations = v27;

    v29 = [v18 copy];
    nsfwAnnotations = v22->_nsfwAnnotations;
    v22->_nsfwAnnotations = v29;

    v31 = [v19 copy];
    textBlockAnnotation = v22->_textBlockAnnotation;
    v22->_textBlockAnnotation = v31;

    v33 = [v20 copy];
    scenenetAnnotation = v22->_scenenetAnnotation;
    v22->_scenenetAnnotation = v33;

    v35 = [v21 copy];
    barcodeAnnotation = v22->_barcodeAnnotation;
    v22->_barcodeAnnotation = v35;
  }

  return v22;
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
    faceAnnotations = self->_faceAnnotations;
    v8 = [(VIAnnotation *)v6 faceAnnotations];
    if (VIObjectIsEqual(faceAnnotations, v8))
    {
      humanAnnotations = self->_humanAnnotations;
      v10 = [(VIAnnotation *)v6 humanAnnotations];
      if (VIObjectIsEqual(humanAnnotations, v10))
      {
        nsfwAnnotations = self->_nsfwAnnotations;
        v12 = [(VIAnnotation *)v6 nsfwAnnotations];
        if (VIObjectIsEqual(nsfwAnnotations, v12))
        {
          textBlockAnnotation = self->_textBlockAnnotation;
          v14 = [(VIAnnotation *)v6 textBlockAnnotation];
          if (VIObjectIsEqual(textBlockAnnotation, v14))
          {
            scenenetAnnotation = self->_scenenetAnnotation;
            v16 = [(VIAnnotation *)v6 scenenetAnnotation];
            if (VIObjectIsEqual(scenenetAnnotation, v16))
            {
              barcodeAnnotation = self->_barcodeAnnotation;
              v18 = [(VIAnnotation *)v6 barcodeAnnotation];
              if (VIObjectIsEqual(barcodeAnnotation, v18))
              {
                reducePersonOverTriggerAnnotation = self->_reducePersonOverTriggerAnnotation;
                v20 = [(VIAnnotation *)v6 reducePersonOverTriggerAnnotation];
                IsEqual = VIObjectIsEqual(reducePersonOverTriggerAnnotation, v20);
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