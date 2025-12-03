@interface WebHTMLView
- (BOOL)_beginPrintModeWithMinimumPageWidth:(double)width height:(double)height maximumPageWidth:(double)pageWidth;
- (BOOL)_beginPrintModeWithPageWidth:(float)width height:(float)height shrinkToFit:(BOOL)fit;
- (BOOL)_beginScreenPaginationModeWithPageSize:(CGSize)size shrinkToFit:(BOOL)fit;
- (BOOL)_canAlterCurrentSelection;
- (BOOL)_canDecreaseSelectionListLevel;
- (BOOL)_canEdit;
- (BOOL)_canEditRichly;
- (BOOL)_canIncreaseSelectionListLevel;
- (BOOL)_canSmartCopyOrDelete;
- (BOOL)_findString:(id)string options:(unint64_t)options;
- (BOOL)_handleEditingKeyEvent:(void *)event;
- (BOOL)_hasInsertionPoint;
- (BOOL)_hasSelection;
- (BOOL)_hasSelectionOrInsertionPoint;
- (BOOL)_isEditable;
- (BOOL)_isSelectionEvent:(id)event;
- (BOOL)_needsLayout;
- (BOOL)_shouldInsertFragment:(id)fragment replacingDOMRange:(id)range givenAction:(int64_t)action;
- (BOOL)_shouldInsertText:(id)text replacingDOMRange:(id)range givenAction:(int64_t)action;
- (BOOL)_shouldReplaceSelectionWithText:(id)text givenAction:(int64_t)action;
- (BOOL)_wantsKeyDownForEvent:(id)event;
- (BOOL)acceptsFirstResponder;
- (BOOL)becomeFirstResponder;
- (BOOL)callDelegateDoCommandBySelectorIfNeeded:(SEL)needed;
- (BOOL)hasMarkedText;
- (BOOL)isOpaque;
- (BOOL)maintainsInactiveSelection;
- (BOOL)markedTextMatchesAreHighlighted;
- (BOOL)resignFirstResponder;
- (BOOL)searchFor:(id)for direction:(BOOL)direction caseSensitive:(BOOL)sensitive wrap:(BOOL)wrap startInSelection:(BOOL)selection;
- (CGImage)selectionImageForcingBlackText:(BOOL)text;
- (CGRect)firstRectForCharacterRange:(_NSRange)range;
- (CGRect)selectionImageRect;
- (CGRect)selectionRect;
- (Command)coreCommandByName:(SEL)name;
- (Command)coreCommandBySelector:(SEL)selector;
- (WebHTMLView)initWithFrame:(CGRect)frame;
- (_NSRange)markedRange;
- (_NSRange)selectedRange;
- (double)_adjustedBottomOfPageWithTop:(double)top bottom:(double)bottom limit:(double)limit;
- (id)_accessibilityParentForSubview:(id)subview;
- (id)_documentRange;
- (id)_emptyStyle;
- (id)_frameView;
- (id)_increaseSelectionListLevel;
- (id)_increaseSelectionListLevelOrdered;
- (id)_increaseSelectionListLevelUnordered;
- (id)_insertOrderedList;
- (id)_insertUnorderedList;
- (id)_selectedRange;
- (id)_topHTMLView;
- (id)accessibilityFocusedUIElement;
- (id)accessibilityHitTest:(CGPoint)test;
- (id)accessibilityRootElement;
- (id)elementAtPoint:(CGPoint)point allowShadowContent:(BOOL)content;
- (id)hitTest:(CGPoint)test;
- (id)rectsForTextMatches;
- (id)selectedString;
- (id)selectionTextRects;
- (id)string;
- (unint64_t)characterIndexForPoint:(CGPoint)point;
- (unint64_t)countMatchesForText:(id)text inDOMRange:(id)range options:(unint64_t)options limit:(unint64_t)limit markMatches:(BOOL)matches;
- (unsigned)_scrollbarWidthStyle;
- (void)_applyEditingStyleToSelection:(void *)selection withUndoAction:(unsigned __int8)action;
- (void)_applyStyleToSelection:(id)selection withUndoAction:(unsigned __int8)action;
- (void)_changeWordCaseWithSelector:(SEL)selector;
- (void)_decreaseSelectionListLevel;
- (void)_destroyAllWebPlugins;
- (void)_endPrintMode;
- (void)_endScreenPaginationMode;
- (void)_executeSavedKeypressCommands;
- (void)_frameOrBoundsChanged;
- (void)_layoutIfNeeded;
- (void)_setMouseDownEvent:(id)event;
- (void)_setPrinting:(BOOL)printing minimumPageLogicalWidth:(float)width logicalHeight:(float)height originalPageWidth:(float)pageWidth originalPageHeight:(float)pageHeight maximumShrinkRatio:(float)ratio adjustViewSize:(BOOL)size paginateScreenContent:(BOOL)self0;
- (void)_web_updateLayoutAndStyleIfNeededRecursive;
- (void)addSubview:(id)subview;
- (void)capitalizeWord:(id)word;
- (void)centerSelectionInVisibleArea:(id)area;
- (void)clearFocus;
- (void)close;
- (void)closeIfNotCurrentView;
- (void)dealloc;
- (void)deselectAll;
- (void)doCommandBySelector:(SEL)selector;
- (void)drawRect:(CGRect)rect;
- (void)drawSingleRect:(CGRect)rect;
- (void)executeCoreCommandByName:(const char *)name;
- (void)executeCoreCommandBySelector:(SEL)selector;
- (void)insertText:(id)text;
- (void)jumpToSelection:(id)selection;
- (void)keyDown:(id)down;
- (void)keyUp:(id)up;
- (void)layoutToMinimumPageWidth:(float)width height:(float)height originalPageWidth:(float)pageWidth originalPageHeight:(float)pageHeight maximumShrinkRatio:(float)ratio adjustingViewSize:(BOOL)size;
- (void)lowercaseWord:(id)word;
- (void)markedTextUpdate:(id)update;
- (void)mouseDown:(id)down;
- (void)mouseMoved:(id)moved;
- (void)mouseUp:(id)up;
- (void)reapplyStyles;
- (void)scrollWheel:(id)wheel;
- (void)selectAll;
- (void)setDataSource:(id)source;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setMarkedTextMatchesAreHighlighted:(BOOL)highlighted;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setNeedsLayout:(BOOL)layout;
- (void)setNeedsToApplyStyles:(BOOL)styles;
- (void)setScale:(float)scale;
- (void)touch:(id)touch;
- (void)unmarkAllTextMatches;
- (void)unmarkText;
- (void)uppercaseWord:(id)word;
- (void)viewDidMoveToWindow;
- (void)viewWillDraw;
- (void)viewWillMoveToWindow:(id)window;
- (void)willRemoveSubview:(id)subview;
@end

@implementation WebHTMLView

- (id)_documentRange
{
  v2 = [-[WebHTMLView _frame](self "_frame")];

  return [v2 _documentRange];
}

- (id)_frameView
{
  webFrame = [(WebDataSource *)self->_private->dataSource.m_ptr webFrame];

  return [(WebFrame *)webFrame frameView];
}

- (BOOL)_shouldInsertFragment:(id)fragment replacingDOMRange:(id)range givenAction:(int64_t)action
{
  _webView = [(WebHTMLView *)self _webView];
  firstChild = [fragment firstChild];
  if ([fragment lastChild] == firstChild && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    _editingDelegateForwarder = [_webView _editingDelegateForwarder];
    data = [firstChild data];

    return [_editingDelegateForwarder webView:_webView shouldInsertText:data replacingDOMRange:range givenAction:action];
  }

  else
  {
    _editingDelegateForwarder2 = [_webView _editingDelegateForwarder];

    return [_editingDelegateForwarder2 webView:_webView shouldInsertNode:fragment replacingDOMRange:range givenAction:action];
  }
}

- (BOOL)_shouldInsertText:(id)text replacingDOMRange:(id)range givenAction:(int64_t)action
{
  _webView = [(WebHTMLView *)self _webView];
  _editingDelegateForwarder = [_webView _editingDelegateForwarder];

  return [_editingDelegateForwarder webView:_webView shouldInsertText:text replacingDOMRange:range givenAction:action];
}

- (BOOL)_shouldReplaceSelectionWithText:(id)text givenAction:(int64_t)action
{
  _selectedRange = [(WebHTMLView *)self _selectedRange];

  return [(WebHTMLView *)self _shouldInsertText:text replacingDOMRange:_selectedRange givenAction:action];
}

- (id)_selectedRange
{
  result = [(WebHTMLView *)self _frame];
  if (result)
  {
    v3 = *(*(result + 1) + 8);
    if (!v3)
    {
      return 0;
    }

    WebCore::VisibleSelection::toNormalizedRange(&v8, (*(*(v3 + 224) + 3208) + 56));
    result = kit();
    if (v10 == 1)
    {
      v4 = v9;
      v9 = 0;
      if (v4)
      {
        if (*(v4 + 7) == 2)
        {
          v6 = result;
          WebCore::Node::removedLastRef(v4);
          result = v6;
          v5 = v8;
          v8 = 0;
          if (!v5)
          {
            return result;
          }

          goto LABEL_8;
        }

        *(v4 + 7) -= 2;
      }

      v5 = v8;
      v8 = 0;
      if (!v5)
      {
        return result;
      }

LABEL_8:
      if (*(v5 + 7) == 2)
      {
        v7 = result;
        WebCore::Node::removedLastRef(v5);
        return v7;
      }

      else
      {
        *(v5 + 7) -= 2;
      }
    }
  }

  return result;
}

- (void)_setMouseDownEvent:(id)event
{
  v4 = self->_private;
  if (event)
  {
    eventCopy = event;
  }

  m_ptr = v4->mouseDownEvent.m_ptr;
  v4->mouseDownEvent.m_ptr = event;
  if (m_ptr)
  {
  }
}

- (id)_topHTMLView
{
  v2 = [objc_msgSend(-[WebDataSource _webView](self->_private->dataSource.m_ptr "_webView")];

  return [v2 documentView];
}

- (void)mouseMoved:(id)moved
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v5 = *(_frame[1] + 8);
    if (v5)
    {
      v6 = *(v5 + 336);

      MEMORY[0x1EEE54AB0](v6, moved);
    }
  }
}

- (void)_frameOrBoundsChanged
{
  _webView = [(WebHTMLView *)self _webView];
  v4 = [objc_msgSend(objc_msgSend(_webView "mainFrame")];
  [-[WebHTMLView superview](self "superview")];
  v13.x = v5;
  v13.y = v6;
  v12.x = v5;
  v12.y = v6;
  if (!NSEqualPoints(self->_private->lastScrollPosition, v13) && ([v4 inProgrammaticScroll] & 1) == 0)
  {
    _frame = [(WebHTMLView *)self _frame];
    if (_frame)
    {
      v8 = *(_frame[1] + 8);
      if (v8)
      {
        v9 = *(v8 + 216);
        if (v9)
        {
          self->_private->inScrollPositionChanged = 1;
          WebCore::IntPoint::IntPoint(&v11, &self->_private->lastScrollPosition);
          WebCore::IntPoint::IntPoint(&v10, &v12);
          WebCore::ScrollView::scrollOffsetChangedViaPlatformWidget(v9, &v11, &v10);
          self->_private->inScrollPositionChanged = 0;
        }
      }
    }

    [_webView _didScrollDocumentInFrameView:{-[WebHTMLView _frameView](self, "_frameView")}];
  }

  self->_private->lastScrollPosition = v12;
}

- (void)viewWillDraw
{
  if (self->_private->dataSource.m_ptr && [(WebHTMLView *)self _isTopHTMLView])
  {
    [(WebHTMLView *)self _web_updateLayoutAndStyleIfNeededRecursive];
    [-[WebHTMLView _webView](self "_webView")];
  }

  v3.receiver = self;
  v3.super_class = WebHTMLView;
  [(WebHTMLView *)&v3 viewWillDraw];
}

- (id)hitTest:(CGPoint)test
{
  if (self->_private->closed)
  {
    return 0;
  }

  y = test.y;
  x = test.x;
  superview = [(WebHTMLView *)self superview];
  [(WebHTMLView *)self frame];
  if ([superview mouse:x inRect:{y, v8, v9, v10, v11}])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (void)setScale:(float)scale
{
  v10.receiver = self;
  v10.super_class = WebHTMLView;
  [(WebHTMLView *)&v10 setScale:?];
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v6 = *(_frame[1] + 8);
    if (v6)
    {
      v7 = *(v6 + 24);
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = 0;
          WebCore::Page::setPageScaleFactor(v8, scale, &v9);
        }
      }

      [-[WebHTMLView _webView](self "_webView")];
    }
  }
}

