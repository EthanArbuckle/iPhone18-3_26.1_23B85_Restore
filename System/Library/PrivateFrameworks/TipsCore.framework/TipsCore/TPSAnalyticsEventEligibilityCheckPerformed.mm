@interface TPSAnalyticsEventEligibilityCheckPerformed
+ (id)eventWithError:(id)error;
- (TPSAnalyticsEventEligibilityCheckPerformed)initWithCoder:(id)coder;
- (id)_initWithError:(id)error;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventEligibilityCheckPerformed

- (TPSAnalyticsEventEligibilityCheckPerformed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TPSAnalyticsEventEligibilityCheckPerformed;
  v5 = [(TPSAnalyticsEvent *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (id)_initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = TPSAnalyticsEventEligibilityCheckPerformed;
  v6 = [(TPSAnalyticsEvent *)&v9 initWithDate:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

+ (id)eventWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] _initWithError:errorCopy];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventEligibilityCheckPerformed;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_error forKey:{@"error", v5.receiver, v5.super_class}];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_error forKeyedSubscript:@"error"];

  return dictionary;
}

@end