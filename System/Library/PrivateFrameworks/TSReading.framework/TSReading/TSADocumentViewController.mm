@interface TSADocumentViewController
+ (void)resetLastDocumentMode;
- (BOOL)allowEditMenuToAppear;
- (BOOL)allowImagePickerToAppear;
- (BOOL)navigatorHiddenDefault;
- (BOOL)p_shouldZoomOutForCurrentSelection;
- (BOOL)popoverController:(id)controller shouldReceiveOutsideTouchAtLocation:(CGPoint)location inView:(id)view;
- (BOOL)tappedCanvasBackgroundAtPoint:(CGPoint)point;
- (BOOL)willChangeContentOffsetIfKeyboardHidden;
- (CGPoint)clampedUnscaledContentOffset:(CGPoint)offset;
- (CGRect)contentFrame;
- (CGRect)openCloseAnimationCanvasFrame;
- (CGRect)rectForPopoverFromToolbarButton:(id)button;
- (CGRect)visibleScaledCanvasRectWithoutKeyboard;
- (CGRect)visibleUnscaledCanvasRectWithoutKeyboard;
- (CGSize)sizeOfScrollViewEnclosingCanvas;
- (NSString)closeDocumentButtonTitle;
- (TSADebugViewController)debugViewController;
- (TSADocumentViewController)initWithDefaultView;
- (TSADocumentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_NSRange)visibleRootIndexRange;
- (double)autoZoomAnimationDurationForInteractiveCanvasController:(id)controller;
- (double)leftToolbarItemsInset;
- (double)rightToolbarItemsInset;
- (double)toolbarTextButtonSpaceWidth;
- (id)closeDocumentButton;
- (id)drawableFactory;
- (id)p_arrayByAddingLanguage:(id)language toArray:(id)array;
- (id)rectanglesObscuringView:(id)view;
- (id)superviewForChartDataEditor:(id)editor;
- (id)title;
- (int64_t)lastDocumentMode;
- (int64_t)p_documentModeToRestoreFor:(int64_t)for;
- (void)abandonDocument;
- (void)adjustContentViewFrame;
- (void)adjustScrollViewInsets;
- (void)asyncProcessChanges:(id)changes forChangeSource:(id)source;
- (void)closeDocumentPressed;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didReplaceDocument;
- (void)didSetDocumentToMode:(int64_t)mode fromMode:(int64_t)fromMode animated:(BOOL)animated;
- (void)documentWillClose;
- (void)editorDidChangeSelection:(id)selection;
- (void)interactiveCanvasController:(id)controller willAnimateToViewScale:(double)scale withDuration:(double)duration unscaledContentOffset:(CGPoint)offset;
- (void)keyboardShowCanceled;
- (void)keyboardWillHideOrUndock:(id)undock;
- (void)keyboardWillShowOrDock:(id)dock;
- (void)loadDocument;
- (void)navigatePlay:(id)play;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_backgroundInit;
- (void)p_deregisterForNotifications;
- (void)p_restoreTextSelectionAfterModalDismiss;
- (void)p_scrollToCurrentSelection;
- (void)p_scrollToRect:(CGRect)rect;
- (void)p_setDocumentMode:(int64_t)mode animated:(BOOL)animated dismissOnTop:(BOOL)top;
- (void)p_teardown;
- (void)p_zoomOutForCurrentSelection;
- (void)popoverControllerDidDismissPopoverBasedViewController:(id)controller;
- (void)setCanvasScrollViewClipsToBoundsForKeyboardAnimation:(BOOL)animation;
- (void)setDefaultInteractiveCanvasController:(id)controller;
- (void)setDocument:(id)document;
- (void)setDocumentMode:(int64_t)mode animated:(BOOL)animated dismissOnTop:(BOOL)top;
- (void)setLastDocumentMode:(int64_t)mode;
- (void)setNavigatorHiddenDefault:(BOOL)default;
- (void)setSelection:(id)selection onModel:(id)model withFlags:(unint64_t)flags;
- (void)toolsFindReplace;
- (void)unloadDocument;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willInsertDrawable;
- (void)willReplaceDocument;
- (void)willSetDocumentToMode:(int64_t)mode fromMode:(int64_t)fromMode animated:(BOOL)animated;
- (void)zoomOutAnimated:(BOOL)animated;
@end

@implementation TSADocumentViewController

- (TSADebugViewController)debugViewController
{
  result = self->_debugViewController;
  if (!result)
  {
    result = [[TSADebugViewController alloc] initWithDelegate:self];
    self->_debugViewController = result;
  }

  return result;
}

- (TSADocumentViewController)initWithDefaultView
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController initWithDefaultView]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 337, @"Abstract method"}];
  self->mSavedContentOffset = *MEMORY[0x277CBF348];
  self->mSavedCanvasViewScale = 0.0;
  return 0;
}

