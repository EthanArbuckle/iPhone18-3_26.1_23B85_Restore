@interface TSDCanvasEditorHelper
+ (BOOL)physicalKeyboardIsSender:(id)sender;
+ (id)canvasSelectionWithInfos:(id)infos;
+ (id)canvasSelectionWithInfos:(id)infos andContainer:(id)container;
- (BOOL)canGroupDrawables:(id)drawables;
- (BOOL)canPerformMaskWithSender:(id)sender;
- (BOOL)canPerformMaskWithShapeTypeWithSender:(id)sender;
- (BOOL)canPerformMaskWithShapeWithSender:(id)sender;
- (BOOL)canPerformUnmaskWithSender:(id)sender;
- (BOOL)canUngroupWithSelection:(id)selection;
- (BOOL)p_canReduceFileSizeForSelectedImages;
- (BOOL)p_selectionContainsInlineObjects:(id)objects;
- (Class)p_editorClassForSelection:(id)selection shouldIgnoreLockedState:(BOOL)state;
- (TSDCanvasEditorHelper)initWithCanvasEditor:(id)editor;
- (id)canvasSelectionFromRep:(id)rep;
- (id)canvasSelectionWithInfos:(id)infos;
- (id)canvasSelectionWithInfos:(id)infos andContainer:(id)container;
- (id)documentRoot;
- (id)editorToPopToOnEndEditingForSelection:(id)selection;
- (id)interactiveCanvasController;
- (id)layoutsForAlignAndDistribute;
- (int)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (int)canvasEditorCanPerformAlignAction:(SEL)action withSender:(id)sender;
- (int)canvasEditorCanPerformConnectWithConnectionLineAction:(SEL)action withSender:(id)sender;
- (int)canvasEditorCanPerformCopyAction:(SEL)action withSender:(id)sender;
- (int)canvasEditorCanPerformCopyStyleAction:(SEL)action withSender:(id)sender;
- (int)canvasEditorCanPerformCutAction:(SEL)action withSender:(id)sender;
- (int)canvasEditorCanPerformDeleteAction:(SEL)action withSender:(id)sender;
- (int)canvasEditorCanPerformDistributeAction:(SEL)action withSender:(id)sender;
- (int)canvasEditorCanPerformDuplicateAction:(SEL)action withSender:(id)sender;
- (int)canvasEditorCanPerformGroupAction:(SEL)action withSender:(id)sender;
- (int)canvasEditorCanPerformLockAction:(SEL)action withSender:(id)sender;
- (int)canvasEditorCanPerformSelectAllAction:(SEL)action withSender:(id)sender;
- (int)canvasEditorCanPerformUngroupAction:(SEL)action withSender:(id)sender;
- (void)asyncProcessChanges:(id)changes forChangeSource:(id)source;
- (void)dealloc;
- (void)notifyRepsForSelectionChangeFrom:(id)from to:(id)to;
- (void)p_copy:(id)p_copy;
- (void)pushNewEditorForSelection:(id)selection;
- (void)teardown;
@end

@implementation TSDCanvasEditorHelper

- (TSDCanvasEditorHelper)initWithCanvasEditor:(id)editor
{
  v10.receiver = self;
  v10.super_class = TSDCanvasEditorHelper;
  v4 = [(TSDCanvasEditorHelper *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->mCanvasEditor = editor;
    mChangeNotifier = [-[TSDCanvasEditorHelper documentRoot](v4 "documentRoot")];
    v5->mChangeNotifier = mChangeNotifier;
    if (!mChangeNotifier)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditorHelper initWithCanvasEditor:]"];
      [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditorHelper.m"), 189, @"invalid nil value for '%s'", "mChangeNotifier"}];
      mChangeNotifier = v5->mChangeNotifier;
    }

    [(TSKChangeNotifier *)mChangeNotifier addObserver:v5 forChangeSourceOfClass:objc_opt_class()];
    v5->mTornDown = 0;
  }

  return v5;
}

- (id)documentRoot
{
  canvasEditor = [(TSDCanvasEditorHelper *)self canvasEditor];

  return [canvasEditor documentRoot];
}

- (id)interactiveCanvasController
{
  canvasEditor = [(TSDCanvasEditorHelper *)self canvasEditor];

  return [canvasEditor interactiveCanvasController];
}

