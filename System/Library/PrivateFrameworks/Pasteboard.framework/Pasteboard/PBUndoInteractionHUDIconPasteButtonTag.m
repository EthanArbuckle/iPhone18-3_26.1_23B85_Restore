@interface PBUndoInteractionHUDIconPasteButtonTag
- ($BEA516A46C1BA1F84587E5D243A711F7)backgroundStatisticsRegionForStyle:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PBUndoInteractionHUDIconPasteButtonTag)initWithCoder:(id)a3;
- (PBUndoInteractionHUDIconPasteButtonTag)initWithMinWidth:(double)a3;
- (float)backgroundStatisticsForegroundForStyle:(id)a3;
- (id)_acceptCalloutBarPasteButtonTagVisit:(id)a3 systemInputAssistantPasteButtonTagVisit:(id)a4 undoInteractionHUDIconPasteButtonTagVisit:(id)a5 undoInteractionHUDTextPasteButtonTagVisit:(id)a6 contextMenuPasteButtonTagVisit:(id)a7 contextMenuDynamicPasteButtonTagVisit:(id)a8 editMenuPasteButtonTagVisit:(id)a9;
- (id)resolvedStyleForStyle:(id)a3;
- (unint64_t)authenticationMessageContextForStyle:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PBUndoInteractionHUDIconPasteButtonTag

- (PBUndoInteractionHUDIconPasteButtonTag)initWithMinWidth:(double)a3
{
  v5.receiver = self;
  v5.super_class = PBUndoInteractionHUDIconPasteButtonTag;
  result = [(PBUndoInteractionHUDIconPasteButtonTag *)&v5 init];
  if (result)
  {
    result->_minWidth = a3;
  }

  return result;
}

- (PBUndoInteractionHUDIconPasteButtonTag)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PBUndoInteractionHUDIconPasteButtonTag;
  v5 = [(PBPasteButtonTag *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"minWidth"];
    v5->_minWidth = v6;
  }

  return v5;
}

- (unint64_t)authenticationMessageContextForStyle:(id)a3
{
  if ([a3 userInterfaceStyle])
  {
    return 0xC59AA8F622F26FCLL;
  }

  else
  {
    return 0x237A2046F04E760CLL;
  }
}

- ($BEA516A46C1BA1F84587E5D243A711F7)backgroundStatisticsRegionForStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 displayScale];
  v5 = [v3 displayScale];

  return ((0x1600000000 * v5) | (v4 << 49) | (v4 << 17) | (22 * v5));
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
  v5.super_class = PBUndoInteractionHUDIconPasteButtonTag;
  v4 = a3;
  [(PBPasteButtonTag *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"minWidth" forKey:{self->_minWidth, v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_minWidth == v4[1];

  return v5;
}

- (id)resolvedStyleForStyle:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__PBUndoInteractionHUDIconPasteButtonTag_resolvedStyleForStyle___block_invoke;
  v8[3] = &unk_279A06210;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [v5 copyWithChangeBlock:v8];

  return v6;
}

void __64__PBUndoInteractionHUDIconPasteButtonTag_resolvedStyleForStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAccessibilityButtonShapes:0];
  [v3 setAccessibilityContrast:0];
  [v3 setDisplayRange:0];
  [v3 setLocalization:@"en"];
  [v3 setPreferredContentSizeCategory:3];
  [v3 setTintColor:{objc_msgSend(*(a1 + 32), "baseForegroundColorForStyle:", *(a1 + 40))}];
}

- (id)_acceptCalloutBarPasteButtonTagVisit:(id)a3 systemInputAssistantPasteButtonTagVisit:(id)a4 undoInteractionHUDIconPasteButtonTagVisit:(id)a5 undoInteractionHUDTextPasteButtonTagVisit:(id)a6 contextMenuPasteButtonTagVisit:(id)a7 contextMenuDynamicPasteButtonTagVisit:(id)a8 editMenuPasteButtonTagVisit:(id)a9
{
  if (a5)
  {
    v10 = (*(a5 + 2))(a5, self, a3, a4);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end