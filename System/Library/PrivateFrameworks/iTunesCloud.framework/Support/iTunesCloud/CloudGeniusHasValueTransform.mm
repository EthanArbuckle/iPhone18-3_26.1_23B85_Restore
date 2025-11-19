@interface CloudGeniusHasValueTransform
- (id)geniusValueForMLValue:(id)a3;
@end

@implementation CloudGeniusHasValueTransform

- (id)geniusValueForMLValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
LABEL_6:
    v5 = [NSNumber numberWithBool:v4];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 length] != 0;
    goto LABEL_6;
  }

  v5 = &__kCFBooleanFalse;
LABEL_7:

  return v5;
}

@end