- (BOOL)_canEdit
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v3 = *(_frame[1] + 8);
    if (v3)
    {
      v4 = *(v3 + 224);
      if (v4)
      {
        *(v4 + 7) += 2;
      }

      v5 = WebCore::Document::editor(v4);
      if (v4)
      {
        if (*(v4 + 7) == 2)
        {
          v7 = v5;
          WebCore::Node::removedLastRef(v4);
          v5 = v7;

          return WebCore::Editor::canEdit(v5);
        }

        *(v4 + 7) -= 2;
      }

      return WebCore::Editor::canEdit(v5);
    }
  }

  return 0;
}

- (BOOL)_canEditRichly
{
  _frame = [(WebHTMLView *)self _frame];
  if (!_frame)
  {
    return 0;
  }

  v3 = *(_frame[1] + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 224);
  if (v4)
  {
    *(v4 + 7) += 2;
  }

  v5 = WebCore::Document::editor(v4);
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      v7 = v5;
      WebCore::Node::removedLastRef(v4);
      v5 = v7;

      return MEMORY[0x1EEE5DF80](v5);
    }

    *(v4 + 7) -= 2;
  }

  return MEMORY[0x1EEE5DF80](v5);
}

- (BOOL)_canAlterCurrentSelection
{
  _hasSelectionOrInsertionPoint = [(WebHTMLView *)self _hasSelectionOrInsertionPoint];
  if (_hasSelectionOrInsertionPoint)
  {

    LOBYTE(_hasSelectionOrInsertionPoint) = [(WebHTMLView *)self _isEditable];
  }

  return _hasSelectionOrInsertionPoint;
}

- (BOOL)_hasSelection
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v3 = *(_frame[1] + 8);
    if (v3)
    {
      LOBYTE(_frame) = *(*(*(v3 + 224) + 3208) + 153) == 2;
    }

    else
    {
      LOBYTE(_frame) = 0;
    }
  }

  return _frame;
}

- (BOOL)_hasSelectionOrInsertionPoint
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v3 = *(_frame[1] + 8);
    if (v3)
    {
      LOBYTE(_frame) = *(*(*(v3 + 224) + 3208) + 153) != 0;
    }

    else
    {
      LOBYTE(_frame) = 0;
    }
  }

  return _frame;
}

- (BOOL)_hasInsertionPoint
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v3 = *(_frame[1] + 8);
    if (v3)
    {
      LOBYTE(_frame) = *(*(*(v3 + 224) + 3208) + 153) == 1;
    }

    else
    {
      LOBYTE(_frame) = 0;
    }
  }

  return _frame;
}

