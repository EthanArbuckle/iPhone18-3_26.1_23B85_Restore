@interface PBContextMenuPasteButtonTag
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (CGPoint)titleOrigin;
- (CGSize)size;
- (PBContextMenuPasteButtonTag)initWithCoder:(id)coder;
- (PBContextMenuPasteButtonTag)initWithSecureName:(unsigned int)name size:(CGSize)size titleOrigin:(CGPoint)origin layoutSize:(int64_t)layoutSize hasTrailingGutter:(BOOL)gutter;
- (float)backgroundStatisticsFailingContrastForStyle:(id)style;
- (float)backgroundStatisticsForegroundForStyle:(id)style;
- (float)backgroundStatisticsPassingContrastForStyle:(id)style;
- (id)_acceptCalloutBarPasteButtonTagVisit:(id)visit systemInputAssistantPasteButtonTagVisit:(id)tagVisit undoInteractionHUDIconPasteButtonTagVisit:(id)buttonTagVisit undoInteractionHUDTextPasteButtonTagVisit:(id)pasteButtonTagVisit contextMenuPasteButtonTagVisit:(id)menuPasteButtonTagVisit contextMenuDynamicPasteButtonTagVisit:(id)dynamicPasteButtonTagVisit editMenuPasteButtonTagVisit:(id)editMenuPasteButtonTagVisit;
- (id)resolvedStyleForStyle:(id)style;
- (unint64_t)authenticationMessageContextForStyle:(id)style;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBContextMenuPasteButtonTag

- (PBContextMenuPasteButtonTag)initWithSecureName:(unsigned int)name size:(CGSize)size titleOrigin:(CGPoint)origin layoutSize:(int64_t)layoutSize hasTrailingGutter:(BOOL)gutter
{
  y = origin.y;
  x = origin.x;
  height = size.height;
  width = size.width;
  v15.receiver = self;
  v15.super_class = PBContextMenuPasteButtonTag;
  result = [(PBContextMenuPasteButtonTag *)&v15 init];
  if (result)
  {
    result->_secureName = name;
    result->_size.width = width;
    result->_size.height = height;
    result->_titleOrigin.x = x;
    result->_titleOrigin.y = y;
    result->_layoutSize = layoutSize;
    result->_hasTrailingGutter = gutter;
  }

  return result;
}

- (PBContextMenuPasteButtonTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PBContextMenuPasteButtonTag;
  v5 = [(PBPasteButtonTag *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_secureName = [coderCopy decodeInt32ForKey:@"secureName"];
    [coderCopy decodeSizeForKey:@"size"];
    v5->_size.width = v6;
    v5->_size.height = v7;
    [coderCopy decodePointForKey:@"titleOrigin"];
    v5->_titleOrigin.x = v8;
    v5->_titleOrigin.y = v9;
    v5->_layoutSize = [coderCopy decodeIntegerForKey:@"layoutSize"];
    v5->_hasTrailingGutter = [coderCopy decodeBoolForKey:@"hasTrailingGutter"];
  }

  return v5;
}

- (unint64_t)authenticationMessageContextForStyle:(id)style
{
  if ([style userInterfaceStyle])
  {
    return 0xA9745AB1695ED68BLL;
  }

  else
  {
    return 0xF635B19E69CD15ECLL;
  }
}

- (float)backgroundStatisticsPassingContrastForStyle:(id)style
{
  styleCopy = style;
  if ([styleCopy userInterfaceStyle] == 1)
  {
    v5 = 2.1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PBContextMenuPasteButtonTag;
    [(PBPasteButtonTag *)&v8 backgroundStatisticsPassingContrastForStyle:styleCopy];
    v5 = v6;
  }

  return v5;
}

- (float)backgroundStatisticsFailingContrastForStyle:(id)style
{
  styleCopy = style;
  if ([styleCopy userInterfaceStyle] == 1)
  {
    v5 = 1.9;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PBContextMenuPasteButtonTag;
    [(PBPasteButtonTag *)&v8 backgroundStatisticsFailingContrastForStyle:styleCopy];
    v5 = v6;
  }

  return v5;
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
  v5.super_class = PBContextMenuPasteButtonTag;
  coderCopy = coder;
  [(PBPasteButtonTag *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_secureName forKey:{@"secureName", v5.receiver, v5.super_class}];
  [coderCopy encodeSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [coderCopy encodePoint:@"titleOrigin" forKey:{self->_titleOrigin.x, self->_titleOrigin.y}];
  [coderCopy encodeInteger:self->_layoutSize forKey:@"layoutSize"];
  [coderCopy encodeBool:self->_hasTrailingGutter forKey:@"hasTrailingGutter"];
}

- (unint64_t)hash
{
  v3 = +[PBContextMenuPasteButtonTag hash];
  v4 = veorq_s8(vcvtq_u64_f64(self->_size), vcvtq_u64_f64(self->_titleOrigin));
  return *&veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ self->_hasTrailingGutter ^ self->_layoutSize ^ self->_secureName ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && self->_secureName == *(equalCopy + 3) && (self->_size.width == equalCopy[3] ? (v5 = self->_size.height == equalCopy[4]) : (v5 = 0), v5 && (self->_titleOrigin.x == equalCopy[5] ? (v6 = self->_titleOrigin.y == equalCopy[6]) : (v6 = 0), v6 && self->_layoutSize == *(equalCopy + 2))) && self->_hasTrailingGutter == *(equalCopy + 8);

  return v7;
}

- (BOOL)isValid
{
  if (self->_secureName - 0x10000 > 4)
  {
    return 0;
  }

  x = self->_titleOrigin.x;
  width = self->_size.width;
  if (x > width)
  {
    return 0;
  }

  y = self->_titleOrigin.y;
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

  if (self->_titleOrigin.x >= 0.0)
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

  v25 = self->_titleOrigin.y;
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

  return !v26 && !v27 && self->_layoutSize < 3;
}

- (id)resolvedStyleForStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__PBContextMenuPasteButtonTag_resolvedStyleForStyle___block_invoke;
  v8[3] = &unk_279A06210;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
  v6 = [v5 copyWithChangeBlock:v8];

  return v6;
}

void __53__PBContextMenuPasteButtonTag_resolvedStyleForStyle___block_invoke(uint64_t a1, void *a2)
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
  if (menuPasteButtonTagVisit)
  {
    v10 = (*(menuPasteButtonTagVisit + 2))(menuPasteButtonTagVisit, self, visit, tagVisit, buttonTagVisit, pasteButtonTagVisit);
  }

  else
  {
    v10 = 0;
  }

  return v10;
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

- (CGPoint)titleOrigin
{
  objc_copyStruct(v4, &self->_titleOrigin, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end