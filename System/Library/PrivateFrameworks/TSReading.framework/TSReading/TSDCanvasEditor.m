@interface TSDCanvasEditor
+ (BOOL)physicalKeyboardIsSender:(id)a3;
+ (id)canvasSelectionWithInfos:(id)a3;
+ (id)canvasSelectionWithInfos:(id)a3 andContainer:(id)a4;
- (BOOL)canDeleteComment;
- (BOOL)canGroupWithSender:(id)a3;
- (BOOL)canSelectAllWithSender:(id)a3;
- (BOOL)canUngroupWithSender:(id)a3;
- (BOOL)canvasEditorCanCopyWithSender:(id)a3;
- (BOOL)canvasEditorCanCutWithSender:(id)a3;
- (BOOL)canvasEditorCanDeleteWithSender:(id)a3;
- (BOOL)isRepSelectable:(id)a3;
- (BOOL)isSelectedInfo:(id)a3;
- (BOOL)shouldPushNewEditorForNewSelection;
- (CGRect)firstRectForRange:(_NSRange)a3;
- (Class)editorClassForSelection;
- (NSSet)infosForSelectAllInRoot;
- (TSDCanvasEditor)initWithInteractiveCanvasController:(id)a3;
- (TSPObject)modelForSelection;
- (UIView)inputView;
- (_NSRange)editRange;
- (_NSRange)markedRange;
- (_NSRange)rangeOfWordEnclosingCharIndex:(unint64_t)a3 backward:(BOOL)a4;
- (id)canvasSelectionWithInfos:(id)a3 andContainer:(id)a4;
- (id)drawables;
- (id)editorToPopToOnEndEditing;
- (id)keyCommands;
- (id)p_filterNonDisplayedInfos:(id)a3;
- (id)p_nextInfoInTabSequence:(int)a3;
- (id)p_spatiallySortedDrawables;
- (id)pasteboardController;
- (int)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (unint64_t)countOfDrawables;
- (void)beginAutomaticTextEditingIfNeededForPoint:(CGPoint)a3;
- (void)canvasInfosDidChange;
- (void)connectWithConnectionLine:(id)a3;
- (void)dealloc;
- (void)insertBacktab:(id)a3;
- (void)insertTab:(id)a3;
- (void)insertText:(id)a3;
- (void)p_notifyRepsForSelectionChangeFrom:(id)a3 to:(id)a4;
- (void)repWasCreated:(id)a3;
- (void)scrollToBeginningOfDocument:(id)a3;
- (void)scrollToEndOfDocument:(id)a3;
- (void)selectAll:(id)a3;
- (void)setSelection:(id)a3 withFlags:(unint64_t)a4;
- (void)setSelectionToInfo:(id)a3;
- (void)setSelectionToInfos:(id)a3;
- (void)setSelectionToRep:(id)a3;
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