- (BOOL)_isEditable
{
  _frame = [(WebHTMLView *)self _frame];
  if (!_frame)
  {
    return 0;
  }

  v3 = *(_frame[1] + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = (*(*(v3 + 224) + 3208) + 56);

  return WebCore::VisibleSelection::isContentEditable(v4);
}

- (id)_insertOrderedList
{
  result = [(WebHTMLView *)self _frame];
  if (result)
  {
    v3 = *(*(result + 1) + 8);
    if (v3)
    {
      v4 = *(v3 + 224);
      if (v4)
      {
        *(v4 + 7) += 2;
      }

      v5 = WebCore::Document::editor(v4);
      if (v4)
      {
        if (*(v4 + 7) == 2)
        {
          v6 = v5;
          WebCore::Node::removedLastRef(v4);
          v5 = v6;
        }

        else
        {
          *(v4 + 7) -= 2;
        }
      }

      WebCore::Editor::insertOrderedList(&v9, v5);
      result = kit(v9);
      v7 = v9;
      v9 = 0;
      if (v7)
      {
        if (*(v7 + 7) == 2)
        {
          v8 = result;
          WebCore::Node::removedLastRef(v7);
          return v8;
        }

        else
        {
          *(v7 + 7) -= 2;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_insertUnorderedList
{
  result = [(WebHTMLView *)self _frame];
  if (result)
  {
    v3 = *(*(result + 1) + 8);
    if (v3)
    {
      v4 = *(v3 + 224);
      if (v4)
      {
        *(v4 + 7) += 2;
      }

      v5 = WebCore::Document::editor(v4);
      if (v4)
      {
        if (*(v4 + 7) == 2)
        {
          v6 = v5;
          WebCore::Node::removedLastRef(v4);
          v5 = v6;
        }

        else
        {
          *(v4 + 7) -= 2;
        }
      }

      WebCore::Editor::insertUnorderedList(&v9, v5);
      result = kit(v9);
      v7 = v9;
      v9 = 0;
      if (v7)
      {
        if (*(v7 + 7) == 2)
        {
          v8 = result;
          WebCore::Node::removedLastRef(v7);
          return v8;
        }

        else
        {
          *(v7 + 7) -= 2;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)_canIncreaseSelectionListLevel
{
  _frame = [(WebHTMLView *)self _frame];
  if (!_frame)
  {
    return 0;
  }

  v3 = *(_frame[1] + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 224);
  if (v4)
  {
    *(v4 + 7) += 2;
  }

  v5 = WebCore::Document::editor(v4);
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      v7 = v5;
      WebCore::Node::removedLastRef(v4);
      v5 = v7;

      return MEMORY[0x1EEE5AD10](v5);
    }

    *(v4 + 7) -= 2;
  }

  return MEMORY[0x1EEE5AD10](v5);
}

- (BOOL)_canDecreaseSelectionListLevel
{
  _frame = [(WebHTMLView *)self _frame];
  if (!_frame)
  {
    return 0;
  }

  v3 = *(_frame[1] + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 224);
  if (v4)
  {
    *(v4 + 7) += 2;
  }

  v5 = WebCore::Document::editor(v4);
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      v7 = v5;
      WebCore::Node::removedLastRef(v4);
      v5 = v7;

      return MEMORY[0x1EEE5AD08](v5);
    }

    *(v4 + 7) -= 2;
  }

  return MEMORY[0x1EEE5AD08](v5);
}

- (id)_increaseSelectionListLevel
{
  result = [(WebHTMLView *)self _frame];
  if (result)
  {
    v3 = *(*(result + 1) + 8);
    if (v3)
    {
      v4 = *(v3 + 224);
      if (v4)
      {
        *(v4 + 7) += 2;
      }

      v5 = WebCore::Document::editor(v4);
      if (v4)
      {
        if (*(v4 + 7) == 2)
        {
          v6 = v5;
          WebCore::Node::removedLastRef(v4);
          v5 = v6;
        }

        else
        {
          *(v4 + 7) -= 2;
        }
      }

      WebCore::Editor::increaseSelectionListLevel(&v9, v5);
      result = kit(v9);
      v7 = v9;
      v9 = 0;
      if (v7)
      {
        if (*(v7 + 7) == 2)
        {
          v8 = result;
          WebCore::Node::removedLastRef(v7);
          return v8;
        }

        else
        {
          *(v7 + 7) -= 2;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_increaseSelectionListLevelOrdered
{
  result = [(WebHTMLView *)self _frame];
  if (result)
  {
    v3 = *(*(result + 1) + 8);
    if (v3)
    {
      v4 = *(v3 + 224);
      if (v4)
      {
        *(v4 + 7) += 2;
      }

      v5 = WebCore::Document::editor(v4);
      if (v4)
      {
        if (*(v4 + 7) == 2)
        {
          v6 = v5;
          WebCore::Node::removedLastRef(v4);
          v5 = v6;
        }

        else
        {
          *(v4 + 7) -= 2;
        }
      }

      WebCore::Editor::increaseSelectionListLevelOrdered(&v9, v5);
      result = kit(v9);
      v7 = v9;
      v9 = 0;
      if (v7)
      {
        if (*(v7 + 7) == 2)
        {
          v8 = result;
          WebCore::Node::removedLastRef(v7);
          return v8;
        }

        else
        {
          *(v7 + 7) -= 2;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_increaseSelectionListLevelUnordered
{
  result = [(WebHTMLView *)self _frame];
  if (result)
  {
    v3 = *(*(result + 1) + 8);
    if (v3)
    {
      v4 = *(v3 + 224);
      if (v4)
      {
        *(v4 + 7) += 2;
      }

      v5 = WebCore::Document::editor(v4);
      if (v4)
      {
        if (*(v4 + 7) == 2)
        {
          v6 = v5;
          WebCore::Node::removedLastRef(v4);
          v5 = v6;
        }

        else
        {
          *(v4 + 7) -= 2;
        }
      }

      WebCore::Editor::increaseSelectionListLevelUnordered(&v9, v5);
      result = kit(v9);
      v7 = v9;
      v9 = 0;
      if (v7)
      {
        if (*(v7 + 7) == 2)
        {
          v8 = result;
          WebCore::Node::removedLastRef(v7);
          return v8;
        }

        else
        {
          *(v7 + 7) -= 2;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_decreaseSelectionListLevel
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v3 = *(_frame[1] + 8);
    if (v3)
    {
      v4 = *(v3 + 224);
      if (v4)
      {
        *(v4 + 7) += 2;
      }

      v5 = WebCore::Document::editor(v4);
      if (v4)
      {
        if (*(v4 + 7) == 2)
        {
          v6 = v5;
          WebCore::Node::removedLastRef(v4);
          v5 = v6;

          goto __ZN7WebCore6Editor26decreaseSelectionListLevelEv;
        }

        *(v4 + 7) -= 2;
      }

- (void)close
{
  v2 = self->_private;
  if (v2 && !v2->closed)
  {
    v2->closed = 1;
    [(WebPluginController *)self->_private->pluginController.m_ptr destroyAllPlugins];
    [(WebPluginController *)self->_private->pluginController.m_ptr setDataSource:0];
    v4 = self->_private;

    [(WebHTMLViewPrivate *)v4 clear];
  }
}

- (BOOL)_beginPrintModeWithMinimumPageWidth:(double)width height:(double)height maximumPageWidth:(double)pageWidth
{
  _frame = [(WebHTMLView *)self _frame];
  if (!_frame)
  {
    return 0;
  }

  v10 = *(_frame[1] + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 224);
  if (v11 && ((*(*v11 + 384))(v11) & 1) != 0)
  {
    v12 = 0.0;
    width = 0.0;
    height = 0.0;
  }

  else
  {
    v12 = 0.0;
    if (width > 0.0)
    {
      v12 = pageWidth / width;
    }
  }

  widthCopy = width;
  heightCopy = height;
  _isInScreenPaginationMode = [(WebHTMLView *)self _isInScreenPaginationMode];
  *&v17 = widthCopy;
  *&v18 = heightCopy;
  *&v19 = widthCopy;
  *&v20 = heightCopy;
  *&v21 = v12;
  [(WebHTMLView *)self _setPrinting:1 minimumPageLogicalWidth:1 logicalHeight:_isInScreenPaginationMode originalPageWidth:v17 originalPageHeight:v18 maximumShrinkRatio:v19 adjustViewSize:v20 paginateScreenContent:v21];
  return 1;
}

- (BOOL)_beginPrintModeWithPageWidth:(float)width height:(float)height shrinkToFit:(BOOL)fit
{
  fitCopy = fit;
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v10 = *(_frame[1] + 8);
    if (v10)
    {
      v11 = *(v10 + 28);
      if (!v11)
      {
        v13 = 1.0;
        heightCopy6 = height;
        widthCopy5 = width;
        heightCopy5 = height;
        if (!fitCopy)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v12 = v11[253];
      if (v12 && (*(v12 + 120) & 1) != 0)
      {
        v13 = 1.0;
        widthCopy5 = height;
        heightCopy6 = width;
        heightCopy5 = width;
        width = height;
        if (!fitCopy)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = 1.0;
        widthCopy5 = width;
        heightCopy6 = height;
        heightCopy5 = height;
        if (!fitCopy)
        {
          goto LABEL_14;
        }
      }

      width = widthCopy5;
      height = heightCopy6;
      heightCopy5 = heightCopy6;
      if (((*(*v11 + 384))(v11) & 1) == 0)
      {
LABEL_13:
        v27.var0 = width;
        v27.var1 = height;
        v26.var0 = width * 1.25;
        v26.var1 = height * 1.25;
        WebCore::LocalFrame::resizePageRectsKeepingRatio(v10, &v27, &v26);
        heightCopy5 = v17;
        widthCopy5 = width;
        v13 = 1.6;
        heightCopy6 = height;
        width = v18;
      }

LABEL_14:
      _isInScreenPaginationMode = [(WebHTMLView *)self _isInScreenPaginationMode];
      LOBYTE(v10) = 1;
      *&v20 = width;
      *&v21 = heightCopy5;
      *&v22 = widthCopy5;
      *&v23 = heightCopy6;
      *&v24 = v13;
      [(WebHTMLView *)self _setPrinting:1 minimumPageLogicalWidth:1 logicalHeight:_isInScreenPaginationMode originalPageWidth:v20 originalPageHeight:v21 maximumShrinkRatio:v22 adjustViewSize:v23 paginateScreenContent:v24];
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)_endPrintMode
{
  _isInScreenPaginationMode = [(WebHTMLView *)self _isInScreenPaginationMode];

  [(WebHTMLView *)self _setPrinting:0 minimumPageLogicalWidth:1 logicalHeight:_isInScreenPaginationMode originalPageWidth:0.0 originalPageHeight:0.0 maximumShrinkRatio:0.0 adjustViewSize:0.0 paginateScreenContent:0.0];
}

- (BOOL)_beginScreenPaginationModeWithPageSize:(CGSize)size shrinkToFit:(BOOL)fit
{
  height = size.height;
  width = size.width;
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v9 = *(_frame[1] + 8);
    if (v9)
    {
      v10 = *(v9 + 28);
      if (!v10)
      {
        v12 = width;
        v13 = height;
        v14 = 1.0;
        v15 = v13;
        v16 = v12;
        if (!fit)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v11 = v10[253];
      if (v11 && (*(v11 + 120) & 1) != 0)
      {
        v12 = height;
        v13 = width;
        v14 = 1.0;
        v15 = v13;
        v16 = v12;
        if (!fit)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = width;
        v13 = height;
        v14 = 1.0;
        v15 = v13;
        v16 = v12;
        if (!fit)
        {
          goto LABEL_14;
        }
      }

      v15 = v13;
      v16 = v12;
      if (((*(*v10 + 384))(v10) & 1) == 0)
      {
LABEL_13:
        v28.var0 = v12;
        v28.var1 = v13;
        v27.var0 = v12 * 1.25;
        v27.var1 = v13 * 1.25;
        WebCore::LocalFrame::resizePageRectsKeepingRatio(v9, &v28, &v27);
        v16 = v17;
        v15 = v18;
        v14 = 1.6;
      }

LABEL_14:
      _isInPrintMode = [(WebHTMLView *)self _isInPrintMode];
      _isInScreenPaginationMode = [(WebHTMLView *)self _isInScreenPaginationMode];
      LOBYTE(v9) = 1;
      *&v21 = v16;
      *&v22 = v15;
      *&v23 = v12;
      *&v24 = v13;
      *&v25 = v14;
      [(WebHTMLView *)self _setPrinting:_isInPrintMode minimumPageLogicalWidth:1 logicalHeight:_isInScreenPaginationMode originalPageWidth:v21 originalPageHeight:v22 maximumShrinkRatio:v23 adjustViewSize:v24 paginateScreenContent:v25];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)_endScreenPaginationMode
{
  _isInPrintMode = [(WebHTMLView *)self _isInPrintMode];

  [(WebHTMLView *)self _setPrinting:_isInPrintMode minimumPageLogicalWidth:1 logicalHeight:0 originalPageWidth:0.0 originalPageHeight:0.0 maximumShrinkRatio:0.0 adjustViewSize:0.0 paginateScreenContent:0.0];
}

- (double)_adjustedBottomOfPageWithTop:(double)top bottom:(double)bottom limit:(double)limit
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame && (v9 = *(_frame[1] + 8)) != 0 && (v10 = *(v9 + 216)) != 0 && (v23 = 0.0, v11 = top, v12 = bottom, v13 = limit, WebCore::LocalFrameView::adjustPageHeightDeprecated(v10, &v23, v11, v12, v13), v23 != v12) && ((v15 = vabds_f32(v12, v23), v16 = fabsf(v12), v16 < 1.0) ? (v17 = (v16 * 3.4028e38) < v15) : (v17 = 0), v17 || ((v16 * 1.1755e-38) > v15 ? (v18 = v16 <= 1.0) : (v18 = 1), v18 ? (v19 = 0) : (v19 = 1), (v19 & 1) == 0 && (v15 / v16) > 0.00000011921 || ((v20 = fabsf(v23), v20 < 1.0) ? (v21 = (v20 * 3.4028e38) < v15) : (v21 = 0), v21 || (v20 > 1.0 ? (v22 = (v20 * 1.1755e-38) <= v15) : (v22 = 1), v22 && (v15 / v20) > 0.00000011921)))))
  {
    return v23;
  }

  else
  {
    return bottom;
  }
}

- (id)accessibilityRootElement
{
  _frame = [(WebHTMLView *)self _frame];

  return [_frame accessibilityRoot];
}

- (WebHTMLView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = WebHTMLView;
  v3 = [(WebHTMLView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(WebHTMLView *)v3 _setDrawsOwnDescendants:1];
    v4->_private = objc_alloc_init(WebHTMLViewPrivate);
    v5 = [[WebPluginController alloc] initWithDocumentView:v4];
    v6 = v4->_private;
    m_ptr = v6->pluginController.m_ptr;
    v6->pluginController.m_ptr = v5;
    if (m_ptr)
    {
    }

    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [v8 initWithCString:*MEMORY[0x1E69A28E0] encoding:4];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, hardwareKeyboardAvailabilityChangedCallback, v9, 0, 1026);
    if (v9)
    {
    }
  }

  return v4;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [v4 initWithCString:*MEMORY[0x1E69A28E0] encoding:4];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v5, 0);
    [(WebHTMLView *)self close];

    self->_private = 0;
    v7.receiver = self;
    v7.super_class = WebHTMLView;
    [(WebHTMLView *)&v7 dealloc];
    if (v5)
    {
    }
  }
}

- (BOOL)callDelegateDoCommandBySelectorIfNeeded:(SEL)needed
{
  v4 = self->_private;
  selectorForDoCommandBySelector = v4->selectorForDoCommandBySelector;
  v4->selectorForDoCommandBySelector = 0;
  if (selectorForDoCommandBySelector == needed)
  {
    return 0;
  }

  _webView = [(WebHTMLView *)self _webView];
  _editingDelegateForwarder = [_webView _editingDelegateForwarder];

  return [_editingDelegateForwarder webView:_webView doCommandBySelector:needed];
}

- (Command)coreCommandBySelector:(SEL)selector
{
  _frame = [(WebHTMLView *)self _frame];
  if (!_frame || (v10 = *(_frame[1] + 8)) == 0)
  {
    v21 = retstr;

    return MEMORY[0x1EEE5AD70](v21, v7, v8, v9);
  }

  v11 = *(v10 + 224);
  if (v11)
  {
    *(v11 + 7) += 2;
  }

  v12 = WebCore::Document::editor(v11);
  if (!v11)
  {
LABEL_8:
    if (byte_1ED6A611A == 1)
    {
      goto LABEL_9;
    }

LABEL_22:
    qword_1ED6A6128 = createSelectorExceptionMap();
    byte_1ED6A611A = 1;
    v13 = *qword_1ED6A6128;
    if (!*qword_1ED6A6128)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (*(v11 + 7) != 2)
  {
    *(v11 + 7) -= 2;
    goto LABEL_8;
  }

  WebCore::Node::removedLastRef(v11);
  if (byte_1ED6A611A != 1)
  {
    goto LABEL_22;
  }

LABEL_9:
  v13 = *qword_1ED6A6128;
  if (!*qword_1ED6A6128)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (a4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7A81118);
  }

  if (!a4)
  {
    v7 = "/AppleInternal/Library/BuildRoots/4~CAs2ugA2tpMBixvyjjzI_x8zmF9N4IlVu0-_j7U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/HashTable.h";
    v8 = "void WTF::checkHashTableKey(const T &) [Key = SEL *, Value = WTF::KeyValuePair<SEL *, WTF::String>, Extractor = WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<SEL *, WTF::String>>, HashFunctions = WTF::DefaultHash<SEL *>, Traits = WTF::HashMap<SEL *, WTF::String>::KeyValuePairTraits, KeyTraits = WTF::HashTraits<SEL *>, HashTranslator = WTF::IdentityHashTranslator<WTF::HashMap<SEL *, WTF::String>::KeyValuePairTraits, WTF::DefaultHash<SEL *>>, shouldValidateKey = WTF::ShouldValidateKey::Yes, T = SEL *]";
    v21 = 371;
    v9 = 4;
    __break(0xC471u);
    return MEMORY[0x1EEE5AD70](v21, v7, v8, v9);
  }

  v14 = *(v13 - 8);
  v15 = &a4[~(a4 << 32)] ^ (&a4[~(a4 << 32)] >> 22);
  v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
  v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
  v18 = v14 & ((v17 >> 31) ^ v17);
  v19 = *(v13 + 16 * v18);
  if (v19 == a4)
  {
LABEL_16:
    if (v18 != *(v13 - 4))
    {
      v24 = *(v13 + 16 * v18 + 8);
      if (v24)
      {
        atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
      }

      v27 = v24;
      goto LABEL_30;
    }
  }

  else
  {
    v20 = 1;
    while (v19)
    {
      v18 = (v18 + v20) & v14;
      v19 = *(v13 + 16 * v18);
      ++v20;
      if (v19 == a4)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_23:
  Name = sel_getName(a4);
  v23 = strlen(Name);
  if (v23 >= 2 && Name[v23 - 1] == 58)
  {
    WTF::String::String();
  }

  else
  {
    v27 = 0;
  }

LABEL_30:
  WebCore::Editor::command(v12, &v27);
  result = v27;
  v27 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v25);
    }
  }

  return result;
}

- (Command)coreCommandByName:(SEL)name
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame && (v10 = *(_frame[1] + 8)) != 0)
  {
    v11 = *(v10 + 224);
    if (v11)
    {
      *(v11 + 7) += 2;
    }

    v12 = WebCore::Document::editor(v11);
    if (v11)
    {
      if (*(v11 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v11);
      }

      else
      {
        *(v11 + 7) -= 2;
      }
    }

    WTF::String::String(&v15, a4);
    WebCore::Editor::command(v12, &v15);
    result = v15;
    v15 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v13);
      }
    }
  }

  else
  {

    return MEMORY[0x1EEE5AD70](retstr, v7, v8, v9);
  }

  return result;
}

- (void)executeCoreCommandBySelector:(SEL)selector
{
  if (![(WebHTMLView *)self callDelegateDoCommandBySelectorIfNeeded:?])
  {
    if (self)
    {
      [(WebHTMLView *)self coreCommandBySelector:selector];
    }

    else
    {
      v5 = 0;
    }

    WebCore::Editor::Command::execute();
    if (v5)
    {
      if (*(v5 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v5);
      }

      else
      {
        *(v5 + 7) -= 2;
      }
    }
  }
}

- (void)executeCoreCommandByName:(const char *)name
{
  if (self)
  {
    [(WebHTMLView *)self coreCommandByName:name];
  }

  else
  {
    v3 = 0;
  }

  WebCore::Editor::Command::execute();
  if (v3)
  {
    if (*(v3 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v3);
    }

    else
    {
      *(v3 + 7) -= 2;
    }
  }
}

- (void)jumpToSelection:(id)selection
{
  if (![(WebHTMLView *)self callDelegateDoCommandBySelectorIfNeeded:a2])
  {
    _frame = [(WebHTMLView *)self _frame];
    if (_frame)
    {
      v5 = *(_frame[1] + 8);
      if (v5)
      {
        v6 = *(*(v5 + 224) + 3208);
        v7 = MEMORY[0x1E69E2580];

        MEMORY[0x1EEE555C8](v6, 0, v7, 1, 1, 0);
      }
    }
  }
}

- (BOOL)acceptsFirstResponder
{
  currentEvent = [MEMORY[0x1E69E2188] currentEvent];
  result = 1;
  if (currentEvent)
  {
    v4 = currentEvent;
    if (![currentEvent type] && !self->_private->handlingMouseDownEvent)
    {
      [v4 locationInWindow];
      v6 = v5;
      v8 = v7;
      [(WebHTMLView *)self visibleRect];
      [(WebHTMLView *)self convertRect:0 toView:?];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18.x = v6;
      v18.y = v8;
      v19.origin.x = v10;
      v19.origin.y = v12;
      v19.size.width = v14;
      v19.size.height = v16;
      if (NSPointInRect(v18, v19))
      {
        return 0;
      }
    }
  }

  return result;
}

- (BOOL)maintainsInactiveSelection
{
  if ([-[WebHTMLView _webView](self "_webView")])
  {
    LOBYTE(_frame) = 1;
  }

  else if ([-[WebHTMLView window](self "window")] == self)
  {
    LOBYTE(_frame) = 1;
  }

  else
  {
    _frame = [(WebHTMLView *)self _frame];
    if (_frame)
    {
      v4 = *(_frame[1] + 8);
      if (v4)
      {
        v5 = (*(*(v4 + 224) + 3208) + 56);

        LOBYTE(_frame) = WebCore::VisibleSelection::isContentEditable(v5);
      }

      else
      {
        LOBYTE(_frame) = 0;
      }
    }
  }

  return _frame;
}

- (void)viewWillMoveToWindow:(id)window
{
  if (self->_private)
  {
    _pluginController = [(WebHTMLView *)self _pluginController];

    [_pluginController stopAllPlugins];
  }
}

- (void)viewDidMoveToWindow
{
  v2 = self->_private;
  if (v2 && !v2->closed)
  {
    [(WebHTMLView *)self _stopAutoscrollTimer];
    if ([(WebHTMLView *)self window])
    {
      [-[WebHTMLView superview](self "superview")];
      v4 = self->_private;
      v4->lastScrollPosition.x = v5;
      v4->lastScrollPosition.y = v6;
      [-[WebHTMLView _pluginController](self "_pluginController")];
      self->_private->lastScrollPosition = *MEMORY[0x1E696AA78];
    }
  }
}

- (void)addSubview:(id)subview
{
  v6.receiver = self;
  v6.super_class = WebHTMLView;
  [(WebHTMLView *)&v6 addSubview:?];
  if ([WebPluginController isPlugInView:subview])
  {
    _webView = [(WebHTMLView *)self _webView];
    [objc_msgSend(_webView "_UIKitDelegateForwarder")];
    [-[WebHTMLView _pluginController](self "_pluginController")];
  }
}

- (void)willRemoveSubview:(id)subview
{
  if ([WebPluginController isPlugInView:?])
  {
    [-[WebHTMLView _pluginController](self "_pluginController")];
  }

  v5.receiver = self;
  v5.super_class = WebHTMLView;
  [(WebHTMLView *)&v5 willRemoveSubview:subview];
}

- (void)reapplyStyles
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v3 = *(_frame[1] + 8);
    if (v3)
    {
      WebCore::Style::Scope::didChangeStyleSheetEnvironment(*(*(v3 + 224) + 1400));
      v4 = *(v3 + 224);

      WebCore::Document::updateStyleIfNeeded(v4);
    }
  }
}

- (void)layoutToMinimumPageWidth:(float)width height:(float)height originalPageWidth:(float)pageWidth originalPageHeight:(float)pageHeight maximumShrinkRatio:(float)ratio adjustingViewSize:(BOOL)size
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v12 = *(_frame[1] + 8);
    if (v12)
    {
      v13 = *(v12 + 224);
      if (v13)
      {
        if (*(v13 + 3522))
        {
          return;
        }

        WebCore::Document::updateStyleIfNeeded(v13);
      }

      if ([(WebHTMLView *)self _needsLayout])
      {
        v14 = *(v12 + 216);
        if (v14)
        {
          if (width <= 0.0)
          {
            WebCore::LocalFrameView::forceLayout(*(v12 + 216));
            if (size)
            {

              MEMORY[0x1EEE556E0](v14);
            }
          }

          else
          {
            WebCore::LocalFrameView::forceLayoutForPagination();
          }
        }
      }
    }
  }
}

- (void)clearFocus
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v3 = *(_frame[1] + 8);
    if (v3)
    {
      v4 = *(v3 + 224);
      if (v4)
      {

        WebCore::Document::setFocusedElement(v4, 0);
      }
    }
  }
}

- (BOOL)isOpaque
{
  _webView = [(WebHTMLView *)self _webView];

  return [_webView drawsBackground];
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  if (self->_private->inScrollPositionChanged)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    [(WebHTMLView *)self superview];
    rect.origin.x = x;
    rect.origin.y = y;
    rect.size.width = width;
    rect.size.height = height;
  }

  v8.receiver = self;
  v8.super_class = WebHTMLView;
  [(WebHTMLView *)&v8 setNeedsDisplayInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
}

- (void)setNeedsLayout:(BOOL)layout
{
  if (layout)
  {
    _frame = [(WebHTMLView *)self _frame];
    if (_frame)
    {
      v5 = *(_frame[1] + 8);
      if (v5)
      {
        v6 = *(v5 + 224);
        if (!v6 || !*(v6 + 3522))
        {
          v7 = *(v5 + 216);
          if (v7)
          {

            MEMORY[0x1EEE55888](v7, v4);
          }
        }
      }
    }
  }
}

- (void)setNeedsToApplyStyles:(BOOL)styles
{
  if (styles)
  {
    _frame = [(WebHTMLView *)self _frame];
    if (_frame)
    {
      v4 = *(_frame[1] + 8);
      if (v4)
      {
        v5 = *(v4 + 224);
        if (!v5 || !*(v5 + 3522))
        {

          MEMORY[0x1EEE5B2E8]();
        }
      }
    }
  }
}

- (void)drawSingleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _frame = [(WebHTMLView *)self _frame];

  [_frame _drawRect:1 contentsOnly:{x, y, width, height}];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  kdebug_trace();
  [(WebHTMLView *)self drawSingleRect:x, y, width, height];
  _webView = [(WebHTMLView *)self _webView];
  if (_webView)
  {
    CallUIDelegate(_webView, sel_webView_didDrawFrame_, [(WebHTMLView *)self _frame]);
  }

  kdebug_trace();
}

- (void)scrollWheel:(id)wheel
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v5 = *(_frame[1] + 8);
    if (v5)
    {
      v6 = *(v5 + 336);

      MEMORY[0x1EEE54AC8](v6, wheel);
    }
  }
}

- (BOOL)_isSelectionEvent:(id)event
{
  [event locationInWindow];
  [(WebHTMLView *)self convertPoint:0 fromView:?];
  v4 = [(WebHTMLView *)self elementAtPoint:0 allowShadowContent:?];
  v5 = [v4 objectForKey:WebElementIsSelectedKey];

  return [v5 BOOLValue];
}

- (void)mouseDown:(id)down
{
  [-[WebHTMLView _webView](self "_webView")];
  selfCopy3 = self;
  if (self)
  {
    selfCopy2 = self;
    selfCopy3 = self;
  }

  selfCopy3->_private->handlingMouseDownEvent = 1;
  [(WebHTMLView *)selfCopy3 _setMouseDownEvent:down];
  self->_private->ignoringMouseDraggedEvents = 0;
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v7 = *(_frame[1] + 8);
    if (v7)
    {
      WebCore::EventHandler::mouseDown(*(v7 + 336), down);
    }
  }

  self->_private->handlingMouseDownEvent = 0;
}

- (void)touch:(id)touch
{
  selfCopy = self;
  if (self)
  {
    selfCopy2 = self;
    self = selfCopy;
  }

  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v6 = *(_frame[1] + 8);
    if (v6)
    {
      WebCore::EventHandler::touchEvent(*(v6 + 336), touch);
    }
  }

  if (selfCopy)
  {
  }
}

- (void)mouseUp:(id)up
{
  [-[WebHTMLView _webView](self "_webView")];
  [(WebHTMLView *)self _setMouseDownEvent:0];
  selfCopy = self;
  [(WebHTMLView *)self _stopAutoscrollTimer];
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v6 = *(_frame[1] + 8);
    if (v6)
    {
      v7 = *(v6 + 24);
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = *(v8 + 176);
          if (v9)
          {
            if ((*(v9 + 136) & 1) == 0)
            {
              WebCore::EventHandler::mouseUp(*(v9 + 336), up);
            }
          }
        }
      }
    }
  }
}

- (BOOL)becomeFirstResponder
{
  v37 = *MEMORY[0x1E69E9840];
  if ([-[WebHTMLView _webView](self "_webView")])
  {
    v3 = 0;
    _frame = [(WebHTMLView *)self _frame];
    if (!_frame)
    {
      return 1;
    }
  }

  else
  {
    v3 = [-[WebHTMLView window](self "window")];
    _frame = [(WebHTMLView *)self _frame];
    if (!_frame)
    {
      return 1;
    }
  }

  v5 = *(_frame[1] + 8);
  if (!v5)
  {
    return 1;
  }

  v6 = *(v5 + 224);
  if (v6)
  {
    *(v6 + 7) += 2;
  }

  v7 = WebCore::Document::editor(v6);
  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      v9 = v7;
      WebCore::Node::removedLastRef(v6);
      *(v9 + 89) = 1;
      v8 = *(v5 + 24);
      if (!v8)
      {
        return 1;
      }

      goto LABEL_14;
    }

    *(v6 + 7) -= 2;
  }

  *(v7 + 89) = 1;
  v8 = *(v5 + 24);
  if (!v8)
  {
    return 1;
  }

