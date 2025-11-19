@interface PBContextMenuDynamicPasteButtonTag
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (CGRect)iconFrame;
- (CGRect)titleFrame;
- (CGSize)size;
- (PBContextMenuDynamicPasteButtonTag)initWithCoder:(id)a3;
- (PBContextMenuDynamicPasteButtonTag)initWithSecureName:(unsigned int)a3 size:(CGSize)a4 titleFrame:(CGRect)a5 iconFrame:(CGRect)a6 layout:(int64_t)a7 layoutSize:(int64_t)a8;
- (float)backgroundStatisticsFailingContrastForStyle:(id)a3;
- (float)backgroundStatisticsForegroundForStyle:(id)a3;
- (float)backgroundStatisticsPassingContrastForStyle:(id)a3;
- (id)_acceptCalloutBarPasteButtonTagVisit:(id)a3 systemInputAssistantPasteButtonTagVisit:(id)a4 undoInteractionHUDIconPasteButtonTagVisit:(id)a5 undoInteractionHUDTextPasteButtonTagVisit:(id)a6 contextMenuPasteButtonTagVisit:(id)a7 contextMenuDynamicPasteButtonTagVisit:(id)a8 editMenuPasteButtonTagVisit:(id)a9;
- (id)resolvedStyleForStyle:(id)a3;
- (unint64_t)authenticationMessageContextForStyle:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PBContextMenuDynamicPasteButtonTag

- (PBContextMenuDynamicPasteButtonTag)initWithSecureName:(unsigned int)a3 size:(CGSize)a4 titleFrame:(CGRect)a5 iconFrame:(CGRect)a6 layout:(int64_t)a7 layoutSize:(int64_t)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a4.height;
  v15 = a4.width;
  v18.receiver = self;
  v18.super_class = PBContextMenuDynamicPasteButtonTag;
  result = [(PBContextMenuDynamicPasteButtonTag *)&v18 init];
  if (result)
  {
    result->_secureName = a3;
    result->_size.width = v15;
    result->_size.height = v14;
    result->_titleFrame.origin.x = x;
    result->_titleFrame.origin.y = y;
    result->_titleFrame.size.width = width;
    result->_titleFrame.size.height = height;
    result->_iconFrame = a6;
    result->_layout = a7;
    result->_layoutSize = a8;
  }

  return result;
}

- (PBContextMenuDynamicPasteButtonTag)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PBContextMenuDynamicPasteButtonTag;
  v5 = [(PBPasteButtonTag *)&v17 initWithCoder:v4];
  if (v5)
  {
    v5->_secureName = [v4 decodeInt32ForKey:@"secureName"];
    [v4 decodeSizeForKey:@"size"];
    v5->_size.width = v6;
    v5->_size.height = v7;
    [v4 decodeRectForKey:@"titleFrame"];
    v5->_titleFrame.origin.x = v8;
    v5->_titleFrame.origin.y = v9;
    v5->_titleFrame.size.width = v10;
    v5->_titleFrame.size.height = v11;
    [v4 decodeRectForKey:@"iconFrame"];
    v5->_iconFrame.origin.x = v12;
    v5->_iconFrame.origin.y = v13;
    v5->_iconFrame.size.width = v14;
    v5->_iconFrame.size.height = v15;
    v5->_layout = [v4 decodeIntegerForKey:@"contextMenuLayout"];
    v5->_layoutSize = [v4 decodeIntegerForKey:@"layoutSize"];
  }

  return v5;
}

- (unint64_t)authenticationMessageContextForStyle:(id)a3
{
  if ([a3 userInterfaceStyle])
  {
    return 0xA9745AB1695ED68BLL;
  }

  else
  {
    return 0xF635B19E69CD15ECLL;
  }
}

- (float)backgroundStatisticsPassingContrastForStyle:(id)a3
{
  v4 = a3;
  if ([v4 userInterfaceStyle] == 1)
  {
    v5 = 2.1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PBContextMenuDynamicPasteButtonTag;
    [(PBPasteButtonTag *)&v8 backgroundStatisticsPassingContrastForStyle:v4];
    v5 = v6;
  }

  return v5;
}

- (float)backgroundStatisticsFailingContrastForStyle:(id)a3
{
  v4 = a3;
  if ([v4 userInterfaceStyle] == 1)
  {
    v5 = 1.9;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PBContextMenuDynamicPasteButtonTag;
    [(PBPasteButtonTag *)&v8 backgroundStatisticsFailingContrastForStyle:v4];
    v5 = v6;
  }

  return v5;
}