- (TSADocumentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = TSADocumentViewController;
  result = [(TSADocumentViewController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_shouldShowInstructionalText = 1;
  }

  return result;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  self->_coachingTipsButton = 0;
  self->_sharingButton = 0;
  [(TSADocumentViewController *)self setNavigatorViewController:0];

  v3.receiver = self;
  v3.super_class = TSADocumentViewController;
  [(TSAViewController *)&v3 dealloc];
}

- (id)p_arrayByAddingLanguage:(id)language toArray:(id)array
{
  v17 = *MEMORY[0x277D85DE8];
  if (array)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [array countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(array);
        }

        if ([*(*(&v12 + 1) + 8 * v9) hasPrefix:language])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [array countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      [array addObject:language];
    }

    return array;
  }

  else
  {
    v11 = MEMORY[0x277CBEB18];

    return [v11 arrayWithObject:?];
  }
}

- (void)setDefaultInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;

  self->_interactiveCanvasController = controller;
}

- (void)setDocument:(id)document
{
  document = self->_document;
  if (document != document)
  {
    if (document)
    {
      if (self->_isDocumentLoaded)
      {
        [(TSADocumentViewController *)self unloadDocument];
      }

      else
      {
        [(TSADocumentViewController *)self teardown];
      }
    }

    self->_document = document;
    self->_isDocumentLoaded = 0;
  }
}

- (void)willReplaceDocument
{
  if (!self->_isAbandoningDocument)
  {
    self->_documentModeBeforeReplaceController = [(TSADocumentViewController *)self p_documentModeToRestoreFor:[(TSADocumentViewController *)self documentMode]];
    [(TSADocumentViewController *)self setDocumentMode:0 animated:0];
    [(TSADocumentViewController *)self viewWillDisappear:0];

    [(TSAViewController *)self viewDidDisappear:0];
  }
}

- (void)didReplaceDocument
{
  [(TSADocumentViewController *)self viewWillAppear:0];
  [(TSADocumentViewController *)self viewDidAppear:0];
  documentModeBeforeReplaceController = self->_documentModeBeforeReplaceController;

  [(TSADocumentViewController *)self setDocumentMode:documentModeBeforeReplaceController animated:0];
}

- (void)abandonDocument
{
  self->_isAbandoningDocument = 1;
  [(TSADocumentViewController *)self willReplaceDocument];
  [(TSADocumentViewController *)self setDocument:0];
  self->_isAbandoningDocument = 0;
}

- (void)setSelection:(id)selection onModel:(id)model withFlags:(unint64_t)flags
{
  if ([(TSADocumentViewController *)self documentMode]== 1)
  {
    interactiveCanvasController = [(TSADocumentViewController *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)interactiveCanvasController setSelection:selection onModel:model withFlags:flags];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (TSAActiveCoachingTipSetObserverContext != context && TSACanvasCoachingTipsObserverContext != context)
  {
    v10 = v6;
    v11 = v7;
    v9.receiver = self;
    v9.super_class = TSADocumentViewController;
    [(TSADocumentViewController *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)navigatePlay:(id)play
{
  v3 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];

  [v3 endUISession];
}

- (void)p_backgroundInit
{
  v3 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [MEMORY[0x277CCACC8] setThreadPriority:0.0];
  [(TSADocumentViewController *)self backgroundInit];

  [v3 drain];
}

- (void)p_restoreTextSelectionAfterModalDismiss
{
  if (TSUPhoneUI())
  {
    interactiveCanvasController = self->_interactiveCanvasController;

    [(TSDInteractiveCanvasController *)interactiveCanvasController setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:1];
  }
}

- (void)popoverControllerDidDismissPopoverBasedViewController:(id)controller
{
  if (TSUPhoneUI() && !self->_documentModeChangeInProgress)
  {
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:0];
    [(TSADocumentViewController *)self adjustContentViewFrame];
    [(TSADocumentViewController *)self adjustScrollViewInsets];
  }

  if (TSUPhoneUI())
  {
    self->_helpViewVisibleState = 0;
  }
}

- (BOOL)popoverController:(id)controller shouldReceiveOutsideTouchAtLocation:(CGPoint)location inView:(id)view
{
  y = location.y;
  x = location.x;
  [(UIButton *)self->_closeButton bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UIButton *)self->_closeButton convertPoint:view fromView:x, y];
  v20.x = v17;
  v20.y = v18;
  v21.origin.x = v10;
  v21.origin.y = v12;
  v21.size.width = v14;
  v21.size.height = v16;
  return !CGRectContainsPoint(v21, v20);
}

- (BOOL)navigatorHiddenDefault
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [standardUserDefaults BOOLForKeyInCurrentRole:@"NavigatorHidden"];
}

- (void)setNavigatorHiddenDefault:(BOOL)default
{
  defaultCopy = default;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [standardUserDefaults setBool:defaultCopy forKeyInCurrentRole:@"NavigatorHidden"];
}

