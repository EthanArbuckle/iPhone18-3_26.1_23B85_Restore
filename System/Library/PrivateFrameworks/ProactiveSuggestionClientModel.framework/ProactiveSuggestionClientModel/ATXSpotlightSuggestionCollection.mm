@interface ATXSpotlightSuggestionCollection
- (ATXSpotlightSuggestionCollection)initWithCoder:(id)coder;
- (ATXSpotlightSuggestionCollection)initWithProto:(id)proto;
- (ATXSpotlightSuggestionCollection)initWithProtoData:(id)data;
- (ATXSpotlightSuggestionCollection)initWithSuggestions:(id)suggestions contextTitle:(id)title sectionIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXSpotlightSuggestionCollection:(id)collection;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSpotlightSuggestionCollection

- (ATXSpotlightSuggestionCollection)initWithSuggestions:(id)suggestions contextTitle:(id)title sectionIdentifier:(id)identifier
{
  suggestionsCopy = suggestions;
  titleCopy = title;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = ATXSpotlightSuggestionCollection;
  v11 = [(ATXSpotlightSuggestionCollection *)&v19 init];
  if (v11)
  {
    v12 = [suggestionsCopy copy];
    suggestions = v11->_suggestions;
    v11->_suggestions = v12;

    v14 = [titleCopy copy];
    contextTitle = v11->_contextTitle;
    v11->_contextTitle = v14;

    v16 = [identifierCopy copy];
    sectionIdentifier = v11->_sectionIdentifier;
    v11->_sectionIdentifier = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSpotlightSuggestionCollection *)self isEqualToATXSpotlightSuggestionCollection:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSpotlightSuggestionCollection:(id)collection
{
  collectionCopy = collection;
  v5 = self->_contextTitle;
  v6 = v5;
  if (v5 == collectionCopy[1])
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
  if (v8 == collectionCopy[3])
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
  if (v12 == collectionCopy[2])
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXSpotlightSuggestionCollection *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXSpotlightSuggestionCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSpotlightSuggestionCollection *)self initWithProtoData:v5];
  return v6;
}

- (id)encodeAsProto
{
  proto = [(ATXSpotlightSuggestionCollection *)self proto];
  data = [proto data];

  return data;
}

- (ATXSpotlightSuggestionCollection)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
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

  v5 = protoCopy;
  contextTitle = [v5 contextTitle];
  suggestions = [v5 suggestions];
  v8 = [suggestions _pas_mappedArrayWithTransform:&__block_literal_global_16];

  sectionIdentifier = [v5 sectionIdentifier];

  self = [(ATXSpotlightSuggestionCollection *)self initWithSuggestions:v8 contextTitle:contextTitle sectionIdentifier:sectionIdentifier];
  selfCopy = self;
LABEL_8:

  return selfCopy;
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

- (ATXSpotlightSuggestionCollection)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBSuggestionCollection alloc] initWithData:dataCopy];

    self = [(ATXSpotlightSuggestionCollection *)self initWithProto:v5];
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
  [v3 setContextTitle:self->_contextTitle];
  [v3 setSectionIdentifier:self->_sectionIdentifier];
  v4 = [ATXProactiveSuggestion protoSuggestionsFromSuggestions:self->_suggestions];
  [v3 setSuggestions:v4];

  return v3;
}

@end