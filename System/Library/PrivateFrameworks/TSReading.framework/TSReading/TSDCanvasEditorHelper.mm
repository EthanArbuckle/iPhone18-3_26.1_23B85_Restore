@interface TSDCanvasEditorHelper
+ (BOOL)physicalKeyboardIsSender:(id)a3;
+ (id)canvasSelectionWithInfos:(id)a3;
+ (id)canvasSelectionWithInfos:(id)a3 andContainer:(id)a4;
- (BOOL)canGroupDrawables:(id)a3;
- (BOOL)canPerformMaskWithSender:(id)a3;
- (BOOL)canPerformMaskWithShapeTypeWithSender:(id)a3;
- (BOOL)canPerformMaskWithShapeWithSender:(id)a3;
- (BOOL)canPerformUnmaskWithSender:(id)a3;
- (BOOL)canUngroupWithSelection:(id)a3;
- (BOOL)p_canReduceFileSizeForSelectedImages;
- (BOOL)p_selectionContainsInlineObjects:(id)a3;
- (Class)p_editorClassForSelection:(id)a3 shouldIgnoreLockedState:(BOOL)a4;
- (TSDCanvasEditorHelper)initWithCanvasEditor:(id)a3;
- (id)canvasSelectionFromRep:(id)a3;
- (id)canvasSelectionWithInfos:(id)a3;
- (id)canvasSelectionWithInfos:(id)a3 andContainer:(id)a4;
- (id)documentRoot;
- (id)editorToPopToOnEndEditingForSelection:(id)a3;
- (id)interactiveCanvasController;
- (id)layoutsForAlignAndDistribute;
- (int)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (int)canvasEditorCanPerformAlignAction:(SEL)a3 withSender:(id)a4;
- (int)canvasEditorCanPerformConnectWithConnectionLineAction:(SEL)a3 withSender:(id)a4;
- (int)canvasEditorCanPerformCopyAction:(SEL)a3 withSender:(id)a4;
- (int)canvasEditorCanPerformCopyStyleAction:(SEL)a3 withSender:(id)a4;
- (int)canvasEditorCanPerformCutAction:(SEL)a3 withSender:(id)a4;
- (int)canvasEditorCanPerformDeleteAction:(SEL)a3 withSender:(id)a4;
- (int)canvasEditorCanPerformDistributeAction:(SEL)a3 withSender:(id)a4;
- (int)canvasEditorCanPerformDuplicateAction:(SEL)a3 withSender:(id)a4;
- (int)canvasEditorCanPerformGroupAction:(SEL)a3 withSender:(id)a4;
- (int)canvasEditorCanPerformLockAction:(SEL)a3 withSender:(id)a4;
- (int)canvasEditorCanPerformSelectAllAction:(SEL)a3 withSender:(id)a4;
- (int)canvasEditorCanPerformUngroupAction:(SEL)a3 withSender:(id)a4;
- (void)asyncProcessChanges:(id)a3 forChangeSource:(id)a4;
- (void)dealloc;
- (void)notifyRepsForSelectionChangeFrom:(id)a3 to:(id)a4;
- (void)p_copy:(id)a3;
- (void)pushNewEditorForSelection:(id)a3;
- (void)teardown;
@end

@implementation TSDCanvasEditorHelper

- (TSDCanvasEditorHelper)initWithCanvasEditor:(id)a3
{
  v10.receiver = self;
  v10.super_class = TSDCanvasEditorHelper;
  v4 = [(TSDCanvasEditorHelper *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->mCanvasEditor = a3;
    mChangeNotifier = [-[TSDCanvasEditorHelper documentRoot](v4 "documentRoot")];
    v5->mChangeNotifier = mChangeNotifier;
    if (!mChangeNotifier)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditorHelper initWithCanvasEditor:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditorHelper.m"), 189, @"invalid nil value for '%s'", "mChangeNotifier"}];
      mChangeNotifier = v5->mChangeNotifier;
    }

    [(TSKChangeNotifier *)mChangeNotifier addObserver:v5 forChangeSourceOfClass:objc_opt_class()];
    v5->mTornDown = 0;
  }

  return v5;
}

- (id)documentRoot
{
  v2 = [(TSDCanvasEditorHelper *)self canvasEditor];

  return [v2 documentRoot];
}

- (id)interactiveCanvasController
{
  v2 = [(TSDCanvasEditorHelper *)self canvasEditor];

  return [v2 interactiveCanvasController];
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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditorHelper dealloc]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditorHelper.m"), 248, @"Need to call teardown on the editor helper"}];
  }

  v5.receiver = self;
  v5.super_class = TSDCanvasEditorHelper;
  [(TSDCanvasEditorHelper *)&v5 dealloc];
}