- (void)teardown
{
  [(TSKChangeNotifier *)self->mChangeNotifier removeObserver:self forChangeSourceOfClass:objc_opt_class()];

  self->mChangeNotifier = 0;
  self->mTornDown = 1;
}

- (void)dealloc
{
  if (!self->mTornDown)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditorHelper dealloc]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditorHelper.m"), 248, @"Need to call teardown on the editor helper"}];
  }

  v5.receiver = self;
  v5.super_class = TSDCanvasEditorHelper;
  [(TSDCanvasEditorHelper *)&v5 dealloc];
}

- (void)asyncProcessChanges:(id)changes forChangeSource:(id)source
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [changes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(changes);
        }

        if ([*(*(&v10 + 1) + 8 * i) kind] == 5)
        {
          -[TSDCanvasEditorHelper pushNewEditorForSelection:](self, "pushNewEditorForSelection:", [-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")]);
          return;
        }
      }

      v7 = [changes countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

- (void)notifyRepsForSelectionChangeFrom:(id)from to:(id)to
{
  v52 = *MEMORY[0x277D85DE8];
  interactiveCanvasController = [(TSDCanvasEditorHelper *)self interactiveCanvasController];
  if (from && [from count])
  {
    fromCopy = from;
    v7 = [from mutableCopy];
    v8 = v7;
    if (to)
    {
      [v7 minusSet:to];
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v45;
      do
      {
        v12 = 0;
        do
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v44 + 1) + 8 * v12);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v14 = [interactiveCanvasController repsForInfo:v13];
          v15 = [v14 countByEnumeratingWithState:&v40 objects:v50 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v41;
            do
            {
              v18 = 0;
              do
              {
                if (*v41 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                [*(*(&v40 + 1) + 8 * v18++) becameNotSelected];
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v40 objects:v50 count:16];
            }

            while (v16);
          }

          ++v12;
        }

        while (v12 != v10);
        v10 = [v8 countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v10);
    }

    from = fromCopy;
  }

  if (to && [to count])
  {
    v19 = [to mutableCopy];
    v20 = v19;
    if (from)
    {
      [v19 minusSet:from];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      do
      {
        v24 = 0;
        do
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v36 + 1) + 8 * v24);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v26 = [interactiveCanvasController repsForInfo:v25];
          v27 = [v26 countByEnumeratingWithState:&v32 objects:v48 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v33;
            do
            {
              v30 = 0;
              do
              {
                if (*v33 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                [*(*(&v32 + 1) + 8 * v30++) becameSelected];
              }

              while (v28 != v30);
              v28 = [v26 countByEnumeratingWithState:&v32 objects:v48 count:16];
            }

            while (v28);
          }

          ++v24;
        }

        while (v24 != v22);
        v22 = [v20 countByEnumeratingWithState:&v36 objects:v49 count:16];
      }

      while (v22);
    }
  }
}

- (Class)p_editorClassForSelection:(id)selection shouldIgnoreLockedState:(BOOL)state
{
  v21 = *MEMORY[0x277D85DE8];
  if (![objc_msgSend(selection "infos")])
  {
    return 0;
  }

  [objc_msgSend(selection "infos")];
  objc_opt_class();
  v5 = TSUClassAndProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  editorClass = [v5 editorClass];
  if (editorClass)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = [selection infos];
    v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v17;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = TSUProtocolCast();
        if (objc_opt_respondsToSelector())
        {
          editorClass2 = [v12 editorClass];
        }

        else
        {
          editorClass2 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          v9 |= [editorClass2 shouldSuppressMultiselection];
        }

        if (!editorClass2 || (v9 & 1) != 0 && editorClass2 != editorClass)
        {
          return 0;
        }

        if (([editorClass2 isSubclassOfClass:editorClass] & 1) == 0 && editorClass2 != editorClass)
        {
          editorClass = [editorClass superclass];
          if (([editorClass2 isSubclassOfClass:editorClass] & 1) == 0)
          {
            do
            {
              editorClass = [editorClass superclass];
            }

            while (![editorClass2 isSubclassOfClass:editorClass]);
          }

          if (objc_opt_class() != editorClass && ![editorClass isSubclassOfClass:objc_opt_class()])
          {
            return 0;
          }
        }

        if (++v11 == v8)
        {
          v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v8)
          {
            goto LABEL_6;
          }

          return editorClass;
        }
      }
    }
  }

  return editorClass;
}

