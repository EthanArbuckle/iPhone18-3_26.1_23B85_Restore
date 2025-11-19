@interface SBSystemApertureFakeDisplayOffTestRecipe
- (BOOL)_changeBlueLayerVisibility:(BOOL)a3;
- (BOOL)_changeMatchMovedIndicatorVisiblity:(BOOL)a3;
- (BOOL)_changeRecordingIndicatorLayerVisibility:(BOOL)a3;
- (BOOL)_changeRecordingIndicatorPortalLayerVisibility:(BOOL)a3;
- (BOOL)_changeRedLayerVisibility:(BOOL)a3;
- (void)_setupContext;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBSystemApertureFakeDisplayOffTestRecipe

- (void)_setupContext
{
  v39[4] = *MEMORY[0x277D85DE8];
  v3 = SBMainWindowScene();
  v4 = [v3 screen];
  v5 = [v4 _display];
  [v4 scale];
  v7 = v6;
  v8 = [v3 isExternalDisplayWindowScene];
  v9 = *MEMORY[0x277CBED28];
  v10 = *MEMORY[0x277CDA120];
  v38[0] = *MEMORY[0x277CDA100];
  v38[1] = v10;
  v39[0] = v9;
  v39[1] = v9;
  v38[2] = *MEMORY[0x277CDA0F0];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "displayId")}];
  v38[3] = @"canRenderAboveBlankingContext";
  v39[2] = v11;
  v39[3] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];

  v13 = [MEMORY[0x277CD9E38] remoteContextWithOptions:v12];
  underInfiniteHighLevelContext = self->_underInfiniteHighLevelContext;
  self->_underInfiniteHighLevelContext = v13;

  LODWORD(v15) = 2139095040;
  [(CAContext *)self->_underInfiniteHighLevelContext setLevel:v15];
  [(CAContext *)self->_underInfiniteHighLevelContext setSecure:1];
  v16 = [MEMORY[0x277CD9ED0] layer];
  underInfiniteHighLevelRootLayer = self->_underInfiniteHighLevelRootLayer;
  self->_underInfiniteHighLevelRootLayer = v16;

  v18 = self->_underInfiniteHighLevelRootLayer;
  v19 = [MEMORY[0x277D75348] blackColor];
  -[CALayer setBackgroundColor:](v18, "setBackgroundColor:", [v19 CGColor]);

  v20 = self->_underInfiniteHighLevelRootLayer;
  v21 = [MEMORY[0x277D75348] systemPinkColor];
  -[CALayer setBorderColor:](v20, "setBorderColor:", [v21 CGColor]);

  [(CALayer *)self->_underInfiniteHighLevelRootLayer setBorderWidth:6.0];
  [(CALayer *)self->_underInfiniteHighLevelRootLayer setOpacity:0.0];
  v22 = self->_underInfiniteHighLevelRootLayer;
  CGAffineTransformMakeScale(&v37, v7, v7);
  [(CALayer *)v22 setAffineTransform:&v37];
  if (v8)
  {
    [v4 nativeBounds];
  }

  else
  {
    GSMainScreenPixelSize();
    BSRectWithSize();
  }

  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  [(CALayer *)self->_underInfiniteHighLevelRootLayer setFrame:?];
  GSMainScreenOrientation();
  if (!((v31 == 0.0) | v8 & 1))
  {
    v32 = v31;
    v33 = self->_underInfiniteHighLevelRootLayer;
    v40.origin.x = v27;
    v40.origin.y = v28;
    v40.size.width = v29;
    v40.size.height = v30;
    MidY = CGRectGetMidY(v40);
    v41.origin.x = v27;
    v41.origin.y = v28;
    v41.size.width = v29;
    v41.size.height = v30;
    [(CALayer *)v33 setPosition:MidY, CGRectGetMidX(v41)];
    v35 = self->_underInfiniteHighLevelRootLayer;
    if (v35)
    {
      [(CALayer *)self->_underInfiniteHighLevelRootLayer affineTransform];
    }

    else
    {
      memset(&v36, 0, sizeof(v36));
    }

    CGAffineTransformRotate(&v37, &v36, -v32);
    [(CALayer *)v35 setAffineTransform:&v37];
  }

  [(CAContext *)self->_underInfiniteHighLevelContext setLayer:self->_underInfiniteHighLevelRootLayer, *&v36.a, *&v36.c, *&v36.tx];
}

