@interface TSDDrawableEditor
- (NSSet)layouts;
- (NSSet)selectedObjectsSupportingResize;
- (NSSet)selectedObjectsSupportingShrinkTextToFit;
- (NSSet)selectedObjectsSupportingTextInset;
- (TSDDrawableEditor)initWithInteractiveCanvasController:(id)controller;
- (TSDDrawableInfo)firstInfo;
- (TSDDrawableInfo)info;
- (id)documentRoot;
- (id)infosOfClass:(Class)class;
- (id)selectedLayoutsSupportingFlipping;
- (id)selectedLayoutsSupportingInspectorPositioning;
- (id)selectedLayoutsSupportingRotation;
- (int)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (void)beginChangingStrokeWidth:(id)width;
- (void)dealloc;
- (void)didChangeStrokeWidth:(id)width;
- (void)endChangingStrokeWidth:(id)width;
@end

@implementation TSDDrawableEditor

- (TSDDrawableEditor)initWithInteractiveCanvasController:(id)controller
{
  v5.receiver = self;
  v5.super_class = TSDDrawableEditor;
  result = [(TSDDrawableEditor *)&v5 init];
  if (result)
  {
    result->mICC = controller;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDDrawableEditor;
  [(TSDDrawableEditor *)&v3 dealloc];
}

- (TSDDrawableInfo)info
{
  if ([(NSSet *)self->mInfos count]>= 2)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDrawableEditor info]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDrawableEditor.m"), 87, @"You need to change your code to expect an array of infos from the TSDDrawableEditor so that multiple selection is supported."}];
  }

  mInfos = self->mInfos;

  return [(NSSet *)mInfos anyObject];
}

- (id)infosOfClass:(Class)class
{
  mInfos = self->mInfos;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__TSDDrawableEditor_infosOfClass___block_invoke;
  v5[3] = &unk_279D483A8;
  v5[4] = class;
  return [(NSSet *)mInfos objectsPassingTest:v5];
}

- (TSDDrawableInfo)firstInfo
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mInfos = self->mInfos;
  v4 = [(NSSet *)mInfos countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v11;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v11 != v6)
    {
      objc_enumerationMutation(mInfos);
    }

    v8 = *(*(&v10 + 1) + 8 * v7);
    if (objc_opt_isKindOfClass())
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [(NSSet *)mInfos countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (NSSet)layouts
{
  layoutController = [(TSDInteractiveCanvasController *)[(TSDDrawableEditor *)self interactiveCanvasController] layoutController];
  infos = [(TSDDrawableEditor *)self infos];

  return [(TSDLayoutController *)layoutController layoutsForInfos:infos];
}

- (int)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  v18 = *MEMORY[0x277D85DE8];
  if (sel_addOrShowComment_ == action)
  {
    if ([(TSDDrawableEditor *)self canAddOrShowComment])
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else if (sel_flipHorizontally_ == action || sel_flipVertically_ == action)
  {
    if ([(NSSet *)[(TSDDrawableEditor *)self infos] count]&& (v15 = 0u, v16 = 0u, v13 = 0u, v14 = 0u, v6 = [(TSDDrawableEditor *)self layouts], (v7 = [(NSSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16]) != 0))
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 canFlip] && !objc_msgSend(objc_msgSend(v11, "info"), "isLocked"))
          {
            return 1;
          }
        }

        v8 = [(NSSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        result = -1;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

- (id)documentRoot
{
  interactiveCanvasController = [(TSDDrawableEditor *)self interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)interactiveCanvasController documentRoot];
}

- (NSSet)selectedObjectsSupportingResize
{
  layouts = [(TSDDrawableEditor *)self layouts];

  return [(NSSet *)layouts objectsPassingTest:&__block_literal_global_33];
}

- (NSSet)selectedObjectsSupportingTextInset
{
  infos = [(TSDDrawableEditor *)self infos];

  return [(NSSet *)infos objectsPassingTest:&__block_literal_global_19];
}

void *__55__TSDDrawableEditor_selectedObjectsSupportingTextInset__block_invoke()
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {

    return [result supportsTextInset];
  }

  return result;
}

- (NSSet)selectedObjectsSupportingShrinkTextToFit
{
  infos = [(TSDDrawableEditor *)self infos];

  return [(NSSet *)infos objectsPassingTest:&__block_literal_global_22];
}

void *__61__TSDDrawableEditor_selectedObjectsSupportingShrinkTextToFit__block_invoke()
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {

    return [result supportsShrinkTextToFit];
  }

  return result;
}

- (id)selectedLayoutsSupportingRotation
{
  layouts = [(TSDDrawableEditor *)self layouts];

  return [(NSSet *)layouts objectsPassingTest:&__block_literal_global_28];
}

- (id)selectedLayoutsSupportingFlipping
{
  layouts = [(TSDDrawableEditor *)self layouts];

  return [(NSSet *)layouts objectsPassingTest:&__block_literal_global_30];
}

- (id)selectedLayoutsSupportingInspectorPositioning
{
  layouts = [(TSDDrawableEditor *)self layouts];

  return [(NSSet *)layouts objectsPassingTest:&__block_literal_global_32];
}

- (void)beginChangingStrokeWidth:(id)width
{
  v14 = *MEMORY[0x277D85DE8];
  [(TSDInteractiveCanvasController *)self->mICC beginDynamicOperation];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  mInfos = self->mInfos;
  v5 = [(NSSet *)mInfos countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(mInfos);
        }

        [-[TSDInteractiveCanvasController layoutForInfo:](self->mICC layoutForInfo:{*(*(&v9 + 1) + 8 * i)), "dynamicStrokeWidthChangeDidBegin"}];
      }

      v6 = [(NSSet *)mInfos countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)didChangeStrokeWidth:(id)width
{
  v28 = *MEMORY[0x277D85DE8];
  [width floatValue];
  [(TSDDrawableEditor *)self strokeWidthForNormalizedWidth:v5];
  v7 = v6;
  [width floatValue];
  [(TSDDrawableEditor *)self pictureFrameAssetScaleForNormalizedWidth:v8];
  v10 = v9;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  mInfos = self->mInfos;
  v12 = [(NSSet *)mInfos countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    v15 = v10;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(mInfos);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v18 = [v17 performSelector:sel_stroke];
          v19 = [(TSDInteractiveCanvasController *)self->mICC layoutForInfo:v17];
          isFrame = [v18 isFrame];
          v21 = v7;
          if (isFrame)
          {
            [v18 minimumAssetScale];
            *&v22 = v22;
            v21 = fmaxf(v15, *&v22);
          }

          [v19 dynamicStrokeWidthUpdateToValue:v21];
        }
      }

      v13 = [(NSSet *)mInfos countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }
}

- (void)endChangingStrokeWidth:(id)width
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mInfos = self->mInfos;
  v5 = [(NSSet *)mInfos countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(mInfos);
        }

        [-[TSDInteractiveCanvasController layoutForInfo:](self->mICC layoutForInfo:{*(*(&v9 + 1) + 8 * i)), "dynamicStrokeWidthChangeDidEnd"}];
      }

      v6 = [(NSSet *)mInfos countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(TSDInteractiveCanvasController *)self->mICC endDynamicOperation];
}

@end