- (void)asyncProcessChanges:(id)a3 forChangeSource:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(a3);
        }

        if ([*(*(&v10 + 1) + 8 * i) kind] == 5)
        {
          -[TSDCanvasEditorHelper pushNewEditorForSelection:](self, "pushNewEditorForSelection:", [-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")]);
          return;
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

- (void)notifyRepsForSelectionChangeFrom:(id)a3 to:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = [(TSDCanvasEditorHelper *)self interactiveCanvasController];
  if (a3 && [a3 count])
  {
    v31 = a3;
    v7 = [a3 mutableCopy];
    v8 = v7;
    if (a4)
    {
      [v7 minusSet:a4];
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
          v14 = [v6 repsForInfo:v13];
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

    a3 = v31;
  }

  if (a4 && [a4 count])
  {
    v19 = [a4 mutableCopy];
    v20 = v19;
    if (a3)
    {
      [v19 minusSet:a3];
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
          v26 = [v6 repsForInfo:v25];
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

- (Class)p_editorClassForSelection:(id)a3 shouldIgnoreLockedState:(BOOL)a4
{
  v21 = *MEMORY[0x277D85DE8];
  if (![objc_msgSend(a3 "infos")])
  {
    return 0;
  }

  [objc_msgSend(a3 "infos")];
  objc_opt_class();
  v5 = TSUClassAndProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = [v5 editorClass];
  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = [a3 infos];
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
          v13 = [v12 editorClass];
        }

        else
        {
          v13 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          v9 |= [v13 shouldSuppressMultiselection];
        }

        if (!v13 || (v9 & 1) != 0 && v13 != v6)
        {
          return 0;
        }

        if (([v13 isSubclassOfClass:v6] & 1) == 0 && v13 != v6)
        {
          v6 = [v6 superclass];
          if (([v13 isSubclassOfClass:v6] & 1) == 0)
          {
            do
            {
              v6 = [v6 superclass];
            }

            while (![v13 isSubclassOfClass:v6]);
          }

          if (objc_opt_class() != v6 && ![v6 isSubclassOfClass:objc_opt_class()])
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

          return v6;
        }
      }
    }
  }

  return v6;
}

- (id)editorToPopToOnEndEditingForSelection:(id)a3
{
  v5 = [(TSDCanvasEditorHelper *)self canvasEditor];
  v6 = [-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")];
  v7 = [(TSDCanvasEditorHelper *)self editorClassForSelection:a3];
  if (!v7)
  {
    return v5;
  }

  v8 = v7;
  v9 = [v6 editorController];

  return [v9 mostSpecificCurrentEditorOfClass:v8];
}

- (void)pushNewEditorForSelection:(id)a3
{
  v5 = [(TSDCanvasEditorHelper *)self canvasEditor];
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
  v11[4] = a3;
  v11[5] = &v12;
  [v6 enumerateEditorsOnStackUsingBlock:v11];
  [v6 popToEditor:v5];
  if ([v5 shouldPushNewEditorForNewSelection])
  {
    v7 = [(TSDCanvasEditorHelper *)self editorClassForSelection:a3];
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
        [v8 setInfos:{-[TSDCanvasEditorHelper infosFromCanvasSelection:](self, "infosFromCanvasSelection:", objc_msgSend(v5, "canvasSelection"))}];
        if (v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v9 = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditorHelper pushNewEditorForSelection:]"];
        [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditorHelper.m"), 486, @"Unknown editor class"}];
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

- (id)canvasSelectionFromRep:(id)a3
{
  if (!a3 || ([a3 isSelectable] & 1) == 0)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasEditorHelper canvasSelectionFromRep:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasEditorHelper.m"), 509, @"can't select a nil rep, or a rep that isn't selectable"}];
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_msgSend(a3, "info"), 0}];
  v8 = [(TSDCanvasEditorHelper *)self canvasSelectionWithInfos:v7];

  return v8;
}

+ (id)canvasSelectionWithInfos:(id)a3
{
  v4 = objc_opt_class();

  return [v4 canvasSelectionWithInfos:a3 andContainer:0];
}

- (id)canvasSelectionWithInfos:(id)a3
{
  v4 = objc_opt_class();

  return [v4 canvasSelectionWithInfos:a3 andContainer:0];
}

+ (id)canvasSelectionWithInfos:(id)a3 andContainer:(id)a4
{
  v7 = [a3 count];
  v8 = objc_alloc([a1 selectionClass]);
  if (v7)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 initWithInfos:v9 andContainer:a4];

  return v10;
}

- (id)canvasSelectionWithInfos:(id)a3 andContainer:(id)a4
{
  v6 = objc_opt_class();

  return [v6 canvasSelectionWithInfos:a3 andContainer:a4];
}

+ (BOOL)physicalKeyboardIsSender:(id)a3
{
  if (a3)
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

- (int)canvasEditorCanPerformDeleteAction:(SEL)a3 withSender:(id)a4
{
  v7 = [objc_opt_class() physicalKeyboardIsSender:a4];
  if (![-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")])
  {
    return -1;
  }

  if (sel_delete_ == a3)
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
    if (sel_deleteObject_ == a3)
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

- (int)canvasEditorCanPerformCopyAction:(SEL)a3 withSender:(id)a4
{
  v7 = [objc_opt_class() physicalKeyboardIsSender:a4];
  if (![-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")])
  {
    return -1;
  }

  if (sel_copy_ == a3)
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
    if (sel_copyObject_ == a3)
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

- (int)canvasEditorCanPerformCopyStyleAction:(SEL)a3 withSender:(id)a4
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

- (int)canvasEditorCanPerformCutAction:(SEL)a3 withSender:(id)a4
{
  v7 = [objc_opt_class() physicalKeyboardIsSender:a4];
  if (![-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")])
  {
    return -1;
  }

  if (sel_cut_ == a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (sel_cutObject_ == a3)
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

- (int)canvasEditorCanPerformDuplicateAction:(SEL)a3 withSender:(id)a4
{
  v7 = [objc_opt_class() physicalKeyboardIsSender:a4];
  if (([-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")] & v7 & (sel_duplicate_ == a3)) != 0)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (int)canvasEditorCanPerformSelectAllAction:(SEL)a3 withSender:(id)a4
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

- (int)canvasEditorCanPerformGroupAction:(SEL)a3 withSender:(id)a4
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

      v10 = [*(*(&v12 + 1) + 8 * v9) containingGroup];
      if (v10)
      {
        if ([objc_msgSend(MEMORY[0x277CBEB98] setWithArray:{objc_msgSend(v10, "childInfos")), "isEqualToSet:", v5}])
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

- (int)canvasEditorCanPerformUngroupAction:(SEL)a3 withSender:(id)a4
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

- (int)canvasEditorCanPerformConnectWithConnectionLineAction:(SEL)a3 withSender:(id)a4
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

- (int)canvasEditorCanPerformAlignAction:(SEL)a3 withSender:(id)a4
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

- (int)canvasEditorCanPerformDistributeAction:(SEL)a3 withSender:(id)a4
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

- (BOOL)canPerformMaskWithSender:(id)a3
{
  v3 = [objc_msgSend(-[TSDCanvasEditorHelper canvasEditor](self canvasEditor];
  if ([v3 count] == 1 && (v4 = objc_msgSend(v3, "anyObject"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v4, "isLocked") & 1) == 0 && (objc_msgSend(v4, "isInlineWithText") & 1) == 0)
  {
    return [objc_msgSend(+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)canPerformUnmaskWithSender:(id)a3
{
  v3 = [objc_msgSend(-[TSDCanvasEditorHelper canvasEditor](self canvasEditor];
  if ([v3 count] != 1)
  {
    return 0;
  }

  v4 = [v3 anyObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || ([v4 isLocked])
  {
    return 0;
  }

  return [v4 maskCanBeReset];
}

- (BOOL)canPerformMaskWithShapeWithSender:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [(TSDCanvasEditorHelper *)self interactiveCanvasController];
  v5 = [objc_msgSend(-[TSDCanvasEditorHelper canvasEditor](self "canvasEditor")];
  if ([v5 count] == 2 && (v18 = 0u, v19 = 0u, v16 = 0u, v17 = 0u, (v6 = objc_msgSend(v5, "countByEnumeratingWithState:objects:count:", &v16, v20, 16)) != 0))
  {
    v7 = v6;
    v8 = 0;
    v15 = 0;
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
        [v4 repForInfo:v11];
        v12 = TSUDynamicCast();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![v11 isLocked])
        {
          v8 = 1;
        }

        else if (v12 && ([v11 isLocked] & 1) == 0)
        {
          v15 = [v12 canBeUsedForImageMask];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
    v13 = v8 & v15;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)canPerformMaskWithShapeTypeWithSender:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [objc_msgSend(-[TSDCanvasEditorHelper canvasEditor](self canvasEditor];
  if ([v3 count] == 1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ![v8 isLocked])
          {
            LOBYTE(v4) = 1;
            return v4;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (int)canvasEditorCanPerformLockAction:(SEL)a3 withSender:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [objc_msgSend(-[TSDCanvasEditorHelper canvasEditor](self canvasEditor];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        v10 = TSUDynamicCast();
        if (v10)
        {
          v11 = v10;
          if (sel_lock_ == a3) != [v10 isLocked] && (objc_msgSend(v11, "isLockable"))
          {
            return 1;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return -1;
}

- (BOOL)canUngroupWithSelection:(id)a3
{
  v4 = objc_opt_class();

  return [a3 containsUnlockedKindOfClass:v4];
}

- (BOOL)p_selectionContainsInlineObjects:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 infos];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
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
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (int)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  if (sel_cut_ == a3 || sel_cutObject_ == a3)
  {

    return [TSDCanvasEditorHelper canvasEditorCanPerformCutAction:"canvasEditorCanPerformCutAction:withSender:" withSender:?];
  }

  else if (sel_copy_ == a3 || sel_copyObject_ == a3)
  {

    return [TSDCanvasEditorHelper canvasEditorCanPerformCopyAction:"canvasEditorCanPerformCopyAction:withSender:" withSender:?];
  }

  else if (sel_copyStyle_ == a3)
  {

    return [TSDCanvasEditorHelper canvasEditorCanPerformCopyStyleAction:"canvasEditorCanPerformCopyStyleAction:withSender:" withSender:?];
  }

  else if (sel_deleteObject_ == a3 || sel_delete_ == a3)
  {

    return [TSDCanvasEditorHelper canvasEditorCanPerformDeleteAction:"canvasEditorCanPerformDeleteAction:withSender:" withSender:?];
  }

  else
  {
    if (sel_isEqual(a3, sel_duplicate_))
    {

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformDuplicateAction:a3 withSender:a4];
    }

    if (sel_selectAll_ == a3)
    {

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformSelectAllAction:a3 withSender:a4];
    }

    else if (sel_group_ == a3)
    {

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformGroupAction:a3 withSender:a4];
    }

    else if (sel_ungroup_ == a3)
    {

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformUngroupAction:a3 withSender:a4];
    }

    else if (sel_connectWithConnectionLine_ == a3)
    {

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformConnectWithConnectionLineAction:a3 withSender:a4];
    }

    else if (sel_alignDrawablesByLeftEdge_ == a3 || sel_alignDrawablesByRightEdge_ == a3 || sel_alignDrawablesByTopEdge_ == a3 || sel_alignDrawablesByBottomEdge_ == a3 || sel_alignDrawablesByHorizontalCenter_ == a3 || sel_alignDrawablesByVerticalCenter_ == a3)
    {

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformAlignAction:a3 withSender:a4];
    }

    else
    {
      if (sel_distributeDrawablesHorizontally_ != a3 && sel_distributeDrawablesVertically_ != a3 && sel_distributeDrawablesEvenly_ != a3)
      {
        if (sel_reduceDocumentFileSize_ != a3)
        {
          if (sel_reduceFileSizeForSelectedImages_ == a3)
          {
            v12 = [(TSDCanvasEditorHelper *)self p_canReduceFileSizeForSelectedImages];
            goto LABEL_83;
          }

          if (sel_unmask_ == a3)
          {
            v12 = [(TSDCanvasEditorHelper *)self canPerformMaskWithSender:a4];
            goto LABEL_83;
          }

          if (sel_mask_ == a3)
          {
            v12 = [(TSDCanvasEditorHelper *)self canPerformUnmaskWithSender:a4];
            goto LABEL_83;
          }

          if (sel_maskWithShape_ == a3)
          {
            v12 = [(TSDCanvasEditorHelper *)self canPerformMaskWithShapeWithSender:a4];
            goto LABEL_83;
          }

          if (sel_maskWithSelection_ != a3)
          {
            if (sel_maskWithShapeType_ != a3)
            {
              if (sel_lock_ == a3 || sel_unlock_ == a3)
              {

                return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformLockAction:a3 withSender:a4];
              }

              else
              {
                return sel_deleteComment_ == a3 && [(TSDCanvasEditorHelper *)self canDeleteComment];
              }
            }

            v12 = [(TSDCanvasEditorHelper *)self canPerformMaskWithShapeTypeWithSender:a4];
LABEL_83:
            if (v12)
            {
              return 1;
            }

            else
            {
              return -1;
            }
          }

          if (![(TSDCanvasEditorHelper *)self canPerformMaskWithShapeWithSender:a4]&& ![(TSDCanvasEditorHelper *)self canPerformMaskWithSender:a4])
          {
            return -1;
          }
        }

        return 1;
      }

      return [(TSDCanvasEditorHelper *)self canvasEditorCanPerformDistributeAction:a3 withSender:a4];
    }
  }
}

- (void)p_copy:(id)a3
{
  v4 = [(TSDCanvasEditorHelper *)self canvasEditor];

  [v4 copy:a3];
}

- (BOOL)canGroupDrawables:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(TSDCanvasEditorHelper *)self canvasEditor];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(a3);
      }

      v9 = [v4 canGroupDrawable:*(*(&v11 + 1) + 8 * v8)];
      if (!v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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