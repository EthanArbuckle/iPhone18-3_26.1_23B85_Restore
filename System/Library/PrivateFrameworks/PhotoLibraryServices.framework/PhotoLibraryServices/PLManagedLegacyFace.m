@interface PLManagedLegacyFace
- (CGRect)relativeRect;
- (void)delete;
- (void)setRelativeRect:(CGRect)a3;
@end

@implementation PLManagedLegacyFace

- (void)delete
{
  v3 = [(PLManagedLegacyFace *)self managedObjectContext];
  [v3 deleteObject:self];
}

- (void)setRelativeRect:(CGRect)a3
{
  v5 = a3;
  if (CGRectIsEmpty(a3))
  {

    [(PLManagedLegacyFace *)self setRelativeRectValue:0];
  }

  else
  {
    v4 = [MEMORY[0x1E696B098] valueWithBytes:&v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [(PLManagedLegacyFace *)self setRelativeRectValue:v4, *&v5.origin.x, *&v5.origin.y, *&v5.size.width, *&v5.size.height];
  }
}

- (CGRect)relativeRect
{
  v2 = [(PLManagedLegacyFace *)self relativeRectValue];
  v3 = v2;
  if (v2 && !strncmp([v2 objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}", 0x32uLL))
  {
    v9 = 0u;
    v10 = 0u;
    [v3 getValue:&v9];
  }

  else
  {
    v4 = *(MEMORY[0x1E695F050] + 16);
    v9 = *MEMORY[0x1E695F050];
    v10 = v4;
  }

  v6 = *(&v9 + 1);
  v5 = *&v9;
  v8 = *(&v10 + 1);
  v7 = *&v10;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end