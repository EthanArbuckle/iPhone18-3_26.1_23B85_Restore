@interface TSDDefaultPartitioner
- (BOOL)didHint:(id)hint syncWithNextHint:(id)nextHint horizontally:(BOOL)horizontally delta:(int)delta;
- (TSDDefaultPartitioner)initWithInfo:(id)info;
- (id)hintForLayout:(id)layout;
- (id)i_layout;
- (id)i_repForCanvas:(id)canvas;
- (id)layoutForHint:(id)hint parentLayout:(id)layout;
- (id)nextHintForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished;
- (id)nextLayoutForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished;
- (id)p_firstHintForSize:(CGSize)size;
- (id)p_nextHintForSize:(CGSize)size previousHint:(id)hint horizontally:(BOOL)horizontally;
- (unint64_t)p_edgesForHintBounds:(CGRect)bounds;
- (void)dealloc;
- (void)i_registerPartialRep:(id)rep;
- (void)i_unregisterPartialRep:(id)rep;
- (void)p_generateLayouts;
- (void)p_teardownLayouts;
@end

@implementation TSDDefaultPartitioner

- (TSDDefaultPartitioner)initWithInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = TSDDefaultPartitioner;
  v4 = [(TSDDefaultPartitioner *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mInfo = info;
    [(TSDDefaultPartitioner *)v4 p_generateLayouts];
    v5->mMainRepsByCanvas = objc_alloc_init(MEMORY[0x277D6C348]);
    v5->mCachedImagesByCanvas = objc_alloc_init(MEMORY[0x277D6C348]);
    v5->mPartialRepsByCanvas = objc_alloc_init(MEMORY[0x277D6C348]);
  }

  return v5;
}

- (void)dealloc
{
  [(TSDDefaultPartitioner *)self p_teardownLayouts];

  v3.receiver = self;
  v3.super_class = TSDDefaultPartitioner;
  [(TSDDefaultPartitioner *)&v3 dealloc];
}

- (id)hintForLayout:(id)layout
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    [result bounds];
    v9 = [[TSDDefaultHint alloc] initWithBounds:[(TSDDefaultPartitioner *)self p_edgesForHintBounds:?] edges:v5, v6, v7, v8];

    return v9;
  }

  return result;
}

- (BOOL)didHint:(id)hint syncWithNextHint:(id)nextHint horizontally:(BOOL)horizontally delta:(int)delta
{
  if (delta)
  {
    return 0;
  }

  horizontallyCopy = horizontally;
  objc_opt_class();
  v8 = TSUDynamicCast();
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  v11 = v9;
  [v8 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v11 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v13;
  v29 = v15;
  v30 = v17;
  v31 = v19;
  if (horizontallyCopy)
  {
    MaxX = CGRectGetMaxX(*&v28);
    v34.origin.x = v21;
    v34.origin.y = v23;
    v34.size.width = v25;
    v34.size.height = v27;
    MinX = CGRectGetMinX(v34);
  }

  else
  {
    MaxX = CGRectGetMaxY(*&v28);
    v35.origin.x = v21;
    v35.origin.y = v23;
    v35.size.width = v25;
    v35.size.height = v27;
    MinX = CGRectGetMinY(v35);
  }

  return vabdd_f64(MaxX, MinX) < 0.00999999978;
}

- (id)layoutForHint:(id)hint parentLayout:(id)layout
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = v5;
    v7 = [TSDPartitionedPartialLayout alloc];
    mInfo = self->mInfo;
    [v6 bounds];
    v9 = [(TSDPartitionedPartialLayout *)v7 initWithInfo:mInfo bounds:self partitioner:?];
    [(TSDLayout *)v9 validate];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)nextHintForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished
{
  horizontallyCopy = horizontally;
  if (hint)
  {
    v9 = [(TSDDefaultPartitioner *)self p_nextHintForSize:hint previousHint:horizontally horizontally:size.width, size.height];
  }

  else
  {
    v9 = [(TSDDefaultPartitioner *)self p_firstHintForSize:layout, size.width, size.height];
  }

  v10 = v9;
  if (finished)
  {
    if (v9)
    {
      v11 = [v9 isLastPartitionHorizontally:horizontallyCopy];
    }

    else
    {
      v11 = 1;
    }

    *finished = v11;
  }

  return v10;
}

