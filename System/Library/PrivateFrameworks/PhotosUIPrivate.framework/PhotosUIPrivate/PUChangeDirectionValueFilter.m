@interface PUChangeDirectionValueFilter
- (double)updatedValue:(double)a3 withTargetValue:(double)a4;
@end

@implementation PUChangeDirectionValueFilter

- (double)updatedValue:(double)a3 withTargetValue:(double)a4
{
  [(PUChangeDirectionValueFilter *)self minimumChangeValue];
  v8 = fabs(a4);
  if (a3 != 0.0 || v8 <= v7)
  {
    if (a3 >= 0.0)
    {
      if (a3 <= 0.0)
      {
        return a3;
      }

      threshold = self->_threshold;
      v11 = a3;
      a3 = -1.0;
      if (threshold <= a4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      threshold = self->_threshold;
      v11 = 1.0;
      if (threshold < a4)
      {
LABEL_12:
        v14 = a4 - v7;
        if (threshold >= v14)
        {
          v14 = threshold;
        }

        self->_threshold = v14;
        return v11;
      }
    }
  }

  else
  {
    threshold = self->_threshold;
    v11 = 1.0;
    v13 = a4 < a3;
    a3 = -1.0;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  v12 = v7 + a4;
  if (threshold < v12)
  {
    v12 = threshold;
  }

  self->_threshold = v12;
  return a3;
}

@end