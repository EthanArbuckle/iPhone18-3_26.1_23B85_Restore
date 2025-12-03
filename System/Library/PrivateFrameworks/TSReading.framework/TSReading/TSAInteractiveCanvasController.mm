@interface TSAInteractiveCanvasController
- (BOOL)hasEmptyWPSelection;
- (BOOL)hasInspectableSelection;
- (id)additionalVisibleInfosForCanvas:(id)canvas;
- (id)p_activeTextRep;
- (void)asyncProcessChanges:(id)changes forChangeSource:(id)source;
- (void)dealloc;
- (void)didSetDocumentToMode:(int64_t)mode fromMode:(int64_t)fromMode animated:(BOOL)animated;
- (void)handleHyperlinkGesture:(id)gesture;
- (void)loadDocument;
- (void)teardown;
- (void)unloadDocument;
- (void)willSetDocumentToMode:(int64_t)mode fromMode:(int64_t)fromMode animated:(BOOL)animated;
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
  documentRoot = [(TSDInteractiveCanvasController *)self documentRoot];
  changeNotifier = [(TSKDocumentRoot *)documentRoot changeNotifier];

  [(TSKChangeNotifier *)changeNotifier addObserver:self forChangeSource:documentRoot];
}

- (void)unloadDocument
{
  documentRoot = [(TSDInteractiveCanvasController *)self documentRoot];
  changeNotifier = [(TSKDocumentRoot *)documentRoot changeNotifier];

  [(TSKChangeNotifier *)changeNotifier removeObserver:self forChangeSource:documentRoot];
}

- (void)handleHyperlinkGesture:(id)gesture
{
  if ([gesture state] == 3)
  {
    v4 = +[TSKApplicationDelegate sharedDelegate];
    v5 = [objc_msgSend(gesture "hitField")];

    [v4 openURL:v5];
  }
}

- (void)asyncProcessChanges:(id)changes forChangeSource:(id)source
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
    v6 = [changes countByEnumeratingWithState:&v11 objects:v16 count:16];
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
            objc_enumerationMutation(changes);
          }

          kind = [*(*(&v11 + 1) + 8 * v9) kind];
          if (kind == 100)
          {
            [(TSDInteractiveCanvasController *)self recreateAllLayoutsAndReps];
          }

          else if (kind == 3)
          {
            [(TSDInteractiveCanvasController *)self setShouldAutoscrollToSelectionAfterLayout:1];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [changes countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)willSetDocumentToMode:(int64_t)mode fromMode:(int64_t)fromMode animated:(BOOL)animated
{
  objc_opt_class();
  [(TSDInteractiveCanvasController *)self layerHost];
  v6 = TSUDynamicCast();
  wantsHyperlinkGestureRecognizer = [v6 wantsHyperlinkGestureRecognizer];
  hyperlinkGestureRecognizer = [v6 hyperlinkGestureRecognizer];

  [hyperlinkGestureRecognizer setEnabled:wantsHyperlinkGestureRecognizer];
}

- (void)didSetDocumentToMode:(int64_t)mode fromMode:(int64_t)fromMode animated:(BOOL)animated
{
  layerHost = [-[TSDCanvasLayerHosting asiOSCVC](-[TSDInteractiveCanvasController layerHost](self layerHost];

  [layerHost setEnabled:1];
}

- (id)additionalVisibleInfosForCanvas:(id)canvas
{
  v8.receiver = self;
  v8.super_class = TSAInteractiveCanvasController;
  v4 = [(TSDInteractiveCanvasController *)&v8 additionalVisibleInfosForCanvas:canvas];
  if (!self->super.super.mCreateRepsForOffscreenLayouts)
  {
    infoBeingDragInserted = [(TSAInteractiveCanvasController *)self infoBeingDragInserted];
    if (infoBeingDragInserted)
    {
      if (v4)
      {
        return [v4 setByAddingObject:infoBeingDragInserted];
      }

      else
      {
        return [MEMORY[0x277CBEB98] setWithObject:infoBeingDragInserted];
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
    selection = [TSUDynamicCast() selection];
    if (!selection || (v3 = [selection isEmpty]) != 0)
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
  topLevelInspectorViewControllers = 0;
  if (v3)
  {
    topLevelInspectorViewControllers = [v2 topLevelInspectorViewControllers];
  }

  return [topLevelInspectorViewControllers count] != 0;
}

- (id)p_activeTextRep
{
  objc_opt_class();
  [(TSDEditorController *)[(TSDInteractiveCanvasController *)self editorController] textInputEditor];
  v3 = TSUDynamicCast();
  storage = [v3 storage];
  selection = [v3 selection];
  if (storage)
  {
    v6 = selection == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  v7 = selection;
  [storage parentInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  v8 = [(TSDInteractiveCanvasController *)self layoutForModel:storage withSelection:v7];
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