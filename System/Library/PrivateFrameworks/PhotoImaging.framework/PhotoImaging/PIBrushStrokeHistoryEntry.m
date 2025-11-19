@interface PIBrushStrokeHistoryEntry
- (CGPoint)objectRemovalPoint;
- (PIBrushStrokeHistoryEntry)initWithDictionary:(id)a3;
- (PIBrushStrokeHistoryEntry)initWithObjectRemovalAtPoint:(CGPoint)a3;
- (PIBrushStrokeHistoryEntry)initWithStroke:(id)a3 closed:(BOOL)a4 skipSegmentationIntersections:(BOOL)a5 needsFacePixellation:(BOOL)a6 subjectHitTestRadius:(double)a7;
- (id)dictionaryRepresentation;
@end

@implementation PIBrushStrokeHistoryEntry

- (CGPoint)objectRemovalPoint
{
  x = self->_objectRemovalPoint.x;
  y = self->_objectRemovalPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)dictionaryRepresentation
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PIBrushStrokeHistoryEntry entryType](self, "entryType")}];
  [v3 setObject:v4 forKeyedSubscript:@"entryType"];

  v5 = [(PIBrushStrokeHistoryEntry *)self brushStroke];

  if (v5)
  {
    v6 = MEMORY[0x1E69B3980];
    v7 = [(PIBrushStrokeHistoryEntry *)self brushStroke];
    v8 = [v6 dictionaryFromBrushStroke:v7];
    [v3 setObject:v8 forKeyedSubscript:@"brushStroke"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[PIBrushStrokeHistoryEntry closedShape](self, "closedShape")}];
  [v3 setObject:v9 forKeyedSubscript:@"closedShape"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[PIBrushStrokeHistoryEntry skipSegmentationIntersections](self, "skipSegmentationIntersections")}];
  [v3 setObject:v10 forKeyedSubscript:@"skipSegmentationIntersections"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[PIBrushStrokeHistoryEntry needsFacePixellation](self, "needsFacePixellation")}];
  [v3 setObject:v11 forKeyedSubscript:@"needsFacePixellation"];

  if ([(PIBrushStrokeHistoryEntry *)self entryType]== 1)
  {
    v21[0] = @"x";
    v12 = MEMORY[0x1E696AD98];
    [(PIBrushStrokeHistoryEntry *)self objectRemovalPoint];
    v13 = [v12 numberWithDouble:?];
    v21[1] = @"y";
    v22[0] = v13;
    v14 = MEMORY[0x1E696AD98];
    [(PIBrushStrokeHistoryEntry *)self objectRemovalPoint];
    v16 = [v14 numberWithDouble:v15];
    v22[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v3 setObject:v17 forKeyedSubscript:@"objectRemovalPoint"];
  }

  v18 = MEMORY[0x1E696AD98];
  [(PIBrushStrokeHistoryEntry *)self subjectHitTestRadius];
  v19 = [v18 numberWithDouble:?];
  [v3 setObject:v19 forKeyedSubscript:@"subjectHitTestRadius"];

  return v3;
}

- (PIBrushStrokeHistoryEntry)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PIBrushStrokeHistoryEntry;
  v5 = [(PIBrushStrokeHistoryEntry *)&v25 init];
  v6 = [v4 objectForKeyedSubscript:@"entryType"];
  -[PIBrushStrokeHistoryEntry setEntryType:](v5, "setEntryType:", [v6 unsignedIntegerValue]);

  v7 = [v4 objectForKeyedSubscript:@"brushStroke"];

  if (v7)
  {
    v8 = MEMORY[0x1E69B3980];
    v9 = [v4 objectForKeyedSubscript:@"brushStroke"];
    v10 = [v8 brushStrokeFromDictionary:v9];
    [(PIBrushStrokeHistoryEntry *)v5 setBrushStroke:v10];
  }

  v11 = [v4 objectForKeyedSubscript:@"closedShape"];
  -[PIBrushStrokeHistoryEntry setClosedShape:](v5, "setClosedShape:", [v11 BOOLValue]);

  v12 = [v4 objectForKeyedSubscript:@"skipSegmentationIntersections"];
  -[PIBrushStrokeHistoryEntry setSkipSegmentationIntersections:](v5, "setSkipSegmentationIntersections:", [v12 BOOLValue]);

  v13 = [v4 valueForKey:@"needsPixellation"];

  if (v13)
  {
    v14 = @"needsPixellation";
  }

  else
  {
    v14 = @"needsFacePixellation";
  }

  v15 = [v4 objectForKeyedSubscript:v14];
  -[PIBrushStrokeHistoryEntry setNeedsFacePixellation:](v5, "setNeedsFacePixellation:", [v15 BOOLValue]);

  v16 = [v4 objectForKeyedSubscript:@"objectRemovalPoint"];

  if (v16)
  {
    v17 = [v4 objectForKeyedSubscript:@"objectRemovalPoint"];
    v18 = [v17 objectForKeyedSubscript:@"x"];
    [v18 doubleValue];
    v20 = v19;
    v21 = [v17 objectForKeyedSubscript:@"y"];
    [v21 doubleValue];
    [(PIBrushStrokeHistoryEntry *)v5 setObjectRemovalPoint:v20, v22];
  }

  v23 = [v4 objectForKeyedSubscript:@"subjectHitTestRadius"];
  [v23 doubleValue];
  [(PIBrushStrokeHistoryEntry *)v5 setSubjectHitTestRadius:?];

  return v5;
}

- (PIBrushStrokeHistoryEntry)initWithObjectRemovalAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v7.receiver = self;
  v7.super_class = PIBrushStrokeHistoryEntry;
  v5 = [(PIBrushStrokeHistoryEntry *)&v7 init];
  [(PIBrushStrokeHistoryEntry *)v5 setEntryType:1];
  [(PIBrushStrokeHistoryEntry *)v5 setObjectRemovalPoint:x, y];
  return v5;
}

- (PIBrushStrokeHistoryEntry)initWithStroke:(id)a3 closed:(BOOL)a4 skipSegmentationIntersections:(BOOL)a5 needsFacePixellation:(BOOL)a6 subjectHitTestRadius:(double)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = PIBrushStrokeHistoryEntry;
  v11 = a3;
  v12 = [(PIBrushStrokeHistoryEntry *)&v15 init];
  [(PIBrushStrokeHistoryEntry *)v12 setEntryType:0, v15.receiver, v15.super_class];
  v13 = [v11 copy];

  [(PIBrushStrokeHistoryEntry *)v12 setBrushStroke:v13];
  [(PIBrushStrokeHistoryEntry *)v12 setClosedShape:v10];
  [(PIBrushStrokeHistoryEntry *)v12 setSkipSegmentationIntersections:v9];
  [(PIBrushStrokeHistoryEntry *)v12 setNeedsFacePixellation:v8];
  [(PIBrushStrokeHistoryEntry *)v12 setSubjectHitTestRadius:a7];
  return v12;
}

@end