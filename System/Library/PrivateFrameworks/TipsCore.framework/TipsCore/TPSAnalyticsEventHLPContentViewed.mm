@interface TPSAnalyticsEventHLPContentViewed
+ (id)eventWithTopicID:(id)a3 topicTitle:(id)a4 source:(id)a5 interfaceStyle:(id)a6 fromTopicID:(id)a7 externalURLString:(id)a8;
- (TPSAnalyticsEventHLPContentViewed)initWithCoder:(id)a3;
- (id)_initWithTopicID:(id)a3 topicTitle:(id)a4 source:(id)a5 interfaceStyle:(id)a6 fromTopicID:(id)a7 externalURLString:(id)a8;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventHLPContentViewed

- (TPSAnalyticsEventHLPContentViewed)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TPSAnalyticsEventHLPContentViewed;
  v5 = [(TPSAnalyticsEvent *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topic_ID"];
    topicID = v5->_topicID;
    v5->_topicID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topic_title"];
    topicTitle = v5->_topicTitle;
    v5->_topicTitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"view_src"];
    source = v5->_source;
    v5->_source = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
    interfaceStyle = v5->_interfaceStyle;
    v5->_interfaceStyle = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"from_topic_ID"];
    fromTopicID = v5->_fromTopicID;
    v5->_fromTopicID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"external_link"];
    externalURLString = v5->_externalURLString;
    v5->_externalURLString = v16;
  }

  return v5;
}

- (id)_initWithTopicID:(id)a3 topicTitle:(id)a4 source:(id)a5 interfaceStyle:(id)a6 fromTopicID:(id)a7 externalURLString:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v28.receiver = self;
  v28.super_class = TPSAnalyticsEventHLPContentViewed;
  v17 = [(TPSAnalyticsEvent *)&v28 initWithDate:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_topicID, a3);
    objc_storeStrong(&v18->_topicTitle, a4);
    objc_storeStrong(&v18->_source, a5);
    objc_storeStrong(&v18->_interfaceStyle, a6);
    v19 = [(TPSAnalyticsEventHLPContentViewed *)v18 fromTopicID];
    v20 = [v19 isEqualToString:&stru_1F3F2F4B8];

    if ((v20 & 1) == 0)
    {
      v21 = [(TPSAnalyticsEventHLPContentViewed *)v18 fromTopicID];
      fromTopicID = v18->_fromTopicID;
      v18->_fromTopicID = v21;
    }

    v23 = [(TPSAnalyticsEventHLPContentViewed *)v18 externalURLString];
    v24 = [v23 isEqualToString:&stru_1F3F2F4B8];

    if ((v24 & 1) == 0)
    {
      v25 = [(TPSAnalyticsEventHLPContentViewed *)v18 externalURLString];
      externalURLString = v18->_externalURLString;
      v18->_externalURLString = v25;
    }
  }

  return v18;
}

+ (id)eventWithTopicID:(id)a3 topicTitle:(id)a4 source:(id)a5 interfaceStyle:(id)a6 fromTopicID:(id)a7 externalURLString:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[a1 alloc] _initWithTopicID:v19 topicTitle:v18 source:v17 interfaceStyle:v16 fromTopicID:v15 externalURLString:v14];

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventHLPContentViewed;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_topicID forKey:{@"topic_ID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_topicTitle forKey:@"topic_title"];
  [v4 encodeObject:self->_source forKey:@"view_src"];
  [v4 encodeObject:self->_interfaceStyle forKey:@"mode"];
  [v4 encodeObject:self->_fromTopicID forKey:@"from_topic_ID"];
  [v4 encodeObject:self->_externalURLString forKey:@"external_link"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(TPSAnalyticsEventHLPContentViewed *)self topicID];
  [v3 setObject:v4 forKeyedSubscript:@"topic_ID"];

  v5 = [(TPSAnalyticsEventHLPContentViewed *)self topicTitle];
  [v3 setObject:v5 forKeyedSubscript:@"topic_title"];

  v6 = [(TPSAnalyticsEventHLPContentViewed *)self source];
  [v3 setObject:v6 forKeyedSubscript:@"view_src"];

  v7 = [(TPSAnalyticsEventHLPContentViewed *)self interfaceStyle];
  [v3 setObject:v7 forKeyedSubscript:@"mode"];

  v8 = [(TPSAnalyticsEventHLPContentViewed *)self fromTopicID];
  [v3 setObject:v8 forKeyedSubscript:@"from_topic_ID"];

  v9 = [(TPSAnalyticsEventHLPContentViewed *)self externalURLString];
  [v3 setObject:v9 forKeyedSubscript:@"external_link"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v10 forKeyedSubscript:@"u65_flag"];

  return v3;
}

@end