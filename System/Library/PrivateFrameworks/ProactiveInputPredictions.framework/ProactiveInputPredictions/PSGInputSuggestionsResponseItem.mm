@interface PSGInputSuggestionsResponseItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItem:(id)item;
- (PSGInputSuggestionsResponseItem)initWithCoder:(id)coder;
- (PSGInputSuggestionsResponseItem)initWithTextualResponseSuggestion:(id)suggestion structuredInfoSuggestion:(id)infoSuggestion;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)predictedValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSGInputSuggestionsResponseItem

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<PSGInputSuggestionsResponseItem trs:%@ sis:%@>", self->_textualResponseSuggestion, self->_structuredInfoSuggestion];

  return v2;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGInputSuggestionsResponseItem *)self isEqualToItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    goto LABEL_4;
  }

  v5 = self->_textualResponseSuggestion;
  v6 = v5;
  if (v5 == itemCopy[1])
  {
  }

  else
  {
    v7 = [(PSGTextualResponseSuggestion *)v5 isEqual:?];

    if (!v7)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_10;
    }
  }

  v9 = self->_structuredInfoSuggestion;
  v10 = v9;
  if (v9 == itemCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(PSGStructuredInfoSuggestion *)v9 isEqual:?];
  }

LABEL_10:
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(PSGTextualResponseSuggestion *)self->_textualResponseSuggestion copyWithZone:zone];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(PSGStructuredInfoSuggestion *)self->_structuredInfoSuggestion copyWithZone:zone];
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  textualResponseSuggestion = self->_textualResponseSuggestion;
  coderCopy = coder;
  [coderCopy encodeObject:textualResponseSuggestion forKey:@"trs"];
  [coderCopy encodeObject:self->_structuredInfoSuggestion forKey:@"sis"];
}

- (PSGInputSuggestionsResponseItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trs"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sis"];

  v7 = [(PSGInputSuggestionsResponseItem *)self initWithTextualResponseSuggestion:v5 structuredInfoSuggestion:v6];
  return v7;
}

- (id)predictedValue
{
  textualResponseSuggestion = self->_textualResponseSuggestion;
  if (textualResponseSuggestion)
  {
    responseText = [(PSGTextualResponseSuggestion *)textualResponseSuggestion responseText];
  }

  else
  {
    structuredInfoSuggestion = self->_structuredInfoSuggestion;
    if (structuredInfoSuggestion)
    {
      responseText = [(PSGStructuredInfoSuggestion *)structuredInfoSuggestion predictedValue];
    }

    else
    {
      responseText = &stru_287343650;
    }
  }

  return responseText;
}

- (PSGInputSuggestionsResponseItem)initWithTextualResponseSuggestion:(id)suggestion structuredInfoSuggestion:(id)infoSuggestion
{
  suggestionCopy = suggestion;
  infoSuggestionCopy = infoSuggestion;
  v12.receiver = self;
  v12.super_class = PSGInputSuggestionsResponseItem;
  v9 = [(PSGInputSuggestionsResponseItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textualResponseSuggestion, suggestion);
    objc_storeStrong(&v10->_structuredInfoSuggestion, infoSuggestion);
  }

  return v10;
}

@end