@interface TSDShapeInfo
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (TSDFill)fill;
- (TSDShapeInfo)initWithContext:(id)context geometry:(id)geometry;
- (TSDShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style;
- (TSDShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style pathSource:(id)source;
- (id)copyWithContext:(id)context;
- (id)imageDatasForReducingFileSizeWithAssociatedHints;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)objectForProperty:(int)property;
- (int64_t)mixingTypeWithObject:(id)object;
- (void)dealloc;
- (void)setFill:(id)fill;
- (void)setGeometry:(id)geometry;
- (void)setHeadLineEnd:(id)end;
- (void)setPathSource:(id)source;
- (void)setStyle:(id)style;
- (void)setTailLineEnd:(id)end;
- (void)setValuesForProperties:(id)properties;
@end

@implementation TSDShapeInfo

- (void)setHeadLineEnd:(id)end
{
  [(TSPObject *)self willModify];
  endCopy = end;

  self->mHeadLineEnd = end;
}

- (void)setTailLineEnd:(id)end
{
  [(TSPObject *)self willModify];
  endCopy = end;

  self->mTailLineEnd = end;
}

- (TSDShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style pathSource:(id)source
{
  v14.receiver = self;
  v14.super_class = TSDShapeInfo;
  v8 = [(TSDDrawableInfo *)&v14 initWithContext:context geometry:geometry];
  if (v8)
  {
    if (style)
    {
      if (source)
      {
LABEL_4:
        [(TSDShapeInfo *)v8 setStyle:style];
        [(TSDShapeInfo *)v8 setPathSource:source];
        return v8;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo initWithContext:geometry:style:pathSource:]"];
      [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 91, @"invalid nil value for '%s'", "style"}];
      if (source)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo initWithContext:geometry:style:pathSource:]"];
    [currentHandler2 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 92, @"invalid nil value for '%s'", "pathSource"}];
    goto LABEL_4;
  }

  return v8;
}

- (TSDShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style
{
  [geometry size];
  v9 = [TSDScalarPathSource rectangleWithNaturalSize:?];

  return [(TSDShapeInfo *)self initWithContext:context geometry:geometry style:style pathSource:v9];
}

- (TSDShapeInfo)initWithContext:(id)context geometry:(id)geometry
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo initWithContext:geometry:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 114, @"call - (id)initWithContext:(TSPObjectContext*)context geometry:(TSDInfoGeometry *)geometry style:TSDGraphicStyle*style please."}]);
  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDShapeInfo;
  [(TSDDrawableInfo *)&v3 dealloc];
}

- (id)copyWithContext:(id)context
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
  [context documentObject];
  if (objc_opt_respondsToSelector())
  {
    contextCopy = context;
  }

  else
  {
    [(TSPObjectContext *)[(TSPObject *)self context] documentObject];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      stylesheet = [(TSSStyle *)self->mStyle stylesheet];
      goto LABEL_8;
    }

    contextCopy = [(TSPObject *)self context];
  }

  stylesheet = [[(TSPObjectContext *)contextCopy documentObject] performSelector:sel_stylesheet];
LABEL_8:
  v9 = stylesheet;
  if (!stylesheet)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo copyWithContext:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 155, @"invalid nil value for '%s'", "stylesheet"}];
  }

  v12 = [[TSSStyleMapper alloc] initWithTargetStylesheet:v9 newStyleDOLCContext:0];
  objc_opt_class();
  [(TSSStyleMapper *)v12 mappedStyleForStyle:self->mStyle];
  v5[19] = TSUDynamicCast();

  v5[20] = [(TSDLineEnd *)self->mHeadLineEnd copyWithZone:v6];
  v5[21] = [(TSDLineEnd *)self->mTailLineEnd copyWithZone:v6];
  return v5;
}

