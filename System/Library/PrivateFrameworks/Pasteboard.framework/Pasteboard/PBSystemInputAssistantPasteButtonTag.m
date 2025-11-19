@interface PBSystemInputAssistantPasteButtonTag
- ($BEA516A46C1BA1F84587E5D243A711F7)backgroundStatisticsRegionForStyle:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PBSystemInputAssistantPasteButtonTag)initWithCoder:(id)a3;
- (PBSystemInputAssistantPasteButtonTag)initWithSite:(int64_t)a3;
- (float)backgroundStatisticsFailingContrastForStyle:(id)a3;
- (float)backgroundStatisticsForegroundForStyle:(id)a3;
- (float)backgroundStatisticsPassingContrastForStyle:(id)a3;
- (id)_acceptCalloutBarPasteButtonTagVisit:(id)a3 systemInputAssistantPasteButtonTagVisit:(id)a4 undoInteractionHUDIconPasteButtonTagVisit:(id)a5 undoInteractionHUDTextPasteButtonTagVisit:(id)a6 contextMenuPasteButtonTagVisit:(id)a7 editMenuPasteButtonTagVisit:(id)a8;
- (id)resolvedStyleForStyle:(id)a3;
- (unint64_t)authenticationMessageContextForStyle:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PBSystemInputAssistantPasteButtonTag

- (PBSystemInputAssistantPasteButtonTag)initWithSite:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PBSystemInputAssistantPasteButtonTag;
  result = [(PBSystemInputAssistantPasteButtonTag *)&v5 init];
  if (result)
  {
    result->_site = a3;
  }

  return result;
}

- (PBSystemInputAssistantPasteButtonTag)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PBSystemInputAssistantPasteButtonTag;
  v5 = [(PBPasteButtonTag *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_site = [v4 decodeIntegerForKey:@"site"];
  }

  return v5;
}

- (unint64_t)authenticationMessageContextForStyle:(id)a3
{
  if (self->_site)
  {
    return 0x2BB12563A205EBD1;
  }

  if ([a3 userInterfaceStyle])
  {
    return 0x5597A8D691A21829;
  }

  return 0x70A52C167AE7B042;
}

- ($BEA516A46C1BA1F84587E5D243A711F7)backgroundStatisticsRegionForStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 displayScale];
  v5 = [v3 displayScale];

  return (((2 * v4 + 4 * v5) << 48) | (v4 << 33) | ((((2 * v4 + 4 * v5) >> 1) & 0x3FF) << 17) | (2 * v4));
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
    v8.super_class = PBSystemInputAssistantPasteButtonTag;
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
    v8.super_class = PBSystemInputAssistantPasteButtonTag;
    [(PBPasteButtonTag *)&v8 backgroundStatisticsFailingContrastForStyle:v4];
    v5 = v6;
  }

  return v5;
}

- (float)backgroundStatisticsForegroundForStyle:(id)a3
{
  [a3 tintColor];
  UISColorLuminance();
  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PBSystemInputAssistantPasteButtonTag;
  v4 = a3;
  [(PBPasteButtonTag *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_site forKey:{@"site", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_site == v4[1];

  return v5;
}

- (id)resolvedStyleForStyle:(id)a3
{
  v3 = [a3 copyWithChangeBlock:&__block_literal_global_129];

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

- (id)_acceptCalloutBarPasteButtonTagVisit:(id)a3 systemInputAssistantPasteButtonTagVisit:(id)a4 undoInteractionHUDIconPasteButtonTagVisit:(id)a5 undoInteractionHUDTextPasteButtonTagVisit:(id)a6 contextMenuPasteButtonTagVisit:(id)a7 editMenuPasteButtonTagVisit:(id)a8
{
  if (a4)
  {
    v9 = (*(a4 + 2))(a4, self, a3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end