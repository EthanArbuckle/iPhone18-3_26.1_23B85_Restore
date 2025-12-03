@interface REAttributedTextContentProvider
+ (id)textContentProviderWithAttributedText:(id)text;
- (BOOL)isEqual:(id)equal;
- (REAttributedTextContentProvider)initWithAttributedText:(id)text;
- (REAttributedTextContentProvider)initWithCoder:(id)coder;
- (id)contentEncodedString;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation REAttributedTextContentProvider

+ (id)textContentProviderWithAttributedText:(id)text
{
  textCopy = text;
  v5 = [[self alloc] initWithAttributedText:textCopy];

  return v5;
}

- (REAttributedTextContentProvider)initWithAttributedText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = REAttributedTextContentProvider;
  v5 = [(REAttributedTextContentProvider *)&v9 init];
  if (v5)
  {
    v6 = [textCopy copy];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  text = self->_text;

  return [v4 initWithAttributedText:text];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    text = [v5 text];
    if (text == self->_text)
    {
      v8 = 1;
    }

    else
    {
      text2 = [v5 text];
      v8 = [text2 isEqualToAttributedString:self->_text];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (REAttributedTextContentProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];

  v6 = [(REAttributedTextContentProvider *)self initWithAttributedText:v5];
  return v6;
}

- (id)contentEncodedString
{
  text = [(REAttributedTextContentProvider *)self text];
  contentEncodedString = [text contentEncodedString];

  return contentEncodedString;
}

@end