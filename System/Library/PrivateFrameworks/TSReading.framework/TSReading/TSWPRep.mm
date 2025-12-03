@interface TSWPRep
- ($6D73A9620177E745173F4CF14EEA41ED)lineMetricsAtCharIndex:(SEL)index;
- ($6D73A9620177E745173F4CF14EEA41ED)lineMetricsAtPoint:(SEL)point;
- ($848BB4BCEB0CC66FDB6012838AE19E8D)wordMetricsAtCharIndex:(SEL)index;
- (BOOL)canEditWithEditor:(id)editor;
- (BOOL)handleSingleTapAtPoint:(CGPoint)point;
- (BOOL)isEditing;
- (BOOL)isOverflowing;
- (BOOL)isPointInSelectedArea:(CGPoint)area;
- (BOOL)p_canRepBeginEditingOnDoubleTap;
- (BOOL)p_canShowSelectionAndCaretLayers;
- (BOOL)p_hasEmptyList;
- (BOOL)p_hasVisibleContents;
- (BOOL)p_isSelectionSingleAnchoredDrawableAttachment;
- (BOOL)p_paragraphModeBorderNeededForColumn:(id)column dragCharIndex:(unint64_t)index knobTag:(unint64_t)tag;
- (BOOL)p_positionCaretLayer:(id)layer forSelection:(id)selection layerRelative:(BOOL)relative;
- (BOOL)p_shouldDisplaySelectionControls;
- (BOOL)p_spellCheckingEnabled;
- (BOOL)shouldCreateCommentKnobs;
- (BOOL)shouldShowKnobs;
- (BOOL)textIsVertical;
- (CGAffineTransform)transformToConvertNaturalToScaledRoot;
- (CGColor)p_caretLayerColor;
- (CGPath)newPathForSearchReference:(id)reference;
- (CGPath)p_createPathForParagraphSelection:(id)selection needsParagraphBorder:(BOOL)border;
- (CGPath)p_newSelectionPathForRange:(_NSRange)range headKnobRect:(CGRect *)rect tailKnobRect:(CGRect *)knobRect selectionType:(int)type selection:(id)selection;
- (CGPoint)knobCenterForSelection:(id)selection knob:(id)knob;
- (CGPoint)p_pinPoint:(CGPoint)point toRect:(CGRect)rect;
- (CGPoint)pinToClosestColumn:(CGPoint)column;
- (CGPoint)pinToNaturalBounds:(CGPoint)bounds andLastLineFragment:(BOOL)fragment;
- (CGRect)caretRect;
- (CGRect)caretRectForCharIndex:(unint64_t)index caretAffinity:(int)affinity;
- (CGRect)caretRectForCharIndex:(unint64_t)index leadingEdge:(BOOL)edge caretAffinity:(int)affinity;
- (CGRect)clipRect;
- (CGRect)closestCaretRectForPoint:(CGPoint)point inSelection:(BOOL)selection;
- (CGRect)columnRectForRange:(_NSRange)range;
- (CGRect)glyphRectForRange:(_NSRange)range includingLabel:(BOOL)label;
- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)index glyphRange:(_NSRange)range;
- (CGRect)labelRectForCharIndex:(unint64_t)index;
- (CGRect)naturalBoundsRectForHyperlinkField:(id)field;
- (CGRect)newTextLayerUnscaledBounds:(CGRect)bounds forNewTextBounds:(CGRect)textBounds;
- (CGRect)p_caretRectForSelection:(id)selection;
- (CGRect)p_clipRect:(CGRect)rect;
- (CGRect)p_convertNaturalRectToRotated:(CGRect)rotated repAngle:(double)angle;
- (CGRect)p_paragraphModeRectangleForColumn:(id)column selection:(id)selection;
- (CGRect)p_topicDragRectForSelection:(id)selection;
- (CGRect)rectForSelection:(id)selection;
- (CGRect)rectForSelection:(id)selection includeRuby:(BOOL)ruby;
- (CGRect)selectionRect;
- (Class)wpEditorClass;
- (NSArray)columns;
- (TSWPEditingController)textEditor;
- (TSWPRep)initWithLayout:(id)layout canvas:(id)canvas;
- (TSWPSelection)selection;
- (TSWPStorage)storage;
- (_NSRange)dragRange;
- (_NSRange)range;
- (_NSRange)rangeOfMisspelledWordAtCharIndex:(unint64_t)index;
- (double)knobOffsetForKnob:(id)knob paragraphMode:(BOOL)mode;
- (id)beginEditing;
- (id)closestColumnForPoint:(CGPoint)point;
- (id)columnForCharIndex:(unint64_t)index;
- (id)decoratorOverlayLayers;
- (id)footnoteMarkAttachmentAtPoint:(CGPoint)point;
- (id)footnoteReferenceAttachmentAtPoint:(CGPoint)point;
- (id)hyperlinkContainerRep;
- (id)hyperlinkRegions;
- (id)hyperlinkRegionsConstrainedToLineAtPoint:(CGPoint)point;
- (id)imageForSearchReference:(id)reference forPath:(CGPath *)path shouldPulsate:(BOOL)pulsate;
- (id)lineSearchReferencesForSearchReference:(id)reference;
- (id)newTrackerForKnob:(id)knob;
- (id)overlayLayers;
- (id)p_annotationAtPoint:(CGPoint)point outRange:(_NSRange *)range;
- (id)p_hyperlinkAtPoint:(CGPoint)point;
- (id)p_hyperlinkWithTouch:(id)touch;
- (id)p_imageForRect:(CGRect)rect usingGlyphRect:(BOOL)glyphRect drawBackground:(BOOL)background shouldPulsate:(BOOL)pulsate forCaret:(BOOL)caret drawSelection:(id)selection suppressInvisibles:(BOOL)invisibles;
- (id)p_lineSelectionsForSelection:(id)selection;
- (id)p_newCaretLayerWithZPosition:(double)position;
- (id)p_smartFieldWithTouch:(id)touch;
- (id)repForDragging;
- (id)rubyFieldAtPoint:(CGPoint)point;
- (id)selectionForDragAndDropNaturalPoint:(CGPoint)point dragIsTopicSelection:(BOOL)selection;
- (id)selectionRects;
- (id)smartFieldAtPoint:(CGPoint)point;
- (id)textImageForSelection:(id)selection;
- (id)textImageForSelection:(id)selection frame:(CGRect *)frame usingGlyphRect:(BOOL)rect drawBackground:(BOOL)background shouldPulsate:(BOOL)pulsate suppressInvisibles:(BOOL)invisibles;
- (int)dragTypeAtCanvasPoint:(CGPoint)point;
- (int)tilingMode;
- (unint64_t)charCountOfGlyphStartingAtCharIndex:(unint64_t)index;
- (unint64_t)charIndexForPointWithPinning:(CGPoint)pinning;
- (unint64_t)charIndexForPointWithPinning:(CGPoint)pinning isTail:(BOOL)tail selectionType:(int)type;
- (unint64_t)charIndexFromPoint:(CGPoint)point allowPastBreak:(BOOL)break allowNotFound:(BOOL)found pastCenterGoesToNextChar:(BOOL)char isAtEndOfLine:(BOOL *)line leadingEdge:(BOOL *)edge;
- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)index;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)addKnobsToArray:(id)array;
- (void)animateIndent:(int64_t)indent target:(id)target action:(SEL)action;
- (void)canvasDidBeginFreeTransform;
- (void)dealloc;
- (void)didDrawInLayer:(id)layer context:(CGContext *)context;
- (void)didEndZooming;
- (void)didEnterBackground;
- (void)didUpdateLayer:(id)layer;
- (void)disableCaretAnimation;
- (void)drawInContext:(CGContext *)context limitSelection:(id)selection suppressInvisibles:(BOOL)invisibles;
- (void)drawInLayerContext:(CGContext *)context;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)drawRubyInContext:(CGContext *)context rubyFieldStart:(unint64_t)start rubyGlyphRange:(_NSRange)range;
- (void)editingDidEnd;
- (void)enableCaretAnimation;
- (void)i_setNeedsDisplayForSelectionChange;
- (void)i_setNeedsErasableDisplayInRange:(_NSRange)range;
- (void)invalidateAnnotationColor;
- (void)invalidateHUDState;
- (void)invalidateKnobs;
- (void)p_activeFindHighlightChangedNotification:(id)notification;
- (void)p_addRectToContext:(CGContext *)context rect:(CGRect)rect;
- (void)p_addRoundedRectToContext:(CGContext *)context rect:(CGRect)rect;
- (void)p_addRoundedRectToContext:(CGContext *)context rect:(CGRect)rect forCaret:(BOOL)caret;
- (void)p_createLayer:(int)layer;
- (void)p_createMarkHighlightLayer;
- (void)p_createSelectionHighlightLayer;
- (void)p_createSelectionLineLayers;
- (void)p_createSelectionParagraphBorderLayer;
- (void)p_createSmartFieldHighlightLayer;
- (void)p_destroyLayer:(int)layer;
- (void)p_didDismissPopover:(id)popover;
- (void)p_drawTextBackgroundLayerInContext:(CGContext *)context;
- (void)p_drawTextInLayer:(id)layer context:(CGContext *)context limitSelection:(id)selection rubyGlyphRange:(_NSRange)range renderMode:(int)mode suppressInvisibles:(BOOL)invisibles;
- (void)p_drawTextLayerInContext:(CGContext *)context;
- (void)p_editingDidEndNotification:(id)notification;
- (void)p_findUIStateChangedNotification:(id)notification;
- (void)p_hideCaretLayer;
- (void)p_hideSelectionLayers;
- (void)p_hideSelectionParagraphBorderLayer;
- (void)p_indentAfterAnimationWithOptions:(id)options;
- (void)p_invalidateCommentKnobs;
- (void)p_invalidateSuppressedMisspellingRange;
- (void)p_markChangedNotification:(id)notification;
- (void)p_selectionChangedNotification:(id)notification;
- (void)p_setActiveSearchReference:(id)reference;
- (void)p_setPulseControllerActive:(BOOL)active autohide:(BOOL)autohide;
- (void)p_setSearchReferencesToHighlight:(id)highlight;
- (void)p_setSelectionHighlightColor;
- (void)p_setSelectionLineLayersHidden:(BOOL)hidden;
- (void)p_setSuppressedMisspellingRange:(_NSRange)range;
- (void)p_showCaretLayer;
- (void)p_showSelectionParagraphBorderLayerWithPath:(CGPath *)path;
- (void)p_spellCheckerLanguageDidChangeNotification:(id)notification;
- (void)p_startCaretLayerAnimation;
- (void)p_stopCaretLayerAnimation;
- (void)p_teardown;
- (void)p_updateAnimationWithAnimatingPulse:(BOOL)pulse;
- (void)p_updateForCurrentSelectionWithFlags:(unint64_t)flags;
- (void)p_updateHighlights;
- (void)p_updateLayersForInsertionPointSelection:(id)selection;
- (void)p_updateLayersForRangeSelection:(id)selection selectionFlags:(unint64_t)flags;
- (void)p_updateMarkHighlightLayer;
- (void)p_updateSecondaryHighlightLayer;
- (void)p_updateSmartFieldHighlightLayer;
- (void)p_updateSuppressedSpellingRange;
- (void)performBlockOnTextLayers:(id)layers;
- (void)processFindUIStateChangedNotificationUserInfo:(id)info;
- (void)pulseAnimationDidStop:(id)stop;
- (void)pulseAnimationDidStopForPulse:(id)pulse;
- (void)pulseCaret;
- (void)screenScaleDidChange;
- (void)setDragRange:(_NSRange)range;
- (void)setDropSelection:(id)selection;
- (void)setHighlightedHyperlinkField:(id)field;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRange:(_NSRange)range;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setSecondaryHighlightRange:(_NSRange)range color:(CGColor *)color pathStyle:(int)style;
- (void)setShouldHideSelectionControls:(BOOL)controls;
- (void)setSuppressSelectionHighlight:(BOOL)highlight;
- (void)tilingLayerWillSetNeedsDisplay:(id)display;
- (void)tilingLayerWillSetNeedsDisplayForDirtyTiles:(id)tiles;
- (void)tilingLayerWillSetNeedsLayout:(id)layout;
- (void)updateFromLayout;
- (void)updatePositionsOfKnobs:(id)knobs;
- (void)verticalTextPropertyChanged;
- (void)viewScaleDidChange;
- (void)willBeRemoved;
- (void)willDisplayEditHyperlinkUIForHyperlinkField:(id)field beginEditing:(BOOL)editing;
- (void)willEnterForeground;
@end

@implementation TSWPRep

- (void)setSuppressSelectionHighlight:(BOOL)highlight
{
  if (self->_suppressSelectionHighlight != highlight)
  {
    self->_suppressSelectionHighlight = highlight;
    if (highlight)
    {
      [(TSWPRep *)self p_hideSelectionLayers];
    }
  }
}

- (void)setShouldHideSelectionControls:(BOOL)controls
{
  if (self->_shouldHideSelectionControls != controls)
  {
    self->_shouldHideSelectionControls = controls;
    canvas = [(TSDRep *)self canvas];

    [(TSDCanvas *)canvas invalidateLayers];
  }
}

- (BOOL)p_shouldDisplaySelectionControls
{
  if ([(TSWPRep *)self shouldHideSelectionControls])
  {
    return 0;
  }

  else
  {
    return [+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")] ^ 1;
  }
}

- (BOOL)shouldShowKnobs
{
  v5.receiver = self;
  v5.super_class = TSWPRep;
  shouldShowKnobs = [(TSDRep *)&v5 shouldShowKnobs];
  if (shouldShowKnobs)
  {
    LOBYTE(shouldShowKnobs) = [(TSWPRep *)self p_shouldDisplaySelectionControls];
  }

  return shouldShowKnobs;
}

- (void)setDragRange:(_NSRange)range
{
  location = range.location;
  length = range.length;
  if (!range.length)
  {
    location = self->_dragRange.location;
    length = self->_dragRange.length;
  }

  self->_dragRange = range;
  [(TSWPRep *)self i_setNeedsErasableDisplayInRange:location, length];
}

- (void)setDropSelection:(id)selection
{
  if (self->_dropSelection != selection)
  {
    self->_dropSelection = selection;
    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] invalidateLayers];
    if (self->_dropSelection)
    {
      [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layoutIfNeeded];
      dragAndDropCaretLayer = self->_dragAndDropCaretLayer;

      [(CALayer *)dragAndDropCaretLayer setHidden:0];
    }

    else
    {
      [(CALayer *)self->_dragAndDropCaretLayer setDelegate:0];

      self->_dragAndDropCaretLayer = 0;
    }
  }
}

- (TSWPRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v12.receiver = self;
  v12.super_class = TSWPRep;
  v5 = [(TSDRep *)&v12 initWithLayout:layout canvas:?];
  v6 = v5;
  if (v5)
  {
    storage = [(TSWPRep *)v5 storage];
    if (storage)
    {
      v8 = storage;
      if ([canvas isCanvasInteractive])
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter addObserver:v6 selector:sel_p_selectionChangedNotification_ name:@"TSWPEditingControllerSelectionChanged" object:v8];
        [defaultCenter addObserver:v6 selector:sel_p_selectionContentsChangedNotification_ name:@"TSWPEditingControllerSelectionContentsChanged" object:v8];
        [defaultCenter addObserver:v6 selector:sel_p_markChangedNotification_ name:@"TSWPEditingControllerMarkChanged" object:v8];
        [defaultCenter addObserver:v6 selector:sel_p_editingDidEndNotification_ name:@"TSWPEditingControllerEditingDidEnd" object:v8];
        [defaultCenter addObserver:v6 selector:sel_p_activeFindHighlightChangedNotification_ name:@"TSKActiveFindHighlightChangedNotification" object:{-[TSDRep interactiveCanvasController](v6, "interactiveCanvasController")}];
        [defaultCenter addObserver:v6 selector:sel_p_findUIStateChangedNotification_ name:@"TSKFindUIStateChanged" object:{-[TSDRep interactiveCanvasController](v6, "interactiveCanvasController")}];
        [defaultCenter addObserver:v6 selector:sel_p_didDismissPopover_ name:@"TSKDidDismissPopover" object:0];
        [defaultCenter addObserver:v6 selector:sel_p_renderingOptionsDidChangeNotification_ name:TSWPRenderingOptionsDidChangeNotification object:0];
        objc_opt_class();
        [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)[(TSDRep *)v6 interactiveCanvasController] documentRoot] activeSearchReference];
        [(TSWPRep *)v6 p_setActiveSearchReference:TSUDynamicCast()];
        [(TSWPRep *)v6 p_setSearchReferencesToHighlight:[(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)[(TSDRep *)v6 interactiveCanvasController] documentRoot] searchReferencesToHighlight]];
      }

      v10 = MEMORY[0x277D6C268];
      v6->_suppressedMisspellingRange = *MEMORY[0x277D6C268];
      v6->_dragRange = *v10;
      v6->_useKeyboardWhenEditing = 1;
    }
  }

  return v6;
}

- (void)dealloc
{
  [(TSWPRep *)self p_teardown];
  v3.receiver = self;
  v3.super_class = TSWPRep;
  [(TSDContainerRep *)&v3 dealloc];
}

- (void)willBeRemoved
{
  [(TSWPRep *)self p_teardown];
  v3.receiver = self;
  v3.super_class = TSWPRep;
  [(TSDRep *)&v3 willBeRemoved];
}

- (_NSRange)range
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  columns = [(TSWPRep *)self columns];
  v3 = [(NSArray *)columns countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(columns);
        }

        location = [*(*(&v15 + 1) + 8 * i) range];
        v11.location = location;
        v11.length = length;
        if (v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21.location = v7;
          v21.length = v5;
          v12 = NSUnionRange(v21, v11);
          length = v12.length;
          location = v12.location;
        }

        v7 = location;
        v5 = length;
      }

      v4 = [(NSArray *)columns countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v7;
  v14 = v5;
  result.length = v14;
  result.location = v13;
  return result;
}

- (CGPoint)pinToNaturalBounds:(CGPoint)bounds andLastLineFragment:(BOOL)fragment
{
  fragmentCopy = fragment;
  y = bounds.y;
  x = bounds.x;
  v60 = *MEMORY[0x277D85DE8];
  [(TSDRep *)self naturalBounds];
  [(TSWPRep *)self p_pinPoint:x toRect:y, v8, v9, v10, v11];
  v13 = v12;
  v15 = v14;
  if (fragmentCopy)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    columns = [(TSWPRep *)self columns];
    v17 = [(NSArray *)columns countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v56;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v56 != v19)
          {
            objc_enumerationMutation(columns);
          }

          v21 = *(*(&v55 + 1) + 8 * i);
          [v21 frameBounds];
          v62.x = v13;
          v62.y = v15;
          if (CGRectContainsPoint(v63, v62))
          {
            countLines = [v21 countLines];
            if (countLines)
            {
              [v21 boundsOfLineFragmentAtIndex:countLines - 1];
              v24 = v23;
              v26 = v25;
              v28 = v27;
              v30 = v29;
              if (v21)
              {
                [v21 transformToWP];
                v31 = v50;
                v33 = v51;
                v32 = v52;
                v34 = v54;
                v47 = v53;
                v48 = v49;
              }

              else
              {
                v34 = 0.0;
                v32 = 0.0;
                v31 = 0.0;
                v47 = 0.0;
                v48 = 0.0;
                v33 = 0.0;
              }

              v35 = v34 + v15 * v32 + v31 * v13;
              v64.origin.x = v24;
              v64.origin.y = v26;
              v64.size.width = v28;
              v64.size.height = v30;
              MaxY = CGRectGetMaxY(v64);
              if (v35 > MaxY)
              {
                v37 = MaxY;
                v38 = v47 + v15 * v33 + v48 * v13;
                if (v21)
                {
                  [v21 transformFromWP];
                  v40 = v49;
                  v39 = v50;
                  v42 = v51;
                  v41 = v52;
                  v44 = v53;
                  v43 = v54;
                }

                else
                {
                  v43 = 0.0;
                  v41 = 0.0;
                  v39 = 0.0;
                  v44 = 0.0;
                  v42 = 0.0;
                  v40 = 0.0;
                }

                v13 = v44 + v37 * v42 + v40 * v38;
                v15 = v43 + v37 * v41 + v39 * v38;
              }
            }

            goto LABEL_20;
          }
        }

        v18 = [(NSArray *)columns countByEnumeratingWithState:&v55 objects:v59 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_20:
  v45 = v13;
  v46 = v15;
  result.y = v46;
  result.x = v45;
  return result;
}

- (CGPoint)pinToClosestColumn:(CGPoint)column
{
  y = column.y;
  x = column.x;
  v6 = [(TSWPRep *)self closestColumnForPoint:?];
  if (v6)
  {
    [v6 frameBounds];
    [(TSWPRep *)self p_pinPoint:x toRect:y, v7, v8, v9, v10];
    x = v11;
    y = v12;
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGRect)caretRect
{
  selection = [(TSWPRep *)self selection];

  [(TSWPRep *)self caretRectForSelection:selection];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)selectionRect
{
  selection = [(TSWPRep *)self selection];

  [(TSWPRep *)self rectForSelection:selection];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)selectionRects
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if ([(TSWPRep *)self selection])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    columns = [(TSWPRep *)self columns];
    v5 = [(NSArray *)columns countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(columns);
          }

          v9 = [*(*(&v11 + 1) + 8 * v8) rectsForSelection:{-[TSWPRep selection](self, "selection")}];
          if ([v9 count])
          {
            [array addObjectsFromArray:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)columns countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  return [array copy];
}

- (BOOL)isPointInSelectedArea:(CGPoint)area
{
  y = area.y;
  x = area.x;
  v27 = *MEMORY[0x277D85DE8];
  selection = [(TSWPRep *)self selection];
  if (selection)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    columns = [(TSWPRep *)self columns];
    selection = [(NSArray *)columns countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (selection)
    {
      v8 = selection;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(columns);
          }

          v11 = [*(*(&v21 + 1) + 8 * i) rectsForSelection:{-[TSWPRep selection](self, "selection")}];
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v18;
            while (2)
            {
              v15 = 0;
              do
              {
                if (*v18 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [*(*(&v17 + 1) + 8 * v15) CGRectValue];
                v28.x = x;
                v28.y = y;
                if (CGRectContainsPoint(v29, v28))
                {
                  LOBYTE(selection) = 1;
                  return selection;
                }

                ++v15;
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }
        }

        v8 = [(NSArray *)columns countByEnumeratingWithState:&v21 objects:v26 count:16];
        LOBYTE(selection) = 0;
      }

      while (v8);
    }
  }

  return selection;
}

