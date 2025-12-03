@interface TPSAnalyticsEventReplayButtonTapped
+ (id)eventWithTipID:(id)d collectionID:(id)iD correlationID:(id)correlationID;
- (TPSAnalyticsEventReplayButtonTapped)initWithCoder:(id)coder;
- (id)_initWithTipID:(id)d collectionID:(id)iD correlationID:(id)correlationID;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventReplayButtonTapped

- (TPSAnalyticsEventReplayButtonTapped)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TPSAnalyticsEventReplayButtonTapped;
  v5 = [(TPSAnalyticsEvent *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v10;
  }

  return v5;
}

- (id)_initWithTipID:(id)d collectionID:(id)iD correlationID:(id)correlationID
{
  dCopy = d;
  iDCopy = iD;
  correlationIDCopy = correlationID;
  date = [MEMORY[0x1E695DF00] date];
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventReplayButtonTapped;
  v13 = [(TPSAnalyticsEvent *)&v15 initWithDate:date];

  if (v13)
  {
    objc_storeStrong(&v13->_tipID, d);
    objc_storeStrong(&v13->_collectionID, iD);
    objc_storeStrong(&v13->_correlationID, correlationID);
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventReplayButtonTapped;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_collectionID forKey:@"tip_collection_ID"];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  tipID = [(TPSAnalyticsEventReplayButtonTapped *)self tipID];
  [dictionary setObject:tipID forKeyedSubscript:@"tip_ID"];

  collectionID = [(TPSAnalyticsEventReplayButtonTapped *)self collectionID];
  [dictionary setObject:collectionID forKeyedSubscript:@"tip_collection_ID"];

  correlationID = [(TPSAnalyticsEventReplayButtonTapped *)self correlationID];
  [dictionary setObject:correlationID forKeyedSubscript:@"tip_correlation_ID"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v7 forKeyedSubscript:@"u65_flag"];

  return dictionary;
}

@end