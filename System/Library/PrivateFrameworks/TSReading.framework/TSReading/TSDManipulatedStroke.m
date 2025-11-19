@interface TSDManipulatedStroke
- (CGPath)manipulatePath:(CGPath *)a3 withLineWidth:(double)a4;
- (CGPath)pathToStrokeFromCGPath:(CGPath *)a3;
- (TSDManipulatedStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(int)a6 join:(int)a7 pattern:(id)a8 miterLimit:(double)a9;
- (double)renderedWidth;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)strokeLineEnd:(id)a3;
- (void)applyInteriorWrapPropertiesInContext:(CGContext *)a3 insideStroke:(BOOL)a4;
- (void)dealloc;
- (void)p_setupDoodlesManipulation;
- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8;
@end

@implementation TSDManipulatedStroke

- (void)p_setupDoodlesManipulation
{
  v3 = [(TSDPathManipulation *)[TSDVaryWidthPathManipulation alloc] initWithProperties:0 bundle:0 dataManager:0 precedingManipulation:0];
  [(TSDManipulatedStroke *)self setPathManipulation:v3];
}

- (TSDManipulatedStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(int)a6 join:(int)a7 pattern:(id)a8 miterLimit:(double)a9
{
  v12.receiver = self;
  v12.super_class = TSDManipulatedStroke;
  v10 = [(TSDSmartStroke *)&v12 initWithName:a3 color:a4 width:*&a6 cap:*&a7 join:a8 pattern:a5 miterLimit:a9];
  if (v10 && [a3 isEqualToString:@"Doodles"])
  {
    [(TSDManipulatedStroke *)v10 p_setupDoodlesManipulation];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDManipulatedStroke;
  [(TSDSmartStroke *)&v3 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableManipulatedStroke alloc];
  v5 = [(TSDSmartStroke *)self strokeName];
  v6 = [(TSDStroke *)self color];
  [(TSDStroke *)self width];
  v8 = v7;
  v9 = [(TSDStroke *)self cap];
  v10 = [(TSDStroke *)self join];
  v11 = [(TSDStroke *)self pattern];
  [(TSDStroke *)self miterLimit];
  v13 = [(TSDManipulatedStroke *)v4 initWithName:v5 color:v6 width:v9 cap:v10 join:v11 pattern:v8 miterLimit:v12];
  [(TSDManipulatedStroke *)v13 setRandomSeed:[(TSDManipulatedStroke *)self randomSeed]];
  return v13;
}

- (void)applyInteriorWrapPropertiesInContext:(CGContext *)a3 insideStroke:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = TSDManipulatedStroke;
  [(TSDStroke *)&v4 applyToContext:a3 insideStroke:a4];
}

- (id)strokeLineEnd:(id)a3
{
  v3 = a3;
  v5 = [a3 identifier];
  if (v3 && ([v5 hasPrefix:{-[TSDSmartStroke strokeName](self, "strokeName")}] & 1) == 0 && self->mArrows)
  {
    v6 = [v5 rangeOfString:@":"];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [v5 substringFromIndex:v6 + v7];
    }

    mArrows = self->mArrows;

    return [(NSMutableDictionary *)mArrows objectForKey:v5];
  }

  else
  {
    if (([v5 hasPrefix:{-[TSDSmartStroke strokeName](self, "strokeName")}] & 1) == 0)
    {
      v10.receiver = self;
      v10.super_class = TSDManipulatedStroke;
      return [(TSDStroke *)&v10 strokeLineEnd:v3];
    }

    return v3;
  }
}

- (CGPath)manipulatePath:(CGPath *)a3 withLineWidth:(double)a4
{
  [(TSDManipulatedStroke *)self seedRandom];
  mManipulation = self->mManipulation;
  if (!mManipulation)
  {
    return a3;
  }

  return [(TSDPathManipulation *)mManipulation manipulatePath:a3 withLineWidth:a4];
}

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a4;
  [(TSDStroke *)self width];
  v15.receiver = self;
  v15.super_class = TSDManipulatedStroke;
  [(TSDStroke *)&v15 paintPath:[(TSDManipulatedStroke *)self manipulatePath:a3 withLineWidth:?] wantsInteriorStroke:v12 inContext:a5 useFastDrawing:v10 parameterized:v9 shouldReverseDrawOrder:v8];
}

- (CGPath)pathToStrokeFromCGPath:(CGPath *)a3
{
  [(TSDStroke *)self width];

  return [(TSDManipulatedStroke *)self manipulatePath:a3 withLineWidth:?];
}

- (double)renderedWidth
{
  if (self->mManipulation)
  {
    [(TSDStroke *)self i_width];
    return v2 * 4.0;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = TSDManipulatedStroke;
    [(TSDStroke *)&v4 width];
  }

  return result;
}

@end