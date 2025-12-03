@interface TSWPHyperlinkUIController
+ (id)defaultTableView;
+ (id)sharedHyperlinkUIController;
- (BOOL)isCanvasInReadMode;
- (BOOL)isDisplayingHyperlinkUI;
- (BOOL)p_shouldSetCanvasSelectionWhenDismissing;
- (CGRect)p_viewBoundsForField;
- (NSString)stringForDisplay;
- (NSString)stringForURL;
- (TSWPEditingController)editingController;
- (UIViewController)viewControllerForPresenting;
- (int)p_UIState;
- (void)dealloc;
- (void)endUISession;
- (void)i_openURLAction;
- (void)p_clearTextSelection;
- (void)p_initChangeSessionAuthorCreatedWithCommand:(id *)command;
- (void)p_selectHyperlinkField;
- (void)p_stopObservingStorage;
- (void)setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:(BOOL)changes;
- (void)startUISessionForHyperlinkField:(id)field inRep:(id)rep;
- (void)visit;
@end

@implementation TSWPHyperlinkUIController

- (BOOL)isCanvasInReadMode
{
  interactiveCanvasController = [(TSWPHyperlinkUIController *)self interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)interactiveCanvasController inReadMode];
}

+ (id)sharedHyperlinkUIController
{
  result = +[TSWPHyperlinkUIController sharedHyperlinkUIController]::instance;
  if (!+[TSWPHyperlinkUIController sharedHyperlinkUIController]::instance)
  {
    +[TSWPHyperlinkUIController sharedHyperlinkUIController]::instance = objc_alloc_init(TSWPHyperlinkUIController);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:+[TSWPHyperlinkUIController sharedHyperlinkUIController]::instance selector:sel_p_documentUIWillCloseNotification_ name:@"TSKDocumentUIWillCloseNotification" object:0];
    return +[TSWPHyperlinkUIController sharedHyperlinkUIController]::instance;
  }

  return result;
}

- (int)p_UIState
{
  if (self->_hyperlinkField)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = TSWPHyperlinkUIController;
  [(TSWPHyperlinkUIController *)&v3 dealloc];
}

- (void)visit
{
  [+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];

  [(TSWPHyperlinkUIController *)self endUISession];
}

- (void)setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:(BOOL)changes
{
  changesCopy = changes;
  interactiveCanvasController = [(TSWPHyperlinkUIController *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)interactiveCanvasController setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:changesCopy];
}

- (void)startUISessionForHyperlinkField:(id)field inRep:(id)rep
{
  if (![(TSWPHyperlinkUIController *)self p_UIState])
  {
    self->_hyperlinkRep = rep;
    self->_hyperlinkField = field;
    v7 = [TSWPFilteredStorage alloc];
    parentStorage = [(TSWPSmartField *)self->_hyperlinkField parentStorage];
    range = [(TSWPSmartField *)self->_hyperlinkField range];
    v11 = v10;
    parentStorage2 = [(TSWPSmartField *)self->_hyperlinkField parentStorage];
    range2 = [(TSWPSmartField *)self->_hyperlinkField range];
    v15 = [(TSWPFilteredStorage *)v7 initWithStorage:parentStorage subRange:range removeRanges:v11, [(TSWPStorage *)parentStorage2 deletedRangesInRange:range2, v14]];
    self->_originalDisplayText = [(TSWPFilteredStorage *)v15 string];

    self->_changeSession = 0;
    parentStorage3 = [(TSWPSmartField *)self->_hyperlinkField parentStorage];
    self->_observedStorage = parentStorage3;
    [(TSWPStorage *)parentStorage3 addObserver:self];
    ++self->_hyperlinkUISessionID;
  }
}

- (void)p_stopObservingStorage
{
  observedStorage = self->_observedStorage;
  if (observedStorage)
  {
    [(TSWPStorage *)observedStorage removeObserver:self];
    self->_observedStorage = 0;
  }
}

