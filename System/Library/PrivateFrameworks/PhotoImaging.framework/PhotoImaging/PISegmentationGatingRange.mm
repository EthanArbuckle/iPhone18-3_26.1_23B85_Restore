@interface PISegmentationGatingRange
- (PISegmentationGatingRange)initWithMin:(double)a3 max:(double)a4 manualMin:(double)a5 manualMax:(double)a6 depthMin:(double)a7 depthMax:(double)a8;
- (id)description;
- (id)withLenience:(double)a3;
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

- (id)withLenience:(double)a3
{
  v3 = [[PISegmentationGatingRange alloc] initWithMin:a3 * 0.0 + (1.0 - a3) * self->_min max:a3 + (1.0 - a3) * self->_max manualMin:a3 * 0.0 + (1.0 - a3) * self->_manualMin manualMax:a3 + (1.0 - a3) * self->_manualMax depthMin:a3 * 0.0 + (1.0 - a3) * self->_depthMin depthMax:a3 + (1.0 - a3) * self->_depthMax];

  return v3;
}

- (PISegmentationGatingRange)initWithMin:(double)a3 max:(double)a4 manualMin:(double)a5 manualMax:(double)a6 depthMin:(double)a7 depthMax:(double)a8
{
  v15.receiver = self;
  v15.super_class = PISegmentationGatingRange;
  result = [(PISegmentationGatingRange *)&v15 init];
  result->_min = a3;
  result->_max = a4;
  result->_manualMin = a5;
  result->_manualMax = a6;
  result->_depthMin = a7;
  result->_depthMax = a8;
  return result;
}

@end