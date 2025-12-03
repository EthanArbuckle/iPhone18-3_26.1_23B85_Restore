@interface PISegmentationGatingRange
- (PISegmentationGatingRange)initWithMin:(double)min max:(double)max manualMin:(double)manualMin manualMax:(double)manualMax depthMin:(double)depthMin depthMax:(double)depthMax;
- (id)description;
- (id)withLenience:(double)lenience;
@end

@implementation PISegmentationGatingRange

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(PISegmentationGatingRange *)self min];
  v6 = v5;
  [(PISegmentationGatingRange *)self max];
  v8 = v7;
  [(PISegmentationGatingRange *)self manualMin];
  v10 = v9;
  [(PISegmentationGatingRange *)self manualMax];
  v12 = v11;
  [(PISegmentationGatingRange *)self depthMin];
  v14 = v13;
  [(PISegmentationGatingRange *)self depthMax];
  return [v3 stringWithFormat:@"<%@: %p; min = %.2f, max = %.2f, manualMin = %.2f, manualMax = %.2f, depthMin = %.2f, depthMax = %.2f>", v4, self, v6, v8, v10, v12, v14, v15];
}

- (id)withLenience:(double)lenience
{
  v3 = [[PISegmentationGatingRange alloc] initWithMin:lenience * 0.0 + (1.0 - lenience) * self->_min max:lenience + (1.0 - lenience) * self->_max manualMin:lenience * 0.0 + (1.0 - lenience) * self->_manualMin manualMax:lenience + (1.0 - lenience) * self->_manualMax depthMin:lenience * 0.0 + (1.0 - lenience) * self->_depthMin depthMax:lenience + (1.0 - lenience) * self->_depthMax];

  return v3;
}

- (PISegmentationGatingRange)initWithMin:(double)min max:(double)max manualMin:(double)manualMin manualMax:(double)manualMax depthMin:(double)depthMin depthMax:(double)depthMax
{
  v15.receiver = self;
  v15.super_class = PISegmentationGatingRange;
  result = [(PISegmentationGatingRange *)&v15 init];
  result->_min = min;
  result->_max = max;
  result->_manualMin = manualMin;
  result->_manualMax = manualMax;
  result->_depthMin = depthMin;
  result->_depthMax = depthMax;
  return result;
}

@end