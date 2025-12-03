@interface PLManagedLegacyFace
- (CGRect)relativeRect;
- (void)delete;
- (void)setRelativeRect:(CGRect)rect;
@end

@implementation PLManagedLegacyFace

- (void)delete
{
  managedObjectContext = [(PLManagedLegacyFace *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

- (void)setRelativeRect:(CGRect)rect
{
  rectCopy = rect;
  if (CGRectIsEmpty(rect))
  {

    [(PLManagedLegacyFace *)self setRelativeRectValue:0];
  }

  else
  {
    v4 = [MEMORY[0x1E696B098] valueWithBytes:&rectCopy objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [(PLManagedLegacyFace *)self setRelativeRectValue:v4, *&rectCopy.origin.x, *&rectCopy.origin.y, *&rectCopy.size.width, *&rectCopy.size.height];
  }
}

- (CGRect)relativeRect
{
  relativeRectValue = [(PLManagedLegacyFace *)self relativeRectValue];
  v3 = relativeRectValue;
  if (relativeRectValue && !strncmp([relativeRectValue objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}", 0x32uLL))
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