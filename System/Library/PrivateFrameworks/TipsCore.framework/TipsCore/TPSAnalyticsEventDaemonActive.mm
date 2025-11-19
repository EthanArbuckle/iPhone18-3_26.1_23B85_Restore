@interface TPSAnalyticsEventDaemonActive
- (TPSAnalyticsEventDaemonActive)initWithCoder:(id)a3;
- (id)_initWithReason:(id)a3 alreadyRunning:(BOOL)a4;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventDaemonActive

- (TPSAnalyticsEventDaemonActive)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSAnalyticsEventDaemonActive;
  v5 = [(TPSAnalyticsEvent *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v6;

    v5->_alreadyRunning = [v4 decodeBoolForKey:@"already_running"];
  }

  return v5;
}

- (id)_initWithReason:(id)a3 alreadyRunning:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TPSAnalyticsEventDaemonActive;
  v8 = [(TPSAnalyticsEvent *)&v11 initWithDate:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_reason, a3);
    v9->_alreadyRunning = a4;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventDaemonActive;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_reason forKey:{@"reason", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_alreadyRunning forKey:@"already_running"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_reason forKeyedSubscript:@"reason"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_alreadyRunning];
  [v3 setObject:v4 forKeyedSubscript:@"already_running"];

  return v3;
}

@end