- (void)handleVolumeIncrease
{
  if ([(SBSystemApertureFakeDisplayOffTestRecipe *)self _changeRecordingIndicatorLayerVisibility:1]|| [(SBSystemApertureFakeDisplayOffTestRecipe *)self _changeRecordingIndicatorPortalLayerVisibility:1]|| [(SBSystemApertureFakeDisplayOffTestRecipe *)self _changeMatchMovedIndicatorVisiblity:1]|| [(SBSystemApertureFakeDisplayOffTestRecipe *)self _changeBlueLayerVisibility:1]|| [(SBSystemApertureFakeDisplayOffTestRecipe *)self _changeRedLayerVisibility:1])
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemApertureFakeDisplayOffTestRecipe handleVolumeIncrease];
    }
  }
}

- (void)handleVolumeDecrease
{
  if (![(SBSystemApertureFakeDisplayOffTestRecipe *)self _changeRedLayerVisibility:0]&& ![(SBSystemApertureFakeDisplayOffTestRecipe *)self _changeBlueLayerVisibility:0]&& ![(SBSystemApertureFakeDisplayOffTestRecipe *)self _changeMatchMovedIndicatorVisiblity:0]&& ![(SBSystemApertureFakeDisplayOffTestRecipe *)self _changeRecordingIndicatorPortalLayerVisibility:0]&& ![(SBSystemApertureFakeDisplayOffTestRecipe *)self _changeRecordingIndicatorLayerVisibility:0])
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemApertureFakeDisplayOffTestRecipe handleVolumeDecrease];
    }
  }
}

- (BOOL)_changeRecordingIndicatorLayerVisibility:(BOOL)a3
{
  if (!a3)
  {
    if (self->_recordingIndicatorLayer)
    {
      v10 = SBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [SBSystemApertureFakeDisplayOffTestRecipe _changeRecordingIndicatorLayerVisibility:];
      }

      [(SBRecordingIndicatorLayer *)self->_recordingIndicatorLayer removeFromSuperlayer];
      recordingIndicatorLayer = self->_recordingIndicatorLayer;
      self->_recordingIndicatorLayer = 0;

      [(CALayer *)self->_underInfiniteHighLevelRootLayer removeFromSuperlayer];
      underInfiniteHighLevelRootLayer = self->_underInfiniteHighLevelRootLayer;
      self->_underInfiniteHighLevelRootLayer = 0;

      underInfiniteHighLevelContext = self->_underInfiniteHighLevelContext;
      self->_underInfiniteHighLevelContext = 0;
      goto LABEL_16;
    }

    return 0;
  }

  if (!self->_underInfiniteHighLevelContext)
  {
    [(SBSystemApertureFakeDisplayOffTestRecipe *)self _setupContext];
  }

  if (self->_recordingIndicatorLayer)
  {
    return 0;
  }

  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SBSystemApertureFakeDisplayOffTestRecipe _changeRecordingIndicatorLayerVisibility:];
  }

  v5 = +[SBRecordingIndicatorLayer layer];
  v6 = self->_recordingIndicatorLayer;
  self->_recordingIndicatorLayer = v5;

  [(SBRecordingIndicatorLayer *)self->_recordingIndicatorLayer setIndicatorType:0];
  [(SBRecordingIndicatorLayer *)self->_recordingIndicatorLayer setFrame:300.0, 300.0, 20.0, 20.0];
  if (self->_parentSourceIndicatorOnMainLayer)
  {
    v7 = SBMainWindowScene();
    v8 = [v7 keyWindow];
    underInfiniteHighLevelContext = [v8 layer];
  }

  else
  {
    underInfiniteHighLevelContext = self->_underInfiniteHighLevelRootLayer;
  }

  self->_parentSourceIndicatorOnMainLayer ^= 1u;
  [(CALayer *)underInfiniteHighLevelContext addSublayer:self->_recordingIndicatorLayer];
  LODWORD(v14) = 1.0;
  [(CALayer *)self->_underInfiniteHighLevelRootLayer setOpacity:v14];
