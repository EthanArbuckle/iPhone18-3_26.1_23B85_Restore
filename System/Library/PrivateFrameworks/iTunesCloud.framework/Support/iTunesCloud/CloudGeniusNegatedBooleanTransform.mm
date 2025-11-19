@interface CloudGeniusNegatedBooleanTransform
- (id)geniusValueForMLValue:(id)a3;
@end

@implementation CloudGeniusNegatedBooleanTransform

- (id)geniusValueForMLValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 BOOLValue] ^ 1);
  }

  else
  {
    v4 = &__kCFBooleanFalse;
  }

  return v4;
}

@end