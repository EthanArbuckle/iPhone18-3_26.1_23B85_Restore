@interface TSDTextureSet
- (BOOL)isRenderable;
- (CALayer)layer;
- (CGPoint)center;
- (CGPoint)originalPosition;
- (CGRect)boundingRect;
- (CGRect)boundingRectForStage:(int64_t)stage isBuildIn:(BOOL)in;
- (CGRect)contentRectForStage:(int64_t)stage isBuildIn:(BOOL)in;
- (CGRect)frame;
- (CGRect)textureContentRect;
- (NSArray)visibleTextures;
- (TSDTextureSet)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)finalTextureForStage:(int64_t)stage reverse:(BOOL)reverse;
- (id)firstVisibleTextureForTextureType:(int)type;
- (id)newFlattenedTexture;
- (id)newFlattenedTextureFromTextures:(id)textures newRect:(CGRect)rect;
- (id)visibleTexturesForStage:(int64_t)stage isBuildIn:(BOOL)in shouldFlatten:(BOOL)flatten;
- (int64_t)stageIndexForTexture:(id)texture;
- (void)addFinalTexture:(id)texture forStage:(int64_t)stage reverse:(BOOL)reverse;
- (void)addPerspectiveLayerToTexture:(id)texture withShowSize:(CGSize)size;
- (void)addRenderable:(id)renderable forStage:(int64_t)stage;
- (void)adjustAnchorPointRelativeToCenterOfRotation;
- (void)applyActionEffect:(id)effect viewScale:(double)scale isMagicMove:(BOOL)move shouldBake:(BOOL)bake applyScaleOnly:(BOOL)only ignoreScale:(BOOL)ignoreScale shouldCheckActionKeys:(BOOL)keys;
- (void)dealloc;
- (void)hideLayersOfFinalTextures;
- (void)p_applyPositionFromAttributes:(id)attributes viewScale:(double)scale;
- (void)p_resetAttributesWithViewScale:(double)scale;
- (void)releaseSingleTextures;
- (void)removeRenderable:(id)renderable;
- (void)renderIntoContext:(CGContext *)context;
- (void)renderLayerContentsIfNeeded;
- (void)resetAnchorPoint;
- (void)setBoundingRect:(CGRect)rect;
- (void)setBoundingRect:(CGRect)rect forStage:(int64_t)stage;
- (void)setContentRect:(CGRect)rect forStage:(int64_t)stage;
- (void)setIsBaked:(BOOL)baked;
- (void)setLayerGeometryFromRep:(id)rep;
- (void)teardown;
@end

@implementation TSDTextureSet

