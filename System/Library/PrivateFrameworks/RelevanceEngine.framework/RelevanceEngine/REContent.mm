@interface REContent
- (BOOL)bodyImageShouldStretch;
- (BOOL)isEqual:(id)a3;
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
- (REContent)initWithCoder:(id)a3;
- (REImageContentProvider)bodyImageContentProvider;
- (REImageContentProvider)headerImageContentProvider;
- (RETextContentProvider)description1TextContentProvider;
- (RETextContentProvider)description2TextContentProvider;
- (RETextContentProvider)description3TextContentProvider;
- (RETextContentProvider)headerTextContentProvider;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)description1FontStyle;
- (unint64_t)description2FontStyle;
- (unint64_t)headerFontStyle;
- (unint64_t)punchThrough;
- (unint64_t)style;
- (unsigned)headerImageEdge;
- (void)encodeWithCoder:(id)a3;
- (void)setDescription1FontStyle:(unint64_t)a3;
- (void)setDescription1Text:(id)a3;
- (void)setDescription2FontStyle:(unint64_t)a3;
- (void)setDescription2Text:(id)a3;
- (void)setDescription3Text:(id)a3;
- (void)setDescriptionAccessory:(id)a3;
- (void)setHeaderFontStyle:(unint64_t)a3;
- (void)setHeaderText:(id)a3;
- (void)setImageAccessory:(id)a3;
- (void)setImageFocusRect:(CGRect)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setPunchThrough:(unint64_t)a3;
- (void)setStyle:(unint64_t)a3;
@end

@implementation REContent

- (REContent)init
{
  v8.receiver = self;
  v8.super_class = REContent;
  v2 = [(REContent *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    contents = v2->_contents;
    v2->_contents = v3;

    v5 = [MEMORY[0x277CBEBB0] defaultTimeZone];
    timeZone = v2->_timeZone;
    v2->_timeZone = v5;

    [(REContent *)v2 setObject:@"REElementInteractionDefault" forKey:@"REContentInteractionKey"];
  }

  return v2;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v15 = a3;
  v12 = a4;
  if (v12)
  {
    contents = self->_contents;
    if (v15)
    {
      [(NSMutableDictionary *)contents setObject:v15 forKey:v12];
    }

    else
    {
      [(NSMutableDictionary *)contents removeObjectForKey:v12];
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Key cannot be nil", v6, v7, v8, v9, v10, v11, v14);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_contents copyItems:1];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  objc_storeStrong((v4 + 16), self->_timeZone);
  return v4;
}

- (REContent)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = REContent;
  v5 = [(REContent *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"content"];
    contents = v5->_contents;
    v5->_contents = v6;

    v8 = [v4 decodeObjectForKey:@"timezone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contents = self->_contents;
  v5 = a3;
  [v5 encodeObject:contents forKey:@"content"];
  [v5 encodeObject:self->_timeZone forKey:@"timezone"];
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

- (void)setPunchThrough:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(REContent *)self setObject:v4 forKey:@"REContentPunchThroughKey"];
}

- (unint64_t)punchThrough
{
  v2 = [(REContent *)self objectForKey:@"REContentPunchThroughKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setStyle:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(REContent *)self setObject:v4 forKey:@"REContentStyleKey"];
}

- (unint64_t)style
{
  v2 = [(REContent *)self objectForKey:@"REContentStyleKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)useMonospaceFont
{
  v2 = [(REContent *)self objectForKey:@"REContentUseMonospacedFontKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHeaderFontStyle:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(REContent *)self setObject:v4 forKey:@"REContentHeaderFontStyleKey"];
}

- (unint64_t)headerFontStyle
{
  v2 = [(REContent *)self objectForKey:@"REContentHeaderFontStyleKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setDescription1FontStyle:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(REContent *)self setObject:v4 forKey:@"REContentDescription1FontStyleKey"];
}

- (unint64_t)description1FontStyle
{
  v2 = [(REContent *)self objectForKey:@"REContentDescription1FontStyleKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDescription2FontStyle:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(REContent *)self setObject:v4 forKey:@"REContentDescription2FontStyleKey"];
}

- (unint64_t)description2FontStyle
{
  v2 = [(REContent *)self objectForKey:@"REContentDescription2FontStyleKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)tintColorAffectsHeader
{
  v2 = [(REContent *)self objectForKey:@"REContentTintColorAffectsHeaderKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)bodyImageShouldStretch
{
  v2 = [(REContent *)self objectForKey:@"REContentBodyImageShouldStretchKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)headerImageEdge
{
  v2 = [(REContent *)self objectForKey:@"REContentHeaderImageEdgeKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDescriptionAccessory:(id)a3
{
  v4 = [a3 copy];
  [(REContent *)self setObject:v4 forKey:@"REContentDescriptionAccessoryKey"];
}

- (REAccessoryDescription)descriptionAccessory
{
  v2 = [(REContent *)self objectForKey:@"REContentDescriptionAccessoryKey"];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);

  return v3;
}

- (void)setImageAccessory:(id)a3
{
  v4 = [a3 copy];
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

- (void)setImageFocusRect:(CGRect)a3
{
  v4 = [MEMORY[0x277CCAE60] re_valueWithCGRect:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
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

- (void)setDescription1Text:(id)a3
{
  if (a3)
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
  v2 = [(REContent *)self description1TextContentProvider];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);
  v4 = [v3 attributedStringRepresentation];

  return v4;
}

- (void)setDescription2Text:(id)a3
{
  if (a3)
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
  v2 = [(REContent *)self description2TextContentProvider];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);
  v4 = [v3 attributedStringRepresentation];

  return v4;
}

- (void)setDescription3Text:(id)a3
{
  if (a3)
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
  v2 = [(REContent *)self description3TextContentProvider];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);
  v4 = [v3 attributedStringRepresentation];

  return v4;
}

- (void)setHeaderText:(id)a3
{
  if (a3)
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
  v2 = [(REContent *)self headerTextContentProvider];
  objc_opt_class();
  v3 = REValidateObjectOfClass(v2);
  v4 = [v3 attributedStringRepresentation];

  return v4;
}

@end