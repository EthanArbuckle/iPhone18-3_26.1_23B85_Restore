@interface _UILabelContent
- (BOOL)_isContentEqualToContent:(id)content;
- (BOOL)isAttribute:(id)attribute uniformlyEqualToValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContent:(id)content byAttribute:(id)attribute;
- (_UILabelContent)contentWithAttributedString:(id)string;
- (_UILabelContent)contentWithDefaultAttributes:(id)attributes;
- (_UILabelContent)contentWithString:(id)string;
- (_UILabelContent)initWithDefaultAttributes:(id)attributes;
- (id)_fullRangeFont:(void *)font;
- (id)contentByAddingAttribute:(id)attribute toDefaultAttributesWithValue:(id)value;
- (id)contentByAddingAttributesToDefaultAttributes:(id)attributes;
- (id)contentByApplyingAttribute:(id)attribute value:(id)value toRange:(_NSRange)range;
- (id)contentByApplyingAttributeToEntireRange:(id)range value:(id)value;
- (id)contentByCompletingDefaultAttributesWithAttributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)widthVariantContentForView:(id)view;
- (int64_t)differenceVersusContent:(id)content checkFontDifference:(BOOL)difference;
- (int64_t)supportedMonochromaticTreatment:(id)treatment;
@end

@implementation _UILabelContent

- (_UILabelContent)initWithDefaultAttributes:(id)attributes
{
  attributesCopy = attributes;
  v9.receiver = self;
  v9.super_class = _UILabelContent;
  v5 = [(_UILabelContent *)&v9 init];
  if (v5)
  {
    v6 = [attributesCopy copy];
    defaultAttributes = v5->_defaultAttributes;
    v5->_defaultAttributes = v6;
  }

  return v5;
}

- (_UILabelContent)contentWithDefaultAttributes:(id)attributes
{
  attributesCopy = attributes;
  defaultAttributes = self->_defaultAttributes;
  v6 = attributesCopy;
  v7 = defaultAttributes;
  v8 = v7;
  if (v7 == v6)
  {

    goto LABEL_7;
  }

  if (v6 && v7)
  {
    v9 = [(NSDictionary *)v6 isEqual:v7];

    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_7:
    selfCopy = self;
    goto LABEL_10;
  }

LABEL_9:
  selfCopy = [(_UILabelContent *)self copy];
  v11 = [(NSDictionary *)v6 copy];
  v12 = selfCopy->_defaultAttributes;
  selfCopy->_defaultAttributes = v11;

LABEL_10:

  return selfCopy;
}

- (id)contentByAddingAttributesToDefaultAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (!attributesCopy)
  {
    goto LABEL_12;
  }

  if (![(NSDictionary *)self->_defaultAttributes count])
  {
    selfCopy = [(_UILabelContent *)self contentWithDefaultAttributes:attributesCopy];
LABEL_13:
    v12 = selfCopy;
    goto LABEL_14;
  }

  if (![attributesCopy count])
  {
LABEL_12:
    selfCopy = self;
    goto LABEL_13;
  }

  v5 = [(NSDictionary *)self->_defaultAttributes mutableCopy];
  [v5 addEntriesFromDictionary:attributesCopy];
  defaultAttributes = self->_defaultAttributes;
  v7 = v5;
  v8 = defaultAttributes;
  v9 = v8;
  if (v7 == v8)
  {

LABEL_11:
    goto LABEL_12;
  }

  if (v7 && v8)
  {
    v10 = [(NSDictionary *)v7 isEqual:v8];

    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

LABEL_18:
  v12 = [(_UILabelContent *)self copy];
  v14 = [(NSDictionary *)v7 copy];
  v15 = v12->_defaultAttributes;
  v12->_defaultAttributes = v14;

LABEL_14:

  return v12;
}

- (id)contentByAddingAttribute:(id)attribute toDefaultAttributesWithValue:(id)value
{
  v16[1] = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  valueCopy = value;
  v8 = [(NSDictionary *)self->_defaultAttributes objectForKeyedSubscript:attributeCopy];
  v9 = valueCopy;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_7;
  }

  if (v9 && v8)
  {
    v11 = [v8 isEqual:v9];

    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_7:
    selfCopy = self;
    goto LABEL_10;
  }