- (TSDTextureSet)init
{
  v11.receiver = self;
  v11.super_class = TSDTextureSet;
  v2 = [(TSDTextureSet *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->mMaxStageIndex = 0;
    v2->mChunkCount = 0;
    v2->mActiveChunkIndices.location = 0;
    v2->mActiveChunkIndices.length = 0;
    v2->mTextures = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3->mAllTextures = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3->mStageIndexForTexture = objc_alloc_init(MEMORY[0x277D6C320]);
    v3->mFinalTextureForStage = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3->mReverseFinalTextureForStage = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3->mBoundingRectForStage = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3->mContentRectForStage = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3->mFinalTexturesToStageMap = objc_alloc_init(MEMORY[0x277D6C320]);
    v3->mReverseFinalTexturesToStageMap = objc_alloc_init(MEMORY[0x277D6C320]);
    v3->mLayer = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v4 = *(MEMORY[0x277CBF398] + 16);
    v3->mBounds.origin = *MEMORY[0x277CBF398];
    v3->mBounds.size = v4;
    x = v3->mBounds.origin.x;
    v4.width = v3->mBounds.origin.y;
    width = v3->mBounds.size.width;
    height = v3->mBounds.size.height;
    MidX = CGRectGetMidX(*(&v4 - 8));
    MidY = CGRectGetMidY(v3->mBounds);
    v3->mCenter.x = MidX;
    v3->mCenter.y = MidY;
    [(CALayer *)v3->mLayer setFrame:v3->mBounds.origin.x, v3->mBounds.origin.y, v3->mBounds.size.width, v3->mBounds.size.height];
    v3->mTextureContentRect.origin = TSDRectUnit;
    v3->mTextureContentRect.size = *&qword_26CA652A0;
    v3->mTextureOpacity = 1.0;
    v3->mTextureZOrder = -1;
  }

  return v3;
}

- (void)teardown
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  mAllTextures = self->mAllTextures;
  v3 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(mAllTextures);
        }

        [*(*(&v7 + 1) + 8 * i) teardown];
      }

      v4 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)releaseSingleTextures
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  mAllTextures = self->mAllTextures;
  v3 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(mAllTextures);
        }

        [*(*(&v7 + 1) + 8 * i) releaseSingleTexture];
      }

      v4 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDTextureSet;
  [(TSDTextureSet *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->mAllTextures;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([(NSMutableArray *)self->mTextures containsObject:v9])
        {
          [v4 addRenderable:objc_msgSend(v9 forStage:{"copy"), -[TSDTextureSet stageIndexForTexture:](self, "stageIndexForTexture:", v9)}];
        }

        else
        {
          v10 = [-[TSUNoCopyDictionary allKeys](self->mReverseFinalTexturesToStageMap "allKeys")];
          if (v10)
          {
            p_mReverseFinalTexturesToStageMap = &self->mReverseFinalTexturesToStageMap;
          }

          else
          {
            p_mReverseFinalTexturesToStageMap = &self->mFinalTexturesToStageMap;
          }

          v12 = [(TSUNoCopyDictionary *)*p_mReverseFinalTexturesToStageMap objectForKey:v9];
          if (v12)
          {
            [v4 addFinalTexture:objc_msgSend(v9 forStage:"copy") reverse:{objc_msgSend(v12, "intValue"), v10}];
          }
        }
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [v4 setAlternateLayer:self->mAlternateLayer];
  [v4 setBoundingRectForStage:{objc_msgSend(MEMORY[0x277CBEB38], "dictionaryWithDictionary:", self->mBoundingRectForStage)}];
  [v4 setContentRectForStage:{objc_msgSend(MEMORY[0x277CBEB38], "dictionaryWithDictionary:", self->mContentRectForStage)}];
  [(CALayer *)self->mLayer frame];
  [objc_msgSend(v4 "layer")];
  [v4 setOriginalPosition:{self->mOriginalPosition.x, self->mOriginalPosition.y}];
  [v4 setCenter:{self->mCenter.x, self->mCenter.y}];
  return v4;
}

- (CALayer)layer
{
  result = self->mAlternateLayer;
  if (!result)
  {
    return self->mLayer;
  }

  return result;
}

- (CGRect)boundingRectForStage:(int64_t)stage isBuildIn:(BOOL)in
{
  inCopy = in;
  v7 = -[NSMutableDictionary objectForKey:](self->mBoundingRectForStage, "objectForKey:", [MEMORY[0x277CCABB0] numberWithInteger:?]);
  if (v7 || (v7 = [(NSMutableDictionary *)self->mBoundingRectForStage objectForKey:&unk_287DDD4D0]) != 0)
  {
    [v7 CGRectValue];
  }

  else
  {
    [(TSDTextureSet *)self boundingRect];
  }

  x = v8;
  y = v9;
  width = v10;
  height = v11;
  if (stage || !inCopy)
  {
    if (inCopy)
    {
      goto LABEL_11;
    }

    if (self->mMaxStageIndex != stage)
    {
      goto LABEL_17;
    }
  }

  v16 = [(NSMutableDictionary *)self->mBoundingRectForStage objectForKey:&unk_287DDD4D0];
  if (v16)
  {
    [v16 CGRectValue];
    v36.origin.x = v17;
    v36.origin.y = v18;
    v36.size.width = v19;
    v36.size.height = v20;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v32 = CGRectUnion(v31, v36);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
  }

  if (!inCopy)
  {
LABEL_17:
    if (stage || inCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_11:
  v21 = !inCopy;
  if (stage)
  {
    v21 = 0;
  }

  if (v21 || self->mMaxStageIndex == stage)
  {
LABEL_19:
    v22 = [(NSMutableDictionary *)self->mBoundingRectForStage objectForKey:&unk_287DDD4E8];
    if (v22)
    {
      [v22 CGRectValue];
      v37.origin.x = v23;
      v37.origin.y = v24;
      v37.size.width = v25;
      v37.size.height = v26;
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v34 = CGRectUnion(v33, v37);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
    }
  }

LABEL_21:
  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)contentRectForStage:(int64_t)stage isBuildIn:(BOOL)in
{
  inCopy = in;
  v7 = -[NSMutableDictionary objectForKey:](self->mContentRectForStage, "objectForKey:", [MEMORY[0x277CCABB0] numberWithInteger:?]);
  if (v7 || (v7 = [(NSMutableDictionary *)self->mContentRectForStage objectForKey:&unk_287DDD4D0]) != 0)
  {
    [v7 CGRectValue];
  }

  else
  {
    [(TSDTextureSet *)self boundingRect];
  }

  x = v8;
  y = v9;
  width = v10;
  height = v11;
  if (stage || !inCopy)
  {
    if (inCopy)
    {
      goto LABEL_11;
    }

    if (self->mMaxStageIndex != stage)
    {
      goto LABEL_17;
    }
  }

  v16 = [(NSMutableDictionary *)self->mContentRectForStage objectForKey:&unk_287DDD4D0];
  if (v16)
  {
    [v16 CGRectValue];
    v36.origin.x = v17;
    v36.origin.y = v18;
    v36.size.width = v19;
    v36.size.height = v20;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v32 = CGRectUnion(v31, v36);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
  }

  if (!inCopy)
  {
LABEL_17:
    if (stage || inCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_11:
  v21 = !inCopy;
  if (stage)
  {
    v21 = 0;
  }

  if (v21 || self->mMaxStageIndex == stage)
  {
LABEL_19:
    v22 = [(NSMutableDictionary *)self->mContentRectForStage objectForKey:&unk_287DDD4E8];
    if (v22)
    {
      [v22 CGRectValue];
      v37.origin.x = v23;
      v37.origin.y = v24;
      v37.size.width = v25;
      v37.size.height = v26;
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v34 = CGRectUnion(v33, v37);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
    }
  }

LABEL_21:
  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)addRenderable:(id)renderable forStage:(int64_t)stage
{
  if (![renderable textureType])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTextureSet addRenderable:forStage:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTextureSet.m"), 277, @"Unknown texture type! Probably because it wasn't set! Go do that!"}];
  }

  [(NSMutableArray *)self->mTextures addObject:renderable];
  [(NSMutableArray *)self->mAllTextures addObject:renderable];
  [renderable setParent:self];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:stage];
  [(TSUNoCopyDictionary *)self->mStageIndexForTexture setObject:v9 forUncopiedKey:renderable];
  [renderable frame];
  v62.origin.x = v10;
  v62.origin.y = v11;
  v62.size.width = v12;
  v62.size.height = v13;
  self->mBounds = CGRectUnion(self->mBounds, v62);
  [(CALayer *)self->mLayer setFrame:?];
  v14 = [(NSMutableDictionary *)self->mBoundingRectForStage objectForKey:v9];
  v15 = *MEMORY[0x277CBF398];
  v16 = *(MEMORY[0x277CBF398] + 8);
  v17 = *(MEMORY[0x277CBF398] + 16);
  v18 = *(MEMORY[0x277CBF398] + 24);
  v19 = v18;
  v20 = v17;
  v21 = v16;
  v22 = *MEMORY[0x277CBF398];
  if (v14)
  {
    [v14 CGRectValue];
    v22 = v23;
    v21 = v24;
    v20 = v25;
    v19 = v26;
  }

  [renderable frame];
  v63.origin.x = v27;
  v63.origin.y = v28;
  v63.size.width = v29;
  v63.size.height = v30;
  v57.origin.x = v22;
  v57.origin.y = v21;
  v57.size.width = v20;
  v57.size.height = v19;
  v58 = CGRectUnion(v57, v63);
  -[NSMutableDictionary setObject:forKey:](self->mBoundingRectForStage, "setObject:forKey:", [MEMORY[0x277CCAE60] valueWithCGRect:{v58.origin.x, v58.origin.y, v58.size.width, v58.size.height}], v9);
  v31 = [(NSMutableDictionary *)self->mContentRectForStage objectForKey:v9];
  if (v31)
  {
    [v31 CGRectValue];
    v15 = v32;
    v16 = v33;
    v17 = v34;
    v18 = v35;
  }

  r1 = v18;
  [renderable contentRect];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  [renderable offset];
  v44 = v17;
  v45 = v16;
  v46 = v15;
  v48 = v47;
  [renderable offset];
  v50 = v49;
  v59.origin.x = v37;
  v59.origin.y = v39;
  v59.size.width = v41;
  v59.size.height = v43;
  v64 = CGRectOffset(v59, v48, v50);
  v60.origin.x = v46;
  v60.origin.y = v45;
  v60.size.width = v44;
  v60.size.height = r1;
  v61 = CGRectUnion(v60, v64);
  -[NSMutableDictionary setObject:forKey:](self->mContentRectForStage, "setObject:forKey:", [MEMORY[0x277CCAE60] valueWithCGRect:{v61.origin.x, v61.origin.y, v61.size.width, v61.size.height}], v9);
  -[CALayer addSublayer:](self->mLayer, "addSublayer:", [renderable layer]);
  MidX = CGRectGetMidX(self->mBounds);
  MidY = CGRectGetMidY(self->mBounds);
  self->mCenter.x = MidX;
  self->mCenter.y = MidY;
  if (self->mMaxStageIndex < stage)
  {
    self->mMaxStageIndex = stage;
  }

  ++self->mChunkCount;
  v53 = [(NSArray *)[(CALayer *)self->mLayer sublayers] sortedArrayUsingComparator:&__block_literal_global_39];
  mLayer = self->mLayer;

  [(CALayer *)mLayer setSublayers:v53];
}

uint64_t __40__TSDTextureSet_addRenderable_forStage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [objc_msgSend(a2 valueForKey:{@"kTSDTextureLayerKeyTexturedRectangle", "nonretainedObjectValue"}];
  v5 = [objc_msgSend(a3 valueForKey:{@"kTSDTextureLayerKeyTexturedRectangle", "nonretainedObjectValue"}];
  v6 = [v4 textureType];
  v7 = [v5 textureType];
  if (v6 < v7)
  {
    return -1;
  }

  else
  {
    return v6 > v7;
  }
}

- (void)addFinalTexture:(id)texture forStage:(int64_t)stage reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  [(NSMutableArray *)self->mAllTextures addObject:?];
  [texture setParent:self];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:stage];
  if (reverseCopy)
  {
    [(TSUNoCopyDictionary *)self->mReverseFinalTexturesToStageMap setObject:texture forKey:v9];
    p_mReverseFinalTextureForStage = &self->mReverseFinalTextureForStage;
    mReverseFinalTextureForStage = self->mReverseFinalTextureForStage;
  }

  else
  {
    [(TSUNoCopyDictionary *)self->mFinalTexturesToStageMap setObject:v9 forKey:texture];
    p_mReverseFinalTextureForStage = &self->mFinalTextureForStage;
    mReverseFinalTextureForStage = self->mFinalTextureForStage;
  }

  v12 = [(NSMutableDictionary *)mReverseFinalTextureForStage objectForKey:v9];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    [(NSMutableDictionary *)*p_mReverseFinalTextureForStage setObject:v13 forKey:v9];
  }

  [v13 addObject:texture];
  [texture frame];
  v22.origin.x = v14;
  v22.origin.y = v15;
  v22.size.width = v16;
  v22.size.height = v17;
  self->mBounds = CGRectUnion(self->mBounds, v22);
  [(CALayer *)self->mLayer setFrame:?];
  -[CALayer addSublayer:](self->mLayer, "addSublayer:", [texture layer]);
  MidX = CGRectGetMidX(self->mBounds);
  MidY = CGRectGetMidY(self->mBounds);
  self->mCenter.x = MidX;
  self->mCenter.y = MidY;
  layer = [texture layer];

  [layer setHidden:1];
}

- (void)renderLayerContentsIfNeeded
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  mAllTextures = self->mAllTextures;
  v4 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(mAllTextures);
        }

        [*(*(&v9 + 1) + 8 * i) renderLayerContentsIfNeeded];
      }

      v5 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  mTextureOpacity = self->mTextureOpacity;
  *&mTextureOpacity = mTextureOpacity;
  [(CALayer *)self->mLayer setOpacity:mTextureOpacity];
}

