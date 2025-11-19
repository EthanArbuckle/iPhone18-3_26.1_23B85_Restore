@interface WFPencilActionConfigurationMetricsCacheKey
- (BOOL)isEqual:(id)a3;
- (CGSize)screenSize;
- (WFPencilActionConfigurationMetricsCacheKey)initWithInterfaceOrientation:(int64_t)a3 screenSize:(CGSize)a4;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WFPencilActionConfigurationMetricsCacheKey alloc];
  v5 = [(WFPencilActionConfigurationMetricsCacheKey *)self interfaceOrientation];
  [(WFPencilActionConfigurationMetricsCacheKey *)self screenSize];

  return [(WFPencilActionConfigurationMetricsCacheKey *)v4 initWithInterfaceOrientation:v5 screenSize:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v15 = [(WFPencilActionConfigurationMetricsCacheKey *)self interfaceOrientation];
    v14 = v15 == [v6 interfaceOrientation];
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
  v10 = [(WFPencilActionConfigurationMetricsCacheKey *)self interfaceOrientation];

  return v9 ^ v10;
}

- (WFPencilActionConfigurationMetricsCacheKey)initWithInterfaceOrientation:(int64_t)a3 screenSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v11.receiver = self;
  v11.super_class = WFPencilActionConfigurationMetricsCacheKey;
  v7 = [(WFPencilActionConfigurationMetricsCacheKey *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_screenSize.width = width;
    v7->_screenSize.height = height;
    v7->_interfaceOrientation = a3;
    v9 = v7;
  }

  return v8;
}

@end