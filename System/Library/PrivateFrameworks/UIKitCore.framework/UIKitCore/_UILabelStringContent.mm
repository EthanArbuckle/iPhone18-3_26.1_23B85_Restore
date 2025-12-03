@interface _UILabelStringContent
- (BOOL)_isContentEqualToContent:(id)content;
- (BOOL)isEqualToAttributedString:(id)string;
- (_UILabelStringContent)contentWithAttributedString:(id)string;
- (_UILabelStringContent)contentWithString:(id)string;
- (_UILabelStringContent)initWithString:(id)string defaultAttributes:(id)attributes;
- (id)attributedString;
- (id)attributedStringContent;
- (id)contentByApplyingAttribute:(id)attribute value:(id)value toRange:(_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation _UILabelStringContent

- (id)attributedString
{
  if (self->_string)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_string attributes:self->super._defaultAttributes];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)attributedStringContent
{
  attributedString = [(_UILabelStringContent *)self attributedString];
  v4 = [(_UILabelStringContent *)self contentWithAttributedString:attributedString];

  return v4;
}

- (_UILabelStringContent)initWithString:(id)string defaultAttributes:(id)attributes
{
  stringCopy = string;
  if (stringCopy)
  {
    v14.receiver = self;
    v14.super_class = _UILabelStringContent;
    attributesCopy = attributes;
    v8 = [(_UILabelContent *)&v14 initWithDefaultAttributes:attributesCopy];

    if (v8)
    {
      v9 = [stringCopy copy];
      string = v8->_string;
      v8->_string = v9;

      *&v8->_flags = *&v8->_flags & 0xFE | _NSStringIsWidthVariant(stringCopy);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    attributesCopy2 = attributes;
    selfCopy = [[_UILabelContent alloc] initWithDefaultAttributes:attributesCopy2];
  }

  return selfCopy;
}

- (_UILabelStringContent)contentWithString:(id)string
{
  stringCopy = string;
  v5 = self->_string;
  v6 = stringCopy;
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_7;
  }

  if (v6 && v5)
  {
    v8 = [(NSString *)v5 isEqual:v6];

    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_7:
    selfCopy = self;
    goto LABEL_11;
  }

  if (v7)
  {
LABEL_9:
    selfCopy = [[_UILabelStringContent alloc] initWithString:v7 defaultAttributes:self->super._defaultAttributes];
    goto LABEL_11;
  }

  selfCopy = [[_UILabelContent alloc] initWithDefaultAttributes:self->super._defaultAttributes];
LABEL_11:
  v10 = selfCopy;

  return v10;
}

- (_UILabelStringContent)contentWithAttributedString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v5 = [[_UILabelAttributedStringContent alloc] initWithAttributedString:stringCopy defaultAttributes:self->super._defaultAttributes];
  }

  else
  {
    v5 = [[_UILabelContent alloc] initWithDefaultAttributes:self->super._defaultAttributes];
  }

  v6 = v5;

  return v6;
}

- (id)contentByApplyingAttribute:(id)attribute value:(id)value toRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributeCopy = attribute;
  valueCopy = value;
  v11 = valueCopy;
  if (attributeCopy && valueCopy && (v12 = [(_UILabelStringContent *)self length], v12 > location))
  {
    v13 = v12;
    if (location + length <= v12)
    {
      v14 = length;
    }

    else
    {
      v14 = v12 - location;
    }

    v22.receiver = self;
    v22.super_class = _UILabelStringContent;
    v15 = [(_UILabelContent *)&v22 contentByApplyingAttribute:attributeCopy value:v11 toRange:location, v14];
    v16 = v15;
    if (location || v14 != v13)
    {
      attributedString = [(_UILabelStringContent *)self attributedString];
      v19 = [attributedString mutableCopy];

      [v19 addAttribute:attributeCopy value:v11 range:{location, v14}];
      v17 = [v16 contentWithAttributedString:v19];
    }

    else
    {
      v17 = v15;
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = _UILabelStringContent;
    v17 = [(_UILabelContent *)&v21 contentByApplyingAttribute:attributeCopy value:v11 toRange:location, length];
  }

  return v17;
}

- (BOOL)isEqualToAttributedString:(id)string
{
  stringCopy = string;
  if (stringCopy || self->_string)
  {
    attributedString = [(_UILabelStringContent *)self attributedString];
    v6 = [attributedString isEqualToAttributedString:stringCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_isContentEqualToContent:(id)content
{
  contentCopy = content;
  if ([contentCopy isEqualToString:self->_string])
  {
    v7.receiver = self;
    v7.super_class = _UILabelStringContent;
    v5 = [(_UILabelContent *)&v7 _isContentEqualToContent:contentCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_string hash];
  v5.receiver = self;
  v5.super_class = _UILabelStringContent;
  return [(_UILabelContent *)&v5 hash]+ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UILabelStringContent alloc];
  string = self->_string;
  defaultAttributes = self->super._defaultAttributes;

  return [(_UILabelStringContent *)v4 initWithString:string defaultAttributes:defaultAttributes];
}

@end