- (NSArray)visibleTextures
{
  v2 = 88;
  if (self->mShouldIncludeFinalTexturesInVisibleSet)
  {
    v2 = 96;
  }

  return *(&self->super.isa + v2);
}

- (id)visibleTexturesForStage:(int64_t)stage isBuildIn:(BOOL)in shouldFlatten:(BOOL)flatten
{
  LODWORD(v50) = flatten;
  inCopy = in;
  v59 = *MEMORY[0x277D85DE8];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->mTextures, "count")}];
  v9 = MEMORY[0x277CBF398];
  v10 = [(NSMutableArray *)self->mTextures count];
  if ([(NSMutableArray *)self->mTextures count])
  {
    v11 = 0;
    v12 = -1;
    v13 = 1;
    do
    {
      v14 = [(TSDTextureSet *)self stageIndexForTexture:[(NSMutableArray *)self->mTextures objectAtIndex:v11, v50]];
      if (v10 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v10;
      }

      if (v12 <= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (v14 < 0xFFFFFFFFFFFFFFFELL)
      {
        v12 = v16;
        v10 = v15;
      }

      v11 = v13;
      v17 = [(NSMutableArray *)self->mTextures count]> v13++;
    }

    while (v17);
  }

  else
  {
    v12 = -1;
  }

  x = *v9;
  y = v9[1];
  width = v9[2];
  height = v9[3];
  if ([(NSMutableArray *)self->mTextures count])
  {
    v22 = 0;
    v23 = 0;
    v25 = v12 == stage && v12 != -1;
    v27 = v10 == stage && v10 != -1;
    v52 = v27;
    v53 = v25;
    v28 = 1;
    while (1)
    {
      v29 = [(NSMutableArray *)self->mTextures objectAtIndex:v22];
      v30 = [(TSDTextureSet *)self stageIndexForTexture:v29];
      if (v30 == stage || ((v37 = v30, v30 == -1) ? (v38 = !inCopy) : (v38 = 1), !v38 ? (v39 = v10 == stage) : (v39 = 0), v39 && [(NSMutableArray *)self->mTextures count]!= stage))
      {
LABEL_29:
        textureType = [v29 textureType];
        if (v23)
        {
          v32 = textureType == 5;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          v23 = v29;
        }

        [v8 addObject:v29];
        [v29 frame];
        v62.origin.x = v33;
        v62.origin.y = v34;
        v62.size.width = v35;
        v62.size.height = v36;
        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        v61 = CGRectUnion(v60, v62);
        x = v61.origin.x;
        y = v61.origin.y;
        width = v61.size.width;
        height = v61.size.height;
        goto LABEL_35;
      }

      if (v37 == -1 && !inCopy)
      {
        break;
      }

      if (v37 == -1)
      {
        goto LABEL_65;
      }

      v40 = v37 == -2;
      if (v37 == -2 && inCopy && v12 == stage)
      {
        if ([(NSMutableArray *)self->mTextures count]!= stage)
        {
          goto LABEL_29;
        }

        v40 = 1;
      }

      v43 = !inCopy;
      if (v37 != -2)
      {
        v43 = 0;
      }

      if (v43 & v52)
      {
        goto LABEL_29;
      }

      if (v40)
      {
        goto LABEL_65;
      }

LABEL_35:
      v22 = v28;
      v17 = [(NSMutableArray *)self->mTextures count]> v28++;
      if (!v17)
      {
        goto LABEL_68;
      }
    }

    if (v53)
    {
      goto LABEL_29;
    }

LABEL_65:
    if ([(NSMutableArray *)self->mTextures count]== 1)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  v23 = 0;
LABEL_68:
  if ((v51 & 1) != 0 && [v8 count] >= 2 && v23)
  {
    height = [(TSDTextureSet *)self newFlattenedTextureFromTextures:v8 newRect:x, y, width, height];
    [height setOffset:{x, y}];
    [height setParent:self];
    [height setIsFlattened:1];
    -[TSUNoCopyDictionary setObject:forUncopiedKey:](self->mStageIndexForTexture, "setObject:forUncopiedKey:", [MEMORY[0x277CCABB0] numberWithInteger:stage], height);
    [height renderLayerContentsIfNeeded];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v45 = [v8 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v55;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v55 != v47)
          {
            objc_enumerationMutation(v8);
          }

          [objc_msgSend(*(*(&v54 + 1) + 8 * i) "layer")];
        }

        v46 = [v8 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v46);
    }

    -[CALayer insertSublayer:above:](self->mLayer, "insertSublayer:above:", [height layer], objc_msgSend(v23, "layer"));
    [(NSMutableArray *)self->mAllTextures insertObject:height atIndex:[(NSMutableArray *)self->mAllTextures indexOfObject:v23]+ 1];
    [(NSMutableArray *)self->mTextures insertObject:height atIndex:[(NSMutableArray *)self->mTextures indexOfObject:v23]+ 1];
    [v8 removeAllObjects];
    [v8 addObject:height];
  }

  return v8;
}

