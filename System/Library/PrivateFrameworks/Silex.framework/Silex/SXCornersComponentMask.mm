@interface SXCornersComponentMask
- (BOOL)cornerWithValue:(id)a3 withType:(int)a4;
- (id)curveWithValue:(id)a3 withType:(int)a4;
- (unint64_t)cornerMask;
@end

@implementation SXCornersComponentMask

- (BOOL)cornerWithValue:(id)a3 withType:(int)a4
{
  if (a3 && a4 == 2)
  {
    return [a3 BOOLValue];
  }

  else
  {
    return 1;
  }
}

- (id)curveWithValue:(id)a3 withType:(int)a4
{
  v6 = *MEMORY[0x1E69796E0];
  if (a4 == 3 && [a3 isEqualToString:@"continuous"])
  {
    v7 = *MEMORY[0x1E69796E8];

    v6 = v7;
  }

  return v6;
}

- (unint64_t)cornerMask
{
  v3 = [(SXCornersComponentMask *)self topLeft];
  if ([(SXCornersComponentMask *)self topRight])
  {
    v3 |= 2uLL;
  }

  if ([(SXCornersComponentMask *)self bottomRight])
  {
    v3 |= 8uLL;
  }

  if ([(SXCornersComponentMask *)self bottomLeft])
  {
    return v3 | 4;
  }

  else
  {
    return v3;
  }
}

@end