LABEL_14:
  v10 = *(v8 + 8);
  if (v10)
  {
    if (([-[WebHTMLView _webView](self "_webView")] & 1) == 0)
    {
      WebCore::FocusController::setFocusedFrame();
    }

    WebCore::FocusController::setFocused(*(v10 + 80));
    if (v3)
    {
      v11 = *(v5 + 224);
      if (v11)
      {
        WebCore::Document::setFocusedElement(v11, 0);
      }

      currentEvent = [MEMORY[0x1E69E2188] currentEvent];
      if (currentEvent && (v13 = currentEvent, ([(WebCore::PlatformEventFactory *)currentEvent type]& 0xFFFFFFFE) == 4))
      {
        v15 = *(v5 + 224);
        WebCore::PlatformEventFactory::createPlatformKeyboardEvent(v30, v13, v14);
        if (v15)
        {
          v16 = WebCore::Document::windowProxy(v15);
          if (v16)
          {
            ++*v16;
          }
        }

        else
        {
          v16 = 0;
        }

        v28 = v16;
        WebCore::KeyboardEvent::create();
        v17 = v29;
        if (v28)
        {
          if (*v28 == 1)
          {
            WebCore::WindowProxy::~WindowProxy(v28);
            bmalloc::api::tzoneFree(v20, v21);
          }

          else
          {
            --*v28;
          }
        }

        v22 = v36;
        v36 = 0;
        if (v22)
        {
        }

        v23 = v35;
        v35 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v19);
        }

        v24 = v34;
        v34 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v19);
        }

        v25 = v33;
        v33 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v19);
        }

        v26 = v32;
        v32 = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v19);
        }

        v27 = v31;
        v31 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v19);
        }
      }

      else
      {
        v17 = 0;
      }

      WebCore::FocusController::setInitialFocus();
      if (v17)
      {
        if (v17[6] == 1)
        {
          (*(*v17 + 8))(v17);
        }

        else
        {
          --v17[6];
        }
      }
    }
  }

  return 1;
}

