@interface REAttributedTextContentProvider
+ (id)textContentProviderWithAttributedText:(id)a3;
- (BOOL)isEqual:(id)a3;
- (REAttributedTextContentProvider)initWithAttributedText:(id)a3;
- (REAttributedTextContentProvider)initWithCoder:(id)a3;
- (id)contentEncodedString;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation REAttributedTextContentProvider

+ (id)textContentProviderWithAttributedText:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAttributedText:v4];

  return v5;
}

- (REAttributedTextContentProvider)initWithAttributedText:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REAttributedTextContentProvider;
  v5 = [(REAttributedTextContentProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v6;
    if (!v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_283B97458];
    }

    objc_storeStrong(&v5->_text, v7);
    if (!v6)
    {
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  text = self->_text;

  return [v4 initWithAttributedText:text];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 text];
    if (v6 == self->_text)
    {
      v8 = 1;
    }

    else
    {
      v7 = [v5 text];
      v8 = [v7 isEqualToAttributedString:self->_text];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (REAttributedTextContentProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];

  v6 = [(REAttributedTextContentProvider *)self initWithAttributedText:v5];
  return v6;
}

- (id)contentEncodedString
{
  v2 = [(REAttributedTextContentProvider *)self text];
  v3 = [v2 contentEncodedString];

  return v3;
}

@end