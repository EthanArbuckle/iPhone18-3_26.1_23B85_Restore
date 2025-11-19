@interface TSADocumentViewController
+ (void)resetLastDocumentMode;
- (BOOL)allowEditMenuToAppear;
- (BOOL)allowImagePickerToAppear;
- (BOOL)navigatorHiddenDefault;
- (BOOL)p_shouldZoomOutForCurrentSelection;
- (BOOL)popoverController:(id)a3 shouldReceiveOutsideTouchAtLocation:(CGPoint)a4 inView:(id)a5;
- (BOOL)tappedCanvasBackgroundAtPoint:(CGPoint)a3;
- (BOOL)willChangeContentOffsetIfKeyboardHidden;
- (CGPoint)clampedUnscaledContentOffset:(CGPoint)a3;
- (CGRect)contentFrame;
- (CGRect)openCloseAnimationCanvasFrame;
- (CGRect)rectForPopoverFromToolbarButton:(id)a3;
- (CGRect)visibleScaledCanvasRectWithoutKeyboard;
- (CGRect)visibleUnscaledCanvasRectWithoutKeyboard;
- (CGSize)sizeOfScrollViewEnclosingCanvas;
- (NSString)closeDocumentButtonTitle;
- (TSADebugViewController)debugViewController;
- (TSADocumentViewController)initWithDefaultView;
- (TSADocumentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_NSRange)visibleRootIndexRange;
- (double)autoZoomAnimationDurationForInteractiveCanvasController:(id)a3;
- (double)leftToolbarItemsInset;
- (double)rightToolbarItemsInset;
- (double)toolbarTextButtonSpaceWidth;
- (id)closeDocumentButton;
- (id)drawableFactory;
- (id)p_arrayByAddingLanguage:(id)a3 toArray:(id)a4;
- (id)rectanglesObscuringView:(id)a3;
- (id)superviewForChartDataEditor:(id)a3;
- (id)title;
- (int64_t)lastDocumentMode;
- (int64_t)p_documentModeToRestoreFor:(int64_t)a3;
- (void)abandonDocument;
- (void)adjustContentViewFrame;
- (void)adjustScrollViewInsets;
- (void)asyncProcessChanges:(id)a3 forChangeSource:(id)a4;
- (void)closeDocumentPressed;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didReplaceDocument;
- (void)didSetDocumentToMode:(int64_t)a3 fromMode:(int64_t)a4 animated:(BOOL)a5;
- (void)documentWillClose;
- (void)editorDidChangeSelection:(id)a3;
- (void)interactiveCanvasController:(id)a3 willAnimateToViewScale:(double)a4 withDuration:(double)a5 unscaledContentOffset:(CGPoint)a6;
- (void)keyboardShowCanceled;
- (void)keyboardWillHideOrUndock:(id)a3;
- (void)keyboardWillShowOrDock:(id)a3;
- (void)loadDocument;
- (void)navigatePlay:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_backgroundInit;
- (void)p_deregisterForNotifications;
- (void)p_restoreTextSelectionAfterModalDismiss;
- (void)p_scrollToCurrentSelection;
- (void)p_scrollToRect:(CGRect)a3;
- (void)p_setDocumentMode:(int64_t)a3 animated:(BOOL)a4 dismissOnTop:(BOOL)a5;
- (void)p_teardown;
- (void)p_zoomOutForCurrentSelection;
- (void)popoverControllerDidDismissPopoverBasedViewController:(id)a3;
- (void)setCanvasScrollViewClipsToBoundsForKeyboardAnimation:(BOOL)a3;
- (void)setDefaultInteractiveCanvasController:(id)a3;
- (void)setDocument:(id)a3;
- (void)setDocumentMode:(int64_t)a3 animated:(BOOL)a4 dismissOnTop:(BOOL)a5;
- (void)setLastDocumentMode:(int64_t)a3;
- (void)setNavigatorHiddenDefault:(BOOL)a3;
- (void)setSelection:(id)a3 onModel:(id)a4 withFlags:(unint64_t)a5;
- (void)toolsFindReplace;
- (void)unloadDocument;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willInsertDrawable;
- (void)willReplaceDocument;
- (void)willSetDocumentToMode:(int64_t)a3 fromMode:(int64_t)a4 animated:(BOOL)a5;
- (void)zoomOutAnimated:(BOOL)a3;
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
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController initWithDefaultView]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 337, @"Abstract method"}];
  self->mSavedContentOffset = *MEMORY[0x277CBF348];
  self->mSavedCanvasViewScale = 0.0;
  return 0;
}

