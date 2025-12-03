@interface ATXProactiveSuggestionLayoutConfig
+ (id)layoutConfigurationsForLayoutOptions:(unint64_t)options;
- (ATXProactiveSuggestionLayoutConfig)initWithApplicableSuggestionLayout:(int64_t)layout;
- (ATXProactiveSuggestionLayoutConfig)initWithCoder:(id)coder;
- (ATXProactiveSuggestionLayoutConfig)initWithProto:(id)proto;
- (ATXProactiveSuggestionLayoutConfig)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXProactiveSuggestionLayoutConfig

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Layout type: %ld", self->_applicableLayoutType];

  return v2;
}

- (id)proto
{
  v3 = objc_opt_new();
  applicableLayoutType = self->_applicableLayoutType;
  if (applicableLayoutType >= 9)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %li)", self->_applicableLayoutType];
  }

  else
  {
    v5 = off_1E86A4A60[applicableLayoutType];
  }

  v6 = v5;
  if (([(__CFString *)v6 isEqualToString:@"Unknown"]& 1) != 0)
  {
    v7 = 0;
  }

  else if (([(__CFString *)v6 isEqualToString:@"_1Row1Column"]& 1) != 0)
  {
    v7 = 1;
  }

  else if (([(__CFString *)v6 isEqualToString:@"_1Row2Columns"]& 1) != 0)
  {
    v7 = 2;
  }

  else if (([(__CFString *)v6 isEqualToString:@"_2Rows2Columns"]& 1) != 0)
  {
    v7 = 3;
  }

  else if (([(__CFString *)v6 isEqualToString:@"_2Rows4Columns"]& 1) != 0)
  {
    v7 = 4;
  }

  else if (([(__CFString *)v6 isEqualToString:@"_1Row4Columns"]& 1) != 0)
  {
    v7 = 5;
  }

  else if (([(__CFString *)v6 isEqualToString:@"_4Rows4Columns"]& 1) != 0)
  {
    v7 = 6;
  }

  else if (([(__CFString *)v6 isEqualToString:@"_4Rows8Columns"]& 1) != 0)
  {
    v7 = 7;
  }

  else if ([(__CFString *)v6 isEqualToString:@"Max"])
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  [(ATXPBProactiveSuggestionLayoutConfig *)v3 setApplicableLayoutType:v7];

  return v3;
}

- (ATXProactiveSuggestionLayoutConfig)initWithApplicableSuggestionLayout:(int64_t)layout
{
  v5.receiver = self;
  v5.super_class = ATXProactiveSuggestionLayoutConfig;
  result = [(ATXProactiveSuggestionLayoutConfig *)&v5 init];
  if (result)
  {
    result->_applicableLayoutType = layout;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXProactiveSuggestionLayoutConfig allocWithZone:zone];
  applicableLayoutType = self->_applicableLayoutType;

  return [(ATXProactiveSuggestionLayoutConfig *)v4 initWithApplicableSuggestionLayout:applicableLayoutType];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ATXProactiveSuggestionLayoutConfig *)equalCopy applicableLayoutType]== self->_applicableLayoutType;
  }

  return v5;
}

+ (id)layoutConfigurationsForLayoutOptions:(unint64_t)options
{
  optionsCopy = options;
  v4 = objc_opt_new();
  if ((optionsCopy & 2) != 0)
  {
    v7 = [[ATXProactiveSuggestionLayoutConfig alloc] initWithApplicableSuggestionLayout:1];
    [v4 addObject:v7];

    if ((optionsCopy & 4) == 0)
    {
LABEL_3:
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((optionsCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [[ATXProactiveSuggestionLayoutConfig alloc] initWithApplicableSuggestionLayout:2];
  [v4 addObject:v8];

  if ((optionsCopy & 8) == 0)
  {
LABEL_4:
    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = [[ATXProactiveSuggestionLayoutConfig alloc] initWithApplicableSuggestionLayout:3];
  [v4 addObject:v9];

  if ((optionsCopy & 0x10) == 0)
  {
LABEL_5:
    if ((optionsCopy & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [[ATXProactiveSuggestionLayoutConfig alloc] initWithApplicableSuggestionLayout:4];
  [v4 addObject:v10];

  if ((optionsCopy & 0x20) == 0)
  {
LABEL_6:
    if ((optionsCopy & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [[ATXProactiveSuggestionLayoutConfig alloc] initWithApplicableSuggestionLayout:5];
  [v4 addObject:v11];

  if ((optionsCopy & 0x40) == 0)
  {
LABEL_7:
    if ((optionsCopy & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = [[ATXProactiveSuggestionLayoutConfig alloc] initWithApplicableSuggestionLayout:6];
  [v4 addObject:v12];

  if (optionsCopy < 0)
  {
LABEL_8:
    v5 = [[ATXProactiveSuggestionLayoutConfig alloc] initWithApplicableSuggestionLayout:7];
    [v4 addObject:v5];
  }

LABEL_9:

  return v4;
}

- (id)encodeAsProto
{
  proto = [(ATXProactiveSuggestionLayoutConfig *)self proto];
  data = [proto data];

  return data;
}

- (ATXProactiveSuggestionLayoutConfig)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBProactiveSuggestionLayoutConfig alloc] initWithData:dataCopy];

    self = [(ATXProactiveSuggestionLayoutConfig *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXProactiveSuggestionLayoutConfig)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXProactiveSuggestionUISpecification initWithProto:];
    }

    goto LABEL_8;
  }

  applicableLayoutType = [(ATXPBProactiveSuggestionLayoutConfig *)protoCopy applicableLayoutType];
  if (applicableLayoutType >= 9)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", applicableLayoutType];
  }

  else
  {
    v6 = off_1E86A4A60[applicableLayoutType];
  }

  v9 = v6;
  if (([(__CFString *)v9 isEqualToString:@"Unknown"]& 1) != 0)
  {
    v10 = 0;
  }

  else if (([(__CFString *)v9 isEqualToString:@"_1Row1Column"]& 1) != 0)
  {
    v10 = 1;
  }

  else if (([(__CFString *)v9 isEqualToString:@"_1Row2Columns"]& 1) != 0)
  {
    v10 = 2;
  }

  else if (([(__CFString *)v9 isEqualToString:@"_2Rows2Columns"]& 1) != 0)
  {
    v10 = 3;
  }

  else if (([(__CFString *)v9 isEqualToString:@"_2Rows4Columns"]& 1) != 0)
  {
    v10 = 4;
  }

  else if (([(__CFString *)v9 isEqualToString:@"_1Row4Columns"]& 1) != 0)
  {
    v10 = 5;
  }

  else if (([(__CFString *)v9 isEqualToString:@"_4Rows4Columns"]& 1) != 0)
  {
    v10 = 6;
  }

  else if (([(__CFString *)v9 isEqualToString:@"_4Rows8Columns"]& 1) != 0)
  {
    v10 = 7;
  }

  else if ([(__CFString *)v9 isEqualToString:@"Max"])
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  self = [(ATXProactiveSuggestionLayoutConfig *)self initWithApplicableSuggestionLayout:v10];
  selfCopy = self;
LABEL_30:

  return selfCopy;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!integer)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXProactiveSuggestionLayoutConfig *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXProactiveSuggestionLayoutConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXProactiveSuggestionLayoutConfig *)self initWithProtoData:v5];
  return v6;
}

@end