- (CGRect)rectForSelection:(id)selection
{
  columns = [(TSWPRep *)self columns];

  [TSWPColumn boundsRectForSelection:selection columnArray:columns includeRuby:0];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)rectForSelection:(id)selection includeRuby:(BOOL)ruby
{
  rubyCopy = ruby;
  columns = [(TSWPRep *)self columns];

  [TSWPColumn boundsRectForSelection:selection columnArray:columns includeRuby:rubyCopy];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)naturalBoundsRectForHyperlinkField:(id)field
{
  range = [field range];
  v6 = [TSWPSelection selectionWithRange:range, v5];

  [(TSWPRep *)self rectForSelection:v6];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)caretRectForCharIndex:(unint64_t)index caretAffinity:(int)affinity
{
  v5 = [[TSWPSelection alloc] initWithType:0 range:index styleInsertionBehavior:0 caretAffinity:0, *&affinity];
  [(TSWPRep *)self p_caretRectForSelection:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)caretRectForCharIndex:(unint64_t)index leadingEdge:(BOOL)edge caretAffinity:(int)affinity
{
  v5 = *&affinity;
  v9 = [TSWPSelection alloc];
  LOBYTE(v23) = edge;
  v10 = [(TSWPSelection *)v9 initWithType:7 range:index styleInsertionBehavior:0 caretAffinity:0 smartFieldRange:v5 leadingEdge:*MEMORY[0x277D6C268] storage:*(MEMORY[0x277D6C268] + 8), v23, [(TSWPRep *)self storage]];
  [(TSWPRep *)self p_caretRectForSelection:v10];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- ($6D73A9620177E745173F4CF14EEA41ED)lineMetricsAtPoint:(SEL)point
{
  y = a4.y;
  x = a4.x;
  v7 = [(TSWPRep *)self closestColumnForPoint:?];
  v9 = 0;
  result = [v7 charIndexFromPoint:0 allowPastBreak:1 pastCenterGoesToNextChar:0 allowNotFound:&v9 + 1 isAtEndOfLine:&v9 leadingEdge:{x, y}];
  if (v7)
  {
    return [v7 lineMetricsAtCharIndex:result allowEndOfLine:HIBYTE(v9)];
  }

  *&retstr->var1 = 0u;
  *&retstr->var3 = 0u;
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  return result;
}

- ($6D73A9620177E745173F4CF14EEA41ED)lineMetricsAtCharIndex:(SEL)index
{
  result = [(TSWPRep *)self columnForCharIndex:?];
  if (result)
  {

    return [($6D73A9620177E745173F4CF14EEA41ED *)result lineMetricsAtCharIndex:a4 allowEndOfLine:0];
  }

  else
  {
    *&retstr->var1 = 0u;
    *&retstr->var3 = 0u;
    retstr->var0.origin = 0u;
    retstr->var0.size = 0u;
  }

  return result;
}

- ($848BB4BCEB0CC66FDB6012838AE19E8D)wordMetricsAtCharIndex:(SEL)index
{
  *&retstr->var1 = xmmword_26CA66B70;
  *&retstr->var3 = unk_26CA66B80;
  *&retstr->var5 = 0;
  retstr->var0.origin = TSWPEmptyWordMetrics;
  retstr->var0.size = unk_26CA66B60;
  v7 = [(TSWPStorage *)[(TSWPRep *)self storage] wordAtCharIndex:a4 includePreviousWord:0];
  [(TSWPRep *)self rectForSelection:[TSWPSelection selectionWithRange:v7, v8]];
  retstr->var0.origin.x = v9;
  retstr->var0.origin.y = v10;
  retstr->var0.size.width = v11;
  retstr->var0.size.height = v12;
  result = [(TSWPStorage *)[(TSWPRep *)self storage] attachmentAtCharIndex:a4];
  retstr->var5 = result != 0;
  v14 = 0uLL;
  if (self)
  {
    v16 = 0uLL;
    v17 = 0uLL;
    result = [(TSWPRep *)self lineMetricsAtCharIndex:a4, 0, 0, 0, 0];
    v14 = v16;
    v15 = v17;
  }

  else
  {
    v15 = 0uLL;
  }

  *&retstr->var1 = v14;
  *&retstr->var3 = v15;
  return result;
}

- (CGRect)p_caretRectForSelection:(id)selection
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  if ([selection type] != 3 && objc_msgSend(selection, "type") != 5)
  {
    textEditor = [(TSWPRep *)self textEditor];
    if (textEditor)
    {
      [(TSWPEditingController *)textEditor overrideCaretRectForSelection:selection];
      v5 = v10;
      v6 = v11;
      v7 = v12;
      v8 = v13;
    }

    v33.origin.x = v5;
    v33.origin.y = v6;
    v33.size.width = v7;
    v33.size.height = v8;
    if (CGRectIsNull(v33))
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      columns = [(TSWPRep *)self columns];
      v15 = [(NSArray *)columns countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(columns);
            }

            [*(*(&v27 + 1) + 8 * i) caretRectForSelection:selection];
            if (v22 > 0.0 || v21 > 0.0)
            {
              v5 = v19;
              v6 = v20;
              v7 = v21;
              v8 = v22;
              goto LABEL_17;
            }
          }

          v16 = [(NSArray *)columns countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_17:
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v26 = v8;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)p_topicDragRectForSelection:(id)selection
{
  v42 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  if (!selection)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep p_topicDragRectForSelection:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"), 715, @"invalid nil value for '%s'", "sel"}];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  columns = [(TSWPRep *)self columns];
  v12 = [(NSArray *)columns countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v12)
  {
    v13 = *v38;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(columns);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        [v15 caretRectForSelection:selection];
        v18 = v17;
        MaxY = v19;
        v21 = v16;
        v23 = v22;
        if (v22 > 0.0 || v16 > 0.0)
        {
          [v15 frameBounds];
          v25 = v24;
          [v15 frameBounds];
          v27 = v26;
          range = [selection range];
          storage = [(TSWPRep *)self storage];
          if (storage)
          {
            [(TSWPStorage *)storage paragraphEnumeratorAtCharIndex:range styleProvider:0];
          }

          else
          {
            memset(&v36, 0, sizeof(v36));
          }

          v30 = TSWPParagraphEnumerator::paragraphString(&v36);
          if (TSWPParagraphEnumerator::isLastParagraph(&v36) && [v30 length] && range > TSWPParagraphEnumerator::paragraphTextRange(&v36))
          {
            v43.origin.x = v18;
            v43.origin.y = MaxY;
            v43.size.width = v21;
            v43.size.height = v23;
            MaxY = CGRectGetMaxY(v43);
          }

          if (self)
          {
            [(TSWPRep *)self transformToConvertNaturalToScaledRoot];
          }

          else
          {
            memset(&v35, 0, sizeof(v35));
          }

          v7 = 1.0;
          v44.size.height = 1.0;
          v44.origin.x = v25;
          v44.origin.y = MaxY;
          v44.size.width = v27;
          v45 = CGRectApplyAffineTransform(v44, &v35);
          x = v45.origin.x;
          width = v45.size.width;
          v6 = rint(v45.origin.y);
          TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v36);
          goto LABEL_24;
        }
      }

      v12 = [(NSArray *)columns countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:
  v31 = x;
  v32 = v6;
  v33 = width;
  v34 = v7;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)closestCaretRectForPoint:(CGPoint)point inSelection:(BOOL)selection
{
  selectionCopy = selection;
  [(TSWPRep *)self pinToNaturalBounds:1 andLastLineFragment:point.x, point.y];
  v6 = [(TSWPRep *)self charIndexFromPoint:1 allowPastBreak:0 isAtEndOfLine:?];
  if (selectionCopy)
  {
    start = [(TSWPSelection *)[(TSWPRep *)self selection] start];
    selection = [(TSWPRep *)self selection];
    if (v6 >= start)
    {
      if (v6 <= [(TSWPSelection *)selection end])
      {
        goto LABEL_7;
      }

      start2 = [(TSWPSelection *)[(TSWPRep *)self selection] end];
    }

    else
    {
      start2 = [(TSWPSelection *)selection start];
    }

    v6 = start2;
  }

LABEL_7:
  v10 = v6 >= [(TSWPSelection *)[(TSWPRep *)self selection] end];

  [(TSWPRep *)self caretRectForCharIndex:v6 caretAffinity:v10];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)invalidateAnnotationColor
{
  v3.receiver = self;
  v3.super_class = TSWPRep;
  [(TSDRep *)&v3 invalidateAnnotationColor];
  [(TSWPRep *)self setNeedsDisplay];
}

- (BOOL)shouldCreateCommentKnobs
{
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
  info = [[(TSDRep *)self parentRep] info];

  return [(TSDInteractiveCanvasController *)interactiveCanvasController shouldDisplayCommentUIForInfo:info];
}

- (id)newTrackerForKnob:(id)knob
{
  if (!knob)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep newTrackerForKnob:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"), 814, @"invalid nil value for '%s'", "knob"}];
  }

  if ([knob tag] == 32)
  {
    return 0;
  }

  delegate = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] delegate];
  if (objc_opt_respondsToSelector())
  {
    wpTrackerClassOverride = [(TSDInteractiveCanvasControllerDelegate *)delegate wpTrackerClassOverride];
  }

  else
  {
    wpTrackerClassOverride = objc_opt_class();
  }

  v10 = [wpTrackerClassOverride alloc];

  return [v10 initWithRep:self knob:knob];
}

- (id)p_annotationAtPoint:(CGPoint)point outRange:(_NSRange *)range
{
  v6 = [TSWPColumn charIndexForPoint:[(TSDLayout *)[(TSDRep *)self layout] columns] inColumnsArray:1 allowPastBreak:1 allowNotFound:1 pastCenterGoesToNextChar:0 isAtEndOfLine:0 leadingEdge:point.x, point.y];
  storage = [(TSWPRep *)self storage];
  v8 = [TSWPSelection selectionWithRange:v6, 0];
  showsComments = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] showsComments];

  return [(TSWPStorage *)storage editableAnnotationForInsertionPointSelection:v8 includeComments:showsComments withOutRange:range selectionIsOnEdge:0];
}

- (CGPoint)knobCenterForSelection:(id)selection knob:(id)knob
{
  knobCopy = knob;
  v132 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v9 = *(MEMORY[0x277CBF398] + 16);
  v10 = *(MEMORY[0x277CBF398] + 24);
  v11 = [knob tag];
  textEditor = [(TSWPRep *)self textEditor];
  v13 = [(TSWPEditingController *)textEditor isParagraphModeWithSelection:selection onStorage:[(TSWPRep *)self storage]];
  v14 = *MEMORY[0x277CBF348];
  v15 = *(MEMORY[0x277CBF348] + 8);
  if (v13 && [(TSWPEditingController *)textEditor knobTracking]&& (v16 = [(TSDRep *)self interactiveCanvasController], [(TSWPEditingController *)textEditor knobTrackingDragPoint], [(TSDInteractiveCanvasController *)v16 closestRepToPoint:[(TSWPRep *)self storage] forStorage:v17, v18]== self) && ([(TSWPEditingController *)textEditor knobTrackingDragPoint], [(TSDRep *)self convertNaturalPointFromUnscaledCanvas:?], v14 = v19, v15 = v20, [(TSWPEditingController *)textEditor knobTag]== v11))
  {
    v21 = [(TSWPRep *)self closestColumnForPoint:v14, v15];
  }

  else
  {
    v21 = 0;
  }

  textIsVertical = [(TSWPRep *)self textIsVertical];
  if (((v13 | [selection isVisual] ^ 1) & 1) == 0)
  {
    if (v11 == 11)
    {
      headChar = [selection headChar];
    }

    else
    {
      headChar = [selection tailChar];
    }

    v32 = headChar;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    columns = [(TSWPRep *)self columns];
    v34 = [(NSArray *)columns countByEnumeratingWithState:&v124 objects:v131 count:16];
    if (!v34)
    {
      goto LABEL_91;
    }

    v35 = v34;
    selfCopy2 = self;
    v113 = knobCopy;
    v36 = *v125;
LABEL_28:
    v37 = 0;
    while (1)
    {
      if (*v125 != v36)
      {
        objc_enumerationMutation(columns);
      }

      v38 = *(*(&v124 + 1) + 8 * v37);
      v39 = [v38 lineFragmentForCharIndex:v32 knobTag:v11 selectionType:{objc_msgSend(selection, "type")}];
      if (v39)
      {
        break;
      }

      if (v35 == ++v37)
      {
        v35 = [(NSArray *)columns countByEnumeratingWithState:&v124 objects:v131 count:16];
        if (!v35)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }
    }

    v40 = v39;
    v41 = *(v39 + 24);
    if (v11 == 11 && (v41 & 0x200) != 0)
    {
      v130 = [MEMORY[0x277CCAE60] valueWithCGRect:{*(v39 + 48), *(v39 + 56), *(v39 + 64), *(v39 + 72)}];
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
    }

    else
    {
      v42 = [v38 rectsForSelectionRange:*v39 selectionType:{*(v39 + 8), objc_msgSend(selection, "type")}];
    }

    v45 = v42;
    knobCopy = v113;
    if ([v42 count])
    {
      v47 = (v41 & 0x1000) == 0 && v11 == 11;
      if (((v11 == 10) & (v41 >> 12)) != 0 || v47)
      {
        firstObject = [v45 firstObject];
      }

      else
      {
        firstObject = [v45 lastObject];
      }

      [firstObject CGRectValue];
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;
      if (v38)
      {
        [v38 transformToWP];
      }

      else
      {
        memset(&v123, 0, sizeof(v123));
      }

      v136.origin.x = v61;
      v136.origin.y = v63;
      v136.size.width = v65;
      v136.size.height = v67;
      v137 = CGRectApplyAffineTransform(v136, &v123);
      x = v137.origin.x;
      y = v137.origin.y;
      width = v137.size.width;
      height = v137.size.height;
      [v38 wpBounds];
      v152.origin.x = v74;
      v152.origin.y = v75;
      v152.size.width = v76;
      v152.size.height = v77;
      v138.origin.x = x;
      v138.origin.y = y;
      v138.size.width = width;
      v138.size.height = height;
      v139 = CGRectIntersection(v138, v152);
      v8 = v139.origin.y;
      v10 = v139.size.height;
      v7 = TSWPLineFragment::wpOffsetForCharIndexForVisualSelection(v40, v32, v11 == 11);
      v9 = 0.0;
    }

    if (v38)
    {
      [v38 transformFromWP];
    }

    else
    {
      memset(&v123, 0, sizeof(v123));
    }

    self = selfCopy2;
LABEL_90:
    v148.origin.x = v7;
    v148.origin.y = v8;
    v148.size.width = v9;
    v148.size.height = v10;
    v149 = CGRectApplyAffineTransform(v148, &v123);
    v7 = v149.origin.x;
    v8 = v149.origin.y;
    v9 = v149.size.width;
    v10 = v149.size.height;
    goto LABEL_91;
  }

  if (v11 == 11)
  {
    start = [selection start];
  }

  else
  {
    start = [selection end];
  }

  v23 = start;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  columns2 = [(TSWPRep *)self columns];
  v25 = [(NSArray *)columns2 countByEnumeratingWithState:&v119 objects:v129 count:16];
  if (!v25)
  {
    goto LABEL_91;
  }

  v26 = v25;
  v111 = v21;
  selfCopy2 = self;
  v113 = knobCopy;
  v27 = *v120;
  while (2)
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v120 != v27)
      {
        objc_enumerationMutation(columns2);
      }

      v29 = *(*(&v119 + 1) + 8 * i);
      if (v13)
      {
        if ([*(*(&v119 + 1) + 8 * i) lineFragmentForCharIndex:v23 knobTag:v11 selectionType:0])
        {
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          range = [selection range];
          v51 = [v29 rectsForSelectionRange:range selectionType:v50 forParagraphMode:{objc_msgSend(selection, "type"), 1}];
          v52 = [v51 countByEnumeratingWithState:&v115 objects:v128 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v116;
            self = selfCopy2;
            knobCopy = v113;
            do
            {
              for (j = 0; j != v53; ++j)
              {
                if (*v116 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                [*(*(&v115 + 1) + 8 * j) CGRectValue];
                v151.origin.x = v56;
                v151.origin.y = v57;
                v151.size.width = v58;
                v151.size.height = v59;
                v134.origin.x = v7;
                v134.origin.y = v8;
                v134.size.width = v9;
                v134.size.height = v10;
                v135 = CGRectUnion(v134, v151);
                v7 = v135.origin.x;
                v8 = v135.origin.y;
                v9 = v135.size.width;
                v10 = v135.size.height;
              }

              v53 = [v51 countByEnumeratingWithState:&v115 objects:v128 count:16];
            }

            while (v53);
            if (v29)
            {
              goto LABEL_60;
            }
          }

          else
          {
            self = selfCopy2;
            knobCopy = v113;
            if (v29)
            {
LABEL_60:
              [v29 transformToWP];
LABEL_76:
              v140.origin.x = v7;
              v140.origin.y = v8;
              v140.size.width = v9;
              v140.size.height = v10;
              v141 = CGRectApplyAffineTransform(v140, &v123);
              v78 = v141.origin.x;
              v79 = v141.origin.y;
              v80 = v141.size.width;
              v81 = v141.size.height;
              [v29 wpBounds];
              v153.origin.x = v82;
              v153.origin.y = v83;
              v153.size.width = v84;
              v153.size.height = v85;
              v142.origin.x = v78;
              v142.origin.y = v79;
              v142.size.width = v80;
              v142.size.height = v81;
              v143 = CGRectIntersection(v142, v153);
              v8 = v143.origin.y;
              v7 = v143.origin.x + v143.size.width * 0.5;
              if (v111 != v29)
              {
                v10 = v143.size.height;
                goto LABEL_88;
              }

              v9 = 0.0;
              ty = 0.0;
              d = 0.0;
              b = 0.0;
              if (v29)
              {
                [v29 transformToWP];
                b = v123.b;
                d = v123.d;
                ty = v123.ty;
              }

              v8 = ty + v15 * d + b * v14;
              v10 = 0.0;
              goto LABEL_81;
            }
          }

          memset(&v123, 0, sizeof(v123));
          goto LABEL_76;
        }
      }

      else
      {
        v30 = [v29 lineFragmentForCharIndex:v23 knobTag:v11 selectionType:{objc_msgSend(selection, "type")}];
        if (v30)
        {
          v43 = v30;
          if (v11 == 11 && (*(v30 + 24) & 0x200) != 0)
          {
            v44 = [MEMORY[0x277CBEA60] arrayWithObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", *(v30 + 48), *(v30 + 56), *(v30 + 64), *(v30 + 72))}];
          }

          else
          {
            v44 = [v29 rectsForSelectionRange:*v30 selectionType:{*(v30 + 8), objc_msgSend(selection, "type", v111)}];
          }

          v68 = v44;
          self = selfCopy2;
          knobCopy = v113;
          if ([v44 count])
          {
            if (v11 == 11)
            {
              firstObject2 = [v68 firstObject];
            }

            else
            {
              firstObject2 = [v68 lastObject];
            }

            [firstObject2 CGRectValue];
            v90 = v89;
            v92 = v91;
            v94 = v93;
            v96 = v95;
            if (v29)
            {
              [v29 transformToWP];
            }

            else
            {
              memset(&v123, 0, sizeof(v123));
            }

            v144.origin.x = v90;
            v144.origin.y = v92;
            v144.size.width = v94;
            v144.size.height = v96;
            v145 = CGRectApplyAffineTransform(v144, &v123);
            v97 = v145.origin.x;
            v98 = v145.origin.y;
            v99 = v145.size.width;
            v100 = v145.size.height;
            [v29 wpBounds];
            v154.origin.x = v101;
            v154.origin.y = v102;
            v154.size.width = v103;
            v154.size.height = v104;
            v146.origin.x = v97;
            v146.origin.y = v98;
            v146.size.width = v99;
            v146.size.height = v100;
            v147 = CGRectIntersection(v146, v154);
            v8 = v147.origin.y;
            v10 = v147.size.height;
            v7 = TSWPLineFragment::wpOffsetForCharIndex(v43, v23, v11 == 11);
LABEL_88:
            v9 = 0.0;
            if (!v29)
            {
              goto LABEL_89;
            }

            goto LABEL_82;
          }

LABEL_81:
          if (!v29)
          {
LABEL_89:
            memset(&v123, 0, sizeof(v123));
            goto LABEL_90;
          }

LABEL_82:
          [v29 transformFromWP];
          goto LABEL_90;
        }
      }
    }

    v26 = [(NSArray *)columns2 countByEnumeratingWithState:&v119 objects:v129 count:16];
    if (v26)
    {
      continue;
    }

    break;
  }

LABEL_34:
  self = selfCopy2;
  knobCopy = v113;
LABEL_91:
  v150.origin.x = v7;
  v150.origin.y = v8;
  v150.size.width = v9;
  v150.size.height = v10;
  if (!CGRectIsNull(v150))
  {
    v105 = v8 + v10;
    if (textIsVertical)
    {
      v105 = v8;
    }

    if (v11 != 10)
    {
      v105 = v8;
    }

    if (v11 == 11 && textIsVertical)
    {
      v7 = v7 + v9;
    }

    else
    {
      v8 = v105;
    }

    [(TSWPRep *)self knobOffsetForKnob:knobCopy paragraphMode:v13, v111];
    v107 = v8 + v106;
    v108 = v7 - v106;
    if (textIsVertical)
    {
      v7 = v108;
    }

    else
    {
      v8 = v107;
    }
  }

  v109 = v7;
  v110 = v8;
  result.y = v110;
  result.x = v109;
  return result;
}

- (double)knobOffsetForKnob:(id)knob paragraphMode:(BOOL)mode
{
  [objc_msgSend(knob "layer")];
  v7 = CGRectGetHeight(v12) * 0.5;
  [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] viewScale];
  v9 = v8;
  v10 = [knob tag];
  result = 0.0;
  if (v10 == 11)
  {
    if (!mode)
    {
      return 0.0 - (v7 / v9 + -1.0);
    }
  }

  else if (!mode)
  {
    return v7 / v9 + -1.0;
  }

  return result;
}

- (unint64_t)charIndexForPointWithPinning:(CGPoint)pinning
{
  [(TSWPRep *)self pinToNaturalBounds:1 andLastLineFragment:pinning.x, pinning.y];

  return [(TSWPRep *)self charIndexFromPoint:1 allowPastBreak:0 isAtEndOfLine:?];
}

- (unint64_t)charIndexForPointWithPinning:(CGPoint)pinning isTail:(BOOL)tail selectionType:(int)type
{
  tailCopy = tail;
  y = pinning.y;
  x = pinning.x;
  [(TSWPRep *)self pinToNaturalBounds:1 andLastLineFragment:?];
  v12 = [TSWPColumn closestColumnInColumnsArray:[(TSDLayout *)[(TSDRep *)self layout] columns] forPoint:0 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:v10, v11];
  if (v12)
  {
    v13 = [v12 charIndexForSelectionFromPoint:tailCopy isTail:{x, y}];
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (type == 7 || !tailCopy)
  {
    return v13;
  }

  storage = [(TSWPRep *)self storage];

  return [(TSWPStorage *)storage nextCharacterIndex:v13];
}

- (unint64_t)charIndexFromPoint:(CGPoint)point allowPastBreak:(BOOL)break allowNotFound:(BOOL)found pastCenterGoesToNextChar:(BOOL)char isAtEndOfLine:(BOOL *)line leadingEdge:(BOOL *)edge
{
  charCopy = char;
  foundCopy = found;
  breakCopy = break;
  y = point.y;
  x = point.x;
  if (!found && ([(TSDLayout *)[(TSDRep *)self layout] layoutIsValid]& 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep charIndexFromPoint:allowPastBreak:allowNotFound:pastCenterGoesToNextChar:isAtEndOfLine:leadingEdge:]"];
    [currentHandler handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"), 1215, @"Should not call when layout has not been validated"}];
  }

  if (![(TSDLayout *)[(TSDRep *)self layout] layoutIsValid])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  columns = [(TSDLayout *)[(TSDRep *)self layout] columns];

  return [TSWPColumn charIndexForPoint:columns inColumnsArray:breakCopy allowPastBreak:foundCopy allowNotFound:charCopy pastCenterGoesToNextChar:line isAtEndOfLine:edge leadingEdge:x, y];
}

- (int)tilingMode
{
  textIsVertical = [(TSWPRep *)self textIsVertical];
  if (textIsVertical)
  {
    v4 = 5;
  }

  else
  {
    v4 = 4;
  }

  if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    textRepsShouldTileAggressively = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] textRepsShouldTileAggressively];
    if (textIsVertical)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    if (textRepsShouldTileAggressively)
    {
      return v6;
    }
  }

  return v4;
}

