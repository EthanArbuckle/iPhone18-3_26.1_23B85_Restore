@interface PXInitialHysteresisNumberFilter
- (double)outputDerivative;
- (double)updatedOutput;
@end

@implementation PXInitialHysteresisNumberFilter

- (double)outputDerivative
{
  result = 0.0;
  if (self->_didReachThreshold)
  {
    return 1.0;
  }

  return result;
}

- (double)updatedOutput
{
  [(PXNumberFilter *)self output];
  v4 = v3;
  [(PXNumberFilter *)self input];
  v6 = v5;
  if (!self->_didReachThreshold)
  {
    [(PXInitialHysteresisNumberFilter *)self hysteresis];
    if (v6 - v4 >= v7 || (v7 = -v7, v6 - v4 <= v7))
    {
      self->_offset = v7;
      self->_didReachThreshold = 1;
    }

    else if (!self->_didReachThreshold)
    {
      return v4;
    }
  }

  return v6 - self->_offset;
}

@end