LABEL_16:

  return 1;
}

- (BOOL)_changeRecordingIndicatorPortalLayerVisibility:(BOOL)a3
{
  recordingIndicatorPortalLayer = self->_recordingIndicatorPortalLayer;
  if (a3)
  {
    if (!recordingIndicatorPortalLayer)
    {
      v5 = SBLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [SBSystemApertureFakeDisplayOffTestRecipe _changeRecordingIndicatorPortalLayerVisibility:];
      }

      v6 = [MEMORY[0x277CD9F30] layer];
      v7 = self->_recordingIndicatorPortalLayer;
      self->_recordingIndicatorPortalLayer = v6;

      v8 = 1;
      [(CAPortalLayer *)self->_recordingIndicatorPortalLayer setMatchesOpacity:1];
      [(CAPortalLayer *)self->_recordingIndicatorPortalLayer setMatchesPosition:0];
      v9 = self->_recordingIndicatorPortalLayer;
      [(SBRecordingIndicatorLayer *)self->_recordingIndicatorLayer frame];
      v18 = CGRectOffset(v17, -40.0, -40.0);
      [(CAPortalLayer *)v9 setFrame:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
      [(CAPortalLayer *)self->_recordingIndicatorPortalLayer setHidesSourceLayer:0];
      [(CAPortalLayer *)self->_recordingIndicatorPortalLayer setMatchesTransform:1];
      v10 = self->_recordingIndicatorPortalLayer;
      v11 = [MEMORY[0x277D75348] systemCyanColor];
      -[CAPortalLayer setBorderColor:](v10, "setBorderColor:", [v11 CGColor]);

      [(CAPortalLayer *)self->_recordingIndicatorPortalLayer setBorderWidth:1.0];
      [(CAPortalLayer *)self->_recordingIndicatorPortalLayer setSourceLayer:self->_recordingIndicatorLayer];
      [(CALayer *)self->_underInfiniteHighLevelRootLayer addSublayer:self->_recordingIndicatorPortalLayer];
      v12 = dispatch_time(0, 100000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __91__SBSystemApertureFakeDisplayOffTestRecipe__changeRecordingIndicatorPortalLayerVisibility___block_invoke;
      block[3] = &unk_2783A8C18;
      block[4] = self;
      dispatch_after(v12, MEMORY[0x277D85CD0], block);
      return v8;
    }

    return 0;
  }

  if (!recordingIndicatorPortalLayer)
  {
    return 0;
  }

  v13 = SBLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SBSystemApertureFakeDisplayOffTestRecipe _changeRecordingIndicatorPortalLayerVisibility:];
  }

  [(CAPortalLayer *)self->_recordingIndicatorPortalLayer removeFromSuperlayer];
  v14 = self->_recordingIndicatorPortalLayer;
  self->_recordingIndicatorPortalLayer = 0;

  return 1;
}