- (void)closeDocumentPressed
{
  [+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")];
  defaultInteractiveCanvasController = [(TSADocumentViewController *)self defaultInteractiveCanvasController];

  [(TSDInteractiveCanvasController *)defaultInteractiveCanvasController teardownBackgroundRendering];
}

- (BOOL)p_shouldZoomOutForCurrentSelection
{
  if ([(TSAInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] hasEmptyWPSelection])
  {
    return 1;
  }

  return [(TSADocumentViewController *)self p_shouldZoomOutFromTable];
}

- (void)documentWillClose
{
  self->_isClosingDocument = 1;
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")];
  interactiveCanvasController = [(TSADocumentViewController *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)interactiveCanvasController beginEditingRep:0];
}

- (void)loadDocument
{
  if (!self->_isDocumentLoaded)
  {
    defaultInteractiveCanvasController = [(TSADocumentViewController *)self defaultInteractiveCanvasController];
    documentRoot = [(TSADocumentViewController *)self documentRoot];
    [(TSDInteractiveCanvasController *)defaultInteractiveCanvasController setShowInvisibleObjects:1];
    [(TSKChangeNotifier *)[(TSKDocumentRoot *)documentRoot changeNotifier] addObserver:self forChangeSource:documentRoot];
    [(TSAInteractiveCanvasController *)defaultInteractiveCanvasController loadDocument];
    lastDocumentMode = [(TSADocumentViewController *)self lastDocumentMode];
    [(TSADocumentViewController *)self setLastDocumentMode:lastDocumentMode];
    [(TSADocumentViewController *)self p_setDocumentMode:lastDocumentMode animated:0 dismissOnTop:1];
    [+[TSKPopoverUndoObserver sharedObserver](TSKPopoverUndoObserver "sharedObserver")];
    self->_isDocumentLoaded = 1;
  }
}

- (void)p_teardown
{
  [(TSAInteractiveCanvasController *)[(TSADocumentViewController *)self defaultInteractiveCanvasController] teardown];
  documentRoot = [(TSADocumentViewController *)self documentRoot];
  v4 = +[TSDImageProviderPool sharedPool];
  context = [(TSPObject *)documentRoot context];

  [v4 willCloseDocumentContext:context];
}

- (void)unloadDocument
{
  defaultInteractiveCanvasController = [(TSADocumentViewController *)self defaultInteractiveCanvasController];
  [+[TSKPopoverUndoObserver sharedObserver](TSKPopoverUndoObserver "sharedObserver")];
  [(TSADocumentViewController *)self p_deregisterForNotifications];
  documentRoot = [(TSADocumentViewController *)self documentRoot];
  [(TSKChangeNotifier *)[(TSKDocumentRoot *)documentRoot changeNotifier] removeObserver:self forChangeSource:documentRoot];
  [(TSAInteractiveCanvasController *)defaultInteractiveCanvasController unloadDocument];

  [(TSADocumentViewController *)self p_teardown];
}

- (CGPoint)clampedUnscaledContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  interactiveCanvasController = [(TSADocumentViewController *)self interactiveCanvasController];
  [(TSDScrollView *)self->_scrollView frame];
  MaxY = CGRectGetMaxY(v18);
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsPoint:x, y];
  v9 = v8;
  v11 = v10;
  [(TSDScrollView *)self->_scrollView contentSize];
  if (v12 - v11 < MaxY)
  {
    [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:v9, fmax(v11 - (MaxY - (v12 - v11)), 0.0)];
    x = v13;
    y = v14;
  }

  v15 = x;
  v16 = y;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)toolsFindReplace
{
  v3 = TSUPadUI();

  [(TSADocumentViewController *)self setDocumentMode:2 animated:v3];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = TSADocumentViewController;
  [(TSADocumentViewController *)&v2 viewDidLoad];
}

- (id)title
{
  if (!TSUPadUI())
  {
    return &stru_287D36338;
  }

  documentRoot = [(TIADocument *)self->_document documentRoot];

  return [(TSADocumentRoot *)documentRoot name];
}

- (id)closeDocumentButton
{
  closeDocumentButtonTitle = [(TSADocumentViewController *)self closeDocumentButtonTitle];

  return [(TSAViewController *)self toolbarButtonWithTitle:closeDocumentButtonTitle target:self action:sel_closeDocumentPressed isModal:0];
}

- (double)leftToolbarItemsInset
{
  if (TSUPhoneUI())
  {
    IsLandscape = TSUStatusBarIsLandscape();
    v3 = &TSADefaultLeftToolbarItemsInsetiPhoneLandscape;
    if (!IsLandscape)
    {
      v3 = &TSADefaultLeftToolbarItemsInsetiPhonePortrait;
    }
  }

  else
  {
    v3 = &TSADefaultLeftToolbarItemsInsetiPad;
  }

  return *v3;
}

- (double)rightToolbarItemsInset
{
  v2 = TSUPhoneUI();
  v3 = &TSADefaultRightToolbarItemsInsetiPhone;
  if (!v2)
  {
    v3 = &TSADefaultRightToolbarItemsInsetiPad;
  }

  return *v3;
}