LABEL_9:
  v15 = attributeCopy;
  v16[0] = v10;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  selfCopy = [(_UILabelContent *)self contentByAddingAttributesToDefaultAttributes:v13];

LABEL_10:

  return selfCopy;
}

- (id)contentByCompletingDefaultAttributesWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (!attributesCopy)
  {
    goto LABEL_15;
  }

  if (![(NSDictionary *)self->_defaultAttributes count])
  {
    selfCopy = [(_UILabelContent *)self contentWithDefaultAttributes:attributesCopy];
LABEL_16:
    v14 = selfCopy;
    goto LABEL_17;
  }

  if (![attributesCopy count])
  {
LABEL_15:
    selfCopy = self;
    goto LABEL_16;
  }

  v5 = [attributesCopy mutableCopy];
  v6 = v5;
  if (self->_defaultAttributes)
  {
    defaultAttributes = self->_defaultAttributes;
  }

  else
  {
    defaultAttributes = MEMORY[0x1E695E0F8];
  }

  [v5 addEntriesFromDictionary:defaultAttributes];
  v8 = self->_defaultAttributes;
  v9 = v6;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {

LABEL_14:
    goto LABEL_15;
  }

  if (v9 && v10)
  {
    v12 = [(NSDictionary *)v9 isEqual:v10];

    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

LABEL_21:
  v14 = [(_UILabelContent *)self copy];
  v16 = [(NSDictionary *)v9 copy];
  v17 = v14->_defaultAttributes;
  v14->_defaultAttributes = v16;

LABEL_17:

  return v14;
}

