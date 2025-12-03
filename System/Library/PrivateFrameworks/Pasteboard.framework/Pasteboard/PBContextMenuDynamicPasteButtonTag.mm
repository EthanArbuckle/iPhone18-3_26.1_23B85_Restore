@interface PBContextMenuDynamicPasteButtonTag
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (CGRect)iconFrame;
- (CGRect)titleFrame;
- (CGSize)size;
- (PBContextMenuDynamicPasteButtonTag)initWithCoder:(id)coder;
- (PBContextMenuDynamicPasteButtonTag)initWithSecureName:(unsigned int)name size:(CGSize)size titleFrame:(CGRect)frame iconFrame:(CGRect)iconFrame layout:(int64_t)layout layoutSize:(int64_t)layoutSize;
- (float)backgroundStatisticsFailingContrastForStyle:(id)style;
- (float)backgroundStatisticsForegroundForStyle:(id)style;
- (float)backgroundStatisticsPassingContrastForStyle:(id)style;
- (id)_acceptCalloutBarPasteButtonTagVisit:(id)visit systemInputAssistantPasteButtonTagVisit:(id)tagVisit undoInteractionHUDIconPasteButtonTagVisit:(id)buttonTagVisit undoInteractionHUDTextPasteButtonTagVisit:(id)pasteButtonTagVisit contextMenuPasteButtonTagVisit:(id)menuPasteButtonTagVisit contextMenuDynamicPasteButtonTagVisit:(id)dynamicPasteButtonTagVisit editMenuPasteButtonTagVisit:(id)editMenuPasteButtonTagVisit;
- (id)resolvedStyleForStyle:(id)style;
- (unint64_t)authenticationMessageContextForStyle:(id)style;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBContextMenuDynamicPasteButtonTag

- (PBContextMenuDynamicPasteButtonTag)initWithSecureName:(unsigned int)name size:(CGSize)size titleFrame:(CGRect)frame iconFrame:(CGRect)iconFrame layout:(int64_t)layout layoutSize:(int64_t)layoutSize
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14 = size.height;
  v15 = size.width;
  v18.receiver = self;
  v18.super_class = PBContextMenuDynamicPasteButtonTag;
  result = [(PBContextMenuDynamicPasteButtonTag *)&v18 init];
  if (result)
  {
    result->_secureName = name;
    result->_size.width = v15;
    result->_size.height = v14;
    result->_titleFrame.origin.x = x;
    result->_titleFrame.origin.y = y;
    result->_titleFrame.size.width = width;
    result->_titleFrame.size.height = height;
    result->_iconFrame = iconFrame;
    result->_layout = layout;
    result->_layoutSize = layoutSize;
  }

  return result;
}

- (PBContextMenuDynamicPasteButtonTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PBContextMenuDynamicPasteButtonTag;
  v5 = [(PBPasteButtonTag *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_secureName = [coderCopy decodeInt32ForKey:@"secureName"];
    [coderCopy decodeSizeForKey:@"size"];
    v5->_size.width = v6;
    v5->_size.height = v7;
    [coderCopy decodeRectForKey:@"titleFrame"];
    v5->_titleFrame.origin.x = v8;
    v5->_titleFrame.origin.y = v9;
    v5->_titleFrame.size.width = v10;
    v5->_titleFrame.size.height = v11;
    [coderCopy decodeRectForKey:@"iconFrame"];
    v5->_iconFrame.origin.x = v12;
    v5->_iconFrame.origin.y = v13;
    v5->_iconFrame.size.width = v14;
    v5->_iconFrame.size.height = v15;
    v5->_layout = [coderCopy decodeIntegerForKey:@"contextMenuLayout"];
    v5->_layoutSize = [coderCopy decodeIntegerForKey:@"layoutSize"];
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
    v8.super_class = PBContextMenuDynamicPasteButtonTag;
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
    v8.super_class = PBContextMenuDynamicPasteButtonTag;
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
  v5.super_class = PBContextMenuDynamicPasteButtonTag;
  coderCopy = coder;
  [(PBPasteButtonTag *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_secureName forKey:{@"secureName", v5.receiver, v5.super_class}];
  [coderCopy encodeSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [coderCopy encodeRect:@"titleFrame" forKey:{self->_titleFrame.origin.x, self->_titleFrame.origin.y, self->_titleFrame.size.width, self->_titleFrame.size.height}];
  [coderCopy encodeRect:@"iconFrame" forKey:{self->_iconFrame.origin.x, self->_iconFrame.origin.y, self->_iconFrame.size.width, self->_iconFrame.size.height}];
  [coderCopy encodeInteger:self->_layout forKey:@"contextMenuLayout"];
  [coderCopy encodeInteger:self->_layoutSize forKey:@"layoutSize"];
}

- (unint64_t)hash
{
  v3 = +[PBContextMenuPasteButtonTag hash];
  v4 = veorq_s8(veorq_s8(vcvtq_u64_f64(self->_size), vcvtq_u64_f64(self->_titleFrame.size)), veorq_s8(vcvtq_u64_f64(self->_titleFrame.origin), vcvtq_u64_f64(self->_iconFrame.origin)));
  return *&veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ self->_iconFrame.size.width ^ self->_layout ^ self->_iconFrame.size.height ^ self->_layoutSize ^ self->_secureName ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && self->_secureName == *(equalCopy + 2) && (self->_size.width == *(equalCopy + 4) ? (v5 = self->_size.height == *(equalCopy + 5)) : (v5 = 0), v5 && CGRectEqualToRect(self->_titleFrame, *(equalCopy + 48)) && CGRectEqualToRect(self->_iconFrame, *(equalCopy + 80)) && self->_layout == *(equalCopy + 3)) && self->_layoutSize == *(equalCopy + 2);

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

- (id)resolvedStyleForStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__PBContextMenuDynamicPasteButtonTag_resolvedStyleForStyle___block_invoke;
  v8[3] = &unk_279A06210;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
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

- (id)_acceptCalloutBarPasteButtonTagVisit:(id)visit systemInputAssistantPasteButtonTagVisit:(id)tagVisit undoInteractionHUDIconPasteButtonTagVisit:(id)buttonTagVisit undoInteractionHUDTextPasteButtonTagVisit:(id)pasteButtonTagVisit contextMenuPasteButtonTagVisit:(id)menuPasteButtonTagVisit contextMenuDynamicPasteButtonTagVisit:(id)dynamicPasteButtonTagVisit editMenuPasteButtonTagVisit:(id)editMenuPasteButtonTagVisit
{
  if (dynamicPasteButtonTagVisit)
  {
    v10 = (*(dynamicPasteButtonTagVisit + 2))(dynamicPasteButtonTagVisit, self, visit, tagVisit, buttonTagVisit, pasteButtonTagVisit, menuPasteButtonTagVisit);
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