- (void)setGeometry:(id)geometry
{
  if ([(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry] heightValid])
  {
    widthValid = [(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry] widthValid];
  }

  else
  {
    widthValid = 0;
  }

  v13.receiver = self;
  v13.super_class = TSDShapeInfo;
  [(TSDDrawableInfo *)&v13 setGeometry:geometry];
  if (-[TSDDrawableInfo geometry](self, "geometry") == geometry && [geometry heightValid] && objc_msgSend(geometry, "widthValid"))
  {
    [geometry size];
    v7 = v6;
    v9 = v8;
    if (!widthValid || (([(TSDPathSource *)self->mPathSource naturalSize], v11 == v7) ? (v12 = v10 == v9) : (v12 = 0), !v12))
    {
      [(TSDDrawableInfo *)self willChangeProperty:526];
      [(TSDPathSource *)self->mPathSource setNaturalSize:v7, v9];
    }
  }
}

- (void)setPathSource:(id)source
{
  if (self->mPathSource != source)
  {
    [(TSDDrawableInfo *)self willChangeProperty:526];

    self->mPathSource = source;
  }
}

- (void)setStyle:(id)style
{
  if (self->mStyle != style)
  {
    -[TSDDrawableInfo willChangeProperties:](self, "willChangeProperties:", [objc_opt_class() properties]);
    [(TSPObject *)self willModify];
    styleCopy = style;

    self->mStyle = style;
  }
}

- (TSDFill)fill
{
  if (![(TSDShapeInfo *)self style])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo fill]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 254, @"invalid nil value for '%s'", "self.style"}];
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

- (void)setFill:(id)fill
{
  if (!fill)
  {
    fill = [MEMORY[0x277CBEB68] null];
  }

  [(TSDStyledInfo *)self i_setValue:fill forProperty:516];
}

- (void)setValuesForProperties:(id)properties
{
  if (![(TSDShapeInfo *)self style])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo setValuesForProperties:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 273, @"invalid nil value for '%s'", "self.style"}];
  }

  if (![-[TSDShapeInfo style](self "style")])
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo setValuesForProperties:]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 274, @"invalid nil value for '%s'", "self.style.stylesheet"}];
  }

  -[TSDDrawableInfo willChangeProperties:](self, "willChangeProperties:", [properties allProperties]);
  v9 = [objc_msgSend(-[TSDShapeInfo style](self "style")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo setValuesForProperties:]"];
    [currentHandler3 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 279, @"Variation style is not a shape style."}];
  }

  [(TSDShapeInfo *)self setStyle:v9];
}

- (id)imageDatasForReducingFileSizeWithAssociatedHints
{
  v6[1] = *MEMORY[0x277D85DE8];
  fill = [(TSDShapeInfo *)self fill];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  result = [(TSDFill *)fill originalImageData];
  if (result || (result = [(TSDFill *)fill imageData]) != 0)
  {
    v4 = result;
    v5 = objc_alloc(MEMORY[0x277D6C320]);
    v6[0] = v4;
    return [v5 initWithObjects:&unk_287DDCAF8 forKeys:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v6, 1)}];
  }

  return result;
}

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  objc_opt_class();
  [(TSDShapeInfo *)self fill];
  v6 = TSUDynamicCast();
  if ([v6 originalImageData] != data && objc_msgSend(v6, "imageData") != data)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeInfo targetSizeForImageData:associatedHint:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeInfo.m"), 343, @"Wrong data for reducing shape fill"}];
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

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__TSDShapeInfo_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
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

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__TSDShapeInfo_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
}

TSDShapeInfo *__49__TSDShapeInfo_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = -[TSDShapeInfo initWithContext:geometry:style:pathSource:]([TSDShapeInfo alloc], "initWithContext:geometry:style:pathSource:", [*(a1 + 40) context], objc_msgSend(objc_msgSend(*(a1 + 40), "geometry"), "mixedObjectWithFraction:ofObject:", objc_msgSend(v2, "geometry"), *(a1 + 48)), objc_msgSend(objc_msgSend(*(a1 + 40), "shapeStyle"), "mixedObjectWithFraction:ofObject:", objc_msgSend(v2, "shapeStyle"), *(a1 + 48)), objc_msgSend(objc_msgSend(*(a1 + 40), "pathSource"), "mixedObjectWithFraction:ofObject:", objc_msgSend(v2, "pathSource"), *(a1 + 48)));

  return v3;
}

- (id)objectForProperty:(int)property
{
  switch(property)
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