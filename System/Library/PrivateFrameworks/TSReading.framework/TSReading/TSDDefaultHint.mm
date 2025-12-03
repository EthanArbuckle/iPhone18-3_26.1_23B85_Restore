@interface TSDDefaultHint
+ (Class)archivedHintClass;
- (BOOL)isLastPartitionHorizontally:(BOOL)horizontally;
- (CGRect)bounds;
- (TSDDefaultHint)initWithBounds:(CGRect)bounds edges:(unint64_t)edges;
- (TSDDefaultHint)initWithCoder:(id)coder;
- (id)copyForArchiving;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TSDDefaultHint

- (TSDDefaultHint)initWithBounds:(CGRect)bounds edges:(unint64_t)edges
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10.receiver = self;
  v10.super_class = TSDDefaultHint;
  result = [(TSDDefaultHint *)&v10 init];
  if (result)
  {
    result->mBounds.origin.x = x;
    result->mBounds.origin.y = y;
    result->mBounds.size.width = width;
    result->mBounds.size.height = height;
    result->mEdges = edges;
  }

  return result;
}

- (id)copyForArchiving
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDefaultHint copyForArchiving]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDefaultHint.m"), 36, @"Should not be copying default hints."}];
  v5 = objc_alloc(objc_opt_class());
  mEdges = self->mEdges;
  x = self->mBounds.origin.x;
  y = self->mBounds.origin.y;
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;

  return [v5 initWithBounds:mEdges edges:{x, y, width, height}];
}

- (BOOL)isLastPartitionHorizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  edges = [(TSDDefaultHint *)self edges];
  v5 = 4;
  if (horizontallyCopy)
  {
    v5 = 8;
  }

  return (edges & v5) != 0;
}

+ (Class)archivedHintClass
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDDefaultHint archivedHintClass]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDefaultHint.m"), 70, @"Can't archive default hints."}];
  return 0;
}

- (TSDDefaultHint)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = TSDDefaultHint;
  v4 = [(TSDDefaultHint *)&v12 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"bounds"];
    if (v5)
    {
      [v5 CGRectValue];
      *(v4 + 1) = v6;
      *(v4 + 2) = v7;
      *(v4 + 3) = v8;
      *(v4 + 4) = v9;
    }

    else
    {
      v10 = *(MEMORY[0x277CBF3A0] + 16);
      *(v4 + 8) = *MEMORY[0x277CBF3A0];
      *(v4 + 24) = v10;
    }

    *(v4 + 5) = [coder decodeIntegerForKey:@"edges"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = MEMORY[0x277CCAE60];
  [(TSDDefaultHint *)self bounds];
  [coder encodeObject:objc_msgSend(v5 forKey:{"valueWithCGRect:"), @"bounds"}];
  edges = [(TSDDefaultHint *)self edges];

  [coder encodeInteger:edges forKey:@"edges"];
}

- (CGRect)bounds
{
  x = self->mBounds.origin.x;
  y = self->mBounds.origin.y;
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end