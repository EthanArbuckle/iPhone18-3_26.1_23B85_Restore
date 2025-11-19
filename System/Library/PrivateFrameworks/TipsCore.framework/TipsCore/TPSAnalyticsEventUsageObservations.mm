@interface TPSAnalyticsEventUsageObservations
+ (id)eventWithEventID:(id)a3 eventCount:(id)a4;
- (TPSAnalyticsEventUsageObservations)initWithCoder:(id)a3;
- (id)_initWithEventID:(id)a3 eventCount:(id)a4;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setDataProvider:(id)a3;
@end

@implementation TPSAnalyticsEventUsageObservations

- (TPSAnalyticsEventUsageObservations)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventUsageObservations;
  v5 = [(TPSAnalyticsEvent *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"event_ID"];
    eventID = v5->_eventID;
    v5->_eventID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"event_count"];
    eventCount = v5->_eventCount;
    v5->_eventCount = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experiment_ID"];
    experimentID = v5->_experimentID;
    v5->_experimentID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experiment_camp_ID"];
    experimentCampID = v5->_experimentCampID;
    v5->_experimentCampID = v12;
  }

  return v5;
}

- (id)_initWithEventID:(id)a3 eventCount:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TPSAnalyticsEventUsageObservations;
  v9 = [(TPSAnalyticsEvent *)&v12 initWithDate:0];
  p_isa = &v9->super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_eventID, a3);
    objc_storeStrong(p_isa + 5, a4);
  }

  return p_isa;
}

+ (id)eventWithEventID:(id)a3 eventCount:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithEventID:v7 eventCount:v6];

  return v8;
}

- (void)setDataProvider:(id)a3
{
  v14.receiver = self;
  v14.super_class = TPSAnalyticsEventUsageObservations;
  [(TPSAnalyticsEvent *)&v14 setDataProvider:a3];
  experimentID = self->_experimentID;
  if (experimentID)
  {
    v5 = experimentID;
    v6 = self->_experimentID;
    self->_experimentID = v5;
  }

  else
  {
    v6 = [(TPSAnalyticsEvent *)self dataProvider];
    v7 = [v6 experimentID];
    v8 = self->_experimentID;
    self->_experimentID = v7;
  }

  experimentCampID = self->_experimentCampID;
  if (experimentCampID)
  {
    v10 = experimentCampID;
    v11 = self->_experimentCampID;
    self->_experimentCampID = v10;
  }

  else
  {
    v11 = [(TPSAnalyticsEvent *)self dataProvider];
    v12 = [v11 experimentCampID];
    v13 = self->_experimentCampID;
    self->_experimentCampID = v12;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventUsageObservations;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_eventID forKey:{@"event_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_eventCount forKey:@"event_count"];
  [v4 encodeObject:self->_experimentID forKey:@"experiment_ID"];
  [v4 encodeObject:self->_experimentCampID forKey:@"experiment_camp_ID"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_eventID forKeyedSubscript:@"event_ID"];
  [v3 setObject:self->_eventCount forKeyedSubscript:@"event_count"];
  [v3 setObject:self->_experimentID forKeyedSubscript:@"experiment_ID"];
  [v3 setObject:self->_experimentCampID forKeyedSubscript:@"experiment_camp_ID"];

  return v3;
}

@end