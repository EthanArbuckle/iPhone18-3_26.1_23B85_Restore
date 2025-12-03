@interface ATXSpotlightUIEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)stringForATXSpotlightUIEventType:(int64_t)type;
- (ATXSpotlightUIEvent)initWithProto:(id)proto;
- (ATXSpotlightUIEvent)initWithProtoData:(id)data;
- (ATXSpotlightUIEvent)initWithType:(int64_t)type suggestionUniqueId:(id)id suggestionType:(id)suggestionType suggestionSubtype:(id)subtype suggestionContext:(id)context;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDictionary;
- (id)proto;
@end

@implementation ATXSpotlightUIEvent

- (ATXSpotlightUIEvent)initWithType:(int64_t)type suggestionUniqueId:(id)id suggestionType:(id)suggestionType suggestionSubtype:(id)subtype suggestionContext:(id)context
{
  idCopy = id;
  suggestionTypeCopy = suggestionType;
  subtypeCopy = subtype;
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = ATXSpotlightUIEvent;
  v16 = [(ATXSpotlightUIEvent *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_eventType = type;
    v18 = [idCopy copy];
    suggestionUniqueId = v17->_suggestionUniqueId;
    v17->_suggestionUniqueId = v18;

    v20 = [suggestionTypeCopy copy];
    suggestionType = v17->_suggestionType;
    v17->_suggestionType = v20;

    v22 = [subtypeCopy copy];
    suggestionSubtype = v17->_suggestionSubtype;
    v17->_suggestionSubtype = v22;

    v24 = [contextCopy copy];
    suggestionContext = v17->_suggestionContext;
    v17->_suggestionContext = v24;
  }

  return v17;
}

+ (id)stringForATXSpotlightUIEventType:(int64_t)type
{
  if ((type - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E86A4D48[type - 1];
  }
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)jsonDictionary
{
  v16[5] = *MEMORY[0x1E69E9840];
  v15[0] = @"eventType";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ATXSpotlightUIEvent eventType](self, "eventType")}];
  v16[0] = v3;
  v15[1] = @"suggestionUniqueId";
  suggestionUniqueId = [(ATXSpotlightUIEvent *)self suggestionUniqueId];
  null = suggestionUniqueId;
  if (!suggestionUniqueId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null;
  v15[2] = @"suggestionType";
  suggestionType = [(ATXSpotlightUIEvent *)self suggestionType];
  null2 = suggestionType;
  if (!suggestionType)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null2;
  v15[3] = @"suggestionSubtype";
  suggestionSubtype = [(ATXSpotlightUIEvent *)self suggestionSubtype];
  null3 = suggestionSubtype;
  if (!suggestionSubtype)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null3;
  v15[4] = @"suggestionContext";
  suggestionContext = [(ATXSpotlightUIEvent *)self suggestionContext];
  null4 = suggestionContext;
  if (!suggestionContext)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[4] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  if (!suggestionContext)
  {
  }

  if (!suggestionSubtype)
  {
  }

  if (!suggestionType)
  {
  }

  if (!suggestionUniqueId)
  {
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDictionary = [(ATXSpotlightUIEvent *)self jsonDictionary];
  v4 = [v2 dataWithJSONObject:jsonDictionary options:1 error:0];

  return v4;
}

- (ATXSpotlightUIEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBSpotlightUIEvent alloc] initWithData:dataCopy];

    self = [(ATXSpotlightUIEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXSpotlightUIEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXSpotlightUIEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = protoCopy;
    eventType = [v5 eventType];
    suggestionUniqueId = [v5 suggestionUniqueId];
    suggestionType = [v5 suggestionType];
    suggestionSubtype = [v5 suggestionSubtype];
    suggestionContext = [v5 suggestionContext];

    self = [(ATXSpotlightUIEvent *)self initWithType:eventType suggestionUniqueId:suggestionUniqueId suggestionType:suggestionType suggestionSubtype:suggestionSubtype suggestionContext:suggestionContext];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  suggestionUniqueId = [(ATXSpotlightUIEvent *)self suggestionUniqueId];
  [v3 setSuggestionUniqueId:suggestionUniqueId];

  suggestionType = [(ATXSpotlightUIEvent *)self suggestionType];
  [v3 setSuggestionType:suggestionType];

  suggestionSubtype = [(ATXSpotlightUIEvent *)self suggestionSubtype];
  [v3 setSuggestionSubtype:suggestionSubtype];

  suggestionContext = [(ATXSpotlightUIEvent *)self suggestionContext];
  [v3 setSuggestionContext:suggestionContext];

  [v3 setEventType:{-[ATXSpotlightUIEvent eventType](self, "eventType")}];

  return v3;
}

@end