- (CGRect)rectForPopoverFromToolbarButton:(id)button
{
  [button bounds];
  v5 = v4;
  v7 = v6 + -6.0;
  [objc_msgSend(button "imageView")];
  v10 = v5;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v9;
  result.origin.y = v10;
  result.origin.x = v8;
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = TSADocumentViewController;
  [(TSADocumentViewController *)&v6 viewWillAppear:appear];
  if (!self->_document)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController viewWillAppear:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 2812, @"No document has been set"}];
  }

  self->_keyboardHeight = 0.0;
  [(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] setDelegate:self];
  if (!self->_isDocumentLoaded)
  {
    [(TSADocumentViewController *)self loadDocument];
    self->_isClosingDocument = 0;
  }

  if (!self->_registered)
  {
    self->_registered = 1;
    [TSKKeyboardMonitor addKeyboardObserver:self];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [(TSADocumentViewController *)self registerForCanvasEditorNotifications];
  }

  [(TSADocumentViewController *)self adjustContentViewFrame];
  [(TSADocumentViewController *)self adjustScrollViewInsets];
  [(TSADocumentViewController *)self setIsLandscapeOrientation:TSUStatusBarIsLandscape()];
  if (TSUPhoneUI())
  {
    if (![(TSADocumentViewController *)self isLandscapeOrientation])
    {
      [(TSAViewController *)self setLeftToolbarItemsMaximumWidth:168.0];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = TSADocumentViewController;
  [(TSAViewController *)&v6 viewDidAppear:appear];
  if (!self->_document)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController viewDidAppear:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 2872, @"No document has been set"}];
  }

  if (!self->_scheduledBackgroundInit)
  {
    self->_scheduledBackgroundInit = 1;
    [(TSADocumentViewController *)self performSelector:sel_p_startBackgroundInit withObject:0 afterDelay:0.00999999978];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = TSADocumentViewController;
  [(TSAViewController *)&v13 viewWillDisappear:disappear];
  if ([(TSADocumentViewController *)self document])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    topLevelReps = [(TSDCanvas *)[(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] canvas] topLevelReps];
    v5 = [topLevelReps countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(topLevelReps);
          }

          [*(*(&v9 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_disableCaretAnimation];
        }

        v6 = [topLevelReps countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v6);
    }
  }

  [(TSADocumentViewController *)self p_deregisterForNotifications];
  [(TSADocumentViewController *)self adjustContentViewFrame];
}

- (void)p_deregisterForNotifications
{
  if (self->_registered)
  {
    self->_registered = 0;
    [TSKKeyboardMonitor removeKeyboardObserver:self];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [(TSADocumentViewController *)self deRegisterForCanvasEditorNotifications];
    self->_keyboardHeight = 0.0;
  }
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = TSADocumentViewController;
  [(TSADocumentViewController *)&v2 didReceiveMemoryWarning];
}

- (CGRect)openCloseAnimationCanvasFrame
{
  interactiveCanvasController = [(TSADocumentViewController *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)interactiveCanvasController visibleBoundsRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)toolbarTextButtonSpaceWidth
{
  v2 = TSUPadUI();
  result = 18.0;
  if (v2)
  {
    return 22.0;
  }

  return result;
}

- (void)interactiveCanvasController:(id)controller willAnimateToViewScale:(double)scale withDuration:(double)duration unscaledContentOffset:(CGPoint)offset
{
  if ((TSUSupportsTextInteraction() & 1) == 0)
  {

    +[TSWPEditMenuController hideEditMenu];
  }
}

- (_NSRange)visibleRootIndexRange
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)setDocumentMode:(int64_t)mode animated:(BOOL)animated dismissOnTop:(BOOL)top
{
  if (self->_documentMode != mode)
  {
    [TSADocumentViewController p_setDocumentMode:"p_setDocumentMode:animated:dismissOnTop:" animated:? dismissOnTop:?];
    if (mode != 2)
    {

      [(TSADocumentViewController *)self setLastDocumentMode:mode];
    }
  }
}

- (int64_t)lastDocumentMode
{
  v3 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (v3)
  {

    return [v3 integerValue];
  }

  else
  {

    return [(TSADocumentViewController *)self defaultDocumentMode];
  }
}

- (void)setLastDocumentMode:(int64_t)mode
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [standardUserDefaults setInteger:mode forKey:@"DocumentMode"];
}

+ (void)resetLastDocumentMode
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [standardUserDefaults removeObjectForKey:@"DocumentMode"];
}

- (void)willSetDocumentToMode:(int64_t)mode fromMode:(int64_t)fromMode animated:(BOOL)animated
{
  animatedCopy = animated;
  interactiveCanvasController = [(TSADocumentViewController *)self interactiveCanvasController];

  [(TSAInteractiveCanvasController *)interactiveCanvasController willSetDocumentToMode:mode fromMode:fromMode animated:animatedCopy];
}

- (void)didSetDocumentToMode:(int64_t)mode fromMode:(int64_t)fromMode animated:(BOOL)animated
{
  animatedCopy = animated;
  interactiveCanvasController = [(TSADocumentViewController *)self interactiveCanvasController];

  [(TSAInteractiveCanvasController *)interactiveCanvasController didSetDocumentToMode:mode fromMode:fromMode animated:animatedCopy];
}

