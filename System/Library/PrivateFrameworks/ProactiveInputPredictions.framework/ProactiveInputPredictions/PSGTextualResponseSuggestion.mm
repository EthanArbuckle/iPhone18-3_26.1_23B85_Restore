@interface PSGTextualResponseSuggestion
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTextualSuggestion:(id)suggestion;
- (PSGTextualResponseSuggestion)initWithCoder:(id)coder;
- (PSGTextualResponseSuggestion)initWithText:(id)text category:(id)category;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSGTextualResponseSuggestion

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<PSGTextualResponseSuggestion txt:%@ cat:%@>", self->_responseText, self->_responseCategory];

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGTextualResponseSuggestion *)self isEqualToTextualSuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToTextualSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (!suggestionCopy)
  {
    goto LABEL_4;
  }

  v5 = self->_responseText;
  v6 = v5;
  if (v5 == suggestionCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_10;
    }
  }

  v9 = self->_responseCategory;
  v10 = v9;
  if (v9 == suggestionCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSString *)v9 isEqual:?];
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
    v6 = [(NSString *)self->_responseText copyWithZone:zone];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSString *)self->_responseCategory copyWithZone:zone];
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  responseText = self->_responseText;
  coderCopy = coder;
  [coderCopy encodeObject:responseText forKey:@"txt"];
  [coderCopy encodeObject:self->_responseCategory forKey:@"cat"];
}

- (PSGTextualResponseSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"txt"];
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:@"cat"];

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PSGTextualResponseSuggestion *)self initWithText:v6 category:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (PSGTextualResponseSuggestion)initWithText:(id)text category:(id)category
{
  textCopy = text;
  categoryCopy = category;
  v12.receiver = self;
  v12.super_class = PSGTextualResponseSuggestion;
  v9 = [(PSGTextualResponseSuggestion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_responseText, text);
    objc_storeStrong(&v10->_responseCategory, category);
  }

  return v10;
}

@end