- (TSADocumentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = TSADocumentViewController;
  result = [(TSADocumentViewController *)&v5 initWithNibName:a3 bundle:a4];
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

- (id)p_arrayByAddingLanguage:(id)a3 toArray:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(a4);
        }

        if ([*(*(&v12 + 1) + 8 * v9) hasPrefix:a3])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
      [a4 addObject:a3];
    }

    return a4;
  }

  else
  {
    v11 = MEMORY[0x277CBEB18];

    return [v11 arrayWithObject:?];
  }
}

- (void)setDefaultInteractiveCanvasController:(id)a3
{
  v5 = a3;

  self->_interactiveCanvasController = a3;
}

- (void)setDocument:(id)a3
{
  document = self->_document;
  if (document != a3)
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

    self->_document = a3;
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

- (void)setSelection:(id)a3 onModel:(id)a4 withFlags:(unint64_t)a5
{
  if ([(TSADocumentViewController *)self documentMode]== 1)
  {
    v9 = [(TSADocumentViewController *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)v9 setSelection:a3 onModel:a4 withFlags:a5];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (TSAActiveCoachingTipSetObserverContext != a6 && TSACanvasCoachingTipsObserverContext != a6)
  {
    v10 = v6;
    v11 = v7;
    v9.receiver = self;
    v9.super_class = TSADocumentViewController;
    [(TSADocumentViewController *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)navigatePlay:(id)a3
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

- (void)popoverControllerDidDismissPopoverBasedViewController:(id)a3
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

- (BOOL)popoverController:(id)a3 shouldReceiveOutsideTouchAtLocation:(CGPoint)a4 inView:(id)a5
{
  y = a4.y;
  x = a4.x;
  [(UIButton *)self->_closeButton bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UIButton *)self->_closeButton convertPoint:a5 fromView:x, y];
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
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v2 BOOLForKeyInCurrentRole:@"NavigatorHidden"];
}

- (void)setNavigatorHiddenDefault:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [v4 setBool:v3 forKeyInCurrentRole:@"NavigatorHidden"];
}

- (void)closeDocumentPressed
{
  [+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")];
  v3 = [(TSADocumentViewController *)self defaultInteractiveCanvasController];

  [(TSDInteractiveCanvasController *)v3 teardownBackgroundRendering];
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
  v3 = [(TSADocumentViewController *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v3 beginEditingRep:0];
}

- (void)loadDocument
{
  if (!self->_isDocumentLoaded)
  {
    v3 = [(TSADocumentViewController *)self defaultInteractiveCanvasController];
    v4 = [(TSADocumentViewController *)self documentRoot];
    [(TSDInteractiveCanvasController *)v3 setShowInvisibleObjects:1];
    [(TSKChangeNotifier *)[(TSKDocumentRoot *)v4 changeNotifier] addObserver:self forChangeSource:v4];
    [(TSAInteractiveCanvasController *)v3 loadDocument];
    v5 = [(TSADocumentViewController *)self lastDocumentMode];
    [(TSADocumentViewController *)self setLastDocumentMode:v5];
    [(TSADocumentViewController *)self p_setDocumentMode:v5 animated:0 dismissOnTop:1];
    [+[TSKPopoverUndoObserver sharedObserver](TSKPopoverUndoObserver "sharedObserver")];
    self->_isDocumentLoaded = 1;
  }
}

- (void)p_teardown
{
  [(TSAInteractiveCanvasController *)[(TSADocumentViewController *)self defaultInteractiveCanvasController] teardown];
  v3 = [(TSADocumentViewController *)self documentRoot];
  v4 = +[TSDImageProviderPool sharedPool];
  v5 = [(TSPObject *)v3 context];

  [v4 willCloseDocumentContext:v5];
}

- (void)unloadDocument
{
  v3 = [(TSADocumentViewController *)self defaultInteractiveCanvasController];
  [+[TSKPopoverUndoObserver sharedObserver](TSKPopoverUndoObserver "sharedObserver")];
  [(TSADocumentViewController *)self p_deregisterForNotifications];
  v4 = [(TSADocumentViewController *)self documentRoot];
  [(TSKChangeNotifier *)[(TSKDocumentRoot *)v4 changeNotifier] removeObserver:self forChangeSource:v4];
  [(TSAInteractiveCanvasController *)v3 unloadDocument];

  [(TSADocumentViewController *)self p_teardown];
}

- (CGPoint)clampedUnscaledContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(TSADocumentViewController *)self interactiveCanvasController];
  [(TSDScrollView *)self->_scrollView frame];
  MaxY = CGRectGetMaxY(v18);
  [(TSDInteractiveCanvasController *)v6 convertUnscaledToBoundsPoint:x, y];
  v9 = v8;
  v11 = v10;
  [(TSDScrollView *)self->_scrollView contentSize];
  if (v12 - v11 < MaxY)
  {
    [(TSDInteractiveCanvasController *)v6 convertBoundsToUnscaledPoint:v9, fmax(v11 - (MaxY - (v12 - v11)), 0.0)];
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

  v3 = [(TIADocument *)self->_document documentRoot];

  return [(TSADocumentRoot *)v3 name];
}

- (id)closeDocumentButton
{
  v3 = [(TSADocumentViewController *)self closeDocumentButtonTitle];

  return [(TSAViewController *)self toolbarButtonWithTitle:v3 target:self action:sel_closeDocumentPressed isModal:0];
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

- (CGRect)rectForPopoverFromToolbarButton:(id)a3
{
  [a3 bounds];
  v5 = v4;
  v7 = v6 + -6.0;
  [objc_msgSend(a3 "imageView")];
  v10 = v5;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v9;
  result.origin.y = v10;
  result.origin.x = v8;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = TSADocumentViewController;
  [(TSADocumentViewController *)&v6 viewWillAppear:a3];
  if (!self->_document)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController viewWillAppear:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 2812, @"No document has been set"}];
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

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = TSADocumentViewController;
  [(TSAViewController *)&v6 viewDidAppear:a3];
  if (!self->_document)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController viewDidAppear:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 2872, @"No document has been set"}];
  }

  if (!self->_scheduledBackgroundInit)
  {
    self->_scheduledBackgroundInit = 1;
    [(TSADocumentViewController *)self performSelector:sel_p_startBackgroundInit withObject:0 afterDelay:0.00999999978];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = TSADocumentViewController;
  [(TSAViewController *)&v13 viewWillDisappear:a3];
  if ([(TSADocumentViewController *)self document])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [(TSDCanvas *)[(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] canvas] topLevelReps];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:sel_disableCaretAnimation];
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
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
  v2 = [(TSADocumentViewController *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v2 visibleBoundsRect];
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

- (void)interactiveCanvasController:(id)a3 willAnimateToViewScale:(double)a4 withDuration:(double)a5 unscaledContentOffset:(CGPoint)a6
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

- (void)setDocumentMode:(int64_t)a3 animated:(BOOL)a4 dismissOnTop:(BOOL)a5
{
  if (self->_documentMode != a3)
  {
    [TSADocumentViewController p_setDocumentMode:"p_setDocumentMode:animated:dismissOnTop:" animated:? dismissOnTop:?];
    if (a3 != 2)
    {

      [(TSADocumentViewController *)self setLastDocumentMode:a3];
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

- (void)setLastDocumentMode:(int64_t)a3
{
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [v4 setInteger:a3 forKey:@"DocumentMode"];
}

+ (void)resetLastDocumentMode
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [v2 removeObjectForKey:@"DocumentMode"];
}

- (void)willSetDocumentToMode:(int64_t)a3 fromMode:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = [(TSADocumentViewController *)self interactiveCanvasController];

  [(TSAInteractiveCanvasController *)v8 willSetDocumentToMode:a3 fromMode:a4 animated:v5];
}

- (void)didSetDocumentToMode:(int64_t)a3 fromMode:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = [(TSADocumentViewController *)self interactiveCanvasController];

  [(TSAInteractiveCanvasController *)v8 didSetDocumentToMode:a3 fromMode:a4 animated:v5];
}

- (BOOL)tappedCanvasBackgroundAtPoint:(CGPoint)a3
{
  if ([(TSADocumentViewController *)self documentMode:a3.x]&& [(TSADocumentViewController *)self documentMode]!= 2)
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

  v3 = [(TSDCanvasView *)[(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] canvasView] enclosingScrollView];
  [(TSKScrollView *)v3 contentSize];
  v5 = v4;
  [(TSKScrollView *)v3 contentOffset];
  v7 = v6;
  [(TSKScrollView *)v3 frame];
  return v5 - v7 < CGRectGetMaxY(v9) - self->_keyboardHeight;
}

- (void)adjustScrollViewInsets
{
  v2 = [(TSADocumentViewController *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v2 unobscuredFrameDidChange];
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
    v17 = [(TSADocumentViewController *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)v17 setShouldAutoscrollToSelectionAfterLayout:1];
  }
}

- (CGRect)visibleScaledCanvasRectWithoutKeyboard
{
  v3 = [(TSADocumentViewController *)self interactiveCanvasController];
  [(TSDInteractiveCanvasController *)v3 visibleBoundsRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(TSADocumentViewController *)self isKeyboardUp])
  {
    v12 = [(TSDInteractiveCanvasController *)v3 canvasView];
    v11 = v11 + self->_keyboardHeight;
    [(TSKScrollView *)[(TSDCanvasView *)v12 enclosingScrollView] contentSize];
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
  v3 = [(TSADocumentViewController *)self interactiveCanvasController];
  [(TSADocumentViewController *)self visibleScaledCanvasRectWithoutKeyboard];

  [(TSDInteractiveCanvasController *)v3 convertBoundsToUnscaledRect:?];
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
  v3 = [(TSADocumentViewController *)self allowEditMenuToAppear];
  if (v3)
  {
    LOBYTE(v3) = ![(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] inReadMode];
  }

  return v3;
}

- (void)p_setDocumentMode:(int64_t)a3 animated:(BOOL)a4 dismissOnTop:(BOOL)a5
{
  if (!self->_settingDocumentMode)
  {
    v5 = a4;
    self->_settingDocumentMode = 1;
    documentMode = self->_documentMode;
    [(TSADocumentViewController *)self willSetDocumentToMode:a3 fromMode:documentMode animated:a4];
    self->_documentMode = a3;
    v9 = [(TSADocumentViewController *)self interactiveCanvasController];
    v10 = v9;
    if (!a3)
    {
      [(TSDInteractiveCanvasController *)v9 setKeyboardSuppressedAndTextInputEditorIgnoresFirstResponderChanges:1];
      [(TSADocumentViewController *)self setSelection:+[TSDCanvasSelection onModel:"emptySelection"]withFlags:[(TSADocumentViewController *)self documentRoot], 0];
    }

    [(TSDInteractiveCanvasController *)v10 setInReadMode:a3 == 0];
    [(TSDInteractiveCanvasController *)v10 setShowInvisibleObjects:a3 != 0];
    v11 = [MEMORY[0x277D75128] sharedApplication];
    v12 = 0.2;
    if (!v5)
    {
      v12 = 0.0;
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__TSADocumentViewController_p_setDocumentMode_animated_dismissOnTop___block_invoke;
    v14[3] = &unk_279D4AE88;
    v14[4] = v11;
    v14[5] = self;
    v14[6] = v10;
    v14[7] = documentMode;
    v14[8] = a3;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__TSADocumentViewController_p_setDocumentMode_animated_dismissOnTop___block_invoke_2;
    v13[3] = &unk_279D4AEB0;
    v13[4] = self;
    v13[5] = v11;
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
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController closeDocumentButtonTitle]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 3696, @"Abstract method"}];
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

- (void)zoomOutAnimated:(BOOL)a3
{
  v3 = a3;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController fitWidthViewScale];
  v6 = v5;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController visibleUnscaledRect];
  interactiveCanvasController = self->_interactiveCanvasController;

  [(TSDInteractiveCanvasController *)interactiveCanvasController setViewScale:1 contentOffset:v3 clampOffset:v6 animated:0.0, v7];
}

