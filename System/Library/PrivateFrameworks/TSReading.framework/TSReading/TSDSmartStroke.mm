@interface TSDSmartStroke
+ (Class)classForName:(id)name;
+ (id)strokeWithName:(id)name color:(id)color width:(double)width;
- (BOOL)canDrawWithOtherStroke:(id)stroke;
- (BOOL)isEqual:(id)equal;
- (TSDSmartStroke)initWithName:(id)name color:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)mixingTypeWithObject:(id)object;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSDSmartStroke

+ (Class)classForName:(id)name
{
  v7[6] = *MEMORY[0x277D85DE8];
  v7[0] = @"Chalk2";
  v7[1] = @"Dry Brush";
  v7[2] = @"Feathered Brush";
  v7[3] = @"Pen";
  v7[4] = @"Pencil";
  v7[5] = @"Crayon";
  if (([objc_msgSend(MEMORY[0x277CBEA60] arrayWithObjects:v7 count:{6), "containsObject:", name}] & 1) == 0)
  {
    v6 = @"Calligraphy";
    if (([objc_msgSend(MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:{1), "containsObject:", name}] & 1) == 0)
    {
      v5 = @"Doodles";
      [objc_msgSend(MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:{1), "containsObject:", name}];
    }
  }

  return objc_opt_class();
}

+ (id)strokeWithName:(id)name color:(id)color width:(double)width
{
  v5 = [objc_alloc(objc_opt_class()) initWithName:name color:color width:0 cap:0 join:+[TSDStrokePattern solidPattern](TSDStrokePattern pattern:"solidPattern") miterLimit:{width, 4.0}];

  return v5;
}

- (TSDSmartStroke)initWithName:(id)name color:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit
{
  v12.receiver = self;
  v12.super_class = TSDSmartStroke;
  v10 = [(TSDStroke *)&v12 initWithColor:color width:*&cap cap:*&join join:pattern pattern:width miterLimit:limit];
  if (v10)
  {
    v10->mStrokeName = [name copy];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDSmartStroke;
  [(TSDSmartStroke *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSmartStroke copyWithZone:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSmartStroke.mm"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:101 description:{@"%@ is an abstract superclass. Subclasses must inherit %@", v8, NSStringFromSelector(a2)}];
  return 0;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSmartStroke mutableCopyWithZone:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSmartStroke.mm"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:106 description:{@"%@ is an abstract superclass. Subclasses must inherit %@", v8, NSStringFromSelector(a2)}];
  return 0;
}

- (BOOL)isEqual:(id)equal
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

- (BOOL)canDrawWithOtherStroke:(id)stroke
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

- (int64_t)mixingTypeWithObject:(id)object
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
  strokeName = [(TSDSmartStroke *)self strokeName];
  if (strokeName != [v6 strokeName] && !-[NSString isEqualToString:](-[TSDSmartStroke strokeName](self, "strokeName"), "isEqualToString:", objc_msgSend(v6, "strokeName")))
  {
    return TSDMixingTypeBestFromMixingTypes(v4, 2);
  }

  return v4;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (!v6)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSmartStroke mixedObjectWithFraction:ofObject:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSmartStroke.mm"), 168, @"nil object after cast"}];
  }

  v9 = objc_alloc(objc_opt_class());
  strokeName = [(TSDSmartStroke *)self strokeName];
  v11 = [(TSUColor *)[(TSDStroke *)self color] blendedColorWithFraction:[(TSDStroke *)v6 color] ofColor:fraction];
  [(TSDStroke *)self width];
  [(TSDStroke *)v6 width];
  TSUMix();
  v13 = v12;
  if (fraction >= 0.5)
  {
    selfCopy = v6;
  }

  else
  {
    selfCopy = self;
  }

  v15 = [(TSDStroke *)selfCopy cap];
  join = [(TSDStroke *)selfCopy join];
  v17 = TSDMixingMixedObjectWithFractionEx([(TSDStroke *)self pattern], [(TSDStroke *)v6 pattern], fraction);
  [(TSDStroke *)self miterLimit];
  [(TSDStroke *)v6 miterLimit];
  TSUMix();
  v19 = [v9 initWithName:strokeName color:v11 width:v15 cap:join join:v17 pattern:v13 miterLimit:v18];

  return v19;
}

@end