- (void)insertText:(id)a3
{
  if ([a3 isEqualToString:@"\t"])
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

- (CGRect)firstRectForRange:(_NSRange)a3
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

- (_NSRange)rangeOfWordEnclosingCharIndex:(unint64_t)a3 backward:(BOOL)a4
{
  v4 = 0;
  v5 = 0;
  result.length = v5;
  result.location = v4;
  return result;
}

+ (id)canvasSelectionWithInfos:(id)a3
{
  v4 = objc_opt_class();

  return [v4 canvasSelectionWithInfos:a3 andContainer:0];
}

+ (id)canvasSelectionWithInfos:(id)a3 andContainer:(id)a4
{
  v6 = [a1 canvasEditorHelperClass];

  return [v6 canvasSelectionWithInfos:a3 andContainer:a4];
}

- (id)canvasSelectionWithInfos:(id)a3 andContainer:(id)a4
{
  v6 = [(TSDCanvasEditor *)self canvasEditorHelper];

  return [(TSDCanvasEditorHelper *)v6 canvasSelectionWithInfos:a3 andContainer:a4];
}

- (void)setSelectionToInfo:(id)a3
{
  if (a3)
  {
    a3 = [MEMORY[0x277CBEB98] setWithObject:?];
  }

  v4 = [(TSDCanvasEditor *)self canvasSelectionWithInfos:a3];

  [(TSDCanvasEditor *)self setSelection:v4];
}

- (void)setSelectionToInfos:(id)a3
{
  v4 = [(TSDCanvasEditor *)self canvasSelectionWithInfos:a3];

  [(TSDCanvasEditor *)self setSelection:v4];
}

- (BOOL)isRepSelectable:(id)a3
{
  v4 = [(TSDCanvasEditor *)self canvasEditorHelper];

  return [(TSDCanvasEditorHelper *)v4 isRepSelectable:a3];
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
  v2 = [(TSDCanvasEditor *)self canvasEditorHelper];

  return [(TSDCanvasEditorHelper *)v2 canDeleteComment];
}

- (TSDCanvasEditor)initWithInteractiveCanvasController:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSDCanvasEditor;
  v4 = [(TSDCanvasEditor *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mInteractiveCanvasController = a3;
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

- (BOOL)isSelectedInfo:(id)a3
{
  v4 = [(TSDCanvasSelection *)[(TSDCanvasEditor *)self canvasSelection] infos];

  return [(NSSet *)v4 containsObject:a3];
}

- (TSPObject)modelForSelection
{
  v2 = [(TSDInteractiveCanvasController *)self->mInteractiveCanvasController objectContext];

  return [(TSPObjectContext *)v2 documentObject];
}

- (void)canvasInfosDidChange
{
  v3 = [(TSDCanvasSelection *)self->mSelection infos];
  if ([(NSSet *)v3 count])
  {
    v4 = [(TSDCanvasEditor *)self p_filterNonDisplayedInfos:v3];
    if (v4 != v3)
    {
      v5 = [(TSDCanvasEditor *)self canvasSelectionWithInfos:v4];

      [(TSDCanvasEditor *)self setSelection:v5];
    }
  }
}

- (void)repWasCreated:(id)a3
{
  if ([a3 isSelectedIgnoringLocking])
  {

    [a3 becameSelected];
  }
}

- (id)p_filterNonDisplayedInfos:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:{-[TSDInteractiveCanvasController infosToDisplay](self->mInteractiveCanvasController, "infosToDisplay")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v7)
  {

LABEL_14:
    return a3;
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
        objc_enumerationMutation(a3);
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

    v8 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(TSDCanvasEditor *)self canvasEditorHelper];
  mSelection = self->mSelection;

  return [(TSDCanvasEditorHelper *)v3 editorClassForSelection:mSelection];
}

- (id)editorToPopToOnEndEditing
{
  v3 = [(TSDCanvasEditor *)self canvasEditorHelper];
  mSelection = self->mSelection;

  return [(TSDCanvasEditorHelper *)v3 editorToPopToOnEndEditingForSelection:mSelection];
}

- (unint64_t)countOfDrawables
{
  v2 = [(TSDCanvasEditor *)self drawables];

  return [v2 count];
}

- (id)drawables
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditor drawables]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditor.m"), 470, @"subclass responsibility"}];
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

- (void)setSelection:(id)a3 withFlags:(unint64_t)a4
{
  v6 = [(TSDCanvasEditor *)self interactiveCanvasController];
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7 != self->mSelection)
  {
    v8 = v7;
    if (![(TSDCanvasSelection *)v7 isEqual:?])
    {
      [-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](v6 "layerHost")];
      mSelection = self->mSelection;
      self->mSelection = v8;
      [(TSDCanvasEditorHelper *)[(TSDCanvasEditor *)self canvasEditorHelper] notifyRepsForSelectionChangeFrom:[(TSDCanvasSelection *)mSelection infos] to:[(TSDCanvasSelection *)self->mSelection infos]];

      [(TSDEditorController *)[(TSDInteractiveCanvasController *)v6 editorController] editorDidChangeSelection:self withSelectionFlags:a4];
      v10 = [(TSDCanvasEditor *)self canvasEditorHelper];
      v11 = self->mSelection;

      [(TSDCanvasEditorHelper *)v10 pushNewEditorForSelection:v11];
    }
  }
}

- (void)setSelectionToRep:(id)a3
{
  v4 = [(TSDCanvasEditorHelper *)[(TSDCanvasEditor *)self canvasEditorHelper] canvasSelectionFromRep:a3];

  [(TSDCanvasEditor *)self setSelection:v4];
}

