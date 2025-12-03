@interface TPSAnalyticsEventTipTimeSpent
+ (id)eventWithTipID:(id)d collectionID:(id)iD correlationID:(id)correlationID;
- (TPSAnalyticsEventTipTimeSpent)initWithCoder:(id)coder;
- (id)_initWithTipID:(id)d collectionID:(id)iD correlationID:(id)correlationID;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventTipTimeSpent

- (TPSAnalyticsEventTipTimeSpent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventTipTimeSpent;
  v5 = [(TPSAnalyticsEvent *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v7;

    v9 = [coderCopy decodeObjectOfClass:v6 forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v9;

    v11 = [coderCopy decodeObjectOfClass:v6 forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v11;

    [coderCopy decodeDoubleForKey:@"time_spent"];
    v5->_timeSpent = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventTipTimeSpent;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_collectionID forKey:@"collection_ID"];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [coderCopy encodeDouble:@"time_spent" forKey:self->_timeSpent];
}

- (id)_initWithTipID:(id)d collectionID:(id)iD correlationID:(id)correlationID
{
  dCopy = d;
  iDCopy = iD;
  correlationIDCopy = correlationID;
  date = [MEMORY[0x1E695DF00] date];
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventTipTimeSpent;
  v13 = [(TPSAnalyticsEvent *)&v15 initWithDate:date];

  if (v13)
  {
    objc_storeStrong(&v13->_tipID, d);
    objc_storeStrong(&v13->_collectionID, iD);
    objc_storeStrong(&v13->_correlationID, correlationID);
    v13->_timeSpent = 0.0;
  }

  return v13;
}

+ (id)eventWithTipID:(id)d collectionID:(id)iD correlationID:(id)correlationID
{
  correlationIDCopy = correlationID;
  iDCopy = iD;
  dCopy = d;
  v11 = [[self alloc] _initWithTipID:dCopy collectionID:iDCopy correlationID:correlationIDCopy];

  return v11;
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_tipID forKeyedSubscript:@"tip_ID"];
  [dictionary setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [dictionary setObject:self->_collectionID forKeyedSubscript:@"collection_ID"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v4 forKeyedSubscript:@"u65_flag"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_timeSpent];
  [dictionary setObject:v5 forKeyedSubscript:@"time_spent"];

  return dictionary;
}

@end