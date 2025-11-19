@interface TSDReflection
+ (id)reflection;
- (BOOL)isEqual:(id)a3;
- (TSDReflection)initWithOpacity:(double)a3 fadeAcceleration:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)mixingTypeWithObject:(id)a3;
@end

@implementation TSDReflection

+ (id)reflection
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TSDReflection)initWithOpacity:(double)a3 fadeAcceleration:(double)a4
{
  v8.receiver = self;
  v8.super_class = TSDReflection;
  v5 = [(TSDReflection *)&v8 init];
  if (v5)
  {
    TSUClamp();
    v5->mOpacity = v6;
    v5->mFadeAcceleration = a4;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [(TSDReflection *)self opacity];
  v6 = v5;
  [a3 opacity];
  return v6 == v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(TSDReflection *)self opacity];
  v6 = v5;
  [(TSDReflection *)self fadeAcceleration];

  return [v4 initWithOpacity:v6 fadeAcceleration:v7];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableReflection allocWithZone:a3];
  [(TSDReflection *)self opacity];
  v6 = v5;
  [(TSDReflection *)self fadeAcceleration];

  return [(TSDReflection *)v4 initWithOpacity:v6 fadeAcceleration:v7];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(TSDReflection *)self opacity];
  return [v3 stringWithFormat:@"<%@ %p opacity=%g>", v5, self, v6];
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__TSDReflection_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __38__TSDReflection_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDReflection mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDReflection.m"), 86, @"nil object after cast"}];
  }

  [*(a1 + 40) opacity];
  v6 = v5;
  [v2 opacity];
  if (v6 == v7)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__TSDReflection_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

TSDReflection *__50__TSDReflection_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_opt_class();
    v2 = TSUDynamicCast();
    [*(a1 + 40) opacity];
    v4 = v3;
    if (v2)
    {
      [v2 opacity];
      v6 = v5;
      v8 = *(a1 + 48);
      v7 = (a1 + 48);
      v9 = v8;
      [*(v7 - 1) fadeAcceleration];
      v11 = v10;
      [v2 fadeAcceleration];
      v13 = v12;
      goto LABEL_7;
    }
  }

  else
  {
    [*(a1 + 40) opacity];
    v4 = v14;
  }

  v15 = *(a1 + 48);
  v7 = (a1 + 48);
  v9 = v15;
  [*(v7 - 1) fadeAcceleration];
  v11 = v16;
  [*(v7 - 1) fadeAcceleration];
  v13 = v17;
  v6 = 0.0;
LABEL_7:
  v18 = TSDMixFloats(v4, v6, v9);
  v19 = [[TSDReflection alloc] initWithOpacity:v18 fadeAcceleration:TSDMixFloats(v11, v13, *v7)];

  return v19;
}

@end