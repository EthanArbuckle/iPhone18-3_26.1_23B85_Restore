@interface UIImageView(PhotosUI)
- (PUImageViewExtraction)pu_extractPlayOverlayBackgroundImageFromCenter:()PhotosUI asynchronously:handler:;
@end

@implementation UIImageView(PhotosUI)

- (PUImageViewExtraction)pu_extractPlayOverlayBackgroundImageFromCenter:()PhotosUI asynchronously:handler:
{
  v11 = a4;
  if (v11)
  {
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"UIImageView+PhotosUI.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

    if (!a3)
    {
      goto LABEL_5;
    }
  }

  if (pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__onceToken != -1)
  {
    dispatch_once(&pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__onceToken, &__block_literal_global_97797);
  }

LABEL_5:
  v12 = [a1 image];
  [a1 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [a1 contentMode];
  v22 = objc_alloc_init(PUImageViewExtraction);
  if (pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__onceToken_10 != -1)
  {
    dispatch_once(&pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__onceToken_10, &__block_literal_global_12);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__UIImageView_PhotosUI__pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler___block_invoke_3;
  aBlock[3] = &unk_1E7B80B70;
  v23 = v22;
  v32 = v23;
  v35 = a5;
  v36 = a6;
  v24 = v12;
  v33 = v24;
  v37 = v14;
  v38 = v16;
  v39 = v18;
  v40 = v20;
  v41 = v21;
  v42 = a3;
  v25 = v11;
  v34 = v25;
  v26 = _Block_copy(aBlock);
  v27 = v26;
  if (a3)
  {
    (*(v25 + 2))(v25, pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__approximationImage);
    dispatch_async(pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler___extractionQueue, v27);
  }

  else
  {
    (*(v26 + 2))(v26);
  }

  v28 = v23;

  return v23;
}

@end