- (void)verticalTextPropertyChanged
{
  [(TSWPRep *)self p_destroyLayer:1];
  [(TSWPRep *)self p_destroyLayer:0];
  [(TSWPRep *)self p_createLayer:1];

  [(TSWPRep *)self p_createLayer:0];
}

- (id)p_hyperlinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  objc_opt_class();
  [(TSWPRep *)self smartFieldAtPoint:x, y];

  return TSUDynamicCast();
}

- (int)dragTypeAtCanvasPoint:(CGPoint)point
{
  v6.receiver = self;
  v6.super_class = TSWPRep;
  v4 = [(TSDRep *)&v6 dragTypeAtCanvasPoint:point.x, point.y];
  if ([(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] inReadMode])
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

- (void)performBlockOnTextLayers:(id)layers
{
  v4 = 0;
  textLayers = self->_textLayers;
  v6 = 1;
  do
  {
    v7 = v6;
    if (textLayers[v4])
    {
      (*(layers + 2))(layers);
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
}

- (void)setNeedsDisplay
{
  if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    if ([(TSWPRep *)self p_hasVisibleContents])
    {
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __26__TSWPRep_setNeedsDisplay__block_invoke;
      v3[3] = &unk_279D4A128;
      v3[4] = self;
      [(TSWPRep *)self performBlockOnTextLayers:v3];
      objc_opt_class();
      [(TSDRep *)self parentRep];
      [TSUDynamicCast() invalidateEffectLayersForChildren];
    }
  }
}

uint64_t __26__TSWPRep_setNeedsDisplay__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) interactiveCanvasController];

  return [v3 setNeedsDisplayOnLayer:a2];
}

- (void)setNeedsDisplayInRange:(_NSRange)range
{
  [(TSWPRep *)self rectForSelection:[TSWPSelection selectionWithRange:range.location, range.length]];

  [(TSWPRep *)self setNeedsDisplayInRect:?];
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectIsEmpty(rect) && [(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    if ([(TSWPRep *)self p_hasVisibleContents])
    {
      [(TSDRep *)self convertNaturalRectToLayerRelative:x, y, width, height];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __33__TSWPRep_setNeedsDisplayInRect___block_invoke;
      v12[3] = &unk_279D4A150;
      v12[4] = self;
      v12[5] = v8;
      v12[6] = v9;
      v12[7] = v10;
      v12[8] = v11;
      [(TSWPRep *)self performBlockOnTextLayers:v12];
      objc_opt_class();
      [(TSDRep *)self parentRep];
      [TSUDynamicCast() invalidateEffectLayersForChildren];
    }
  }
}

uint64_t __33__TSWPRep_setNeedsDisplayInRect___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) interactiveCanvasController];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);

  return [v4 setNeedsDisplayInRect:a2 onLayer:{v5, v6, v7, v8}];
}

- (void)drawInLayerContext:(CGContext *)context
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep drawInLayerContext:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:1408 description:{@"this method should never be called, and WP reps should never get a bitmap allocated"}];
}

- (void)drawInContext:(CGContext *)context limitSelection:(id)selection suppressInvisibles:(BOOL)invisibles
{
  CGContextSaveGState(context);
  LOBYTE(v9) = invisibles;
  [(TSWPRep *)self p_drawTextInLayer:0 context:context limitSelection:selection rubyGlyphRange:*MEMORY[0x277D6C268] renderMode:*(MEMORY[0x277D6C268] + 8) suppressInvisibles:3, v9];

  CGContextRestoreGState(context);
}

- (void)drawRubyInContext:(CGContext *)context rubyFieldStart:(unint64_t)start rubyGlyphRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(TSWPStorage *)[(TSWPRep *)self storage] smartFieldAtCharIndex:start attributeKind:7 effectiveRange:&v12];
  if (v13)
  {
    CGContextSaveGState(context);
    v9 = [TSWPSelection alloc];
    v10 = [(TSWPSelection *)v9 initWithRange:v12, v13];
    LOBYTE(v11) = 0;
    [(TSWPRep *)self p_drawTextInLayer:0 context:context limitSelection:v10 rubyGlyphRange:location renderMode:length suppressInvisibles:3, v11];

    CGContextRestoreGState(context);
  }
}

- (id)overlayLayers
{
  v25.receiver = self;
  v25.super_class = TSWPRep;
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:{-[TSDRep overlayLayers](&v25, sel_overlayLayers)}];
  [(TSDCanvas *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] canvas] contentsScale];
  v5 = v4;
  if ((TSUSupportsTextInteraction() & 1) == 0)
  {
    selectionLineLayers = self->_selectionLineLayers;
    if (!self->_selectionLineLayers[0])
    {
      [(TSWPRep *)self p_createSelectionLineLayers];
    }

    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v8;
      if (([(CAShapeLayer *)selectionLineLayers[v7] isHidden]& 1) == 0)
      {
        [v3 addObject:selectionLineLayers[v7]];
      }

      v8 = 0;
      v7 = 1;
    }

    while ((v9 & 1) != 0);
  }

  pulseArrayController = self->_pulseArrayController;
  if (pulseArrayController)
  {
    layers = [(TSKHighlightArrayController *)pulseArrayController layers];
    if ([(NSArray *)layers count])
    {
      [(NSArray *)layers makeObjectsPerformSelector:sel_setDelegate_ withObject:[(TSDRep *)self interactiveCanvasController]];
      [v3 addObjectsFromArray:layers];
    }
  }

  highlightArrayController = self->_highlightArrayController;
  if (highlightArrayController)
  {
    layers2 = [(TSKHighlightArrayController *)highlightArrayController layers];
    if ([(NSArray *)layers2 count])
    {
      [(NSArray *)layers2 makeObjectsPerformSelector:sel_setDelegate_ withObject:[(TSDRep *)self interactiveCanvasController]];
      [v3 addObjectsFromArray:layers2];
    }
  }

  if (self->_caretPulseController)
  {
    [(CALayer *)[(TSKHighlightController *)self->_caretPulseController layer] setDelegate:[(TSDRep *)self interactiveCanvasController]];
    [v3 addObject:{-[TSKHighlightController layer](self->_caretPulseController, "layer")}];
  }

  dropSelection = self->_dropSelection;
  if (dropSelection)
  {
    isRange = [(TSWPSelection *)self->_dropSelection isRange];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    dragAndDropCaretLayer = self->_dragAndDropCaretLayer;
    if (isRange)
    {
      if (isKindOfClass)
      {
        if (dragAndDropCaretLayer)
        {
LABEL_25:
          range = [(TSWPSelection *)dropSelection range];
          v21 = [TSDBezierPath outsideEdgeOfBezierPath:[TSWPColumn pathForHighlightWithRange:range columnArray:v20 pathStyle:[(TSWPRep *)self columns], 0]];
          [(TSWPRep *)self transformToConvertNaturalToScaledRoot];
          [v21 transformUsingAffineTransform:&v24];
          -[CALayer setPath:](self->_dragAndDropCaretLayer, "setPath:", [v21 CGPath]);
LABEL_29:
          [v3 addObject:self->_dragAndDropCaretLayer];
          return v3;
        }
      }

      else
      {
        [(CALayer *)self->_dragAndDropCaretLayer setDelegate:0];

        self->_dragAndDropCaretLayer = 0;
      }

      v18 = objc_alloc_init(MEMORY[0x277CD9F90]);
      self->_dragAndDropCaretLayer = v18;
      [(CALayer *)v18 setContentsScale:v5];
      [(CALayer *)v18 setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      [(CALayer *)v18 setEdgeAntialiasingMask:0];
      [(CALayer *)v18 setDelegate:self];
      [(CALayer *)v18 setZPosition:1.0];
      [(CALayer *)v18 setFillColor:0];
      [(CALayer *)v18 setStrokeColor:[(TSWPRep *)self p_caretLayerColor]];
      goto LABEL_25;
    }

    if (isKindOfClass)
    {
      [(CALayer *)self->_dragAndDropCaretLayer setDelegate:0];

      self->_dragAndDropCaretLayer = 0;
    }

    else if (dragAndDropCaretLayer)
    {
LABEL_28:
      [(TSWPRep *)self p_positionCaretLayer:dragAndDropCaretLayer forSelection:dropSelection layerRelative:0];
      goto LABEL_29;
    }

    v22 = [(TSWPRep *)self p_newCaretLayerWithZPosition:1.0];
    self->_dragAndDropCaretLayer = v22;
    [(CALayer *)v22 setHidden:1];
    dragAndDropCaretLayer = self->_dragAndDropCaretLayer;
    goto LABEL_28;
  }

  return v3;
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  if (![(TSWPRep *)self textLayer])
  {
    [(TSWPRep *)self range];
    if (v5 || [(TSWPRep *)self p_hasEmptyList])
    {
      [(TSWPRep *)self p_createLayer:1];
    }
  }

  if ([(TSWPRep *)self textLayer])
  {
    [array insertObject:-[TSWPRep textLayer](self atIndex:{"textLayer"), 0}];
  }

  if ((TSUSupportsTextInteraction() & 1) == 0)
  {
    caretLayer = self->_caretLayer;
    v7 = caretLayer == 0;
    if (!caretLayer)
    {
      self->_caretLayer = [(TSWPRep *)self p_newCaretLayerWithZPosition:-1.0];
    }

    if (!self->_selectionHighlightLayer)
    {
      [(TSWPRep *)self p_createSelectionHighlightLayer];
      v7 = 1;
    }

    if (!self->_selectionParagraphBorderLayer)
    {
      [(TSWPRep *)self p_createSelectionParagraphBorderLayer];
    }

    if (!self->_markHighlightLayer)
    {
      [(TSWPRep *)self p_createMarkHighlightLayer];
    }

    if (self->_smartFieldHighlightLayer)
    {
      if (!v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      [(TSWPRep *)self p_createSmartFieldHighlightLayer];
      if (!v7)
      {
LABEL_19:
        [array addObject:self->_caretLayer];
        [array addObject:self->_selectionHighlightLayer];
        [array addObject:self->_selectionParagraphBorderLayer];
        [array addObject:self->_markHighlightLayer];
        [array addObject:self->_smartFieldHighlightLayer];
        if (self->_secondaryHighlightLayer)
        {

          [array addObject:?];
        }

        return;
      }
    }

    [(TSWPRep *)self p_updateForCurrentSelectionWithFlags:0];
    goto LABEL_19;
  }
}

- (void)invalidateHUDState
{
  if (![(TSWPRep *)self isEditing])
  {
    return;
  }

  self->_hudStateDirty = 1;
  if (self->_suppressCaret)
  {
    return;
  }

  if ([(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] textGesturesInFlight])
  {
    return;
  }

  if ([(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] currentlyScrolling])
  {
    return;
  }

  if (![(TSDLayout *)[(TSDRep *)self layout] layoutIsValid])
  {
    return;
  }

  columns = [(TSDLayout *)[(TSDRep *)self layout] columns];
  firstObject = [columns firstObject];
  lastObject = [columns lastObject];
  if (!firstObject)
  {
    return;
  }

  v6 = lastObject;
  if (!lastObject)
  {
    return;
  }

  range = [firstObject range];
  v9 = v8;
  v20.location = [v6 range];
  v20.length = v10;
  v18.location = range;
  v18.length = v9;
  v11 = NSUnionRange(v18, v20);
  range2 = [(TSWPSelection *)[(TSWPRep *)self selection] range];
  v14 = v13;
  if (![(TSWPSelection *)[(TSWPRep *)self selection] isInsertionPoint])
  {
    v19.location = range2;
    v19.length = v14;
    if (!NSIntersectionRange(v19, v11).length)
    {
      return;
    }

    goto LABEL_16;
  }

  v15 = range2 - v11.location < v11.length && range2 >= v11.location;
  if (v15 || v11.location + v11.length == range2)
  {
LABEL_16:
    layout = [(TSDRep *)self layout];

    [(TSDLayout *)layout invalidate];
  }
}

- (void)updateFromLayout
{
  v11.receiver = self;
  v11.super_class = TSWPRep;
  [(TSDRep *)&v11 updateFromLayout];
  [(TSWPRep *)self p_invalidateCommentKnobs];
  if (![(TSWPRep *)self p_needsSpellChecker])
  {
    [(TSWPRep *)self p_destroySpellChecker];
  }

  [(TSDLayout *)[(TSDRep *)self layout] layoutIsValid];
  if (self->_selectionChanged)
  {
    [(TSWPRep *)self p_updateForCurrentSelectionWithFlags:self->_newSelectionFlags];
    [(TSWPRep *)self i_setNeedsDisplayForSelectionChange];
    self->_selectionChanged = 0;
  }

  if (self->_invalidateHUDState)
  {
    self->_invalidateHUDState = 0;
    [(TSWPRep *)self invalidateHUDState];
  }

  if (self->_hudStateDirty)
  {
    self->_hudStateDirty = 0;
    if ((TSUSupportsTextInteraction() & 1) == 0 && [(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive]&& [(TSWPRep *)self isEditing])
    {
      [(TSWPEditingController *)[(TSWPRep *)self textEditor] performSelector:sel_updateHUDState withObject:0 afterDelay:0.0];
    }
  }

  if (self->_markChanged)
  {
    [(TSWPRep *)self p_updateMarkHighlightLayer];
  }

  highlightArrayController = self->_highlightArrayController;
  if (highlightArrayController)
  {
    [(TSKHighlightArrayController *)highlightArrayController viewScale];
    v5 = v4;
    [(TSDCanvas *)self->super.super.mCanvas viewScale];
    if (v5 != v6)
    {
      [(TSWPRep *)self p_updateHighlights];
    }
  }

  [(TSKHighlightArrayController *)self->_pulseArrayController viewScale];
  v8 = v7;
  [(TSDCanvas *)self->super.super.mCanvas viewScale];
  if (v8 != v9)
  {
    [(TSWPRep *)self p_updateAnimationWithAnimatingPulse:0];
  }

  if (self->_secondaryHighlightChanged)
  {
    [(TSWPRep *)self p_updateSecondaryHighlightLayer];
    self->_secondaryHighlightChanged = 0;
  }

  [(TSWPRep *)self range];
  if (!v10 && ![(TSWPRep *)self p_hasEmptyList])
  {
    [(TSWPRep *)self p_destroyLayer:1];
    [(TSWPRep *)self p_destroyLayer:0];
  }
}

- (CGRect)p_clipRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  columns = [(TSWPRep *)self columns];
  v9 = [(NSArray *)columns countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(columns);
        }

        [*(*(&v21 + 1) + 8 * v12) erasableBounds:0];
        v30.origin.x = v13;
        v30.origin.y = v14;
        v30.size.width = v15;
        v30.size.height = v16;
        v27.origin.x = x;
        v27.origin.y = y;
        v27.size.width = width;
        v27.size.height = height;
        v28 = CGRectUnion(v27, v30);
        x = v28.origin.x;
        y = v28.origin.y;
        width = v28.size.width;
        height = v28.size.height;
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)columns countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  [(TSWPRep *)self newTextLayerUnscaledBounds:x forNewTextBounds:y, width, height, x, y, width, height];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)clipRect
{
  v7.receiver = self;
  v7.super_class = TSWPRep;
  [(TSDRep *)&v7 clipRect];
  [(TSWPRep *)self p_clipRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)didUpdateLayer:(id)layer
{
  v41.receiver = self;
  v41.super_class = TSWPRep;
  [(TSDRep *)&v41 didUpdateLayer:?];
  [(TSDRep *)self layout];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_8;
  }

  [(TSDLayout *)[(TSDRep *)self layout] maskRect];
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  if (CGRectIsNull(v42))
  {
    layer = 0;
  }

  else
  {
    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] convertUnscaledToBoundsRect:x, y, width, height];
    v44 = CGRectIntegral(v43);
    v10 = v44.origin.x;
    v11 = v44.origin.y;
    v12 = v44.size.width;
    v13 = v44.size.height;
    mask = [layer mask];
    if (mask)
    {
      [mask frame];
      v50.origin.x = v15;
      v50.origin.y = v16;
      v50.size.width = v17;
      v50.size.height = v18;
      v45.origin.x = v10;
      v45.origin.y = v11;
      v45.size.width = v12;
      v45.size.height = v13;
      if (CGRectEqualToRect(v45, v50))
      {
        goto LABEL_8;
      }
    }

    layer = [MEMORY[0x277CD9ED0] layer];
    [layer setFrame:{v10, v11, v12, v13}];
    [layer setBackgroundColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D6C2A8], "redColor"), "CGColor")}];
  }

  [layer setMask:layer];
LABEL_8:
  p_hasVisibleContents = [(TSWPRep *)self p_hasVisibleContents];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __26__TSWPRep_didUpdateLayer___block_invoke;
  v39[3] = &__block_descriptor_33_e17_v16__0__CALayer_8l;
  v40 = p_hasVisibleContents;
  [(TSWPRep *)self performBlockOnTextLayers:v39];
  [(TSWPRep *)self p_clipRect:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  layout = [(TSDRep *)self layout];
  if (layout)
  {
    [(TSDAbstractLayout *)layout transformInRoot];
  }

  else
  {
    memset(&v38, 0, sizeof(v38));
  }

  v46.origin.x = v21;
  v46.origin.y = v23;
  v46.size.width = v25;
  v46.size.height = v27;
  v47 = CGRectApplyAffineTransform(v46, &v38);
  v29 = v47.size.width;
  v30 = v47.size.height;
  v31 = [(TSDRep *)self layout:v47.origin.x];
  if (v31)
  {
    [(TSDAbstractLayout *)v31 transformInRoot];
  }

  else
  {
    memset(&v38, 0, sizeof(v38));
  }

  v32 = TSDTransformScale(&v38.a);
  v33 = TSDMultiplyPointScalar(v21, v23, v32);
  [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] convertUnscaledToBoundsRect:v33, v34, v29, v30];
  v49 = CGRectIntegral(v48);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __26__TSWPRep_didUpdateLayer___block_invoke_2;
  v35[3] = &unk_279D4A198;
  v36 = v49;
  v37 = p_hasVisibleContents;
  v35[4] = layer;
  v35[5] = self;
  [(TSWPRep *)self performBlockOnTextLayers:v35];
  if ([layer edgeAntialiasingMask])
  {
    [layer setEdgeAntialiasingMask:0];
  }

  [(TSWPRep *)self p_updateForCurrentSelectionWithFlags:0];
}

uint64_t __26__TSWPRep_didUpdateLayer___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 tilingSafeHasContents];
  v5 = *(a1 + 32);
  if (v5 != 1 || (result & 1) != 0)
  {
    if ((v5 & 1) == 0 && ((result ^ 1) & 1) == 0)
    {

      return [a2 setContents:0];
    }
  }

  else
  {

    return [a2 setNeedsDisplay];
  }

  return result;
}

uint64_t __26__TSWPRep_didUpdateLayer___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 bounds];
  if (!CGRectEqualToRect(v10, *(a1 + 48)))
  {
    [a2 setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    [*(a1 + 32) bounds];
    [a2 setPosition:{*(a1 + 48) - v4, *(a1 + 56) - v5}];
    if (*(a1 + 80) == 1)
    {
      [a2 setNeedsDisplay];
    }
  }

  result = [a2 geometryProvider];
  if (result)
  {
    v7 = result;
    [objc_msgSend(*(a1 + 40) "canvas")];
    result = [v7 updateWithLayer:a2 scale:objc_msgSend(objc_msgSend(*(a1 + 40) columns:{"layout"), "columns"), v8}];
    if (result)
    {

      return [a2 setNeedsLayout];
    }
  }

  return result;
}

- (void)screenScaleDidChange
{
  v9.receiver = self;
  v9.super_class = TSWPRep;
  [(TSDRep *)&v9 screenScaleDidChange];
  [(TSDCanvas *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] canvas] contentsScale];
  v4 = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__TSWPRep_screenScaleDidChange__block_invoke;
  v8[3] = &__block_descriptor_40_e17_v16__0__CALayer_8l;
  *&v8[4] = v3;
  [(TSWPRep *)self performBlockOnTextLayers:v8];
  caretLayer = self->_caretLayer;
  if (caretLayer)
  {
    [(CALayer *)caretLayer setContentsScale:v4];
  }

  indentAnimationLayer = self->_indentAnimationLayer;
  if (indentAnimationLayer)
  {
    [(CALayer *)indentAnimationLayer setContentsScale:v4];
  }

  selectionParagraphBorderLayer = self->_selectionParagraphBorderLayer;
  if (selectionParagraphBorderLayer)
  {
    [(CAShapeLayer *)selectionParagraphBorderLayer setContentsScale:v4];
  }
}

- (CGRect)newTextLayerUnscaledBounds:(CGRect)bounds forNewTextBounds:(CGRect)textBounds
{
  height = textBounds.size.height;
  width = textBounds.size.width;
  y = textBounds.origin.y;
  x = textBounds.origin.x;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (Class)wpEditorClass
{
  v3 = objc_opt_class();
  delegate = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v3;
  }

  return [(TSDInteractiveCanvasControllerDelegate *)delegate wpEditorClassOverride];
}

- (id)beginEditing
{
  v3 = [objc_alloc(-[TSWPRep wpEditorClass](self "wpEditorClass"))];
  objc_opt_class();
  [(TSDRep *)self parentRep];
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    if (([objc_msgSend(objc_msgSend(v4 "shapeLayout")] & 1) == 0)
    {
      shadow = [v5 shadow];
      if (shadow)
      {
        v7 = [shadow showForEditingText] ^ 1;
      }

      else
      {
        v7 = 0;
      }

      [v5 setShadowOnChildrenDisabled:v7];
    }
  }

  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8)
  {
    [v8 setShouldDisplayKeyboard:{-[TSWPRep useKeyboardWhenEditing](self, "useKeyboardWhenEditing")}];
  }

  return v3;
}

- (BOOL)canEditWithEditor:(id)editor
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    storage = [v4 storage];
    if (storage == [(TSWPRep *)self storage])
    {
      LODWORD(v4) = [(TSDLayout *)[(TSDRep *)self layout] isInTopLevelContainerForEditing];
      if (v4)
      {
        LOBYTE(v4) = ![[(TSDRep *)self parentRep] isLocked];
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)p_canRepBeginEditingOnDoubleTap
{
  [(TSDRep *)self parentRep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  parentRep = [(TSDRep *)self parentRep];

  return [(TSDContainerRep *)parentRep canBeginEditingChildRepOnDoubleTap:self];
}

- (id)smartFieldAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(TSDLayout *)[(TSDRep *)self layout] layoutIsValid])
  {
    return 0;
  }

  columns = [(TSDLayout *)[(TSDRep *)self layout] columns];

  return [TSWPColumn smartFieldWithAttributeKind:6 inColumnArray:columns atPoint:x, y];
}

- (id)rubyFieldAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(TSDLayout *)[(TSDRep *)self layout] layoutIsValid])
  {
    return 0;
  }

  columns = [(TSDLayout *)[(TSDRep *)self layout] columns];

  return [TSWPColumn smartFieldWithAttributeKind:7 inColumnArray:columns atPoint:x, y];
}

- (id)footnoteMarkAttachmentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(TSDLayout *)[(TSDRep *)self layout] layoutIsValid])
  {
    return 0;
  }

  columns = [(TSDLayout *)[(TSDRep *)self layout] columns];

  return [TSWPColumn footnoteMarkAttachmentInColumnArray:columns atPoint:x, y];
}

- (id)footnoteReferenceAttachmentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(TSDLayout *)[(TSDRep *)self layout] layoutIsValid])
  {
    return 0;
  }

  columns = [(TSDLayout *)[(TSDRep *)self layout] columns];

  return [TSWPColumn footnoteReferenceAttachmentInColumnArray:columns atPoint:x, y];
}

- (void)p_updateSecondaryHighlightLayer
{
  if (self->_secondaryHighlightLayer)
  {
    if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep p_updateSecondaryHighlightLayer]"];
      [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"), 2333, @"This operation must only be performed on the main thread."}];
    }

    v5 = [TSWPColumn pathForHighlightWithRange:self->_secondaryHighlightRange.location columnArray:self->_secondaryHighlightRange.length pathStyle:[(TSWPRep *)self columns], self->_secondaryHighlightPathStyle];
    [(TSDRep *)self transformToConvertNaturalToLayerRelative];
    [v5 transformUsingAffineTransform:&v6];
    -[CAShapeLayer setPath:](self->_secondaryHighlightLayer, "setPath:", [v5 CGPath]);
  }
}

- (void)setSecondaryHighlightRange:(_NSRange)range color:(CGColor *)color pathStyle:(int)style
{
  length = range.length;
  location = range.location;
  p_secondaryHighlightRange = &self->_secondaryHighlightRange;
  v11 = range.location == self->_secondaryHighlightRange.location && range.length == self->_secondaryHighlightRange.length;
  if (!v11 || !self->_secondaryHighlightChanged)
  {
    if (range.length)
    {
      secondaryHighlightLayer = self->_secondaryHighlightLayer;
      if (!secondaryHighlightLayer)
      {
        v13 = objc_alloc_init(MEMORY[0x277CD9F90]);
        self->_secondaryHighlightLayer = v13;
        [(CAShapeLayer *)v13 setEdgeAntialiasingMask:0];
        [(CAShapeLayer *)self->_secondaryHighlightLayer setDelegate:self];
        secondaryHighlightLayer = self->_secondaryHighlightLayer;
      }

      [(CAShapeLayer *)secondaryHighlightLayer setFillColor:color];
      p_secondaryHighlightRange->location = location;
      p_secondaryHighlightRange->length = length;
      self->_secondaryHighlightPathStyle = style;
    }

    else
    {
      p_secondaryHighlightRange->location = 0;
      self->_secondaryHighlightRange.length = 0;
      [(CAShapeLayer *)self->_secondaryHighlightLayer setDelegate:0];
      [(CAShapeLayer *)self->_secondaryHighlightLayer removeFromSuperlayer];

      self->_secondaryHighlightLayer = 0;
    }

    self->_secondaryHighlightChanged = 1;
    layout = [(TSDRep *)self layout];

    [(TSDLayout *)layout invalidate];
  }
}

- (void)setHighlightedHyperlinkField:(id)field
{
  if (field)
  {
    range = [field range];
    v6 = v5;
  }

  else
  {
    range = 0;
    v6 = 0;
  }

  v7 = [objc_msgSend(MEMORY[0x277D6C2A8] colorWithWhite:0.0 alpha:{0.300000012), "CGColor"}];

  [(TSWPRep *)self setSecondaryHighlightRange:range color:v6 pathStyle:v7, 2];
}

- (id)closestColumnForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  columns = [(TSDLayout *)[(TSDRep *)self layout] columns];

  return [TSWPColumn closestColumnInColumnsArray:columns forPoint:1 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:x, y];
}

- (id)columnForCharIndex:(unint64_t)index
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [(TSWPStorage *)[(TSWPRep *)self storage] selectionRangeForCharIndex:index];
  v7 = v6;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  columns = [(TSDLayout *)[(TSDRep *)self layout] columns];
  v9 = [columns countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *v21;
  v12 = v5 + v7;
LABEL_3:
  v13 = 0;
  while (1)
  {
    if (*v21 != v11)
    {
      objc_enumerationMutation(columns);
    }

    v14 = *(*(&v20 + 1) + 8 * v13);
    range = [v14 range];
    if (index >= range && index - range < v16)
    {
      return v14;
    }

    if (range + v16 == index && v12 == index)
    {
      return v14;
    }

    if (v10 == ++v13)
    {
      v10 = [columns countByEnumeratingWithState:&v20 objects:v24 count:16];
      v14 = 0;
      if (v10)
      {
        goto LABEL_3;
      }

      return v14;
    }
  }
}

- (id)p_smartFieldWithTouch:(id)touch
{
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
  [touch locationInView:{objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](interactiveCanvasController, "layerHost"), "asiOSCVC"), "view")}];
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:?];
  [(TSDRep *)self convertNaturalPointFromUnscaledCanvas:?];

  return [(TSWPRep *)self smartFieldAtPoint:?];
}

- (id)p_hyperlinkWithTouch:(id)touch
{
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
  [touch locationInView:{objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](interactiveCanvasController, "layerHost"), "asiOSCVC"), "view")}];
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:?];
  [(TSDRep *)self convertNaturalPointFromUnscaledCanvas:?];

  return [(TSWPRep *)self p_hyperlinkAtPoint:?];
}

- (BOOL)isEditing
{
  if (![(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    return 0;
  }

  objc_opt_class();
  [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] editorController] textInputEditor];
  v3 = TSUDynamicCast();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  storage = [v3 storage];
  if (storage != [(TSWPRep *)self storage])
  {
    return 0;
  }

  selection = [v4 selection];

  return [selection isValid];
}

- (TSWPEditingController)textEditor
{
  if (![(TSWPRep *)self isEditing])
  {
    return 0;
  }

  objc_opt_class();
  [(TSDEditorController *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] editorController] textInputEditor];

  return TSUDynamicCast();
}

- (void)didEndZooming
{
  [(TSWPRep *)self p_updateSecondaryHighlightLayer];
  self->_suppressCaret = 0;
  [(TSWPRep *)self p_updateForCurrentSelectionWithFlags:0];

  [(TSWPRep *)self invalidateHUDState];
}

- (void)disableCaretAnimation
{
  if (!self->_caretAnimationDisabled)
  {
    self->_caretAnimationDisabled = 1;
    if (![(CALayer *)self->_caretLayer isHidden])
    {

      [(TSWPRep *)self p_stopCaretLayerAnimation];
    }
  }
}

- (void)viewScaleDidChange
{
  v3.receiver = self;
  v3.super_class = TSWPRep;
  [(TSDRep *)&v3 viewScaleDidChange];
  [(TSWPRep *)self invalidateHUDState];
}

- (void)canvasDidBeginFreeTransform
{
  textEditor = [(TSWPRep *)self textEditor];
  if (textEditor)
  {

    [(TSWPEditingController *)textEditor cancelKnobTrackingAndMagnifying];
  }
}

- (void)enableCaretAnimation
{
  if (self->_caretAnimationDisabled)
  {
    self->_caretAnimationDisabled = 0;
    if (![(CALayer *)self->_caretLayer isHidden])
    {

      [(TSWPRep *)self p_startCaretLayerAnimation];
    }
  }
}

- (void)willEnterForeground
{
  if (![(CALayer *)self->_caretLayer isHidden])
  {

    [(TSWPRep *)self p_startCaretLayerAnimation];
  }
}

- (void)didEnterBackground
{
  if (![(CALayer *)self->_caretLayer isHidden])
  {

    [(TSWPRep *)self p_stopCaretLayerAnimation];
  }
}

- (void)pulseCaret
{
  caretPulseController = self->_caretPulseController;
  if (caretPulseController)
  {

    self->_caretPulseController = 0;
  }

  Mutable = CGPathCreateMutable();
  [(TSWPRep *)self caretRect];
  y = v19.origin.y;
  height = v19.size.height;
  v19.size.width = 2.0;
  v19.origin.x = v8 + -1.0;
  x = v19.origin.x;
  CGPathAddRect(Mutable, 0, v19);
  height = [(TSWPRep *)self p_imageForRect:0 usingGlyphRect:1 drawBackground:1 shouldPulsate:1 forCaret:0 drawSelection:0 suppressInvisibles:x, y, 2.0, height];
  v10 = [[TSKPulseAnimationController alloc] initWithDelegate:self];
  self->_caretPulseController = v10;
  [(TSKPulseAnimationController *)v10 setAutohide:1];
  layout = [(TSDRep *)self layout];
  if (layout)
  {
    [(TSDAbstractLayout *)layout transformInRoot];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
  }

  v12 = self->_caretPulseController;
  v15[0] = v16;
  v15[1] = v17;
  v15[2] = v18;
  [(TSKHighlightController *)v12 setTransform:v15];
  [(TSDCanvas *)self->super.super.mCanvas viewScale];
  [(TSKHighlightController *)self->_caretPulseController setViewScale:?];
  [(TSKPulseAnimationController *)self->_caretPulseController setDuration:0.05];
  [(TSKPulseAnimationController *)self->_caretPulseController setPulseOffset:4.0];
  v13 = self->_caretPulseController;
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  [(TSKHighlightController *)v13 createLayerWithZOrder:8.0 contentsScaleForLayers:v14];
  [(TSKHighlightController *)self->_caretPulseController buildLayersForPath:Mutable withImage:height];
  [(TSKPulseAnimationController *)self->_caretPulseController startAnimating];
  CGPathRelease(Mutable);
  [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layoutInvalidated];
}

- (id)repForDragging
{
  if ([(TSWPRep *)self isEditing])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSWPRep;
  return [(TSDRep *)&v4 repForDragging];
}

- (id)hyperlinkContainerRep
{
  [(TSDRep *)self parentRep];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = TSWPRep;
  return [(TSDRep *)&v4 repForSelecting];
}

- (void)willDisplayEditHyperlinkUIForHyperlinkField:(id)field beginEditing:(BOOL)editing
{
  [(TSWPRep *)self setUseKeyboardWhenEditing:0, editing];
  if ([(TSWPRep *)self hyperlinkContainerRep])
  {
    [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] canvasEditor] setSelectionToRep:[(TSWPRep *)self hyperlinkContainerRep]];
  }

  objc_opt_class();
  [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] beginEditingRep:self];
  v6 = TSUDynamicCast();
  range = [field range];
  [v6 setSelection:{+[TSWPSelection selectionWithRange:](TSWPSelection, "selectionWithRange:", range + v8, 0)}];

  [(TSWPRep *)self setUseKeyboardWhenEditing:1];
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSDRep *)self convertNaturalPointFromUnscaledCanvas:?];
  v7 = v6;
  v9 = v8;
  objc_opt_class();
  [(TSWPRep *)self smartFieldAtPoint:v7, v9];
  v10 = TSUDynamicCast();
  objc_opt_class();
  [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layerHost];
  if ([objc_msgSend(TSUDynamicCast() "hyperlinkGestureRecognizer")])
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if ([(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] shouldRespondToTextHyperlinks])
    {
      v19.receiver = self;
      v19.super_class = TSWPRep;
      v12 = [(TSDRep *)&v19 handleSingleTapAtPoint:x, y];
      textEditor = [(TSWPRep *)self textEditor];
      v16 = !textEditor || (v14 = textEditor, objc_opt_class(), -[TSWPEditingController selection](v14, "selection"), (v15 = TSUDynamicCast()) == 0) || [v15 infoCount] == 1;
      v17 = v16 | v12;
      if (!v10)
      {
        v17 = v12;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 1;
  }

  return v17 & 1;
}

- (id)hyperlinkRegions
{
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = TSWPRep;
  hyperlinkRegions = [(TSDRep *)&v22 hyperlinkRegions];
  array = [MEMORY[0x277CBEB18] array];
  v5 = array;
  if (hyperlinkRegions)
  {
    [array addObjectsFromArray:hyperlinkRegions];
  }

  v6 = [(TSWPStorage *)[(TSWPRep *)self storage] smartFieldsWithAttributeKind:6 intersectingRange:0, [(TSWPStorage *)[(TSWPRep *)self storage] length]];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        objc_opt_class();
        v11 = TSUDynamicCast();
        if (v11)
        {
          v12 = v11;
          [(TSWPRep *)self naturalBoundsRectForHyperlinkField:v11];
          [v5 addObject:{+[TSDHyperlinkRegion hyperlinkRegionWithURL:bezierPath:](TSDHyperlinkRegion, "hyperlinkRegionWithURL:bezierPath:", objc_msgSend(v12, "url"), +[TSDBezierPath bezierPathWithRect:](TSDBezierPath, "bezierPathWithRect:", v13, v14, v15, v16))}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (TSWPStorage)storage
{
  [(TSDRep *)self info];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep storage]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"), 2744, @"TSWPRep assumes its info is a storage.  Override -storage if it's not."}];
  }

  return [(TSDRep *)self info];
}

- (NSArray)columns
{
  layout = [(TSDRep *)self layout];

  return [(TSDLayout *)layout columns];
}

- (TSWPSelection)selection
{
  result = [(TSWPRep *)self textEditor];
  if (result)
  {

    return [(TSWPSelection *)result selection];
  }

  return result;
}

- (void)invalidateKnobs
{
  if (!self->_indentAnimationRunning)
  {
    v2.receiver = self;
    v2.super_class = TSWPRep;
    [(TSDRep *)&v2 invalidateKnobs];
  }
}

- (void)addKnobsToArray:(id)array
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(TSDLayout *)[(TSDRep *)self layout] layoutIsValid])
  {
    if ([(TSWPRep *)self shouldCreateTextKnobs])
    {
      textEditor = [(TSWPRep *)self textEditor];
      isInParagraphMode = [(TSWPEditingController *)textEditor isInParagraphMode];
      v22 = textEditor;
      knobTracking = [(TSWPEditingController *)textEditor knobTracking];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      columns = [(TSWPRep *)self columns];
      v9 = [(NSArray *)columns countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v24;
        v12 = textEditor != 0 && isInParagraphMode && knobTracking;
        v13 = MEMORY[0x277CBF348];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(columns);
            }

            v15 = *(*(&v23 + 1) + 8 * i);
            if ([v15 lineFragmentForCharIndex:-[TSWPSelection start](-[TSWPRep selection](self knobTag:"selection") selectionType:{"start"), 11, -[TSWPSelection type](-[TSWPRep selection](self, "selection"), "type")}] && (!v12 || -[TSWPEditingController knobTag](v22, "knobTag") == 11))
            {
              v16 = [(TSDKnob *)[TSWPTextKnob alloc] initWithType:3 position:11 radius:self tag:*v13 onRep:v13[1], 15.0];
              [array addObject:v16];
            }

            range = [v15 range];
            if (range < [(TSWPSelection *)[(TSWPRep *)self selection] end])
            {
              v18 = [(TSWPSelection *)[(TSWPRep *)self selection] end];
              range2 = [v15 range];
              if (v18 <= range2 + v20 && (!v12 || [(TSWPEditingController *)v22 knobTag]== 10))
              {
                v21 = [(TSDKnob *)[TSWPTextKnob alloc] initWithType:3 position:10 radius:self tag:*v13 onRep:v13[1], 15.0];
                [array addObject:v21];
              }
            }
          }

          v10 = [(NSArray *)columns countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)updatePositionsOfKnobs:(id)knobs
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [knobs countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(knobs);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 tag] != 32)
        {
          [(TSWPRep *)self knobCenterForSelection:[(TSWPRep *)self selection] knob:v9];
          [v9 setPosition:?];
        }
      }

      v6 = [knobs countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)p_indentAfterAnimationWithOptions:(id)options
{
  v15 = *MEMORY[0x277D85DE8];
  [(TSWPRep *)self setDragRange:*MEMORY[0x277D6C268], *(MEMORY[0x277D6C268] + 8)];
  [(CALayer *)self->_indentAnimationLayer removeFromSuperlayer];

  self->_indentAnimationLayer = 0;
  [(CAShapeLayer *)self->_selectionHighlightLayer removeAnimationForKey:@"position"];
  [(CAShapeLayer *)self->_selectionLineLayers[0] removeAnimationForKey:@"position"];
  [(CAShapeLayer *)self->_selectionLineLayers[1] removeAnimationForKey:@"position"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  knobs = [(TSDRep *)self knobs];
  v5 = [(NSArray *)knobs countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(knobs);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * i) "layer")];
      }

      v6 = [(NSArray *)knobs countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  if (self->_indentDelta)
  {
    if (self->_indentSelector)
    {
      indentSelector = self->_indentSelector;
    }

    else
    {
      indentSelector = 0;
    }

    [self->_indentTarget performSelector:indentSelector withObject:?];
  }

  [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] removeDecorator:self];

  self->_indentTarget = 0;
  self->_indentDelta = 0;
  self->_indentAnimationRunning = 0;
}

