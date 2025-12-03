@interface TSDMagicMoveMatchObject
+ (id)matchObjectWithTextRep:(id)rep position:(CGPoint)position stringValue:(id)value stringRange:(_NSRange)range;
- (BOOL)conflictsWithMatchObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (CGPoint)position;
- (TSDMagicMoveMatchObject)init;
- (TSDMagicMoveMatchObject)initWithRep:(id)rep position:(CGPoint)position stringValue:(id)value stringRange:(_NSRange)range;
- (_NSRange)stringRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSDMagicMoveMatchObject

- (TSDMagicMoveMatchObject)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveMatchObject init]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 621, @"Do not call method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Do not call method", "-[TSDMagicMoveMatchObject init]"), 0}]);
}

- (TSDMagicMoveMatchObject)initWithRep:(id)rep position:(CGPoint)position stringValue:(id)value stringRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  y = position.y;
  x = position.x;
  v17.receiver = self;
  v17.super_class = TSDMagicMoveMatchObject;
  v12 = [(TSDMagicMoveMatchObject *)&v17 init];
  v13 = v12;
  if (v12)
  {
    [(TSDMagicMoveMatchObject *)v12 setRep:rep];
    [(TSDMagicMoveMatchObject *)v13 setPosition:x, y];
    [(TSDMagicMoveMatchObject *)v13 setStringValue:value];
    [(TSDMagicMoveMatchObject *)v13 setStringRange:location, length];
    -[TSDMagicMoveMatchObject setZOrder:](v13, "setZOrder:", [objc_msgSend(objc_msgSend(rep "canvas")]);
    if ([(TSDMagicMoveMatchObject *)v13 zOrder]>= 10000)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveMatchObject initWithRep:position:stringValue:stringRange:]"];
      [currentHandler handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 634, @"zOrder is too large (%ld > 10000)", -[TSDMagicMoveMatchObject zOrder](v13, "zOrder")}];
    }
  }

  return v13;
}

+ (id)matchObjectWithTextRep:(id)rep position:(CGPoint)position stringValue:(id)value stringRange:(_NSRange)range
{
  v6 = [[TSDMagicMoveMatchObject alloc] initWithRep:rep position:value stringValue:range.location stringRange:range.length, position.x, position.y];

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDMagicMoveMatchObject;
  [(TSDMagicMoveMatchObject *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSDMagicMoveMatchObject alloc];
  v5 = [(TSDMagicMoveMatchObject *)self rep];
  [(TSDMagicMoveMatchObject *)self position];
  v7 = v6;
  v9 = v8;
  stringValue = [(TSDMagicMoveMatchObject *)self stringValue];
  stringRange = [(TSDMagicMoveMatchObject *)self stringRange];
  v13 = [(TSDMagicMoveMatchObject *)v4 initWithRep:v5 position:stringValue stringValue:stringRange stringRange:v12, v7, v9];
  [(TSDMagicMoveMatchObject *)v13 setAttributes:[(TSDMagicMoveMatchObject *)self attributes]];
  [(TSDMagicMoveMatchObject *)v13 setName:[(TSDMagicMoveMatchObject *)self name]];
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  LODWORD(v6) = [v5 isEqual:objc_opt_class()];
  if (v6)
  {
    v7 = [(TSDMagicMoveMatchObject *)self rep];
    if (v7 != [equal rep])
    {
LABEL_3:
      LOBYTE(v6) = 0;
      return v6;
    }

    if (!-[TSDMagicMoveMatchObject stringValue](self, "stringValue") || (v6 = [equal stringValue]) != 0)
    {
      if (!-[TSDMagicMoveMatchObject stringValue](self, "stringValue") && [equal stringValue])
      {
        goto LABEL_3;
      }

      if (!-[TSDMagicMoveMatchObject stringValue](self, "stringValue") || ![equal stringValue] || (LODWORD(v6) = -[NSString isEqual:](-[TSDMagicMoveMatchObject stringValue](self, "stringValue"), "isEqual:", objc_msgSend(equal, "stringValue")), v6))
      {
        stringRange = [(TSDMagicMoveMatchObject *)self stringRange];
        v10 = v9;
        LOBYTE(v6) = stringRange == [equal stringRange] && v10 == v11;
      }
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TSDRep *)[(TSDMagicMoveMatchObject *)self rep] hash];
  v4 = [(NSString *)[(TSDMagicMoveMatchObject *)self stringValue] hash]+ v3;
  v5 = v4 + 10000 * [(TSDMagicMoveMatchObject *)self stringRange];
  [(TSDMagicMoveMatchObject *)self stringRange];
  return v5 + 1000000 * v6;
}

- (id)description
{
  if ([(TSDMagicMoveMatchObject *)self name])
  {
    name = [(TSDMagicMoveMatchObject *)self name];
  }

  else
  {
    stringValue = [(TSDMagicMoveMatchObject *)self stringValue];
    v5 = MEMORY[0x277CCACA8];
    [(TSDMagicMoveMatchObject *)self rep];
    v6 = [objc_opt_class() description];
    v7 = [(TSDMagicMoveMatchObject *)self rep];
    if (stringValue)
    {
      stringValue2 = [(TSDMagicMoveMatchObject *)self stringValue];
      v14.location = [(TSDMagicMoveMatchObject *)self stringRange];
      v9 = NSStringFromRange(v14);
      [(TSDMagicMoveMatchObject *)self position];
      name = [v5 stringWithFormat:@"<%@: %p> (\"%@\"", v6, v7, stringValue2, v9, NSStringFromCGPoint(v15)];
    }

    else
    {
      [(TSDMagicMoveMatchObject *)self position];
      name = [v5 stringWithFormat:@"<%@: %p> @ %@", v6, v7, NSStringFromCGPoint(v16), v11, v12];
    }
  }

  v13.receiver = self;
  v13.super_class = TSDMagicMoveMatchObject;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", -[TSDMagicMoveMatchObject description](&v13, sel_description), name];
}

- (BOOL)conflictsWithMatchObject:(id)object
{
  v5 = [(TSDMagicMoveMatchObject *)self rep];
  if (v5 != [object rep])
  {
    return 0;
  }

  if (!-[TSDMagicMoveMatchObject stringValue](self, "stringValue") || ![object stringValue])
  {
    return 1;
  }

  stringRange = [(TSDMagicMoveMatchObject *)self stringRange];
  v9 = v8;
  v12.location = [object stringRange];
  v12.length = v10;
  v11.location = stringRange;
  v11.length = v9;
  return NSIntersectionRange(v11, v12).length != 0;
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_NSRange)stringRange
{
  length = self->_stringRange.length;
  location = self->_stringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end