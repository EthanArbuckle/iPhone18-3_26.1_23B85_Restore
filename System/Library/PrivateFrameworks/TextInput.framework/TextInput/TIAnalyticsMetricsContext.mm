@interface TIAnalyticsMetricsContext
- (BOOL)isEqual:(id)a3;
- (TIAnalyticsMetricsContext)initWithCoder:(id)a3;
- (TIAnalyticsMetricsContext)initWithInputLanguage:(id)a3 inputRegion:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIAnalyticsMetricsContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    inputLanguage = self->_inputLanguage;
    if (inputLanguage | v6->_inputLanguage && ![(NSString *)inputLanguage isEqualToString:?])
    {
      v9 = 0;
    }

    else
    {
      inputRegion = self->_inputRegion;
      if (inputRegion | v6->_inputRegion)
      {
        v9 = [(NSString *)inputRegion isEqualToString:?];
      }

      else
      {
        v9 = 1;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_inputLanguage copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSString *)self->_inputRegion copyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;
  }

  v10 = self;

  return v10;
}

- (TIAnalyticsMetricsContext)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TIAnalyticsMetricsContext;
  v5 = [(TIAnalyticsMetricsContext *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputLanguage"];
    v7 = [v6 copy];
    inputLanguage = v5->_inputLanguage;
    v5->_inputLanguage = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputRegion"];
    v10 = [v9 copy];
    inputRegion = v5->_inputRegion;
    v5->_inputRegion = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  inputLanguage = self->_inputLanguage;
  v5 = a3;
  [v5 encodeObject:inputLanguage forKey:@"inputLanguage"];
  [v5 encodeObject:self->_inputRegion forKey:@"inputRegion"];
}

- (TIAnalyticsMetricsContext)initWithInputLanguage:(id)a3 inputRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TIAnalyticsMetricsContext;
  v8 = [(TIAnalyticsMetricsContext *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    inputLanguage = v8->_inputLanguage;
    v8->_inputLanguage = v9;

    v11 = [v7 copy];
    inputRegion = v8->_inputRegion;
    v8->_inputRegion = v11;
  }

  return v8;
}

@end