- (id)editorToPopToOnEndEditingForSelection:(id)selection
{
  canvasEditor = [(TSDCanvasEditorHelper *)self canvasEditor];
  v6 = [-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")];
  v7 = [(TSDCanvasEditorHelper *)self editorClassForSelection:selection];
  if (!v7)
  {
    return canvasEditor;
  }

  v8 = v7;
  editorController = [v6 editorController];

  return [editorController mostSpecificCurrentEditorOfClass:v8];
}

- (void)pushNewEditorForSelection:(id)selection
{
  canvasEditor = [(TSDCanvasEditorHelper *)self canvasEditor];
  v6 = [-[TSDCanvasEditorHelper interactiveCanvasController](self "interactiveCanvasController")];
  [v6 beginTransaction];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__17;
  v16 = __Block_byref_object_dispose__17;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__TSDCanvasEditorHelper_pushNewEditorForSelection___block_invoke;
  v11[3] = &unk_279D495B8;
  v11[4] = selection;
  v11[5] = &v12;
  [v6 enumerateEditorsOnStackUsingBlock:v11];
  [v6 popToEditor:canvasEditor];
  if ([canvasEditor shouldPushNewEditorForNewSelection])
  {
    v7 = [(TSDCanvasEditorHelper *)self editorClassForSelection:selection];
    if (v7)
    {
      v8 = [(TSDCanvasEditorHelper *)self newEditorForEditorClass:v7];
      if (v8)
      {
LABEL_4:
        [v6 pushEditor:v8];

        goto LABEL_9;
      }

      if ([(objc_class *)v7 isSubclassOfClass:objc_opt_class()])
      {
        v8 = [[v7 alloc] initWithInteractiveCanvasController:{-[TSDCanvasEditorHelper interactiveCanvasController](self, "interactiveCanvasController")}];
        [v8 setInfos:{-[TSDCanvasEditorHelper infosFromCanvasSelection:](self, "infosFromCanvasSelection:", objc_msgSend(canvasEditor, "canvasSelection"))}];
        if (v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditorHelper pushNewEditorForSelection:]"];
        [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditorHelper.m"), 486, @"Unknown editor class"}];
      }
    }
  }

LABEL_9:
  if (v13[5])
  {
    [v6 pushEditor:?];
  }

  [v6 endTransaction];
  _Block_object_dispose(&v12, 8);
}

uint64_t __51__TSDCanvasEditorHelper_pushNewEditorForSelection___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [a2 wantsToBePushedBackOntoStackForSelection:*(a1 + 32)];
    if (result)
    {
      result = a2;
      *(*(*(a1 + 40) + 8) + 40) = result;
      *a3 = 1;
    }
  }

  return result;
}

- (id)canvasSelectionFromRep:(id)rep
{
  if (!rep || ([rep isSelectable] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditorHelper canvasSelectionFromRep:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditorHelper.m"), 509, @"can't select a nil rep, or a rep that isn't selectable"}];
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_msgSend(rep, "info"), 0}];
  v8 = [(TSDCanvasEditorHelper *)self canvasSelectionWithInfos:v7];

  return v8;
}

+ (id)canvasSelectionWithInfos:(id)infos
{
  v4 = objc_opt_class();

  return [v4 canvasSelectionWithInfos:infos andContainer:0];
}

- (id)canvasSelectionWithInfos:(id)infos
{
  v4 = objc_opt_class();

  return [v4 canvasSelectionWithInfos:infos andContainer:0];
}

+ (id)canvasSelectionWithInfos:(id)infos andContainer:(id)container
{
  v7 = [infos count];
  v8 = objc_alloc([self selectionClass]);
  if (v7)
  {
    infosCopy = infos;
  }

  else
  {
    infosCopy = 0;
  }

  v10 = [v8 initWithInfos:infosCopy andContainer:container];

  return v10;
}

- (id)canvasSelectionWithInfos:(id)infos andContainer:(id)container
{
  v6 = objc_opt_class();

  return [v6 canvasSelectionWithInfos:infos andContainer:container];
}