void __91__SBSystemApertureFakeDisplayOffTestRecipe__changeRecordingIndicatorPortalLayerVisibility___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  [v2 setFromValue:&unk_283370D30];
  [v2 setToValue:&unk_283370D48];
  [v2 setDuration:1.0];
  [v2 setFillMode:*MEMORY[0x277CDA230]];
  [v2 setRemovedOnCompletion:0];
  [*(*(a1 + 32) + 56) addAnimation:v2 forKey:@"com.apple.SpringBoard.SBSystemApertureFakeDisplayOffTestRecipe.transformAnimation"];
  v3 = dispatch_time(0, 1100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__SBSystemApertureFakeDisplayOffTestRecipe__changeRecordingIndicatorPortalLayerVisibility___block_invoke_35;
  block[3] = &unk_2783A8C18;
  block[4] = *(a1 + 32);
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __91__SBSystemApertureFakeDisplayOffTestRecipe__changeRecordingIndicatorPortalLayerVisibility___block_invoke_35(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  [v2 setFromValue:&unk_283370D48];
  [v2 setToValue:&unk_28336F290];
  [v2 setDuration:2.0];
  [v2 setFillMode:*MEMORY[0x277CDA230]];
  [v2 setRemovedOnCompletion:0];
  [*(*(a1 + 32) + 56) addAnimation:v2 forKey:@"com.apple.SpringBoard.SBSystemApertureFakeDisplayOffTestRecipe.secondTransformAnimation"];
}

- (BOOL)_changeMatchMovedIndicatorVisiblity:(BOOL)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  matchMovedRecordingIndicatorLayer = self->_matchMovedRecordingIndicatorLayer;
  if (a3)
  {
    if (!matchMovedRecordingIndicatorLayer)
    {
      v5 = SBLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [SBSystemApertureFakeDisplayOffTestRecipe _changeMatchMovedIndicatorVisiblity:];
      }

      v6 = +[SBRecordingIndicatorLayer layer];
      v7 = self->_matchMovedRecordingIndicatorLayer;
      self->_matchMovedRecordingIndicatorLayer = v6;

      [(SBRecordingIndicatorLayer *)self->_matchMovedRecordingIndicatorLayer setIndicatorType:2];
      [(SBRecordingIndicatorLayer *)self->_matchMovedRecordingIndicatorLayer setFrame:200.0, 300.0, 20.0, 20.0];
      [(CALayer *)self->_underInfiniteHighLevelRootLayer addSublayer:self->_matchMovedRecordingIndicatorLayer];
      v8 = objc_alloc_init(MEMORY[0x277CD9EE8]);
      [(SBRecordingIndicatorLayer *)v8 setSourceLayer:self->_recordingIndicatorLayer];
      __asm { FMOV            V0.2D, #0.5 }

      v20 = _Q0;
      v14 = [MEMORY[0x277CCAE60] valueWithBytes:&v20 objCType:"{CGPoint=dd}"];
      v21[0] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      [(SBRecordingIndicatorLayer *)v8 setSourcePoints:v15];

      [(SBRecordingIndicatorLayer *)v8 setUsesNormalizedCoordinates:1];
      [(SBRecordingIndicatorLayer *)v8 setDuration:INFINITY];
      [(SBRecordingIndicatorLayer *)v8 setFillMode:*MEMORY[0x277CDA230]];
      [(SBRecordingIndicatorLayer *)v8 setRemovedOnCompletion:0];
      [(SBRecordingIndicatorLayer *)v8 setAppliesScale:0];
      [(SBRecordingIndicatorLayer *)v8 setAppliesRotation:0];
      [(SBRecordingIndicatorLayer *)v8 setAppliesX:0];
      [(SBRecordingIndicatorLayer *)v8 setAppliesY:1];
      [(SBRecordingIndicatorLayer *)self->_matchMovedRecordingIndicatorLayer addAnimation:v8 forKey:@"com.apple.SpringBoard.SBSystemApertureFakeDisplayOffTestRecipe.matchMoveAnimation"];
      v16 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__SBSystemApertureFakeDisplayOffTestRecipe__changeMatchMovedIndicatorVisiblity___block_invoke;
      block[3] = &unk_2783A8C18;
      block[4] = self;
      dispatch_after(v16, MEMORY[0x277D85CD0], block);
LABEL_10:

      return 1;
    }
  }

  else if (matchMovedRecordingIndicatorLayer)
  {
    v17 = SBLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemApertureFakeDisplayOffTestRecipe _changeMatchMovedIndicatorVisiblity:];
    }

    [(SBRecordingIndicatorLayer *)self->_recordingIndicatorLayer removeAnimationForKey:@"com.apple.SpringBoard.SBSystemApertureFakeDisplayOffTestRecipe.positionAnimation"];
    [(SBRecordingIndicatorLayer *)self->_matchMovedRecordingIndicatorLayer removeAnimationForKey:@"com.apple.SpringBoard.SBSystemApertureFakeDisplayOffTestRecipe.matchMoveAnimation"];
    [(SBRecordingIndicatorLayer *)self->_matchMovedRecordingIndicatorLayer removeFromSuperlayer];
    v8 = self->_matchMovedRecordingIndicatorLayer;
    self->_matchMovedRecordingIndicatorLayer = 0;
    goto LABEL_10;
  }

  return 0;
}

