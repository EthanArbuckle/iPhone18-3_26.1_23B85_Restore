@interface TPSAnalyticsEventUsageObservations
+ (id)eventWithEventID:(id)d eventCount:(id)count;
- (TPSAnalyticsEventUsageObservations)initWithCoder:(id)coder;
- (id)_initWithEventID:(id)d eventCount:(id)count;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setDataProvider:(id)provider;
@end

@implementation TPSAnalyticsEventUsageObservations

- (TPSAnalyticsEventUsageObservations)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventUsageObservations;
  v5 = [(TPSAnalyticsEvent *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"event_ID"];
    eventID = v5->_eventID;
    v5->_eventID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"event_count"];
    eventCount = v5->_eventCount;
    v5->_eventCount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experiment_ID"];
    experimentID = v5->_experimentID;
    v5->_experimentID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experiment_camp_ID"];
    experimentCampID = v5->_experimentCampID;
    v5->_experimentCampID = v12;
  }

  return v5;
}

- (id)_initWithEventID:(id)d eventCount:(id)count
{
  dCopy = d;
  countCopy = count;
  v12.receiver = self;
  v12.super_class = TPSAnalyticsEventUsageObservations;
  v9 = [(TPSAnalyticsEvent *)&v12 initWithDate:0];
  p_isa = &v9->super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_eventID, d);
    objc_storeStrong(p_isa + 5, count);
  }

  return p_isa;
}

+ (id)eventWithEventID:(id)d eventCount:(id)count
{
  countCopy = count;
  dCopy = d;
  v8 = [[self alloc] _initWithEventID:dCopy eventCount:countCopy];

  return v8;
}

- (void)setDataProvider:(id)provider
{
  v14.receiver = self;
  v14.super_class = TPSAnalyticsEventUsageObservations;
  [(TPSAnalyticsEvent *)&v14 setDataProvider:provider];
  experimentID = self->_experimentID;
  if (experimentID)
  {
    v5 = experimentID;
    dataProvider = self->_experimentID;
    self->_experimentID = v5;
  }

  else
  {
    dataProvider = [(TPSAnalyticsEvent *)self dataProvider];
    experimentID = [dataProvider experimentID];
    v8 = self->_experimentID;
    self->_experimentID = experimentID;
  }

  experimentCampID = self->_experimentCampID;
  if (experimentCampID)
  {
    v10 = experimentCampID;
    dataProvider2 = self->_experimentCampID;
    self->_experimentCampID = v10;
  }

  else
  {
    dataProvider2 = [(TPSAnalyticsEvent *)self dataProvider];
    experimentCampID = [dataProvider2 experimentCampID];
    v13 = self->_experimentCampID;
    self->_experimentCampID = experimentCampID;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventUsageObservations;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_eventID forKey:{@"event_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_eventCount forKey:@"event_count"];
  [coderCopy encodeObject:self->_experimentID forKey:@"experiment_ID"];
  [coderCopy encodeObject:self->_experimentCampID forKey:@"experiment_camp_ID"];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_eventID forKeyedSubscript:@"event_ID"];
  [dictionary setObject:self->_eventCount forKeyedSubscript:@"event_count"];
  [dictionary setObject:self->_experimentID forKeyedSubscript:@"experiment_ID"];
  [dictionary setObject:self->_experimentCampID forKeyedSubscript:@"experiment_camp_ID"];

  return dictionary;
}

@end