- (void)animateIndent:(int64_t)indent target:(id)target action:(SEL)action
{
  v71 = *MEMORY[0x277D85DE8];
  self->_indentAnimationRunning = 1;
  selection = [(TSWPRep *)self selection];
  v8 = self->_indentDelta + indent;
  start = [(TSWPSelection *)selection start];
  storage = [(TSWPRep *)self storage];
  v11 = [(TSWPStorage *)storage paragraphLevelAtCharIndex:start];
  v12 = [-[TSWPStorage listStyleAtCharIndex:effectiveRange:](storage listStyleAtCharIndex:start effectiveRange:{0), "valueForProperty:", 177}];
  v13 = v12;
  v14 = v11 + v8;
  if (v11 + v8 >= 8)
  {
    v14 = 8;
  }

  [objc_msgSend(v12 objectAtIndexedSubscript:{v14 & ~(v14 >> 63)), "doubleValue"}];
  v16 = v15;
  [objc_msgSend(v13 objectAtIndexedSubscript:{v11), "doubleValue"}];
  [(TSDCanvas *)[(TSDRep *)self canvas] convertUnscaledToBoundsSize:v16 - v17, v16 - v17];
  v19 = v18;
  v20 = selection;
  if ([(TSWPSelection *)selection type]!= 2)
  {
    v21 = [(TSWPStorage *)storage textRangeForParagraphAtCharIndex:[(TSWPSelection *)selection start]];
    v23 = v22;
    v25 = [(TSWPStorage *)storage textRangeForParagraphAtCharIndex:[(TSWPSelection *)selection end]];
    v26 = v24;
    if (v21 == v25 && v23 == v24)
    {
      v25 = v21;
      v27.length = v23;
    }

    else if ([(TSWPSelection *)selection end]== v25)
    {
      v27.length = 0;
    }

    else
    {
      v27.length = v26;
    }

    v72.location = v21;
    v72.length = v23;
    v27.location = v25;
    v20 = [[TSWPSelection alloc] initWithType:2 range:NSUnionRange(v72 styleInsertionBehavior:v27).location caretAffinity:v72.length, 0, 0];
    v28 = v20;
  }

  indentAnimationLayer = self->_indentAnimationLayer;
  if (indentAnimationLayer)
  {
    [[(CALayer *)indentAnimationLayer presentationLayer] frame];
    v31 = v30;
    range = [(TSWPSelection *)v20 range];
    [(TSWPRep *)self glyphRectForRange:range includingLabel:v33, 1];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
    [(TSDRep *)self convertNaturalRectToUnscaledCanvas:v35, v37, v39, v41];
    [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsRect:?];
    v19 = v19 + v43 - v31;
  }

  v44 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
  [(CABasicAnimation *)v44 setDuration:0.15];
  -[CABasicAnimation setTimingFunction:](v44, "setTimingFunction:", [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]]);
  [(CABasicAnimation *)v44 setRemovedOnCompletion:0];
  [(CABasicAnimation *)v44 setDelegate:self];
  [(CABasicAnimation *)v44 setFillMode:*MEMORY[0x277CDA238]];
  if ([(TSWPSelection *)selection isRange])
  {
    if (![(TSWPEditingController *)[(TSWPRep *)self textEditor] isParagraphModeWithSelection:selection onStorage:[(TSWPRep *)self storage]])
    {
      pSetupIndentAnimation(v44, &self->_selectionLineLayers[0]->super, v19);
      pSetupIndentAnimation(v44, &self->_selectionLineLayers[1]->super, v19);
      pSetupIndentAnimation(v44, &self->_selectionHighlightLayer->super, v19);
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      knobs = [(TSDRep *)self knobs];
      v46 = [(NSArray *)knobs countByEnumeratingWithState:&v66 objects:v70 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v67;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v67 != v48)
            {
              objc_enumerationMutation(knobs);
            }

            pSetupIndentAnimation(v44, [*(*(&v66 + 1) + 8 * i) layer], v19);
          }

          v47 = [(NSArray *)knobs countByEnumeratingWithState:&v66 objects:v70 count:16];
        }

        while (v47);
      }
    }
  }

  else
  {
    [(TSWPRep *)self p_hideCaretLayer];
  }

  if ([objc_msgSend(objc_msgSend(-[TSWPRep textLayer](self "textLayer")] || (-[TSWPSelection range](v20, "range"), v50))
  {
    v51 = *(MEMORY[0x277CBF3A0] + 16);
    v64 = *MEMORY[0x277CBF3A0];
    v65 = v51;
    v52 = [(TSWPRep *)self textImageForSelection:v20 frame:&v64 usingGlyphRect:1 shouldPulsate:0 suppressInvisibles:0];
    interactiveCanvasController2 = [(TSDRep *)self interactiveCanvasController];
    [(TSDRep *)self convertNaturalRectToUnscaledCanvas:v64, v65];
    [(TSDInteractiveCanvasController *)interactiveCanvasController2 convertUnscaledToBoundsRect:?];
    *&v64 = v73.origin.x;
    *(&v64 + 1) = *&v73.origin.y;
    *&v65 = v73.size.width;
    *(&v65 + 1) = *&v73.size.height;
    v74 = CGRectIntegral(v73);
    *&v64 = v74.origin.x;
    *(&v64 + 1) = *&v74.origin.y;
    *&v65 = v74.size.width;
    *(&v65 + 1) = *&v74.size.height;
    range2 = [(TSWPSelection *)v20 range];
    [(TSWPRep *)self setDragRange:range2, v55];
    v56 = self->_indentAnimationLayer;
    if (!v56)
    {
      v57 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      self->_indentAnimationLayer = v57;
      [(CALayer *)v57 setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      v58 = v64;
      [v52 size];
      v60 = v59;
      [v52 size];
      [(CALayer *)self->_indentAnimationLayer setFrame:v58, v60, v61];
      [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
      [(CALayer *)self->_indentAnimationLayer setContentsScale:?];
      -[CALayer setContents:](self->_indentAnimationLayer, "setContents:", [v52 CGImage]);
      [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] addDecorator:self];
      v56 = self->_indentAnimationLayer;
    }

    pSetupIndentAnimation(v44, v56, v19);
  }

  self->_indentDelta = v8;
  self->_indentSelector = action;
  if (self->_indentTarget != target)
  {
    self->_indentTarget = target;
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_p_indentAfterAnimationWithOptions_ object:0];
  [(TSWPRep *)self performSelector:sel_p_indentAfterAnimationWithOptions_ withObject:0 afterDelay:0.15];
}

- (id)decoratorOverlayLayers
{
  v3[1] = *MEMORY[0x277D85DE8];
  if (!self->_indentAnimationLayer)
  {
    return 0;
  }

  v3[0] = self->_indentAnimationLayer;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

- (CGRect)labelRectForCharIndex:(unint64_t)index
{
  [(TSWPRep *)self glyphRectForRange:index includingLabel:0, 1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)columnRectForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  columns = [(TSWPRep *)self columns];
  v10 = [(NSArray *)columns countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(columns);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v30.location = [v14 range];
        v31.location = location;
        v31.length = length;
        v15 = NSIntersectionRange(v30, v31);
        if (v15.length)
        {
          [v14 columnRectForRange:{v15.location, v15.length}];
          v35.origin.x = v16;
          v35.origin.y = v17;
          v35.size.width = v18;
          v35.size.height = v19;
          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          v33 = CGRectUnion(v32, v35);
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;
        }
      }

      v11 = [(NSArray *)columns countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)glyphRectForRange:(_NSRange)range includingLabel:(BOOL)label
{
  labelCopy = label;
  v30 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  columns = [(TSWPRep *)self columns];
  v10 = [(NSArray *)columns countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(columns);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        [v14 range];
        v15 = TSUIntersectionRangeWithEdge();
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v14 glyphRectForRange:v15 includingLabel:{v16, labelCopy}];
          v34.origin.x = v17;
          v34.origin.y = v18;
          v34.size.width = v19;
          v34.size.height = v20;
          v31.origin.x = x;
          v31.origin.y = y;
          v31.size.width = width;
          v31.size.height = height;
          v32 = CGRectUnion(v31, v34);
          x = v32.origin.x;
          y = v32.origin.y;
          width = v32.size.width;
          height = v32.size.height;
        }
      }

      v11 = [(NSArray *)columns countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (unint64_t)charCountOfGlyphStartingAtCharIndex:(unint64_t)index
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  columns = [(TSWPRep *)self columns];
  result = [(NSArray *)columns countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v19;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(columns);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        range = [v9 range];
        v12 = index < range || index - range >= v11;
        if (!v12)
        {
          lineFragmentArray = [v9 lineFragmentArray];
          for (i = **lineFragmentArray; i != (*lineFragmentArray)[1]; i += 2)
          {
            v15 = **i;
            v12 = index >= v15;
            v16 = index - v15;
            if (v12 && v16 < *(*i + 1))
            {
              return TSWPLineFragment::characterCountOfGlyphAtCharIndex(*i, index);
            }
          }

          return 0;
        }

        ++v8;
      }

      while (v6 != v8);
      result = [(NSArray *)columns countByEnumeratingWithState:&v18 objects:v22 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)index
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  columns = [(TSWPRep *)self columns];
  v5 = [(NSArray *)columns countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(columns);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        range = [v9 range];
        if (index >= range && index - range < v11)
        {
          return [v9 glyphCountForRubyFieldAtCharIndex:index];
        }
      }

      v6 = [(NSArray *)columns countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)index glyphRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v33 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v9 = *(MEMORY[0x277CBF398] + 16);
  v10 = *(MEMORY[0x277CBF398] + 24);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  columns = [(TSWPRep *)self columns];
  v12 = [(NSArray *)columns countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(columns);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        range = [v16 range];
        if (index >= range && index - range < v18)
        {
          [v16 glyphRectForRubyFieldAtCharIndex:index glyphRange:{location, length}];
          v7 = v20;
          v8 = v21;
          v9 = v22;
          v10 = v23;
          goto LABEL_13;
        }
      }

      v13 = [(NSArray *)columns countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

LABEL_13:
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = v10;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (_NSRange)rangeOfMisspelledWordAtCharIndex:(unint64_t)index
{
  v3 = MEMORY[0x277D6C268];
  v4 = *MEMORY[0x277D6C268];
  v5 = *(MEMORY[0x277D6C268] + 8);
  if (self->_spellChecker)
  {
    if ([(TSWPRep *)self p_spellCheckingEnabled])
    {
      v4 = [(TSWPStorageSpellChecker *)self->_spellChecker rangeOfMisspelledWordAtCharIndex:index];
      v5 = v8;
      NSIntersectionRangeInclusive();
      if (v9)
      {
        v4 = *v3;
        v5 = v3[1];
      }
    }
  }

  v10 = v4;
  v11 = v5;
  result.length = v11;
  result.location = v10;
  return result;
}

- (CGRect)p_convertNaturalRectToRotated:(CGRect)rotated repAngle:(double)angle
{
  height = rotated.size.height;
  width = rotated.size.width;
  y = rotated.origin.y;
  x = rotated.origin.x;
  textIsVertical = [(TSWPRep *)self textIsVertical];
  if (textIsVertical)
  {
    angle = fmod(angle + 270.0, 360.0);
  }

  if ((angle <= 45.0 || angle >= 135.0) && (angle <= 225.0 || angle >= 315.0))
  {
    v10 = width;
    v11 = height;
  }

  else
  {
    v10 = height;
    v11 = width;
  }

  v12 = hypot(v11, v10);
  if (textIsVertical)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (textIsVertical)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = x + width;
  if (angle <= 180.0)
  {
    v15 = x;
  }

  v16 = angle >= 270.0 || angle <= 90.0;
  v17 = y + height;
  if (v16)
  {
    v17 = y;
  }

  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v17;
  result.origin.x = v15;
  return result;
}

- (void)p_updateLayersForInsertionPointSelection:(id)selection
{
  if ((TSUSupportsTextInteraction() & 1) == 0)
  {
    [(TSWPRep *)self p_setSelectionLineLayersHidden:1];
  }

  [(TSWPRep *)self p_hideSelectionHighlightLayer];
  [(TSWPRep *)self p_hideSelectionParagraphBorderLayer];
  textEditor = [(TSWPRep *)self textEditor];
  if ([(TSWPEditingController *)textEditor wantsCaret])
  {
    isInFocusedContainer = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layerHost] isInFocusedContainer];
    range = [selection range];
    if (isInFocusedContainer)
    {
      v8 = range;
      if ([selection isInsertionPoint])
      {
        if ((v9 = [(TSWPRep *)self range], v8 >= v9) && v8 - v9 < v10 || (v11 = [(TSWPRep *)self range], v8 == v11 + v12))
        {
          if (v8 != -[TSWPRep range](self, "range") || ([selection isAtEndOfLine] & 1) == 0)
          {
            range2 = [(TSWPRep *)self range];
            if ((v8 != range2 + v14 || ([selection isAtEndOfLine] & 1) != 0 || v8 == -[TSWPStorage length](-[TSWPRep storage](self, "storage"), "length")) && -[TSWPRep p_positionCaretLayer:forSelection:layerRelative:](self, "p_positionCaretLayer:forSelection:layerRelative:", self->_caretLayer, -[TSWPEditingController calculateVisualRunsFromSelection:updateControllerSelection:](textEditor, "calculateVisualRunsFromSelection:updateControllerSelection:", selection, 1), 1) && -[TSWPRep p_canShowSelectionAndCaretLayers](self, "p_canShowSelectionAndCaretLayers"))
            {

              [(TSWPRep *)self p_showCaretLayer];
              return;
            }
          }
        }
      }
    }
  }

  else
  {
    [selection range];
  }

  [(TSWPRep *)self p_hideCaretLayer];
}

- (void)p_addRoundedRectToContext:(CGContext *)context rect:(CGRect)rect
{
  v12 = CGRectIntegral(rect);
  v13 = CGRectInset(v12, -1.0, -1.0);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  DeviceRGB = TSUCGColorCreateDeviceRGB();
  v10 = TSDCreateRoundRectPathForRectWithRadius(x, y, width, height, 4.0);
  CGContextBeginTransparencyLayer(context, 0);
  CGContextSaveGState(context);
  CGContextSetFillColorWithColor(context, DeviceRGB);
  CGContextAddPath(context, v10);
  CGContextFillPath(context);
  CGContextRestoreGState(context);
  CGContextEndTransparencyLayer(context);
  CGColorRelease(DeviceRGB);

  CGPathRelease(v10);
}

- (void)p_addRectToContext:(CGContext *)context rect:(CGRect)rect
{
  v13 = CGRectIntegral(rect);
  v14 = CGRectInset(v13, -1.0, -1.0);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  DeviceRGB = TSUCGColorCreateDeviceRGB();
  v10 = TSUCGColorCreateDeviceRGB();
  CGContextBeginTransparencyLayer(context, 0);
  CGContextSaveGState(context);
  v12.width = 0.0;
  v12.height = -1.0;
  CGContextSetShadowWithColor(context, v12, 2.0, DeviceRGB);
  CGContextSetFillColorWithColor(context, v10);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGContextFillRect(context, v15);
  CGContextRestoreGState(context);
  CGContextEndTransparencyLayer(context);
  CGColorRelease(DeviceRGB);

  CGColorRelease(v10);
}

- (void)p_addRoundedRectToContext:(CGContext *)context rect:(CGRect)rect forCaret:(BOOL)caret
{
  caretCopy = caret;
  v23 = CGRectIntegral(rect);
  v7 = -4.0;
  if (caretCopy)
  {
    v7 = -0.100000001;
    v8 = 0.0;
  }

  else
  {
    v8 = 3.0;
  }

  v24 = CGRectInset(v23, v7, v7);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  CGContextBeginTransparencyLayer(context, 0);
  DeviceRGB = TSUCGColorCreateDeviceRGB();
  v14 = TSUCGColorCreateDeviceRGB();
  v15 = TSUCGColorCreateDeviceRGB();
  v16 = TSDCreateRoundRectPathForRectWithRadius(x, y, width, height, v8);
  CGContextSaveGState(context);
  v20.width = 0.0;
  v20.height = -1.0;
  CGContextSetShadowWithColor(context, v20, 2.0, DeviceRGB);
  CGContextAddPath(context, v16);
  CGContextSetFillColorWithColor(context, v14);
  CGContextFillPath(context);
  CGContextRestoreGState(context);
  CGContextSaveGState(context);
  v17 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v14, v15, 0}];
  CGContextAddPath(context, v16);
  CGContextClip(context);
  v18 = CGGradientCreateWithColors(0, v17, 0);

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v22.y = CGRectGetMaxY(v25);
  v21.x = 0.0;
  v22.x = 0.0;
  v21.y = y;
  CGContextDrawLinearGradient(context, v18, v21, v22, 0);
  CGGradientRelease(v18);
  CGContextRestoreGState(context);
  CGColorRelease(DeviceRGB);
  CGColorRelease(v15);
  CGColorRelease(v14);
  CGPathRelease(v16);

  CGContextEndTransparencyLayer(context);
}

- (id)p_imageForRect:(CGRect)rect usingGlyphRect:(BOOL)glyphRect drawBackground:(BOOL)background shouldPulsate:(BOOL)pulsate forCaret:(BOOL)caret drawSelection:(id)selection suppressInvisibles:(BOOL)invisibles
{
  invisiblesCopy = invisibles;
  caretCopy = caret;
  pulsateCopy = pulsate;
  backgroundCopy = background;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v53 = *MEMORY[0x277D85DE8];
  memset(&v51, 0, sizeof(v51));
  if (self)
  {
    [(TSDRep *)self transformToConvertNaturalToLayerRelative];
  }

  v50 = v51;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v45 = height;
  v54.size.height = height;
  v55 = CGRectApplyAffineTransform(v54, &v50);
  v19 = 0.0;
  if (backgroundCopy)
  {
    if (caretCopy)
    {
      if (pulsateCopy)
      {
        v19 = 0.100000001;
      }

      else
      {
        v19 = 0.0;
      }
    }

    else
    {
      v20 = &kFindSelectionPulseInset;
      if (!pulsateCopy)
      {
        v20 = &kFindSelectionInset;
      }

      v19 = *v20 + 6.0;
    }
  }

  v56 = CGRectIntegral(v55);
  v57 = CGRectInset(v56, -v19, -v19);
  v21 = v57.origin.x;
  v22 = v57.origin.y;
  v23 = v57.size.width;
  v24 = v57.size.height;
  TSUScreenScale();
  v26 = v25;
  v27 = TSDMultiplySizeScalar(v23, v24, v25);
  v28 = TSDBitmapContextCreate(11, v27);
  if (!v28)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep p_imageForRect:usingGlyphRect:drawBackground:shouldPulsate:forCaret:drawSelection:suppressInvisibles:]"];
    [currentHandler handleFailureInFunction:v31 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"), 3437, @"invalid nil value for '%s'", "ctx"}];
    return 0;
  }

  v29 = v28;
  CGContextScaleCTM(v28, v26, v26);
  CGContextTranslateCTM(v29, -v21, -v22);
  [(TSDRep *)self setupForDrawingInLayer:0 context:v29];
  CGContextSetShouldAntialias(v29, 1);
  if (!backgroundCopy)
  {
    goto LABEL_18;
  }

  if (pulsateCopy)
  {
    [(TSWPRep *)self p_addRoundedRectToContext:v29 rect:caretCopy forCaret:x, y, width, v45];
    if (!selection)
    {
      goto LABEL_28;
    }

LABEL_18:
    CGContextSaveGState(v29);
    [(TSWPRep *)self drawInContext:v29 limitSelection:selection suppressInvisibles:invisiblesCopy];
    CGContextRestoreGState(v29);
    v33 = TSUProtocolCast();
    if (v33)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      childReps = [v33 childReps];
      v35 = [childReps countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v47;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v47 != v37)
            {
              objc_enumerationMutation(childReps);
            }

            v39 = *(*(&v46 + 1) + 8 * i);
            if ([objc_msgSend(v39 "info")])
            {
              CGContextSaveGState(v29);
              [v39 recursivelyDrawInContext:v29];
              CGContextRestoreGState(v29);
            }
          }

          v36 = [childReps countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v36);
      }
    }

    goto LABEL_28;
  }

  [(TSWPRep *)self p_addRoundedRectToContext:v29 rect:x, y, width, v45];
  if (selection)
  {
    goto LABEL_18;
  }

LABEL_28:
  [(TSWPRep *)self didDrawInLayer:0 context:v29];
  Image = CGBitmapContextCreateImage(v29);
  if (Image)
  {
    v41 = Image;
    v32 = [MEMORY[0x277D6C2F8] imageWithCGImage:Image scale:0 orientation:v26];
    CGImageRelease(v41);
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep p_imageForRect:usingGlyphRect:drawBackground:shouldPulsate:forCaret:drawSelection:suppressInvisibles:]"];
    [currentHandler2 handleFailureInFunction:v43 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"), 3488, @"invalid nil value for '%s'", "ctxImage"}];
    v32 = 0;
  }

  CGContextRelease(v29);
  return v32;
}

- (id)textImageForSelection:(id)selection
{
  [(TSWPRep *)self rectForSelection:?];

  return [(TSWPRep *)self p_imageForRect:0 usingGlyphRect:0 drawBackground:0 shouldPulsate:0 forCaret:selection drawSelection:1 suppressInvisibles:?];
}