- (_UILabelContent)contentWithString:(id)string
{
  if (string)
  {
    stringCopy = string;
    selfCopy = [[_UILabelStringContent alloc] initWithString:stringCopy defaultAttributes:self->_defaultAttributes];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (_UILabelContent)contentWithAttributedString:(id)string
{
  if (string)
  {
    stringCopy = string;
    selfCopy = [[_UILabelAttributedStringContent alloc] initWithAttributedString:stringCopy defaultAttributes:self->_defaultAttributes];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)widthVariantContentForView:(id)view
{
  viewCopy = view;
  if ([(_UILabelContent *)self isWidthVariant])
  {
    string = [(_UILabelContent *)self string];
    v6 = _UIAdaptLocalizedStringForView(string, viewCopy);
    selfCopy = [(_UILabelContent *)self contentWithString:v6];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)contentByApplyingAttributeToEntireRange:(id)range value:(id)value
{
  valueCopy = value;
  rangeCopy = range;
  v8 = [(_UILabelContent *)self contentByApplyingAttribute:rangeCopy value:valueCopy toRange:0, [(_UILabelContent *)self length]];

  return v8;
}

- (id)contentByApplyingAttribute:(id)attribute value:(id)value toRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributeCopy = attribute;
  valueCopy = value;
  if (!attributeCopy || location || length != [(_UILabelContent *)self length])
  {
    goto LABEL_14;
  }

  v11 = [(NSDictionary *)self->_defaultAttributes objectForKeyedSubscript:attributeCopy];
  v12 = v11;
  if (valueCopy || !v11)
  {
    if (valueCopy)
    {
      v15 = v11;
      v16 = valueCopy;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if (!v12)
        {

LABEL_19:
          selfCopy = [(_UILabelContent *)self contentByAddingAttribute:attributeCopy toDefaultAttributesWithValue:v17];
          goto LABEL_20;
        }

        v18 = [v15 isEqual:v16];

        if ((v18 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_14:
    selfCopy = self;
    goto LABEL_15;
  }

  v13 = [(NSDictionary *)self->_defaultAttributes mutableCopy];
  [v13 removeObjectForKey:attributeCopy];
  selfCopy = [(_UILabelContent *)self contentWithDefaultAttributes:v13];

LABEL_20:
LABEL_15:

  return selfCopy;
}

- (BOOL)isAttribute:(id)attribute uniformlyEqualToValue:(id)value
{
  valueCopy = value;
  v7 = [(_UILabelContent *)self defaultValueForAttribute:attribute];
  v8 = valueCopy;
  v9 = v8;
  if (v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = 0;
    if (v8 && v7)
    {
      v10 = [v7 isEqual:v8];
    }
  }

  return v10;
}

- (int64_t)supportedMonochromaticTreatment:(id)treatment
{
  treatmentCopy = treatment;
  attributedString = [(_UILabelContent *)self attributedString];
  v6 = [attributedString supportedMonochromaticTreatment:treatmentCopy];

  return v6;
}

- (BOOL)isEqualToContent:(id)content byAttribute:(id)attribute
{
  attributeCopy = attribute;
  contentCopy = content;
  v8 = [(_UILabelContent *)self defaultValueForAttribute:attributeCopy];
  v9 = [contentCopy defaultValueForAttribute:attributeCopy];

  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = 0;
    if (v10 && v11)
    {
      v13 = [v10 isEqual:v11];
    }
  }

  return v13;
}

- (BOOL)_isContentEqualToContent:(id)content
{
  contentCopy = content;
  v5 = contentCopy[1];
  v6 = self->_defaultAttributes;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = [(NSDictionary *)v6 isEqual:v7];
    }
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v6 = [(_UILabelContent *)v5 isNil], v6 == [(_UILabelContent *)self isNil]) && (v7 = [(_UILabelContent *)v5 isAttributed], v7 == [(_UILabelContent *)self isAttributed]) && (v8 = [(_UILabelContent *)v5 isWidthVariant], v8 == [(_UILabelContent *)self isWidthVariant]) && (v9 = [(_UILabelContent *)v5 length], v9 == [(_UILabelContent *)self length]))
  {
    v10 = [(_UILabelContent *)v5 _isContentEqualToContent:self];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)differenceVersusContent:(id)content checkFontDifference:(BOOL)difference
{
  differenceCopy = difference;
  contentCopy = content;
  v7 = contentCopy;
  if (contentCopy == self)
  {
    v17 = 0;
  }

  else if (contentCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isNil = [(_UILabelContent *)v7 isNil];
      v9 = isNil ^ [(_UILabelContent *)self isNil];
      isAttributed = [(_UILabelContent *)v7 isAttributed];
      if ((isAttributed ^ [(_UILabelContent *)self isAttributed]| v9))
      {
        v11 = 256;
      }

      else
      {
        v11 = 0;
      }

      isWidthVariant = [(_UILabelContent *)v7 isWidthVariant];
      if (isWidthVariant != [(_UILabelContent *)self isWidthVariant])
      {
        v13 = 8448;
      }

      else
      {
        v13 = v11;
      }

      defaultAttributes = [(_UILabelContent *)v7 defaultAttributes];
      defaultAttributes2 = [(_UILabelContent *)self defaultAttributes];
      isAttributed2 = [(_UILabelContent *)v7 isAttributed]|| [(_UILabelContent *)self isAttributed];
      v18 = defaultAttributes;
      v19 = defaultAttributes2;
      v20 = v19;
      if (v18 == v19)
      {
      }

      else
      {
        if (!v18 || !v19)
        {

          goto LABEL_24;
        }

        v21 = [v18 isEqual:v19];

        if ((v21 & 1) == 0)
        {
LABEL_24:
          v13 |= 0x200uLL;
          if (isAttributed2)
          {
            v22 = 0;
          }

          else
          {
            v68 = v13;
            v23 = *off_1E70EC920;
            v24 = v18;
            v70 = v20;
            v25 = v20;
            LOBYTE(v23) = HasAttributeDifferenceDefaults(v23, v24, v25);
            if ((HasAttributeDifferenceDefaults(*off_1E70EC8D0, v24, v25) | v23))
            {
              v26 = 0x20000;
            }

            else
            {
              v26 = 0;
            }

            if (HasAttributeDifferenceDefaults(*off_1E70EC988, v24, v25))
            {
              v26 |= 0xC000uLL;
            }

            v27 = v26 | GetShadowAttributeDifferenceDefaults(v24, v25);
            v67 = HasAttributeDifferenceDefaults(*off_1E70EC918, v24, v25);
            v66 = v27 | 0x14000;
            v28 = isAttributed2;
            v29 = v18;
            v30 = HasAttributeDifferenceDefaults(*MEMORY[0x1E69656F0], v24, v25);
            v31 = HasAttributeDifferenceDefaults(*MEMORY[0x1E69657E0], v24, v25);

            v22 = 0;
            v32 = v31 | v30;
            v18 = v29;
            isAttributed2 = v28;
            v33 = ((v32 | v67) & 1) == 0;
            v34 = v27 | 0x14000;
            if (v33)
            {
              v34 = v27;
            }

            v20 = v70;
            v13 = v34 | v68;
          }

LABEL_35:
          v35 = [(_UILabelContent *)v7 length];
          if (v35 != [(_UILabelContent *)self length])
          {
            if (differenceCopy)
            {
              LOBYTE(v74) = 1;
              LOBYTE(v72) = 1;
              v48 = [(_UILabelContent *)self _fullRangeFont:?];
              v49 = [(_UILabelContent *)v7 _fullRangeFont:?];
              if (v74 != 1 || v72 != 1 || (_deferringTokenEqualToToken(v48, v49) & 1) == 0)
              {
                v13 |= 0x10000uLL;
              }
            }

            v13 |= 0x1800uLL;
            goto LABEL_84;
          }

          if (!isAttributed2)
          {
            string = [(_UILabelContent *)v7 string];
            string2 = [(_UILabelContent *)self string];
            v52 = string;
            v53 = string2;
            v54 = v53;
            if (v52 == v53)
            {
              v55 = 1;
            }

            else
            {
              v55 = 0;
              if (v52 && v53)
              {
                v55 = [v52 isEqual:v53];
              }
            }

            if ((v55 & 1) == 0)
            {
              v13 |= 0x4800uLL;
            }

            goto LABEL_84;
          }

          attributedString = [(_UILabelContent *)v7 attributedString];
          attributedString2 = [(_UILabelContent *)self attributedString];
          if (!v22 || ([attributedString isEqualToAttributedString:attributedString2] & 1) == 0)
          {
            v38 = v22;
            v69 = v18;
            v71 = v20;
            v39 = [(_UILabelContent *)self length];
            string3 = [attributedString string];
            string4 = [attributedString2 string];
            v42 = [string3 isEqualToString:string4];

            if (v42)
            {
              if (v39)
              {
                v43 = v13;
                v74 = 0;
                v75 = 0;
                v72 = 0;
                v73 = 0;
                v44 = [attributedString attributesAtIndex:0 longestEffectiveRange:&v74 inRange:{0, v39}];
                v45 = [attributedString2 attributesAtIndex:0 longestEffectiveRange:&v72 inRange:{0, v39}];
                if (v75 == v39 && v74 == v72 && v39 == v73)
                {
                  v18 = v69;
                  v46 = [v69 mutableCopy];
                  [v46 addEntriesFromDictionary:v44];
                  v47 = [v71 mutableCopy];
                  [v47 addEntriesFromDictionary:v45];
                  if (_deferringTokenEqualToToken(v46, v47))
                  {
                    if (_deferringTokenEqualToToken(v44, v45))
                    {

                      v13 = v43;
LABEL_81:

                      goto LABEL_82;
                    }

                    v60 = HasAttributeDifferenceDefaults;
                    v61 = GetShadowAttributeDifferenceDefaults;
                    v62 = v44;
                    v63 = v45;
LABEL_75:
                    if (GetAttributeDifference(v60, v61, v62, v63))
                    {

                      AttributeDifference = 8;
                      goto LABEL_77;
                    }

                    goto LABEL_79;
                  }

                  v58 = HasAttributeDifferenceDefaults;
                  v59 = GetShadowAttributeDifferenceDefaults;
                }

                else
                {
                  defaultAttributes3 = [(_UILabelContent *)v7 defaultAttributes];
                  v46 = [(NSAttributedString *)attributedString _ui_synthesizeAttributedSubstringFromRange:v39 usingDefaultAttributes:defaultAttributes3];

                  defaultAttributes4 = [(_UILabelContent *)self defaultAttributes];
                  v47 = [(NSAttributedString *)attributedString2 _ui_synthesizeAttributedSubstringFromRange:v39 usingDefaultAttributes:defaultAttributes4];

                  if ([v46 isEqualToAttributedString:v47])
                  {
                    if ([attributedString isEqualToAttributedString:attributedString2])
                    {

                      v13 = v43;
LABEL_80:
                      v18 = v69;
                      goto LABEL_81;
                    }

                    v60 = HasAttributeDifferenceString;
                    v61 = GetShadowAttributeDifferenceString;
                    v62 = attributedString;
                    v63 = attributedString2;
                    goto LABEL_75;
                  }

                  v58 = HasAttributeDifferenceString;
                  v59 = GetShadowAttributeDifferenceString;
                }

                AttributeDifference = GetAttributeDifference(v58, v59, v46, v47);

                if (AttributeDifference)
                {
LABEL_77:
                  v13 = AttributeDifference | v43;
                  goto LABEL_80;
                }

LABEL_79:
                v13 = v43 | 0x4400;
                goto LABEL_80;
              }

              if ((v38 & 1) == 0)
              {
                v18 = v69;
                v20 = v71;
                v13 |= GetAttributeDifference(HasAttributeDifferenceDefaults, GetShadowAttributeDifferenceDefaults, v69, v71);
                goto LABEL_83;
              }
            }

            else
            {
              v13 |= 0x800uLL;
            }

            v18 = v69;
LABEL_82:
            v20 = v71;
          }

LABEL_83:

LABEL_84:
          v17 = (8 * v13) & 0x4000 | v13;

          goto LABEL_85;
        }
      }

      v22 = 1;
      goto LABEL_35;
    }

    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

LABEL_85:

  return v17;
}

- (id)_fullRangeFont:(void *)font
{
  if (font)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__241;
    v23 = __Block_byref_object_dispose__241;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    if ([font isAttributed] && objc_msgSend(font, "length") >= 1)
    {
      attributedString = [font attributedString];
      v5 = [attributedString length];
      v6 = *off_1E70EC918;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __34___UILabelContent__fullRangeFont___block_invoke;
      v14[3] = &unk_1E712A208;
      v14[4] = &v19;
      v14[5] = &v15;
      v14[6] = 0;
      v14[7] = v5;
      [attributedString enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v14}];
    }

    v7 = *(v16 + 24);
    v8 = v20;
    if (v7 == 1 && !v20[5])
    {
      defaultAttributes = [font defaultAttributes];
      v10 = [defaultAttributes objectForKey:*off_1E70EC918];
      v11 = v20[5];
      v20[5] = v10;

      LOBYTE(v7) = *(v16 + 24);
      v8 = v20;
    }

    *a2 = v7;
    v12 = v8[5];
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p (empty) attr=%@>", objc_opt_class(), self, self->_defaultAttributes];
  }

  else
  {
    string = [(_UILabelContent *)self string];
    if ([string length] >= 0x21)
    {
      v5 = [string substringWithRange:{0, 32}];
      v6 = [v5 stringByAppendingString:@"..."];

      string = v6;
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    if ([(_UILabelContent *)self isAttributed])
    {
      v9 = @"(attributed string) ";
    }

    else
    {
      v9 = @"(string) ";
    }

    if ([(_UILabelContent *)self isWidthVariant])
    {
      v10 = @"variant ";
    }

    else
    {
      v10 = &stru_1EFB14550;
    }

    v11 = [v7 stringWithFormat:@"<%@:%p %@%@len=%ld %@ attr=%@>", v8, self, v9, v10, -[_UILabelContent length](self, "length"), string, self->_defaultAttributes];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UILabelContent alloc];
  defaultAttributes = self->_defaultAttributes;

  return [(_UILabelContent *)v4 initWithDefaultAttributes:defaultAttributes];
}

@end