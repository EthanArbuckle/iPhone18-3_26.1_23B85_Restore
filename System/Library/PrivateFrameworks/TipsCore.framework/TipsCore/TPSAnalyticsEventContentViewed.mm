@interface TPSAnalyticsEventContentViewed
+ (BOOL)updateSessionViewNumber;
+ (id)eventWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID clientConditionID:(id)conditionID viewMethod:(id)method viewMode:(id)mode;
+ (id)eventWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID clientConditionID:(id)conditionID widgetType:(id)type;
+ (void)incrementSessionViewNumberForKey:(id)key;
+ (void)resetSessionViewNumber;
- (TPSAnalyticsEventContentViewed)initWithCoder:(id)coder;
- (id)_initWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID clientConditionID:(id)conditionID viewMethod:(id)method viewMode:(id)mode;
- (id)_initWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID clientConditionID:(id)conditionID widgetType:(id)type;
- (id)eventName;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
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
    [self resetSessionViewNumber];
  }

  return v4 > 300.0;
}

- (TPSAnalyticsEventContentViewed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = TPSAnalyticsEventContentViewed;
  v5 = [(TPSAnalyticsEvent *)&v21 initWithCoder:coderCopy];
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

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"view_src"];
    viewMethod = v5->_viewMethod;
    v5->_viewMethod = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
    viewMode = v5->_viewMode;
    v5->_viewMode = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referrer"];
    v19 = _appReferrer;
    _appReferrer = v18;
  }

  return v5;
}

- (id)_initWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID clientConditionID:(id)conditionID viewMethod:(id)method viewMode:(id)mode
{
  dCopy = d;
  iDCopy = iD;
  correlationIDCopy = correlationID;
  conditionIDCopy = conditionID;
  methodCopy = method;
  modeCopy = mode;
  v24.receiver = self;
  v24.super_class = TPSAnalyticsEventContentViewed;
  v18 = [(TPSAnalyticsEvent *)&v24 initWithDate:0];
  p_isa = &v18->super.super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_contentID, d);
    objc_storeStrong(p_isa + 5, iD);
    objc_storeStrong(p_isa + 6, correlationID);
    objc_storeStrong(p_isa + 7, conditionID);
    objc_storeStrong(p_isa + 8, method);
    objc_storeStrong(p_isa + 9, mode);
  }

  return p_isa;
}

- (id)_initWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID clientConditionID:(id)conditionID widgetType:(id)type
{
  dCopy = d;
  iDCopy = iD;
  correlationIDCopy = correlationID;
  conditionIDCopy = conditionID;
  typeCopy = type;
  v21.receiver = self;
  v21.super_class = TPSAnalyticsEventContentViewed;
  v17 = [(TPSAnalyticsEvent *)&v21 initWithDate:0];
  p_isa = &v17->super.super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_contentID, d);
    objc_storeStrong(p_isa + 6, correlationID);
    objc_storeStrong(p_isa + 5, iD);
    objc_storeStrong(p_isa + 7, conditionID);
    objc_storeStrong(p_isa + 10, type);
  }

  return p_isa;
}

+ (id)eventWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID clientConditionID:(id)conditionID widgetType:(id)type
{
  typeCopy = type;
  conditionIDCopy = conditionID;
  correlationIDCopy = correlationID;
  iDCopy = iD;
  dCopy = d;
  v17 = [[self alloc] _initWithContentID:dCopy collectionID:iDCopy correlationID:correlationIDCopy clientConditionID:conditionIDCopy widgetType:typeCopy];

  return v17;
}

+ (id)eventWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID clientConditionID:(id)conditionID viewMethod:(id)method viewMode:(id)mode
{
  modeCopy = mode;
  methodCopy = method;
  conditionIDCopy = conditionID;
  correlationIDCopy = correlationID;
  iDCopy = iD;
  dCopy = d;
  v20 = [[self alloc] _initWithContentID:dCopy collectionID:iDCopy correlationID:correlationIDCopy clientConditionID:conditionIDCopy viewMethod:methodCopy viewMode:modeCopy];

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventContentViewed;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_contentID forKey:{@"tip_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_collectionID forKey:@"collection_ID"];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [coderCopy encodeObject:self->_clientConditionID forKey:@"client_condition"];
  [coderCopy encodeObject:self->_viewMethod forKey:@"view_src"];
  [coderCopy encodeObject:self->_viewMode forKey:@"mode"];
  [coderCopy encodeObject:_appReferrer forKey:@"referrer"];
}

- (id)eventName
{
  isWidget = [(TPSAnalyticsEventContentViewed *)self isWidget];
  v3 = @"content_viewed";
  if (isWidget)
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

+ (void)incrementSessionViewNumberForKey:(id)key
{
  keyCopy = key;
  v5 = [TPSAnalyticsPersistenceController persistedObjectForKey:keyCopy];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
  [TPSAnalyticsPersistenceController persistObject:v4 forKey:keyCopy];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_contentID forKeyedSubscript:@"tip_ID"];
  [dictionary setObject:self->_collectionID forKeyedSubscript:@"collection_ID"];
  [dictionary setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [dictionary setObject:self->_clientConditionID forKeyedSubscript:@"client_condition"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v4 forKeyedSubscript:@"u65_flag"];

  if ([(TPSAnalyticsEventContentViewed *)self isWidget])
  {
    v5 = @"widget_type";
    v6 = &OBJC_IVAR___TPSAnalyticsEventContentViewed__widgetType;
  }

  else
  {
    [dictionary setObject:self->_viewMethod forKeyedSubscript:@"view_src"];
    v5 = @"mode";
    v6 = &OBJC_IVAR___TPSAnalyticsEventContentViewed__viewMode;
  }

  [dictionary setObject:*(&self->super.super.isa + *v6) forKeyedSubscript:v5];
  if (_appReferrer)
  {
    [dictionary setObject:_appReferrer forKeyedSubscript:@"referrer"];
  }

  return dictionary;
}

@end