- (id)textImageForSelection:(id)selection frame:(CGRect *)frame usingGlyphRect:(BOOL)rect drawBackground:(BOOL)background shouldPulsate:(BOOL)pulsate suppressInvisibles:(BOOL)invisibles
{
  invisiblesCopy = invisibles;
  pulsateCopy = pulsate;
  backgroundCopy = background;
  if (!rect)
  {
    goto LABEL_13;
  }

  if ([selection type] == 7 && objc_msgSend(selection, "visualRangeCount") >= 2)
  {
    visualRanges = [selection visualRanges];
    [(TSWPRep *)self glyphRectForRange:**visualRanges includingLabel:(*visualRanges)[1], 0];
    x = v15;
    y = v17;
    width = v19;
    height = v21;
    if ([selection visualRangeCount] >= 2)
    {
      v23 = 2;
      v24 = 1;
      do
      {
        visualRanges2 = [selection visualRanges];
        [(TSWPRep *)self glyphRectForRange:*(*visualRanges2 + 16 * v24) includingLabel:*(*visualRanges2 + 16 * v24 + 8), 0];
        v49.origin.x = v26;
        v49.origin.y = v27;
        v49.size.width = v28;
        v49.size.height = v29;
        v46.origin.x = x;
        v46.origin.y = y;
        v46.size.width = width;
        v46.size.height = height;
        v47 = CGRectUnion(v46, v49);
        x = v47.origin.x;
        y = v47.origin.y;
        width = v47.size.width;
        height = v47.size.height;
        v24 = v23;
      }

      while ([selection visualRangeCount] > v23++);
    }
  }

  else
  {
    superRange = [selection superRange];
    v33 = v32;
    v34 = [selection type] == 2 || (objc_msgSend(selection, "type") == 1);
    [(TSWPRep *)self glyphRectForRange:superRange includingLabel:v33, v34];
    x = v35;
    y = v36;
    width = v37;
    height = v38;
  }

  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  if (CGRectIsEmpty(v48))
  {
LABEL_13:
    [(TSWPRep *)self rectForSelection:selection];
    x = v39;
    y = v40;
    width = v41;
    height = v42;
    v43 = 0;
    if (!frame)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v43 = 1;
  if (frame)
  {
LABEL_14:
    frame->origin.x = x;
    frame->origin.y = y;
    frame->size.width = width;
    frame->size.height = height;
  }

LABEL_15:

  return [(TSWPRep *)self p_imageForRect:v43 usingGlyphRect:backgroundCopy drawBackground:pulsateCopy shouldPulsate:0 forCaret:selection drawSelection:invisiblesCopy suppressInvisibles:x, y, width, height];
}

- (BOOL)isOverflowing
{
  storage = [(TSWPRep *)self storage];
  if ([(TSWPStorage *)storage wpKind]== 3)
  {
    lastObject = [(TSWPStorage *)storage length];
    if (lastObject)
    {
      lastObject = [(NSArray *)[(TSWPRep *)self columns] lastObject];
      if (lastObject)
      {
        LODWORD(lastObject) = ([lastObject layoutResultFlags] >> 1) & 1;
      }
    }
  }

  else
  {
    LOBYTE(lastObject) = 0;
  }

  return lastObject;
}

- (void)editingDidEnd
{
  [(TSWPRep *)self p_hideSelectionLayers];
  [(TSWPRep *)self p_hideMarkHighlightLayer];
  if ([(TSWPRep *)self doesNeedDisplayOnEditingDidEnd])
  {
    [(TSWPRep *)self setNeedsDisplay];
  }

  objc_opt_class();
  [(TSDRep *)self parentRep];
  v3 = TSUDynamicCast();
  if (v3)
  {

    [v3 setShadowOnChildrenDisabled:0];
  }
}

- (void)p_updateAnimationWithAnimatingPulse:(BOOL)pulse
{
  pulseCopy = pulse;
  if ((TSUSupportsTextInteraction() & 1) == 0 && ![(TSKHighlightArrayController *)self->_pulseArrayController pulsating]&& [(TSWPRep *)self activeSearchReference]&& !self->_updatingHighlights)
  {
    self->_updatingHighlights = 1;
    v5 = [(TSWPRep *)self lineSearchReferencesForSearchReference:[(TSWPRep *)self activeSearchReference]];
    [(TSDCanvas *)self->super.super.mCanvas viewScale];
    [(TSKHighlightArrayController *)self->_pulseArrayController setViewScale:?];
    [(TSKHighlightArrayController *)self->_pulseArrayController reset];
    pulseArrayController = self->_pulseArrayController;
    [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
    [(TSKHighlightArrayController *)pulseArrayController buildHighlightsForSearchReferences:v5 contentsScaleForLayers:?];
    if (pulseCopy)
    {
      [(TSKHighlightArrayController *)self->_pulseArrayController startAnimating];
    }

    [(TSWPRep *)self p_setSelectionLineLayersHidden:1];
    self->_updatingHighlights = 0;
  }
}

- (CGRect)p_paragraphModeRectangleForColumn:(id)column selection:(id)selection
{
  v34 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  range = [selection range];
  v12 = [column rectsForSelectionRange:range selectionType:v11 forParagraphMode:{objc_msgSend(selection, "type"), 1}];
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v29 + 1) + 8 * v16) CGRectValue];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = width;
        v35.size.height = height;
        if (CGRectIsNull(v35))
        {
          x = v18;
          y = v20;
          width = v22;
          height = v24;
        }

        else
        {
          v36.origin.x = v18;
          v36.origin.y = v20;
          v36.size.width = v22;
          v36.size.height = v24;
          v39.origin.x = x;
          v39.origin.y = y;
          v39.size.width = width;
          v39.size.height = height;
          v37 = CGRectUnion(v36, v39);
          x = v37.origin.x;
          y = v37.origin.y;
          width = v37.size.width;
          height = v37.size.height;
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (BOOL)p_paragraphModeBorderNeededForColumn:(id)column dragCharIndex:(unint64_t)index knobTag:(unint64_t)tag
{
  if (tag == 10)
  {
    return [column range] < index;
  }

  if (tag != 11)
  {
    return 0;
  }

  range = [column range];
  return range + v7 > index;
}

- (CGPath)p_createPathForParagraphSelection:(id)selection needsParagraphBorder:(BOOL)border
{
  borderCopy = border;
  v63 = *MEMORY[0x277D85DE8];
  Mutable = 0;
  if ([selection range] != 0x7FFFFFFFFFFFFFFFLL && v7)
  {
    if (![(TSWPRep *)self p_isSelectionSingleAnchoredDrawableAttachment])
    {
      v10 = *MEMORY[0x277CBF348];
      v9 = *(MEMORY[0x277CBF348] + 8);
      [(TSDRep *)self naturalBounds];
      *r1 = v11;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      textEditor = [(TSWPRep *)self textEditor];
      if (borderCopy && (v19 = textEditor, [(TSWPEditingController *)textEditor knobTracking]))
      {
        interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
        [(TSWPEditingController *)v19 knobTrackingDragPoint];
        v23 = [(TSDInteractiveCanvasController *)interactiveCanvasController closestRepToPoint:[(TSWPRep *)self storage] forStorage:v21, v22];
        [(TSWPEditingController *)v19 knobTrackingDragPoint];
        [(TSDRep *)v23 convertNaturalPointFromUnscaledCanvas:?];
        v10 = v24;
        v9 = v25;
        v54 = [(TSWPRep *)v23 charIndexFromPoint:1 allowPastBreak:0 allowNotFound:0 isAtEndOfLine:0 leadingEdge:?];
        knobTag = [(TSWPEditingController *)v19 knobTag];
        v56 = 0;
        if (v23 == self)
        {
          v56 = [(TSWPRep *)v23 closestColumnForPoint:v10, v9];
        }
      }

      else
      {
        v54 = 0x7FFFFFFFFFFFFFFFLL;
        knobTag = 11;
        v56 = 0;
      }

      objc_opt_class();
      [[(TSDRep *)self parentRep] layout];
      v26 = TSUDynamicCast();
      if (v26)
      {
        interiorWrapPath = [v26 interiorWrapPath];
        v28 = [interiorWrapPath isRectangular] ? 0 : interiorWrapPath;
      }

      else
      {
        v28 = 0;
      }

      textIsVertical = [(TSWPRep *)self textIsVertical];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      columns = [(TSWPRep *)self columns];
      v30 = [(NSArray *)columns countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v30)
      {
        v31 = v30;
        v52 = v9;
        Mutable = 0;
        v32 = *v59;
        while (1)
        {
          for (i = 0; i != v31; ++i)
          {
            v34 = v10;
            if (*v59 != v32)
            {
              objc_enumerationMutation(columns);
            }

            v35 = *(*(&v58 + 1) + 8 * i);
            [(TSWPRep *)self p_paragraphModeRectangleForColumn:v35 selection:selection, *&v52];
            x = v36;
            y = v37;
            width = v38;
            height = v39;
            if (borderCopy && !CGRectIsNull(*&v36))
            {
              if (v56 == v35)
              {
                if (knobTag == 10)
                {
                  if (textIsVertical)
                  {
                    v65.origin.x = x;
                    v65.origin.y = y;
                    v65.size.width = width;
                    v65.size.height = height;
                    v44 = CGRectGetMaxX(v65) - v34;
                    v45 = v34;
                    goto LABEL_31;
                  }

                  v67.origin.x = x;
                  v67.origin.y = y;
                  v67.size.width = width;
                  v67.size.height = height;
                  v46 = v52 - CGRectGetMinY(v67);
                  v45 = y;
                }

                else if (knobTag == 11)
                {
                  if (textIsVertical)
                  {
                    v64.origin.x = x;
                    v64.origin.y = y;
                    v64.size.width = width;
                    v64.size.height = height;
                    v44 = v34 - CGRectGetMinX(v64);
                    v45 = x;
LABEL_31:
                    if (v44 <= 0.0)
                    {
                      width = 1.0;
                    }

                    else
                    {
                      width = v44;
                    }

                    if (v44 <= 0.0)
                    {
                      x = v34;
                    }

                    else
                    {
                      x = v45;
                    }

                    goto LABEL_45;
                  }

                  v66.origin.x = x;
                  v66.origin.y = y;
                  v66.size.width = width;
                  v66.size.height = height;
                  v46 = CGRectGetMaxY(v66) - v52;
                  v45 = v52;
                }

                else
                {
                  v45 = 0.0;
                  v44 = 0.0;
                  v46 = 0.0;
                  if (textIsVertical)
                  {
                    goto LABEL_31;
                  }
                }

                if (v46 <= 0.0)
                {
                  height = 1.0;
                }

                else
                {
                  height = v46;
                }

                if (v46 <= 0.0)
                {
                  y = v52;
                }

                else
                {
                  y = v45;
                }
              }

              else if (![(TSWPRep *)self p_paragraphModeBorderNeededForColumn:v35 dragCharIndex:v54 knobTag:knobTag])
              {
                x = *MEMORY[0x277CBF398];
                y = *(MEMORY[0x277CBF398] + 8);
                width = *(MEMORY[0x277CBF398] + 16);
                height = *(MEMORY[0x277CBF398] + 24);
              }
            }

LABEL_45:
            v68.origin.x = x;
            v68.origin.y = y;
            v68.size.width = width;
            v68.size.height = height;
            if (!CGRectIsNull(v68))
            {
              if (!Mutable)
              {
                Mutable = CGPathCreateMutable();
              }

              if ([(TSWPStorage *)[(TSWPRep *)self storage] wpKind])
              {
                v69.origin.x = *r1;
                v69.origin.y = v13;
                v69.size.width = v15;
                v69.size.height = v17;
                v76.origin.x = x;
                v76.origin.y = y;
                v76.size.width = width;
                v76.size.height = height;
                v70 = CGRectIntersection(v69, v76);
                x = v70.origin.x;
                y = v70.origin.y;
                width = v70.size.width;
                height = v70.size.height;
              }

              if (borderCopy)
              {
                v71.origin.x = x;
                v71.origin.y = y;
                v71.size.width = width;
                v71.size.height = height;
                v72 = CGRectInset(v71, -1.0, -1.0);
                x = v72.origin.x;
                y = v72.origin.y;
                width = v72.size.width;
                height = v72.size.height;
              }

              v73.origin.x = x;
              v73.origin.y = y;
              v73.size.width = width;
              v73.size.height = height;
              v74 = CGRectIntegral(v73);
              v47 = v74.origin.x;
              v48 = v74.origin.y;
              v49 = v74.size.width;
              v50 = v74.size.height;
              memset(&r1[8], 0, 48);
              if (self)
              {
                [(TSDRep *)self transformToConvertNaturalToLayerRelative];
              }

              if (v28)
              {
                CGPathAddPath(Mutable, &r1[8], [objc_msgSend(v28 intersectBezierPath:{+[TSDBezierPath bezierPathWithRect:](TSDBezierPath, "bezierPathWithRect:", v47, v48, v49, v50)), "CGPath"}]);
              }

              else
              {
                v75.origin.x = v47;
                v75.origin.y = v48;
                v75.size.width = v49;
                v75.size.height = v50;
                CGPathAddRect(Mutable, &r1[8], v75);
              }
            }

            v10 = v34;
          }

          v31 = [(NSArray *)columns countByEnumeratingWithState:&v58 objects:v62 count:16];
          if (!v31)
          {
            return Mutable;
          }
        }
      }
    }

    return 0;
  }

  return Mutable;
}

- (CGPath)p_newSelectionPathForRange:(_NSRange)range headKnobRect:(CGRect *)rect tailKnobRect:(CGRect *)knobRect selectionType:(int)type selection:(id)selection
{
  v7 = *&type;
  knobRectCopy2 = knobRect;
  r2_16 = rect;
  length = range.length;
  location = range.location;
  v91 = *MEMORY[0x277D85DE8];
  if (type == 7 && !selection)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep p_newSelectionPathForRange:headKnobRect:tailKnobRect:selectionType:selection:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"];
    v13 = currentHandler;
    knobRectCopy2 = knobRect;
    [v13 handleFailureInFunction:v11 file:v12 lineNumber:3812 description:@"If there is a visual selection you have to pass the whole selection"];
  }

  textIsVertical = [(TSWPRep *)self textIsVertical];
  Mutable = 0;
  if (location != 0x7FFFFFFFFFFFFFFFLL && length)
  {
    if (![(TSWPRep *)self p_isSelectionSingleAnchoredDrawableAttachment])
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      obj = [(TSWPRep *)self columns];
      v66 = [(NSArray *)obj countByEnumeratingWithState:&v85 objects:v90 count:16];
      if (v66)
      {
        Mutable = 0;
        v15 = location + length;
        v65 = *v86;
        p_size = &knobRectCopy2->size;
        p_height = &knobRectCopy2->size.height;
        while (1)
        {
          v16 = 0;
          do
          {
            if (*v86 != v65)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v85 + 1) + 8 * v16);
            [v17 frameBounds];
            r2 = v18;
            v20 = v19;
            v22 = v21;
            v24 = v23;
            if (v7 == 7)
            {
              visualRangesArray = [selection visualRangesArray];
            }

            else
            {
              visualRangesArray = [MEMORY[0x277CBEA60] arrayWithObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", location, length)}];
            }

            v67 = v16;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v72 = [v17 rectsForSelectionRanges:visualRangesArray selectionType:v7];
            r2_8 = [v72 countByEnumeratingWithState:&v81 objects:v89 count:16];
            if (r2_8)
            {
              v75 = *v82;
              do
              {
                for (i = 0; i != r2_8; ++i)
                {
                  if (*v82 != v75)
                  {
                    objc_enumerationMutation(v72);
                  }

                  [*(*(&v81 + 1) + 8 * i) CGRectValue];
                  v93 = CGRectIntegral(v92);
                  v97.origin.x = r2;
                  v97.origin.y = v20;
                  v97.size.width = v22;
                  v97.size.height = v24;
                  v94 = CGRectIntersection(v93, v97);
                  x = v94.origin.x;
                  y = v94.origin.y;
                  width = v94.size.width;
                  height = v94.size.height;
                  if (v7 <= 7 && ((1 << v7) & 0x91) != 0)
                  {
                    startCharIndex = [v17 startCharIndex];
                    characterCount = [v17 characterCount];
                    headChar = location;
                    tailChar = location + length;
                    if (v7 == 7)
                    {
                      headChar = [selection headChar];
                      tailChar = [selection tailChar];
                    }

                    if (r2_16)
                    {
                      if (!Mutable)
                      {
                        v35 = [v17 lineFragmentForCharIndex:headChar knobTag:11 selectionType:v7];
                        if (v35)
                        {
                          r2_16->origin.x = x;
                          r2_16->origin.y = y;
                          r2_16->size.width = width;
                          r2_16->size.height = height;
                          if (v7 == 7)
                          {
                            v36 = TSWPLineFragment::wpOffsetForCharIndexForVisualSelection(v35, headChar, 1);
                          }

                          else
                          {
                            v36 = TSWPLineFragment::wpOffsetForCharIndex(v35, headChar, 1);
                          }

                          v37 = v36;
                          if (textIsVertical)
                          {
                            if (v17)
                            {
                              [v17 transformFromWP];
                              b = m.b;
                              ty = m.ty;
                              v40 = m.d * 0.0;
                            }

                            else
                            {
                              ty = 0.0;
                              v40 = 0.0;
                              b = 0.0;
                            }

                            r2_16->origin.y = ty + v40 + b * v37;
                            p_width = &r2_16->size.height;
                          }

                          else
                          {
                            r2_16->origin.x = v36;
                            p_width = &r2_16->size.width;
                          }

                          *p_width = 0x3FF0000000000000;
                        }
                      }
                    }

                    if (knobRect)
                    {
                      v42 = v15 - startCharIndex < characterCount && v15 >= startCharIndex;
                      if (v42 || v15 == characterCount + startCharIndex)
                      {
                        if (v7 == 7)
                        {
                          v43 = [v17 lineFragmentForCharIndex:location + length - 1 knobTag:10 selectionType:7];
                          if (!v43)
                          {
                            goto LABEL_55;
                          }

                          v44 = TSWPLineFragment::wpOffsetForCharIndexForVisualSelection(v43, tailChar, 0);
                        }

                        else
                        {
                          v45 = [v17 lineFragmentForCharIndex:v15 knobTag:10 selectionType:v7];
                          if (!v45)
                          {
                            goto LABEL_55;
                          }

                          v44 = TSWPLineFragment::wpOffsetForCharIndex(v45, tailChar, 0);
                        }

                        v46 = v44 + -1.0;
                        knobRect->origin.x = x;
                        knobRect->origin.y = y;
                        knobRect->size.width = width;
                        knobRect->size.height = height;
                        if (textIsVertical)
                        {
                          if (v17)
                          {
                            [v17 transformFromWP];
                            v47 = m.b;
                            v48 = m.ty;
                            v49 = m.d * 0.0;
                          }

                          else
                          {
                            v48 = 0.0;
                            v49 = 0.0;
                            v47 = 0.0;
                          }

                          knobRect->origin.y = v48 + v49 + v47 * v46;
                          v50 = p_height;
                        }

                        else
                        {
                          knobRect->origin.x = v46;
                          v50 = &p_size->width;
                        }

                        *v50 = 1.0;
                      }
                    }
                  }

LABEL_55:
                  if (!Mutable)
                  {
                    Mutable = CGPathCreateMutable();
                  }

                  memset(&m, 0, sizeof(m));
                  if (self)
                  {
                    [(TSDRep *)self transformToConvertNaturalToLayerRelative];
                  }

                  r2_24 = m;
                  if (TSDIsTransformAxisAligned(&r2_24.a))
                  {
                    r2_24 = m;
                    v95.origin.x = x;
                    v95.origin.y = y;
                    v95.size.width = width;
                    v95.size.height = height;
                    v96 = CGRectApplyAffineTransform(v95, &r2_24);
                    v51 = v96.origin.x;
                    v52 = v96.origin.y;
                    v53 = v96.size.width;
                    v54 = v96.size.height;
                    [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
                    v56 = TSDRoundedRectForScale(v51, v52, v53, v54, v55);
                    v60 = Mutable;
                    p_m = 0;
                  }

                  else
                  {
                    p_m = &m;
                    v60 = Mutable;
                    v56 = x;
                    v57 = y;
                    v58 = width;
                    v59 = height;
                  }

                  CGPathAddRect(v60, p_m, *&v56);
                }

                r2_8 = [v72 countByEnumeratingWithState:&v81 objects:v89 count:16];
              }

              while (r2_8);
            }

            v16 = v67 + 1;
          }

          while (v67 + 1 != v66);
          v66 = [(NSArray *)obj countByEnumeratingWithState:&v85 objects:v90 count:16];
          if (!v66)
          {
            return Mutable;
          }
        }
      }
    }

    return 0;
  }

  return Mutable;
}

- (id)p_lineSelectionsForSelection:(id)selection
{
  v19 = *MEMORY[0x277D85DE8];
  if (![selection isRange])
  {
    return 0;
  }

  if ([(TSWPRep *)self p_isSelectionSingleAnchoredDrawableAttachment])
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  columns = [(TSWPRep *)self columns];
  v6 = [(NSArray *)columns countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  array = 0;
  v9 = *v15;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(columns);
      }

      v11 = [*(*(&v14 + 1) + 8 * i) lineSelectionsForSelection:selection];
      if (v11)
      {
        v12 = v11;
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        [array addObjectsFromArray:v12];
      }
    }

    v7 = [(NSArray *)columns countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v7);
  return array;
}

- (id)lineSearchReferencesForSearchReference:(id)reference
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = -[TSWPRep p_lineSelectionsForSelection:](self, "p_lineSelectionsForSelection:", [reference selection]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  array = 0;
  v8 = *v16;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v15 + 1) + 8 * i);
      if (!array)
      {
        array = [MEMORY[0x277CBEB18] array];
      }

      v11 = [reference copy];
      range = [v10 range];
      [v11 setRange:{range, v13}];
      [array addObject:v11];
    }

    v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v6);
  return array;
}

- (CGPoint)p_pinPoint:(CGPoint)point toRect:(CGRect)rect
{
  v4 = TSDClampPointInRect();
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)p_updateLayersForRangeSelection:(id)selection selectionFlags:(unint64_t)flags
{
  flagsCopy = flags;
  p_canShowSelectionAndCaretLayers = [(TSWPRep *)self p_canShowSelectionAndCaretLayers];
  [(TSWPRep *)self p_hideCaretLayer];
  if ((flagsCopy & 4) != 0)
  {
    v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"path"];
    [v8 setDuration:0.100000001];
    [(CAShapeLayer *)self->_selectionHighlightLayer addAnimation:v8 forKey:@"selectionHighlightPathAnimation"];
    if ([(TSWPRep *)self p_shouldDisplaySelectionControls])
    {
      [(CAShapeLayer *)self->_selectionLineLayers[0] addAnimation:v8 forKey:@"leftSelectionLinePositionAnimation"];
      [(CAShapeLayer *)self->_selectionLineLayers[1] addAnimation:v8 forKey:@"rightSelectionLinePositionAnimation"];
    }
  }

  v9 = *(MEMORY[0x277CBF398] + 16);
  v53.origin = *MEMORY[0x277CBF398];
  v53.size = v9;
  v52.origin = v53.origin;
  v52.size = v9;
  if (!p_canShowSelectionAndCaretLayers)
  {
    [(TSWPRep *)self p_hideSelectionParagraphBorderLayer];
    [(CAShapeLayer *)self->_selectionHighlightLayer setHidden:1];
    [(CAShapeLayer *)self->_selectionHighlightLayer setPath:0];
    goto LABEL_34;
  }

  textEditor = [(TSWPRep *)self textEditor];
  v11 = [(TSWPEditingController *)textEditor isParagraphModeWithSelection:selection onStorage:[(TSWPRep *)self storage]];
  type = [selection type];
  if ((flagsCopy & 0x800000) != 0 && !type)
  {
    selection = [(TSWPEditingController *)textEditor logicalToVisualSelection:selection];
    [(TSWPEditingController *)textEditor setSelection:selection withFlags:0];
  }

  v13 = [(TSWPEditingController *)textEditor calculateVisualRunsFromSelection:selection updateControllerSelection:1, *&v52.origin.x];
  selection = v13;
  if (!v11)
  {
    if ([v13 isVisual])
    {
      headChar = [selection headChar];
      tailChar = [selection tailChar];
      if (tailChar >= headChar)
      {
        v19 = headChar;
      }

      else
      {
        v19 = tailChar;
      }

      headChar2 = [selection headChar];
      tailChar2 = [selection tailChar];
      if (headChar2 <= tailChar2)
      {
        v22 = tailChar2;
      }

      else
      {
        v22 = headChar2;
      }

      if (v19 <= v22 + 1)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = v19;
      }

      if (v19 >= v22 + 1)
      {
        v24 = v22 + 1;
      }

      else
      {
        v24 = v19;
      }

      v25 = v23 - v24;
      selfCopy2 = self;
      type2 = 7;
      selectionCopy = selection;
    }

    else
    {
      range = [selection range];
      v31 = v30;
      type2 = [selection type];
      selfCopy2 = self;
      v24 = range;
      v25 = v31;
      selectionCopy = 0;
    }

    selectionCopy = [(TSWPRep *)selfCopy2 p_newSelectionPathForRange:v24 headKnobRect:v25 tailKnobRect:&v53 selectionType:&v52 selection:type2, selectionCopy];
    goto LABEL_29;
  }

  selectionCopy = [(TSWPRep *)self p_createPathForParagraphSelection:v13 needsParagraphBorder:0];
  if (![(TSWPEditingController *)textEditor knobTracking]|| (v15 = [(TSWPRep *)self p_createPathForParagraphSelection:selection needsParagraphBorder:1]) == 0)
  {
LABEL_29:
    [(TSWPRep *)self p_hideSelectionParagraphBorderLayer];
    v16 = 0;
    goto LABEL_30;
  }

  v16 = v15;
  [(TSWPRep *)self p_showSelectionParagraphBorderLayerWithPath:v15];
LABEL_30:
  selectionHighlightLayer = self->_selectionHighlightLayer;
  if (selectionCopy)
  {
    [(CAShapeLayer *)selectionHighlightLayer setPath:selectionCopy];
    [(CAShapeLayer *)self->_selectionHighlightLayer setHidden:0];
  }

  else
  {
    [(CAShapeLayer *)selectionHighlightLayer setHidden:1];
    [(CAShapeLayer *)self->_selectionHighlightLayer setPath:0];
  }

  CGPathRelease(v16);
  CGPathRelease(selectionCopy);
  [(TSWPRep *)self p_setSelectionHighlightColor];
LABEL_34:
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v34 = v33;
  textIsVertical = [(TSWPRep *)self textIsVertical];
  v36 = [selection type] == 3 || objc_msgSend(selection, "type") == 5;
  if ([(TSWPRep *)self p_shouldDisplaySelectionControls]&& p_canShowSelectionAndCaretLayers && ((IsEmpty = CGRectIsEmpty(v53), v34 == 0.0) ? (v38 = 1) : (v38 = IsEmpty), ((v38 | v36) & 1) == 0))
  {
    v41 = 1.0 / v34;
    if (textIsVertical)
    {
      x = v53.origin.x;
      v53.size.height = 2.0 / v34;
      v53.origin.y = v53.origin.y - v41;
    }

    else
    {
      x = v53.origin.x - v41;
      v53.size.width = 2.0 / v34;
      v53.origin.x = v53.origin.x - v41;
    }

    v39 = [(TSDRep *)self newPathInScaledCanvasFromNaturalRect:x];
    v40 = 0;
  }

  else
  {
    v39 = 0;
    v40 = 1;
  }

  selectionLineLayers = self->_selectionLineLayers;
  [(CAShapeLayer *)self->_selectionLineLayers[0] setHidden:v40];
  [(CAShapeLayer *)self->_selectionLineLayers[0] setPath:v39];
  if ([(TSWPRep *)self p_shouldDisplaySelectionControls]&& p_canShowSelectionAndCaretLayers && ((v44 = CGRectIsEmpty(v52), v34 == 0.0) ? (v45 = 1) : (v45 = v44), ((v45 | v36) & 1) == 0))
  {
    v48 = v52;
    v49 = 1.0 / v34;
    v50 = 2.0 / v34;
    if (textIsVertical)
    {
      v52.origin.y = CGRectGetMaxY(v48) - v49;
      v52.size.height = v50;
      v51 = v52.origin.x;
    }

    else
    {
      v51 = CGRectGetMaxX(v48) - v49;
      v52.origin.x = v51;
      v52.size.width = v50;
    }

    v46 = [(TSDRep *)self newPathInScaledCanvasFromNaturalRect:v51, *&v52.origin, *&v52.size, *&v53.origin, *&v53.size];
    v47 = 0;
  }

  else
  {
    v46 = 0;
    v47 = 1;
  }

  [(CAShapeLayer *)selectionLineLayers[1] setHidden:v47];
  [(CAShapeLayer *)selectionLineLayers[1] setPath:v46];
  CGPathRelease(v39);
  CGPathRelease(v46);
}

- (BOOL)p_canShowSelectionAndCaretLayers
{
  v3 = TSUSupportsTextInteraction();
  if ([(TSWPSelection *)[(TSWPRep *)self selection] isRange])
  {
    range = [(TSWPRep *)self range];
    v6 = v5;
    v12.location = [(TSWPSelection *)[(TSWPRep *)self selection] range];
    v12.length = v7;
    v11.location = range;
    v11.length = v6;
    v8 = NSIntersectionRange(v11, v12).length != 0;
  }

  else
  {
    v8 = 1;
  }

  if (self->_pulseArrayController || [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] documentRoot] isFindActive])
  {
    LOBYTE(v9) = 0;
  }

  else if (!self->_indentAnimationLayer || (v9 = [(TSWPSelection *)[(TSWPRep *)self selection] isRange]))
  {
    LOBYTE(v9) = (self->_secondaryHighlightLayer == 0) & (v3 ^ 1) & v8;
  }

  return v9;
}

- (BOOL)p_isSelectionSingleAnchoredDrawableAttachment
{
  textEditor = [(TSWPRep *)self textEditor];

  return [(TSWPEditingController *)textEditor isSelectionSingleAnchoredDrawableAttachment];
}

- (void)p_hideSelectionLayers
{
  [(TSWPRep *)self p_hideCaretLayer];
  if ((TSUSupportsTextInteraction() & 1) == 0)
  {
    [(TSWPRep *)self p_setSelectionLineLayersHidden:1];
  }

  [(TSWPRep *)self p_hideSelectionHighlightLayer];

  [(TSWPRep *)self p_hideSelectionParagraphBorderLayer];
}

- (void)i_setNeedsErasableDisplayInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v24 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  columns = [(TSWPRep *)self columns];
  v11 = [(NSArray *)columns countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(columns);
        }

        [*(*(&v19 + 1) + 8 * v14) erasableRectForSelectionRange:{location, length}];
        v28.origin.x = v15;
        v28.origin.y = v16;
        v28.size.width = v17;
        v28.size.height = v18;
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        v26 = CGRectUnion(v25, v28);
        x = v26.origin.x;
        y = v26.origin.y;
        width = v26.size.width;
        height = v26.size.height;
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)columns countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (!CGRectIsEmpty(v27))
  {
    [(TSWPRep *)self setNeedsDisplayInRect:x, y, width, height];
  }
}

- (void)p_spellCheckerLanguageDidChangeNotification:(id)notification
{
  [(TSWPRep *)self p_destroySpellChecker];

  [(TSWPRep *)self setNeedsDisplay];
}

- (void)p_invalidateSuppressedMisspellingRange
{
  location = self->_suppressedMisspellingRange.location;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(TSWPRep *)self setNeedsDisplayInRange:location, self->_suppressedMisspellingRange.length];
  }
}

- (void)p_setSuppressedMisspellingRange:(_NSRange)range
{
  p_suppressedMisspellingRange = &self->_suppressedMisspellingRange;
  if (range.location != self->_suppressedMisspellingRange.location || range.length != self->_suppressedMisspellingRange.length)
  {
    length = range.length;
    location = range.location;
    [(TSWPRep *)self p_invalidateSuppressedMisspellingRange];
    p_suppressedMisspellingRange->location = location;
    p_suppressedMisspellingRange->length = length;

    [(TSWPRep *)self p_invalidateSuppressedMisspellingRange];
  }
}

- (void)p_updateSuppressedSpellingRange
{
  v3 = MEMORY[0x277D6C268];
  v4 = *MEMORY[0x277D6C268];
  v5 = *(MEMORY[0x277D6C268] + 8);
  isValid = [(TSWPSelection *)[(TSWPRep *)self selection] isValid];
  if (isValid)
  {
    v7 = *v3;
  }

  else
  {
    v7 = v4;
  }

  if (isValid)
  {
    v8 = v3[1];
  }

  else
  {
    v8 = v5;
  }

  [(TSWPRep *)self p_setSuppressedMisspellingRange:v7, v8];
}

