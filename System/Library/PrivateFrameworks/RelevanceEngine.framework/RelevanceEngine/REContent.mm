@interface REContent
- (BOOL)bodyImageShouldStretch;
- (BOOL)isEqual:(id)equal;
- (BOOL)tintColorAffectsHeader;
- (BOOL)useMonospaceFont;
- (CGRect)imageFocusRect;
- (NSAttributedString)description1Text;
- (NSAttributedString)description2Text;
- (NSAttributedString)description3Text;
- (NSAttributedString)headerText;
- (NSDictionary)loggingContentValues;
- (NSString)overrideBodyString;
- (REAccessoryDescription)descriptionAccessory;
- (REAccessoryImage)imageAccessory;
- (REAccessoryMatchup)matchupAccessory;
- (REContent)init;
- (REContent)initWithCoder:(id)coder;
- (REImageContentProvider)bodyImageContentProvider;
- (REImageContentProvider)headerImageContentProvider;
- (RETextContentProvider)description1TextContentProvider;
- (RETextContentProvider)description2TextContentProvider;
- (RETextContentProvider)description3TextContentProvider;
- (RETextContentProvider)headerTextContentProvider;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)description1FontStyle;
- (unint64_t)description2FontStyle;
- (unint64_t)headerFontStyle;
- (unint64_t)punchThrough;
- (unint64_t)style;
- (unsigned)headerImageEdge;
- (void)encodeWithCoder:(id)coder;
- (void)setDescription1FontStyle:(unint64_t)style;
- (void)setDescription1Text:(id)text;
- (void)setDescription2FontStyle:(unint64_t)style;
- (void)setDescription2Text:(id)text;
- (void)setDescription3Text:(id)text;
- (void)setDescriptionAccessory:(id)accessory;
- (void)setHeaderFontStyle:(unint64_t)style;
- (void)setHeaderText:(id)text;
- (void)setImageAccessory:(id)accessory;
- (void)setImageFocusRect:(CGRect)rect;
- (void)setObject:(id)object forKey:(id)key;
- (void)setPunchThrough:(unint64_t)through;
- (void)setStyle:(unint64_t)style;
@end

@implementation REContent

- (REContent)init
{
  v8.receiver = self;
  v8.super_class = REContent;
  v2 = [(REContent *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    contents = v2->_contents;
    v2->_contents = dictionary;

    defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
    timeZone = v2->_timeZone;
    v2->_timeZone = defaultTimeZone;

    [(REContent *)v2 setObject:@"REElementInteractionDefault" forKey:@"REContentInteractionKey"];
  }

  return v2;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    contents = self->_contents;
    if (objectCopy)
    {
      [(NSMutableDictionary *)contents setObject:objectCopy forKey:keyCopy];
    }

    else
    {
      [(NSMutableDictionary *)contents removeObjectForKey:keyCopy];
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Key cannot be nil", v6, v7, v8, v9, v10, v11, v14);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      timeZone = v5->_timeZone;
      v7 = self->_timeZone;
      v8 = v7;
      if (v7 == timeZone)
      {
      }

      else
      {
        v9 = [(NSTimeZone *)v7 isEqual:timeZone];

        if (!v9)
        {
          v10 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      contents = self->_contents;
      v12 = v5->_contents;
      v13 = contents;
      v14 = v13;
      if (v13 == v12)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSMutableDictionary *)v13 isEqual:v12];
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_contents copyItems:1];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  objc_storeStrong((v4 + 16), self->_timeZone);
  return v4;
}

- (REContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = REContent;
  v5 = [(REContent *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"content"];
    contents = v5->_contents;
    v5->_contents = v6;

    v8 = [coderCopy decodeObjectForKey:@"timezone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contents = self->_contents;
  coderCopy = coder;
  [coderCopy encodeObject:contents forKey:@"content"];
  [coderCopy encodeObject:self->_timeZone forKey:@"timezone"];
}

- (NSDictionary)loggingContentValues
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_contents, "count")}];
  contents = self->_contents;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__REContent_loggingContentValues__block_invoke;
  v8[3] = &unk_2785F9940;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)contents enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __33__REContent_loggingContentValues__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = REDescriptionForExportedObject(v5);
  v7 = [v6 mutableCopy];

  if (objc_opt_respondsToSelector())
  {
    [v7 appendString:@" "];
    v8 = [v5 contentEncodedString];
    [v7 appendString:v8];
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v9];
}