- (id)pasteboardController
{
  v2 = [(TSDCanvasEditor *)self documentRoot];

  return [v2 pasteboardController];
}

- (void)beginAutomaticTextEditingIfNeededForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(TSDCanvasEditor *)self interactiveCanvasController];
  [(TSDInteractiveCanvasController *)v5 convertBoundsToUnscaledPoint:x, y];
  v6 = [(TSDInteractiveCanvasController *)v5 hitRep:0 withGesture:&__block_literal_global_81 passingTest:?];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 isEditing] & 1) == 0)
  {

    [(TSDInteractiveCanvasController *)v5 beginEditingRep:v6];
  }
}

+ (BOOL)physicalKeyboardIsSender:(id)a3
{
  v4 = [a1 canvasEditorHelperClass];

  return [v4 physicalKeyboardIsSender:a3];
}

- (BOOL)canvasEditorCanDeleteWithSender:(id)a3
{
  v3 = [(TSDCanvasEditor *)self canvasSelection];
  if (v3)
  {
    LOBYTE(v3) = [(TSDCanvasSelection *)v3 unlockedInfoCount]!= 0;
  }

  return v3;
}

- (BOOL)canvasEditorCanCopyWithSender:(id)a3
{
  v3 = [(TSDCanvasEditor *)self canvasSelection];
  if (v3)
  {
    LOBYTE(v3) = [(TSDCanvasSelection *)v3 unlockedInfoCount]!= 0;
  }

  return v3;
}

- (BOOL)canvasEditorCanCutWithSender:(id)a3
{
  v5 = [(TSDCanvasEditor *)self canvasEditorCanDeleteWithSender:?];
  if (v5)
  {

    LOBYTE(v5) = [(TSDCanvasEditor *)self canvasEditorCanCopyWithSender:a3];
  }

  return v5;
}

- (BOOL)canSelectAllWithSender:(id)a3
{
  if (!-[TSDCanvasSelection infoCount](-[TSDCanvasEditor canvasSelection](self, "canvasSelection"), "infoCount") || (v5 = [objc_opt_class() physicalKeyboardIsSender:a3]) != 0)
  {
    LOBYTE(v5) = [(TSDCanvasEditor *)self countOfDrawables]!= 0;
  }

  return v5;
}

- (BOOL)canGroupWithSender:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(TSDCanvasSelection *)self->mSelection infosOfClass:objc_opt_class()];
  v5 = [(TSDCanvasSelection *)self->mSelection infoCount];
  if (v5 == [v4 count])
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

- (BOOL)canUngroupWithSender:(id)a3
{
  v4 = [(TSDCanvasEditor *)self canvasEditorHelper];
  mSelection = self->mSelection;

  return [(TSDCanvasEditorHelper *)v4 canUngroupWithSelection:mSelection];
}

- (int)canPerformEditorAction:(SEL)a3 withSender:(id)a4
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
  result = [(TSDCanvasEditorHelper *)[(TSDCanvasEditor *)self canvasEditorHelper] canPerformEditorAction:a3 withSender:a4];
  if (!result)
  {
    v7 = 0;
    while (!sel_isEqual(a3, v8[v7]))
    {
      if (++v7 == 10)
      {
        result = 0;
        goto LABEL_8;
      }
    }

    result = 1;
LABEL_8:
    if (sel_select_ == a3)
    {
      return -1;
    }

    else if (sel_addOrShowComment_ == a3)
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
  v3 = [(TSDCanvasEditor *)self drawables];

  return [v2 setWithArray:v3];
}

- (void)selectAll:(id)a3
{
  v4 = [(TSDInteractiveCanvasController *)[(TSDCanvasEditor *)self interactiveCanvasController] topLevelContainerRepForEditing];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB98] setWithArray:{-[TSDContainerInfo childInfos](-[TSDContainerRep containerInfo](v4, "containerInfo"), "childInfos")}];
  }

  else
  {
    v5 = [(TSDCanvasEditor *)self infosForSelectAllInRoot];
  }

  [(TSDCanvasEditor *)self setSelectionToInfos:v5];
  v6 = [(TSDCanvasLayerHosting *)[(TSDInteractiveCanvasController *)self->mInteractiveCanvasController layerHost] asiOSCVC];
  mSelection = self->mSelection;

  [v6 showEditMenuForSelection:mSelection];
}

