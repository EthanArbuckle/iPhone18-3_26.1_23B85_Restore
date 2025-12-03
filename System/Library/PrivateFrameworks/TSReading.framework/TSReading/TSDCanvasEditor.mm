@interface TSDCanvasEditor
+ (BOOL)physicalKeyboardIsSender:(id)sender;
+ (id)canvasSelectionWithInfos:(id)infos;
+ (id)canvasSelectionWithInfos:(id)infos andContainer:(id)container;
- (BOOL)canDeleteComment;
- (BOOL)canGroupWithSender:(id)sender;
- (BOOL)canSelectAllWithSender:(id)sender;
- (BOOL)canUngroupWithSender:(id)sender;
- (BOOL)canvasEditorCanCopyWithSender:(id)sender;
- (BOOL)canvasEditorCanCutWithSender:(id)sender;
- (BOOL)canvasEditorCanDeleteWithSender:(id)sender;
- (BOOL)isRepSelectable:(id)selectable;
- (BOOL)isSelectedInfo:(id)info;
- (BOOL)shouldPushNewEditorForNewSelection;
- (CGRect)firstRectForRange:(_NSRange)range;
- (Class)editorClassForSelection;
- (NSSet)infosForSelectAllInRoot;
- (TSDCanvasEditor)initWithInteractiveCanvasController:(id)controller;
- (TSPObject)modelForSelection;
- (UIView)inputView;
- (_NSRange)editRange;
- (_NSRange)markedRange;
- (_NSRange)rangeOfWordEnclosingCharIndex:(unint64_t)index backward:(BOOL)backward;
- (id)canvasSelectionWithInfos:(id)infos andContainer:(id)container;
- (id)drawables;
- (id)editorToPopToOnEndEditing;
- (id)keyCommands;
- (id)p_filterNonDisplayedInfos:(id)infos;
- (id)p_nextInfoInTabSequence:(int)sequence;
- (id)p_spatiallySortedDrawables;
- (id)pasteboardController;
- (int)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (unint64_t)countOfDrawables;
- (void)beginAutomaticTextEditingIfNeededForPoint:(CGPoint)point;
- (void)canvasInfosDidChange;
- (void)connectWithConnectionLine:(id)line;
- (void)dealloc;
- (void)insertBacktab:(id)backtab;
- (void)insertTab:(id)tab;
- (void)insertText:(id)text;
- (void)p_notifyRepsForSelectionChangeFrom:(id)from to:(id)to;
- (void)repWasCreated:(id)created;
- (void)scrollToBeginningOfDocument:(id)document;
- (void)scrollToEndOfDocument:(id)document;
- (void)selectAll:(id)all;
- (void)setSelection:(id)selection withFlags:(unint64_t)flags;
- (void)setSelectionToInfo:(id)info;
- (void)setSelectionToInfos:(id)infos;
- (void)setSelectionToRep:(id)rep;
@end

@implementation TSDCanvasEditor

- (UIView)inputView
{
  result = self->mInputView;
  if (!result)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    result = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    self->mInputView = result;
  }

  return result;
}

- (void)insertText:(id)text
{
  if ([text isEqualToString:@"\t"])
  {

    [(TSDCanvasEditor *)self insertTab:0];
  }
}

- (_NSRange)markedRange
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)editRange
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (CGRect)firstRectForRange:(_NSRange)range
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (_NSRange)rangeOfWordEnclosingCharIndex:(unint64_t)index backward:(BOOL)backward
{
  v4 = 0;
  v5 = 0;
  result.length = v5;
  result.location = v4;
  return result;
}

+ (id)canvasSelectionWithInfos:(id)infos
{
  v4 = objc_opt_class();

  return [v4 canvasSelectionWithInfos:infos andContainer:0];
}

+ (id)canvasSelectionWithInfos:(id)infos andContainer:(id)container
{
  canvasEditorHelperClass = [self canvasEditorHelperClass];

  return [canvasEditorHelperClass canvasSelectionWithInfos:infos andContainer:container];
}

- (id)canvasSelectionWithInfos:(id)infos andContainer:(id)container
{
  canvasEditorHelper = [(TSDCanvasEditor *)self canvasEditorHelper];

  return [(TSDCanvasEditorHelper *)canvasEditorHelper canvasSelectionWithInfos:infos andContainer:container];
}

