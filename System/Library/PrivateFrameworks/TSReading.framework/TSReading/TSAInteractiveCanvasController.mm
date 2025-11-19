@interface TSAInteractiveCanvasController
- (BOOL)hasEmptyWPSelection;
- (BOOL)hasInspectableSelection;
- (id)additionalVisibleInfosForCanvas:(id)a3;
- (id)p_activeTextRep;
- (void)asyncProcessChanges:(id)a3 forChangeSource:(id)a4;
- (void)dealloc;
- (void)didSetDocumentToMode:(int64_t)a3 fromMode:(int64_t)a4 animated:(BOOL)a5;
- (void)handleHyperlinkGesture:(id)a3;
- (void)loadDocument;
- (void)teardown;
- (void)unloadDocument;
- (void)willSetDocumentToMode:(int64_t)a3 fromMode:(int64_t)a4 animated:(BOOL)a5;
@end

@implementation TSAInteractiveCanvasController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSAInteractiveCanvasController;
  [(TSWPInteractiveCanvasController *)&v3 dealloc];
}

- (void)teardown
{
  v2.receiver = self;
  v2.super_class = TSAInteractiveCanvasController;
  [(TSWPInteractiveCanvasController *)&v2 teardown];
}

- (void)loadDocument
{
  v3 = [(TSDInteractiveCanvasController *)self documentRoot];
  v4 = [(TSKDocumentRoot *)v3 changeNotifier];

  [(TSKChangeNotifier *)v4 addObserver:self forChangeSource:v3];
}

- (void)unloadDocument
{
  v3 = [(TSDInteractiveCanvasController *)self documentRoot];
  v4 = [(TSKDocumentRoot *)v3 changeNotifier];

  [(TSKChangeNotifier *)v4 removeObserver:self forChangeSource:v3];
}

- (void)handleHyperlinkGesture:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = +[TSKApplicationDelegate sharedDelegate];
    v5 = [objc_msgSend(a3 "hitField")];

    [v4 openURL:v5];
  }
}

- (void)asyncProcessChanges:(id)a3 forChangeSource:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TSAInteractiveCanvasController;
  [TSDInteractiveCanvasController asyncProcessChanges:sel_asyncProcessChanges_forChangeSource_ forChangeSource:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = [*(*(&v11 + 1) + 8 * v9) kind];
          if (v10 == 100)
          {
            [(TSDInteractiveCanvasController *)self recreateAllLayoutsAndReps];
          }

          else if (v10 == 3)
          {
            [(TSDInteractiveCanvasController *)self setShouldAutoscrollToSelectionAfterLayout:1];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [a3 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)willSetDocumentToMode:(int64_t)a3 fromMode:(int64_t)a4 animated:(BOOL)a5
{
  objc_opt_class();
  [(TSDInteractiveCanvasController *)self layerHost];
  v6 = TSUDynamicCast();
  v7 = [v6 wantsHyperlinkGestureRecognizer];
  v8 = [v6 hyperlinkGestureRecognizer];

  [v8 setEnabled:v7];
}

- (void)didSetDocumentToMode:(int64_t)a3 fromMode:(int64_t)a4 animated:(BOOL)a5
{
  v5 = [-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self layerHost];

  [v5 setEnabled:1];
}

- (id)additionalVisibleInfosForCanvas:(id)a3
{
  v8.receiver = self;
  v8.super_class = TSAInteractiveCanvasController;
  v4 = [(TSDInteractiveCanvasController *)&v8 additionalVisibleInfosForCanvas:a3];
  if (!self->super.super.mCreateRepsForOffscreenLayouts)
  {
    v5 = [(TSAInteractiveCanvasController *)self infoBeingDragInserted];
    if (v5)
    {
      if (v4)
      {
        return [v4 setByAddingObject:v5];
      }

      else
      {
        return [MEMORY[0x277CBEB98] setWithObject:v5];
      }
    }
  }

  return v4;
}

- (BOOL)hasEmptyWPSelection
{
  if ([(NSSet *)[(TSDCanvasSelection *)[(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)self canvasEditor] canvasSelection] infos] count])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    objc_opt_class();
    [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] textInputEditor];
    v4 = [TSUDynamicCast() selection];
    if (!v4 || (v3 = [v4 isEmpty]) != 0)
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)hasInspectableSelection
{
  v2 = [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] mostSpecificCurrentEditorOfClass:0];
  v3 = objc_opt_respondsToSelector();
  v4 = 0;
  if (v3)
  {
    v4 = [v2 topLevelInspectorViewControllers];
  }

  return [v4 count] != 0;
}

- (id)p_activeTextRep
{
  objc_opt_class();
  [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] textInputEditor];
  v3 = TSUDynamicCast();
  v4 = [v3 storage];
  v5 = [v3 selection];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  v7 = v5;
  [v4 parentInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  v8 = [(TSDInteractiveCanvasController *)self layoutForModel:v4 withSelection:v7];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  objc_opt_class();
  [(TSDInteractiveCanvasController *)self repForLayout:v9];

  return TSUDynamicCast();
}

@end