- (void)endUISession
{
  if (self->_hyperlinkRep)
  {
    [(TSWPHyperlinkUIController *)self hideHyperlinkHighlight];
    if (!self->_shouldMaintainKeyboardWhenEndingSession)
    {
      interactiveCanvasController = [(TSWPHyperlinkUIController *)self interactiveCanvasController];
      v4 = dispatch_time(0, 300000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__TSWPHyperlinkUIController_endUISession__block_invoke;
      block[3] = &unk_279D46770;
      block[4] = interactiveCanvasController;
      dispatch_after(v4, MEMORY[0x277D85CD0], block);
    }

    self->_hyperlinkRep = 0;
    self->_hyperlinkField = 0;

    self->_originalDisplayText = 0;
    self->_editedDisplayText = 0;

    self->_editedURLString = 0;
    self->_cachedEditingController = 0;
  }

  [(TSWPHyperlinkUIController *)self p_stopObservingStorage];
}

- (TSWPEditingController)editingController
{
  result = self->_cachedEditingController;
  if (!result)
  {
    v4 = [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSWPHyperlinkUIController *)self interactiveCanvasController] editorController] mostSpecificCurrentEditorOfClass:objc_opt_class()];
    self->_cachedEditingController = v4;
    storage = [(TSWPEditingController *)v4 storage];
    if (storage == [(TSWPSmartField *)self->_hyperlinkField parentStorage])
    {
      cachedEditingController = self->_cachedEditingController;
    }

    else
    {
      cachedEditingController = 0;
    }

    self->_cachedEditingController = cachedEditingController;
    v7 = cachedEditingController;
    return self->_cachedEditingController;
  }

  return result;
}

- (void)p_selectHyperlinkField
{
  if (![(TSWPHyperlinkUIController *)self isCanvasInReadMode])
  {
    editingController = [(TSWPHyperlinkUIController *)self editingController];
    range = [(TSWPSmartField *)self->_hyperlinkField range];
    v6 = [TSWPSelection selectionWithRange:range, v5];

    [(TSWPEditingController *)editingController setSelection:v6 withFlags:0x200000];
  }
}

- (void)p_clearTextSelection
{
  if (![(TSWPHyperlinkUIController *)self isCanvasInReadMode])
  {
    editingController = [(TSWPHyperlinkUIController *)self editingController];

    [(TSWPEditingController *)editingController setSelection:0 withFlags:0x200000];
  }
}

- (BOOL)isDisplayingHyperlinkUI
{
  p_UIState = [(TSWPHyperlinkUIController *)self p_UIState];
  if (p_UIState)
  {
    if (TSUPhoneUI())
    {
      LOBYTE(p_UIState) = self->_observedStorage != 0;
    }

    else
    {
      LOBYTE(p_UIState) = 1;
    }
  }

  return p_UIState;
}

- (CGRect)p_viewBoundsForField
{
  [(TSWPHyperlinkHostRepProtocol *)self->_hyperlinkRep naturalBoundsRectForHyperlinkField:self->_hyperlinkField];
  [(TSWPHyperlinkHostRepProtocol *)self->_hyperlinkRep convertNaturalRectToUnscaledCanvas:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  interactiveCanvasController = [(TSWPHyperlinkUIController *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsRect:v4, v6, v8, v10];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)p_initChangeSessionAuthorCreatedWithCommand:(id *)command
{
  if (!self->_changeSession)
  {
    v5 = [-[TSWPStorage documentRoot](-[TSWPSmartField parentStorage](self->_hyperlinkField "parentStorage")];
    if (v5)
    {
      self->_changeSession = [v5 changeSessionAuthorCreatedWithCommand:command];
    }
  }
}

- (BOOL)p_shouldSetCanvasSelectionWhenDismissing
{
  if ([(TSWPHyperlinkUIController *)self isCanvasInReadMode])
  {
    isKindOfClass = 0;
  }

  else
  {
    [(TSWPHyperlinkHostRepProtocol *)self->_hyperlinkRep parentRep];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)defaultTableView
{
  v2 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:1 style:{0.0, 0.0, 320.0, 10.0}];
  [TSKPopoverBasedViewController configureTableView:v2];
  [v2 setSeparatorInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  return v2;
}

- (void)i_openURLAction
{
  v3 = +[TSKApplicationDelegate sharedDelegate];
  v4 = [(TSWPHyperlinkField *)self->_hyperlinkField url];

  [v3 openURL:v4];
}

- (NSString)stringForDisplay
{
  if (![(TSWPHyperlinkUIController *)self editedDisplayText])
  {
    return self->_originalDisplayText;
  }

  return [(TSWPHyperlinkUIController *)self editedDisplayText];
}

- (NSString)stringForURL
{
  if ([(TSWPHyperlinkUIController *)self editedURLString])
  {

    return [(TSWPHyperlinkUIController *)self editedURLString];
  }

  else
  {
    v4 = [(TSWPHyperlinkField *)self->_hyperlinkField url];

    return [(NSURL *)v4 absoluteString];
  }
}

- (UIViewController)viewControllerForPresenting
{
  objc_opt_class();
  [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)[(TSWPHyperlinkUIController *)self interactiveCanvasController] documentRoot] viewController];
  v3 = TSUDynamicCast();
  if (!v3)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPHyperlinkUIController viewControllerForPresenting]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPHyperlinkUIController.mm"), 1262, @"invalid nil value for '%s'", "viewController"}];
  }

  return v3;
}

@end