- (void)setSelectionToInfo:(id)info
{
  if (info)
  {
    info = [MEMORY[0x277CBEB98] setWithObject:?];
  }

  v4 = [(TSDCanvasEditor *)self canvasSelectionWithInfos:info];

  [(TSDCanvasEditor *)self setSelection:v4];
}

- (void)setSelectionToInfos:(id)infos
{
  v4 = [(TSDCanvasEditor *)self canvasSelectionWithInfos:infos];

  [(TSDCanvasEditor *)self setSelection:v4];
}

- (BOOL)isRepSelectable:(id)selectable
{
  canvasEditorHelper = [(TSDCanvasEditor *)self canvasEditorHelper];

  return [(TSDCanvasEditorHelper *)canvasEditorHelper isRepSelectable:selectable];
}

- (id)keyCommands
{
  if (keyCommands_onceToken != -1)
  {
    [TSDCanvasEditor keyCommands];
  }

  return keyCommands_s_keyCommands;
}

id __30__TSDCanvasEditor_keyCommands__block_invoke()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = [MEMORY[0x277D75650] keyCommandWithInput:@"k" modifierFlags:1179648 action:sel_addOrShowComment_];
  v1[1] = [MEMORY[0x277D75650] keyCommandWithInput:@"k" modifierFlags:1572864 action:sel_nextAnnotation_];
  v1[2] = [MEMORY[0x277D75650] keyCommandWithInput:@"k" modifierFlags:1703936 action:sel_previousAnnotation_];
  v1[3] = [MEMORY[0x277D75650] keyCommandWithInput:@"d" modifierFlags:0x100000 action:sel_duplicate_];
  keyCommands_s_keyCommands = [MEMORY[0x277CBEA60] arrayWithObjects:v1 count:4];
  return keyCommands_s_keyCommands;
}

- (BOOL)canDeleteComment
{
  canvasEditorHelper = [(TSDCanvasEditor *)self canvasEditorHelper];

  return [(TSDCanvasEditorHelper *)canvasEditorHelper canDeleteComment];
}

- (TSDCanvasEditor)initWithInteractiveCanvasController:(id)controller
{
  v7.receiver = self;
  v7.super_class = TSDCanvasEditor;
  v4 = [(TSDCanvasEditor *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mInteractiveCanvasController = controller;
    v4->mCanvasEditorHelper = [objc_alloc(objc_msgSend(objc_opt_class() "canvasEditorHelperClass"))];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDCanvasEditor;
  [(TSDCanvasEditor *)&v3 dealloc];
}

- (BOOL)isSelectedInfo:(id)info
{
  infos = [(TSDCanvasSelection *)[(TSDCanvasEditor *)self canvasSelection] infos];

  return [(NSSet *)infos containsObject:info];
}

- (TSPObject)modelForSelection
{
  objectContext = [(TSDInteractiveCanvasController *)self->mInteractiveCanvasController objectContext];

  return [(TSPObjectContext *)objectContext documentObject];
}

- (void)canvasInfosDidChange
{
  infos = [(TSDCanvasSelection *)self->mSelection infos];
  if ([(NSSet *)infos count])
  {
    v4 = [(TSDCanvasEditor *)self p_filterNonDisplayedInfos:infos];
    if (v4 != infos)
    {
      v5 = [(TSDCanvasEditor *)self canvasSelectionWithInfos:v4];

      [(TSDCanvasEditor *)self setSelection:v5];
    }
  }
}

- (void)repWasCreated:(id)created
{
  if ([created isSelectedIgnoringLocking])
  {

    [created becameSelected];
  }
}

- (id)p_filterNonDisplayedInfos:(id)infos
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:{-[TSDInteractiveCanvasController infosToDisplay](self->mInteractiveCanvasController, "infosToDisplay")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [infos countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v7)
  {

LABEL_14:
    return infos;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v15;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(infos);
      }

      v12 = *(*(&v14 + 1) + 8 * i);
      if ([v6 containsObject:TSDTopmostInfoFromInfo(v12)])
      {
        [v5 addObject:v12];
      }

      else
      {
        v9 = 1;
      }
    }

    v8 = [infos countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_14;
  }

  return v5;
}

- (Class)editorClassForSelection
{
  canvasEditorHelper = [(TSDCanvasEditor *)self canvasEditorHelper];
  mSelection = self->mSelection;

  return [(TSDCanvasEditorHelper *)canvasEditorHelper editorClassForSelection:mSelection];
}

- (id)editorToPopToOnEndEditing
{
  canvasEditorHelper = [(TSDCanvasEditor *)self canvasEditorHelper];
  mSelection = self->mSelection;

  return [(TSDCanvasEditorHelper *)canvasEditorHelper editorToPopToOnEndEditingForSelection:mSelection];
}

- (unint64_t)countOfDrawables
{
  drawables = [(TSDCanvasEditor *)self drawables];

  return [drawables count];
}

- (id)drawables
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditor drawables]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditor.m"), 470, @"subclass responsibility"}];
  return 0;
}

