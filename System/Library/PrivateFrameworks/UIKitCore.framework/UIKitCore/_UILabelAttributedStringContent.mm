@interface _UILabelAttributedStringContent
- (BOOL)_isContentEqualToContent:(id)content;
- (BOOL)isAttribute:(id)attribute uniformlyEqualToValue:(id)value;
- (BOOL)isAttributed;
- (BOOL)isEqualToContent:(id)content byAttribute:(id)attribute;
- (BOOL)isEqualToString:(id)string;
- (_UILabelAttributedStringContent)contentWithAttributedString:(id)string;
- (_UILabelAttributedStringContent)contentWithString:(id)string;
- (_UILabelAttributedStringContent)initWithAttributedString:(id)string defaultAttributes:(id)attributes;
- (id)contentByApplyingAttribute:(id)attribute value:(id)value toRange:(_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultValueForAttribute:(id)attribute;
- (id)intelligenceLightAttributedStrings;
- (id)labelViewTextAttachments;
- (unint64_t)hash;
@end

@implementation _UILabelAttributedStringContent

- (BOOL)isAttributed
{
  string = [(_UILabelAttributedStringContent *)self string];
  if (string)
  {
    v4 = 1;
  }

  else
  {
    attributedString = [(_UILabelAttributedStringContent *)self attributedString];
    v4 = attributedString != 0;
  }

  return v4;
}

- (id)labelViewTextAttachments
{
  array = [MEMORY[0x1E695DF70] array];
  attributedString = self->_attributedString;
  v5 = *off_1E70EC8C8;
  v6 = [(NSAttributedString *)attributedString length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59___UILabelAttributedStringContent_labelViewTextAttachments__block_invoke;
  v10[3] = &unk_1E70F3050;
  v7 = array;
  v11 = v7;
  [(NSAttributedString *)attributedString enumerateAttribute:v5 inRange:0 options:v6 usingBlock:0, v10];
  if ([v7 count])
  {
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_UILabelAttributedStringContent)initWithAttributedString:(id)string defaultAttributes:(id)attributes
{
  stringCopy = string;
  if (stringCopy)
  {
    v7 = stringCopy;
    v16.receiver = self;
    v16.super_class = _UILabelAttributedStringContent;
    attributesCopy = attributes;
    v9 = [(_UILabelContent *)&v16 initWithDefaultAttributes:attributesCopy];

    if (v9)
    {
      attributesCopy2 = [(_NSAttributedStringIntentResolver *)_UIAttributedStringIntentResolver attributedStringByResolvingString:v7, v16.receiver, v16.super_class];

      if (dyld_program_sdk_at_least())
      {
        v11 = [attributesCopy2 copy];
      }

      else
      {
        v11 = [attributesCopy2 mutableCopy];
      }

      attributedString = v9->_attributedString;
      v9->_attributedString = v11;
    }

    else
    {
      attributesCopy2 = v7;
    }

    v12 = v9;
    self = v12;
  }

  else
  {
    attributesCopy2 = attributes;
    v12 = [[_UILabelContent alloc] initWithDefaultAttributes:attributesCopy2];
  }

  v14 = v12;

  return v14;
}

- (_UILabelAttributedStringContent)contentWithString:(id)string
{
  stringCopy = string;
  v5 = self->super._defaultAttributes;
  v6 = [(_UILabelAttributedStringContent *)self length];
  if (v6 >= 1)
  {
    v7 = v6;
    v24 = 0;
    v25 = 0;
    v8 = [(NSAttributedString *)self->_attributedString attributesAtIndex:0 longestEffectiveRange:&v24 inRange:0, v6];
    v9 = v8;
    if (v25 == v7 && [v8 count])
    {
      v10 = [(NSDictionary *)self->super._defaultAttributes mutableCopy];
      [v10 addEntriesFromDictionary:v9];
      v11 = v10;
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        v12 = *off_1E70EC988;
        v13 = [(NSDictionary *)self->super._defaultAttributes objectForKeyedSubscript:*off_1E70EC988];
        [v13 minimumLineHeight];
        v15 = v14;
        [v13 maximumLineHeight];
        v17 = v16;
        v18 = [v11 objectForKeyedSubscript:v12];
        v19 = [v18 mutableCopy];

        [v19 setMinimumLineHeight:v15];
        [v19 setMaximumLineHeight:v17];
        [v11 setObject:v19 forKeyedSubscript:v12];

        [v11 setObject:0 forKeyedSubscript:*off_1E70EC9C8];
      }

      [v11 removeObjectForKey:*off_1E70EC8C0];
      [v11 removeObjectForKey:*off_1E70EC8C8];
      [v11 removeObjectForKey:*off_1E70ECAA8];

      if (([v11 isEqual:self->super._defaultAttributes] & 1) == 0)
      {
        v20 = v11;

        v5 = v20;
      }
    }
  }

  if (stringCopy)
  {
    v21 = [[_UILabelStringContent alloc] initWithString:stringCopy defaultAttributes:v5];
  }

  else
  {
    v21 = [[_UILabelContent alloc] initWithDefaultAttributes:v5];
  }

  v22 = v21;

  return v22;
}

- (_UILabelAttributedStringContent)contentWithAttributedString:(id)string
{
  stringCopy = string;
  v5 = self->_attributedString;
  v6 = stringCopy;
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_7;
  }

  if (v6 && v5)
  {
    v8 = [(NSAttributedString *)v5 isEqual:v6];

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
    selfCopy = [[_UILabelAttributedStringContent alloc] initWithAttributedString:v7 defaultAttributes:self->super._defaultAttributes];
    goto LABEL_11;
  }

  selfCopy = [[_UILabelContent alloc] initWithDefaultAttributes:self->super._defaultAttributes];
LABEL_11:
  v10 = selfCopy;

  return v10;
}

- (id)contentByApplyingAttribute:(id)attribute value:(id)value toRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributeCopy = attribute;
  valueCopy = value;
  if (location >= [(_UILabelAttributedStringContent *)self length])
  {
    goto LABEL_31;
  }

  if (location + length >= [(_UILabelAttributedStringContent *)self length])
  {
    length = [(_UILabelAttributedStringContent *)self length]- location;
  }

  if (!attributeCopy || !length)
  {
    goto LABEL_31;
  }

  v29 = 0;
  v30 = 0;
  v11 = [(NSAttributedString *)self->_attributedString attribute:attributeCopy atIndex:location effectiveRange:&v29];
  v12 = v11;
  if (v29 == location && v30 == length)
  {
    v13 = v11;
    v14 = valueCopy;
    v15 = v14;
    if (v13 == v14)
    {

LABEL_14:
      selfCopy = self;
LABEL_15:

      goto LABEL_32;
    }

    if (v14 && v13)
    {
      v16 = [v13 isEqual:v14];

      if ((v16 & 1) == 0)
      {
        v17 = [(NSAttributedString *)self->_attributedString mutableCopy];
LABEL_27:
        [v17 addAttribute:attributeCopy value:valueCopy range:{location, length}];
        goto LABEL_29;
      }

      goto LABEL_14;
    }

    if (!v13)
    {
      v19 = [(NSDictionary *)self->super._defaultAttributes objectForKeyedSubscript:attributeCopy];
      v20 = v15;
      if (v19 == v20)
      {
      }

      else
      {
        if (!v15 || !v19)
        {

LABEL_25:
          goto LABEL_26;
        }

        v21 = v20;
        v26 = [v19 isEqual:v20];

        if (!v26)
        {
          goto LABEL_25;
        }
      }

      selfCopy2 = self;

      goto LABEL_15;
    }
  }

LABEL_26:
  v23 = [(NSAttributedString *)self->_attributedString mutableCopy];
  v17 = v23;
  if (valueCopy)
  {
    goto LABEL_27;
  }

  [v23 removeAttribute:attributeCopy range:{location, length}];
LABEL_29:
  if ([v17 isEqualToAttributedString:self->_attributedString])
  {

LABEL_31:
    v27.receiver = self;
    v27.super_class = _UILabelAttributedStringContent;
    self = [(_UILabelContent *)&v27 contentByApplyingAttribute:attributeCopy value:valueCopy toRange:location, length];
    goto LABEL_32;
  }

  v28.receiver = self;
  v28.super_class = _UILabelAttributedStringContent;
  v25 = [(_UILabelContent *)&v28 contentByApplyingAttribute:attributeCopy value:valueCopy toRange:location, length];
  self = [v25 contentWithAttributedString:v17];

LABEL_32:

  return self;
}

