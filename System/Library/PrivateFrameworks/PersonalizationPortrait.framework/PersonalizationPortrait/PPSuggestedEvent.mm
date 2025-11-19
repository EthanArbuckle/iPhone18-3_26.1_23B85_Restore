@interface PPSuggestedEvent
- (PPSuggestedEvent)initWithCoder:(id)a3;
- (PPSuggestedEvent)initWithPPEvent:(id)a3 score:(double)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PPSuggestedEvent;
  v4 = a3;
  [(PPScoredEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:self->_category forKey:{@"cat", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_eventIdentifier forKey:@"ei"];
}

- (PPSuggestedEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PPSuggestedEvent;
  v5 = [(PPScoredEvent *)&v12 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = MEMORY[0x1E69C5D78];
  v7 = objc_opt_class();
  v8 = pp_default_log_handle();
  v9 = [v6 robustDecodeObjectOfClass:v7 forKey:@"ei" withCoder:v4 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v8];

  if (v9)
  {
    eventIdentifier = v5->_eventIdentifier;
    v5->_eventIdentifier = &v9->super.super.isa;

    v5->_category = [v4 decodeInt32ForKey:@"cat"];
LABEL_4:
    v9 = v5;
  }

  return v9;
}

- (PPSuggestedEvent)initWithPPEvent:(id)a3 score:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 < 0.0 || a4 > 1.0)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v6 startDate];
    v11 = [v7 endDate];
    v12 = [v7 title];
    v17.receiver = self;
    v17.super_class = PPSuggestedEvent;
    v13 = [(PPScoredEvent *)&v17 initWithStartDate:v10 endDate:v11 title:v12 score:a4];

    if (v13)
    {
      v13->_category = [v7 suggestedEventCategory];
      v14 = [v7 eventIdentifier];
      eventIdentifier = v13->_eventIdentifier;
      v13->_eventIdentifier = v14;
    }

    self = v13;
    v9 = self;
  }

  return v9;
}

@end