- (BOOL)shouldPushNewEditorForNewSelection
{
  mSelection = self->mSelection;
  if (mSelection)
  {
    LOBYTE(mSelection) = [(TSDCanvasSelection *)mSelection infoCount]!= 0;
  }

  return mSelection;
}

- (void)setSelection:(id)selection withFlags:(unint64_t)flags
{
  interactiveCanvasController = [(TSDCanvasEditor *)self interactiveCanvasController];
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7 != self->mSelection)
  {
    v8 = v7;
    if (![(TSDCanvasSelection *)v7 isEqual:?])
    {
      [-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](interactiveCanvasController "layerHost")];
      mSelection = self->mSelection;
      self->mSelection = v8;
      [(TSDCanvasEditorHelper *)[(TSDCanvasEditor *)self canvasEditorHelper] notifyRepsForSelectionChangeFrom:[(TSDCanvasSelection *)mSelection infos] to:[(TSDCanvasSelection *)self->mSelection infos]];

      [(TSDEditorController *)[(TSDInteractiveCanvasController *)interactiveCanvasController editorController] editorDidChangeSelection:self withSelectionFlags:flags];
      canvasEditorHelper = [(TSDCanvasEditor *)self canvasEditorHelper];
      v11 = self->mSelection;

      [(TSDCanvasEditorHelper *)canvasEditorHelper pushNewEditorForSelection:v11];
    }
  }
}

- (void)setSelectionToRep:(id)rep
{
  v4 = [(TSDCanvasEditorHelper *)[(TSDCanvasEditor *)self canvasEditorHelper] canvasSelectionFromRep:rep];

  [(TSDCanvasEditor *)self setSelection:v4];
}

- (id)pasteboardController
{
  documentRoot = [(TSDCanvasEditor *)self documentRoot];

  return [documentRoot pasteboardController];
}

- (void)beginAutomaticTextEditingIfNeededForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactiveCanvasController = [(TSDCanvasEditor *)self interactiveCanvasController];
  [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:x, y];
  v6 = [(TSDInteractiveCanvasController *)interactiveCanvasController hitRep:0 withGesture:&__block_literal_global_81 passingTest:?];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 isEditing] & 1) == 0)
  {

    [(TSDInteractiveCanvasController *)interactiveCanvasController beginEditingRep:v6];
  }
}

+ (BOOL)physicalKeyboardIsSender:(id)sender
{
  canvasEditorHelperClass = [self canvasEditorHelperClass];

  return [canvasEditorHelperClass physicalKeyboardIsSender:sender];
}

- (BOOL)canvasEditorCanDeleteWithSender:(id)sender
{
  canvasSelection = [(TSDCanvasEditor *)self canvasSelection];
  if (canvasSelection)
  {
    LOBYTE(canvasSelection) = [(TSDCanvasSelection *)canvasSelection unlockedInfoCount]!= 0;
  }

  return canvasSelection;
}

- (BOOL)canvasEditorCanCopyWithSender:(id)sender
{
  canvasSelection = [(TSDCanvasEditor *)self canvasSelection];
  if (canvasSelection)
  {
    LOBYTE(canvasSelection) = [(TSDCanvasSelection *)canvasSelection unlockedInfoCount]!= 0;
  }

  return canvasSelection;
}

- (BOOL)canvasEditorCanCutWithSender:(id)sender
{
  v5 = [(TSDCanvasEditor *)self canvasEditorCanDeleteWithSender:?];
  if (v5)
  {

    LOBYTE(v5) = [(TSDCanvasEditor *)self canvasEditorCanCopyWithSender:sender];
  }

  return v5;
}

- (BOOL)canSelectAllWithSender:(id)sender
{
  if (!-[TSDCanvasSelection infoCount](-[TSDCanvasEditor canvasSelection](self, "canvasSelection"), "infoCount") || (v5 = [objc_opt_class() physicalKeyboardIsSender:sender]) != 0)
  {
    LOBYTE(v5) = [(TSDCanvasEditor *)self countOfDrawables]!= 0;
  }

  return v5;
}

