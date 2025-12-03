@interface TURemoteVideoClient
- (TURemoteVideoClient)init;
- (TURemoteVideoClient)initWithVideoContextSlotIdentifier:(int64_t)identifier;
- (void)cleanUpSubLayerForLayer:(id)layer;
- (void)insertSubLayerInLayer:(id)layer videoSlotIdentifier:(int64_t)identifier;
- (void)setVideoLayer:(id)layer forMode:(int)mode;
@end

@implementation TURemoteVideoClient

- (TURemoteVideoClient)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TURemoteVideoClient.m" lineNumber:44 description:{@"%s is not available. Use a designated initializer instead.", "-[TURemoteVideoClient init]"}];

  return 0;
}

- (TURemoteVideoClient)initWithVideoContextSlotIdentifier:(int64_t)identifier
{
  v5.receiver = self;
  v5.super_class = TURemoteVideoClient;
  result = [(TURemoteVideoClient *)&v5 init];
  if (result)
  {
    result->_videoContextSlotIdentifier = identifier;
  }

  return result;
}

- (void)setVideoLayer:(id)layer forMode:(int)mode
{
  layerCopy = layer;
  videoLayer = [(TURemoteVideoClient *)self videoLayer];

  if (videoLayer != layerCopy)
  {
    videoLayer2 = [(TURemoteVideoClient *)self videoLayer];

    if (videoLayer2)
    {
      videoLayer3 = [(TURemoteVideoClient *)self videoLayer];
      [(TURemoteVideoClient *)self cleanUpSubLayerForLayer:videoLayer3];
    }

    [(TURemoteVideoClient *)self setVideoLayer:layerCopy];
    videoLayer4 = [(TURemoteVideoClient *)self videoLayer];

    if (videoLayer4)
    {
      [getCATransactionClass() begin];
      videoLayer5 = [(TURemoteVideoClient *)self videoLayer];
      [(TURemoteVideoClient *)self insertSubLayerInLayer:videoLayer5 videoSlotIdentifier:[(TURemoteVideoClient *)self videoContextSlotIdentifier]];

      [getCATransactionClass() commit];
    }
  }
}