- (BOOL)tappedCanvasBackgroundAtPoint:(CGPoint)point
{
  if ([(TSADocumentViewController *)self documentMode:point.x]&& [(TSADocumentViewController *)self documentMode]!= 2)
  {
    return 0;
  }

  v4 = 1;
  [(TSADocumentViewController *)self setDocumentMode:1 animated:1];
  return v4;
}

- (CGRect)contentFrame
{
  [-[TSADocumentViewController view](self "view")];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  remainder.origin.x = v3;
  remainder.origin.y = v5;
  remainder.size.width = v7;
  remainder.size.height = v9;
  [(TSADocumentViewController *)self viewHeaderHeight];
  if (v11 > 0.0)
  {
    v12 = v11;
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v21.origin = *MEMORY[0x277CBF3A0];
    v21.size = v13;
    v14 = x;
    v13.width = y;
    v15 = width;
    v16 = height;
    CGRectDivide(*(&v13 - 8), &v21, &remainder, v12, CGRectMinYEdge);
    x = remainder.origin.x;
    y = remainder.origin.y;
    width = remainder.size.width;
    height = remainder.size.height;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)willChangeContentOffsetIfKeyboardHidden
{
  if (self->_keyboardHeight <= 0.0)
  {
    return 0;
  }

  enclosingScrollView = [(TSDCanvasView *)[(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] canvasView] enclosingScrollView];
  [(TSKScrollView *)enclosingScrollView contentSize];
  v5 = v4;
  [(TSKScrollView *)enclosingScrollView contentOffset];
  v7 = v6;
  [(TSKScrollView *)enclosingScrollView frame];
  return v5 - v7 < CGRectGetMaxY(v9) - self->_keyboardHeight;
}

- (void)adjustScrollViewInsets
{
  interactiveCanvasController = [(TSADocumentViewController *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)interactiveCanvasController unobscuredFrameDidChange];
}

- (void)adjustContentViewFrame
{
  [(TSADocumentViewController *)self contentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TSDScrollView *)self->_scrollView frame];
  v12 = v11;
  [(TSDScrollView *)self->_scrollView frame];
  v20.origin.x = v13;
  v20.origin.y = v14;
  v20.size.width = v15;
  v20.size.height = v16;
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  if (!CGRectEqualToRect(v19, v20))
  {
    [(TSDScrollView *)self->_scrollView setFrame:v4, v6, v8, v10];
  }

  [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](-[TSADocumentViewController interactiveCanvasController](self "interactiveCanvasController")];
  [(TSADocumentViewController *)self didSetContentViewFrame];
  [(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] invalidateVisibleBounds];
  if (v10 != v12 && [(TSADocumentViewController *)self shouldAutoscrollToSelectionOnContentViewSizeChange]&& v10 < v12)
  {
    interactiveCanvasController = [(TSADocumentViewController *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)interactiveCanvasController setShouldAutoscrollToSelectionAfterLayout:1];
  }
}

- (CGRect)visibleScaledCanvasRectWithoutKeyboard
{
  interactiveCanvasController = [(TSADocumentViewController *)self interactiveCanvasController];
  [(TSDInteractiveCanvasController *)interactiveCanvasController visibleBoundsRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(TSADocumentViewController *)self isKeyboardUp])
  {
    canvasView = [(TSDInteractiveCanvasController *)interactiveCanvasController canvasView];
    v11 = v11 + self->_keyboardHeight;
    [(TSKScrollView *)[(TSDCanvasView *)canvasView enclosingScrollView] contentSize];
    v14 = v13;
    v15 = v14;
    if (v11 >= v15)
    {
      v11 = v15;
    }
  }

  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)visibleUnscaledCanvasRectWithoutKeyboard
{
  interactiveCanvasController = [(TSADocumentViewController *)self interactiveCanvasController];
  [(TSADocumentViewController *)self visibleScaledCanvasRectWithoutKeyboard];

  [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledRect:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGSize)sizeOfScrollViewEnclosingCanvas
{
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] canvasView] enclosingScrollView] frame];
  v4 = v3;
  v6 = v5;
  if ([(TSADocumentViewController *)self isKeyboardUp])
  {
    v6 = v6 + self->_keyboardHeight;
  }

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)allowEditMenuToAppear
{
  objc_opt_class();
  [(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] layerHost];
  return ![TSUDynamicCast() presentedViewController] && -[TSADocumentViewController presentedViewController](self, "presentedViewController") == 0;
}

- (BOOL)allowImagePickerToAppear
{
  allowEditMenuToAppear = [(TSADocumentViewController *)self allowEditMenuToAppear];
  if (allowEditMenuToAppear)
  {
    LOBYTE(allowEditMenuToAppear) = ![(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] inReadMode];
  }

  return allowEditMenuToAppear;
}

