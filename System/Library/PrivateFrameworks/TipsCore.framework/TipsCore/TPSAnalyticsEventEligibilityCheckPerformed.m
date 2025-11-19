@interface TPSAnalyticsEventEligibilityCheckPerformed
+ (id)eventWithError:(id)a3;
- (TPSAnalyticsEventEligibilityCheckPerformed)initWithCoder:(id)a3;
- (id)_initWithError:(id)a3;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventEligibilityCheckPerformed

- (TPSAnalyticsEventEligibilityCheckPerformed)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSAnalyticsEventEligibilityCheckPerformed;
  v5 = [(TPSAnalyticsEvent *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (id)_initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSAnalyticsEventEligibilityCheckPerformed;
  v6 = [(TPSAnalyticsEvent *)&v9 initWithDate:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
  }

  return v7;
}

+ (id)eventWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithError:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventEligibilityCheckPerformed;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_error forKey:{@"error", v5.receiver, v5.super_class}];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_error forKeyedSubscript:@"error"];

  return v3;
}

@end