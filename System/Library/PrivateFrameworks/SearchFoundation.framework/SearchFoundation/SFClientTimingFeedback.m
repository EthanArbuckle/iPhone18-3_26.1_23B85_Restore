@interface SFClientTimingFeedback
- (SFClientTimingFeedback)initWithCoder:(id)a3;
- (SFClientTimingFeedback)initWithEvent:(id)a3 timeInterval:(unint64_t)a4 queryId:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFClientTimingFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFClientTimingFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_eventName forKey:{@"_eventName", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_nanosecondInterval forKey:@"_nanosecondInterval"];
}

- (SFClientTimingFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFClientTimingFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_eventName"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v5->_nanosecondInterval = [v4 decodeInt64ForKey:@"_nanosecondInterval"];
  }

  return v5;
}

- (SFClientTimingFeedback)initWithEvent:(id)a3 timeInterval:(unint64_t)a4 queryId:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SFClientTimingFeedback;
  v10 = [(SFFeedback *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_eventName, a3);
    v11->_nanosecondInterval = a4;
    v11->super._queryId = a5;
  }

  return v11;
}

@end