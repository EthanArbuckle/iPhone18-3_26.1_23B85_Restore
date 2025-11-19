@interface TSDDefaultHint
+ (Class)archivedHintClass;
- (BOOL)isLastPartitionHorizontally:(BOOL)a3;
- (CGRect)bounds;
- (TSDDefaultHint)initWithBounds:(CGRect)a3 edges:(unint64_t)a4;
- (TSDDefaultHint)initWithCoder:(id)a3;
- (id)copyForArchiving;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TSDDefaultHint

- (TSDDefaultHint)initWithBounds:(CGRect)a3 edges:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = TSDDefaultHint;
  result = [(TSDDefaultHint *)&v10 init];
  if (result)
  {
    result->mBounds.origin.x = x;
    result->mBounds.origin.y = y;
    result->mBounds.size.width = width;
    result->mBounds.size.height = height;
    result->mEdges = a4;
  }

  return result;
}

- (id)copyForArchiving
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDefaultHint copyForArchiving]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDefaultHint.m"), 36, @"Should not be copying default hints."}];
  v5 = objc_alloc(objc_opt_class());
  mEdges = self->mEdges;
  x = self->mBounds.origin.x;
  y = self->mBounds.origin.y;
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;

  return [v5 initWithBounds:mEdges edges:{x, y, width, height}];
}

- (BOOL)isLastPartitionHorizontally:(BOOL)a3
{
  v3 = a3;
  v4 = [(TSDDefaultHint *)self edges];
  v5 = 4;
  if (v3)
  {
    v5 = 8;
  }

  return (v4 & v5) != 0;
}

+ (Class)archivedHintClass
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDDefaultHint archivedHintClass]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDefaultHint.m"), 70, @"Can't archive default hints."}];
  return 0;
}

- (TSDDefaultHint)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = TSDDefaultHint;
  v4 = [(TSDDefaultHint *)&v12 init];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bounds"];
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

    *(v4 + 5) = [a3 decodeIntegerForKey:@"edges"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = MEMORY[0x277CCAE60];
  [(TSDDefaultHint *)self bounds];
  [a3 encodeObject:objc_msgSend(v5 forKey:{"valueWithCGRect:"), @"bounds"}];
  v6 = [(TSDDefaultHint *)self edges];

  [a3 encodeInteger:v6 forKey:@"edges"];
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