- (void)removeRenderable:(id)renderable
{
  [(NSMutableArray *)self->mAllTextures removeObject:?];
  [(NSMutableArray *)self->mTextures removeObject:renderable];
  layer = [renderable layer];

  [layer removeFromSuperlayer];
}

- (id)firstVisibleTextureForTextureType:(int)type
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mTextures = self->mTextures;
  v5 = [(NSMutableArray *)mTextures countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(mTextures);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 textureType] == type)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)mTextures countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)newFlattenedTextureFromTextures:(id)textures newRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [textures copy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__TSDTextureSet_newFlattenedTextureFromTextures_newRect___block_invoke;
  v13[3] = &unk_279D48C78;
  *&v13[5] = x;
  *&v13[6] = y;
  *&v13[7] = width;
  *&v13[8] = height;
  v13[4] = v8;
  v9 = TSDCeilSize(width);
  v11 = [[TSDTexturedRectangle alloc] initWithSize:v13 offset:v9 renderBlock:v10, x, y];

  return v11;
}

uint64_t __57__TSDTextureSet_newFlattenedTextureFromTextures_newRect___block_invoke(uint64_t a1, CGContextRef c)
{
  v26 = *MEMORY[0x277D85DE8];
  CGContextTranslateCTM(c, 0.0, *(a1 + 64));
  CGContextScaleCTM(c, 1.0, -1.0);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  result = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        [v9 frame];
        v11 = v10 - *(a1 + 40);
        v14 = *(a1 + 48) + *(a1 + 64) - (v12 + v13);
        [v9 frame];
        v16 = v15;
        [v9 frame];
        v18 = v17;
        [v9 textureOpacity];
        CGContextSetAlpha(c, v19);
        v20 = [v9 image];
        v27.origin.x = v11;
        v27.origin.y = v14;
        v27.size.width = v16;
        v27.size.height = v18;
        CGContextDrawImage(c, v27, v20);
        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        [objc_msgSend(v9 "layer")];
        [MEMORY[0x277CD9FF0] commit];
        ++v8;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (id)newFlattenedTexture
{
  v25 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  visibleTextures = [(TSDTextureSet *)self visibleTextures];
  v8 = [(NSArray *)visibleTextures countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(visibleTextures);
        }

        [objc_msgSend(*(*(&v20 + 1) + 8 * v11) "layer")];
        v28.origin.x = v12;
        v28.origin.y = v13;
        v28.size.width = v14;
        v28.size.height = v15;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v27 = CGRectUnion(v26, v28);
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)visibleTextures countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __36__TSDTextureSet_newFlattenedTexture__block_invoke;
  v19[3] = &unk_279D48C78;
  *&v19[5] = x;
  *&v19[6] = y;
  *&v19[7] = width;
  *&v19[8] = height;
  v19[4] = self;
  v16 = TSDCeilSize(width);
  return [[TSDTexturedRectangle alloc] initWithSize:v19 offset:v16 renderBlock:v17, x, y];
}