- (void)p_setDocumentMode:(int64_t)mode animated:(BOOL)animated dismissOnTop:(BOOL)top
{
  if (!self->_settingDocumentMode)
  {
    animatedCopy = animated;
    self->_settingDocumentMode = 1;
    documentMode = self->_documentMode;
    [(TSADocumentViewController *)self willSetDocumentToMode:mode fromMode:documentMode animated:animated];
    self->_documentMode = mode;
    interactiveCanvasController = [(TSADocumentViewController *)self interactiveCanvasController];
    v10 = interactiveCanvasController;
    if (!mode)
    {
      [(TSDInteractiveCanvasController *)interactiveCanvasController setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:1];
      [(TSADocumentViewController *)self setSelection:+[TSDCanvasSelection onModel:"emptySelection"]withFlags:[(TSADocumentViewController *)self documentRoot], 0];
    }

    [(TSDInteractiveCanvasController *)v10 setInReadMode:mode == 0];
    [(TSDInteractiveCanvasController *)v10 setShowInvisibleObjects:mode != 0];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v12 = 0.2;
    if (!animatedCopy)
    {
      v12 = 0.0;
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__TSADocumentViewController_p_setDocumentMode_animated_dismissOnTop___block_invoke;
    v14[3] = &unk_279D4AE88;
    v14[4] = mEMORY[0x277D75128];
    v14[5] = self;
    v14[6] = v10;
    v14[7] = documentMode;
    v14[8] = mode;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__TSADocumentViewController_p_setDocumentMode_animated_dismissOnTop___block_invoke_2;
    v13[3] = &unk_279D4AEB0;
    v13[4] = self;
    v13[5] = mEMORY[0x277D75128];
    [MEMORY[0x277D75D18] animateWithDuration:196612 delay:v14 options:v13 animations:v12 completion:0.0];
    if (([+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")] & 1) == 0)
    {
      [(TSDInteractiveCanvasController *)v10 setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:0];
    }

    self->_settingDocumentMode = 0;
  }
}

uint64_t __69__TSADocumentViewController_p_setDocumentMode_animated_dismissOnTop___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginIgnoringInteractionEvents];
  v2 = [MEMORY[0x277D75D18] areAnimationsEnabled];
  v3 = MEMORY[0x277D75D18];
  v4 = TSUPadUI();
  v5 = 1;
  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 56) != 2;
  }

  [v3 setAnimationsEnabled:v5];
  [MEMORY[0x277D75D18] setAnimationsEnabled:v2];
  *(*(a1 + 40) + 1227) = 1;
  v6 = *(a1 + 40);
  if (v6[143] == 1)
  {
    [*(a1 + 48) resumeEditing];
    v6 = *(a1 + 40);
  }

  [v6 adjustContentViewFrame];
  v7 = *(a1 + 40);
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);

  return [v7 didSetDocumentToMode:v8 fromMode:v9 animated:0];
}

- (NSString)closeDocumentButtonTitle
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController closeDocumentButtonTitle]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 3696, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSADocumentViewController closeDocumentButtonTitle]"), 0}]);
}

- (void)p_zoomOutForCurrentSelection
{
  if (!self->_waitingToZoomOut && [(TSDInteractiveCanvasController *)self->_interactiveCanvasController shouldZoomOnSelectionChange])
  {
    self->_waitingToZoomOut = 1;
    if (![(TSADocumentViewController *)self isKeyboardUp])
    {
      Main = CFRunLoopGetMain();
      v4 = *MEMORY[0x277CBF058];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__TSADocumentViewController_p_zoomOutForCurrentSelection__block_invoke;
      block[3] = &unk_279D46770;
      block[4] = self;
      CFRunLoopPerformBlock(Main, v4, block);
    }
  }
}

uint64_t __57__TSADocumentViewController_p_zoomOutForCurrentSelection__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) zoomOutAnimated:1];
  *(*(a1 + 32) + 1224) = 0;
  return result;
}

- (void)zoomOutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController fitWidthViewScale];
  v6 = v5;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController visibleUnscaledRect];
  interactiveCanvasController = self->_interactiveCanvasController;

  [(TSDInteractiveCanvasController *)interactiveCanvasController setViewScale:1 contentOffset:animatedCopy clampOffset:v6 animated:0.0, v7];
}

- (void)setCanvasScrollViewClipsToBoundsForKeyboardAnimation:(BOOL)animation
{
  animationCopy = animation;
  if (![(TSADocumentViewController *)self preserveScrollViewClipping])
  {
    enclosingScrollView = [(TSDCanvasView *)[(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] canvasView] enclosingScrollView];

    [(TSKScrollView *)enclosingScrollView setClipsToBounds:animationCopy];
  }
}

