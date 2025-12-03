@interface PXLayoutMetrics
- (BOOL)isEqual:(id)equal;
- (CGSize)referenceSize;
- (NSString)diagnosticDescription;
- (id)copyWithZone:(_NSZone *)zone;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PXLayoutMetrics *)equalCopy referenceSize];
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

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 8) = self->_referenceSize;
  return result;
}

@end