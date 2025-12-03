@interface PPSuggestedEvent
- (PPSuggestedEvent)initWithCoder:(id)coder;
- (PPSuggestedEvent)initWithPPEvent:(id)event score:(double)score;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSuggestedEvent

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = PPSuggestedEvent;
  v4 = [(PPScoredEvent *)&v8 description];
  v5 = [PPEvent descriptionForSuggestedEventCategory:self->_category];
  v6 = [v3 initWithFormat:@"%@ - cat: %@ - eventIdentifier: %@", v4, v5, self->_eventIdentifier];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PPSuggestedEvent;
  coderCopy = coder;
  [(PPScoredEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_category forKey:{@"cat", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_eventIdentifier forKey:@"ei"];
}

- (PPSuggestedEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PPSuggestedEvent;
  v5 = [(PPScoredEvent *)&v12 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = MEMORY[0x1E69C5D78];
  v7 = objc_opt_class();
  v8 = pp_default_log_handle();
  v9 = [v6 robustDecodeObjectOfClass:v7 forKey:@"ei" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v8];

  if (v9)
  {
    eventIdentifier = v5->_eventIdentifier;
    v5->_eventIdentifier = &v9->super.super.isa;

    v5->_category = [coderCopy decodeInt32ForKey:@"cat"];
LABEL_4:
    v9 = v5;
  }

  return v9;
}

- (PPSuggestedEvent)initWithPPEvent:(id)event score:(double)score
{
  eventCopy = event;
  v7 = eventCopy;
  if (score < 0.0 || score > 1.0)
  {
    selfCopy = 0;
  }

  else
  {
    startDate = [eventCopy startDate];
    endDate = [v7 endDate];
    title = [v7 title];
    v17.receiver = self;
    v17.super_class = PPSuggestedEvent;
    v13 = [(PPScoredEvent *)&v17 initWithStartDate:startDate endDate:endDate title:title score:score];

    if (v13)
    {
      v13->_category = [v7 suggestedEventCategory];
      eventIdentifier = [v7 eventIdentifier];
      eventIdentifier = v13->_eventIdentifier;
      v13->_eventIdentifier = eventIdentifier;
    }

    self = v13;
    selfCopy = self;
  }

  return selfCopy;
}

@end