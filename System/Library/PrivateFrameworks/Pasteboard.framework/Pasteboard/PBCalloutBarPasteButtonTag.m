@interface PBCalloutBarPasteButtonTag
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (CGPoint)titleOrigin;
- (CGSize)size;
- (PBCalloutBarPasteButtonTag)initWithCoder:(id)a3;
- (PBCalloutBarPasteButtonTag)initWithSecureName:(unsigned int)a3 size:(CGSize)a4 titleOrigin:(CGPoint)a5 titleWidth:(double)a6 contentScaleLevel:(unint64_t)a7;
- (float)backgroundStatisticsForegroundForStyle:(id)a3;
- (id)_acceptCalloutBarPasteButtonTagVisit:(id)a3 systemInputAssistantPasteButtonTagVisit:(id)a4 undoInteractionHUDIconPasteButtonTagVisit:(id)a5 undoInteractionHUDTextPasteButtonTagVisit:(id)a6 contextMenuPasteButtonTagVisit:(id)a7 contextMenuDynamicPasteButtonTagVisit:(id)a8 editMenuPasteButtonTagVisit:(id)a9;
- (id)resolvedStyleForStyle:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PBCalloutBarPasteButtonTag

- (PBCalloutBarPasteButtonTag)initWithSecureName:(unsigned int)a3 size:(CGSize)a4 titleOrigin:(CGPoint)a5 titleWidth:(double)a6 contentScaleLevel:(unint64_t)a7
{
  y = a5.y;
  x = a5.x;
  height = a4.height;
  width = a4.width;
  v15.receiver = self;
  v15.super_class = PBCalloutBarPasteButtonTag;
  result = [(PBCalloutBarPasteButtonTag *)&v15 init];
  if (result)
  {
    result->_secureName = a3;
    result->_size.width = width;
    result->_size.height = height;
    result->_titleOrigin.x = x;
    result->_titleOrigin.y = y;
    result->_titleWidth = a6;
    result->_contentScaleLevel = a7;
  }

  return result;
}

- (PBCalloutBarPasteButtonTag)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PBCalloutBarPasteButtonTag;
  v5 = [(PBPasteButtonTag *)&v12 initWithCoder:v4];
  if (v5)
  {
    v5->_secureName = [v4 decodeInt32ForKey:@"secureName"];
    [v4 decodeSizeForKey:@"size"];
    v5->_size.width = v6;
    v5->_size.height = v7;
    [v4 decodePointForKey:@"titleOrigin"];
    v5->_titleOrigin.x = v8;
    v5->_titleOrigin.y = v9;
    [v4 decodeDoubleForKey:@"titleWidth"];
    v5->_titleWidth = v10;
    v5->_contentScaleLevel = [v4 decodeIntegerForKey:@"contentScaleLevel"];
  }

  return v5;
}

- (float)backgroundStatisticsForegroundForStyle:(id)a3
{
  v3 = [a3 userInterfaceStyle];
  result = NAN;
  if (v3 < 2)
  {
    return 1.0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PBCalloutBarPasteButtonTag;
  v4 = a3;
  [(PBPasteButtonTag *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:self->_secureName forKey:{@"secureName", v5.receiver, v5.super_class}];
  [v4 encodeSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [v4 encodePoint:@"titleOrigin" forKey:{self->_titleOrigin.x, self->_titleOrigin.y}];
  [v4 encodeDouble:@"titleWidth" forKey:self->_titleWidth];
  [v4 encodeInteger:self->_contentScaleLevel forKey:@"contentScaleLevel"];
}

- (unint64_t)hash
{
  v3 = +[PBCalloutBarPasteButtonTag hash];
  v4 = veorq_s8(vcvtq_u64_f64(self->_size), vcvtq_u64_f64(self->_titleOrigin));
  return *&veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ self->_titleWidth ^ self->_contentScaleLevel ^ self->_secureName ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && self->_secureName == *(v4 + 2) && (self->_size.width == v4[4] ? (v5 = self->_size.height == v4[5]) : (v5 = 0), v5 && (self->_titleOrigin.x == v4[6] ? (v6 = self->_titleOrigin.y == v4[7]) : (v6 = 0), v6 && self->_titleWidth == v4[2])) && self->_contentScaleLevel == *(v4 + 3);

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

- (id)resolvedStyleForStyle:(id)a3
{
  v3 = [a3 copyWithChangeBlock:&__block_literal_global];

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

- (id)_acceptCalloutBarPasteButtonTagVisit:(id)a3 systemInputAssistantPasteButtonTagVisit:(id)a4 undoInteractionHUDIconPasteButtonTagVisit:(id)a5 undoInteractionHUDTextPasteButtonTagVisit:(id)a6 contextMenuPasteButtonTagVisit:(id)a7 contextMenuDynamicPasteButtonTagVisit:(id)a8 editMenuPasteButtonTagVisit:(id)a9
{
  if (a3)
  {
    v10 = (*(a3 + 2))(a3, self);
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