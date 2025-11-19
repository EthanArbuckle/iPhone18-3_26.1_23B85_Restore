@interface PXLayoutMetrics
- (BOOL)isEqual:(id)a3;
- (CGSize)referenceSize;
- (NSString)diagnosticDescription;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXLayoutMetrics

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(PXLayoutMetrics *)self referenceSize];
  v4 = NSStringFromCGSize(v8);
  v5 = [v3 initWithFormat:@"referenceSize=%@", v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PXLayoutMetrics *)v4 referenceSize];
      v6 = v5;
      v8 = v7;
      [(PXLayoutMetrics *)self referenceSize];
      v11 = v8 == v10 && v6 == v9;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 8) = self->_referenceSize;
  return result;
}

@end