- (BOOL)canGroupWithSender:(id)sender
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(TSDCanvasSelection *)self->mSelection infosOfClass:objc_opt_class()];
  infoCount = [(TSDCanvasSelection *)self->mSelection infoCount];
  if (infoCount == [v4 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v4);
          }

          if ([(TSDCanvasEditor *)self canGroupDrawable:*(*(&v12 + 1) + 8 * i)])
          {
            LOBYTE(v6) = 1;
            if (v8)
            {
              return v6;
            }

            v8 = 1;
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        LOBYTE(v6) = 0;
      }

      while (v7);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)canUngroupWithSender:(id)sender
{
  canvasEditorHelper = [(TSDCanvasEditor *)self canvasEditorHelper];
  mSelection = self->mSelection;

  return [(TSDCanvasEditorHelper *)canvasEditorHelper canUngroupWithSelection:mSelection];
}

- (int)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = sel_deleteBackward_;
  v8[1] = sel_deleteForward_;
  v8[2] = sel_deleteToBeginningOfLine_;
  v8[3] = sel_deleteToEndOfLine_;
  v8[4] = sel_deleteWordBackward_;
  v8[5] = sel_deleteWordForward_;
  v8[6] = sel_insertTab_;
  v8[7] = sel_insertBacktab_;
  v8[8] = sel_scrollToBeginningOfDocument_;
  v8[9] = sel_scrollToEndOfDocument_;
  result = [(TSDCanvasEditorHelper *)[(TSDCanvasEditor *)self canvasEditorHelper] canPerformEditorAction:action withSender:sender];
  if (!result)
  {
    v7 = 0;
    while (!sel_isEqual(action, v8[v7]))
    {
      if (++v7 == 10)
      {
        result = 0;
        goto LABEL_8;
      }
    }

    result = 1;
LABEL_8:
    if (sel_select_ == action)
    {
      return -1;
    }

    else if (sel_addOrShowComment_ == action)
    {
      if ([(TSDCanvasEditor *)self canAddOrShowComment])
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }
  }

  return result;
}

- (NSSet)infosForSelectAllInRoot
{
  v2 = MEMORY[0x277CBEB98];
  drawables = [(TSDCanvasEditor *)self drawables];

  return [v2 setWithArray:drawables];
}

- (void)selectAll:(id)all
{
  topLevelContainerRepForEditing = [(TSDInteractiveCanvasController *)[(TSDCanvasEditor *)self interactiveCanvasController] topLevelContainerRepForEditing];
  if (topLevelContainerRepForEditing)
  {
    infosForSelectAllInRoot = [MEMORY[0x277CBEB98] setWithArray:{-[TSDContainerInfo childInfos](-[TSDContainerRep containerInfo](topLevelContainerRepForEditing, "containerInfo"), "childInfos")}];
  }

  else
  {
    infosForSelectAllInRoot = [(TSDCanvasEditor *)self infosForSelectAllInRoot];
  }

  [(TSDCanvasEditor *)self setSelectionToInfos:infosForSelectAllInRoot];
  asiOSCVC = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self->mInteractiveCanvasController layerHost] asiOSCVC];
  mSelection = self->mSelection;

  [asiOSCVC showEditMenuForSelection:mSelection];
}

- (void)connectWithConnectionLine:(id)line
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditor connectWithConnectionLine:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditor.m"), 1029, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDCanvasEditor connectWithConnectionLine:]"), 0}]);
}

