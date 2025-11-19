@interface PXStoryConcreteAutoEditClip
+ (id)composedClipWithClips:(id)a3;
- ($34B6A3E4F6D84C42DF3A29A209E596E5)durationInfo;
- ($61DF9F24A7329A1BB61181F7D05C320D)moduleInfo;
- ($654D12A5B96C89A393ABE69D6FE3CC0A)audioInfo;
- ($7B05257DCED3654557744F96476E9D8A)transitionInfo;
- (PXStoryConcreteAutoEditClip)init;
- (PXStoryConcreteAutoEditClip)initWithDisplayAsset:(id)a3;
- (PXStoryConcreteAutoEditClip)initWithDisplayAssets:(id)a3;
- (id)description;
- (void)setAudioInfo:(id *)a3;
- (void)setDurationInfo:(id *)a3;
- (void)setMotionInfo:(id *)a3;
- (void)setTransitionInfo:(id *)a3;
@end

@implementation PXStoryConcreteAutoEditClip

- ($61DF9F24A7329A1BB61181F7D05C320D)moduleInfo
{
  v2 = *&self->_moduleInfo.isStart;
  moduleType = self->_moduleInfo.moduleType;
  result.var1 = v2;
  result.var2 = BYTE1(v2);
  result.var0 = moduleType;
  return result;
}

- (void)setAudioInfo:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var2;
  v5 = *&a3->var4;
  self->_audioInfo.fadeOut = a3->var6;
  *&self->_audioInfo.volume = v4;
  *&self->_audioInfo.LCutLength = v5;
  *&self->_audioInfo.mode = v3;
}

- ($654D12A5B96C89A393ABE69D6FE3CC0A)audioInfo
{
  v3 = *&self[2].var2;
  *&retstr->var0 = *&self[2].var0;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[2].var4;
  retstr->var6 = self[2].var6;
  return self;
}

- (void)setTransitionInfo:(id *)a3
{
  var2 = a3->var2;
  *&self->_transitionInfo.kind = *&a3->var0;
  self->_transitionInfo.settings = var2;
}

- ($7B05257DCED3654557744F96476E9D8A)transitionInfo
{
  v3 = *&self[3].var0;
  *&retstr->var0 = self[2].var2;
  retstr->var2 = v3;
  return self;
}

- (void)setMotionInfo:(id *)a3
{
  v3 = *&a3->var0;
  self->_motionInfo.settings.pan.relativeMotion = a3->var1.var0.var1;
  *&self->_motionInfo.style = v3;
}

- (void)setDurationInfo:(id *)a3
{
  *&self->_durationInfo.minimumDuration.value = *&a3->var0.var0;
  v3 = *&a3->var0.var3;
  v4 = *&a3->var1.var1;
  v5 = *&a3->var2.var0;
  self->_durationInfo.maximumDuration.epoch = a3->var2.var3;
  *&self->_durationInfo.maximumDuration.value = v5;
  *&self->_durationInfo.preferredDuration.timescale = v4;
  *&self->_durationInfo.minimumDuration.epoch = v3;
}

- ($34B6A3E4F6D84C42DF3A29A209E596E5)durationInfo
{
  v3 = *&self[2].var1.var3;
  v4 = *&self[3].var0.var0;
  *&retstr->var1.var1 = *&self[2].var2.var1;
  *&retstr->var2.var0 = v4;
  retstr->var2.var3 = self[3].var0.var3;
  *&retstr->var0.var0 = *&self[2].var1.var0;
  *&retstr->var0.var3 = v3;
  return self;
}

