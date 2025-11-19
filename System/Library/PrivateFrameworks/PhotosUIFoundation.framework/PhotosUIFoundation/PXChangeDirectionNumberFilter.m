@interface PXChangeDirectionNumberFilter
- (PXChangeDirectionNumberFilter)initWithInput:(double)a3;
- (double)updatedOutput;
@end

@implementation PXChangeDirectionNumberFilter

- (double)updatedOutput
{
  [(PXNumberFilter *)self input];
  v4 = v3;
  [(PXNumberFilter *)self output];
  v6 = v5;
  [(PXChangeDirectionNumberFilter *)self minimumChange];
  if (v6 == 0.0 && (threshold = self->_threshold, vabdd_f64(v4, threshold) > v7))
  {
    v9 = 1.0;
    v6 = -1.0;
    if (v4 >= threshold)
    {
LABEL_4:
      v10 = v4 - v7;
      if (threshold >= v10)
      {
        v10 = threshold;
      }

      self->_threshold = v10;
      return v9;
    }
  }

  else if (v6 >= 0.0)
  {
    if (v6 <= 0.0)
    {
      return v6;
    }

    threshold = self->_threshold;
    v9 = v6;
    v6 = -1.0;
    if (v4 >= threshold)
    {
      goto LABEL_4;
    }
  }

  else
  {
    threshold = self->_threshold;
    v9 = 1.0;
    if (v4 > threshold)
    {
      goto LABEL_4;
    }
  }

  v11 = v4 + v7;
  if (threshold < v11)
  {
    v11 = threshold;
  }

  self->_threshold = v11;
  return v6;
}

- (PXChangeDirectionNumberFilter)initWithInput:(double)a3
{
  v5.receiver = self;
  v5.super_class = PXChangeDirectionNumberFilter;
  result = [(PXNumberFilter *)&v5 initWithInput:?];
  if (result)
  {
    result->_threshold = a3;
  }

  return result;
}

@end