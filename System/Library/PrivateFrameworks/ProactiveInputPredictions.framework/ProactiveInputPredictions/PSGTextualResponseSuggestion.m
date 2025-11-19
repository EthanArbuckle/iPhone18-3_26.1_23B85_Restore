@interface PSGTextualResponseSuggestion
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTextualSuggestion:(id)a3;
- (PSGTextualResponseSuggestion)initWithCoder:(id)a3;
- (PSGTextualResponseSuggestion)initWithText:(id)a3 category:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSGTextualResponseSuggestion

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<PSGTextualResponseSuggestion txt:%@ cat:%@>", self->_responseText, self->_responseCategory];

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGTextualResponseSuggestion *)self isEqualToTextualSuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToTextualSuggestion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = self->_responseText;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v9 == v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(NSString *)self->_responseText copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSString *)self->_responseCategory copyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  responseText = self->_responseText;
  v5 = a3;
  [v5 encodeObject:responseText forKey:@"txt"];
  [v5 encodeObject:self->_responseCategory forKey:@"cat"];
}

- (PSGTextualResponseSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"txt"];
  v7 = [v4 decodeObjectOfClass:v5 forKey:@"cat"];

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
    v9 = 0;
  }

  else
  {
    self = [(PSGTextualResponseSuggestion *)self initWithText:v6 category:v7];
    v9 = self;
  }

  return v9;
}

- (PSGTextualResponseSuggestion)initWithText:(id)a3 category:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PSGTextualResponseSuggestion;
  v9 = [(PSGTextualResponseSuggestion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_responseText, a3);
    objc_storeStrong(&v10->_responseCategory, a4);
  }

  return v10;
}

@end