- (BOOL)resignFirstResponder
{
  v11.receiver = self;
  v11.super_class = WebHTMLView;
  resignFirstResponder = [(WAKResponder *)&v11 resignFirstResponder];
  if (resignFirstResponder)
  {
    _frame = [(WebHTMLView *)self _frame];
    if (_frame)
    {
      v5 = *(_frame[1] + 8);
      if (v5)
      {
        v6 = *(v5 + 224);
        if (v6)
        {
          if (!*(v6 + 195))
          {
            WebCore::Document::ensureMarkers(*(v5 + 224));
          }

          WebCore::DocumentMarkerController::removeMarkers();
          if (!*(v6 + 195))
          {
            WebCore::Document::ensureMarkers(v6);
          }

          WebCore::DocumentMarkerController::removeMarkers();
        }

        v7 = *(v5 + 24);
        if (v7)
        {
          v8 = *(v7 + 8);
          if (v8)
          {
            if (![(WebHTMLView *)self maintainsInactiveSelection])
            {
              [(WebHTMLView *)self deselectAll];
              if (([-[WebHTMLView _webView](self "_webView")] & 1) == 0)
              {
                [(WebHTMLView *)self clearFocus];
              }
            }

            v9 = [-[WebHTMLView window](self "window")];
            objc_opt_class();
            if (((objc_opt_isKindOfClass() & 1) == 0 || ([v9 isDescendantOf:{objc_msgSend(objc_msgSend(-[WebHTMLView _webView](self, "_webView"), "mainFrame"), "frameView")}] & 1) == 0) && (objc_msgSend(-[WebHTMLView _webView](self, "_webView"), "_isPerformingProgrammaticFocus") & 1) == 0)
            {
              WebCore::FocusController::setFocused(*(v8 + 80));
            }
          }
        }
      }
    }
  }

  return resignFirstResponder;
}

- (void)setDataSource:(id)source
{
  v3 = self->_private;
  m_ptr = v3->dataSource.m_ptr;
  if (m_ptr != source)
  {
    if (source)
    {
      sourceCopy = source;
      m_ptr = v3->dataSource.m_ptr;
    }

    v3->dataSource.m_ptr = source;
    if (m_ptr)
    {
    }

    v8 = self->_private->pluginController.m_ptr;

    [(WebPluginController *)v8 setDataSource:source];
  }
}

- (void)_setPrinting:(BOOL)printing minimumPageLogicalWidth:(float)width logicalHeight:(float)height originalPageWidth:(float)pageWidth originalPageHeight:(float)pageHeight maximumShrinkRatio:(float)ratio adjustViewSize:(BOOL)size paginateScreenContent:(BOOL)self0
{
  contentCopy = content;
  sizeCopy = size;
  printingCopy = printing;
  v51 = *MEMORY[0x1E69E9840];
  if (__PAIR64__(self->_private->paginateScreenContent, self->_private->printing) != __PAIR64__(content, printing))
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v19 = [-[WebHTMLView _frame](self "_frame")];
    v20 = [v19 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v20)
    {
      v21 = *v47;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v47 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v46 + 1) + 8 * i);
          frameView = [v23 frameView];
          if ([objc_msgSend(v23 "_dataSource")])
          {
            [objc_msgSend(frameView "documentView")];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v20);
    }

    v25 = self->_private;
    m_ptr = v25->pageRects.m_ptr;
    v25->pageRects.m_ptr = 0;
    if (m_ptr)
    {
    }

    self->_private->printing = printingCopy;
    self->_private->paginateScreenContent = contentCopy;
    _frame = [(WebHTMLView *)self _frame];
    if (!_frame)
    {
      goto LABEL_31;
    }

    v28 = *(_frame[1] + 8);
    if (!v28)
    {
      goto LABEL_31;
    }

    if (*(v28 + 216))
    {
      WTF::AtomStringImpl::add();
      WebCore::LocalFrameView::setMediaType();
      if (v45)
      {
        if (atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v45, v29);
        }
      }
    }

    v30 = *(v28 + 224);
    if (!v30)
    {
      goto LABEL_31;
    }

    v31 = *(v30 + 784);
    if (v31)
    {
      if (!*v31)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v31 = WebCore::Document::ensureCachedResourceLoader(v30);
      if (!*v31)
      {
LABEL_24:
        v33 = WTF::fastCompactMalloc(0x10);
        *v33 = 1;
        *(v33 + 8) = v31;
        v34 = *v31;
        *v31 = v33;
        if (v34 && atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v34);
          WTF::fastFree(v34, v32);
        }
      }
    }

    v35 = *v31;
    atomic_fetch_add(*v31, 1u);
    v36 = *(v31 + 274);
    v37 = *(v35 + 1);
    if (!v37 || (*(v37 + 274) = 1, *(v30 + 3547) = self->_private->paginateScreenContent, *(v30 + 3546) = self->_private->printing, WebCore::Style::Scope::didChangeStyleSheetEnvironment(*(v30 + 1400)), (v39 = *(v35 + 1)) == 0))
    {
      __break(0xC471u);
      JUMPOUT(0x1C7A82C6CLL);
    }

    *(v39 + 274) = v36;
    if (atomic_fetch_add(v35, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v35);
      WTF::fastFree(v35, v38);
    }

LABEL_31:
    [(WebHTMLView *)self setNeedsLayout:1];
    *&v40 = width;
    *&v41 = height;
    *&v42 = pageWidth;
    *&v43 = pageHeight;
    *&v44 = ratio;
    [(WebHTMLView *)self layoutToMinimumPageWidth:sizeCopy height:v40 originalPageWidth:v41 originalPageHeight:v42 maximumShrinkRatio:v43 adjustingViewSize:v44];
    if (!printingCopy)
    {
      [(WebHTMLView *)self setNeedsDisplay:0];
    }
  }
}

- (void)keyDown:(id)down
{
  selfCopy = self;
  if (self)
  {
    selfCopy2 = self;
    self = selfCopy;
  }

  v5 = self->_private;
  m_ptr = v5->keyDownEvent.m_ptr;
  if (!down)
  {
    v8 = v5->keyDownEvent.m_ptr;
    v5->keyDownEvent.m_ptr = 0;
    if (!m_ptr)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  downCopy = down;
  v8 = v5->keyDownEvent.m_ptr;
  v5->keyDownEvent.m_ptr = down;
  if (v8)
  {
LABEL_5:
  }

LABEL_6:
  _frame = [(WebHTMLView *)selfCopy _frame];
  if (_frame)
  {
    v10 = *(*(_frame + 8) + 8);
    if (m_ptr != down && v10 != 0)
    {
      WebCore::EventHandler::keyEvent(*(v10 + 336), down);
    }
  }
}

- (void)keyUp:(id)up
{
  m_ptr = self->_private->keyDownEvent.m_ptr;
  selfCopy = self;
  _frame = [(WebHTMLView *)self _frame];
  if (!_frame || ((v8 = *(_frame[1] + 8)) != 0 ? (v9 = m_ptr == up) : (v9 = 1), v9))
  {
    v10.receiver = self;
    v10.super_class = WebHTMLView;
    [(WAKResponder *)&v10 keyUp:up];
  }

  else
  {
    WebCore::EventHandler::keyEvent(*(v8 + 336), up);
  }
}

- (id)accessibilityFocusedUIElement
{
  v3 = [-[WebHTMLView _frame](self "_frame")];
  if (!v3)
  {
    return self;
  }

  return [v3 accessibilityFocusedUIElement];
}

- (id)accessibilityHitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
  v6 = [-[WebHTMLView _frame](self "_frame")];
  if (!v6)
  {
    return self;
  }

  return [v6 accessibilityHitTest:{x, y}];
}

- (id)_accessibilityParentForSubview:(id)subview
{
  selfCopy = self;
  v5 = [-[WebHTMLView _frame](self "_frame")];
  if (v5)
  {
    v6 = [v5 _accessibilityParentForSubview:subview];
    if (v6)
    {
      return v6;
    }
  }

  return selfCopy;
}

- (void)centerSelectionInVisibleArea:(id)area
{
  if (![(WebHTMLView *)self callDelegateDoCommandBySelectorIfNeeded:a2])
  {
    _frame = [(WebHTMLView *)self _frame];
    if (_frame)
    {
      v5 = *(_frame[1] + 8);
      if (v5)
      {
        v6 = *(*(v5 + 224) + 3208);
        v7 = MEMORY[0x1E69E2580];

        MEMORY[0x1EEE555C8](v6, 0, v7, 1, 1, 0);
      }
    }
  }
}

- (id)_emptyStyle
{
  v2 = [-[WebHTMLView _frame](self "_frame")];

  return [v2 createCSSStyleDeclaration];
}

- (void)_applyStyleToSelection:(id)selection withUndoAction:(unsigned __int8)action
{
  if (selection)
  {
    v4 = *(selection + 2);
    if (v4)
    {
      actionCopy = action;
      if (!(*(*v4 + 32))(*(selection + 2), a2))
      {
        (**v4)(v4);
        v7 = WTF::fastMalloc(0x18);
        WebCore::EditingStyle::EditingStyle();
        v11 = v7;
        [(WebHTMLView *)self _applyEditingStyleToSelection:&v11 withUndoAction:actionCopy];
        v8 = v11;
        v11 = 0;
        if (v8)
        {
          if (*v8 == 1)
          {
            WebCore::EditingStyle::~EditingStyle(v8);
            WTF::fastFree(v9, v10);
          }

          else
          {
            --*v8;
          }
        }

        (*(*v4 + 8))(v4);
      }
    }
  }
}

- (void)_applyEditingStyleToSelection:(void *)selection withUndoAction:(unsigned __int8)action
{
  actionCopy = action;
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v7 = *(_frame[1] + 8);
    if (v7)
    {
      v8 = *(v7 + 224);
      if (v8)
      {
        *(v8 + 7) += 2;
      }

      v9 = WebCore::Document::editor(v8);
      if (v8)
      {
        if (*(v8 + 7) == 2)
        {
          v10 = v9;
          WebCore::Node::removedLastRef(v8);
          v9 = v10;
        }

        else
        {
          *(v8 + 7) -= 2;
        }
      }

      MEMORY[0x1EEE5AC78](v9, selection, actionCopy, 0);
    }
  }
}

- (void)_changeWordCaseWithSelector:(SEL)selector
{
  if ([(WebHTMLView *)self _canEdit])
  {
    _frame = [(WebHTMLView *)self _frame];
    [(WebHTMLView *)self selectWord:0];
    v6 = [objc_msgSend(_frame "_selectedString")];
    if ([(WebHTMLView *)self _shouldReplaceSelectionWithText:v6 givenAction:0])
    {

      [_frame _replaceSelectionWithText:v6 selectReplacement:0 smartReplace:0];
    }
  }
}

- (void)uppercaseWord:(id)word
{
  if (![(WebHTMLView *)self callDelegateDoCommandBySelectorIfNeeded:a2])
  {

    [(WebHTMLView *)self _changeWordCaseWithSelector:sel_uppercaseString];
  }
}

- (void)lowercaseWord:(id)word
{
  if (![(WebHTMLView *)self callDelegateDoCommandBySelectorIfNeeded:a2])
  {

    [(WebHTMLView *)self _changeWordCaseWithSelector:sel_lowercaseString];
  }
}

- (void)capitalizeWord:(id)word
{
  if (![(WebHTMLView *)self callDelegateDoCommandBySelectorIfNeeded:a2])
  {

    [(WebHTMLView *)self _changeWordCaseWithSelector:sel_capitalizedString];
  }
}

- (BOOL)_wantsKeyDownForEvent:(id)event
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    LOBYTE(_frame) = *(_frame[1] + 8) != 0;
  }

  return _frame;
}

- (void)markedTextUpdate:(id)update
{
  object = [update object];
  v5 = [object length];

  [(WebHTMLView *)self setMarkedText:object selectedRange:0, v5];
}

- (BOOL)_canSmartCopyOrDelete
{
  LODWORD(_frame) = [-[WebHTMLView _webView](self "_webView")];
  if (_frame)
  {
    _frame = [(WebHTMLView *)self _frame];
    if (_frame)
    {
      v4 = *(_frame[1] + 8);
      if (v4)
      {
        LOBYTE(_frame) = *(*(*(v4 + 224) + 3208) + 184) == 1;
      }

      else
      {
        LOBYTE(_frame) = 0;
      }
    }
  }

  return _frame;
}

