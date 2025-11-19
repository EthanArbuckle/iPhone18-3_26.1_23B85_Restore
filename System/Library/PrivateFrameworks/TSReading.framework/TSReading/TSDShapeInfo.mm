@interface TSDShapeInfo
- (CGSize)targetSizeForImageData:(id)a3 associatedHint:(id)a4;
- (TSDFill)fill;
- (TSDShapeInfo)initWithContext:(id)a3 geometry:(id)a4;
- (TSDShapeInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5;
- (TSDShapeInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 pathSource:(id)a6;
- (id)copyWithContext:(id)a3;
- (id)imageDatasForReducingFileSizeWithAssociatedHints;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)objectForProperty:(int)a3;
- (int64_t)mixingTypeWithObject:(id)a3;
- (void)dealloc;
- (void)setFill:(id)a3;
- (void)setGeometry:(id)a3;
- (void)setHeadLineEnd:(id)a3;
- (void)setPathSource:(id)a3;
- (void)setStyle:(id)a3;
- (void)setTailLineEnd:(id)a3;
- (void)setValuesForProperties:(id)a3;
@end

@implementation TSDShapeInfo

- (void)setHeadLineEnd:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mHeadLineEnd = a3;
}

- (void)setTailLineEnd:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mTailLineEnd = a3;
}

- (TSDShapeInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 pathSource:(id)a6
{
  v14.receiver = self;
  v14.super_class = TSDShapeInfo;
  v8 = [(TSDDrawableInfo *)&v14 initWithContext:a3 geometry:a4];
  if (v8)
  {
    if (a5)
    {
      if (a6)
      {
LABEL_4:
        [(TSDShapeInfo *)v8 setStyle:a5];
        [(TSDShapeInfo *)v8 setPathSource:a6];
        return v8;
      }
    }

    else
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo initWithContext:geometry:style:pathSource:]"];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 91, @"invalid nil value for '%s'", "style"}];
      if (a6)
      {
        goto LABEL_4;
      }
    }

    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo initWithContext:geometry:style:pathSource:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 92, @"invalid nil value for '%s'", "pathSource"}];
    goto LABEL_4;
  }

  return v8;
}

- (TSDShapeInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5
{
  [a4 size];
  v9 = [TSDScalarPathSource rectangleWithNaturalSize:?];

  return [(TSDShapeInfo *)self initWithContext:a3 geometry:a4 style:a5 pathSource:v9];
}

- (TSDShapeInfo)initWithContext:(id)a3 geometry:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo initWithContext:geometry:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 114, @"call - (id)initWithContext:(TSPObjectContext*)context geometry:(TSDInfoGeometry *)geometry style:TSDGraphicStyle*style please."}]);
  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDShapeInfo;
  [(TSDDrawableInfo *)&v3 dealloc];
}

- (id)copyWithContext:(id)a3
{
  v14.receiver = self;
  v14.super_class = TSDShapeInfo;
  v5 = [(TSDDrawableInfo *)&v14 copyWithContext:?];
  if (!v5)
  {
    return v5;
  }

  v6 = [(TSDShapeInfo *)self zone];
  v5[18] = [(TSDPathSource *)self->mPathSource copyWithZone:v6];
  [a3 documentObject];
  if (objc_opt_respondsToSelector())
  {
    v7 = a3;
  }

  else
  {
    [(TSPObjectContext *)[(TSPObject *)self context] documentObject];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v8 = [(TSSStyle *)self->mStyle stylesheet];
      goto LABEL_8;
    }

    v7 = [(TSPObject *)self context];
  }

  v8 = [[(TSPObjectContext *)v7 documentObject] performSelector:sel_stylesheet];
LABEL_8:
  v9 = v8;
  if (!v8)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo copyWithContext:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 155, @"invalid nil value for '%s'", "stylesheet"}];
  }

  v12 = [[TSSStyleMapper alloc] initWithTargetStylesheet:v9 newStyleDOLCContext:0];
  objc_opt_class();
  [(TSSStyleMapper *)v12 mappedStyleForStyle:self->mStyle];
  v5[19] = TSUDynamicCast();

  v5[20] = [(TSDLineEnd *)self->mHeadLineEnd copyWithZone:v6];
  v5[21] = [(TSDLineEnd *)self->mTailLineEnd copyWithZone:v6];
  return v5;
}

- (void)setGeometry:(id)a3
{
  if ([(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry] heightValid])
  {
    v5 = [(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry] widthValid];
  }

  else
  {
    v5 = 0;
  }

  v13.receiver = self;
  v13.super_class = TSDShapeInfo;
  [(TSDDrawableInfo *)&v13 setGeometry:a3];
  if (-[TSDDrawableInfo geometry](self, "geometry") == a3 && [a3 heightValid] && objc_msgSend(a3, "widthValid"))
  {
    [a3 size];
    v7 = v6;
    v9 = v8;
    if (!v5 || (([(TSDPathSource *)self->mPathSource naturalSize], v11 == v7) ? (v12 = v10 == v9) : (v12 = 0), !v12))
    {
      [(TSDDrawableInfo *)self willChangeProperty:526];
      [(TSDPathSource *)self->mPathSource setNaturalSize:v7, v9];
    }
  }
}

- (void)setPathSource:(id)a3
{
  if (self->mPathSource != a3)
  {
    [(TSDDrawableInfo *)self willChangeProperty:526];

    self->mPathSource = a3;
  }
}

