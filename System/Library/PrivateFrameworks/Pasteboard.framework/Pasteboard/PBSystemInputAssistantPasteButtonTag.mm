@interface PBSystemInputAssistantPasteButtonTag
- ($BEA516A46C1BA1F84587E5D243A711F7)backgroundStatisticsRegionForStyle:(id)style;
- (BOOL)isEqual:(id)equal;
- (PBSystemInputAssistantPasteButtonTag)initWithCoder:(id)coder;
- (PBSystemInputAssistantPasteButtonTag)initWithSite:(int64_t)site;
- (float)backgroundStatisticsFailingContrastForStyle:(id)style;
- (float)backgroundStatisticsForegroundForStyle:(id)style;
- (float)backgroundStatisticsPassingContrastForStyle:(id)style;
- (id)_acceptCalloutBarPasteButtonTagVisit:(id)visit systemInputAssistantPasteButtonTagVisit:(id)tagVisit undoInteractionHUDIconPasteButtonTagVisit:(id)buttonTagVisit undoInteractionHUDTextPasteButtonTagVisit:(id)pasteButtonTagVisit contextMenuPasteButtonTagVisit:(id)menuPasteButtonTagVisit editMenuPasteButtonTagVisit:(id)editMenuPasteButtonTagVisit;
- (id)resolvedStyleForStyle:(id)style;
- (unint64_t)authenticationMessageContextForStyle:(id)style;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBSystemInputAssistantPasteButtonTag

- (PBSystemInputAssistantPasteButtonTag)initWithSite:(int64_t)site
{
  v5.receiver = self;
  v5.super_class = PBSystemInputAssistantPasteButtonTag;
  result = [(PBSystemInputAssistantPasteButtonTag *)&v5 init];
  if (result)
  {
    result->_site = site;
  }

  return result;
}

- (PBSystemInputAssistantPasteButtonTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PBSystemInputAssistantPasteButtonTag;
  v5 = [(PBPasteButtonTag *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_site = [coderCopy decodeIntegerForKey:@"site"];
  }

  return v5;
}

- (unint64_t)authenticationMessageContextForStyle:(id)style
{
  if (self->_site)
  {
    return 0x2BB12563A205EBD1;
  }

  if ([style userInterfaceStyle])
  {
    return 0x5597A8D691A21829;
  }

  return 0x70A52C167AE7B042;
}

- ($BEA516A46C1BA1F84587E5D243A711F7)backgroundStatisticsRegionForStyle:(id)style
{
  styleCopy = style;
  displayScale = [styleCopy displayScale];
  displayScale2 = [styleCopy displayScale];

  return (((2 * displayScale + 4 * displayScale2) << 48) | (displayScale << 33) | ((((2 * displayScale + 4 * displayScale2) >> 1) & 0x3FF) << 17) | (2 * displayScale));
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
    v8.super_class = PBSystemInputAssistantPasteButtonTag;
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
    v8.super_class = PBSystemInputAssistantPasteButtonTag;
    [(PBPasteButtonTag *)&v8 backgroundStatisticsFailingContrastForStyle:styleCopy];
    v5 = v6;
  }

  return v5;
}

- (float)backgroundStatisticsForegroundForStyle:(id)style
{
  [style tintColor];
  UISColorLuminance();
  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PBSystemInputAssistantPasteButtonTag;
  coderCopy = coder;
  [(PBPasteButtonTag *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_site forKey:{@"site", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_site == equalCopy[1];

  return v5;
}

- (id)resolvedStyleForStyle:(id)style
{
  v3 = [style copyWithChangeBlock:&__block_literal_global_129];

  return v3;
}

void __62__PBSystemInputAssistantPasteButtonTag_resolvedStyleForStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAccessibilityButtonShapes:0];
  [v3 setAccessibilityContrast:0];
  [v3 setDisplayRange:0];
  [v3 setLocalization:@"en"];
  [v3 setPreferredContentSizeCategory:3];
  [v3 tintColor];
  UISColorLuminance();
  [v3 setUserInterfaceStyle:v2 > 0.5];
}

- (id)_acceptCalloutBarPasteButtonTagVisit:(id)visit systemInputAssistantPasteButtonTagVisit:(id)tagVisit undoInteractionHUDIconPasteButtonTagVisit:(id)buttonTagVisit undoInteractionHUDTextPasteButtonTagVisit:(id)pasteButtonTagVisit contextMenuPasteButtonTagVisit:(id)menuPasteButtonTagVisit editMenuPasteButtonTagVisit:(id)editMenuPasteButtonTagVisit
{
  if (tagVisit)
  {
    v9 = (*(tagVisit + 2))(tagVisit, self, visit);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end