- (void)insertSubLayerInLayer:(id)layer videoSlotIdentifier:(int64_t)identifier
{
  v54 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  nameForSubLayer = [(TURemoteVideoClient *)self nameForSubLayer];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  sublayers = [layerCopy sublayers];
  v9 = [sublayers countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v9)
  {
    v10 = *v46;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v46 != v10)
      {
        objc_enumerationMutation(sublayers);
      }

      v12 = *(*(&v45 + 1) + 8 * v11);
      name = [v12 name];
      v14 = [name isEqualToString:nameForSubLayer];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [sublayers countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    layer = v12;

    if (layer)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  *&v41 = 0;
  *(&v41 + 1) = &v41;
  *&v42 = 0x2050000000;
  v16 = getCALayerClass_softClass;
  *(&v42 + 1) = getCALayerClass_softClass;
  if (!getCALayerClass_softClass)
  {
    *&v33 = MEMORY[0x1E69E9820];
    *(&v33 + 1) = 3221225472;
    *&v34 = __getCALayerClass_block_invoke;
    *(&v34 + 1) = &unk_1E7424CD8;
    *&v35 = &v41;
    __getCALayerClass_block_invoke(&v33);
    v16 = *(*(&v41 + 1) + 24);
  }

  v17 = v16;
  _Block_object_dispose(&v41, 8);
  layer = [v16 layer];
  [layerCopy addSublayer:layer];
LABEL_14:
  [layerCopy bounds];
  v19 = v18;
  v21 = v20;
  [layer setBounds:{0.0, 0.0, v20, v18}];
  [layer setPosition:{v19 * 0.5, v21 * 0.5}];
  *&v41 = 0;
  *(&v41 + 1) = &v41;
  *&v42 = 0x2020000000;
  v22 = getCGAffineTransformMakeRotationSymbolLoc_ptr;
  *(&v42 + 1) = getCGAffineTransformMakeRotationSymbolLoc_ptr;
  if (!getCGAffineTransformMakeRotationSymbolLoc_ptr)
  {
    *&v33 = MEMORY[0x1E69E9820];
    *(&v33 + 1) = 3221225472;
    *&v34 = __getCGAffineTransformMakeRotationSymbolLoc_block_invoke;
    *(&v34 + 1) = &unk_1E7424CD8;
    *&v35 = &v41;
    __getCGAffineTransformMakeRotationSymbolLoc_block_invoke(&v33);
    v22 = *(*(&v41 + 1) + 24);
  }

  _Block_object_dispose(&v41, 8);
  if (!v22)
  {
    [TURemoteVideoClient insertSubLayerInLayer:videoSlotIdentifier:];
  }

  v22(&v41, 1.57079633);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v23 = getCATransform3DMakeAffineTransformSymbolLoc_ptr;
  v52 = getCATransform3DMakeAffineTransformSymbolLoc_ptr;
  if (!getCATransform3DMakeAffineTransformSymbolLoc_ptr)
  {
    *&v33 = MEMORY[0x1E69E9820];
    *(&v33 + 1) = 3221225472;
    *&v34 = __getCATransform3DMakeAffineTransformSymbolLoc_block_invoke;
    *(&v34 + 1) = &unk_1E7424CD8;
    *&v35 = &v49;
    v24 = QuartzCoreLibrary();
    v25 = dlsym(v24, "CATransform3DMakeAffineTransform");
    *(*(v35 + 8) + 24) = v25;
    getCATransform3DMakeAffineTransformSymbolLoc_ptr = *(*(v35 + 8) + 24);
    v23 = v50[3];
  }

  _Block_object_dispose(&v49, 8);
  if (!v23)
  {
    [TURemoteVideoClient insertSubLayerInLayer:videoSlotIdentifier:];
  }

  v33 = v41;
  v34 = v42;
  v35 = v43;
  v23(v44, &v33);
  v37 = v44[4];
  v38 = v44[5];
  v39 = v44[6];
  v40 = v44[7];
  v33 = v44[0];
  v34 = v44[1];
  v35 = v44[2];
  v36 = v44[3];
  [layer setTransform:&v33];
  v26 = getkCAGravityResizeAspectFill();

  if (v26)
  {
    v27 = getkCAGravityResizeAspectFill();
    [layer setContentsGravity:v27];
  }

  else
  {
    v27 = TUDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [TURemoteVideoClient insertSubLayerInLayer:v27 videoSlotIdentifier:?];
    }
  }

  [layer setName:nameForSubLayer];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __65__TURemoteVideoClient_insertSubLayerInLayer_videoSlotIdentifier___block_invoke;
  v30[3] = &unk_1E7425340;
  v31 = layer;
  identifierCopy = identifier;
  v28 = layer;
  dispatch_async(MEMORY[0x1E69E96A0], v30);

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t __65__TURemoteVideoClient_insertSubLayerInLayer_videoSlotIdentifier___block_invoke(uint64_t a1)
{
  [getCATransactionClass() begin];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getCAContextClass_softClass;
  v10 = getCAContextClass_softClass;
  if (!getCAContextClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getCAContextClass_block_invoke;
    v6[3] = &unk_1E7424CD8;
    v6[4] = &v7;
    __getCAContextClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 objectForSlot:*(a1 + 40)];
  [*(a1 + 32) setContents:v4];

  return [getCATransactionClass() commit];
}

- (void)cleanUpSubLayerForLayer:(id)layer
{
  v21 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  nameForSubLayer = [(TURemoteVideoClient *)self nameForSubLayer];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  sublayers = [layerCopy sublayers];
  v7 = [sublayers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(sublayers);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      name = [v11 name];
      v13 = [name isEqualToString:nameForSubLayer];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [sublayers countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v14 = v11;

    if (!v14)
    {
      goto LABEL_13;
    }

    [v14 setContents:0];
    [v14 removeFromSuperlayer];
    sublayers = v14;
  }

LABEL_12:

LABEL_13:
  v15 = *MEMORY[0x1E69E9840];
}

- (void)insertSubLayerInLayer:videoSlotIdentifier:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CATransform3D _CATransform3DMakeAffineTransform(CGAffineTransform)"];
  [v0 handleFailureInFunction:v1 file:@"TURemoteVideoClient.m" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)insertSubLayerInLayer:videoSlotIdentifier:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGAffineTransform _CGAffineTransformMakeRotation(CGFloat)"];
  [v0 handleFailureInFunction:v1 file:@"TURemoteVideoClient.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

@end