- (id)nextLayoutForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished
{
  v9 = [(TSDDefaultPartitioner *)self nextHintForSize:layout parentLayout:hint previousHint:horizontally horizontally:finished outFinished:size.width, size.height];

  return [(TSDDefaultPartitioner *)self layoutForHint:v9 parentLayout:layout];
}

- (id)i_layout
{
  result = self->mLayout;
  if (!result)
  {
    [(TSDDefaultPartitioner *)self p_generateLayouts];
    return self->mLayout;
  }

  return result;
}

- (id)i_repForCanvas:(id)canvas
{
  v5 = [(TSUPointerKeyDictionary *)self->mMainRepsByCanvas objectForKey:?];
  if (!v5)
  {
    i_layout = [(TSDDefaultPartitioner *)self i_layout];
    v5 = [objc_alloc(objc_msgSend(i_layout "repClassOverride"))];
    [v5 updateChildrenFromLayout];
    [v5 recursivelyPerformSelector:sel_updateFromLayout];
    [(TSUPointerKeyDictionary *)self->mMainRepsByCanvas setObject:v5 forUncopiedKey:canvas];
  }

  return v5;
}

- (void)i_registerPartialRep:(id)rep
{
  canvas = [rep canvas];
  v6 = [(TSUPointerKeyDictionary *)self->mPartialRepsByCanvas objectForKey:canvas];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(TSUPointerKeyDictionary *)self->mPartialRepsByCanvas setObject:v6 forUncopiedKey:canvas];
  }

  [v6 addObject:rep];
}

- (void)i_unregisterPartialRep:(id)rep
{
  canvas = [rep canvas];
  v6 = [(TSUPointerKeyDictionary *)self->mPartialRepsByCanvas objectForKey:canvas];
  if (([v6 containsObject:rep] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDefaultPartitioner i_unregisterPartialRep:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDefaultPartitioner.m"), 223, @"Unregistering unregistered rep %@", rep}];
  }

  [v6 removeObject:rep];
  if (![v6 count])
  {
    [(TSUPointerKeyDictionary *)self->mPartialRepsByCanvas removeObjectForKey:canvas];
    [-[TSUPointerKeyDictionary objectForKey:](self->mMainRepsByCanvas objectForKey:{canvas), "recursivelyPerformSelector:", sel_i_willBeRemoved}];
    [(TSUPointerKeyDictionary *)self->mMainRepsByCanvas removeObjectForKey:canvas];
    [(TSUPointerKeyDictionary *)self->mCachedImagesByCanvas removeObjectForKey:canvas];
    if (![(TSUPointerKeyDictionary *)self->mMainRepsByCanvas count])
    {

      [(TSDDefaultPartitioner *)self p_teardownLayouts];
    }
  }
}

- (void)p_generateLayouts
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->mLayout)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDefaultPartitioner p_generateLayouts]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDefaultPartitioner.m"), 244, @"Can not generate layouts when they’re already present."}];
  }

  self->mCanvas = objc_alloc_init(TSDCanvas);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  mInfo = self->mInfo;
  if (isKindOfClass)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithObject:self->mInfo];
    if ([(TSDInfo *)mInfo connectedFrom])
    {
      [v7 addObject:{-[TSDInfo connectedFrom](mInfo, "connectedFrom")}];
    }

    if ([(TSDInfo *)mInfo connectedTo])
    {
      [v7 addObject:{-[TSDInfo connectedTo](mInfo, "connectedTo")}];
    }
  }

  else
  {
    v8[0] = self->mInfo;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  [(TSDLayoutController *)[(TSDCanvas *)self->mCanvas layoutController] setInfos:v7];
  [(TSDLayoutController *)[(TSDCanvas *)self->mCanvas layoutController] validateLayouts];
  self->mLayout = [(TSDLayoutController *)[(TSDCanvas *)self->mCanvas layoutController] validatedLayoutForInfo:self->mInfo];
}

- (void)p_teardownLayouts
{
  self->mLayout = 0;
  [(TSDCanvas *)self->mCanvas teardown];

  self->mCanvas = 0;
}

