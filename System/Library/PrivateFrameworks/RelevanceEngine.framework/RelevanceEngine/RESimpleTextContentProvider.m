@interface RESimpleTextContentProvider
+ (id)textContentProviderWithText:(id)a3;
- (BOOL)isEqual:(id)a3;
- (RESimpleTextContentProvider)initWithCoder:(id)a3;
- (RESimpleTextContentProvider)initWithText:(id)a3;
- (id)attributedStringRepresentation;
- (id)contentEncodedString;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RESimpleTextContentProvider

+ (id)textContentProviderWithText:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithText:v4];

  return v5;
}

- (RESimpleTextContentProvider)initWithText:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RESimpleTextContentProvider;
  v5 = [(RESimpleTextContentProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    text = v5->_text;
    v5->_text = v6;
  }

  return v5;
}

- (id)attributedStringRepresentation
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  if (self->_text)
  {
    text = self->_text;
  }

  else
  {
    text = &stru_283B97458;
  }

  v5 = [v3 initWithString:text];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  text = self->_text;

  return [v4 initWithText:text];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 text];
    v6 = v5;
    if (v5 == self->_text)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSString *)v5 isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (RESimpleTextContentProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];

  v6 = [(RESimpleTextContentProvider *)self initWithText:v5];
  return v6;
}

- (id)contentEncodedString
{
  v2 = [(RESimpleTextContentProvider *)self text];
  v3 = [v2 contentEncodedString];

  return v3;
}

@end