- (BOOL)isAttribute:(id)attribute uniformlyEqualToValue:(id)value
{
  valueCopy = value;
  attributedString = self->_attributedString;
  attributeCopy = attribute;
  v9 = [(NSAttributedString *)attributedString length];
  if (v9)
  {
    v10 = v9;
    v16 = 0;
    v17 = 0;
    v11 = [(NSAttributedString *)self->_attributedString attribute:attributeCopy atIndex:0 longestEffectiveRange:&v16 inRange:0, v9];

    if (v10 != v17)
    {
      v12 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v11 = [(NSDictionary *)self->super._defaultAttributes objectForKeyedSubscript:attributeCopy];
  }

  v11 = v11;
  v13 = valueCopy;
  v14 = v13;
  if (v11 == v13)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
    if (v13 && v11)
    {
      v12 = [v11 isEqual:v13];
    }
  }

LABEL_11:
  return v12;
}

- (id)defaultValueForAttribute:(id)attribute
{
  attributeCopy = attribute;
  if ([(_UILabelAttributedStringContent *)self length]< 1 || ([(NSAttributedString *)self->_attributedString attribute:attributeCopy atIndex:0 effectiveRange:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [(NSDictionary *)self->super._defaultAttributes objectForKeyedSubscript:attributeCopy];
  }

  return v5;
}

- (BOOL)isEqualToString:(id)string
{
  stringCopy = string;
  attributedString = self->_attributedString;
  if (stringCopy | attributedString)
  {
    string = [(NSAttributedString *)attributedString string];
    v6 = [string isEqualToString:stringCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isEqualToContent:(id)content byAttribute:(id)attribute
{
  contentCopy = content;
  attributeCopy = attribute;
  v14.receiver = self;
  v14.super_class = _UILabelAttributedStringContent;
  if (![(_UILabelContent *)&v14 isEqualToContent:contentCopy byAttribute:attributeCopy])
  {
    goto LABEL_5;
  }

  v12 = 0;
  v13 = 0;
  v8 = [(NSAttributedString *)self->_attributedString attribute:attributeCopy atIndex:0 effectiveRange:&v12];
  v9 = v13;
  if (v9 != [(_UILabelAttributedStringContent *)self length])
  {

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = [contentCopy isAttribute:attributeCopy uniformlyEqualToValue:v8];

LABEL_6:
  return v10;
}

- (BOOL)_isContentEqualToContent:(id)content
{
  contentCopy = content;
  if ([contentCopy isEqualToAttributedString:self->_attributedString])
  {
    v7.receiver = self;
    v7.super_class = _UILabelAttributedStringContent;
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
  v3 = [(NSAttributedString *)self->_attributedString hash];
  v5.receiver = self;
  v5.super_class = _UILabelAttributedStringContent;
  return [(_UILabelContent *)&v5 hash]+ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UILabelAttributedStringContent alloc];
  attributedString = self->_attributedString;
  defaultAttributes = self->super._defaultAttributes;

  return [(_UILabelAttributedStringContent *)v4 initWithAttributedString:attributedString defaultAttributes:defaultAttributes];
}

- (id)intelligenceLightAttributedStrings
{
  if ([(NSAttributedString *)self->_attributedString length])
  {
    array = [MEMORY[0x1E695DF70] array];
    v4 = [(NSAttributedString *)self->_attributedString mutableCopy];
    v5 = [(NSAttributedString *)self->_attributedString mutableCopy];
    v6 = [v5 length];
    attributedString = self->_attributedString;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __69___UILabelAttributedStringContent_intelligenceLightAttributedStrings__block_invoke;
    v17 = &unk_1E7125C88;
    v18 = v5;
    v19 = v4;
    v8 = v4;
    v9 = v5;
    [(NSAttributedString *)attributedString enumerateAttribute:@"_NSIntelligenceLightReactiveAttributeName" inRange:0 options:v6 usingBlock:0x100000, &v14];
    v10 = objc_opt_new();
    v11 = [v8 copy];
    [v10 setLightReactiveAttributedString:v11];

    v12 = [v9 copy];
    [v10 setLightInertAttributedString:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end