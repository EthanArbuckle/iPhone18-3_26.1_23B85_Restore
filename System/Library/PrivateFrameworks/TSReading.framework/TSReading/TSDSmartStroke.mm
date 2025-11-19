@interface TSDSmartStroke
+ (Class)classForName:(id)a3;
+ (id)strokeWithName:(id)a3 color:(id)a4 width:(double)a5;
- (BOOL)canDrawWithOtherStroke:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TSDSmartStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(int)a6 join:(int)a7 pattern:(id)a8 miterLimit:(double)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)mixingTypeWithObject:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSDSmartStroke

+ (Class)classForName:(id)a3
{
  v7[6] = *MEMORY[0x277D85DE8];
  v7[0] = @"Chalk2";
  v7[1] = @"Dry Brush";
  v7[2] = @"Feathered Brush";
  v7[3] = @"Pen";
  v7[4] = @"Pencil";
  v7[5] = @"Crayon";
  if (([objc_msgSend(MEMORY[0x277CBEA60] arrayWithObjects:v7 count:{6), "containsObject:", a3}] & 1) == 0)
  {
    v6 = @"Calligraphy";
    if (([objc_msgSend(MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:{1), "containsObject:", a3}] & 1) == 0)
    {
      v5 = @"Doodles";
      [objc_msgSend(MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:{1), "containsObject:", a3}];
    }
  }

  return objc_opt_class();
}

+ (id)strokeWithName:(id)a3 color:(id)a4 width:(double)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithName:a3 color:a4 width:0 cap:0 join:+[TSDStrokePattern solidPattern](TSDStrokePattern pattern:"solidPattern") miterLimit:{a5, 4.0}];

  return v5;
}

- (TSDSmartStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(int)a6 join:(int)a7 pattern:(id)a8 miterLimit:(double)a9
{
  v12.receiver = self;
  v12.super_class = TSDSmartStroke;
  v10 = [(TSDStroke *)&v12 initWithColor:a4 width:*&a6 cap:*&a7 join:a8 pattern:a5 miterLimit:a9];
  if (v10)
  {
    v10->mStrokeName = [a3 copy];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDSmartStroke;
  [(TSDSmartStroke *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSmartStroke copyWithZone:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSmartStroke.mm"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:101 description:{@"%@ is an abstract superclass. Subclasses must inherit %@", v8, NSStringFromSelector(a2)}];
  return 0;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSmartStroke mutableCopyWithZone:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSmartStroke.mm"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:106 description:{@"%@ is an abstract superclass. Subclasses must inherit %@", v8, NSStringFromSelector(a2)}];
  return 0;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    LODWORD(v4) = [objc_msgSend(v4 "strokeName")];
    if (v4)
    {
      v7.receiver = self;
      v7.super_class = TSDSmartStroke;
      LOBYTE(v4) = [(TSDStroke *)&v7 isEqual:v5];
    }
  }

  return v4;
}

- (BOOL)canDrawWithOtherStroke:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {

    LOBYTE(v4) = [(TSDSmartStroke *)self isEqual:v4];
  }

  return v4;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = TSDSmartStroke;
  v3 = [(TSDStroke *)&v5 hash];
  return [(NSString *)self->mStrokeName hash]^ v3;
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v9.receiver = self;
  v9.super_class = TSDSmartStroke;
  v4 = [(TSDStroke *)&v9 mixingTypeWithObject:?];
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  v7 = [(TSDSmartStroke *)self strokeName];
  if (v7 != [v6 strokeName] && !-[NSString isEqualToString:](-[TSDSmartStroke strokeName](self, "strokeName"), "isEqualToString:", objc_msgSend(v6, "strokeName")))
  {
    return TSDMixingTypeBestFromMixingTypes(v4, 2);
  }

  return v4;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (!v6)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSmartStroke mixedObjectWithFraction:ofObject:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSmartStroke.mm"), 168, @"nil object after cast"}];
  }

  v9 = objc_alloc(objc_opt_class());
  v10 = [(TSDSmartStroke *)self strokeName];
  v11 = [(TSUColor *)[(TSDStroke *)self color] blendedColorWithFraction:[(TSDStroke *)v6 color] ofColor:a3];
  [(TSDStroke *)self width];
  [(TSDStroke *)v6 width];
  TSUMix();
  v13 = v12;
  if (a3 >= 0.5)
  {
    v14 = v6;
  }

  else
  {
    v14 = self;
  }

  v15 = [(TSDStroke *)v14 cap];
  v16 = [(TSDStroke *)v14 join];
  v17 = TSDMixingMixedObjectWithFractionEx([(TSDStroke *)self pattern], [(TSDStroke *)v6 pattern], a3);
  [(TSDStroke *)self miterLimit];
  [(TSDStroke *)v6 miterLimit];
  TSUMix();
  v19 = [v9 initWithName:v10 color:v11 width:v15 cap:v16 join:v17 pattern:v13 miterLimit:v18];

  return v19;
}

@end