void __36__TSDTextureSet_newFlattenedTexture__block_invoke(uint64_t a1, CGContextRef c)
{
  v15 = *MEMORY[0x277D85DE8];
  CGContextSaveGState(c);
  CGContextTranslateCTM(c, -*(a1 + 40), -*(a1 + 48));
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(a1 + 32) visibleTextures];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        [objc_msgSend(v9 "layer")];
        [v9 renderIntoContext:c];
        [objc_msgSend(v9 "layer")];
        [MEMORY[0x277CD9FF0] commit];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  CGContextRestoreGState(c);
}

- (int64_t)stageIndexForTexture:(id)texture
{
  v3 = [(TSUNoCopyDictionary *)self->mStageIndexForTexture objectForKey:texture];
  if (!v3)
  {
    return -1;
  }

  return [v3 integerValue];
}

- (id)finalTextureForStage:(int64_t)stage reverse:(BOOL)reverse
{
  v4 = 112;
  if (reverse)
  {
    v4 = 136;
  }

  v5 = *(&self->super.isa + v4);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:stage];

  return [v5 objectForKey:v6];
}

- (void)hideLayersOfFinalTextures
{
  v43 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->mFinalTextureForStage objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v36;
    do
    {
      v7 = 0;
      do
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v8 = *(*(&v35 + 1) + 8 * v7);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v32;
          do
          {
            v12 = 0;
            do
            {
              if (*v32 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [objc_msgSend(*(*(&v31 + 1) + 8 * v12++) "layer")];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [objectEnumerator countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v5);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  objectEnumerator2 = [(NSMutableDictionary *)self->mReverseFinalTextureForStage objectEnumerator];
  v14 = [objectEnumerator2 countByEnumeratingWithState:&v27 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(objectEnumerator2);
        }

        v18 = *(*(&v27 + 1) + 8 * v17);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v19 = [v18 countByEnumeratingWithState:&v23 objects:v39 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v24;
          do
          {
            v22 = 0;
            do
            {
              if (*v24 != v21)
              {
                objc_enumerationMutation(v18);
              }

              [objc_msgSend(*(*(&v23 + 1) + 8 * v22++) "layer")];
            }

            while (v20 != v22);
            v20 = [v18 countByEnumeratingWithState:&v23 objects:v39 count:16];
          }

          while (v20);
        }

        ++v17;
      }

      while (v17 != v15);
      v15 = [objectEnumerator2 countByEnumeratingWithState:&v27 objects:v40 count:16];
    }

    while (v15);
  }
}

- (void)setLayerGeometryFromRep:(id)rep
{
  [objc_msgSend(rep "canvas")];
  v6 = v5;
  if (self->mIsMagicMove)
  {
    [rep naturalBounds];
    [rep convertNaturalRectToUnscaledCanvas:?];
    v11 = TSDMultiplyRectScalar(v7, v8, v9, v10, v6);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [rep naturalBounds];
    [(CALayer *)self->mLayer setBounds:TSDMultiplyRectScalar(v18, v19, v20, v21, v6)];
    [(CALayer *)self->mLayer setPosition:TSDCenterOfRect(v11, v13, v15, v17)];
    if (!self->mShouldTransformUsingTextureCenter)
    {
      [rep centerForRotation];
      v24 = TSDMultiplyPointScalar(v22, v23, v6);
LABEL_12:
      self->mCenter.x = v24;
      self->mCenter.y = v25;
    }
  }

  else
  {
    mLayer = self->mLayer;
    v27 = *(MEMORY[0x277CD9DE8] + 80);
    v68 = *(MEMORY[0x277CD9DE8] + 64);
    v69 = v27;
    v28 = *(MEMORY[0x277CD9DE8] + 112);
    v70 = *(MEMORY[0x277CD9DE8] + 96);
    v71 = v28;
    v29 = *(MEMORY[0x277CD9DE8] + 16);
    *&v66.a = *MEMORY[0x277CD9DE8];
    *&v66.c = v29;
    v30 = *(MEMORY[0x277CD9DE8] + 48);
    *&v66.tx = *(MEMORY[0x277CD9DE8] + 32);
    v67 = v30;
    [(CALayer *)mLayer setTransform:&v66];
    [objc_msgSend(objc_msgSend(rep "layout")];
    x = TSDMultiplyRectScalar(v31, v32, v33, v34, v6);
    y = v36;
    width = v38;
    height = v40;
    if ([rep textureActionAttributes])
    {
      v42 = [objc_msgSend(rep "textureActionAttributes")];
      if (v42)
      {
        [v42 floatValue];
        v44 = v43 * 0.0174532925;
        v45 = TSDCenterOfRect(x, y, width, height);
        v47 = v46;
        memset(&v66, 0, sizeof(v66));
        CGAffineTransformMakeTranslation(&v66, v45, v46);
        v64 = v66;
        CGAffineTransformRotate(&v65, &v64, v44);
        v66 = v65;
        v64 = v65;
        CGAffineTransformTranslate(&v65, &v64, -v45, -v47);
        v66 = v65;
        v72.origin.x = x;
        v72.origin.y = y;
        v72.size.width = width;
        v72.size.height = height;
        v73 = CGRectApplyAffineTransform(v72, &v65);
        x = v73.origin.x;
        y = v73.origin.y;
        width = v73.size.width;
        height = v73.size.height;
      }
    }

    [(CALayer *)self->mLayer setFrame:x, y, width, height];
    if (!self->mShouldTransformUsingTextureCenter)
    {
      [rep centerForRotation];
      v62 = v49;
      v63 = v48;
      layout = [rep layout];
      if (layout)
      {
        [layout transformInRoot];
        v51 = *&v66.a;
        v52 = *&v66.c;
        v53 = *&v66.tx;
      }

      else
      {
        v53 = 0uLL;
        v51 = 0uLL;
        v52 = 0uLL;
      }

      v54 = vaddq_f64(v53, vmlaq_n_f64(vmulq_n_f64(v52, v62), v51, v63));
      v55 = TSDMultiplyPointScalar(v54.f64[0], v54.f64[1], v6);
      v24 = TSDSubtractPoints(v55, v56, x);
      goto LABEL_12;
    }
  }

  [(CALayer *)self->mLayer frame];
  self->mOriginalPosition.x = TSDCenterOfRect(v57, v58, v59, v60);
  self->mOriginalPosition.y = v61;
}

- (void)adjustAnchorPointRelativeToCenterOfRotation
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mAllTextures = self->mAllTextures;
  v4 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(mAllTextures);
        }

        [*(*(&v8 + 1) + 8 * i) adjustAnchorRelativeToParentsCenterOfRotation:0 isMagicMove:{self->mCenter.x, self->mCenter.y}];
      }

      v5 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)resetAnchorPoint
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  mAllTextures = self->mAllTextures;
  v3 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(mAllTextures);
        }

        [*(*(&v7 + 1) + 8 * i) resetAnchorPoint];
      }

      v4 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)p_resetAttributesWithViewScale:(double)scale
{
  v46 = *MEMORY[0x277D85DE8];
  [(CALayer *)self->mLayer setPosition:self->mOriginalPosition.x, self->mOriginalPosition.y];
  if (self->mAlternateLayer)
  {
    [(CALayer *)self->mLayer position];
    [(CALayer *)self->mAlternateLayer setPosition:?];
    LODWORD(v4) = 1.0;
    [(CALayer *)self->mAlternateLayer setOpacity:v4];
    mAlternateLayer = self->mAlternateLayer;
    v6 = *(MEMORY[0x277CD9DE8] + 80);
    v41 = *(MEMORY[0x277CD9DE8] + 64);
    v42 = v6;
    v7 = *(MEMORY[0x277CD9DE8] + 112);
    v43 = *(MEMORY[0x277CD9DE8] + 96);
    v44 = v7;
    v8 = *(MEMORY[0x277CD9DE8] + 16);
    *&v39.a = *MEMORY[0x277CD9DE8];
    *&v39.c = v8;
    v9 = *(MEMORY[0x277CD9DE8] + 48);
    *&v39.tx = *(MEMORY[0x277CD9DE8] + 32);
    v40 = v9;
    [(CALayer *)mAlternateLayer setTransform:&v39];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  mAllTextures = self->mAllTextures;
  v11 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    v30 = *(MEMORY[0x277CBF2C0] + 16);
    v31 = *MEMORY[0x277CBF2C0];
    v29 = *(MEMORY[0x277CBF2C0] + 32);
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(mAllTextures);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        *&v39.a = v31;
        *&v39.c = v30;
        *&v39.tx = v29;
        if (self->mIsMagicMove && self->mTextureAngle != 0.0 && [v15 textureType] != 9 && objc_msgSend(v15, "textureType") != 3)
        {
          x = self->mCenter.x;
          [objc_msgSend(v15 "layer")];
          v18 = x - v17;
          y = self->mCenter.y;
          [objc_msgSend(v15 "layer")];
          *&v34.a = v31;
          *&v34.c = v30;
          *&v34.tx = v29;
          CGAffineTransformTranslate(&v39, &v34, v18, y - v20);
          v21 = -self->mTextureAngle;
          v33 = v39;
          CGAffineTransformRotate(&v34, &v33, v21);
          v39 = v34;
          [objc_msgSend(v15 "layer")];
          v23 = v22 - self->mCenter.x;
          [objc_msgSend(v15 "layer")];
          v25 = v24 - self->mCenter.y;
          v33 = v39;
          CGAffineTransformTranslate(&v34, &v33, v23, v25);
          v39 = v34;
        }

        v32 = v39;
        layer = [v15 layer];
        v34 = v32;
        [layer setAffineTransform:&v34];
        [v15 originalPosition];
        [objc_msgSend(v15 "layer")];
      }

      v12 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v12);
  }
}