- (void)setCanvasScrollViewClipsToBoundsForKeyboardAnimation:(BOOL)a3
{
  v3 = a3;
  if (![(TSADocumentViewController *)self preserveScrollViewClipping])
  {
    v5 = [(TSDCanvasView *)[(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] canvasView] enclosingScrollView];

    [(TSKScrollView *)v5 setClipsToBounds:v3];
  }
}

- (void)keyboardWillShowOrDock:(id)a3
{
  if ([(TSADocumentViewController *)self contentView]&& self->_registered)
  {
    v5 = [a3 userInfo];
    if (!v5)
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController keyboardWillShowOrDock:]"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 3969, @"invalid nil value for '%s'", "userInfo"}];
    }

    [+[TSKKeyboardMonitor sharedKeyboardMonitor](TSKKeyboardMonitor "sharedKeyboardMonitor")];
    self->_keyboardHeight = v8;
    [objc_msgSend(v5 objectForKey:{*MEMORY[0x277D76B78]), "floatValue"}];
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

    v13 = [MEMORY[0x277D75128] sharedApplication];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__TSADocumentViewController_keyboardWillShowOrDock___block_invoke;
    v15[3] = &unk_279D47668;
    v15[4] = v13;
    v15[5] = self;
    *&v15[6] = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__TSADocumentViewController_keyboardWillShowOrDock___block_invoke_2;
    v14[3] = &unk_279D4AEB0;
    v14[4] = self;
    v14[5] = v13;
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

