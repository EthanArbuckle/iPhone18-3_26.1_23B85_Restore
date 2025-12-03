@interface TPSAnalyticsEventAnimationFinished
- (TPSAnalyticsEventAnimationFinished)initWithCoder:(id)coder;
- (id)_initWithTipID:(id)d animationFinished:(BOOL)finished animationSource:(id)source collectionID:(id)iD correlationID:(id)correlationID;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventAnimationFinished

- (TPSAnalyticsEventAnimationFinished)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventAnimationFinished;
  v5 = [(TPSAnalyticsEvent *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"animation_source"];
    animationSource = v5->_animationSource;
    v5->_animationSource = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v12;

    v5->_animationFinished = [coderCopy decodeBoolForKey:@"animation_finished"];
  }

  return v5;
}

- (id)_initWithTipID:(id)d animationFinished:(BOOL)finished animationSource:(id)source collectionID:(id)iD correlationID:(id)correlationID
{
  dCopy = d;
  sourceCopy = source;
  iDCopy = iD;
  correlationIDCopy = correlationID;
  v20.receiver = self;
  v20.super_class = TPSAnalyticsEventAnimationFinished;
  v17 = [(TPSAnalyticsEvent *)&v20 initWithDate:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_tipID, d);
    objc_storeStrong(&v18->_animationSource, source);
    v18->_animationFinished = finished;
    objc_storeStrong(&v18->_collectionID, iD);
    objc_storeStrong(&v18->_correlationID, correlationID);
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventAnimationFinished;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_animationSource forKey:@"animation_source"];
  [coderCopy encodeObject:self->_collectionID forKey:@"collection_ID"];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [coderCopy encodeBool:self->_animationFinished forKey:@"animation_finished"];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  tipID = [(TPSAnalyticsEventAnimationFinished *)self tipID];
  [dictionary setObject:tipID forKeyedSubscript:@"tip_ID"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_animationFinished];
  [dictionary setObject:v5 forKeyedSubscript:@"animation_finished"];

  animationSource = [(TPSAnalyticsEventAnimationFinished *)self animationSource];
  [dictionary setObject:animationSource forKeyedSubscript:@"animation_source"];

  collectionID = [(TPSAnalyticsEventAnimationFinished *)self collectionID];
  [dictionary setObject:collectionID forKeyedSubscript:@"collection_ID"];

  correlationID = [(TPSAnalyticsEventAnimationFinished *)self correlationID];
  [dictionary setObject:correlationID forKeyedSubscript:@"tip_correlation_ID"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v9 forKeyedSubscript:@"u65_flag"];

  return dictionary;
}

@end