- (void)p_applyPositionFromAttributes:(id)attributes viewScale:(double)scale
{
  v6 = [attributes valueForKey:@"New Position Delta"];
  if (v6)
  {
    [v6 CGPointValue];
    v9 = TSDMultiplyPointScalar(v7, v8, scale);
    [(CALayer *)self->mLayer setPosition:TSDAddPoints(self->mOriginalPosition.x, self->mOriginalPosition.y, v9)];
    if (self->mAlternateLayer)
    {
      [(CALayer *)self->mLayer position];
      mAlternateLayer = self->mAlternateLayer;

      [(CALayer *)mAlternateLayer setPosition:?];
    }
  }
}

- (void)applyActionEffect:(id)effect viewScale:(double)scale isMagicMove:(BOOL)move shouldBake:(BOOL)bake applyScaleOnly:(BOOL)only ignoreScale:(BOOL)ignoreScale shouldCheckActionKeys:(BOOL)keys
{
  keysCopy = keys;
  bakeCopy = bake;
  moveCopy = move;
  effectCopy = effect;
  v90 = *MEMORY[0x277D85DE8];
  if (!bake)
  {
LABEL_9:
    v17 = 0x277CD9000uLL;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    if (!effectCopy && !self->mIsMagicMove)
    {
      [(TSDTextureSet *)self p_resetAttributesWithViewScale:scale];
LABEL_64:
      [*(v17 + 4080) commit];
      return;
    }

    v18 = [effectCopy valueForKey:@"sfx-action-color-alpha"];
    v19 = v18;
    v63 = bakeCopy;
    if (v18)
    {
      [v18 floatValue];
      v21 = (v20 / 100.0);
    }

    else
    {
      v21 = 1.0;
    }

    v22 = [effectCopy valueForKey:@"sfx-action-rotation-angle"];
    v23 = [effectCopy valueForKey:@"sfx-action-rotation-direction"];
    if (v22)
    {
      v24 = v23;
      [v22 floatValue];
      v26 = v25 * 0.0174532925;
      if (v24 && [v24 intValue] == 32)
      {
        v26 = -v26;
      }

      v27 = [effectCopy valueForKey:@"sfx-action-scale-size"];
      if (!v27)
      {
        v28 = 1.0;
        goto LABEL_28;
      }
    }

    else
    {
      v29 = [effectCopy valueForKey:@"sfx-action-scale-size"];
      if (!v29)
      {
        v28 = 1.0;
        v26 = 0.0;
        if (!self->mIsMagicMove)
        {
          v34 = 1;
          v17 = 0x277CD9000;
          v32 = v63;
          if (!v19)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        v27 = 0;
LABEL_28:
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v76 = __117__TSDTextureSet_applyActionEffect_viewScale_isMagicMove_shouldBake_applyScaleOnly_ignoreScale_shouldCheckActionKeys___block_invoke;
        v77 = &unk_279D48CA0;
        onlyCopy = only;
        v84 = moveCopy;
        v85 = keysCopy;
        v81 = v28;
        v82 = v26;
        ignoreScaleCopy = ignoreScale;
        v78 = v22;
        v79 = v27;
        v32 = bakeCopy;
        v87 = bakeCopy;
        selfCopy = self;
        mAlternateLayer = self->mAlternateLayer;
        if (mAlternateLayer)
        {
          __117__TSDTextureSet_applyActionEffect_viewScale_isMagicMove_shouldBake_applyScaleOnly_ignoreScale_shouldCheckActionKeys___block_invoke(v75, 0, mAlternateLayer);
          v34 = 1;
          goto LABEL_50;
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        mAllTextures = self->mAllTextures;
        v36 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v71 objects:v89 count:16];
        if (v36)
        {
          v37 = v36;
          v62 = effectCopy;
          v38 = *v72;
          if (!v22)
          {
            moveCopy = 0;
          }

          v34 = 1;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v72 != v38)
              {
                objc_enumerationMutation(mAllTextures);
              }

              v40 = *(*(&v71 + 1) + 8 * i);
              layer = [v40 layer];
              v76(v75, v40, layer);
              if (keysCopy)
              {
                v34 &= [objc_msgSend(v40 "layer")] == 0;
              }

              if (moveCopy)
              {
                if (![v40 attributes])
                {
                  [v40 setAttributes:{objc_msgSend(MEMORY[0x277CBEB38], "dictionaryWithCapacity:", 1)}];
                }

                attributes = [v40 attributes];
                [attributes setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", v26 * -57.2957795), @"kSFXAngle"}];
              }
            }

            v37 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v71 objects:v89 count:16];
          }

          while (v37);
          effectCopy = v62;
          v32 = v63;
          if (!moveCopy)
          {
LABEL_50:
            self->mIsBaked = v32;
            v17 = 0x277CD9000uLL;
            if (!v19)
            {
LABEL_52:
              if (v34)
              {
                [(TSDTextureSet *)self p_applyPositionFromAttributes:effectCopy viewScale:scale];
              }

              if (v32)
              {
                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                allKeys = [(NSMutableDictionary *)self->mBoundingRectForStage allKeys];
                v44 = [allKeys countByEnumeratingWithState:&v67 objects:v88 count:16];
                if (v44)
                {
                  v45 = v44;
                  v46 = *v68;
                  v47 = MEMORY[0x277CBF2C0];
                  do
                  {
                    for (j = 0; j != v45; ++j)
                    {
                      if (*v68 != v46)
                      {
                        objc_enumerationMutation(allKeys);
                      }

                      v49 = *(*(&v67 + 1) + 8 * j);
                      v50 = [(NSMutableDictionary *)self->mBoundingRectForStage objectForKey:v49];
                      if (v50)
                      {
                        [v50 CGRectValue];
                        v52 = v51;
                        v54 = v53;
                        v56 = v55;
                        v58 = v57;
                        v59 = v47[1];
                        *&v66.a = *v47;
                        *&v66.c = v59;
                        *&v66.tx = v47[2];
                        x = self->mCenter.x;
                        y = self->mCenter.y;
                        *&v65.a = *&v66.a;
                        *&v65.c = v59;
                        *&v65.tx = *&v66.tx;
                        CGAffineTransformTranslate(&v66, &v65, x, y);
                        v64 = v66;
                        CGAffineTransformScale(&v65, &v64, v28, v28);
                        v66 = v65;
                        v64 = v65;
                        CGAffineTransformRotate(&v65, &v64, v26);
                        v66 = v65;
                        v64 = v65;
                        CGAffineTransformTranslate(&v65, &v64, -x, -y);
                        v66 = v65;
                        v92.origin.x = v52;
                        v92.origin.y = v54;
                        v92.size.width = v56;
                        v92.size.height = v58;
                        v93 = CGRectApplyAffineTransform(v92, &v65);
                        -[TSDTextureSet setBoundingRect:forStage:](self, "setBoundingRect:forStage:", [v49 intValue], v93.origin.x, v93.origin.y, v93.size.width, v93.size.height);
                      }
                    }

                    v45 = [allKeys countByEnumeratingWithState:&v67 objects:v88 count:16];
                  }

                  while (v45);
                }
              }

              goto LABEL_64;
            }

LABEL_51:
            self->mTextureOpacity = v21;
            *&v30 = v21;
            [(CALayer *)self->mLayer setOpacity:v30];
            goto LABEL_52;
          }
        }

        else
        {
          v34 = 1;
          if (!v22 || !moveCopy)
          {
            goto LABEL_50;
          }
        }

        [(TSDTextureSet *)self setTextureAngle:-v26];
        goto LABEL_50;
      }

      v27 = v29;
      v26 = 0.0;
    }

    [v27 floatValue];
    if (v31 == 0.0)
    {
      v28 = 0.00001;
    }

    else
    {
      v28 = v31;
    }

    goto LABEL_28;
  }

  if (!self->mIsBaked || !self->mBakedAttributes || ![effect isEqualToDictionary:?])
  {

    self->mBakedAttributes = [effectCopy copy];
    goto LABEL_9;
  }

  [(TSDTextureSet *)self p_applyPositionFromAttributes:effectCopy viewScale:scale];
}

