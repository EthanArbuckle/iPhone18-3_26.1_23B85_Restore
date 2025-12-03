@interface PUChangeDirectionValueFilter
- (double)updatedValue:(double)value withTargetValue:(double)targetValue;
@end

@implementation PUChangeDirectionValueFilter

- (double)updatedValue:(double)value withTargetValue:(double)targetValue
{
  [(PUChangeDirectionValueFilter *)self minimumChangeValue];
  v8 = fabs(targetValue);
  if (value != 0.0 || v8 <= v7)
  {
    if (value >= 0.0)
    {
      if (value <= 0.0)
      {
        return value;
      }

      threshold = self->_threshold;
      valueCopy = value;
      value = -1.0;
      if (threshold <= targetValue)
      {
        goto LABEL_12;
      }
    }

    else
    {
      threshold = self->_threshold;
      valueCopy = 1.0;
      if (threshold < targetValue)
      {
LABEL_12:
        v14 = targetValue - v7;
        if (threshold >= v14)
        {
          v14 = threshold;
        }

        self->_threshold = v14;
        return valueCopy;
      }
    }
  }

  else
  {
    threshold = self->_threshold;
    valueCopy = 1.0;
    v13 = targetValue < value;
    value = -1.0;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  v12 = v7 + targetValue;
  if (threshold < v12)
  {
    v12 = threshold;
  }

  self->_threshold = v12;
  return value;
}

@end