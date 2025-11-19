@interface ATXSpotlightSuggestionCollection
- (ATXSpotlightSuggestionCollection)initWithCoder:(id)a3;
- (ATXSpotlightSuggestionCollection)initWithProto:(id)a3;
- (ATXSpotlightSuggestionCollection)initWithProtoData:(id)a3;
- (ATXSpotlightSuggestionCollection)initWithSuggestions:(id)a3 contextTitle:(id)a4 sectionIdentifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXSpotlightSuggestionCollection:(id)a3;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSpotlightSuggestionCollection

- (ATXSpotlightSuggestionCollection)initWithSuggestions:(id)a3 contextTitle:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ATXSpotlightSuggestionCollection;
  v11 = [(ATXSpotlightSuggestionCollection *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    suggestions = v11->_suggestions;
    v11->_suggestions = v12;

    v14 = [v9 copy];
    contextTitle = v11->_contextTitle;
    v11->_contextTitle = v14;

    v16 = [v10 copy];
    sectionIdentifier = v11->_sectionIdentifier;
    v11->_sectionIdentifier = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSpotlightSuggestionCollection *)self isEqualToATXSpotlightSuggestionCollection:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSpotlightSuggestionCollection:(id)a3
{
  v4 = a3;
  v5 = self->_contextTitle;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = self->_suggestions;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(NSArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
LABEL_7:
      v11 = 0;
      goto LABEL_13;
    }
  }

  v12 = self->_sectionIdentifier;
  v13 = v12;
  if (v12 == v4[2])
  {
    v11 = 1;
  }

  else
  {
    v11 = [(NSString *)v12 isEqual:?];
  }

LABEL_13:
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXSpotlightSuggestionCollection *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXSpotlightSuggestionCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSpotlightSuggestionCollection *)self initWithProtoData:v5];
  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXSpotlightSuggestionCollection *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXSpotlightSuggestionCollection)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(ATXLightweightClientModelCacheUpdate *)self initWithProto:v11];
    }

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v5 contextTitle];
  v7 = [v5 suggestions];
  v8 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_16];

  v9 = [v5 sectionIdentifier];

  self = [(ATXSpotlightSuggestionCollection *)self initWithSuggestions:v8 contextTitle:v6 sectionIdentifier:v9];
  v10 = self;
LABEL_8:

  return v10;
}

ATXProactiveSuggestion *__50__ATXSpotlightSuggestionCollection_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXProactiveSuggestion alloc] initWithProto:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __50__ATXSpotlightSuggestionCollection_initWithProto___block_invoke_cold_1(v5);
    }
  }

  return v3;
}

- (ATXSpotlightSuggestionCollection)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBSuggestionCollection alloc] initWithData:v4];

    self = [(ATXSpotlightSuggestionCollection *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setContextTitle:self->_contextTitle];
  [v3 setSectionIdentifier:self->_sectionIdentifier];
  v4 = [ATXProactiveSuggestion protoSuggestionsFromSuggestions:self->_suggestions];
  [v3 setSuggestions:v4];

  return v3;
}

@end