- (RETextContentProvider)headerTextContentProvider
{
  v2 = [(REContent *)self objectForKey:@"REContentHeaderTextKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  return v3;
}

- (REImageContentProvider)headerImageContentProvider
{
  v2 = [(REContent *)self objectForKey:@"REContentHeaderImageKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  return v3;
}

- (REImageContentProvider)bodyImageContentProvider
{
  v2 = [(REContent *)self objectForKey:@"REContentBodyImageKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  return v3;
}

- (RETextContentProvider)description1TextContentProvider
{
  v2 = [(REContent *)self objectForKey:@"REContentDescription1TextKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  return v3;
}

- (RETextContentProvider)description2TextContentProvider
{
  v2 = [(REContent *)self objectForKey:@"REContentDescription2TextKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  return v3;
}

- (RETextContentProvider)description3TextContentProvider
{
  v2 = [(REContent *)self objectForKey:@"REContentDescription3TextKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  return v3;
}

- (void)setPunchThrough:(unint64_t)through
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:through];
  [(REContent *)self setObject:v4 forKey:@"REContentPunchThroughKey"];
}

- (unint64_t)punchThrough
{
  v2 = [(REContent *)self objectForKey:@"REContentPunchThroughKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)setStyle:(unint64_t)style
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:style];
  [(REContent *)self setObject:v4 forKey:@"REContentStyleKey"];
}

- (unint64_t)style
{
  v2 = [(REContent *)self objectForKey:@"REContentStyleKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (BOOL)useMonospaceFont
{
  v2 = [(REContent *)self objectForKey:@"REContentUseMonospacedFontKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setHeaderFontStyle:(unint64_t)style
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:style];
  [(REContent *)self setObject:v4 forKey:@"REContentHeaderFontStyleKey"];
}

- (unint64_t)headerFontStyle
{
  v2 = [(REContent *)self objectForKey:@"REContentHeaderFontStyleKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 2;
  }

  return unsignedIntegerValue;
}

- (void)setDescription1FontStyle:(unint64_t)style
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:style];
  [(REContent *)self setObject:v4 forKey:@"REContentDescription1FontStyleKey"];
}

- (unint64_t)description1FontStyle
{
  v2 = [(REContent *)self objectForKey:@"REContentDescription1FontStyleKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)setDescription2FontStyle:(unint64_t)style
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:style];
  [(REContent *)self setObject:v4 forKey:@"REContentDescription2FontStyleKey"];
}

- (unint64_t)description2FontStyle
{
  v2 = [(REContent *)self objectForKey:@"REContentDescription2FontStyleKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  return unsignedIntegerValue;
}

- (BOOL)tintColorAffectsHeader
{
  v2 = [(REContent *)self objectForKey:@"REContentTintColorAffectsHeaderKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)bodyImageShouldStretch
{
  v2 = [(REContent *)self objectForKey:@"REContentBodyImageShouldStretchKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (unsigned)headerImageEdge
{
  v2 = [(REContent *)self objectForKey:@"REContentHeaderImageEdgeKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (void)setDescriptionAccessory:(id)accessory
{
  v4 = [accessory copy];
  [(REContent *)self setObject:v4 forKey:@"REContentDescriptionAccessoryKey"];
}

- (REAccessoryDescription)descriptionAccessory
{
  v2 = [(REContent *)self objectForKey:@"REContentDescriptionAccessoryKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  return v3;
}

- (void)setImageAccessory:(id)accessory
{
  v4 = [accessory copy];
  [(REContent *)self setObject:v4 forKey:@"REContentImageAccessoryKey"];
}

- (REAccessoryImage)imageAccessory
{
  v2 = [(REContent *)self objectForKey:@"REContentImageAccessoryKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  return v3;
}

- (REAccessoryMatchup)matchupAccessory
{
  v2 = [(REContent *)self objectForKey:@"REContentMatchupAccessoryKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  return v3;
}

- (void)setImageFocusRect:(CGRect)rect
{
  v4 = [MEMORY[0x277CCAE60] re_valueWithCGRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  [(REContent *)self setObject:v4 forKey:@"REContentImageFocusRectKey"];
}

- (CGRect)imageFocusRect
{
  v2 = [(REContent *)self objectForKey:@"REContentImageFocusRectKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    [v3 re_CGRectValue];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = 0.0;
    *&v5 = INFINITY;
    *&v7 = INFINITY;
    v11 = 0.0;
  }

  v12 = *&v5;
  v13 = *&v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (NSString)overrideBodyString
{
  v2 = [(REContent *)self objectForKey:@"REContentOverrideBodyStringKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  return v3;
}

- (void)setDescription1Text:(id)text
{
  if (text)
  {
    v4 = [(RETextContentProvider *)RESimpleTextContentProvider contentProviderFromAttributedString:?];
    [(REContent *)self setDescription1TextContentProvider:v4];
  }

  else
  {

    [(REContent *)self setDescription1TextContentProvider:?];
  }
}

- (NSAttributedString)description1Text
{
  description1TextContentProvider = [(REContent *)self description1TextContentProvider];
  objc_opt_class();
  v3 = REValidateObjectOfClass(description1TextContentProvider);
  attributedStringRepresentation = [v3 attributedStringRepresentation];

  return attributedStringRepresentation;
}

- (void)setDescription2Text:(id)text
{
  if (text)
  {
    v4 = [(RETextContentProvider *)RESimpleTextContentProvider contentProviderFromAttributedString:?];
    [(REContent *)self setDescription2TextContentProvider:v4];
  }

  else
  {

    [(REContent *)self setDescription2TextContentProvider:?];
  }
}

- (NSAttributedString)description2Text
{
  description2TextContentProvider = [(REContent *)self description2TextContentProvider];
  objc_opt_class();
  v3 = REValidateObjectOfClass(description2TextContentProvider);
  attributedStringRepresentation = [v3 attributedStringRepresentation];

  return attributedStringRepresentation;
}

- (void)setDescription3Text:(id)text
{
  if (text)
  {
    v4 = [(RETextContentProvider *)RESimpleTextContentProvider contentProviderFromAttributedString:?];
    [(REContent *)self setDescription3TextContentProvider:v4];
  }

  else
  {

    [(REContent *)self setDescription3TextContentProvider:?];
  }
}

- (NSAttributedString)description3Text
{
  description3TextContentProvider = [(REContent *)self description3TextContentProvider];
  objc_opt_class();
  v3 = REValidateObjectOfClass(description3TextContentProvider);
  attributedStringRepresentation = [v3 attributedStringRepresentation];

  return attributedStringRepresentation;
}

- (void)setHeaderText:(id)text
{
  if (text)
  {
    v4 = [(RETextContentProvider *)RESimpleTextContentProvider contentProviderFromAttributedString:?];
    [(REContent *)self setHeaderTextContentProvider:v4];
  }

  else
  {

    [(REContent *)self setHeaderTextContentProvider:?];
  }
}

- (NSAttributedString)headerText
{
  headerTextContentProvider = [(REContent *)self headerTextContentProvider];
  objc_opt_class();
  v3 = REValidateObjectOfClass(headerTextContentProvider);
  attributedStringRepresentation = [v3 attributedStringRepresentation];

  return attributedStringRepresentation;
}

@end