- (void)p_updateForCurrentSelectionWithFlags:(unint64_t)flags
{
  selection = [(TSWPRep *)self selection];
  if (selection)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep p_updateForCurrentSelectionWithFlags:]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = objc_opt_class();
      [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:4310 description:{@"%s expected %@, got %@", "-[TSWPRep p_updateForCurrentSelectionWithFlags:]", v10, NSStringFromClass(v11)}];
    }
  }

  if (self->_caretLayer && !self->_suppressSelectionHighlight)
  {
    [(TSDLayout *)[(TSDRep *)self layout] validate];
    [(TSWPRep *)self p_updateSuppressedSpellingRange];
    if ([(TSWPSelection *)selection isInsertionPoint])
    {
      [(TSWPRep *)self p_updateLayersForInsertionPointSelection:selection];
    }

    else if ([(TSWPSelection *)selection isRange]&& ([(TSWPEditingController *)[(TSWPRep *)self textEditor] markedRange], !v12))
    {
      [(TSWPRep *)self p_updateLayersForRangeSelection:selection selectionFlags:flags];
    }

    else if (!self->_pulseArrayController)
    {
      [(TSWPRep *)self p_hideSelectionLayers];
    }

    [(TSWPRep *)self p_updateMarkHighlightLayer];

    [(TSWPRep *)self p_updateSmartFieldHighlightLayer];
  }
}

- (void)i_setNeedsDisplayForSelectionChange
{
  if (!self->_lastSelection || ([(TSWPStorage *)[(TSWPRep *)self storage] parentInfo], (objc_opt_respondsToSelector() & 1) != 0) && [(TSDContainerInfo *)[(TSWPStorage *)[(TSWPRep *)self storage] parentInfo] shouldHideEmptyBullets])
  {
    [(TSWPRep *)self setNeedsDisplay];
  }

  else
  {
    selection = [(TSWPRep *)self selection];
    if (![(TSWPSelection *)self->_lastSelection isEqual:selection]&& ([(TSWPSelection *)selection isRange]|| [(TSWPSelection *)self->_lastSelection isRange]))
    {
      if (selection)
      {
        range = [(TSWPSelection *)selection range];
        v6 = v5;
        v38.location = [(TSWPStorage *)[(TSWPRep *)self storage] range];
        v38.length = v7;
        v35.location = range;
        v35.length = v6;
        v8 = NSIntersectionRange(v35, v38);
        location = v8.location;
        length = v8.length;
      }

      else
      {
        location = 0;
        length = 0;
      }

      range2 = [(TSWPSelection *)self->_lastSelection range];
      v13 = v12;
      v39.location = [(TSWPStorage *)[(TSWPRep *)self storage] range];
      v39.length = v14;
      v36.location = range2;
      v36.length = v13;
      v15 = NSIntersectionRange(v36, v39);
      v16 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v17 = v16;
      if (length)
      {
        [v16 addIndexesInRange:{location, length}];
        if (v15.length)
        {
          [v17 addIndexesInRange:{v15.location, v15.length}];
          v37.location = location;
          v37.length = length;
          v18 = NSIntersectionRange(v37, v15);
          [v17 removeIndexesInRange:{v18.location, v18.length}];
        }
      }

      else if (v15.length)
      {
        [v16 addIndexesInRange:{v15.location, v15.length}];
      }

      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v34 = 0x7FFFFFFFFFFFFFFFLL;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __46__TSWPRep_i_setNeedsDisplayForSelectionChange__block_invoke;
      v30[3] = &unk_279D4A1E0;
      v30[4] = self;
      v30[5] = &v31;
      [v17 enumerateIndexesUsingBlock:v30];
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0x7FFFFFFFFFFFFFFFLL;
      if (v32[3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __46__TSWPRep_i_setNeedsDisplayForSelectionChange__block_invoke_2;
        v25[3] = &unk_279D4A1E0;
        v25[4] = self;
        v25[5] = &v26;
        [v17 enumerateIndexesWithOptions:2 usingBlock:v25];
      }

      v19 = v32[3];
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = v27[3];
        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep i_setNeedsDisplayForSelectionChange]"];
          [currentHandler handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"), 4392, @"If there is a invisible char, we should have found it going backwards."}];
          v19 = v32[3];
          v20 = v27[3];
        }

        if (v19 <= v20 + 1)
        {
          v23 = v20 + 1;
        }

        else
        {
          v23 = v19;
        }

        if (v19 >= v20 + 1)
        {
          v24 = v20 + 1;
        }

        else
        {
          v24 = v19;
        }

        [(TSWPRep *)self i_setNeedsErasableDisplayInRange:v24, v23 - v24];
      }

      _Block_object_dispose(&v26, 8);
      _Block_object_dispose(&v31, 8);
    }
  }

  self->_lastSelection = 0;
  self->_lastSelection = [(TSWPSelection *)[(TSWPRep *)self selection] copy];
}

uint64_t __46__TSWPRep_i_setNeedsDisplayForSelectionChange__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [objc_msgSend(*(a1 + 32) "storage")];
  if (result <= 0xD && ((1 << result) & 0x3C30) != 0 || (result - 8232) < 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

uint64_t __46__TSWPRep_i_setNeedsDisplayForSelectionChange__block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [objc_msgSend(*(a1 + 32) "storage")];
  if (result <= 0xD && ((1 << result) & 0x3C30) != 0 || (result - 8232) < 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

- (void)p_drawTextLayerInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  [(TSDRep *)self setupForDrawingInLayer:[(TSWPRep *)self textLayer] context:context];
  if ([(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] shouldDisplayCommentUIForInfo:[[(TSDRep *)self parentRep] info]])
  {
    v5 = 7;
  }

  else
  {
    v5 = 3;
  }

  textLayer = [(TSWPRep *)self textLayer];
  LOBYTE(v7) = 0;
  [(TSWPRep *)self p_drawTextInLayer:textLayer context:context limitSelection:0 rubyGlyphRange:*MEMORY[0x277D6C268] renderMode:*(MEMORY[0x277D6C268] + 8) suppressInvisibles:v5, v7];
  [(TSWPRep *)self didDrawInLayer:[(TSWPRep *)self textLayer] context:context];

  CGContextRestoreGState(context);
}

- (void)p_drawTextBackgroundLayerInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  [(TSDRep *)self setupForDrawingInLayer:[(TSWPRep *)self textBackgroundLayer] context:context];
  if ([(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] shouldDisplayCommentUIForInfo:[[(TSDRep *)self parentRep] info]])
  {
    v5 = 6;
  }

  else
  {
    v5 = 2;
  }

  textBackgroundLayer = [(TSWPRep *)self textBackgroundLayer];
  LOBYTE(v7) = 0;
  [(TSWPRep *)self p_drawTextInLayer:textBackgroundLayer context:context limitSelection:0 rubyGlyphRange:*MEMORY[0x277D6C268] renderMode:*(MEMORY[0x277D6C268] + 8) suppressInvisibles:v5, v7];
  [(TSWPRep *)self didDrawInLayer:[(TSWPRep *)self textBackgroundLayer] context:context];

  CGContextRestoreGState(context);
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  if (isMainThread == [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] currentlyWaitingOnThreadedLayoutAndRender]&& ![(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] nestedCanvasAllowLayoutAndRenderOnThread])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep drawLayer:inContext:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"), 4460, @"rendering on MT while waiting for secondary thread layout / render, or rendering on secondary thread when not waiting on a secondary thread layout / render and not eligible for background drawing"}];
  }

  if ([(TSWPRep *)self textLayer]== layer)
  {
    v10 = &selRef_p_drawTextLayerInContext_;
  }

  else
  {
    if ([(TSWPRep *)self textBackgroundLayer]!= layer)
    {
      return;
    }

    v10 = &selRef_p_drawTextBackgroundLayerInContext_;
  }

  accessController = [(TSKDocumentRoot *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] documentRoot] accessController];
  v12 = *v10;

  [(TSKAccessController *)accessController performRead:v12 withTarget:self argument:context];
}

- (void)tilingLayerWillSetNeedsDisplay:(id)display
{
  [(TSDRep *)self interactiveCanvasController];
  if (objc_opt_respondsToSelector())
  {
    interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)interactiveCanvasController tilingLayerWillSetNeedsDisplay:display];
  }
}

- (void)tilingLayerWillSetNeedsLayout:(id)layout
{
  [(TSDRep *)self interactiveCanvasController];
  if (objc_opt_respondsToSelector())
  {
    interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)interactiveCanvasController tilingLayerWillSetNeedsLayout:layout];
  }
}

- (void)tilingLayerWillSetNeedsDisplayForDirtyTiles:(id)tiles
{
  [(TSDRep *)self interactiveCanvasController];
  if (objc_opt_respondsToSelector())
  {
    interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)interactiveCanvasController tilingLayerWillSetNeedsDisplayForDirtyTiles:tiles];
  }
}

- (BOOL)textIsVertical
{
  layout = [(TSDRep *)self layout];

  return [(TSDLayout *)layout textIsVertical];
}

- (void)p_teardown
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  self->_searchReferences = 0;
  self->_activeSearchReference = 0;
  [(CAShapeLayer *)self->_selectionHighlightLayer setDelegate:0];

  self->_selectionHighlightLayer = 0;
  self->_selectionParagraphBorderLayer = 0;

  self->_lastSelection = 0;
  [(CAShapeLayer *)self->_markHighlightLayer setDelegate:0];

  self->_markHighlightLayer = 0;
  [(CAShapeLayer *)self->_smartFieldHighlightLayer setDelegate:0];

  self->_smartFieldHighlightLayer = 0;
  self->_caretPulseController = 0;

  self->_pulseArrayController = 0;
  self->_highlightArrayController = 0;
  [(CAShapeLayer *)self->_selectionLineLayers[0] setDelegate:0];

  self->_selectionLineLayers[0] = 0;
  [(CAShapeLayer *)self->_selectionLineLayers[1] setDelegate:0];

  self->_selectionLineLayers[1] = 0;
  [(CALayer *)self->_caretLayer setDelegate:0];

  self->_caretLayer = 0;
  [(TSWPRep *)self p_destroyLayer:1];
  [(TSWPRep *)self p_destroyLayer:0];
  [(CAShapeLayer *)self->_secondaryHighlightLayer setDelegate:0];

  self->_secondaryHighlightLayer = 0;
  self->_indentAnimationLayer = 0;

  self->_indentTarget = 0;
  [(TSWPRep *)self p_destroySpellChecker];
  [(CALayer *)self->_dragAndDropCaretLayer setDelegate:0];

  self->_dragAndDropCaretLayer = 0;
}

- (void)p_drawTextInLayer:(id)layer context:(CGContext *)context limitSelection:(id)selection rubyGlyphRange:(_NSRange)range renderMode:(int)mode suppressInvisibles:(BOOL)invisibles
{
  selfCopy = self;
  v54 = *MEMORY[0x277D85DE8];
  v40 = [(TSDCanvas *)[(TSDRep *)self canvas] textRendererForLayer:layer context:context];
  [v40 setPreventClipToColumn:{-[TSWPRep preventClipToColumn](selfCopy, "preventClipToColumn")}];
  [(TSDRep *)selfCopy layout];
  if (objc_opt_respondsToSelector())
  {
    interiorClippingPath = [(TSDLayout *)[(TSDRep *)selfCopy layout] interiorClippingPath];
  }

  else
  {
    interiorClippingPath = 0;
  }

  [v40 setInteriorClippingPath:interiorClippingPath];
  if ([(TSDCanvas *)[(TSDRep *)selfCopy canvas] isCanvasInteractive]&& (v10 = [(TSWPRep *)selfCopy textEditor]) != 0)
  {
    v11 = v10;
    markedRange = [(TSWPEditingController *)v10 markedRange];
    v34 = v13;
    v35 = markedRange;
    v14 = v11;
  }

  else
  {
    v14 = 0;
    v34 = *(MEMORY[0x277D6C268] + 8);
    v35 = *MEMORY[0x277D6C268];
  }

  v30 = v14;
  markedText = [(TSWPEditingController *)v14 markedText];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [(TSWPRep *)selfCopy columns];
  v41 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v41)
  {
    v32 = *v50;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v49 + 1) + 8 * i);
        __p = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v44 = 0;
        v45 = 0;
        v16 = selfCopy;
        if ([(TSDCanvas *)[(TSDRep *)selfCopy canvas] isCanvasInteractive])
        {
          range = [v42 range];
          [(TSWPEditingController *)v30 addAllDictationInterpretationRangesInRange:range toRanges:v18, &v46];
        }

        if (layer)
        {
          selection = [(TSWPRep *)selfCopy selection];
        }

        else
        {
          selection = 0;
        }

        v20 = selfCopy;
        location = selfCopy->_dragRange.location;
        length = v16->_dragRange.length;
        isCanvasInteractive = [(TSDCanvas *)[(TSDRep *)v20 canvas] isCanvasInteractive];
        v24 = v16->_suppressedMisspellingRange.location;
        v25 = v16->_suppressedMisspellingRange.length;
        LOBYTE(v29) = invisibles;
        LODWORD(v28) = mode;
        LOBYTE(v27) = [(TSDCanvas *)[(TSDRep *)v16 canvas] shouldSuppressBackgrounds];
        LOBYTE(v26) = isCanvasInteractive;
        [v42 renderWithRenderer:v40 currentSelection:selection limitSelection:selection listRange:location rubyGlyphRange:length isCanvasInteractive:range.location spellChecker:range.length suppressedMisspellingRange:v26 blackAndWhite:0 dictationInterpretations:v24 autocorrections:v25 markedRange:v27 markedText:&v46 renderMode:&__p pageCount:v35 suppressInvisibles:v34 currentCanvasSelection:{markedText, v28, -[TSDLayout pageCount](-[TSDRep layout](v16, "layout"), "pageCount"), v29, -[TSDCanvasEditor canvasSelection](-[TSDInteractiveCanvasController canvasEditor](-[TSDCanvas canvasController](-[TSDRep canvas](v16, "canvas"), "canvasController"), "canvasEditor"), "canvasSelection")}];
        if (__p)
        {
          v44 = __p;
          operator delete(__p);
        }

        selfCopy = v16;
        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }
      }

      v41 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v41);
  }
}

- (void)p_createLayer:(int)layer
{
  textLayers = self->_textLayers;
  if (self->_textLayers[layer])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep p_createLayer:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"), 4813, @"Shouldn't be creating _textLayer again"}];
  }

  v8 = objc_alloc_init(TSDTilingLayer);
  textLayers[layer] = v8;
  v9 = MEMORY[0x277CBF348];
  [(TSDTilingLayer *)v8 setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(TSDTilingLayer *)textLayers[layer] setEdgeAntialiasingMask:0];
  [(TSDTilingLayer *)textLayers[layer] setDelegate:self];
  [(TSDTilingLayer *)textLayers[layer] setPosition:*v9, v9[1]];
  v10 = -3.0;
  if (layer == 1)
  {
    v10 = -2.0;
  }

  [(TSDTilingLayer *)textLayers[layer] setZPosition:v10];
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  [(TSDTilingLayer *)textLayers[layer] setContentsScale:?];
  if (layer == 1)
  {
    [(TSDTilingLayer *)textLayers[1] setEnableContext:1];
    if ([(TSWPRep *)self useDynamicTiling])
    {
      v11 = objc_alloc_init(TSWPRepTileGeometry);
      +[TSDTilingLayer defaultTileSize];
      [(TSWPRepTileGeometry *)v11 setMaxTileSize:?];
      [(TSDTilingLayer *)textLayers[1] setGeometryProvider:v11];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TSDTilingLayer *)textLayers[layer] setTilingMode:[(TSWPRep *)self tilingMode]];
    [(TSDTilingLayer *)textLayers[layer] setForceTiling:[(TSWPRep *)self forceTiling]];
  }

  if ([(TSWPRep *)self p_hasVisibleContents])
  {
    interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
    v13 = textLayers[layer];

    [(TSDInteractiveCanvasController *)interactiveCanvasController setNeedsDisplayOnLayer:v13];
  }
}

- (void)p_destroyLayer:(int)layer
{
  textLayers = self->_textLayers;
  [(TSDTilingLayer *)self->_textLayers[layer] setDelegate:0];

  textLayers[layer] = 0;
}

- (id)p_newCaretLayerWithZPosition:(double)position
{
  v5 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [v5 setAnchorPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [v5 setBackgroundColor:{-[TSWPRep p_caretLayerColor](self, "p_caretLayerColor")}];
  [v5 setEdgeAntialiasingMask:0];
  [v5 setDelegate:self];
  [v5 setZPosition:position];
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  [v5 setContentsScale:?];
  [v5 setHidden:0];
  return v5;
}

- (BOOL)p_positionCaretLayer:(id)layer forSelection:(id)selection layerRelative:(BOOL)relative
{
  relativeCopy = relative;
  [(TSWPRep *)self p_caretRectForSelection:selection];
  v12 = v11;
  v13 = fmax(v10, v9);
  v14 = v13 > 0.0;
  if (v13 > 0.0)
  {
    v15 = v8;
    v16 = v9;
    v17 = v10;
    memset(&v55, 0, sizeof(v55));
    if (relativeCopy)
    {
      if (self)
      {
        [(TSDRep *)self transformToConvertNaturalToLayerRelative];
      }
    }

    else if (self)
    {
      [(TSWPRep *)self transformToConvertNaturalToScaledRoot];
    }

    v54 = v55;
    v56.origin.x = v12;
    v56.origin.y = v15;
    v56.size.width = v16;
    v56.size.height = v17;
    v57 = CGRectApplyAffineTransform(v56, &v54);
    x = v57.origin.x;
    y = v57.origin.y;
    width = v57.size.width;
    height = v57.size.height;
    v54 = v55;
    v22 = TSDTransformAngle(&v54.a);
    TSDNormalizeAngleInDegrees(v22);
    v24 = fmod(360.0 - v23, 360.0);
    if (v24 != 0.0)
    {
      if (v16 <= 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = 0.5;
      }

      v26 = 1.0;
      if (v16 <= 0.0)
      {
        v26 = 0.5;
      }

      [layer setAnchorPoint:{v26, v25}];
      if (v24 == 180.0 || v24 == 90.0 || v24 == 270.0)
      {
        v29 = 0;
      }

      else
      {
        v29 = 15;
      }

      [layer setEdgeAntialiasingMask:v29];
      [(TSWPRep *)self p_convertNaturalRectToRotated:x repAngle:y, width, height, v24];
      v33 = v32;
      v35 = v34;
      v36 = v16 <= 0.0;
      if (v16 <= 0.0)
      {
        v37 = 2.0;
      }

      else
      {
        v37 = v30;
      }

      if (v36)
      {
        v38 = v31;
      }

      else
      {
        v38 = 2.0;
      }

LABEL_42:
      [layer setBounds:{0.0, 0.0, v37, v38}];
      [layer setPosition:{v33, v35}];
      [layer setValue:objc_msgSend(MEMORY[0x277CCABB0] forKeyPath:{"numberWithDouble:", (360.0 - v24) * 3.14159265 / 180.0), @"transform.rotation.z"}];
      return v14;
    }

    [layer setAnchorPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    [layer setEdgeAntialiasingMask:0];
    v39 = x;
    v40 = y;
    v41 = width;
    v42 = height;
    if (v16 <= 0.0)
    {
      v59 = CGRectInset(*&v39, (width + -2.0) * 0.5, 0.0);
      v33 = round(v59.origin.x);
      v35 = round(v59.origin.y);
      v38 = round(v59.size.height);
      v37 = 2.0;
    }

    else
    {
      v58 = CGRectInset(*&v39, 0.0, (height + -2.0) * 0.5);
      v33 = round(v58.origin.x);
      v35 = round(v58.origin.y);
      v37 = round(v58.size.width);
      v38 = 2.0;
    }

    [(TSDRep *)self naturalBounds];
    v46 = v45;
    v48 = v47;
    if (relativeCopy)
    {
      if (self)
      {
        v52 = v44;
        v53 = v43;
        [(TSDRep *)self transformToConvertNaturalToLayerRelative];
LABEL_36:
        v44 = v52;
        v43 = v53;
LABEL_38:
        v49 = v46;
        v50 = v48;
        v60 = CGRectApplyAffineTransform(*&v43, &v54);
        if (v33 < v60.origin.x)
        {
          v33 = v60.origin.x;
        }

        if (v35 < v60.origin.y)
        {
          v35 = v60.origin.y;
        }

        goto LABEL_42;
      }
    }

    else if (self)
    {
      v52 = v44;
      v53 = v43;
      [(TSWPRep *)self transformToConvertNaturalToScaledRoot];
      goto LABEL_36;
    }

    memset(&v54, 0, sizeof(v54));
    goto LABEL_38;
  }

  return v14;
}

- (void)p_showCaretLayer
{
  if (!self->_caretAnimationDisabled && (self->_selectionChanged || ![(CALayer *)self->_caretLayer animationForKey:@"caretBlink"]))
  {
    [(TSWPRep *)self p_startCaretLayerAnimation];
  }

  if (!self->_suppressCaret)
  {
    caretLayer = self->_caretLayer;

    [(CALayer *)caretLayer setHidden:0];
  }
}

- (void)p_hideCaretLayer
{
  if (!self->_caretAnimationDisabled)
  {
    [(TSWPRep *)self p_stopCaretLayerAnimation];
  }

  caretLayer = self->_caretLayer;

  [(CALayer *)caretLayer setHidden:1];
}

- (void)p_startCaretLayerAnimation
{
  block[6] = *MEMORY[0x277D85DE8];
  if (![TSWPRep p_startCaretLayerAnimation]::sKeyFrames)
  {
    for (i = 0; i != 20; ++i)
    {
      *&v5[i * 8] = [MEMORY[0x277CCABB0] numberWithDouble:*&caretKeyValues[i]];
    }

    -[TSWPRep p_startCaretLayerAnimation]::sKeyFrames = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:v5 count:20];
  }

  v4 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v4 setCalculationMode:*MEMORY[0x277CDA070]];
  [v4 setValues:-[TSWPRep p_startCaretLayerAnimation]::sKeyFrames];
  [v4 setDuration:1.0];
  [v4 setRepeatDuration:INFINITY];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TSWPRep_p_startCaretLayerAnimation__block_invoke;
  block[3] = &unk_279D47708;
  block[4] = self;
  block[5] = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)p_stopCaretLayerAnimation
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__TSWPRep_p_stopCaretLayerAnimation__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)p_createSelectionLineLayers
{
  p_caretLayerColor = [(TSWPRep *)self p_caretLayerColor];
  v4 = 0;
  selectionLineLayers = self->_selectionLineLayers;
  v6 = 1;
  v7 = MEMORY[0x277CBF348];
  do
  {
    v8 = v6;
    if (selectionLineLayers[v4])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep p_createSelectionLineLayers]"];
      [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"), 5044, @"Shouldn't be creating _selectionLineLayers again"}];
    }

    v11 = objc_alloc_init(TSWPSelectionHighlightLayer);
    selectionLineLayers[v4] = &v11->super;
    [(TSWPSelectionHighlightLayer *)v11 setAnchorPoint:*v7, v7[1]];
    [(CAShapeLayer *)selectionLineLayers[v4] setEdgeAntialiasingMask:0];
    [(CAShapeLayer *)selectionLineLayers[v4] setDelegate:self];
    [(CAShapeLayer *)selectionLineLayers[v4] setZPosition:-1.0];
    [(CAShapeLayer *)selectionLineLayers[v4] setFillColor:p_caretLayerColor];
    [(CAShapeLayer *)selectionLineLayers[v4] setHidden:1];
    v6 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
}