- (void)closeIfNotCurrentView
{
  if ([objc_msgSend(-[WebHTMLView _frame](self "_frame")] != self)
  {

    [(WebHTMLView *)self close];
  }
}

- (void)_executeSavedKeypressCommands
{
  interpretKeyEventsParameters = self->_private->interpretKeyEventsParameters;
  if (!interpretKeyEventsParameters)
  {
    return;
  }

  var0 = interpretKeyEventsParameters->var0;
  if (!*(interpretKeyEventsParameters->var0 + 45) || interpretKeyEventsParameters->var4)
  {
    return;
  }

  v5 = 0;
  v6 = 0;
  var2 = interpretKeyEventsParameters->var2;
  interpretKeyEventsParameters->var2 = 0;
  interpretKeyEventsParameters->var4 = 1;
  do
  {
    if (MEMORY[0x1CCA639B0](*(*(var0 + 21) + v5), "insertText:", 11))
    {
      if (v6 >= *(var0 + 45))
      {
        __break(0xC471u);
        JUMPOUT(0x1C7A8378CLL);
      }

      v7 = *(*(var0 + 21) + v5 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        MEMORY[0x1CCA63450](&aSelectorName, v7);
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v8);
        }
      }

      else
      {
        aSelectorName = &stru_1F472E7E8;
        v13 = &stru_1F472E7E8;
      }

      [(WebHTMLView *)self insertText:aSelectorName];
LABEL_19:
      v12 = aSelectorName;
      aSelectorName = 0;
      if (v12)
      {
      }

      goto LABEL_5;
    }

    if (v6 >= *(var0 + 45))
    {
      goto LABEL_34;
    }

    if ((MEMORY[0x1CCA639B0](*(*(var0 + 21) + v5), "noop:", 5) & 1) == 0)
    {
      if (v6 >= *(var0 + 45))
      {
LABEL_34:
        __break(0xC471u);
        JUMPOUT(0x1C7A83784);
      }

      v10 = *(*(var0 + 21) + v5);
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        MEMORY[0x1CCA63450](&aSelectorName, v10);
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v11);
        }
      }

      else
      {
        aSelectorName = &stru_1F472E7E8;
        v14 = &stru_1F472E7E8;
      }

      [(WebHTMLView *)self doCommandBySelector:NSSelectorFromString(aSelectorName)];
      goto LABEL_19;
    }

LABEL_5:
    ++v6;
    v5 += 80;
  }

  while (v6 < *(var0 + 45));
  v15 = interpretKeyEventsParameters->var0;
  if (*(interpretKeyEventsParameters->var0 + 44))
  {
    v16 = *(v15 + 45);
    if (v16)
    {
      v17 = *(v15 + 21);
      v18 = 80 * v16;
      do
      {
        WebCore::KeypressCommand::~KeypressCommand(v17, v9);
        v17 = (v19 + 80);
        v18 -= 80;
      }

      while (v18);
      *(v15 + 45) = 0;
    }

    v20 = *(v15 + 21);
    if (v20)
    {
      *(v15 + 21) = 0;
      *(v15 + 44) = 0;
      WTF::fastFree(v20, v9);
    }
  }

  interpretKeyEventsParameters->var2 = var2;
  interpretKeyEventsParameters->var4 = 0;
}

- (BOOL)_handleEditingKeyEvent:(void *)event
{
  v3 = *(event + 12);
  if (!v3)
  {
    goto LABEL_22;
  }

  v5 = *(v3 + 104);
  if (([v5 keyboardFlags] & 0x20) != 0)
  {
    goto LABEL_22;
  }

  _webView = [(WebHTMLView *)self _webView];
  if (([_webView isEditable] & 1) != 0 || (objc_msgSend(v5, "isTabKey") & 1) == 0)
  {
    v8 = *(v3 + 8);
    _UIKitDelegateForwarder = [_webView _UIKitDelegateForwarder];
    if (v8 == 4)
    {
      if (([_UIKitDelegateForwarder handleKeyAppCommandForCurrentEvent] & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (([_UIKitDelegateForwarder handleKeyTextCommandForCurrentEvent] & 1) == 0)
    {
LABEL_8:
      characters = [v5 characters];
      v7 = [characters length];
      if (!v7)
      {
        return v7;
      }

      v11 = [characters characterAtIndex:0];
      if (v11 > 12)
      {
        if (v11 != 13)
        {
          if (v11 != 127)
          {
LABEL_12:
            if (v8 == 4)
            {
              [objc_msgSend(_webView "_UIKitDelegateForwarder")];
              LOBYTE(v7) = 1;
              return v7;
            }

LABEL_22:
            LOBYTE(v7) = 0;
            return v7;
          }

LABEL_19:
          [objc_msgSend(_webView "_UIKitDelegateForwarder")];
          LOBYTE(v7) = 1;
          return v7;
        }
      }

      else if (v11 != 3)
      {
        if (v11 != 8)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }

      if (v8 == 4)
      {
        [objc_msgSend(_webView "_UIKitDelegateForwarder")];
        LOBYTE(v7) = 1;
        return v7;
      }

      goto LABEL_22;
    }

    LOBYTE(v7) = 1;
    return v7;
  }

  LOBYTE(v7) = 0;
  return v7;
}

- (void)_layoutIfNeeded
{
  if ([(WebHTMLView *)self _needsLayout])
  {

    [(WebHTMLView *)self layout];
  }
}

- (void)_web_updateLayoutAndStyleIfNeededRecursive
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v3 = *(_frame[1] + 8);
    if (v3)
    {
      if (*(v3 + 216))
      {

        MEMORY[0x1EEE55858]();
      }
    }
  }
}

- (void)_destroyAllWebPlugins
{
  _pluginController = [(WebHTMLView *)self _pluginController];

  [_pluginController destroyAllPlugins];
}

- (BOOL)_needsLayout
{
  _frame = [(WebHTMLView *)self _frame];

  return [_frame _needsLayout];
}

- (unsigned)_scrollbarWidthStyle
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v3 = *(_frame[1] + 8);
    if (v3 && (v4 = *(v3 + 224)) != 0 && (v5 = *(v4 + 1336)) != 0 && (v6 = *(v5 + 72)) != 0)
    {
      if ((*(v6 + 45) & 2) != 0)
      {
        LOBYTE(_frame) = 105;
        __break(0xC471u);
      }

      else
      {
        LODWORD(_frame) = (*(*(*(v6 + 88) + 40) + 692) >> 5) & 3;
      }
    }

    else
    {
      LOBYTE(_frame) = 0;
    }
  }

  return _frame;
}

- (unint64_t)characterIndexForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(WebHTMLView *)self _executeSavedKeypressCommands];
  window = [(WebHTMLView *)self window];
  _frame = [(WebHTMLView *)self _frame];
  if (window)
  {
    [window convertRectFromScreen:{x, y, *MEMORY[0x1E696AA88], *(MEMORY[0x1E696AA88] + 8)}];
    [(WebHTMLView *)self convertPoint:0 fromView:?];
    v8 = [_frame _characterRangeAtPoint:?];
    if (v8)
    {
      return [_frame _convertDOMRangeToNSRange:v8];
    }
  }

  else
  {
    [(WebHTMLView *)self convertPoint:0 fromView:x, y];
    v8 = [_frame _characterRangeAtPoint:?];
    if (v8)
    {
      return [_frame _convertDOMRangeToNSRange:v8];
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (CGRect)firstRectForCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(WebHTMLView *)self _executeSavedKeypressCommands];
  _frame = [(WebHTMLView *)self _frame];
  v7 = _frame;
  if (location + length)
  {
    v8 = location + length >= location;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = length;
  }

  else
  {
    v9 = 0;
  }

  v10 = [_frame _convertNSRangeToDOMRange:{location, v9}];
  if (v10)
  {
    [v7 _firstRectForDOMRange:v10];
    [(WebHTMLView *)self convertRect:0 toView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    window = [(WebHTMLView *)self window];
    v20 = v12;
    v21 = v14;
    if (window)
    {
      [window convertRectToScreen:{v12, v14, v16, v18}];
    }
  }

  else
  {
    v20 = *MEMORY[0x1E696AA80];
    v21 = *(MEMORY[0x1E696AA80] + 8);
    v16 = *(MEMORY[0x1E696AA80] + 16);
    v18 = *(MEMORY[0x1E696AA80] + 24);
  }

  v22 = v16;
  v23 = v18;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (_NSRange)selectedRange
{
  [(WebHTMLView *)self _executeSavedKeypressCommands];
  _frame = [(WebHTMLView *)self _frame];
  if (_frame && (v4 = *(_frame[1] + 8)) != 0 && (v5 = *(*(v4 + 224) + 3208), *(v5 + 153)) && WebCore::VisibleSelection::isContentEditable((v5 + 56)))
  {
    _frame2 = [(WebHTMLView *)self _frame];

    _selectedNSRange = [_frame2 _selectedNSRange];
  }

  else
  {
    _selectedNSRange = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0;
  }

  result.length = v8;
  result.location = _selectedNSRange;
  return result;
}

- (_NSRange)markedRange
{
  [(WebHTMLView *)self _executeSavedKeypressCommands];
  _frame = [(WebHTMLView *)self _frame];
  if (!_frame)
  {
    v8 = 0;
    goto LABEL_24;
  }

  v4 = _frame;
  v5 = *(*(_frame + 8) + 8);
  if (!v5)
  {
    _frame = 0;
    v8 = 0;
    goto LABEL_24;
  }

  v6 = *(v5 + 224);
  if (v6)
  {
    *(v6 + 7) += 2;
  }

  v7 = WebCore::Document::editor(v6);
  if (!v6)
  {
LABEL_8:
    WebCore::Editor::compositionRange(v16, v7);
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_20:
    v8 = 0;
    _frame = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

  if (*(v6 + 7) != 2)
  {
    *(v6 + 7) -= 2;
    goto LABEL_8;
  }

  v11 = v7;
  WebCore::Node::removedLastRef(v6);
  WebCore::Editor::compositionRange(v16, v11);
  if ((v18 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  _frame = [v4 _convertToNSRange:v16];
  if ((v18 & 1) == 0)
  {
    goto LABEL_24;
  }

  v9 = v17;
  v17 = 0;
  if (!v9)
  {
    goto LABEL_13;
  }

  if (*(v9 + 7) != 2)
  {
    *(v9 + 7) -= 2;
LABEL_13:
    v10 = v16[0];
    v16[0] = 0;
    if (!v10)
    {
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  v12 = _frame;
  v13 = v8;
  WebCore::Node::removedLastRef(v9);
  _frame = v12;
  v8 = v13;
  v10 = v16[0];
  v16[0] = 0;
  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (*(v10 + 7) == 2)
  {
    v14 = _frame;
    v15 = v8;
    WebCore::Node::removedLastRef(v10);
    _frame = v14;
    v8 = v15;
  }

  else
  {
    *(v10 + 7) -= 2;
  }

LABEL_24:
  result.length = v8;
  result.location = _frame;
  return result;
}

- (BOOL)hasMarkedText
{
  _frame = [(WebHTMLView *)self _frame];
  if (!_frame)
  {
    return _frame;
  }

  v4 = *(_frame[1] + 8);
  if (!v4)
  {
    LOBYTE(_frame) = 0;
    return _frame;
  }

  v5 = *(v4 + 224);
  if (v5)
  {
    *(v5 + 7) += 2;
  }

  v6 = WebCore::Document::editor(v5);
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      v8 = v6;
      WebCore::Node::removedLastRef(v5);
      if (*(v8 + 32))
      {
        goto LABEL_9;
      }

LABEL_17:
      LOBYTE(_frame) = 0;
      return _frame;
    }

    *(v5 + 7) -= 2;
  }

  if (!*(v6 + 32))
  {
    goto LABEL_17;
  }

LABEL_9:
  [(WebHTMLView *)self _executeSavedKeypressCommands];
  v7 = *(v4 + 224);
  if (v7)
  {
    *(v7 + 7) += 2;
  }

  _frame = WebCore::Document::editor(v7);
  if (v7)
  {
    if (*(v7 + 7) == 2)
    {
      v9 = _frame;
      WebCore::Node::removedLastRef(v7);
      _frame = v9;
    }

    else
    {
      *(v7 + 7) -= 2;
    }
  }

  LOBYTE(_frame) = _frame[4] != 0;
  return _frame;
}

- (void)unmarkText
{
  [(WebHTMLView *)self _executeSavedKeypressCommands];
  interpretKeyEventsParameters = self->_private->interpretKeyEventsParameters;
  if (interpretKeyEventsParameters)
  {
    interpretKeyEventsParameters->var1 = 1;
    interpretKeyEventsParameters->var3 = 0;
  }

  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v5 = *(_frame[1] + 8);
    if (v5)
    {
      v6 = *(v5 + 224);
      if (v6)
      {
        *(v6 + 7) += 2;
      }

      v7 = WebCore::Document::editor(v6);
      if (v6)
      {
        if (*(v6 + 7) == 2)
        {
          v8 = v7;
          WebCore::Node::removedLastRef(v6);
          v7 = v8;

          goto __ZN7WebCore6Editor18confirmCompositionEv;
        }

        *(v6 + 7) -= 2;
      }

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  [(WebHTMLView *)self _executeSavedKeypressCommands];
  interpretKeyEventsParameters = self->_private->interpretKeyEventsParameters;
  if (interpretKeyEventsParameters)
  {
    interpretKeyEventsParameters->var1 = 1;
    interpretKeyEventsParameters->var3 = 0;
  }

  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v8 = *(_frame[1] + 8);
    if (v8)
    {
      if ([(WebHTMLView *)self _isEditable])
      {
        v19 = 0;
        v20 = 0;
        v9 = *(v8 + 224);
        if (v9)
        {
          *(v9 + 7) += 2;
        }

        WebCore::Document::editor(v9);
        if (v9)
        {
          if (*(v9 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v9);
          }

          else
          {
            *(v9 + 7) -= 2;
          }
        }

        MEMORY[0x1CCA63A40](&v18, text);
        WebCore::Editor::setComposition();
        v11 = v18;
        v18 = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v10);
        }

        v12 = v19;
        if (HIDWORD(v20))
        {
          v13 = 32 * HIDWORD(v20);
          v14 = (v19 + 16);
          do
          {
            v16 = *v14;
            v14 += 4;
            v15 = v16;
            if ((v16 & 0x8000000000000) != 0)
            {
              v17 = (v15 & 0xFFFFFFFFFFFFLL);
              if (atomic_fetch_add((v15 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v17);
                WTF::fastFree(v17, v10);
              }
            }

            v13 -= 32;
          }

          while (v13);
          v12 = v19;
        }

        if (v12)
        {
          v19 = 0;
          LODWORD(v20) = 0;
          WTF::fastFree(v12, v10);
        }
      }
    }
  }
}

- (void)doCommandBySelector:(SEL)selector
{
  interpretKeyEventsParameters = self->_private->interpretKeyEventsParameters;
  if (interpretKeyEventsParameters)
  {
    interpretKeyEventsParameters->var3 = 0;
    var0 = interpretKeyEventsParameters->var0;
    v7 = !interpretKeyEventsParameters->var2;
    _frame = [(WebHTMLView *)self _frame];
    if (_frame)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = 0;
LABEL_11:
    v12 = 0;
    v13 = 1;
    if (!((var0 == 0) | v7 & 1))
    {
      goto LABEL_15;
    }

LABEL_20:
    self->_private->interpretKeyEventsParameters = 0;
    _webView = [(WebHTMLView *)self _webView];
    if ([objc_msgSend(_webView "_editingDelegateForwarder")])
    {
      v23 = 1;
      if (!interpretKeyEventsParameters)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    [(WebHTMLView *)self coreCommandBySelector:selector];
    if (WebCore::Editor::Command::isSupported(&v32))
    {
      v23 = WebCore::Editor::Command::execute();
    }

    else
    {
      v23 = 0;
    }

    v30 = v33[1];
    v33[1] = 0;
    if (v30)
    {
      if (*(v30 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v30);
        if (!interpretKeyEventsParameters)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      *(v30 + 7) -= 2;
    }

    if (!interpretKeyEventsParameters)
    {
LABEL_35:
      self->_private->interpretKeyEventsParameters = interpretKeyEventsParameters;
      goto LABEL_36;
    }

LABEL_34:
    interpretKeyEventsParameters->var1 |= v23;
    goto LABEL_35;
  }

  var0 = 0;
  v7 = 1;
  _frame = [(WebHTMLView *)self _frame];
  if (!_frame)
  {
    goto LABEL_10;
  }

LABEL_3:
  v9 = *(_frame[1] + 8);
  if (!v9)
  {
    goto LABEL_11;
  }

  ++*(v9 + 16);
  v10 = *(v9 + 224);
  if (v10)
  {
    *(v10 + 7) += 2;
  }

  v11 = WebCore::Document::editor(v10);
  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      v14 = v11;
      WebCore::Node::removedLastRef(v10);
      v11 = v14;
    }

    else
    {
      *(v10 + 7) -= 2;
    }
  }

  v13 = 0;
  v12 = *(v11 + 32) != 0;
  if ((var0 == 0) | v7 & 1)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v12)
  {
    goto LABEL_20;
  }

  v15 = NSStringFromSelector(selector);
  MEMORY[0x1CCA63A40](&v31, v15);
  v17 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
  }

  v32 = v17;
  *v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  v18 = *(var0 + 45);
  if (v18 == *(var0 + 44))
  {
    v19 = WTF::Vector<WebCore::KeypressCommand,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(var0 + 168, v18 + 1, &v32);
    v20 = *(var0 + 21) + 80 * *(var0 + 45);
    v21 = *v19;
    *v19 = 0;
    *v20 = v21;
  }

  else
  {
    v20 = *(var0 + 21) + 80 * v18;
    v32 = 0;
    *v20 = v17;
    v19 = &v32;
  }

  v24 = v19[1];
  v19[1] = 0;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 8) = v24;
  v25 = v19[2];
  v19[2] = 0;
  *(v20 + 16) = v25;
  LODWORD(v25) = *(v19 + 6);
  *(v19 + 6) = 0;
  *(v20 + 24) = v25;
  LODWORD(v25) = *(v19 + 7);
  *(v19 + 7) = 0;
  *(v20 + 28) = v25;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0;
  v26 = v19[4];
  v19[4] = 0;
  *(v20 + 32) = v26;
  LODWORD(v26) = *(v19 + 10);
  *(v19 + 10) = 0;
  *(v20 + 40) = v26;
  LODWORD(v26) = *(v19 + 11);
  *(v19 + 11) = 0;
  *(v20 + 44) = v26;
  v27 = *(v19 + 4);
  *(v20 + 48) = *(v19 + 3);
  *(v20 + 64) = v27;
  ++*(var0 + 45);
  WebCore::KeypressCommand::~KeypressCommand(&v32, v16);
  v29 = v31;
  v31 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v28);
  }

