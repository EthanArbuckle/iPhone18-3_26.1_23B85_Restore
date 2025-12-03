@interface WFPencilActionConfigurationMetricsCacheKey
- (BOOL)isEqual:(id)equal;
- (CGSize)screenSize;
- (WFPencilActionConfigurationMetricsCacheKey)initWithInterfaceOrientation:(int64_t)orientation screenSize:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation WFPencilActionConfigurationMetricsCacheKey

- (CGSize)screenSize
{
  width = self->_screenSize.width;
  height = self->_screenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WFPencilActionConfigurationMetricsCacheKey alloc];
  interfaceOrientation = [(WFPencilActionConfigurationMetricsCacheKey *)self interfaceOrientation];
  [(WFPencilActionConfigurationMetricsCacheKey *)self screenSize];

  return [(WFPencilActionConfigurationMetricsCacheKey *)v4 initWithInterfaceOrientation:interfaceOrientation screenSize:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(WFPencilActionConfigurationMetricsCacheKey *)self screenSize];
  v8 = v7;
  v10 = v9;
  [v6 screenSize];
  if (v8 == v12 && v10 == v11)
  {
    interfaceOrientation = [(WFPencilActionConfigurationMetricsCacheKey *)self interfaceOrientation];
    v14 = interfaceOrientation == [v6 interfaceOrientation];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AD98];
  [(WFPencilActionConfigurationMetricsCacheKey *)self screenSize];
  v4 = [v3 numberWithDouble:?];
  v5 = [v4 hash];
  v6 = MEMORY[0x1E696AD98];
  [(WFPencilActionConfigurationMetricsCacheKey *)self screenSize];
  v8 = [v6 numberWithDouble:v7];
  v9 = [v8 hash] ^ v5;
  interfaceOrientation = [(WFPencilActionConfigurationMetricsCacheKey *)self interfaceOrientation];

  return v9 ^ interfaceOrientation;
}

- (WFPencilActionConfigurationMetricsCacheKey)initWithInterfaceOrientation:(int64_t)orientation screenSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = WFPencilActionConfigurationMetricsCacheKey;
  v7 = [(WFPencilActionConfigurationMetricsCacheKey *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_screenSize.width = width;
    v7->_screenSize.height = height;
    v7->_interfaceOrientation = orientation;
    v9 = v7;
  }

  return v8;
}

@end