- (id)p_firstHintForSize:(CGSize)size
{
  [objc_msgSend(-[TSDDefaultPartitioner i_layout](self "i_layout")];
  v4 = TSDRectWithSize();
  v8 = [[TSDDefaultHint alloc] initWithBounds:[(TSDDefaultPartitioner *)self p_edgesForHintBounds:?] edges:v4, v5, v6, v7];

  return v8;
}

- (id)p_nextHintForSize:(CGSize)size previousHint:(id)hint horizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  height = size.height;
  width = size.width;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDefaultPartitioner p_nextHintForSize:previousHint:horizontally:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDefaultPartitioner.m"), 296, @"invalid nil value for '%s'", "previousDefaultHint"}];
  }

  [objc_msgSend(-[TSDDefaultPartitioner i_layout](self "i_layout")];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ([v9 isLastPartitionHorizontally:horizontallyCopy])
  {
    v20 = 0;
  }

  else
  {
    v40 = width;
    v41 = height;
    [v9 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = v13;
    v30 = v15;
    v31 = v17;
    v32 = v19;
    if (horizontallyCopy)
    {
      v33 = CGRectGetWidth(*&v29);
      v43.origin.x = v22;
      v43.origin.y = v24;
      v43.size.width = v26;
      v43.size.height = v28;
      v34 = fmin(v33 - CGRectGetMaxX(v43), v40);
      v44.origin.x = v22;
      v44.origin.y = v24;
      v44.size.width = v26;
      v44.size.height = v28;
      MaxX = CGRectGetMaxX(v44);
      v45.origin.x = v22;
      v45.origin.y = v24;
      v45.size.width = v26;
      v45.size.height = v28;
      MinY = CGRectGetMinY(v45);
      v46.origin.x = v22;
      v46.origin.y = v24;
      v46.size.width = v26;
      v46.size.height = v28;
      v37 = CGRectGetHeight(v46);
    }

    else
    {
      v38 = CGRectGetHeight(*&v29);
      v47.origin.x = v22;
      v47.origin.y = v24;
      v47.size.width = v26;
      v47.size.height = v28;
      v37 = fmin(v38 - CGRectGetMaxY(v47), v41);
      v48.origin.x = v22;
      v48.origin.y = v24;
      v48.size.width = v26;
      v48.size.height = v28;
      MaxX = CGRectGetMinX(v48);
      v49.origin.x = v22;
      v49.origin.y = v24;
      v49.size.width = v26;
      v49.size.height = v28;
      MinY = CGRectGetMaxY(v49);
      v50.origin.x = v22;
      v50.origin.y = v24;
      v50.size.width = v26;
      v50.size.height = v28;
      v34 = CGRectGetWidth(v50);
    }

    v20 = [[TSDDefaultHint alloc] initWithBounds:[(TSDDefaultPartitioner *)self p_edgesForHintBounds:MaxX edges:MinY, v34, v37], MaxX, MinY, v34, v37];
  }

  return v20;
}

- (unint64_t)p_edgesForHintBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [objc_msgSend(-[TSDDefaultPartitioner i_layout](self "i_layout")];
  v8 = v7;
  v20 = v9;
  v21 = v7;
  v10 = v9;
  v18 = v12;
  v19 = v11;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v13 = fabs(CGRectGetMinX(v22)) < 0.00999999978;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = v8;
  v24.origin.y = v10;
  v24.size.width = v19;
  v24.size.height = v18;
  if (vabdd_f64(MaxX, CGRectGetWidth(v24)) >= 0.00999999978)
  {
    v15 = 2 * v13;
  }

  else
  {
    v15 = (2 * v13) | 8;
  }

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  if (fabs(CGRectGetMinY(v25)) < 0.00999999978)
  {
    ++v15;
  }

  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MaxY = CGRectGetMaxY(v26);
  v27.origin.y = v20;
  v27.origin.x = v21;
  v27.size.width = v19;
  v27.size.height = v18;
  if (vabdd_f64(MaxY, CGRectGetHeight(v27)) >= 0.00999999978)
  {
    return v15;
  }

  else
  {
    return v15 | 4;
  }
}

@end