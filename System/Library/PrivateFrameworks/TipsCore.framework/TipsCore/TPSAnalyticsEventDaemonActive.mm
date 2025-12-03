@interface TPSAnalyticsEventDaemonActive
- (TPSAnalyticsEventDaemonActive)initWithCoder:(id)coder;
- (id)_initWithReason:(id)reason alreadyRunning:(BOOL)running;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventDaemonActive

- (TPSAnalyticsEventDaemonActive)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TPSAnalyticsEventDaemonActive;
  v5 = [(TPSAnalyticsEvent *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v6;

    v5->_alreadyRunning = [coderCopy decodeBoolForKey:@"already_running"];
  }

  return v5;
}

- (id)_initWithReason:(id)reason alreadyRunning:(BOOL)running
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = TPSAnalyticsEventDaemonActive;
  v8 = [(TPSAnalyticsEvent *)&v11 initWithDate:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_reason, reason);
    v9->_alreadyRunning = running;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventDaemonActive;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_reason forKey:{@"reason", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_alreadyRunning forKey:@"already_running"];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_reason forKeyedSubscript:@"reason"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_alreadyRunning];
  [dictionary setObject:v4 forKeyedSubscript:@"already_running"];

  return dictionary;
}

@end