- (id)p_nextInfoInTabSequence:(int)sequence
{
  result = [(TSDCanvasEditor *)self countOfDrawables];
  if (!result)
  {
    return result;
  }

  canvasSelection = [(TSDCanvasEditor *)self canvasSelection];
  infoCount = [(TSDCanvasSelection *)canvasSelection infoCount];
  v8 = [-[TSDCanvasEditor p_spatiallySortedDrawables](self "p_spatiallySortedDrawables")];
  v9 = v8;
  if (!sequence && !infoCount)
  {

    return [v8 firstObject];
  }

  if (sequence == 1 && !infoCount)
  {

    return [v8 lastObject];
  }

  countOfDrawables = [(TSDCanvasEditor *)self countOfDrawables];
  if (countOfDrawables - 1 >= 2)
  {
    v11 = countOfDrawables - 2;
    do
    {
      v12 = [objc_msgSend(v9 objectAtIndex:{v11 + 1), "geometry"}];
      v13 = [objc_msgSend(v9 objectAtIndex:{v11), "geometry"}];
      [v13 size];
      v15 = v14;
      [v12 position];
      v17 = v16;
      [v13 position];
      if (v17 < v18)
      {
        v19 = v15 * 0.33;
        [v13 position];
        v21 = v20;
        [v12 position];
        if (v21 >= v22 - v19)
        {
          [v13 position];
          v24 = v23;
          [v12 position];
          if (v24 < v19 + v25)
          {
            [v9 exchangeObjectAtIndex:v11 + 1 withObjectAtIndex:v11];
          }
        }
      }
    }

    while (v11-- > 1);
  }

  if (infoCount == 1)
  {
    v27 = [v9 indexOfObject:{-[NSSet anyObject](-[TSDCanvasSelection infos](canvasSelection, "infos"), "anyObject")}];
  }

  else
  {
    v28 = [(NSArray *)[(NSSet *)[(TSDCanvasSelection *)[(TSDCanvasEditor *)self canvasSelection] infos] allObjects] mutableCopy];
    [v28 sortUsingComparator:&__block_literal_global_452];
    if (sequence == 1)
    {
      firstObject = [v28 firstObject];
    }

    else
    {
      firstObject = [v28 lastObject];
    }

    v27 = [v9 indexOfObject:firstObject];
  }

  if (v27 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditor p_nextInfoInTabSequence:]"];
    [currentHandler handleFailureInFunction:v31 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditor.m"), 1140, @"couldn't find selected info in all drawables!"}];
    goto LABEL_28;
  }

  if (sequence != 1 || v27)
  {
LABEL_28:
    countOfDrawables2 = [(TSDCanvasEditor *)self countOfDrawables];
    if (sequence == 1)
    {
      v33 = v27 - 1;
    }

    else
    {
      v33 = v27 + 1;
    }

    v34 = v33 % countOfDrawables2;
    goto LABEL_35;
  }

  v34 = [(TSDCanvasEditor *)self countOfDrawables]- 1;
LABEL_35:
  objc_opt_class();
  [v9 objectAtIndex:v34];

  return TSUDynamicCast();
}

- (id)p_spatiallySortedDrawables
{
  drawables = [(TSDCanvasEditor *)self drawables];

  return [drawables sortedArrayUsingComparator:&__block_literal_global_452];
}

- (void)insertTab:(id)tab
{
  v4 = [(TSDCanvasEditor *)self p_nextInfoInTabSequence:0];

  [(TSDCanvasEditor *)self setSelectionToInfo:v4];
}

- (void)insertBacktab:(id)backtab
{
  v4 = [(TSDCanvasEditor *)self p_nextInfoInTabSequence:1];

  [(TSDCanvasEditor *)self setSelectionToInfo:v4];
}

- (void)scrollToBeginningOfDocument:(id)document
{
  interactiveCanvasController = [(TSDCanvasEditor *)self interactiveCanvasController];
  [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](interactiveCanvasController "layerHost")];
  v5 = v4;
  [(TSDInteractiveCanvasController *)interactiveCanvasController contentOffset];
  v7 = v6;
  [(TSDInteractiveCanvasController *)interactiveCanvasController viewScale];

  [(TSDInteractiveCanvasController *)interactiveCanvasController setContentOffset:0 animated:v7, v5 / v8];
}

- (void)scrollToEndOfDocument:(id)document
{
  interactiveCanvasController = [(TSDCanvasEditor *)self interactiveCanvasController];
  [(TSDCanvasView *)[(TSDInteractiveCanvasController *)interactiveCanvasController canvasView] bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(TSDInteractiveCanvasController *)interactiveCanvasController contentOffset];
  v13 = v12;
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  MaxY = CGRectGetMaxY(v16);

  [(TSDInteractiveCanvasController *)interactiveCanvasController setContentOffset:0 animated:v13, MaxY];
}

- (void)p_notifyRepsForSelectionChangeFrom:(id)from to:(id)to
{
  canvasEditorHelper = [(TSDCanvasEditor *)self canvasEditorHelper];

  [(TSDCanvasEditorHelper *)canvasEditorHelper notifyRepsForSelectionChangeFrom:from to:to];
}

@end