LABEL_36:
  if ((v13 & 1) == 0)
  {
    if (*(v9 + 16) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    else
    {
      --*(v9 + 16);
    }
  }
}

- (void)insertText:(id)text
{
  interpretKeyEventsParameters = self->_private->interpretKeyEventsParameters;
  if (interpretKeyEventsParameters)
  {
    interpretKeyEventsParameters->var3 = 0;
  }

  _frame = [(WebHTMLView *)self _frame];
  if (!_frame)
  {
    v6 = 0;
LABEL_19:
    v10 = 0;
    v9 = 1;
    if (interpretKeyEventsParameters)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  v6 = *(_frame[1] + 8);
  if (!v6)
  {
    goto LABEL_19;
  }

  ++*(v6 + 16);
  v7 = *(v6 + 224);
  if (v7)
  {
    *(v7 + 7) += 2;
  }

  v8 = WebCore::Document::editor(v7);
  if (v7)
  {
    if (*(v7 + 7) != 2)
    {
      *(v7 + 7) -= 2;
      goto LABEL_10;
    }

    v22 = v8;
    WebCore::Node::removedLastRef(v7);
    v9 = 0;
    v10 = *(v22 + 32) != 0;
    if (interpretKeyEventsParameters)
    {
      goto LABEL_11;
    }

LABEL_20:
    if (v9)
    {
      return;
    }

    v20 = *(v6 + 224);
    if (v20)
    {
      *(v20 + 7) += 2;
    }

    v21 = WebCore::Document::editor(v20);
    if (v20)
    {
      if (*(v20 + 7) == 2)
      {
        v29 = v21;
        WebCore::Node::removedLastRef(v20);
        v21 = v29;
      }

      else
      {
        *(v20 + 7) -= 2;
      }
    }

    if ((WebCore::Editor::canEdit(v21) & 1) == 0)
    {
      goto LABEL_70;
    }

    MEMORY[0x1CCA63A40](&v41, text);
    if (v41)
    {
      WTF::StringImpl::replace();
      v31 = v41;
      v48 = v42;
      v41 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v30);
      }
    }

    else
    {
      v48 = 0;
    }

    v32 = *(v6 + 224);
    if (v32)
    {
      *(v32 + 7) += 2;
    }

    v33 = WebCore::Document::editor(v32);
    if (v32)
    {
      if (*(v32 + 7) == 2)
      {
        v36 = v33;
        WebCore::Node::removedLastRef(v32);
        v34 = *(v6 + 224);
        if (*(v36 + 32))
        {
          goto LABEL_50;
        }

        goto LABEL_56;
      }

      *(v32 + 7) -= 2;
    }

    v34 = *(v6 + 224);
    if (*(v33 + 32))
    {
LABEL_50:
      if (v34)
      {
        *(v34 + 7) += 2;
      }

      v35 = WebCore::Document::editor(v34);
      if (v34)
      {
        if (*(v34 + 7) == 2)
        {
          v37 = v35;
          WebCore::Node::removedLastRef(v34);
          v35 = v37;
        }

        else
        {
          *(v34 + 7) -= 2;
        }
      }

      WebCore::Editor::confirmComposition(v35, &v48);
      inserted = 1;
LABEL_65:
      if (interpretKeyEventsParameters)
      {
        interpretKeyEventsParameters->var1 |= inserted;
      }

      v40 = v48;
      v48 = 0;
      if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v38);
      }

      goto LABEL_70;
    }

LABEL_56:
    if (v34)
    {
      *(v34 + 7) += 2;
    }

    WebCore::Document::editor(v34);
    if (v34)
    {
      if (*(v34 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v34);
      }

      else
      {
        *(v34 + 7) -= 2;
      }
    }

    inserted = WebCore::Editor::insertText();
    goto LABEL_65;
  }

LABEL_10:
  v9 = 0;
  v10 = *(v8 + 32) != 0;
  if (!interpretKeyEventsParameters)
  {
    goto LABEL_20;
  }

LABEL_11:
  var0 = interpretKeyEventsParameters->var0;
  if (interpretKeyEventsParameters->var0 == 0 || !interpretKeyEventsParameters->var2 || v10)
  {
    goto LABEL_20;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v12 = v48;
  MEMORY[0x1CCA63A40](&v48, text);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  v42 = v12;
  v14 = v48;
  if (v48)
  {
    atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
  }

  v43 = v14;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = *(var0 + 45);
  if (v15 == *(var0 + 44))
  {
    v16 = WTF::Vector<WebCore::KeypressCommand,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(var0 + 168, v15 + 1, &v42);
    v17 = *(var0 + 21) + 80 * *(var0 + 45);
    v18 = *v16;
    *v16 = 0;
    *v17 = v18;
    v19 = v16[1];
    v16[1] = 0;
    *(v17 + 8) = v19;
  }

  else
  {
    v17 = *(var0 + 21) + 80 * v15;
    v42 = 0;
    *v17 = v12;
    v23 = v43;
    v43 = 0;
    *(v17 + 8) = v23;
    v16 = &v42;
  }

  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v24 = v16[2];
  v16[2] = 0;
  *(v17 + 16) = v24;
  LODWORD(v24) = *(v16 + 6);
  *(v16 + 6) = 0;
  *(v17 + 24) = v24;
  LODWORD(v24) = *(v16 + 7);
  *(v16 + 7) = 0;
  *(v17 + 28) = v24;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  v25 = v16[4];
  v16[4] = 0;
  *(v17 + 32) = v25;
  LODWORD(v25) = *(v16 + 10);
  *(v16 + 10) = 0;
  *(v17 + 40) = v25;
  LODWORD(v25) = *(v16 + 11);
  *(v16 + 11) = 0;
  *(v17 + 44) = v25;
  v26 = *(v16 + 4);
  *(v17 + 48) = *(v16 + 3);
  *(v17 + 64) = v26;
  ++*(var0 + 45);
  WebCore::KeypressCommand::~KeypressCommand(&v42, v13);
  v28 = v48;
  v48 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v27);
  }

  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v27);
  }

  if ((v9 & 1) == 0)
  {
LABEL_70:
    if (*(v6 + 16) == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --*(v6 + 16);
    }
  }
}