- (void)setStyle:(id)a3
{
  if (self->mStyle != a3)
  {
    -[TSDDrawableInfo willChangeProperties:](self, "willChangeProperties:", [objc_opt_class() properties]);
    [(TSPObject *)self willModify];
    v5 = a3;

    self->mStyle = a3;
  }
}

- (TSDFill)fill
{
  if (![(TSDShapeInfo *)self style])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo fill]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 254, @"invalid nil value for '%s'", "self.style"}];
  }

  v5 = [-[TSDShapeInfo style](self "style")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (void)setFill:(id)a3
{
  if (!a3)
  {
    a3 = [MEMORY[0x277CBEB68] null];
  }

  [(TSDStyledInfo *)self i_setValue:a3 forProperty:516];
}

- (void)setValuesForProperties:(id)a3
{
  if (![(TSDShapeInfo *)self style])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo setValuesForProperties:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 273, @"invalid nil value for '%s'", "self.style"}];
  }

  if (![-[TSDShapeInfo style](self "style")])
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo setValuesForProperties:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 274, @"invalid nil value for '%s'", "self.style.stylesheet"}];
  }

  -[TSDDrawableInfo willChangeProperties:](self, "willChangeProperties:", [a3 allProperties]);
  v9 = [objc_msgSend(-[TSDShapeInfo style](self "style")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo setValuesForProperties:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 279, @"Variation style is not a shape style."}];
  }

  [(TSDShapeInfo *)self setStyle:v9];
}

- (id)imageDatasForReducingFileSizeWithAssociatedHints
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(TSDShapeInfo *)self fill];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = [(TSDFill *)v2 originalImageData];
  if (result || (result = [(TSDFill *)v2 imageData]) != 0)
  {
    v4 = result;
    v5 = objc_alloc(MEMORY[0x277D6C320]);
    v6[0] = v4;
    return [v5 initWithObjects:&unk_287DDCAF8 forKeys:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v6, 1)}];
  }

  return result;
}

- (CGSize)targetSizeForImageData:(id)a3 associatedHint:(id)a4
{
  objc_opt_class();
  [(TSDShapeInfo *)self fill];
  v6 = TSUDynamicCast();
  if ([v6 originalImageData] != a3 && objc_msgSend(v6, "imageData") != a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo targetSizeForImageData:associatedHint:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 343, @"Wrong data for reducing shape fill"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = &unk_26CAC6BB9;
  v20 = *MEMORY[0x277CBF3A8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__TSDShapeInfo_targetSizeForImageData_associatedHint___block_invoke;
  v15[3] = &unk_279D48548;
  v15[4] = &v16;
  [(TSDDrawableInfo *)self performBlockWithTemporaryLayout:v15];
  [v6 renderedImageSizeForObjectSize:{v17[4], v17[5]}];
  v10 = v9;
  v12 = v11;
  _Block_object_dispose(&v16, 8);
  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

uint64_t __54__TSDShapeInfo_targetSizeForImageData_associatedHint___block_invoke(uint64_t a1)
{
  objc_opt_class();
  result = [objc_msgSend(TSUDynamicCast() "path")];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__TSDShapeInfo_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __37__TSDShapeInfo_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 393, @"nil object after cast"}];
  }

  v5 = TSDMixingTypeBestFromMixingTypes(5, [objc_msgSend(*(a1 + 40) "geometry")]);
  v6 = TSDMixingTypeWithPossiblyNilObjects([*(a1 + 40) shapeStyle], objc_msgSend(v2, "shapeStyle"));
  v7 = TSDMixingTypeBestFromMixingTypes(v5, v6);
  v8 = TSDMixingTypeWithPossiblyNilObjects([*(a1 + 40) pathSource], objc_msgSend(v2, "pathSource"));

  return TSDMixingTypeBestFromMixingTypes(v7, v8);
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__TSDShapeInfo_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

TSDShapeInfo *__49__TSDShapeInfo_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = -[TSDShapeInfo initWithContext:geometry:style:pathSource:]([TSDShapeInfo alloc], "initWithContext:geometry:style:pathSource:", [*(a1 + 40) context], objc_msgSend(objc_msgSend(*(a1 + 40), "geometry"), "mixedObjectWithFraction:ofObject:", objc_msgSend(v2, "geometry"), *(a1 + 48)), objc_msgSend(objc_msgSend(*(a1 + 40), "shapeStyle"), "mixedObjectWithFraction:ofObject:", objc_msgSend(v2, "shapeStyle"), *(a1 + 48)), objc_msgSend(objc_msgSend(*(a1 + 40), "pathSource"), "mixedObjectWithFraction:ofObject:", objc_msgSend(v2, "pathSource"), *(a1 + 48)));

  return v3;
}

- (id)objectForProperty:(int)a3
{
  switch(a3)
  {
    case 522:

      return [(TSDShapeInfo *)self headLineEnd];
    case 523:

      return [(TSDShapeInfo *)self tailLineEnd];
    case 526:

      return [(TSDShapeInfo *)self pathSource];
    default:
      v7 = v3;
      v8 = v4;
      v6.receiver = self;
      v6.super_class = TSDShapeInfo;
      return [(TSDStyledInfo *)&v6 objectForProperty:?];
  }
}

@end