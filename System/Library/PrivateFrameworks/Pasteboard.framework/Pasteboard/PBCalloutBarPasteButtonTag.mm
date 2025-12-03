@interface PBCalloutBarPasteButtonTag
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (CGPoint)titleOrigin;
- (CGSize)size;
- (PBCalloutBarPasteButtonTag)initWithCoder:(id)coder;
- (PBCalloutBarPasteButtonTag)initWithSecureName:(unsigned int)name size:(CGSize)size titleOrigin:(CGPoint)origin titleWidth:(double)width contentScaleLevel:(unint64_t)level;
- (float)backgroundStatisticsForegroundForStyle:(id)style;
- (id)_acceptCalloutBarPasteButtonTagVisit:(id)visit systemInputAssistantPasteButtonTagVisit:(id)tagVisit undoInteractionHUDIconPasteButtonTagVisit:(id)buttonTagVisit undoInteractionHUDTextPasteButtonTagVisit:(id)pasteButtonTagVisit contextMenuPasteButtonTagVisit:(id)menuPasteButtonTagVisit contextMenuDynamicPasteButtonTagVisit:(id)dynamicPasteButtonTagVisit editMenuPasteButtonTagVisit:(id)editMenuPasteButtonTagVisit;
- (id)resolvedStyleForStyle:(id)style;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBCalloutBarPasteButtonTag

- (PBCalloutBarPasteButtonTag)initWithSecureName:(unsigned int)name size:(CGSize)size titleOrigin:(CGPoint)origin titleWidth:(double)width contentScaleLevel:(unint64_t)level
{
  y = origin.y;
  x = origin.x;
  height = size.height;
  width = size.width;
  v15.receiver = self;
  v15.super_class = PBCalloutBarPasteButtonTag;
  result = [(PBCalloutBarPasteButtonTag *)&v15 init];
  if (result)
  {
    result->_secureName = name;
    result->_size.width = width;
    result->_size.height = height;
    result->_titleOrigin.x = x;
    result->_titleOrigin.y = y;
    result->_titleWidth = width;
    result->_contentScaleLevel = level;
  }

  return result;
}

- (PBCalloutBarPasteButtonTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PBCalloutBarPasteButtonTag;
  v5 = [(PBPasteButtonTag *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_secureName = [coderCopy decodeInt32ForKey:@"secureName"];
    [coderCopy decodeSizeForKey:@"size"];
    v5->_size.width = v6;
    v5->_size.height = v7;
    [coderCopy decodePointForKey:@"titleOrigin"];
    v5->_titleOrigin.x = v8;
    v5->_titleOrigin.y = v9;
    [coderCopy decodeDoubleForKey:@"titleWidth"];
    v5->_titleWidth = v10;
    v5->_contentScaleLevel = [coderCopy decodeIntegerForKey:@"contentScaleLevel"];
  }

  return v5;
}

- (float)backgroundStatisticsForegroundForStyle:(id)style
{
  userInterfaceStyle = [style userInterfaceStyle];
  result = NAN;
  if (userInterfaceStyle < 2)
  {
    return 1.0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PBCalloutBarPasteButtonTag;
  coderCopy = coder;
  [(PBPasteButtonTag *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_secureName forKey:{@"secureName", v5.receiver, v5.super_class}];
  [coderCopy encodeSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [coderCopy encodePoint:@"titleOrigin" forKey:{self->_titleOrigin.x, self->_titleOrigin.y}];
  [coderCopy encodeDouble:@"titleWidth" forKey:self->_titleWidth];
  [coderCopy encodeInteger:self->_contentScaleLevel forKey:@"contentScaleLevel"];
}

- (unint64_t)hash
{
  v3 = +[PBCalloutBarPasteButtonTag hash];
  v4 = veorq_s8(vcvtq_u64_f64(self->_size), vcvtq_u64_f64(self->_titleOrigin));
  return *&veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ self->_titleWidth ^ self->_contentScaleLevel ^ self->_secureName ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && self->_secureName == *(equalCopy + 2) && (self->_size.width == equalCopy[4] ? (v5 = self->_size.height == equalCopy[5]) : (v5 = 0), v5 && (self->_titleOrigin.x == equalCopy[6] ? (v6 = self->_titleOrigin.y == equalCopy[7]) : (v6 = 0), v6 && self->_titleWidth == equalCopy[2])) && self->_contentScaleLevel == *(equalCopy + 3);

  return v7;
}

- (BOOL)isValid
{
  if ((self->_secureName & 0xFFFFFFFC) != 0x10000)
  {
    return 0;
  }

  if (self->_contentScaleLevel - 1 > 9)
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
  if (y > height || x + self->_titleWidth > width)
  {
    return 0;
  }

  v6 = width < 0.0 || ((*&width & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v6 && (*&width - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v8 = height < 0.0 || ((*&height & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v8 && (*&height - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v10 = self->_titleOrigin.x;
  v11 = (*&x & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((*&x - 1) < 0xFFFFFFFFFFFFFLL)
  {
    v11 = 1;
  }

  v13 = ((*&x & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && x >= 0.0 || v11;
  v14 = self->_titleOrigin.y;
  v15 = (*&y - 1) < 0xFFFFFFFFFFFFFLL || (*&y & 0x7FFFFFFFFFFFFFFFLL) == 0;
  v17 = ((*&y & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && y >= 0.0 || v15;
  return v13 & v17;
}

- (id)resolvedStyleForStyle:(id)style
{
  v3 = [style copyWithChangeBlock:&__block_literal_global];

  return v3;
}

void __52__PBCalloutBarPasteButtonTag_resolvedStyleForStyle___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setAccessibilityContrast:0];
  [v5 setDisplayRange:0];
  [v5 setLayoutDirection:0];
  [v5 setLegibilityWeight:0];
  v2 = [v5 preferredContentSizeCategory];
  if (v2 <= 3)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  [v5 setPreferredContentSizeCategory:v3];
  GenericGrayGamma2_2 = CGColorCreateGenericGrayGamma2_2(1.0, 0.96);
  [v5 setTintColor:GenericGrayGamma2_2];
  CGColorRelease(GenericGrayGamma2_2);
  [v5 setUserInterfaceIdiom:0];
  [v5 setUserInterfaceStyle:0];
}

- (id)_acceptCalloutBarPasteButtonTagVisit:(id)visit systemInputAssistantPasteButtonTagVisit:(id)tagVisit undoInteractionHUDIconPasteButtonTagVisit:(id)buttonTagVisit undoInteractionHUDTextPasteButtonTagVisit:(id)pasteButtonTagVisit contextMenuPasteButtonTagVisit:(id)menuPasteButtonTagVisit contextMenuDynamicPasteButtonTagVisit:(id)dynamicPasteButtonTagVisit editMenuPasteButtonTagVisit:(id)editMenuPasteButtonTagVisit
{
  if (visit)
  {
    v10 = (*(visit + 2))(visit, self);
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