- (float)backgroundStatisticsForegroundForStyle:(id)a3
{
  v3 = [a3 userInterfaceStyle];
  result = NAN;
  if (v3 == 1)
  {
    result = 1.0;
  }

  if (!v3)
  {
    return 0.0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PBContextMenuDynamicPasteButtonTag;
  v4 = a3;
  [(PBPasteButtonTag *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:self->_secureName forKey:{@"secureName", v5.receiver, v5.super_class}];
  [v4 encodeSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [v4 encodeRect:@"titleFrame" forKey:{self->_titleFrame.origin.x, self->_titleFrame.origin.y, self->_titleFrame.size.width, self->_titleFrame.size.height}];
  [v4 encodeRect:@"iconFrame" forKey:{self->_iconFrame.origin.x, self->_iconFrame.origin.y, self->_iconFrame.size.width, self->_iconFrame.size.height}];
  [v4 encodeInteger:self->_layout forKey:@"contextMenuLayout"];
  [v4 encodeInteger:self->_layoutSize forKey:@"layoutSize"];
}

- (unint64_t)hash
{
  v3 = +[PBContextMenuPasteButtonTag hash];
  v4 = veorq_s8(veorq_s8(vcvtq_u64_f64(self->_size), vcvtq_u64_f64(self->_titleFrame.size)), veorq_s8(vcvtq_u64_f64(self->_titleFrame.origin), vcvtq_u64_f64(self->_iconFrame.origin)));
  return *&veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ self->_iconFrame.size.width ^ self->_layout ^ self->_iconFrame.size.height ^ self->_layoutSize ^ self->_secureName ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && self->_secureName == *(v4 + 2) && (self->_size.width == *(v4 + 4) ? (v5 = self->_size.height == *(v4 + 5)) : (v5 = 0), v5 && CGRectEqualToRect(self->_titleFrame, *(v4 + 48)) && CGRectEqualToRect(self->_iconFrame, *(v4 + 80)) && self->_layout == *(v4 + 3)) && self->_layoutSize == *(v4 + 2);

  return v6;
}

- (BOOL)isValid
{
  if (self->_secureName - 65541 >= 0xFFFFFFFB)
  {
    width = self->_size.width;
    height = self->_size.height;
    v7.origin.x = 0.0;
    v7.origin.y = 0.0;
    v7.size.width = width;
    v7.size.height = height;
    v2 = CGRectContainsRect(v7, self->_titleFrame);
    if (v2)
    {
      v8.origin.x = 0.0;
      v8.origin.y = 0.0;
      v8.size.width = width;
      v8.size.height = height;
      v2 = CGRectContainsRect(v8, self->_iconFrame);
      if (v2)
      {
        LOBYTE(v2) = self->_layoutSize <= 2 && self->_layout < 2;
      }
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (id)resolvedStyleForStyle:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__PBContextMenuDynamicPasteButtonTag_resolvedStyleForStyle___block_invoke;
  v8[3] = &unk_279A06210;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [v5 copyWithChangeBlock:v8];

  return v6;
}

void __60__PBContextMenuDynamicPasteButtonTag_resolvedStyleForStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAccessibilityButtonShapes:0];
  [v3 setAccessibilityContrast:0];
  [v3 setDisplayRange:0];
  CopyWithAlpha = CGColorCreateCopyWithAlpha([*(a1 + 32) baseForegroundColorForStyle:*(a1 + 40)], 0.96);
  [v3 setTintColor:CopyWithAlpha];

  CFRelease(CopyWithAlpha);
}

- (id)_acceptCalloutBarPasteButtonTagVisit:(id)a3 systemInputAssistantPasteButtonTagVisit:(id)a4 undoInteractionHUDIconPasteButtonTagVisit:(id)a5 undoInteractionHUDTextPasteButtonTagVisit:(id)a6 contextMenuPasteButtonTagVisit:(id)a7 contextMenuDynamicPasteButtonTagVisit:(id)a8 editMenuPasteButtonTagVisit:(id)a9
{
  if (a8)
  {
    v10 = (*(a8 + 2))(a8, self, a3, a4, a5, a6, a7);
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

- (CGRect)titleFrame
{
  objc_copyStruct(v6, &self->_titleFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)iconFrame
{
  objc_copyStruct(v6, &self->_iconFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end