uint64_t __117__TSDTextureSet_applyActionEffect_viewScale_isMagicMove_shouldBake_applyScaleOnly_ignoreScale_shouldCheckActionKeys___block_invoke(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  v6 = *(result + 72) == 1 && *(result + 56) != 1.0;
  if ((*(result + 73) & 1) == 0 && !v6)
  {
    if (*(result + 32))
    {
      if (*(result + 74) != 1 || (result = [a3 valueForKey:@"apple:action-rotation"]) == 0)
      {
        result = [a3 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKeyPath:{"numberWithDouble:", *(v5 + 64)), @"transform.rotation.z"}];
      }
    }
  }

  v7 = *(v5 + 56);
  if ((*(v5 + 75) & 1) == 0)
  {
    if (*(v5 + 40))
    {
      if (*(v5 + 74) != 1 || (result = [a3 valueForKey:@"apple:action-scale"]) == 0)
      {
        [objc_msgSend(a3 valueForKey:{@"kTSDTextureLayerKeyBakedScale", "doubleValue"}];
        if (v8 != 0.0 && (*(v5 + 76) & 1) == 0 && (*(v5 + 72) & 1) == 0)
        {
          v7 = *(v5 + 56) / v8;
        }

        result = [a3 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKeyPath:{"numberWithDouble:", v7), @"transform.scale.xy"}];
      }
    }
  }

  if (a2)
  {
    v9 = *(v5 + 48);
    if (*(v9 + 264) != a3)
    {
      result = [a2 adjustAnchorRelativeToParentsCenterOfRotation:*(v5 + 73) isMagicMove:{*(v9 + 8), *(v9 + 16)}];
      if ((*(v5 + 76) | v6))
      {
        v10 = 0.0;
        if (*(v5 + 76) && (*(v5 + 73) & 1) == 0)
        {
          v10 = *(v5 + 64);
        }

        result = [a2 bakeLayerWithAngle:v10 scale:v7];
        if (v6 && (*(v5 + 73) & 1) == 0 && (*(v5 + 76) & 1) == 0 && *(v5 + 64) != 0.0)
        {
          v11 = [MEMORY[0x277CCABB0] numberWithDouble:?];

          return [a3 setValue:v11 forKeyPath:@"transform.rotation.z"];
        }
      }
    }
  }

  return result;
}

