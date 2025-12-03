@interface SFClientTimingFeedback
- (SFClientTimingFeedback)initWithCoder:(id)coder;
- (SFClientTimingFeedback)initWithEvent:(id)event timeInterval:(unint64_t)interval queryId:(unint64_t)id;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFClientTimingFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFClientTimingFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_eventName forKey:{@"_eventName", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_nanosecondInterval forKey:@"_nanosecondInterval"];
}

- (SFClientTimingFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFClientTimingFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_eventName"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v5->_nanosecondInterval = [coderCopy decodeInt64ForKey:@"_nanosecondInterval"];
  }

  return v5;
}

- (SFClientTimingFeedback)initWithEvent:(id)event timeInterval:(unint64_t)interval queryId:(unint64_t)id
{
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = SFClientTimingFeedback;
  v10 = [(SFFeedback *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_eventName, event);
    v11->_nanosecondInterval = interval;
    v11->super._queryId = id;
  }

  return v11;
}

@end