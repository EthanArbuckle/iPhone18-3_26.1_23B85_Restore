@interface PBUndoInteractionHUDIconPasteButtonTag
- ($BEA516A46C1BA1F84587E5D243A711F7)backgroundStatisticsRegionForStyle:(id)style;
- (BOOL)isEqual:(id)equal;
- (PBUndoInteractionHUDIconPasteButtonTag)initWithCoder:(id)coder;
- (PBUndoInteractionHUDIconPasteButtonTag)initWithMinWidth:(double)width;
- (float)backgroundStatisticsForegroundForStyle:(id)style;
- (id)_acceptCalloutBarPasteButtonTagVisit:(id)visit systemInputAssistantPasteButtonTagVisit:(id)tagVisit undoInteractionHUDIconPasteButtonTagVisit:(id)buttonTagVisit undoInteractionHUDTextPasteButtonTagVisit:(id)pasteButtonTagVisit contextMenuPasteButtonTagVisit:(id)menuPasteButtonTagVisit contextMenuDynamicPasteButtonTagVisit:(id)dynamicPasteButtonTagVisit editMenuPasteButtonTagVisit:(id)editMenuPasteButtonTagVisit;
- (id)resolvedStyleForStyle:(id)style;
- (unint64_t)authenticationMessageContextForStyle:(id)style;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBUndoInteractionHUDIconPasteButtonTag

- (PBUndoInteractionHUDIconPasteButtonTag)initWithMinWidth:(double)width
{
  v5.receiver = self;
  v5.super_class = PBUndoInteractionHUDIconPasteButtonTag;
  result = [(PBUndoInteractionHUDIconPasteButtonTag *)&v5 init];
  if (result)
  {
    result->_minWidth = width;
  }

  return result;
}

- (PBUndoInteractionHUDIconPasteButtonTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PBUndoInteractionHUDIconPasteButtonTag;
  v5 = [(PBPasteButtonTag *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"minWidth"];
    v5->_minWidth = v6;
  }

  return v5;
}

- (unint64_t)authenticationMessageContextForStyle:(id)style
{
  if ([style userInterfaceStyle])
  {
    return 0xC59AA8F622F26FCLL;
  }

  else
  {
    return 0x237A2046F04E760CLL;
  }
}

- ($BEA516A46C1BA1F84587E5D243A711F7)backgroundStatisticsRegionForStyle:(id)style
{
  styleCopy = style;
  displayScale = [styleCopy displayScale];
  displayScale2 = [styleCopy displayScale];

  return ((0x1600000000 * displayScale2) | (displayScale << 49) | (displayScale << 17) | (22 * displayScale2));
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
  v5.super_class = PBUndoInteractionHUDIconPasteButtonTag;
  coderCopy = coder;
  [(PBPasteButtonTag *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"minWidth" forKey:{self->_minWidth, v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_minWidth == equalCopy[1];

  return v5;
}

- (id)resolvedStyleForStyle:(id)style
{
  styleCopy = style;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__PBUndoInteractionHUDIconPasteButtonTag_resolvedStyleForStyle___block_invoke;
  v8[3] = &unk_279A06210;
  v8[4] = self;
  v9 = styleCopy;
  v5 = styleCopy;
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

- (id)_acceptCalloutBarPasteButtonTagVisit:(id)visit systemInputAssistantPasteButtonTagVisit:(id)tagVisit undoInteractionHUDIconPasteButtonTagVisit:(id)buttonTagVisit undoInteractionHUDTextPasteButtonTagVisit:(id)pasteButtonTagVisit contextMenuPasteButtonTagVisit:(id)menuPasteButtonTagVisit contextMenuDynamicPasteButtonTagVisit:(id)dynamicPasteButtonTagVisit editMenuPasteButtonTagVisit:(id)editMenuPasteButtonTagVisit
{
  if (buttonTagVisit)
  {
    v10 = (*(buttonTagVisit + 2))(buttonTagVisit, self, visit, tagVisit);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end