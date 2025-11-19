@interface TSDDefaultPartitioner
- (BOOL)didHint:(id)a3 syncWithNextHint:(id)a4 horizontally:(BOOL)a5 delta:(int)a6;
- (TSDDefaultPartitioner)initWithInfo:(id)a3;
- (id)hintForLayout:(id)a3;
- (id)i_layout;
- (id)i_repForCanvas:(id)a3;
- (id)layoutForHint:(id)a3 parentLayout:(id)a4;
- (id)nextHintForSize:(CGSize)a3 parentLayout:(id)a4 previousHint:(id)a5 horizontally:(BOOL)a6 outFinished:(BOOL *)a7;
- (id)nextLayoutForSize:(CGSize)a3 parentLayout:(id)a4 previousHint:(id)a5 horizontally:(BOOL)a6 outFinished:(BOOL *)a7;
- (id)p_firstHintForSize:(CGSize)a3;
- (id)p_nextHintForSize:(CGSize)a3 previousHint:(id)a4 horizontally:(BOOL)a5;
- (unint64_t)p_edgesForHintBounds:(CGRect)a3;
- (void)dealloc;
- (void)i_registerPartialRep:(id)a3;
- (void)i_unregisterPartialRep:(id)a3;
- (void)p_generateLayouts;
- (void)p_teardownLayouts;
@end

@implementation TSDDefaultPartitioner

- (TSDDefaultPartitioner)initWithInfo:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSDDefaultPartitioner;
  v4 = [(TSDDefaultPartitioner *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mInfo = a3;
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

- (id)hintForLayout:(id)a3
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

- (BOOL)didHint:(id)a3 syncWithNextHint:(id)a4 horizontally:(BOOL)a5 delta:(int)a6
{
  if (a6)
  {
    return 0;
  }

  v7 = a5;
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
  if (v7)
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

- (id)layoutForHint:(id)a3 parentLayout:(id)a4
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

- (id)nextHintForSize:(CGSize)a3 parentLayout:(id)a4 previousHint:(id)a5 horizontally:(BOOL)a6 outFinished:(BOOL *)a7
{
  v8 = a6;
  if (a5)
  {
    v9 = [(TSDDefaultPartitioner *)self p_nextHintForSize:a5 previousHint:a6 horizontally:a3.width, a3.height];
  }

  else
  {
    v9 = [(TSDDefaultPartitioner *)self p_firstHintForSize:a4, a3.width, a3.height];
  }

  v10 = v9;
  if (a7)
  {
    if (v9)
    {
      v11 = [v9 isLastPartitionHorizontally:v8];
    }

    else
    {
      v11 = 1;
    }

    *a7 = v11;
  }

  return v10;
}

- (id)nextLayoutForSize:(CGSize)a3 parentLayout:(id)a4 previousHint:(id)a5 horizontally:(BOOL)a6 outFinished:(BOOL *)a7
{
  v9 = [(TSDDefaultPartitioner *)self nextHintForSize:a4 parentLayout:a5 previousHint:a6 horizontally:a7 outFinished:a3.width, a3.height];

  return [(TSDDefaultPartitioner *)self layoutForHint:v9 parentLayout:a4];
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

- (id)i_repForCanvas:(id)a3
{
  v5 = [(TSUPointerKeyDictionary *)self->mMainRepsByCanvas objectForKey:?];
  if (!v5)
  {
    v6 = [(TSDDefaultPartitioner *)self i_layout];
    v5 = [objc_alloc(objc_msgSend(v6 "repClassOverride"))];
    [v5 updateChildrenFromLayout];
    [v5 recursivelyPerformSelector:sel_updateFromLayout];
    [(TSUPointerKeyDictionary *)self->mMainRepsByCanvas setObject:v5 forUncopiedKey:a3];
  }

  return v5;
}

- (void)i_registerPartialRep:(id)a3
{
  v5 = [a3 canvas];
  v6 = [(TSUPointerKeyDictionary *)self->mPartialRepsByCanvas objectForKey:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(TSUPointerKeyDictionary *)self->mPartialRepsByCanvas setObject:v6 forUncopiedKey:v5];
  }

  [v6 addObject:a3];
}

- (void)i_unregisterPartialRep:(id)a3
{
  v5 = [a3 canvas];
  v6 = [(TSUPointerKeyDictionary *)self->mPartialRepsByCanvas objectForKey:v5];
  if (([v6 containsObject:a3] & 1) == 0)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDefaultPartitioner i_unregisterPartialRep:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDefaultPartitioner.m"), 223, @"Unregistering unregistered rep %@", a3}];
  }

  [v6 removeObject:a3];
  if (![v6 count])
  {
    [(TSUPointerKeyDictionary *)self->mPartialRepsByCanvas removeObjectForKey:v5];
    [-[TSUPointerKeyDictionary objectForKey:](self->mMainRepsByCanvas objectForKey:{v5), "recursivelyPerformSelector:", sel_i_willBeRemoved}];
    [(TSUPointerKeyDictionary *)self->mMainRepsByCanvas removeObjectForKey:v5];
    [(TSUPointerKeyDictionary *)self->mCachedImagesByCanvas removeObjectForKey:v5];
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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDefaultPartitioner p_generateLayouts]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDefaultPartitioner.m"), 244, @"Can not generate layouts when they’re already present."}];
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

- (id)p_firstHintForSize:(CGSize)a3
{
  [objc_msgSend(-[TSDDefaultPartitioner i_layout](self "i_layout")];
  v4 = TSDRectWithSize();
  v8 = [[TSDDefaultHint alloc] initWithBounds:[(TSDDefaultPartitioner *)self p_edgesForHintBounds:?] edges:v4, v5, v6, v7];

  return v8;
}

- (id)p_nextHintForSize:(CGSize)a3 previousHint:(id)a4 horizontally:(BOOL)a5
{
  v5 = a5;
  height = a3.height;
  width = a3.width;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDefaultPartitioner p_nextHintForSize:previousHint:horizontally:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDefaultPartitioner.m"), 296, @"invalid nil value for '%s'", "previousDefaultHint"}];
  }

  [objc_msgSend(-[TSDDefaultPartitioner i_layout](self "i_layout")];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ([v9 isLastPartitionHorizontally:v5])
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
    if (v5)
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

- (unint64_t)p_edgesForHintBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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