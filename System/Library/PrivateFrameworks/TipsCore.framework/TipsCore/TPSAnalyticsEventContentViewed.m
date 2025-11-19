@interface TPSAnalyticsEventContentViewed
+ (BOOL)updateSessionViewNumber;
+ (id)eventWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 clientConditionID:(id)a6 viewMethod:(id)a7 viewMode:(id)a8;
+ (id)eventWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 clientConditionID:(id)a6 widgetType:(id)a7;
+ (void)incrementSessionViewNumberForKey:(id)a3;
+ (void)resetSessionViewNumber;
- (TPSAnalyticsEventContentViewed)initWithCoder:(id)a3;
- (id)_initWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 clientConditionID:(id)a6 viewMethod:(id)a7 viewMode:(id)a8;
- (id)_initWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 clientConditionID:(id)a6 widgetType:(id)a7;
- (id)eventName;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)log;
@end

@implementation TPSAnalyticsEventContentViewed

+ (void)resetSessionViewNumber
{
  [TPSAnalyticsPersistenceController persistObject:&unk_1F3F41E18 forKey:@"new_content_viewed"];

  [TPSAnalyticsPersistenceController persistObject:&unk_1F3F41E18 forKey:@"collection_viewed"];
}

+ (BOOL)updateSessionViewNumber
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3 - *&_lastContentViewedRef;
  if (v3 - *&_lastContentViewedRef > 300.0)
  {
    [a1 resetSessionViewNumber];
  }

  return v4 > 300.0;
}

- (TPSAnalyticsEventContentViewed)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = TPSAnalyticsEventContentViewed;
  v5 = [(TPSAnalyticsEvent *)&v21 initWithCoder:v4];
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

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"view_src"];
    viewMethod = v5->_viewMethod;
    v5->_viewMethod = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
    viewMode = v5->_viewMode;
    v5->_viewMode = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrer"];
    v19 = _appReferrer;
    _appReferrer = v18;
  }

  return v5;
}

- (id)_initWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 clientConditionID:(id)a6 viewMethod:(id)a7 viewMode:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = TPSAnalyticsEventContentViewed;
  v18 = [(TPSAnalyticsEvent *)&v24 initWithDate:0];
  p_isa = &v18->super.super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_contentID, a3);
    objc_storeStrong(p_isa + 5, a4);
    objc_storeStrong(p_isa + 6, a5);
    objc_storeStrong(p_isa + 7, a6);
    objc_storeStrong(p_isa + 8, a7);
    objc_storeStrong(p_isa + 9, a8);
  }

  return p_isa;
}

- (id)_initWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 clientConditionID:(id)a6 widgetType:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = TPSAnalyticsEventContentViewed;
  v17 = [(TPSAnalyticsEvent *)&v21 initWithDate:0];
  p_isa = &v17->super.super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_contentID, a3);
    objc_storeStrong(p_isa + 6, a5);
    objc_storeStrong(p_isa + 5, a4);
    objc_storeStrong(p_isa + 7, a6);
    objc_storeStrong(p_isa + 10, a7);
  }

  return p_isa;
}

+ (id)eventWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 clientConditionID:(id)a6 widgetType:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] _initWithContentID:v16 collectionID:v15 correlationID:v14 clientConditionID:v13 widgetType:v12];

  return v17;
}

+ (id)eventWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 clientConditionID:(id)a6 viewMethod:(id)a7 viewMode:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[a1 alloc] _initWithContentID:v19 collectionID:v18 correlationID:v17 clientConditionID:v16 viewMethod:v15 viewMode:v14];

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventContentViewed;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_contentID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_collectionID forKey:@"collection_ID"];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [v4 encodeObject:self->_clientConditionID forKey:@"client_condition"];
  [v4 encodeObject:self->_viewMethod forKey:@"view_src"];
  [v4 encodeObject:self->_viewMode forKey:@"mode"];
  [v4 encodeObject:_appReferrer forKey:@"referrer"];
}

- (id)eventName
{
  v2 = [(TPSAnalyticsEventContentViewed *)self isWidget];
  v3 = @"content_viewed";
  if (v2)
  {
    v3 = @"content_viewed_in_widget";
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.tips", v3];

  return v4;
}

- (void)log
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  _lastContentViewedRef = v3;
  v4.receiver = self;
  v4.super_class = TPSAnalyticsEventContentViewed;
  [(TPSAnalyticsEvent *)&v4 log];
}

+ (void)incrementSessionViewNumberForKey:(id)a3
{
  v3 = a3;
  v5 = [TPSAnalyticsPersistenceController persistedObjectForKey:v3];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
  [TPSAnalyticsPersistenceController persistObject:v4 forKey:v3];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_contentID forKeyedSubscript:@"tip_ID"];
  [v3 setObject:self->_collectionID forKeyedSubscript:@"collection_ID"];
  [v3 setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [v3 setObject:self->_clientConditionID forKeyedSubscript:@"client_condition"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v4 forKeyedSubscript:@"u65_flag"];

  if ([(TPSAnalyticsEventContentViewed *)self isWidget])
  {
    v5 = @"widget_type";
    v6 = &OBJC_IVAR___TPSAnalyticsEventContentViewed__widgetType;
  }

  else
  {
    [v3 setObject:self->_viewMethod forKeyedSubscript:@"view_src"];
    v5 = @"mode";
    v6 = &OBJC_IVAR___TPSAnalyticsEventContentViewed__viewMode;
  }

  [v3 setObject:*(&self->super.super.isa + *v6) forKeyedSubscript:v5];
  if (_appReferrer)
  {
    [v3 setObject:_appReferrer forKeyedSubscript:@"referrer"];
  }

  return v3;
}

@end