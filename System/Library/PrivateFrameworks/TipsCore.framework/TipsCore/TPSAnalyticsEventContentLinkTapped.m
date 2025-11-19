@interface TPSAnalyticsEventContentLinkTapped
+ (id)eventWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 clientConditionID:(id)a6 url:(id)a7;
- (TPSAnalyticsEventContentLinkTapped)initWithCoder:(id)a3;
- (id)_initWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 clientConditionID:(id)a6 url:(id)a7 bundleID:(id)a8 context:(id)a9 displayType:(id)a10;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setDataProvider:(id)a3;
@end

@implementation TPSAnalyticsEventContentLinkTapped

- (TPSAnalyticsEventContentLinkTapped)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TPSAnalyticsEventContentLinkTapped;
  v5 = [(TPSAnalyticsEvent *)&v23 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    contentID = v5->_contentID;
    v5->_contentID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"client_condition"];
    clientConditionID = v5->_clientConditionID;
    v5->_clientConditionID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundle_ID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"display_type"];
    displayType = v5->_displayType;
    v5->_displayType = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"link_url"];
    url = v5->_url;
    v5->_url = v20;
  }

  return v5;
}

- (id)_initWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 clientConditionID:(id)a6 url:(id)a7 bundleID:(id)a8 context:(id)a9 displayType:(id)a10
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v17 = a7;
  v25 = a8;
  v24 = a9;
  v18 = a10;
  v30.receiver = self;
  v30.super_class = TPSAnalyticsEventContentLinkTapped;
  v19 = [(TPSAnalyticsEvent *)&v30 initWithDate:0];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_contentID, a3);
    objc_storeStrong(&v20->_collectionID, a4);
    objc_storeStrong(&v20->_correlationID, a5);
    objc_storeStrong(&v20->_clientConditionID, a6);
    v21 = [v17 absoluteString];
    url = v20->_url;
    v20->_url = v21;

    objc_storeStrong(&v20->_bundleID, a8);
    objc_storeStrong(&v20->_context, a9);
    objc_storeStrong(&v20->_displayType, a10);
  }

  return v20;
}

+ (id)eventWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 clientConditionID:(id)a6 url:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] _initWithContentID:v16 collectionID:v15 correlationID:v14 clientConditionID:v13 url:v12 bundleID:0 context:0 displayType:0];

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventContentLinkTapped;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_contentID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_collectionID forKey:@"collection_ID"];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [v4 encodeObject:self->_clientConditionID forKey:@"client_condition"];
  [v4 encodeObject:self->_bundleID forKey:@"bundle_ID"];
  [v4 encodeObject:self->_context forKey:@"context"];
  [v4 encodeObject:self->_displayType forKey:@"display_type"];
  [v4 encodeObject:self->_url forKey:@"link_url"];
}

- (void)setDataProvider:(id)a3
{
  v9.receiver = self;
  v9.super_class = TPSAnalyticsEventContentLinkTapped;
  [(TPSAnalyticsEvent *)&v9 setDataProvider:a3];
  displayType = self->_displayType;
  if (displayType)
  {
    v5 = displayType;
    v6 = self->_displayType;
    self->_displayType = v5;
  }

  else
  {
    v6 = [(TPSAnalyticsEvent *)self dataProvider];
    v7 = [v6 displayTypeForIdentifier:self->_contentID];
    v8 = self->_displayType;
    self->_displayType = v7;
  }
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_contentID forKeyedSubscript:@"tip_ID"];
  [v3 setObject:self->_collectionID forKeyedSubscript:@"collection_ID"];
  [v3 setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [v3 setObject:self->_clientConditionID forKeyedSubscript:@"client_condition"];
  [v3 setObject:self->_bundleID forKeyedSubscript:@"bundle_ID"];
  [v3 setObject:self->_context forKeyedSubscript:@"context"];
  [v3 setObject:self->_displayType forKeyedSubscript:@"display_type"];
  [v3 setObject:self->_url forKeyedSubscript:@"link_url"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v4 forKeyedSubscript:@"u65_flag"];

  return v3;
}

@end