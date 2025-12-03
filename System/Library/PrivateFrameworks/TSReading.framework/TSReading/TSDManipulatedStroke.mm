@interface TSDManipulatedStroke
- (CGPath)manipulatePath:(CGPath *)path withLineWidth:(double)width;
- (CGPath)pathToStrokeFromCGPath:(CGPath *)path;
- (TSDManipulatedStroke)initWithName:(id)name color:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit;
- (double)renderedWidth;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)strokeLineEnd:(id)end;
- (void)applyInteriorWrapPropertiesInContext:(CGContext *)context insideStroke:(BOOL)stroke;
- (void)dealloc;
- (void)p_setupDoodlesManipulation;
- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order;
@end

@implementation TSDManipulatedStroke

- (void)p_setupDoodlesManipulation
{
  v3 = [(TSDPathManipulation *)[TSDVaryWidthPathManipulation alloc] initWithProperties:0 bundle:0 dataManager:0 precedingManipulation:0];
  [(TSDManipulatedStroke *)self setPathManipulation:v3];
}

- (TSDManipulatedStroke)initWithName:(id)name color:(id)color width:(double)width cap:(int)cap join:(int)join pattern:(id)pattern miterLimit:(double)limit
{
  v12.receiver = self;
  v12.super_class = TSDManipulatedStroke;
  v10 = [(TSDSmartStroke *)&v12 initWithName:name color:color width:*&cap cap:*&join join:pattern pattern:width miterLimit:limit];
  if (v10 && [name isEqualToString:@"Doodles"])
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableManipulatedStroke alloc];
  strokeName = [(TSDSmartStroke *)self strokeName];
  color = [(TSDStroke *)self color];
  [(TSDStroke *)self width];
  v8 = v7;
  v9 = [(TSDStroke *)self cap];
  join = [(TSDStroke *)self join];
  pattern = [(TSDStroke *)self pattern];
  [(TSDStroke *)self miterLimit];
  v13 = [(TSDManipulatedStroke *)v4 initWithName:strokeName color:color width:v9 cap:join join:pattern pattern:v8 miterLimit:v12];
  [(TSDManipulatedStroke *)v13 setRandomSeed:[(TSDManipulatedStroke *)self randomSeed]];
  return v13;
}

- (void)applyInteriorWrapPropertiesInContext:(CGContext *)context insideStroke:(BOOL)stroke
{
  v4.receiver = self;
  v4.super_class = TSDManipulatedStroke;
  [(TSDStroke *)&v4 applyToContext:context insideStroke:stroke];
}

- (id)strokeLineEnd:(id)end
{
  endCopy = end;
  identifier = [end identifier];
  if (endCopy && ([identifier hasPrefix:{-[TSDSmartStroke strokeName](self, "strokeName")}] & 1) == 0 && self->mArrows)
  {
    v6 = [identifier rangeOfString:@":"];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      identifier = [identifier substringFromIndex:v6 + v7];
    }

    mArrows = self->mArrows;

    return [(NSMutableDictionary *)mArrows objectForKey:identifier];
  }

  else
  {
    if (([identifier hasPrefix:{-[TSDSmartStroke strokeName](self, "strokeName")}] & 1) == 0)
    {
      v10.receiver = self;
      v10.super_class = TSDManipulatedStroke;
      return [(TSDStroke *)&v10 strokeLineEnd:endCopy];
    }

    return endCopy;
  }
}

- (CGPath)manipulatePath:(CGPath *)path withLineWidth:(double)width
{
  [(TSDManipulatedStroke *)self seedRandom];
  mManipulation = self->mManipulation;
  if (!mManipulation)
  {
    return path;
  }

  return [(TSDPathManipulation *)mManipulation manipulatePath:path withLineWidth:width];
}

- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order
{
  orderCopy = order;
  parameterizedCopy = parameterized;
  drawingCopy = drawing;
  strokeCopy = stroke;
  [(TSDStroke *)self width];
  v15.receiver = self;
  v15.super_class = TSDManipulatedStroke;
  [(TSDStroke *)&v15 paintPath:[(TSDManipulatedStroke *)self manipulatePath:path withLineWidth:?] wantsInteriorStroke:strokeCopy inContext:context useFastDrawing:drawingCopy parameterized:parameterizedCopy shouldReverseDrawOrder:orderCopy];
}

- (CGPath)pathToStrokeFromCGPath:(CGPath *)path
{
  [(TSDStroke *)self width];

  return [(TSDManipulatedStroke *)self manipulatePath:path withLineWidth:?];
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