+ (BOOL)physicalKeyboardIsSender:(id)sender
{
  if (sender)
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (int)canvasEditorCanPerformDeleteAction:(SEL)action withSender:(id)sender
{
  v7 = [objc_opt_class() physicalKeyboardIsSender:sender];
  if (![-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")])
  {
    return -1;
  }

  if (sel_delete_ == action)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  result = 1;
  if ((v8 & 1) == 0)
  {
    if (sel_deleteObject_ == action)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

- (int)canvasEditorCanPerformCopyAction:(SEL)action withSender:(id)sender
{
  v7 = [objc_opt_class() physicalKeyboardIsSender:sender];
  if (![-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")])
  {
    return -1;
  }

  if (sel_copy_ == action)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  result = 1;
  if ((v8 & 1) == 0)
  {
    if (sel_copyObject_ == action)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

- (int)canvasEditorCanPerformCopyStyleAction:(SEL)action withSender:(id)sender
{
  if ([-[TSDCanvasEditorHelper canvasEditor](self canvasEditor])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (int)canvasEditorCanPerformCutAction:(SEL)action withSender:(id)sender
{
  v7 = [objc_opt_class() physicalKeyboardIsSender:sender];
  if (![-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")])
  {
    return -1;
  }

  if (sel_cut_ == action)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (sel_cutObject_ == action)
  {
    v8 = 1;
  }

  if (v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (int)canvasEditorCanPerformDuplicateAction:(SEL)action withSender:(id)sender
{
  v7 = [objc_opt_class() physicalKeyboardIsSender:sender];
  if (([-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")] & v7 & (sel_duplicate_ == action)) != 0)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (int)canvasEditorCanPerformSelectAllAction:(SEL)action withSender:(id)sender
{
  if ([-[TSDCanvasEditorHelper canvasEditor](self canvasEditor])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (int)canvasEditorCanPerformGroupAction:(SEL)action withSender:(id)sender
{
  v17 = *MEMORY[0x277D85DE8];
  if (![-[TSDCanvasEditorHelper canvasEditor](self canvasEditor])
  {
    return -1;
  }

  v5 = [objc_msgSend(-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(v5);
      }

      containingGroup = [*(*(&v12 + 1) + 8 * v9) containingGroup];
      if (containingGroup)
      {
        if ([objc_msgSend(MEMORY[0x277CBEB98] setWithArray:{objc_msgSend(containingGroup, "childInfos")), "isEqualToSet:", v5}])
        {
          return -1;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        result = 1;
        if (v7)
        {
          goto LABEL_4;
        }

        return result;
      }
    }
  }

  return 1;
}

- (int)canvasEditorCanPerformUngroupAction:(SEL)action withSender:(id)sender
{
  if ([-[TSDCanvasEditorHelper canvasEditor](self canvasEditor])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (int)canvasEditorCanPerformConnectWithConnectionLineAction:(SEL)action withSender:(id)sender
{
  if (+[TSDConnectionLineRep infosToConnectFromSelection:withInteractiveCanvasController:](TSDConnectionLineRep, "infosToConnectFromSelection:withInteractiveCanvasController:", [objc_msgSend(-[TSDCanvasEditorHelper interactiveCanvasController](self interactiveCanvasController], -[TSDCanvasEditorHelper interactiveCanvasController](self, "interactiveCanvasController")))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (int)canvasEditorCanPerformAlignAction:(SEL)action withSender:(id)sender
{
  if ([-[TSDCanvasEditorHelper layoutsForAlignAndDistribute](self layoutsForAlignAndDistribute])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (int)canvasEditorCanPerformDistributeAction:(SEL)action withSender:(id)sender
{
  if ([-[TSDCanvasEditorHelper layoutsForAlignAndDistribute](self layoutsForAlignAndDistribute] > 2)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (BOOL)canPerformMaskWithSender:(id)sender
{
  canvasEditor = [objc_msgSend(-[TSDCanvasEditorHelper canvasEditor](self canvasEditor];
  if ([canvasEditor count] == 1 && (v4 = objc_msgSend(canvasEditor, "anyObject"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v4, "isLocked") & 1) == 0 && (objc_msgSend(v4, "isInlineWithText") & 1) == 0)
  {
    return [objc_msgSend(+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)canPerformUnmaskWithSender:(id)sender
{
  canvasEditor = [objc_msgSend(-[TSDCanvasEditorHelper canvasEditor](self canvasEditor];
  if ([canvasEditor count] != 1)
  {
    return 0;
  }

  anyObject = [canvasEditor anyObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || ([anyObject isLocked])
  {
    return 0;
  }

  return [anyObject maskCanBeReset];
}

- (BOOL)canPerformMaskWithShapeWithSender:(id)sender
{
  v21 = *MEMORY[0x277D85DE8];
  interactiveCanvasController = [(TSDCanvasEditorHelper *)self interactiveCanvasController];
  v5 = [objc_msgSend(-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")];
  if ([v5 count] == 2 && (v18 = 0u, v19 = 0u, v16 = 0u, v17 = 0u, (v6 = objc_msgSend(v5, "countByEnumeratingWithState:objects:count:", &v16, v20, 16)) != 0))
  {
    v7 = v6;
    v8 = 0;
    canBeUsedForImageMask = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        [interactiveCanvasController repForInfo:v11];
        v12 = TSUDynamicCast();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![v11 isLocked])
        {
          v8 = 1;
        }

        else if (v12 && ([v11 isLocked] & 1) == 0)
        {
          canBeUsedForImageMask = [v12 canBeUsedForImageMask];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
    v13 = v8 & canBeUsedForImageMask;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)canPerformMaskWithShapeTypeWithSender:(id)sender
{
  v15 = *MEMORY[0x277D85DE8];
  canvasEditor = [objc_msgSend(-[TSDCanvasEditorHelper canvasEditor](self canvasEditor];
  if ([canvasEditor count] == 1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [canvasEditor countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(canvasEditor);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ![v8 isLocked])
          {
            LOBYTE(v4) = 1;
            return v4;
          }
        }

        v5 = [canvasEditor countByEnumeratingWithState:&v10 objects:v14 count:16];
        LOBYTE(v4) = 0;
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (int)canvasEditorCanPerformLockAction:(SEL)action withSender:(id)sender
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  canvasEditor = [objc_msgSend(-[TSDCanvasEditorHelper canvasEditor](self canvasEditor];
  v6 = [canvasEditor countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(canvasEditor);
        }

        objc_opt_class();
        v10 = TSUDynamicCast();
        if (v10)
        {
          v11 = v10;
          if (sel_lock_ == action) != [v10 isLocked] && (objc_msgSend(v11, "isLockable"))
          {
            return 1;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [canvasEditor countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return -1;
}

- (BOOL)canUngroupWithSelection:(id)selection
{
  v4 = objc_opt_class();

  return [selection containsUnlockedKindOfClass:v4];
}

- (BOOL)p_selectionContainsInlineObjects:(id)objects
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  infos = [objects infos];
  v4 = [infos countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(infos);
        }

        objc_opt_class();
        v8 = TSUDynamicCast();
        if (v8 && ([v8 isInlineWithText] & 1) != 0)
        {
          LOBYTE(v4) = 1;
          return v4;
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [infos countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (int)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  if (sel_cut_ == action || sel_cutObject_ == action)
  {

    return [TSDCanvasEditorHelper canvasEditorCanPerformCutAction:"canvasEditorCanPerformCutAction:withSender:" withSender:?];
  }

  else if (sel_copy_ == action || sel_copyObject_ == action)
  {

    return [TSDCanvasEditorHelper canvasEditorCanPerformCopyAction:"canvasEditorCanPerformCopyAction:withSender:" withSender:?];
  }

  else if (sel_copyStyle_ == action)
  {

    return [TSDCanvasEditorHelper canvasEditorCanPerformCopyStyleAction:"canvasEditorCanPerformCopyStyleAction:withSender:" withSender:?];
  }

  else if (sel_deleteObject_ == action || sel_delete_ == action)
  {

    return [TSDCanvasEditorHelper canvasEditorCanPerformDeleteAction:"canvasEditorCanPerformDeleteAction:withSender:" withSender:?];
  }

  else
  {
    if (sel_isEqual(action, sel_duplicate_))
    {

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformDuplicateAction:action withSender:sender];
    }

    if (sel_selectAll_ == action)
    {

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformSelectAllAction:action withSender:sender];
    }

    else if (sel_group_ == action)
    {

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformGroupAction:action withSender:sender];
    }

    else if (sel_ungroup_ == action)
    {

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformUngroupAction:action withSender:sender];
    }

    else if (sel_connectWithConnectionLine_ == action)
    {

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformConnectWithConnectionLineAction:action withSender:sender];
    }

    else if (sel_alignDrawablesByLeftEdge_ == action || sel_alignDrawablesByRightEdge_ == action || sel_alignDrawablesByTopEdge_ == action || sel_alignDrawablesByBottomEdge_ == action || sel_alignDrawablesByHorizontalCenter_ == action || sel_alignDrawablesByVerticalCenter_ == action)
    {

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformAlignAction:action withSender:sender];
    }

    else
    {
      if (sel_distributeDrawablesHorizontally_ != action && sel_distributeDrawablesVertically_ != action && sel_distributeDrawablesEvenly_ != action)
      {
        if (sel_reduceDocumentFileSize_ != action)
        {
          if (sel_reduceFileSizeForSelectedImages_ == action)
          {
            p_canReduceFileSizeForSelectedImages = [(TSDCanvasEditorHelper *)self p_canReduceFileSizeForSelectedImages];
            goto LABEL_83;
          }

          if (sel_unmask_ == action)
          {
            p_canReduceFileSizeForSelectedImages = [(TSDCanvasEditorHelper *)self canPerformMaskWithSender:sender];
            goto LABEL_83;
          }

          if (sel_mask_ == action)
          {
            p_canReduceFileSizeForSelectedImages = [(TSDCanvasEditorHelper *)self canPerformUnmaskWithSender:sender];
            goto LABEL_83;
          }

          if (sel_maskWithShape_ == action)
          {
            p_canReduceFileSizeForSelectedImages = [(TSDCanvasEditorHelper *)self canPerformMaskWithShapeWithSender:sender];
            goto LABEL_83;
          }

          if (sel_maskWithSelection_ != action)
          {
            if (sel_maskWithShapeType_ != action)
            {
              if (sel_lock_ == action || sel_unlock_ == action)
              {

                return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformLockAction:action withSender:sender];
              }

              else
              {
                return sel_deleteComment_ == action && [(TSDCanvasEditorHelper *)self canDeleteComment];
              }
            }

            p_canReduceFileSizeForSelectedImages = [(TSDCanvasEditorHelper *)self canPerformMaskWithShapeTypeWithSender:sender];
LABEL_83:
            if (p_canReduceFileSizeForSelectedImages)
            {
              return 1;
            }

            else
            {
              return -1;
            }
          }

          if (![(TSDCanvasEditorHelper *)self canPerformMaskWithShapeWithSender:sender]&& ![(TSDCanvasEditorHelper *)self canPerformMaskWithSender:sender])
          {
            return -1;
          }
        }

        return 1;
      }

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformDistributeAction:action withSender:sender];
    }
  }
}

- (void)p_copy:(id)p_copy
{
  canvasEditor = [(TSDCanvasEditorHelper *)self canvasEditor];

  [canvasEditor copy:p_copy];
}

- (BOOL)canGroupDrawables:(id)drawables
{
  v16 = *MEMORY[0x277D85DE8];
  canvasEditor = [(TSDCanvasEditorHelper *)self canvasEditor];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [drawables countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(drawables);
      }

      v9 = [canvasEditor canGroupDrawable:*(*(&v11 + 1) + 8 * v8)];
      if (!v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [drawables countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)p_canReduceFileSizeForSelectedImages
{
  v2 = [-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")];
  v3 = objc_opt_class();

  return [v2 containsKindOfClass:v3];
}

- (id)layoutsForAlignAndDistribute
{
  v3 = [objc_msgSend(-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")];
  v4 = [v3 filteredSetUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithBlock:", &__block_literal_global_54)}];
  v5 = [-[TSDCanvasEditorHelper interactiveCanvasController](self "interactiveCanvasController")];

  return [v5 layoutsForInfos:v4];
}

uint64_t __53__TSDCanvasEditorHelper_layoutsForAlignAndDistribute__block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  v3 = TSUDynamicCast();
  if (v3)
  {
    v4 = v3;
    if ([v3 connectedTo] || objc_msgSend(v4, "connectedFrom"))
    {
      return 0;
    }
  }

  if ([a2 isAnchoredToText])
  {
    return 0;
  }

  else
  {
    return [a2 isInlineWithText] ^ 1;
  }
}

@end