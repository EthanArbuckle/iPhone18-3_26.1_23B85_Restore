@interface TPSAnalyticsEventContentLinkTapped
+ (id)eventWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID clientConditionID:(id)conditionID url:(id)url;
- (TPSAnalyticsEventContentLinkTapped)initWithCoder:(id)coder;
- (id)_initWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID clientConditionID:(id)conditionID url:(id)url bundleID:(id)bundleID context:(id)context displayType:(id)self0;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setDataProvider:(id)provider;
@end

@implementation TPSAnalyticsEventContentLinkTapped

- (TPSAnalyticsEventContentLinkTapped)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = TPSAnalyticsEventContentLinkTapped;
  v5 = [(TPSAnalyticsEvent *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    contentID = v5->_contentID;
    v5->_contentID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"client_condition"];
    clientConditionID = v5->_clientConditionID;
    v5->_clientConditionID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundle_ID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"display_type"];
    displayType = v5->_displayType;
    v5->_displayType = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"link_url"];
    url = v5->_url;
    v5->_url = v20;
  }

  return v5;
}

- (id)_initWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID clientConditionID:(id)conditionID url:(id)url bundleID:(id)bundleID context:(id)context displayType:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  correlationIDCopy = correlationID;
  conditionIDCopy = conditionID;
  urlCopy = url;
  bundleIDCopy = bundleID;
  contextCopy = context;
  typeCopy = type;
  v30.receiver = self;
  v30.super_class = TPSAnalyticsEventContentLinkTapped;
  v19 = [(TPSAnalyticsEvent *)&v30 initWithDate:0];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_contentID, d);
    objc_storeStrong(&v20->_collectionID, iD);
    objc_storeStrong(&v20->_correlationID, correlationID);
    objc_storeStrong(&v20->_clientConditionID, conditionID);
    absoluteString = [urlCopy absoluteString];
    url = v20->_url;
    v20->_url = absoluteString;

    objc_storeStrong(&v20->_bundleID, bundleID);
    objc_storeStrong(&v20->_context, context);
    objc_storeStrong(&v20->_displayType, type);
  }

  return v20;
}

+ (id)eventWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID clientConditionID:(id)conditionID url:(id)url
{
  urlCopy = url;
  conditionIDCopy = conditionID;
  correlationIDCopy = correlationID;
  iDCopy = iD;
  dCopy = d;
  v17 = [[self alloc] _initWithContentID:dCopy collectionID:iDCopy correlationID:correlationIDCopy clientConditionID:conditionIDCopy url:urlCopy bundleID:0 context:0 displayType:0];

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventContentLinkTapped;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_contentID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_collectionID forKey:@"collection_ID"];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [coderCopy encodeObject:self->_clientConditionID forKey:@"client_condition"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundle_ID"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
  [coderCopy encodeObject:self->_displayType forKey:@"display_type"];
  [coderCopy encodeObject:self->_url forKey:@"link_url"];
}

- (void)setDataProvider:(id)provider
{
  v9.receiver = self;
  v9.super_class = TPSAnalyticsEventContentLinkTapped;
  [(TPSAnalyticsEvent *)&v9 setDataProvider:provider];
  displayType = self->_displayType;
  if (displayType)
  {
    v5 = displayType;
    dataProvider = self->_displayType;
    self->_displayType = v5;
  }

  else
  {
    dataProvider = [(TPSAnalyticsEvent *)self dataProvider];
    v7 = [dataProvider displayTypeForIdentifier:self->_contentID];
    v8 = self->_displayType;
    self->_displayType = v7;
  }
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_contentID forKeyedSubscript:@"tip_ID"];
  [dictionary setObject:self->_collectionID forKeyedSubscript:@"collection_ID"];
  [dictionary setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [dictionary setObject:self->_clientConditionID forKeyedSubscript:@"client_condition"];
  [dictionary setObject:self->_bundleID forKeyedSubscript:@"bundle_ID"];
  [dictionary setObject:self->_context forKeyedSubscript:@"context"];
  [dictionary setObject:self->_displayType forKeyedSubscript:@"display_type"];
  [dictionary setObject:self->_url forKeyedSubscript:@"link_url"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v4 forKeyedSubscript:@"u65_flag"];

  return dictionary;
}

@end