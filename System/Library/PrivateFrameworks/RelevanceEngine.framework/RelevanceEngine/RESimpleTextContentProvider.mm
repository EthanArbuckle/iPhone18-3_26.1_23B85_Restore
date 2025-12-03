@interface RESimpleTextContentProvider
+ (id)textContentProviderWithText:(id)text;
- (BOOL)isEqual:(id)equal;
- (RESimpleTextContentProvider)initWithCoder:(id)coder;
- (RESimpleTextContentProvider)initWithText:(id)text;
- (id)attributedStringRepresentation;
- (id)contentEncodedString;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RESimpleTextContentProvider

+ (id)textContentProviderWithText:(id)text
{
  textCopy = text;
  v5 = [[self alloc] initWithText:textCopy];

  return v5;
}

- (RESimpleTextContentProvider)initWithText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = RESimpleTextContentProvider;
  v5 = [(RESimpleTextContentProvider *)&v9 init];
  if (v5)
  {
    v6 = [textCopy copy];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  text = self->_text;

  return [v4 initWithText:text];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [equalCopy text];
    v6 = text;
    if (text == self->_text)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSString *)text isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (RESimpleTextContentProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];

  v6 = [(RESimpleTextContentProvider *)self initWithText:v5];
  return v6;
}

- (id)contentEncodedString
{
  text = [(RESimpleTextContentProvider *)self text];
  contentEncodedString = [text contentEncodedString];

  return contentEncodedString;
}

@end