- (CGRect)selectionRect
{
  if ([(WebHTMLView *)self _hasSelection])
  {
    [(WebHTMLView *)self _frame];
    WebCore::FrameSelection::selectionBounds();
    WebCore::FloatRect::operator CGRect();
  }

  else
  {
    v3 = *MEMORY[0x1E696AA80];
    v4 = *(MEMORY[0x1E696AA80] + 8);
    v5 = *(MEMORY[0x1E696AA80] + 16);
    v6 = *(MEMORY[0x1E696AA80] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)selectionTextRects
{
  if (![(WebHTMLView *)self _hasSelection])
  {
    return 0;
  }

  _frame = [(WebHTMLView *)self _frame];
  if (_frame && *(_frame[1] + 8))
  {
    WebCore::FrameSelection::getClippedVisibleTextRectangles();
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  if (v4)
  {
    v6 = v4;
  }

  return v4;
}

- (CGImage)selectionImageForcingBlackText:(BOOL)text
{
  if (![(WebHTMLView *)self _hasSelection])
  {
    return 0;
  }

  _frame = [(WebHTMLView *)self _frame];
  if (!_frame)
  {
    return 0;
  }

  v5 = *(_frame[1] + 8);
  if (!v5)
  {
    return 0;
  }

  ++*(v5 + 16);
  WebCore::LocalFrameView::setPaintBehavior();
  WebCore::Document::updateLayout();
  WebCore::FrameSelection::selectionBounds();
  v42 = __PAIR64__(v7, v6);
  v43 = __PAIR64__(v9, v8);
  WebCore::FloatRect::operator CGRect();
  v14 = *(v5 + 24);
  if (v14)
  {
    v15 = *(v14 + 8);
    if (v15)
    {
      v16 = v10;
      v17 = v11;
      v18 = v12;
      v19 = v13;
      v20 = WebCore::ScrollView::documentView(*(v5 + 216));
      if (v20)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          WebCore::LocalFrameView::paintBehavior(*(v5 + 216));
          WebCore::LocalFrameView::setPaintBehavior();
          [v20 bounds];
          v22 = v21;
          v24 = v23;
          v25 = *(v15 + 316);
          v26 = *(v15 + 324);
          [v20 convertRect:0 toView:{v16, v17, v18, v19}];
          v27 = [v20 convertRect:0 fromView:?];
          v32 = v31;
          Image = 0;
          if (v31 == 0.0)
          {
            goto LABEL_16;
          }

          v34 = v30;
          if (v30 == 0.0)
          {
            goto LABEL_16;
          }

          v35 = v28;
          v36 = v29;
          v37 = WebCore::sRGBColorSpaceSingleton(v27);
          v38 = (v25 * v26);
          v39 = (v32 * v38);
          v40 = CGBitmapContextCreate(0, v39, (v34 * v38), 8uLL, 4 * v39, v37, 1u);
          if (v40)
          {
            WKGetCurrentGraphicsContext();
            WKSetCurrentGraphicsContext();
            v45.size.width = v39;
            v45.size.height = (v34 * v38);
            v45.origin.x = 0.0;
            v45.origin.y = 0.0;
            CGContextClearRect(v40, v45);
            CGContextSaveGState(v40);
            CGContextScaleCTM(v40, v38, v38);
            CGAffineTransformMakeScale(&v44, v38, v38);
            CGContextSetBaseCTM();
            CGContextTranslateCTM(v40, v22 - v35, v24 - v36);
            [v20 drawSingleRect:{v35, v36, v32, v34}];
            CGContextRestoreGState(v40);
            Image = CGBitmapContextCreateImage(v40);
            WKSetCurrentGraphicsContext();
            WebCore::LocalFrameView::setPaintBehavior();
            if (Image)
            {
              CFAutorelease(Image);
            }

            CFRelease(v40);
            goto LABEL_16;
          }
        }
      }
    }
  }

  Image = 0;
LABEL_16:
  WebCore::LocalFrameView::setPaintBehavior();
  if (*(v5 + 16) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  else
  {
    --*(v5 + 16);
  }

  return Image;
}

- (CGRect)selectionImageRect
{
  if ([(WebHTMLView *)self _hasSelection])
  {
    [(WebHTMLView *)self _frame];
    WebCore::FrameSelection::selectionBounds();
    WebCore::FloatRect::operator CGRect();
  }

  else
  {
    v3 = *MEMORY[0x1E696AA80];
    v4 = *(MEMORY[0x1E696AA80] + 8);
    v5 = *(MEMORY[0x1E696AA80] + 16);
    v6 = *(MEMORY[0x1E696AA80] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)selectAll
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v4 = *(_frame[1] + 8);
    if (v4)
    {
      v5 = *(*(v4 + 224) + 3208);

      MEMORY[0x1EEE55650](v5, v3);
    }
  }
}

- (void)deselectAll
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v3 = *(_frame[1] + 8);
    if (v3)
    {
      v4 = *(*(v3 + 224) + 3208);

      MEMORY[0x1EEE55630](v4);
    }
  }
}

- (id)string
{
  _frame = [(WebHTMLView *)self _frame];
  _documentRange = [(WebHTMLView *)self _documentRange];

  return [_frame _stringForRange:_documentRange];
}

- (id)selectedString
{
  _frame = [(WebHTMLView *)self _frame];

  return [_frame _selectedString];
}

- (BOOL)searchFor:(id)for direction:(BOOL)direction caseSensitive:(BOOL)sensitive wrap:(BOOL)wrap startInSelection:(BOOL)selection
{
  v7 = 8;
  if (direction)
  {
    v7 = 0;
  }

  v8 = 16;
  if (!wrap)
  {
    v8 = 0;
  }

  v9 = v7 | v8 | !sensitive;
  v10 = 32;
  if (!selection)
  {
    v10 = 0;
  }

  return [(WebHTMLView *)self _findString:for options:v9 | v10];
}

- (id)elementAtPoint:(CGPoint)point allowShadowContent:(BOOL)content
{
  pointCopy = point;
  _frame = [(WebHTMLView *)self _frame];
  if (!_frame || !*(_frame[1] + 8))
  {
    return 0;
  }

  v5 = [WebElementDictionary alloc];
  WebCore::IntPoint::IntPoint(v11, &pointCopy);
  v6 = vcgt_s32(v11[0], 0xFE000000FE000000);
  v11[1] = vorr_s8((*&v6 & 0x7FFFFFFF7FFFFFFFLL), vbic_s8(vbsl_s8(vcgt_s32(0xFE000000FE000000, v11[0]), 0x8000000080000000, vshl_n_s32(v11[0], 6uLL)), v6));
  WebCore::EventHandler::hitTestResultAtPoint();
  v7 = [(WebElementDictionary *)v5 initWithHitTestResult:v12];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  MEMORY[0x1CCA64820](v12);
  return v8;
}

- (unint64_t)countMatchesForText:(id)text inDOMRange:(id)range options:(unint64_t)options limit:(unint64_t)limit markMatches:(BOOL)matches
{
  result = [(WebHTMLView *)self _frame];
  if (!result)
  {
    return result;
  }

  v9 = *(*(result + 8) + 8);
  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 224);
  if (v10)
  {
    *(v10 + 7) += 2;
  }

  WebCore::Document::editor(v10);
  if (!v10)
  {
    goto LABEL_8;
  }

  if (*(v10 + 7) != 2)
  {
    *(v10 + 7) -= 2;
LABEL_8:
    MEMORY[0x1CCA63A40](&v20, text);
    goto LABEL_11;
  }

  WebCore::Node::removedLastRef(v10);
  MEMORY[0x1CCA63A40](&v20, text);
LABEL_11:
  WebCore::makeSimpleRange();
  LODWORD(result) = WebCore::Editor::countMatchesForText();
  if (v19 != 1)
  {
    goto LABEL_21;
  }

  if (v18)
  {
    if (*(v18 + 7) == 2)
    {
      v13 = result;
      WebCore::Node::removedLastRef(v18);
      LODWORD(result) = v13;
      v12 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    *(v18 + 7) -= 2;
  }

  v12 = v17;
  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (*(v12 + 7) == 2)
  {
    v14 = result;
    WebCore::Node::removedLastRef(v12);
    LODWORD(result) = v14;
  }

  else
  {
    *(v12 + 7) -= 2;
  }

LABEL_21:
  result = result;
  v15 = v20;
  v20 = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v16 = result;
      WTF::StringImpl::destroy(v15, v11);
      return v16;
    }
  }

  return result;
}

- (void)setMarkedTextMatchesAreHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v5 = *(_frame[1] + 8);
    if (v5)
    {
      v6 = *(v5 + 224);
      if (v6)
      {
        *(v6 + 7) += 2;
      }

      v7 = WebCore::Document::editor(v6);
      if (v6)
      {
        if (*(v6 + 7) == 2)
        {
          v9 = v7;
          WebCore::Node::removedLastRef(v6);
          v7 = v9;
          v8 = highlightedCopy;

          goto __ZN7WebCore6Editor34setMarkedTextMatchesAreHighlightedEb;
        }

        *(v6 + 7) -= 2;
      }

      v8 = highlightedCopy;

- (BOOL)markedTextMatchesAreHighlighted
{
  _frame = [(WebHTMLView *)self _frame];
  if (!_frame)
  {
    LOBYTE(v3) = 0;
    return v3;
  }

  v3 = *(_frame[1] + 8);
  if (!v3)
  {
    return v3;
  }

  v4 = *(v3 + 224);
  if (v4)
  {
    *(v4 + 7) += 2;
  }

  v5 = WebCore::Document::editor(v4);
  if (v4)
  {
    if (*(v4 + 7) != 2)
    {
      *(v4 + 7) -= 2;
      return *(v5 + 304) & 1;
    }

    v7 = v5;
    WebCore::Node::removedLastRef(v4);
    v5 = v7;
  }

  return *(v5 + 304) & 1;
}

- (void)unmarkAllTextMatches
{
  _frame = [(WebHTMLView *)self _frame];
  if (_frame)
  {
    v3 = *(_frame[1] + 8);
    if (v3)
    {
      v4 = *(v3 + 224);
      if (v4)
      {
        if (*(v4 + 195))
        {
        }

        else
        {
          WebCore::Document::ensureMarkers(v4);
        }

        WebCore::DocumentMarkerController::removeMarkers();
      }
    }
  }
}

- (id)rectsForTextMatches
{
  _frame = [(WebHTMLView *)self _frame];
  if (!_frame)
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = *(_frame[1] + 8);
  if (!v3)
  {
    return MEMORY[0x1E695E0F0];
  }

  v4 = *(v3 + 224);
  if (!v4)
  {
    return MEMORY[0x1E695E0F0];
  }

  if (!*(v4 + 195))
  {
    WebCore::Document::ensureMarkers(v4);
  }

  WebCore::DocumentMarkerController::renderedRectsForMarkers();
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v13];
  if (v13)
  {
    v7 = v12;
    v8 = 16 * v13;
    do
    {
      NSArrayElement = WebCore::makeNSArrayElement(v7, v5);
      if (NSArrayElement)
      {
        [v6 addObject:NSArrayElement];
      }

      v7 = (v7 + 16);
      v8 -= 16;
    }

    while (v8);
  }

  if (v6)
  {
    v11 = v6;
  }

  if (!v12)
  {
    return v6;
  }

  WTF::fastFree(v12, v5);
  return v6;
}

- (BOOL)_findString:(id)string options:(unint64_t)options
{
  _frame = [string length];
  if (_frame)
  {
    _frame = [(WebHTMLView *)self _frame];
    if (_frame)
    {
      v7 = *(_frame[1] + 8);
      if (v7)
      {
        v8 = *(v7 + 224);
        if (v8)
        {
          *(v8 + 7) += 2;
        }

        WebCore::Document::editor(v8);
        if (v8)
        {
          if (*(v8 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v8);
          }

          else
          {
            *(v8 + 7) -= 2;
          }
        }

        MEMORY[0x1CCA63A40](&v13, string);
        LOBYTE(_frame) = WebCore::Editor::findString();
        v10 = v13;
        v13 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v11 = _frame;
          WTF::StringImpl::destroy(v10, v9);
          LOBYTE(_frame) = v11;
        }
      }

      else
      {
        LOBYTE(_frame) = 0;
      }
    }
  }

  return _frame;
}

@end