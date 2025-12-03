@interface TSWPFontCacheKey
+ (id)cacheKeyWithFontName:(id)name fontSize:(double)size bold:(BOOL)bold italic:(BOOL)italic fontFeatures:(id)features;
+ (id)cacheKeyWithFontName:(id)name size:(double)size;
- (BOOL)isEqual:(id)equal;
- (TSWPFontCacheKey)initWithFontName:(id)name fontSize:(double)size hasExtraFields:(BOOL)fields bold:(BOOL)bold italic:(BOOL)italic fontFeatures:(id)features;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation TSWPFontCacheKey

+ (id)cacheKeyWithFontName:(id)name size:(double)size
{
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_280A582D8 || (objc_msgSend_fontSize(qword_280A582D8, v8, v9), v12 != size) || (objc_msgSend_fontName(qword_280A582D8, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v13, v14, nameCopy), v13, (isEqualToString & 1) == 0))
  {
    v16 = objc_alloc(objc_opt_class());
    hasExtraFields_bold_italic_fontFeatures = objc_msgSend_initWithFontName_fontSize_hasExtraFields_bold_italic_fontFeatures_(v16, v17, nameCopy, 0, 0, 0, 0, size);
    v19 = qword_280A582D8;
    qword_280A582D8 = hasExtraFields_bold_italic_fontFeatures;
  }

  v20 = qword_280A582D8;
  objc_sync_exit(selfCopy);

  return v20;
}

+ (id)cacheKeyWithFontName:(id)name fontSize:(double)size bold:(BOOL)bold italic:(BOOL)italic fontFeatures:(id)features
{
  italicCopy = italic;
  boldCopy = bold;
  featuresCopy = features;
  nameCopy = name;
  v13 = objc_alloc(objc_opt_class());
  hasExtraFields_bold_italic_fontFeatures = objc_msgSend_initWithFontName_fontSize_hasExtraFields_bold_italic_fontFeatures_(v13, v14, nameCopy, 1, boldCopy, italicCopy, featuresCopy, size);

  return hasExtraFields_bold_italic_fontFeatures;
}

- (TSWPFontCacheKey)initWithFontName:(id)name fontSize:(double)size hasExtraFields:(BOOL)fields bold:(BOOL)bold italic:(BOOL)italic fontFeatures:(id)features
{
  fieldsCopy = fields;
  nameCopy = name;
  featuresCopy = features;
  v22.receiver = self;
  v22.super_class = TSWPFontCacheKey;
  v18 = [(TSWPFontCacheKey *)&v22 init];
  if (v18)
  {
    v19 = objc_msgSend_copy(nameCopy, v16, v17);
    fontName = v18->_fontName;
    v18->_fontName = v19;

    v18->_fontSize = size;
    if (fieldsCopy)
    {
      v18->_hasExtraFields = 1;
      v18->_bold = bold;
      v18->_italic = italic;
      objc_storeStrong(&v18->_fontFeatures, features);
    }
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    goto LABEL_13;
  }

  v8 = objc_msgSend_hash(v5, v6, v7);
  if (v8 != objc_msgSend_hash(self, v9, v10))
  {
    goto LABEL_13;
  }

  objc_msgSend_fontSize(v5, v11, v12);
  if (v15 != self->_fontSize)
  {
    goto LABEL_13;
  }

  v16 = objc_msgSend_fontName(v5, v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v16, v17, self->_fontName);

  if (!isEqualToString)
  {
    goto LABEL_13;
  }

  if (!objc_msgSend_hasExtraFields(v5, v19, v20) || !self->_hasExtraFields || self->_bold != objc_msgSend_bold(v5, v21, v22) || self->_italic != objc_msgSend_italic(v5, v21, v22))
  {
    if ((objc_msgSend_hasExtraFields(v5, v21, v22) & 1) == 0)
    {
      isEqual = !self->_hasExtraFields;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!self->_fontFeatures)
  {
    v30 = objc_msgSend_fontFeatures(v5, v21, v22);

    if (!v30)
    {
      isEqual = 1;
      goto LABEL_14;
    }

    if (!self->_fontFeatures)
    {
      goto LABEL_13;
    }
  }

  v23 = objc_msgSend_fontFeatures(v5, v21, v22);

  if (!v23)
  {
LABEL_13:
    isEqual = 0;
    goto LABEL_14;
  }

  v26 = objc_msgSend_fontFeatures(v5, v24, v25);
  isEqual = objc_msgSend_isEqual_(v26, v27, self->_fontFeatures);

LABEL_14:
  return isEqual & 1;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_fontName, a2, v2);
  v5 = 4;
  if (self->_bold)
  {
    v5 = 2;
  }

  v6 = v4 ^ v5;
  v7 = 16;
  if (self->_italic)
  {
    v7 = 8;
  }

  return v6 ^ v7 ^ self->_fontSize;
}

- (id)description
{
  hasExtraFields = self->_hasExtraFields;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  fontName = self->_fontName;
  if (hasExtraFields)
  {
    if (self->_bold)
    {
      v8 = @"+BOLD";
    }

    else
    {
      v8 = @"-BOLD";
    }

    v9 = @"-ITALIC";
    if (self->_italic)
    {
      v9 = @"+ITALIC";
    }

    if (self->_fontFeatures)
    {
      v10 = @"+FONTFEATURES";
    }

    else
    {
      v10 = @"-FONTFEATURES";
    }

    objc_msgSend_stringWithFormat_(v4, v6, @"(%@*) %p %@ %g %@ %@ %@", v5, self, fontName, *&self->_fontSize, v8, v9, v10);
  }

  else
  {
    objc_msgSend_stringWithFormat_(v4, v6, @"(%@*) %p %@ %g", v5, self, fontName, *&self->_fontSize);
  }
  v11 = ;

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSWPFontCacheKey alloc];
  v7 = objc_msgSend_fontName(self, v5, v6);
  objc_msgSend_fontSize(self, v8, v9);
  v11 = v10;
  hasExtraFields = objc_msgSend_hasExtraFields(self, v12, v13);
  v17 = objc_msgSend_bold(self, v15, v16);
  v20 = objc_msgSend_italic(self, v18, v19);
  v23 = objc_msgSend_fontFeatures(self, v21, v22);
  hasExtraFields_bold_italic_fontFeatures = objc_msgSend_initWithFontName_fontSize_hasExtraFields_bold_italic_fontFeatures_(v4, v24, v7, hasExtraFields, v17, v20, v23, v11);

  return hasExtraFields_bold_italic_fontFeatures;
}

@end