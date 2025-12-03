@interface TPSAnalyticsEventHLPContentViewed
+ (id)eventWithTopicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(id)style fromTopicID:(id)iD externalURLString:(id)string;
- (TPSAnalyticsEventHLPContentViewed)initWithCoder:(id)coder;
- (id)_initWithTopicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(id)style fromTopicID:(id)iD externalURLString:(id)string;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventHLPContentViewed

- (TPSAnalyticsEventHLPContentViewed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = TPSAnalyticsEventHLPContentViewed;
  v5 = [(TPSAnalyticsEvent *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topic_ID"];
    topicID = v5->_topicID;
    v5->_topicID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topic_title"];
    topicTitle = v5->_topicTitle;
    v5->_topicTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"view_src"];
    source = v5->_source;
    v5->_source = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
    interfaceStyle = v5->_interfaceStyle;
    v5->_interfaceStyle = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"from_topic_ID"];
    fromTopicID = v5->_fromTopicID;
    v5->_fromTopicID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"external_link"];
    externalURLString = v5->_externalURLString;
    v5->_externalURLString = v16;
  }

  return v5;
}

- (id)_initWithTopicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(id)style fromTopicID:(id)iD externalURLString:(id)string
{
  dCopy = d;
  titleCopy = title;
  sourceCopy = source;
  styleCopy = style;
  v28.receiver = self;
  v28.super_class = TPSAnalyticsEventHLPContentViewed;
  v17 = [(TPSAnalyticsEvent *)&v28 initWithDate:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_topicID, d);
    objc_storeStrong(&v18->_topicTitle, title);
    objc_storeStrong(&v18->_source, source);
    objc_storeStrong(&v18->_interfaceStyle, style);
    fromTopicID = [(TPSAnalyticsEventHLPContentViewed *)v18 fromTopicID];
    v20 = [fromTopicID isEqualToString:&stru_1F3F2F4B8];

    if ((v20 & 1) == 0)
    {
      fromTopicID2 = [(TPSAnalyticsEventHLPContentViewed *)v18 fromTopicID];
      fromTopicID = v18->_fromTopicID;
      v18->_fromTopicID = fromTopicID2;
    }

    externalURLString = [(TPSAnalyticsEventHLPContentViewed *)v18 externalURLString];
    v24 = [externalURLString isEqualToString:&stru_1F3F2F4B8];

    if ((v24 & 1) == 0)
    {
      externalURLString2 = [(TPSAnalyticsEventHLPContentViewed *)v18 externalURLString];
      externalURLString = v18->_externalURLString;
      v18->_externalURLString = externalURLString2;
    }
  }

  return v18;
}

+ (id)eventWithTopicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(id)style fromTopicID:(id)iD externalURLString:(id)string
{
  stringCopy = string;
  iDCopy = iD;
  styleCopy = style;
  sourceCopy = source;
  titleCopy = title;
  dCopy = d;
  v20 = [[self alloc] _initWithTopicID:dCopy topicTitle:titleCopy source:sourceCopy interfaceStyle:styleCopy fromTopicID:iDCopy externalURLString:stringCopy];

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventHLPContentViewed;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_topicID forKey:{@"topic_ID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_topicTitle forKey:@"topic_title"];
  [coderCopy encodeObject:self->_source forKey:@"view_src"];
  [coderCopy encodeObject:self->_interfaceStyle forKey:@"mode"];
  [coderCopy encodeObject:self->_fromTopicID forKey:@"from_topic_ID"];
  [coderCopy encodeObject:self->_externalURLString forKey:@"external_link"];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  topicID = [(TPSAnalyticsEventHLPContentViewed *)self topicID];
  [dictionary setObject:topicID forKeyedSubscript:@"topic_ID"];

  topicTitle = [(TPSAnalyticsEventHLPContentViewed *)self topicTitle];
  [dictionary setObject:topicTitle forKeyedSubscript:@"topic_title"];

  source = [(TPSAnalyticsEventHLPContentViewed *)self source];
  [dictionary setObject:source forKeyedSubscript:@"view_src"];

  interfaceStyle = [(TPSAnalyticsEventHLPContentViewed *)self interfaceStyle];
  [dictionary setObject:interfaceStyle forKeyedSubscript:@"mode"];

  fromTopicID = [(TPSAnalyticsEventHLPContentViewed *)self fromTopicID];
  [dictionary setObject:fromTopicID forKeyedSubscript:@"from_topic_ID"];

  externalURLString = [(TPSAnalyticsEventHLPContentViewed *)self externalURLString];
  [dictionary setObject:externalURLString forKeyedSubscript:@"external_link"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v10 forKeyedSubscript:@"u65_flag"];

  return dictionary;
}

@end