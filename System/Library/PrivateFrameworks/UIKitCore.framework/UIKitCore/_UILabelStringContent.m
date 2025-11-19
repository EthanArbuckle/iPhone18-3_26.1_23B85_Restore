@interface _UILabelStringContent
- (BOOL)_isContentEqualToContent:(id)a3;
- (BOOL)isEqualToAttributedString:(id)a3;
- (_UILabelStringContent)contentWithAttributedString:(id)a3;
- (_UILabelStringContent)contentWithString:(id)a3;
- (_UILabelStringContent)initWithString:(id)a3 defaultAttributes:(id)a4;
- (id)attributedString;
- (id)attributedStringContent;
- (id)contentByApplyingAttribute:(id)a3 value:(id)a4 toRange:(_NSRange)a5;
- (id)copyWithZone:(_NSZone *)a3;
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
  v3 = [(_UILabelStringContent *)self attributedString];
  v4 = [(_UILabelStringContent *)self contentWithAttributedString:v3];

  return v4;
}

- (_UILabelStringContent)initWithString:(id)a3 defaultAttributes:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v14.receiver = self;
    v14.super_class = _UILabelStringContent;
    v7 = a4;
    v8 = [(_UILabelContent *)&v14 initWithDefaultAttributes:v7];

    if (v8)
    {
      v9 = [v6 copy];
      string = v8->_string;
      v8->_string = v9;

      *&v8->_flags = *&v8->_flags & 0xFE | _NSStringIsWidthVariant(v6);
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v12 = a4;
    v11 = [[_UILabelContent alloc] initWithDefaultAttributes:v12];
  }

  return v11;
}

- (_UILabelStringContent)contentWithString:(id)a3
{
  v4 = a3;
  v5 = self->_string;
  v6 = v4;
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
    v9 = self;
    goto LABEL_11;
  }

  if (v7)
  {
LABEL_9:
    v9 = [[_UILabelStringContent alloc] initWithString:v7 defaultAttributes:self->super._defaultAttributes];
    goto LABEL_11;
  }

  v9 = [[_UILabelContent alloc] initWithDefaultAttributes:self->super._defaultAttributes];
LABEL_11:
  v10 = v9;

  return v10;
}

- (_UILabelStringContent)contentWithAttributedString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_UILabelAttributedStringContent alloc] initWithAttributedString:v4 defaultAttributes:self->super._defaultAttributes];
  }

  else
  {
    v5 = [[_UILabelContent alloc] initWithDefaultAttributes:self->super._defaultAttributes];
  }

  v6 = v5;

  return v6;
}

- (id)contentByApplyingAttribute:(id)a3 value:(id)a4 toRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9 && v10 && (v12 = [(_UILabelStringContent *)self length], v12 > location))
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
    v15 = [(_UILabelContent *)&v22 contentByApplyingAttribute:v9 value:v11 toRange:location, v14];
    v16 = v15;
    if (location || v14 != v13)
    {
      v18 = [(_UILabelStringContent *)self attributedString];
      v19 = [v18 mutableCopy];

      [v19 addAttribute:v9 value:v11 range:{location, v14}];
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
    v17 = [(_UILabelContent *)&v21 contentByApplyingAttribute:v9 value:v11 toRange:location, length];
  }

  return v17;
}

- (BOOL)isEqualToAttributedString:(id)a3
{
  v4 = a3;
  if (v4 || self->_string)
  {
    v5 = [(_UILabelStringContent *)self attributedString];
    v6 = [v5 isEqualToAttributedString:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_isContentEqualToContent:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:self->_string])
  {
    v7.receiver = self;
    v7.super_class = _UILabelStringContent;
    v5 = [(_UILabelContent *)&v7 _isContentEqualToContent:v4];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UILabelStringContent alloc];
  string = self->_string;
  defaultAttributes = self->super._defaultAttributes;

  return [(_UILabelStringContent *)v4 initWithString:string defaultAttributes:defaultAttributes];
}

@end