- (void)keyboardWillShowOrDock:(id)dock
{
  if ([(TSADocumentViewController *)self contentView]&& self->_registered)
  {
    userInfo = [dock userInfo];
    if (!userInfo)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController keyboardWillShowOrDock:]"];
      [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 3969, @"invalid nil value for '%s'", "userInfo"}];
    }

    [+[TSKKeyboardMonitor sharedKeyboardMonitor](TSKKeyboardMonitor "sharedKeyboardMonitor")];
    self->_keyboardHeight = v8;
    [objc_msgSend(userInfo objectForKey:{*MEMORY[0x277D76B78]), "floatValue"}];
    v10 = v9;
    if ([+[TSAApplicationDelegate sharedDelegate](TSAApplicationDelegate "sharedDelegate")])
    {
      v11 = 0.0;
      v12 = 4;
    }

    else
    {
      if (self->_documentModeChangeInProgress)
      {
        v12 = 196612;
      }

      else
      {
        v12 = 4;
      }

      if (self->_documentModeChangeInProgress)
      {
        v11 = 0.2;
      }

      else
      {
        v11 = v10;
      }
    }

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__TSADocumentViewController_keyboardWillShowOrDock___block_invoke;
    v15[3] = &unk_279D47668;
    v15[4] = mEMORY[0x277D75128];
    v15[5] = self;
    *&v15[6] = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__TSADocumentViewController_keyboardWillShowOrDock___block_invoke_2;
    v14[3] = &unk_279D4AEB0;
    v14[4] = self;
    v14[5] = mEMORY[0x277D75128];
    [MEMORY[0x277D75D18] animateWithDuration:v12 delay:v15 options:v14 animations:v11 completion:0.0];
  }
}

uint64_t __52__TSADocumentViewController_keyboardWillShowOrDock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginIgnoringInteractionEvents];
  *(*(a1 + 40) + 1184) = *(a1 + 48);
  [objc_msgSend(*(a1 + 40) "interactiveCanvasController")];
  v2 = *(a1 + 40);

  return [v2 adjustScrollViewInsets];
}

- (void)keyboardShowCanceled
{
  [(TSDScrollView *)self->_scrollView contentOffset];
  scrollView = self->_scrollView;

  [(TSKScrollView *)scrollView setContentOffset:1 animated:?];
}

- (void)keyboardWillHideOrUndock:(id)undock
{
  self->_keyboardHeight = 0.0;
  if ([(TSADocumentViewController *)self contentView]&& self->_registered)
  {
    objc_opt_class();
    [(TSDEditorController *)[(TSDInteractiveCanvasController *)self->_interactiveCanvasController editorController] textInputEditor];
    v5 = TSUDynamicCast();
    if (self->_documentMode == 1 && (([v5 trackingKnobInParagraphMode] & 1) != 0 || -[TSAViewController isPresentingModalViewController](self, "isPresentingModalViewController")))
    {
      [(TSADocumentViewController *)self adjustContentViewFrame];

      [(TSADocumentViewController *)self adjustScrollViewInsets];
    }

    else
    {
      userInfo = [undock userInfo];
      [objc_msgSend(userInfo objectForKey:{*MEMORY[0x277D76B78]), "floatValue"}];
      v8 = v7;
      if ([+[TSAApplicationDelegate sharedDelegate](TSAApplicationDelegate "sharedDelegate")])
      {
        v9 = 0.0;
        v10 = 4;
      }

      else
      {
        if (self->_documentModeChangeInProgress)
        {
          v10 = 196612;
        }

        else
        {
          v10 = 4;
        }

        if (self->_documentModeChangeInProgress)
        {
          v9 = 0.2;
        }

        else
        {
          v9 = v8;
        }
      }

      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __54__TSADocumentViewController_keyboardWillHideOrUndock___block_invoke;
      v13[3] = &unk_279D47668;
      v13[4] = mEMORY[0x277D75128];
      v13[5] = self;
      *&v13[6] = v9;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __54__TSADocumentViewController_keyboardWillHideOrUndock___block_invoke_2;
      v12[3] = &unk_279D4AEB0;
      v12[4] = self;
      v12[5] = mEMORY[0x277D75128];
      [MEMORY[0x277D75D18] animateWithDuration:v10 delay:v13 options:v12 animations:v9 completion:0.0];
      if (self->_waitingToZoomOut)
      {
        [(TSADocumentViewController *)self zoomOutAnimated:1];
        self->_waitingToZoomOut = 0;
      }
    }
  }
}

uint64_t __54__TSADocumentViewController_keyboardWillHideOrUndock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginIgnoringInteractionEvents];
  *(*(a1 + 40) + 1184) = *(a1 + 48);
  v2 = *(a1 + 40);

  return [v2 adjustScrollViewInsets];
}