- (void)connectWithConnectionLine:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditor connectWithConnectionLine:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditor.m"), 1029, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDCanvasEditor connectWithConnectionLine:]"), 0}]);
}

- (id)p_nextInfoInTabSequence:(int)a3
{
  result = [(TSDCanvasEditor *)self countOfDrawables];
  if (!result)
  {
    return result;
  }

  v6 = [(TSDCanvasEditor *)self canvasSelection];
  v7 = [(TSDCanvasSelection *)v6 infoCount];
  v8 = [-[TSDCanvasEditor p_spatiallySortedDrawables](self "p_spatiallySortedDrawables")];
  v9 = v8;
  if (!a3 && !v7)
  {

    return [v8 firstObject];
  }

  if (a3 == 1 && !v7)
  {

    return [v8 lastObject];
  }

  v10 = [(TSDCanvasEditor *)self countOfDrawables];
  if (v10 - 1 >= 2)
  {
    v11 = v10 - 2;
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

  if (v7 == 1)
  {
    v27 = [v9 indexOfObject:{-[NSSet anyObject](-[TSDCanvasSelection infos](v6, "infos"), "anyObject")}];
  }

  else
  {
    v28 = [(NSArray *)[(NSSet *)[(TSDCanvasSelection *)[(TSDCanvasEditor *)self canvasSelection] infos] allObjects] mutableCopy];
    [v28 sortUsingComparator:&__block_literal_global_452];
    if (a3 == 1)
    {
      v29 = [v28 firstObject];
    }

    else
    {
      v29 = [v28 lastObject];
    }

    v27 = [v9 indexOfObject:v29];
  }

  if (v27 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = [MEMORY[0x277D6C290] currentHandler];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditor p_nextInfoInTabSequence:]"];
    [v30 handleFailureInFunction:v31 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditor.m"), 1140, @"couldn't find selected info in all drawables!"}];
    goto LABEL_28;
  }

  if (a3 != 1 || v27)
  {
LABEL_28:
    v32 = [(TSDCanvasEditor *)self countOfDrawables];
    if (a3 == 1)
    {
      v33 = v27 - 1;
    }

    else
    {
      v33 = v27 + 1;
    }

    v34 = v33 % v32;
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
  v2 = [(TSDCanvasEditor *)self drawables];

  return [v2 sortedArrayUsingComparator:&__block_literal_global_452];
}

- (void)insertTab:(id)a3
{
  v4 = [(TSDCanvasEditor *)self p_nextInfoInTabSequence:0];

  [(TSDCanvasEditor *)self setSelectionToInfo:v4];
}

- (void)insertBacktab:(id)a3
{
  v4 = [(TSDCanvasEditor *)self p_nextInfoInTabSequence:1];

  [(TSDCanvasEditor *)self setSelectionToInfo:v4];
}

- (void)scrollToBeginningOfDocument:(id)a3
{
  v3 = [(TSDCanvasEditor *)self interactiveCanvasController];
  [-[TSDCanvasLayerHosting canvasLayer](-[TSDInteractiveCanvasController layerHost](v3 "layerHost")];
  v5 = v4;
  [(TSDInteractiveCanvasController *)v3 contentOffset];
  v7 = v6;
  [(TSDInteractiveCanvasController *)v3 viewScale];

  [(TSDInteractiveCanvasController *)v3 setContentOffset:0 animated:v7, v5 / v8];
}

- (void)scrollToEndOfDocument:(id)a3
{
  v3 = [(TSDCanvasEditor *)self interactiveCanvasController];
  [(TSDCanvasView *)[(TSDInteractiveCanvasController *)v3 canvasView] bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(TSDInteractiveCanvasController *)v3 contentOffset];
  v13 = v12;
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  MaxY = CGRectGetMaxY(v16);

  [(TSDInteractiveCanvasController *)v3 setContentOffset:0 animated:v13, MaxY];
}

- (void)p_notifyRepsForSelectionChangeFrom:(id)a3 to:(id)a4
{
  v6 = [(TSDCanvasEditor *)self canvasEditorHelper];

  [(TSDCanvasEditorHelper *)v6 notifyRepsForSelectionChangeFrom:a3 to:a4];
}

@end