void __80__SBSystemApertureFakeDisplayOffTestRecipe__changeMatchMovedIndicatorVisiblity___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) position];
  v4 = v3;
  v5 = v2;
  v6 = -300.0;
  if (v2 < 500.0)
  {
    v6 = 30.0;
  }

  v7 = v2 + v6;
  v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
  *v12 = v4;
  *&v12[1] = v5;
  v9 = [MEMORY[0x277CCAE60] valueWithBytes:v12 objCType:"{CGPoint=dd}"];
  [v8 setFromValue:v9];

  v11[0] = v4 + 1.0;
  v11[1] = v7;
  v10 = [MEMORY[0x277CCAE60] valueWithBytes:v11 objCType:"{CGPoint=dd}"];
  [v8 setToValue:v10];

  [v8 setDuration:1.0];
  [v8 setFillMode:*MEMORY[0x277CDA230]];
  [v8 setRemovedOnCompletion:0];
  [*(*(a1 + 32) + 56) addAnimation:v8 forKey:@"com.apple.SpringBoard.SBSystemApertureFakeDisplayOffTestRecipe.positionAnimation"];
}

- (BOOL)_changeBlueLayerVisibility:(BOOL)a3
{
  blueLayer = self->_blueLayer;
  if (a3)
  {
    if (!blueLayer)
    {
      v5 = SBLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [SBSystemApertureFakeDisplayOffTestRecipe _changeBlueLayerVisibility:];
      }

      v6 = [MEMORY[0x277CD9ED0] layer];
      v7 = self->_blueLayer;
      self->_blueLayer = v6;

      v8 = self->_blueLayer;
      v9 = [MEMORY[0x277D75348] systemBlueColor];
      -[CALayer setBackgroundColor:](v8, "setBackgroundColor:", [v9 CGColor]);

      [(CALayer *)self->_blueLayer setFrame:150.0, 500.0, 50.0, 50.0];
      [(CALayer *)self->_underInfiniteHighLevelRootLayer addSublayer:self->_blueLayer];
      return 1;
    }
  }

  else if (blueLayer)
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemApertureFakeDisplayOffTestRecipe _changeBlueLayerVisibility:];
    }

    [(CALayer *)self->_blueLayer removeFromSuperlayer];
    v11 = self->_blueLayer;
    self->_blueLayer = 0;

    return 1;
  }

  return 0;
}

- (BOOL)_changeRedLayerVisibility:(BOOL)a3
{
  redLayer = self->_redLayer;
  if (a3)
  {
    if (!redLayer)
    {
      v5 = SBLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [SBSystemApertureFakeDisplayOffTestRecipe _changeRedLayerVisibility:];
      }

      v6 = [MEMORY[0x277CD9ED0] layer];
      v7 = self->_redLayer;
      self->_redLayer = v6;

      v8 = self->_redLayer;
      v9 = [MEMORY[0x277D75348] systemRedColor];
      -[CALayer setBackgroundColor:](v8, "setBackgroundColor:", [v9 CGColor]);

      [(CALayer *)self->_redLayer setFrame:200.0, 500.0, 50.0, 50.0];
      [(CALayer *)self->_underInfiniteHighLevelRootLayer addSublayer:self->_redLayer];
      return 1;
    }
  }

  else if (redLayer)
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemApertureFakeDisplayOffTestRecipe _changeRedLayerVisibility:];
    }

    [(CALayer *)self->_redLayer removeFromSuperlayer];
    v11 = self->_redLayer;
    self->_redLayer = 0;

    return 1;
  }

  return 0;
}

@end