- (void)keyboardWillHideOrUndock:(id)a3
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
      v6 = [a3 userInfo];
      [objc_msgSend(v6 objectForKey:{*MEMORY[0x277D76B78]), "floatValue"}];
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

      v11 = [MEMORY[0x277D75128] sharedApplication];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __54__TSADocumentViewController_keyboardWillHideOrUndock___block_invoke;
      v13[3] = &unk_279D47668;
      v13[4] = v11;
      v13[5] = self;
      *&v13[6] = v9;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __54__TSADocumentViewController_keyboardWillHideOrUndock___block_invoke_2;
      v12[3] = &unk_279D4AEB0;
      v12[4] = self;
      v12[5] = v11;
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

- (void)asyncProcessChanges:(id)a3 forChangeSource:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(TIADocument *)self->_document documentRoot]== a4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [a3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(a3);
          }

          v8 = *(*(&v21 + 1) + 8 * v7);
          if ([v8 kind] == 2)
          {
            v9 = [v8 details];
            v10 = [v9 objectForKey:@"model"];
            objc_opt_class();
            [v9 objectForKey:v18];
            v11 = TSUDynamicCast();
            objc_opt_class();
            [v9 objectForKey:@"flags"];
            v12 = [TSUDynamicCast() unsignedIntegerValue];
            if (v10)
            {
              if (v11)
              {
LABEL_10:
                [(TSADocumentViewController *)self setSelection:v11 onModel:v10 withFlags:v12 | 0x40];
                goto LABEL_11;
              }
            }

            else
            {
              v13 = [MEMORY[0x277D6C290] currentHandler];
              v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController asyncProcessChanges:forChangeSource:]"];
              [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 4130, @"bad model in a selection change record"}];
              if (v11)
              {
                goto LABEL_10;
              }
            }

            v15 = [MEMORY[0x277D6C290] currentHandler];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentViewController asyncProcessChanges:forChangeSource:]"];
            [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/ios/TSADocumentViewController.m"), 4131, @"bad selection in a selection change record"}];
            goto LABEL_10;
          }

