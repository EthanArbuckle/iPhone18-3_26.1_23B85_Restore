@interface PBEditMenuPasteButtonTag
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (CGPoint)contentOrigin;
- (CGSize)size;
- (PBEditMenuPasteButtonTag)initWithCoder:(id)coder;
- (PBEditMenuPasteButtonTag)initWithSecureName:(unsigned int)name size:(CGSize)size contentOrigin:(CGPoint)origin displayMode:(unint64_t)mode;
- (float)backgroundStatisticsForegroundForStyle:(id)style;
- (id)_acceptCalloutBarPasteButtonTagVisit:(id)visit systemInputAssistantPasteButtonTagVisit:(id)tagVisit undoInteractionHUDIconPasteButtonTagVisit:(id)buttonTagVisit undoInteractionHUDTextPasteButtonTagVisit:(id)pasteButtonTagVisit contextMenuPasteButtonTagVisit:(id)menuPasteButtonTagVisit contextMenuDynamicPasteButtonTagVisit:(id)dynamicPasteButtonTagVisit editMenuPasteButtonTagVisit:(id)editMenuPasteButtonTagVisit;
- (id)resolvedStyleForStyle:(id)style;
- (unint64_t)authenticationMessageContextForStyle:(id)style;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBEditMenuPasteButtonTag

- (PBEditMenuPasteButtonTag)initWithSecureName:(unsigned int)name size:(CGSize)size contentOrigin:(CGPoint)origin displayMode:(unint64_t)mode
{
  y = origin.y;
  x = origin.x;
  height = size.height;
  width = size.width;
  v13.receiver = self;
  v13.super_class = PBEditMenuPasteButtonTag;
  result = [(PBEditMenuPasteButtonTag *)&v13 init];
  if (result)
  {
    result->_secureName = name;
    result->_size.width = width;
    result->_size.height = height;
    result->_contentOrigin.x = x;
    result->_contentOrigin.y = y;
    result->_displayMode = mode;
  }

  return result;
}

- (PBEditMenuPasteButtonTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PBEditMenuPasteButtonTag;
  v5 = [(PBPasteButtonTag *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_secureName = [coderCopy decodeInt32ForKey:@"secureName"];
    [coderCopy decodeSizeForKey:@"size"];
    v5->_size.width = v6;
    v5->_size.height = v7;
    [coderCopy decodePointForKey:@"titleOrigin"];
    v5->_contentOrigin.x = v8;
    v5->_contentOrigin.y = v9;
    v5->_displayMode = [coderCopy decodeIntegerForKey:@"displayMode"];
  }

  return v5;
}

- (unint64_t)authenticationMessageContextForStyle:(id)style
{
  if ([style userInterfaceStyle])
  {
    return 0x926FA0AD41ACE950;
  }

  else
  {
    return 0x37CA128B814942F4;
  }
}

- (float)backgroundStatisticsForegroundForStyle:(id)style
{
  userInterfaceStyle = [style userInterfaceStyle];
  result = NAN;
  if (userInterfaceStyle == 1)
  {
    result = 1.0;
  }

  if (!userInterfaceStyle)
  {
    return 0.0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PBEditMenuPasteButtonTag;
  coderCopy = coder;
  [(PBPasteButtonTag *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_secureName forKey:{@"secureName", v5.receiver, v5.super_class}];
  [coderCopy encodeSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [coderCopy encodePoint:@"titleOrigin" forKey:{self->_contentOrigin.x, self->_contentOrigin.y}];
  [coderCopy encodeInteger:self->_displayMode forKey:@"displayMode"];
}

- (unint64_t)hash
{
  v3 = +[PBEditMenuPasteButtonTag hash];
  v4 = veorq_s8(vcvtq_u64_f64(self->_size), vcvtq_u64_f64(self->_contentOrigin));
  return *&veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ self->_displayMode ^ v3 ^ self->_secureName;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && self->_secureName == *(equalCopy + 2) && (self->_size.width == equalCopy[3] ? (v5 = self->_size.height == equalCopy[4]) : (v5 = 0), v5 && (self->_contentOrigin.x == equalCopy[5] ? (v6 = self->_contentOrigin.y == equalCopy[6]) : (v6 = 0), v6)) && self->_displayMode == *(equalCopy + 2);

  return v7;
}

- (BOOL)isValid
{
  if ((self->_secureName & 0xFFFFFFFC) != 0x10000)
  {
    return 0;
  }

  x = self->_contentOrigin.x;
  width = self->_size.width;
  if (x > width)
  {
    return 0;
  }

  y = self->_contentOrigin.y;
  height = self->_size.height;
  if (y > height)
  {
    return 0;
  }

  v6 = ((*&width & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53;
  v7 = *&width - 1;
  if (width >= 0.0)
  {
    v8 = v6 >= 0x3FE;
    v9 = v6 == 1022;
  }

  else
  {
    v8 = 1;
    v9 = 0;
  }

  if (!v9 && v8)
  {
    v10 = v7 >= 0xFFFFFFFFFFFFELL;
    v11 = v7 == 0xFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if (!v11 && v10)
  {
    return 0;
  }

  v12 = ((*&height & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53;
  v13 = *&height - 1;
  if (height >= 0.0)
  {
    v14 = v12 >= 0x3FE;
    v15 = v12 == 1022;
  }

  else
  {
    v14 = 1;
    v15 = 0;
  }

  if (!v15 && v14)
  {
    v16 = v13 >= 0xFFFFFFFFFFFFELL;
    v17 = v13 == 0xFFFFFFFFFFFFELL;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (!v17 && v16)
  {
    return 0;
  }

  v18 = *&x & 0x7FFFFFFFFFFFFFFFLL;
  v19 = (*&x & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v20 = ((*&x & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (x >= 0.0)
  {
    v20 = 0;
  }

  if (self->_contentOrigin.x >= 0.0)
  {
    v19 = 0;
  }

  v23 = __OFSUB__(v18, 0x7FF0000000000000);
  v21 = v18 == 0x7FF0000000000000;
  v22 = v18 - 0x7FF0000000000000 < 0;
  v24 = v18 == 0x7FF0000000000000 || v19;
  if (!(v22 ^ v23 | v21))
  {
    v24 = 1;
  }

  if ((v24 | v20))
  {
    return 0;
  }

  v25 = self->_contentOrigin.y;
  v26 = (*&y & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v27 = ((*&y & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (y >= 0.0)
  {
    v27 = 0;
    v26 = 0;
  }

  if ((*&y & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v26 = 1;
  }

  if ((*&y & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v26 = 1;
  }

  return !v26 && !v27 && self->_displayMode < 3;
}

- (id)resolvedStyleForStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__PBEditMenuPasteButtonTag_resolvedStyleForStyle___block_invoke;
  v8[3] = &unk_279A06210;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
  v6 = [v5 copyWithChangeBlock:v8];

  return v6;
}

void __50__PBEditMenuPasteButtonTag_resolvedStyleForStyle___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setAccessibilityButtonShapes:0];
  [v4 setAccessibilityContrast:0];
  [v4 setDisplayRange:0];
  CopyWithAlpha = CGColorCreateCopyWithAlpha([*(a1 + 32) baseForegroundColorForStyle:*(a1 + 40)], 0.96);
  [v4 setTintColor:CopyWithAlpha];
  CFRelease(CopyWithAlpha);
  [v4 setUserInterfaceIdiom:0];
}

- (id)_acceptCalloutBarPasteButtonTagVisit:(id)visit systemInputAssistantPasteButtonTagVisit:(id)tagVisit undoInteractionHUDIconPasteButtonTagVisit:(id)buttonTagVisit undoInteractionHUDTextPasteButtonTagVisit:(id)pasteButtonTagVisit contextMenuPasteButtonTagVisit:(id)menuPasteButtonTagVisit contextMenuDynamicPasteButtonTagVisit:(id)dynamicPasteButtonTagVisit editMenuPasteButtonTagVisit:(id)editMenuPasteButtonTagVisit
{
  editMenuPasteButtonTagVisitCopy = editMenuPasteButtonTagVisit;
  if (editMenuPasteButtonTagVisit)
  {
    editMenuPasteButtonTagVisitCopy = (*(editMenuPasteButtonTagVisit + 2))();
  }

  return editMenuPasteButtonTagVisitCopy;
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)contentOrigin
{
  objc_copyStruct(v4, &self->_contentOrigin, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end