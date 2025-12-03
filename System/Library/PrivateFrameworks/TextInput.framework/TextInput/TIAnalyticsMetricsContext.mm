@interface TIAnalyticsMetricsContext
- (BOOL)isEqual:(id)equal;
- (TIAnalyticsMetricsContext)initWithCoder:(id)coder;
- (TIAnalyticsMetricsContext)initWithInputLanguage:(id)language inputRegion:(id)region;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIAnalyticsMetricsContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_inputLanguage copyWithZone:zone];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSString *)self->_inputRegion copyWithZone:zone];
    v9 = v5[2];
    v5[2] = v8;
  }

  selfCopy = self;

  return selfCopy;
}

- (TIAnalyticsMetricsContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TIAnalyticsMetricsContext;
  v5 = [(TIAnalyticsMetricsContext *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputLanguage"];
    v7 = [v6 copy];
    inputLanguage = v5->_inputLanguage;
    v5->_inputLanguage = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputRegion"];
    v10 = [v9 copy];
    inputRegion = v5->_inputRegion;
    v5->_inputRegion = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  inputLanguage = self->_inputLanguage;
  coderCopy = coder;
  [coderCopy encodeObject:inputLanguage forKey:@"inputLanguage"];
  [coderCopy encodeObject:self->_inputRegion forKey:@"inputRegion"];
}

- (TIAnalyticsMetricsContext)initWithInputLanguage:(id)language inputRegion:(id)region
{
  languageCopy = language;
  regionCopy = region;
  v14.receiver = self;
  v14.super_class = TIAnalyticsMetricsContext;
  v8 = [(TIAnalyticsMetricsContext *)&v14 init];
  if (v8)
  {
    v9 = [languageCopy copy];
    inputLanguage = v8->_inputLanguage;
    v8->_inputLanguage = v9;

    v11 = [regionCopy copy];
    inputRegion = v8->_inputRegion;
    v8->_inputRegion = v11;
  }

  return v8;
}

@end