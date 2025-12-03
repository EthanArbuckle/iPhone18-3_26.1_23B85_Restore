@interface CloudGeniusBooleanTransform
- (id)geniusValueForMLValue:(id)value;
@end

@implementation CloudGeniusBooleanTransform

- (id)geniusValueForMLValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [valueCopy BOOLValue]);
  }

  else
  {
    v4 = &__kCFBooleanFalse;
  }

  return v4;
}

@end