- (void)setBoundingRect:(CGRect)rect
{
  self->mBounds = rect;
  MidX = CGRectGetMidX(rect);
  MidY = CGRectGetMidY(self->mBounds);
  self->mCenter.x = MidX;
  self->mCenter.y = MidY;
}

- (void)setBoundingRect:(CGRect)rect forStage:(int64_t)stage
{
  mBoundingRectForStage = self->mBoundingRectForStage;
  v6 = [MEMORY[0x277CCAE60] valueWithCGRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:stage];

  [(NSMutableDictionary *)mBoundingRectForStage setObject:v6 forKey:v7];
}

- (void)setContentRect:(CGRect)rect forStage:(int64_t)stage
{
  mContentRectForStage = self->mContentRectForStage;
  v6 = [MEMORY[0x277CCAE60] valueWithCGRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:stage];

  [(NSMutableDictionary *)mContentRectForStage setObject:v6 forKey:v7];
}

- (CGRect)frame
{
  [(CALayer *)self->mLayer frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setIsBaked:(BOOL)baked
{
  if (self->mIsBaked && !baked)
  {

    self->mBakedAttributes = 0;
  }

  self->mIsBaked = baked;
}

- (void)renderIntoContext:(CGContext *)context
{
  v20 = *MEMORY[0x277D85DE8];
  if (![(CALayer *)self->mLayer isHidden])
  {
    [(CALayer *)self->mLayer frame];
    v6 = v5;
    v8 = v7;
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, v6, v8);
    mTextureOpacity = self->mTextureOpacity;
    if (mTextureOpacity != 1.0)
    {
      CGContextSetAlpha(context, mTextureOpacity);
      CGContextBeginTransparencyLayer(context, 0);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    mAllTextures = self->mAllTextures;
    v11 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(mAllTextures);
          }

          [*(*(&v15 + 1) + 8 * i) renderIntoContext:context];
        }

        v12 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }

    if (self->mTextureOpacity != 1.0)
    {
      CGContextEndTransparencyLayer(context);
    }

    CGContextRestoreGState(context);
  }
}

- (BOOL)isRenderable
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->mAllTextures count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    mAllTextures = self->mAllTextures;
    v4 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      v7 = 1;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(mAllTextures);
          }

          v7 &= [*(*(&v10 + 1) + 8 * i) isRenderable];
        }

        v5 = [(NSMutableArray *)mAllTextures countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)addPerspectiveLayerToTexture:(id)texture withShowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = [objc_msgSend(texture "layer")];
  if (v8 == [(TSDTextureSet *)self layer])
  {
    layer = [texture layer];
    v17 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(CALayer *)[(TSDTextureSet *)self layer] frame];
    v11 = TSDSubtractPoints(width * 0.5, height * 0.5, v10);
    v13 = v12;
    [(CALayer *)[(TSDTextureSet *)self layer] bounds];
    v15 = v11 / v14;
    [(CALayer *)[(TSDTextureSet *)self layer] bounds];
    [v17 setAnchorPoint:{v15, v13 / v16}];
    [v17 setPosition:{v11, v13}];
    [(CALayer *)[(TSDTextureSet *)self layer] bounds];
    [v17 setBounds:?];
    [v17 setName:@"Perspective layer"];
    [(CALayer *)[(TSDTextureSet *)self layer] replaceSublayer:layer with:v17];
    [v17 addSublayer:layer];
    [v17 addPerspectiveSublayerProjectionUsingScreenSize:{width, height}];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(TSDTextureSet *)self frame];
  v7 = v6;
  [(TSDTextureSet *)self frame];
  v9 = v8;
  [(TSDTextureSet *)self frame];
  v11 = v10;
  [(TSDTextureSet *)self frame];
  return [v3 stringWithFormat:@"<%@: %p frame(%.1f, %.1f, %.1f, %.1f) count(%ld) textures:%@>", v5, self, v7, v9, v11, v12, -[NSMutableArray count](self->mAllTextures, "count"), self->mAllTextures];
}

- (CGRect)boundingRect
{
  x = self->mBounds.origin.x;
  y = self->mBounds.origin.y;
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)center
{
  x = self->mCenter.x;
  y = self->mCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)originalPosition
{
  x = self->mOriginalPosition.x;
  y = self->mOriginalPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)textureContentRect
{
  x = self->mTextureContentRect.origin.x;
  y = self->mTextureContentRect.origin.y;
  width = self->mTextureContentRect.size.width;
  height = self->mTextureContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end