LABEL_11:
          ++v7;
        }

        while (v5 != v7);
        v17 = [a3 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v5 = v17;
      }

      while (v17);
    }
  }
}

- (double)autoZoomAnimationDurationForInteractiveCanvasController:(id)a3
{
  v4 = [(TSADocumentViewController *)self presentedViewController];
  result = 0.0;
  if (!v4)
  {
    result = self->_contentFrameAnimationDuration;
    if (result == 0.0)
    {
      return 0.3;
    }
  }

  return result;
}

- (void)editorDidChangeSelection:(id)a3
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

- (id)rectanglesObscuringView:(id)a3
{
  v4 = [MEMORY[0x277CBEA60] array];
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
    v4 = [v4 arrayByAddingObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", *&v18.origin, *&v18.size)}];
  }

  footerHeightPadding = self->_footerHeightPadding;
  if (footerHeightPadding > 0.0)
  {
    v20.origin.x = v8;
    v20.origin.y = v10;
    v20.size.width = v11;
    v20.size.height = v12;
    CGRectDivide(v20, &v18, &remainder, footerHeightPadding, CGRectMaxYEdge);
    v4 = [v4 arrayByAddingObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", *&v18.origin, *&v18.size)}];
  }

  if ([(TSADocumentViewController *)self documentMode:*&v18.origin]== 2)
  {
    [-[TSAFindReplaceUIController view](-[TSADocumentViewController findReplaceUIController](self "findReplaceUIController")];
    return [v4 arrayByAddingObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:")}];
  }

  return v4;
}

- (id)drawableFactory
{
  v2 = [(TSADocumentViewController *)self documentRoot];

  return [(TSADocumentRoot *)v2 drawableFactory];
}

- (void)willInsertDrawable
{
  if (TSUPhoneUI() && [(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] shouldZoomOnSelectionChange])
  {

    [(TSADocumentViewController *)self zoomOutAnimated:0];
  }
}

- (id)superviewForChartDataEditor:(id)a3
{
  v3 = [(TSADocumentViewController *)self applicationViewController];

  return [v3 view];
}

- (void)p_scrollToRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(TSADocumentViewController *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v7 scrollRectToVisibleCenter:1 animated:0 onlyScrollNecessaryAxes:x, y, width, height];
}

- (void)p_scrollToCurrentSelection
{
  v3 = [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSADocumentViewController *)self interactiveCanvasController] editorController] textInputEditor];
  if (objc_opt_respondsToSelector())
  {
    v7 = 1;
    if (objc_opt_respondsToSelector() & 1) == 0 || ([v3 performSelector:sel_shouldScrollToCurrentSelection_ withObject:&v7], (v7))
    {
      v4 = *(MEMORY[0x277CBF3A0] + 16);
      v5 = *MEMORY[0x277CBF3A0];
      v6 = v4;
      [v3 performSelector:sel_selectionRect_ withObject:&v5];
      [(TSADocumentViewController *)self p_scrollToRect:v5, v6];
    }
  }
}

- (int64_t)p_documentModeToRestoreFor:(int64_t)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

@end