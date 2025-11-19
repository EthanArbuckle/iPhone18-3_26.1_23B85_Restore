@interface ATXSpotlightUIEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)stringForATXSpotlightUIEventType:(int64_t)a3;
- (ATXSpotlightUIEvent)initWithProto:(id)a3;
- (ATXSpotlightUIEvent)initWithProtoData:(id)a3;
- (ATXSpotlightUIEvent)initWithType:(int64_t)a3 suggestionUniqueId:(id)a4 suggestionType:(id)a5 suggestionSubtype:(id)a6 suggestionContext:(id)a7;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDictionary;
- (id)proto;
@end

@implementation ATXSpotlightUIEvent

- (ATXSpotlightUIEvent)initWithType:(int64_t)a3 suggestionUniqueId:(id)a4 suggestionType:(id)a5 suggestionSubtype:(id)a6 suggestionContext:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = ATXSpotlightUIEvent;
  v16 = [(ATXSpotlightUIEvent *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_eventType = a3;
    v18 = [v12 copy];
    suggestionUniqueId = v17->_suggestionUniqueId;
    v17->_suggestionUniqueId = v18;

    v20 = [v13 copy];
    suggestionType = v17->_suggestionType;
    v17->_suggestionType = v20;

    v22 = [v14 copy];
    suggestionSubtype = v17->_suggestionSubtype;
    v17->_suggestionSubtype = v22;

    v24 = [v15 copy];
    suggestionContext = v17->_suggestionContext;
    v17->_suggestionContext = v24;
  }

  return v17;
}

+ (id)stringForATXSpotlightUIEventType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E86A4D48[a3 - 1];
  }
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)jsonDictionary
{
  v16[5] = *MEMORY[0x1E69E9840];
  v15[0] = @"eventType";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ATXSpotlightUIEvent eventType](self, "eventType")}];
  v16[0] = v3;
  v15[1] = @"suggestionUniqueId";
  v4 = [(ATXSpotlightUIEvent *)self suggestionUniqueId];
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v5;
  v15[2] = @"suggestionType";
  v6 = [(ATXSpotlightUIEvent *)self suggestionType];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v7;
  v15[3] = @"suggestionSubtype";
  v8 = [(ATXSpotlightUIEvent *)self suggestionSubtype];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = v9;
  v15[4] = @"suggestionContext";
  v10 = [(ATXSpotlightUIEvent *)self suggestionContext];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[4] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v4)
  {
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXSpotlightUIEvent *)self jsonDictionary];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (ATXSpotlightUIEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBSpotlightUIEvent alloc] initWithData:v4];

    self = [(ATXSpotlightUIEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXSpotlightUIEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXSpotlightUIEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 eventType];
    v7 = [v5 suggestionUniqueId];
    v8 = [v5 suggestionType];
    v9 = [v5 suggestionSubtype];
    v10 = [v5 suggestionContext];

    self = [(ATXSpotlightUIEvent *)self initWithType:v6 suggestionUniqueId:v7 suggestionType:v8 suggestionSubtype:v9 suggestionContext:v10];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(ATXSpotlightUIEvent *)self suggestionUniqueId];
  [v3 setSuggestionUniqueId:v4];

  v5 = [(ATXSpotlightUIEvent *)self suggestionType];
  [v3 setSuggestionType:v5];

  v6 = [(ATXSpotlightUIEvent *)self suggestionSubtype];
  [v3 setSuggestionSubtype:v6];

  v7 = [(ATXSpotlightUIEvent *)self suggestionContext];
  [v3 setSuggestionContext:v7];

  [v3 setEventType:{-[ATXSpotlightUIEvent eventType](self, "eventType")}];

  return v3;
}

@end