- (id)description
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = self->_displayAssets;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v30 + 1) + 8 * i) uuid];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  [(PXStoryConcreteAutoEditClip *)self playbackStyle];
  v12 = PFDisplayAssetPlaybackStyleDescription();
  [(PXStoryConcreteAutoEditClip *)self durationInfo];
  time = v29;
  Seconds = CMTimeGetSeconds(&time);
  [(PXStoryConcreteAutoEditClip *)self durationInfo];
  time = v28;
  v14 = CMTimeGetSeconds(&time);
  [(PXStoryConcreteAutoEditClip *)self durationInfo];
  time = v27;
  v15 = CMTimeGetSeconds(&time);
  [(PXStoryConcreteAutoEditClip *)self durationMultiplier];
  v17 = v16;
  [(PXStoryConcreteAutoEditClip *)self motionInfo];
  v18 = PXStoryAutoEditClipMotionInfoDescription(&time.value);
  [(PXStoryConcreteAutoEditClip *)self transitionInfo];
  v19 = PXStoryAutoEditClipTransitionInfoDescription(&time);
  [(PXStoryConcreteAutoEditClip *)self audioInfo];
  v20 = PXStoryClipAudioInfoDescription(&time);
  v21 = [(PXStoryConcreteAutoEditClip *)self moduleInfo];
  v23 = PXStoryAutoEditClipModuleInfoDescription(v21, v22);
  v24 = [v10 stringWithFormat:@"<%@:%p assetUUIDs=%@, playbackStyle=%@, minDuration=%.2fs, idealDuration=%.2fs, maxDuration=%.2fs, multiplier=%.2f, motion=%@, transition=%@, audio=%@, module=%@>", v11, self, v3, v12, *&Seconds, *&v14, *&v15, v17, v18, v19, v20, v23];

  return v24;
}

- (PXStoryConcreteAutoEditClip)initWithDisplayAssets:(id)a3
{
  v5 = a3;
  if (![v5 count])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteAutoEditClip.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"displayAssets.count != 0"}];
  }

  v14.receiver = self;
  v14.super_class = PXStoryConcreteAutoEditClip;
  v6 = [(PXStoryConcreteAutoEditClip *)&v14 init];
  if (v6)
  {
    v7 = [v5 copy];
    v8 = *(v6 + 1);
    *(v6 + 1) = v7;

    v9 = MEMORY[0x1E69C0DB0];
    v10 = *MEMORY[0x1E69C0DB0];
    *(v6 + 184) = *(MEMORY[0x1E69C0DB0] + 16);
    v11 = *(v9 + 48);
    *(v6 + 200) = *(v9 + 32);
    *(v6 + 216) = v11;
    *(v6 + 29) = *(v9 + 64);
    *(v6 + 168) = v10;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0x3FF0000000000000;
    *(v6 + 7) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 9) = 0u;
    *(v6 + 20) = 0;
    *(v6 + 5) = 0;
    *(v6 + 6) = 0;
  }

  return v6;
}

- (PXStoryConcreteAutoEditClip)initWithDisplayAsset:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(PXStoryConcreteAutoEditClip *)self initWithDisplayAssets:v6, v9, v10];
  return v7;
}

- (PXStoryConcreteAutoEditClip)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteAutoEditClip.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXStoryConcreteAutoEditClip init]"}];

  abort();
}

+ (id)composedClipWithClips:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v34 + 1) + 8 * i) displayAssets];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v7);
  }

  v11 = [[PXStoryConcreteAutoEditClip alloc] initWithDisplayAssets:v4];
  v12 = [v5 firstObject];
  -[PXStoryConcreteAutoEditClip setPlaybackStyle:](v11, "setPlaybackStyle:", [v12 playbackStyle]);
  if (v12)
  {
    [v12 durationInfo];
    v26 = v31;
    v27 = v32;
    v28 = v33;
    v24 = v29;
    v25 = v30;
    [(PXStoryConcreteAutoEditClip *)v11 setDurationInfo:&v24];
    [v12 motionInfo];
    v24 = v22;
    *&v25 = v23;
    [(PXStoryConcreteAutoEditClip *)v11 setMotionInfo:&v24];
    [v12 transitionInfo];
    v24 = v20;
    v25 = v21;
    [(PXStoryConcreteAutoEditClip *)v11 setTransitionInfo:&v24];
    [v12 audioInfo];
  }

  else
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    [(PXStoryConcreteAutoEditClip *)v11 setDurationInfo:&v24];
    v24 = 0uLL;
    *&v25 = 0;
    [(PXStoryConcreteAutoEditClip *)v11 setMotionInfo:&v24];
    v24 = 0u;
    v25 = 0u;
    [(PXStoryConcreteAutoEditClip *)v11 setTransitionInfo:&v24];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  v24 = v16;
  v25 = v17;
  v26 = v18;
  *&v27 = v19;
  [(PXStoryConcreteAutoEditClip *)v11 setAudioInfo:&v24, v16, v17, v18, v19];
  v13 = [v12 moduleInfo];
  [(PXStoryConcreteAutoEditClip *)v11 setModuleInfo:v13, v14];

  return v11;
}

@end