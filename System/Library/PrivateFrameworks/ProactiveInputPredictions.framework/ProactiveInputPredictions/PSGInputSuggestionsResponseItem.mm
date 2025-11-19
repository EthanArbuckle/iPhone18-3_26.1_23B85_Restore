@interface PSGInputSuggestionsResponseItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItem:(id)a3;
- (PSGInputSuggestionsResponseItem)initWithCoder:(id)a3;
- (PSGInputSuggestionsResponseItem)initWithTextualResponseSuggestion:(id)a3 structuredInfoSuggestion:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)predictedValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSGInputSuggestionsResponseItem

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<PSGInputSuggestionsResponseItem trs:%@ sis:%@>", self->_textualResponseSuggestion, self->_structuredInfoSuggestion];

  return v2;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGInputSuggestionsResponseItem *)self isEqualToItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = self->_textualResponseSuggestion;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v9 == v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(PSGTextualResponseSuggestion *)self->_textualResponseSuggestion copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(PSGStructuredInfoSuggestion *)self->_structuredInfoSuggestion copyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  textualResponseSuggestion = self->_textualResponseSuggestion;
  v5 = a3;
  [v5 encodeObject:textualResponseSuggestion forKey:@"trs"];
  [v5 encodeObject:self->_structuredInfoSuggestion forKey:@"sis"];
}

- (PSGInputSuggestionsResponseItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trs"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sis"];

  v7 = [(PSGInputSuggestionsResponseItem *)self initWithTextualResponseSuggestion:v5 structuredInfoSuggestion:v6];
  return v7;
}

- (id)predictedValue
{
  textualResponseSuggestion = self->_textualResponseSuggestion;
  if (textualResponseSuggestion)
  {
    v4 = [(PSGTextualResponseSuggestion *)textualResponseSuggestion responseText];
  }

  else
  {
    structuredInfoSuggestion = self->_structuredInfoSuggestion;
    if (structuredInfoSuggestion)
    {
      v4 = [(PSGStructuredInfoSuggestion *)structuredInfoSuggestion predictedValue];
    }

    else
    {
      v4 = &stru_287343650;
    }
  }

  return v4;
}

- (PSGInputSuggestionsResponseItem)initWithTextualResponseSuggestion:(id)a3 structuredInfoSuggestion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PSGInputSuggestionsResponseItem;
  v9 = [(PSGInputSuggestionsResponseItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textualResponseSuggestion, a3);
    objc_storeStrong(&v10->_structuredInfoSuggestion, a4);
  }

  return v10;
}

@end