@interface CloudGeniusHasValueTransform
- (id)geniusValueForMLValue:(id)value;
@end

@implementation CloudGeniusHasValueTransform

- (id)geniusValueForMLValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [valueCopy BOOLValue];
LABEL_6:
    v5 = [NSNumber numberWithBool:bOOLValue];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    bOOLValue = [valueCopy length] != 0;
    goto LABEL_6;
  }

  v5 = &__kCFBooleanFalse;
LABEL_7:

  return v5;
}

@end