- (void)asyncProcessChanges:(id)changes forChangeSource:(id)source
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(TIADocument *)self->_document documentRoot]== source)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [changes countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      v18 = @"selection";
      do
      {
        v7 = 0;
        do
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(changes);
          }

          v8 = *(*(&v21 + 1) + 8 * v7);
          if ([v8 kind] == 2)
          {
            details = [v8 details];
            v10 = [details objectForKey:@"model"];
            objc_opt_class();
            [details objectForKey:v18];
            v11 = TSUDynamicCast();
            objc_opt_class();
            [details objectForKey:@"flags"];
            unsignedIntegerValue = [TSUDynamicCast() unsignedIntegerValue];
            if (v10)
            {
              if (v11)
              {
LABEL_10:
                [(TSADocumentViewController *)self setSelection:v11 onModel:v10 withFlags:unsignedIntegerValue | 0x40];
                goto LABEL_11;
              }
            }

            else
            {
              currentHandler = [MEMORY[0x277D6C290] currentHandler];
              v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController asyncProcessChanges:forChangeSource:]"];
              [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 4130, @"bad model in a selection change record"}];
              if (v11)
              {
                goto LABEL_10;
              }
            }

            currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController asyncProcessChanges:forChangeSource:]"];
            [currentHandler2 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 4131, @"bad selection in a selection change record"}];
            goto LABEL_10;
          }

LABEL_11:
          ++v7;
        }

        while (v5 != v7);
        v17 = [changes countByEnumeratingWithState:&v21 objects:v25 count:16];
        v5 = v17;
      }

      while (v17);
    }
  }
}

- (double)autoZoomAnimationDurationForInteractiveCanvasController:(id)controller
{
  presentedViewController = [(TSADocumentViewController *)self presentedViewController];
  result = 0.0;
  if (!presentedViewController)
  {
    result = self->_contentFrameAnimationDuration;
    if (result == 0.0)
    {
      return 0.3;
    }
  }

  return result;
}

- (void)editorDidChangeSelection:(id)selection
{
  if ([(TSADocumentViewController *)self documentMode]!= 2 && ![(TSADocumentViewController *)self preventDocumentModeChangesDuringSelectionChanges])
  {
    [(TSADocumentViewController *)self setDocumentMode:1 animated:1];
  }

  if ([(TSADocumentViewController *)self p_shouldZoomOutForCurrentSelection])
  {

    [(TSADocumentViewController *)self p_zoomOutForCurrentSelection];
  }
}

- (id)rectanglesObscuringView:(id)view
{
  array = [MEMORY[0x277CBEA60] array];
  [-[TSADocumentViewController view](self "view")];
  v8 = v5;
  v10 = v9;
  v11 = v6;
  v12 = v7;
  memset(&remainder, 0, sizeof(remainder));
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v18.origin = *MEMORY[0x277CBF3A0];
  v18.size = v13;
  keyboardHeight = self->_keyboardHeight;
  if (keyboardHeight > 0.0)
  {
    v15 = v10;
    CGRectDivide(*&v5, &v18, &remainder, keyboardHeight, CGRectMaxYEdge);
    array = [array arrayByAddingObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", *&v18.origin, *&v18.size)}];
  }

  footerHeightPadding = self->_footerHeightPadding;
  if (footerHeightPadding > 0.0)
  {
    v20.origin.x = v8;
    v20.origin.y = v10;
    v20.size.width = v11;
    v20.size.height = v12;
    CGRectDivide(v20, &v18, &remainder, footerHeightPadding, CGRectMaxYEdge);
    array = [array arrayByAddingObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", *&v18.origin, *&v18.size)}];
  }

  if ([(TSADocumentViewController *)self documentMode:*&v18.origin]== 2)
  {
    [-[TSAFindReplaceUIController view](-[TSADocumentViewController findReplaceUIController](self "findReplaceUIController")];
    return [array arrayByAddingObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:")}];
  }

  return array;
}

- (id)drawableFactory
{
  documentRoot = [(TSADocumentViewController *)self documentRoot];

  return [(TSADocumentRoot *)documentRoot drawableFactory];
}

- (void)willInsertDrawable
{
  if (TSUPhoneUI() && [(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] shouldZoomOnSelectionChange])
  {

    [(TSADocumentViewController *)self zoomOutAnimated:0];
  }
}

- (id)superviewForChartDataEditor:(id)editor
{
  applicationViewController = [(TSADocumentViewController *)self applicationViewController];

  return [applicationViewController view];
}

- (void)p_scrollToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  interactiveCanvasController = [(TSADocumentViewController *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)interactiveCanvasController scrollRectToVisibleCenter:1 animated:0 onlyScrollNecessaryAxes:x, y, width, height];
}

- (void)p_scrollToCurrentSelection
{
  textInputEditor = [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] editorController] textInputEditor];
  if (objc_opt_respondsToSelector())
  {
    v7 = 1;
    if (objc_opt_respondsToSelector() & 1) == 0 || ([textInputEditor performSelector:sel_shouldScrollToCurrentSelection_ withObject:&v7], (v7))
    {
      v4 = *(MEMORY[0x277CBF3A0] + 16);
      v5 = *MEMORY[0x277CBF3A0];
      v6 = v4;
      [textInputEditor performSelector:sel_selectionRect_ withObject:&v5];
      [(TSADocumentViewController *)self p_scrollToRect:v5, v6];
    }
  }
}

- (int64_t)p_documentModeToRestoreFor:(int64_t)for
{
  if (for == 2)
  {
    return 1;
  }

  else
  {
    return for;
  }
}

@end