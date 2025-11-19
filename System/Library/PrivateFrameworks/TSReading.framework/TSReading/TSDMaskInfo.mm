@interface TSDMaskInfo
- (BOOL)isEqual:(id)a3;
- (TSDMaskInfo)initWithContext:(id)a3 geometry:(id)a4;
- (TSDMaskInfo)initWithContext:(id)a3 geometry:(id)a4 pathSource:(id)a5;
- (id)copyWithContext:(id)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (int64_t)mixingTypeWithObject:(id)a3;
- (void)dealloc;
- (void)setGeometry:(id)a3;
- (void)setPathSource:(id)a3;
@end

@implementation TSDMaskInfo

- (TSDMaskInfo)initWithContext:(id)a3 geometry:(id)a4 pathSource:(id)a5
{
  v10.receiver = self;
  v10.super_class = TSDMaskInfo;
  v6 = [(TSDDrawableInfo *)&v10 initWithContext:a3 geometry:a4];
  if (v6)
  {
    if (!a5)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskInfo initWithContext:geometry:pathSource:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskInfo.m"), 33, @"invalid nil value for '%s'", "pathSource"}];
    }

    [(TSDMaskInfo *)v6 setPathSource:a5];
  }

  return v6;
}

- (TSDMaskInfo)initWithContext:(id)a3 geometry:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskInfo initWithContext:geometry:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskInfo.m"), 41, @"call -initWithContext:geometry:style: please"}];
  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDMaskInfo;
  [(TSDDrawableInfo *)&v3 dealloc];
}

- (id)copyWithContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSDMaskInfo;
  v4 = [(TSDDrawableInfo *)&v6 copyWithContext:a3];
  if (v4)
  {
    v4[18] = [(TSDPathSource *)self->mPathSource copyWithZone:[(TSDMaskInfo *)self zone]];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
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

- (void)setGeometry:(id)a3
{
  v12.receiver = self;
  v12.super_class = TSDMaskInfo;
  [(TSDDrawableInfo *)&v12 setGeometry:?];
  if ([(TSDDrawableInfo *)self geometry]== a3)
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

- (void)setPathSource:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMaskInfo setPathSource:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMaskInfo.m"), 109, @"invalid nil value for '%s'", "newPathSource"}];
  }

  if (self->mPathSource != a3)
  {
    [(TSDDrawableInfo *)self willChangeProperty:526];
    [(TSPObject *)self willModify];

    self->mPathSource = a3;
  }
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__TSDMaskInfo_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
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

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__TSDMaskInfo_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

TSDMaskInfo *__48__TSDMaskInfo_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [*(a1 + 40) context], objc_msgSend(objc_msgSend(*(a1 + 40), "geometry"), "mixedObjectWithFraction:ofObject:", objc_msgSend(v2, "geometry"), *(a1 + 48)), objc_msgSend(objc_msgSend(*(a1 + 40), "pathSource"), "mixedObjectWithFraction:ofObject:", objc_msgSend(v2, "pathSource"), *(a1 + 48)));

  return v3;
}

@end