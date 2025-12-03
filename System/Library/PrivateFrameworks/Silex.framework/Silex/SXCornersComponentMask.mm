@interface SXCornersComponentMask
- (BOOL)cornerWithValue:(id)value withType:(int)type;
- (id)curveWithValue:(id)value withType:(int)type;
- (unint64_t)cornerMask;
@end

@implementation SXCornersComponentMask

- (BOOL)cornerWithValue:(id)value withType:(int)type
{
  if (value && type == 2)
  {
    return [value BOOLValue];
  }

  else
  {
    return 1;
  }
}

- (id)curveWithValue:(id)value withType:(int)type
{
  v6 = *MEMORY[0x1E69796E0];
  if (type == 3 && [value isEqualToString:@"continuous"])
  {
    v7 = *MEMORY[0x1E69796E8];

    v6 = v7;
  }

  return v6;
}

- (unint64_t)cornerMask
{
  topLeft = [(SXCornersComponentMask *)self topLeft];
  if ([(SXCornersComponentMask *)self topRight])
  {
    topLeft |= 2uLL;
  }

  if ([(SXCornersComponentMask *)self bottomRight])
  {
    topLeft |= 8uLL;
  }

  if ([(SXCornersComponentMask *)self bottomLeft])
  {
    return topLeft | 4;
  }

  else
  {
    return topLeft;
  }
}

@end