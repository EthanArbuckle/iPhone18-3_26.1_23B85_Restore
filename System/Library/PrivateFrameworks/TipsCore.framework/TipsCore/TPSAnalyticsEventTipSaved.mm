@interface TPSAnalyticsEventTipSaved
- (TPSAnalyticsEventTipSaved)initWithCoder:(id)coder;
- (id)_initWithTipID:(id)d saved:(BOOL)saved correlationID:(id)iD collectionID:(id)collectionID;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventTipSaved

- (TPSAnalyticsEventTipSaved)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TPSAnalyticsEventTipSaved;
  v5 = [(TPSAnalyticsEvent *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    tipID = v5->_tipID;
    v5->_tipID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v10;

    v5->_saved = [coderCopy decodeBoolForKey:@"save_flag"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventTipSaved;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tipID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [coderCopy encodeObject:self->_collectionID forKey:@"collection_ID"];
  [coderCopy encodeBool:self->_saved forKey:@"save_flag"];
}

- (id)_initWithTipID:(id)d saved:(BOOL)saved correlationID:(id)iD collectionID:(id)collectionID
{
  dCopy = d;
  iDCopy = iD;
  collectionIDCopy = collectionID;
  date = [MEMORY[0x1E695DF00] date];
  v17.receiver = self;
  v17.super_class = TPSAnalyticsEventTipSaved;
  v15 = [(TPSAnalyticsEvent *)&v17 initWithDate:date];

  if (v15)
  {
    objc_storeStrong(&v15->_tipID, d);
    v15->_saved = saved;
    objc_storeStrong(&v15->_correlationID, iD);
    objc_storeStrong(&v15->_collectionID, collectionID);
  }

  return v15;
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  tipID = [(TPSAnalyticsEventTipSaved *)self tipID];
  [dictionary setObject:tipID forKeyedSubscript:@"tip_ID"];

  correlationID = [(TPSAnalyticsEventTipSaved *)self correlationID];
  [dictionary setObject:correlationID forKeyedSubscript:@"tip_correlation_ID"];

  collectionID = [(TPSAnalyticsEventTipSaved *)self collectionID];
  [dictionary setObject:collectionID forKeyedSubscript:@"collection_ID"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[TPSAnalyticsEventTipSaved saved](self, "saved")}];
  [dictionary setObject:v7 forKeyedSubscript:@"save_flag"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v8 forKeyedSubscript:@"u65_flag"];

  return dictionary;
}

@end