- (void)p_setSelectionLineLayersHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  selectionLineLayers = self->_selectionLineLayers;
  [(CAShapeLayer *)self->_selectionLineLayers[0] setHidden:?];
  v5 = selectionLineLayers[1];

  [(CAShapeLayer *)v5 setHidden:hiddenCopy];
}

- (void)p_setSelectionHighlightColor
{
  v3 = [objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.0 green:0.330000013 blue:0.649999976 alpha:{0.200000003), "CGColor"}];
  selectionHighlightLayer = self->_selectionHighlightLayer;

  [(CAShapeLayer *)selectionHighlightLayer setFillColor:v3];
}

- (void)p_createSelectionHighlightLayer
{
  if (self->_selectionHighlightLayer)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep p_createSelectionHighlightLayer]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"), 5111, @"Shouldn't be creating _selectionHighlightLayer again"}];
  }

  v5 = objc_alloc_init(TSWPSelectionHighlightLayer);
  self->_selectionHighlightLayer = &v5->super;
  [(TSWPSelectionHighlightLayer *)v5 setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(CAShapeLayer *)self->_selectionHighlightLayer setEdgeAntialiasingMask:0];
  [(CAShapeLayer *)self->_selectionHighlightLayer setDelegate:self];
  [(CAShapeLayer *)self->_selectionHighlightLayer setZPosition:-1.79999995];

  [(TSWPRep *)self p_setSelectionHighlightColor];
}

- (void)p_createSelectionParagraphBorderLayer
{
  if (self->_selectionParagraphBorderLayer)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRep p_createSelectionParagraphBorderLayer]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRep.mm"), 5126, @"Shouldn't be creating _selectionParagraphBorderLayer again"}];
  }

  self->_selectionParagraphBorderLayer = objc_alloc_init(MEMORY[0x277CD9F90]);
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setContentsScale:?];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setHidden:0];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setOpacity:0.0];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setEdgeAntialiasingMask:0];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setZPosition:-1.85000002];
  -[CAShapeLayer setStrokeColor:](self->_selectionParagraphBorderLayer, "setStrokeColor:", [objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.119999997 green:0.370000005 blue:0.949999988 alpha:{0.550000012), "CGColor"}]);
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setLineWidth:2.0];
  selectionParagraphBorderLayer = self->_selectionParagraphBorderLayer;

  [(CAShapeLayer *)selectionParagraphBorderLayer setFillColor:0];
}

- (void)p_hideSelectionParagraphBorderLayer
{
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer opacity];
  if (v3 != 0.0)
  {
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer removeAllAnimations];
    v4 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v4 setDuration:0.15];
    v5 = MEMORY[0x277CCABB0];
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer opacity];
    [v4 setFromValue:{objc_msgSend(v5, "numberWithFloat:")}];
    [v4 setToValue:&unk_287DDE0C0];
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer setOpacity:0.0];
    selectionParagraphBorderLayer = self->_selectionParagraphBorderLayer;

    [(CAShapeLayer *)selectionParagraphBorderLayer addAnimation:v4 forKey:@"kParagraphModeBorderFadeOutAnimation"];
  }
}

- (void)p_showSelectionParagraphBorderLayerWithPath:(CGPath *)path
{
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer setPath:path];
  [(CAShapeLayer *)self->_selectionParagraphBorderLayer opacity];
  if (v4 != 1.0)
  {
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer removeAllAnimations];
    v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v5 setDuration:0.15];
    v6 = MEMORY[0x277CCABB0];
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer opacity];
    [v5 setFromValue:{objc_msgSend(v6, "numberWithFloat:")}];
    [v5 setToValue:&unk_287DDE0D0];
    LODWORD(v7) = 1.0;
    [(CAShapeLayer *)self->_selectionParagraphBorderLayer setOpacity:v7];
    selectionParagraphBorderLayer = self->_selectionParagraphBorderLayer;

    [(CAShapeLayer *)selectionParagraphBorderLayer addAnimation:v5 forKey:@"kParagraphModeBorderFadeInAnimation"];
  }
}

- (void)p_createMarkHighlightLayer
{
  v3 = objc_alloc_init(TSWPSelectionHighlightLayer);
  self->_markHighlightLayer = &v3->super;
  [(TSWPSelectionHighlightLayer *)v3 setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(CAShapeLayer *)self->_markHighlightLayer setEdgeAntialiasingMask:0];
  [(CAShapeLayer *)self->_markHighlightLayer setDelegate:self];
  -[CAShapeLayer setFillColor:](self->_markHighlightLayer, "setFillColor:", [objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.0 green:0.330000013 blue:0.649999976 alpha:{0.100000001), "CGColor"}]);
  -[CAShapeLayer setStrokeColor:](self->_markHighlightLayer, "setStrokeColor:", [objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.0 green:0.330000013 blue:0.649999976 alpha:{0.200000003), "CGColor"}]);
  markHighlightLayer = self->_markHighlightLayer;

  [(CAShapeLayer *)markHighlightLayer setZPosition:-1.89999998];
}

- (void)p_updateMarkHighlightLayer
{
  if ([(TSWPRep *)self isEditing]&& (v3 = [(TSWPEditingController *)[(TSWPRep *)self textEditor] markedRange], (v5 = [(TSWPRep *)self p_newSelectionPathForRange:v3 headKnobRect:v4 tailKnobRect:0 selectionType:0 selection:0, 0]) != 0))
  {
    v6 = v5;
    [(CAShapeLayer *)self->_markHighlightLayer setPath:v5];
    [(CAShapeLayer *)self->_markHighlightLayer setHidden:0];
    CGPathRelease(v6);
  }

  else
  {
    [(CAShapeLayer *)self->_markHighlightLayer setHidden:1];
  }

  self->_markChanged = 0;
}

- (BOOL)p_spellCheckingEnabled
{
  if ([(TSDCanvas *)[(TSDRep *)self canvas] spellCheckingSuppressed]|| ![(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    return 0;
  }

  return +[TSWPUserDefaults spellCheckingEnabled];
}

- (void)p_createSmartFieldHighlightLayer
{
  v3 = objc_alloc_init(TSWPSelectionHighlightLayer);
  self->_smartFieldHighlightLayer = &v3->super;
  [(TSWPSelectionHighlightLayer *)v3 setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(CAShapeLayer *)self->_smartFieldHighlightLayer setEdgeAntialiasingMask:0];
  [(CAShapeLayer *)self->_smartFieldHighlightLayer setDelegate:self];
  -[CAShapeLayer setFillColor:](self->_smartFieldHighlightLayer, "setFillColor:", [objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.0 green:0.330000013 blue:0.649999976 alpha:{0.0500000007), "CGColor"}]);
  -[CAShapeLayer setStrokeColor:](self->_smartFieldHighlightLayer, "setStrokeColor:", [objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.0 green:0.330000013 blue:0.649999976 alpha:{0.899999976), "CGColor"}]);
  smartFieldHighlightLayer = self->_smartFieldHighlightLayer;

  [(CAShapeLayer *)smartFieldHighlightLayer setZPosition:-1.89999998];
}

- (void)p_updateSmartFieldHighlightLayer
{
  v3 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  [(TSWPRep *)self range];
  if ([(TSWPRep *)self isEditing])
  {
    if ((v3 & 1) == 0)
    {
      textEditor = [(TSWPRep *)self textEditor];
      if (textEditor)
      {
        [(TSWPSelection *)[(TSWPEditingController *)textEditor selection] range];
      }
    }
  }

  smartFieldHighlightLayer = self->_smartFieldHighlightLayer;

  [(CAShapeLayer *)smartFieldHighlightLayer setHidden:1];
}

- (void)didDrawInLayer:(id)layer context:(CGContext *)context
{
  v5.receiver = self;
  v5.super_class = TSWPRep;
  [(TSDRep *)&v5 didDrawInLayer:layer context:context];
  [(TSWPRep *)self p_updateSmartFieldHighlightLayer];
}

- (void)p_invalidateCommentKnobs
{
  if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive]&& [(TSWPStorage *)[(TSWPRep *)self storage] highlightsAllowed])
  {

    [(TSWPRep *)self invalidateKnobs];
  }
}

- (void)p_selectionChangedNotification:(id)notification
{
  userInfo = [notification userInfo];
  if (userInfo)
  {
    v5 = userInfo;
    v6 = [userInfo objectForKeyedSubscript:@"TSWPEditingControllerEditor"];
    interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
    if ([v6 interactiveCanvasController] == interactiveCanvasController)
    {
      storage = [v6 storage];
      if (storage == [(TSWPRep *)self storage])
      {
        self->_hudStateDirty = 1;
        self->_selectionChanged = 1;
        self->_newSelectionFlags = [objc_msgSend(v5 objectForKeyedSubscript:{@"TSWPEditingControllerSelectionFlagsKey", "unsignedIntegerValue"}];
        layoutController = [(TSDLayout *)[(TSDRep *)self layout] layoutController];
        layout = [(TSDRep *)self layout];

        [layoutController invalidateLayout:layout];
      }
    }
  }
}

- (void)p_markChangedNotification:(id)notification
{
  userInfo = [notification userInfo];
  if (userInfo)
  {
    v5 = [userInfo objectForKeyedSubscript:@"TSWPEditingControllerEditor"];
    interactiveCanvasController = [v5 interactiveCanvasController];
    if (interactiveCanvasController == [(TSDRep *)self interactiveCanvasController])
    {
      storage = [v5 storage];
      if (storage == [(TSWPRep *)self storage])
      {
        self->_markChanged = 1;
        layout = [(TSDRep *)self layout];

        [(TSDLayout *)layout invalidate];
      }
    }
  }
}

- (void)p_editingDidEndNotification:(id)notification
{
  objc_opt_class();
  [objc_msgSend(notification "userInfo")];
  storage = [TSUDynamicCast() storage];
  if (storage == [(TSWPRep *)self storage])
  {

    [(TSWPRep *)self editingDidEnd];
  }
}

- (BOOL)p_hasVisibleContents
{
  if ([(TSWPStorage *)[(TSWPRep *)self storage] length])
  {
    return 1;
  }

  return [(TSWPRep *)self isEditing];
}

- (BOOL)p_hasEmptyList
{
  range = [(TSWPRep *)self range];
  if (range == 0x7FFFFFFFFFFFFFFFLL || v4)
  {
    return 0;
  }

  v5 = range;
  storage = [(TSWPRep *)self storage];

  return [(TSWPStorage *)storage paragraphHasListLabelAtCharIndex:v5];
}

- (CGColor)p_caretLayerColor
{
  v2 = [MEMORY[0x277D6C2A8] colorWithRed:0.0 green:0.435294118 blue:0.890196078 alpha:1.0];

  return [v2 CGColor];
}

- (CGAffineTransform)transformToConvertNaturalToScaledRoot
{
  memset(&v10, 0, sizeof(v10));
  layout = [(TSDRep *)self layout];
  if (layout)
  {
    [(TSDAbstractLayout *)layout transformInRoot];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  [(TSDCanvas *)self->super.super.mCanvas viewScale];
  t1 = v10;
  CGAffineTransformMakeScale(&v8, v6, v6);
  return CGAffineTransformConcat(retstr, &t1, &v8);
}

- (id)selectionForDragAndDropNaturalPoint:(CGPoint)point dragIsTopicSelection:(BOOL)selection
{
  v19 = 0;
  if (selection)
  {
    v5 = [TSWPColumn charIndexForTopicDragAtPoint:[(TSWPRep *)self columns] inColumnsArray:point.x, point.y];
    v6 = 0;
  }

  else
  {
    v5 = [(TSWPRep *)self charIndexFromPoint:selection allowPastBreak:&v19 isAtEndOfLine:point.x, point.y];
    v6 = v19;
  }

  v7 = [(TSWPStorage *)[(TSWPRep *)self storage] extendSelectionToIncludeSmartFields:[[TSWPSelection alloc] initWithType:0 range:v5 styleInsertionBehavior:0 caretAffinity:0, v6]];
  if ([v7 isRange])
  {
    storage = [(TSWPRep *)self storage];
    range = [v7 range];
    v11 = [(TSWPStorage *)storage smartFieldsWithAttributeKind:6 intersectingRange:range, v10];
    if ([v11 count] == 1 && (objc_msgSend(objc_msgSend(v11, "objectAtIndexedSubscript:", 0), "isMemberOfClass:", objc_opt_class()) & 1) == 0)
    {
      range2 = [v7 range];
      v14 = range2 + (v13 >> 1);
      range3 = [v7 range];
      if (v5 <= v14)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      return [TSWPSelection selectionWithRange:range3 + v17, 0];
    }
  }

  return v7;
}

- (void)pulseAnimationDidStop:(id)stop
{
  pulseArrayController = self->_pulseArrayController;
  if (pulseArrayController == stop)
  {
    if ([(TSKHighlightArrayController *)pulseArrayController autohide])
    {
      [(TSWPRep *)self p_setPulseControllerActive:0 autohide:0];
      [(TSWPRep *)self p_updateForCurrentSelectionWithFlags:0];
      [(TSWPRep *)self invalidateKnobs];
      [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layoutInvalidated];
    }

    activeSearchReference = [(TSWPRep *)self activeSearchReference];

    [(TSWPSearchReference *)activeSearchReference setPulseHighlight:0];
  }
}

- (void)pulseAnimationDidStopForPulse:(id)pulse
{
  caretPulseController = self->_caretPulseController;
  if (caretPulseController == pulse)
  {

    self->_caretPulseController = 0;
    interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)interactiveCanvasController layoutInvalidated];
  }
}

- (void)p_setPulseControllerActive:(BOOL)active autohide:(BOOL)autohide
{
  pulseArrayController = self->_pulseArrayController;
  if (active)
  {
    autohideCopy = autohide;
    if (!pulseArrayController)
    {
      pulseArrayController = [[TSKHighlightArrayController alloc] initWithZOrder:self delegate:8.0];
      self->_pulseArrayController = pulseArrayController;
    }

    [(TSKHighlightArrayController *)pulseArrayController setShouldPulsate:1];
    [(TSKHighlightArrayController *)self->_pulseArrayController setAutohide:[(TSWPRep *)self shouldAlwaysAutoHide]| autohideCopy];
    layout = [(TSDRep *)self layout];
    if (layout)
    {
      [(TSDAbstractLayout *)layout transformInRoot];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
    }

    v8 = self->_pulseArrayController;
    v9[0] = v10;
    v9[1] = v11;
    v9[2] = v12;
    [(TSKHighlightArrayController *)v8 setTransform:v9];
    [(TSDCanvas *)self->super.super.mCanvas viewScale];
    [(TSKHighlightArrayController *)self->_pulseArrayController setViewScale:?];
  }

  else if (pulseArrayController)
  {

    self->_pulseArrayController = 0;
  }
}

- (void)p_activeFindHighlightChangedNotification:(id)notification
{
  userInfo = [notification userInfo];
  objc_opt_class();
  [userInfo objectForKeyedSubscript:@"TSKActiveSearchReferenceKey"];
  v5 = TSUDynamicCast();
  storage = [v5 storage];
  if (storage == -[TSWPRep storage](self, "storage") && (v7 = -[TSWPRep range](self, "range"), v9 = v8, v14.location = [objc_msgSend(v5 "selection")], v14.length = v10, v13.location = v7, v13.length = v9, NSIntersectionRange(v13, v14).length) || -[TSWPRep activeSearchReference](self, "activeSearchReference"))
  {
    [(TSWPRep *)self p_setActiveSearchReference:v5];
    canvas = [(TSDRep *)self canvas];

    [(TSDCanvas *)canvas invalidateLayers];
  }
}

- (void)p_setActiveSearchReference:(id)reference
{
  storage = [(TSWPRep *)self storage];
  if (storage == [reference storage])
  {
    if (![reference isEqual:{-[TSWPRep activeSearchReference](self, "activeSearchReference")}] || objc_msgSend(reference, "autohideHighlight"))
    {
      [(TSKHighlightArrayController *)self->_pulseArrayController stop];
      -[TSWPRep p_setPulseControllerActive:autohide:](self, "p_setPulseControllerActive:autohide:", reference != 0, [reference autohideHighlight]);
      [(TSWPRep *)self setActiveSearchReference:reference];
      pulseHighlight = [reference pulseHighlight];

      [(TSWPRep *)self p_updateAnimationWithAnimatingPulse:pulseHighlight];
    }
  }

  else
  {
    [(TSKHighlightArrayController *)self->_pulseArrayController stop];
    [(TSWPRep *)self p_setPulseControllerActive:0 autohide:0];

    [(TSWPRep *)self setActiveSearchReference:0];
  }
}

- (void)processFindUIStateChangedNotificationUserInfo:(id)info
{
  v4 = [info objectForKey:@"TSWPSearchReferencesToHighlightKey"];

  [(TSWPRep *)self p_setSearchReferencesToHighlight:v4];
}

- (void)p_findUIStateChangedNotification:(id)notification
{
  userInfo = [notification userInfo];

  [(TSWPRep *)self processFindUIStateChangedNotificationUserInfo:userInfo];
}

- (void)p_setSearchReferencesToHighlight:(id)highlight
{
  v4 = [highlight objectForKeyedSubscript:{-[TSWPRep storage](self, "storage")}];
  if ([(TSWPRep *)self searchReferences]!= v4)
  {
    [(TSWPRep *)self setSearchReferences:v4];
    [(TSWPRep *)self p_updateHighlights];
    [(TSDCanvas *)[(TSDRep *)self canvas] invalidateLayers];
  }

  [(TSWPRep *)self invalidateKnobs];
}

- (void)p_didDismissPopover:(id)popover
{
  self->_invalidateHUDState = 1;
  layout = [(TSDRep *)self layout];

  [(TSDLayout *)layout invalidate];
}

- (void)p_updateHighlights
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)[(TSWPRep *)self searchReferences] count];
  highlightArrayController = self->_highlightArrayController;
  if (v3)
  {
    if (!highlightArrayController)
    {
      self->_highlightArrayController = [[TSKHighlightArrayController alloc] initWithZOrder:self delegate:3.0];
    }

    layout = [(TSDRep *)self layout];
    if (layout)
    {
      [(TSDAbstractLayout *)layout transformInRoot];
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
    }

    v6 = self->_highlightArrayController;
    v19[0] = v20;
    v19[1] = v21;
    v19[2] = v22;
    [(TSKHighlightArrayController *)v6 setTransform:v19];
    [(TSDCanvas *)self->super.super.mCanvas viewScale];
    [(TSKHighlightArrayController *)self->_highlightArrayController setViewScale:?];
    [(TSKHighlightArrayController *)self->_highlightArrayController reset];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    searchReferences = [(TSWPRep *)self searchReferences];
    v8 = [(NSArray *)searchReferences countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(searchReferences);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [(TSWPRep *)self lineSearchReferencesForSearchReference:v12];
          if ([v13 count])
          {
            v14 = self->_highlightArrayController;
            [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
            [v12 setFindHighlights:{-[TSKHighlightArrayController buildHighlightsForSearchReferences:contentsScaleForLayers:](v14, "buildHighlightsForSearchReferences:contentsScaleForLayers:", v13)}];
          }
        }

        v9 = [(NSArray *)searchReferences countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v9);
    }
  }

  else if (highlightArrayController)
  {

    self->_highlightArrayController = 0;
  }
}

- (CGPath)newPathForSearchReference:(id)reference
{
  v41 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  [reference selection];
  v5 = TSUDynamicCast();
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  if ([v5 isRange])
  {
    if (![(TSWPRep *)self p_isSelectionSingleAnchoredDrawableAttachment])
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      columns = [(TSWPRep *)self columns];
      v11 = [(NSArray *)columns countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v36;
        do
        {
          v14 = 0;
          do
          {
            if (*v36 != v13)
            {
              objc_enumerationMutation(columns);
            }

            v15 = *(*(&v35 + 1) + 8 * v14);
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v16 = [v15 rectsForSelection:{v5, 0}];
            v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v32;
              do
              {
                v20 = 0;
                do
                {
                  if (*v32 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  [*(*(&v31 + 1) + 8 * v20) CGRectValue];
                  v22 = v21;
                  v24 = v23;
                  v26 = v25;
                  v28 = v27;
                  v42.origin.x = x;
                  v42.origin.y = y;
                  v42.size.width = width;
                  v42.size.height = height;
                  if (CGRectIsEmpty(v42))
                  {
                    x = v22;
                    y = v24;
                    width = v26;
                    height = v28;
                  }

                  else
                  {
                    v43.origin.x = x;
                    v43.origin.y = y;
                    v43.size.width = width;
                    v43.size.height = height;
                    v48.origin.x = v22;
                    v48.origin.y = v24;
                    v48.size.width = v26;
                    v48.size.height = v28;
                    v44 = CGRectUnion(v43, v48);
                    x = v44.origin.x;
                    y = v44.origin.y;
                    width = v44.size.width;
                    height = v44.size.height;
                  }

                  ++v20;
                }

                while (v18 != v20);
                v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
              }

              while (v18);
            }

            ++v14;
          }

          while (v14 != v12);
          v12 = [(NSArray *)columns countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v12);
      }
    }
  }

  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  if (CGRectIsEmpty(v45))
  {
    return 0;
  }

  Mutable = CGPathCreateMutable();
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v47 = CGRectIntegral(v46);
  CGPathAddRect(Mutable, 0, v47);
  return Mutable;
}

- (id)imageForSearchReference:(id)reference forPath:(CGPath *)path shouldPulsate:(BOOL)pulsate
{
  pulsateCopy = pulsate;
  objc_opt_class();
  [reference selection];
  v8 = TSUDynamicCast();

  return [(TSWPRep *)self textImageForSelection:v8 frame:0 usingGlyphRect:0 shouldPulsate:pulsateCopy suppressInvisibles:0];
}

- (id)hyperlinkRegionsConstrainedToLineAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v32 = *MEMORY[0x277D85DE8];
  v6 = [TSWPColumn closestColumnInColumnsArray:[(TSWPRep *)self columns] forPoint:0 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:point.x, point.y];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  [v6 frameBounds];
  v35.x = x;
  v35.y = y;
  if (!CGRectContainsPoint(v36, v35))
  {
    return 0;
  }

  v8 = [v7 charIndexFromPoint:0 allowPastBreak:0 pastCenterGoesToNextChar:1 allowNotFound:0 isAtEndOfLine:0 leadingEdge:{x, y}];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = [v7 lineFragmentForCharIndex:v8 knobTag:0 selectionType:0];
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  v11 = v9[1];
  v12 = [(TSWPStorage *)[(TSWPRep *)self storage] smartFieldsWithAttributeKind:6 intersectingRange:*v9, v11];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v12;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v25 = v7;
  v15 = 0;
  v16 = *v28;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v28 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v27 + 1) + 8 * i);
      objc_opt_class();
      v19 = TSUDynamicCast();
      v34.location = [v18 range];
      v34.length = v20;
      v33.location = v10;
      v33.length = v11;
      v21 = NSIntersectionRange(v33, v34);
      if (v19)
      {
        v22 = v21.location == 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = 1;
      }

      if (!v22 && v21.length != 0)
      {
        if (!v15)
        {
          v15 = objc_opt_new();
        }

        [v15 addObjectsFromArray:{objc_msgSend(v25, "rectsForSelectionRange:", v21.location, v21.length, v25)}];
      }
    }

    v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v14);
  return v15;
}

- (_NSRange)dragRange
{
  p_dragRange = &self->_dragRange;
  location = self->_dragRange.location;
  length = p_dragRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end