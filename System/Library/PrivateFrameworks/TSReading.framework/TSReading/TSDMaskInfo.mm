@interface TSDMaskInfo
- (BOOL)isEqual:(id)equal;
- (TSDMaskInfo)initWithContext:(id)context geometry:(id)geometry;
- (TSDMaskInfo)initWithContext:(id)context geometry:(id)geometry pathSource:(id)source;
- (id)copyWithContext:(id)context;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (int64_t)mixingTypeWithObject:(id)object;
- (void)dealloc;
- (void)setGeometry:(id)geometry;
- (void)setPathSource:(id)source;
@end

@implementation TSDMaskInfo

- (TSDMaskInfo)initWithContext:(id)context geometry:(id)geometry pathSource:(id)source
{
  v10.receiver = self;
  v10.super_class = TSDMaskInfo;
  v6 = [(TSDDrawableInfo *)&v10 initWithContext:context geometry:geometry];
  if (v6)
  {
    if (!source)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskInfo initWithContext:geometry:pathSource:]"];
      [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskInfo.m"), 33, @"invalid nil value for '%s'", "pathSource"}];
    }

    [(TSDMaskInfo *)v6 setPathSource:source];
  }

  return v6;
}

- (TSDMaskInfo)initWithContext:(id)context geometry:(id)geometry
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskInfo initWithContext:geometry:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskInfo.m"), 41, @"call -initWithContext:geometry:style: please"}];
  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDMaskInfo;
  [(TSDDrawableInfo *)&v3 dealloc];
}

- (id)copyWithContext:(id)context
{
  v6.receiver = self;
  v6.super_class = TSDMaskInfo;
  v4 = [(TSDDrawableInfo *)&v6 copyWithContext:context];
  if (v4)
  {
    v4[18] = [(TSDPathSource *)self->mPathSource copyWithZone:[(TSDMaskInfo *)self zone]];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    LOBYTE(v4) = -[TSDInfoGeometry isEqual:](-[TSDDrawableInfo geometry](self, "geometry"), "isEqual:", [v4 geometry]) && (objc_msgSend(-[TSDPathSource bezierPath](-[TSDMaskInfo pathSource](self, "pathSource"), "bezierPath"), "isEqual:", objc_msgSend(objc_msgSend(v5, "pathSource"), "bezierPath")) & 1) != 0;
  }

  return v4;
}

- (void)setGeometry:(id)geometry
{
  v12.receiver = self;
  v12.super_class = TSDMaskInfo;
  [(TSDDrawableInfo *)&v12 setGeometry:?];
  if ([(TSDDrawableInfo *)self geometry]== geometry)
  {
    [(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry] size];
    v6 = v5;
    v8 = v7;
    [(TSDPathSource *)self->mPathSource naturalSize];
    if (v10 != v6 || v9 != v8)
    {
      [(TSDDrawableInfo *)self willChangeProperty:526];
      [(TSPObject *)self willModify];
      [(TSDPathSource *)self->mPathSource setNaturalSize:v6, v8];
    }
  }
}

- (void)setPathSource:(id)source
{
  if (!source)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskInfo setPathSource:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskInfo.m"), 109, @"invalid nil value for '%s'", "newPathSource"}];
  }

  if (self->mPathSource != source)
  {
    [(TSDDrawableInfo *)self willChangeProperty:526];
    [(TSPObject *)self willModify];

    self->mPathSource = source;
  }
}

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__TSDMaskInfo_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
}

uint64_t __36__TSDMaskInfo_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskInfo mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskInfo.m"), 126, @"nil object after cast"}];
  }

  if (TSDMixingTypeWithPossiblyNilObjects([*(a1 + 40) geometry], objc_msgSend(v2, "geometry")) == 5)
  {
    v5 = 5;
  }

  else
  {
    v5 = 3;
  }

  v6 = TSDMixingTypeWithPossiblyNilObjects([*(a1 + 40) pathSource], objc_msgSend(v2, "pathSource"));
  result = TSDMixingTypeBestFromMixingTypes(v5, v6);
  if (result != 4)
  {
    return 2;
  }

  return result;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__TSDMaskInfo_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
}

TSDMaskInfo *__48__TSDMaskInfo_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [*(a1 + 40) context], objc_msgSend(objc_msgSend(*(a1 + 40), "geometry"), "mixedObjectWithFraction:ofObject:", objc_msgSend(v2, "geometry"), *(a1 + 48)), objc_msgSend(objc_msgSend(*(a1 + 40), "pathSource"), "mixedObjectWithFraction:ofObject:", objc_msgSend(v2, "pathSource"), *(a1 + 48)));

  return v3;
}

@end