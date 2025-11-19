@interface TSTLayoutSpaceBundle
- (BOOL)performActionOnFrozenLayoutSpaces:(id)a3;
- (BOOL)performActionOnRepeatLayoutSpaces:(id)a3;
- (TSTLayoutSpaceBundle)initWithLayout:(id)a3;
- (id)description;
- (id)getSpaceContainingCellID:(id)a3;
- (int)validateLayoutSpaces;
- (void)dealloc;
- (void)performActionOnEachLayoutSpace:(id)a3;
@end

@implementation TSTLayoutSpaceBundle

- (TSTLayoutSpaceBundle)initWithLayout:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSTLayoutSpaceBundle;
  v4 = [(TSTLayoutSpaceBundle *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mLayout = a3;
    v4->mSpace = [[TSTLayoutSpace alloc] initWithLayoutSpaceBundle:v4 type:0];
  }

  return v5;
}

- (void)dealloc
{
  self->mSpace = 0;

  self->mFrozenHeaderColumnsSpace = 0;
  self->mFrozenHeaderRowsSpace = 0;

  self->mFrozenHeaderCornerSpace = 0;
  self->mRepeatHeaderColumnsSpace = 0;

  self->mRepeatHeaderRowsSpace = 0;
  self->mRepeatHeaderCornerSpace = 0;
  v3.receiver = self;
  v3.super_class = TSTLayoutSpaceBundle;
  [(TSTLayoutSpaceBundle *)&v3 dealloc];
}

- (id)getSpaceContainingCellID:(id)a3
{
  p_mSpace = &self->mSpace;
  Range = TSTLayoutSpaceGetRange(self->mSpace);
  if (HIWORD(Range))
  {
    v7 = (Range & 0xFFFF00000000) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && Range <= a3.var0 && (Range + HIWORD(Range) - 1) >= a3.var0 && a3.var1 >= BYTE2(Range) && a3.var1 <= (BYTE4(Range) + BYTE2(Range) - 1))
  {
    return *p_mSpace;
  }

  p_mSpace = &self->mRepeatHeaderCornerSpace;
  v8 = TSTLayoutSpaceGetRange(self->mRepeatHeaderCornerSpace);
  v9 = !HIWORD(v8) || (v8 & 0xFFFF00000000) == 0;
  if (!v9 && v8 <= a3.var0 && (v8 + HIWORD(v8) - 1) >= a3.var0 && a3.var1 >= BYTE2(v8) && a3.var1 <= (BYTE4(v8) + BYTE2(v8) - 1))
  {
    return *p_mSpace;
  }

  p_mSpace = &self->mRepeatHeaderColumnsSpace;
  v10 = TSTLayoutSpaceGetRange(self->mRepeatHeaderColumnsSpace);
  v11 = !HIWORD(v10) || (v10 & 0xFFFF00000000) == 0;
  if (!v11 && v10 <= a3.var0 && (v10 + HIWORD(v10) - 1) >= a3.var0 && a3.var1 >= BYTE2(v10) && a3.var1 <= (BYTE4(v10) + BYTE2(v10) - 1))
  {
    return *p_mSpace;
  }

  mRepeatHeaderRowsSpace = self->mRepeatHeaderRowsSpace;
  p_mRepeatHeaderRowsSpace = &self->mRepeatHeaderRowsSpace;
  v14 = TSTLayoutSpaceGetRange(mRepeatHeaderRowsSpace);
  v15 = 0;
  if (HIWORD(v14) && (v14 & 0xFFFF00000000) != 0)
  {
    if (v14 > a3.var0)
    {
      return 0;
    }

    if ((v14 + HIWORD(v14) - 1) < a3.var0)
    {
      return 0;
    }

    if (a3.var1 < BYTE2(v14))
    {
      return 0;
    }

    p_mSpace = p_mRepeatHeaderRowsSpace;
    if (a3.var1 > (BYTE4(v14) + BYTE2(v14) - 1))
    {
      return 0;
    }

    return *p_mSpace;
  }

  return v15;
}

- (int)validateLayoutSpaces
{
  v3 = [(TSTLayoutSpace *)self->mSpace validate:0];
  v4 = [(TSTLayoutSpace *)self->mFrozenHeaderColumnsSpace validate:self->mSpace]| v3;
  v5 = [(TSTLayoutSpace *)self->mFrozenHeaderRowsSpace validate:self->mSpace];
  v6 = v4 | v5 | [(TSTLayoutSpace *)self->mFrozenHeaderCornerSpace validate:self->mSpace];
  v7 = [(TSTLayoutSpace *)self->mRepeatHeaderColumnsSpace validate:self->mSpace];
  v8 = v7 | [(TSTLayoutSpace *)self->mRepeatHeaderRowsSpace validate:self->mSpace];
  return v6 | v8 | [(TSTLayoutSpace *)self->mRepeatHeaderCornerSpace validate:self->mSpace];
}

- (void)performActionOnEachLayoutSpace:(id)a3
{
  if (![(TSTLayoutSpaceBundle *)self performActionOnFrozenLayoutSpaces:?]&& ![(TSTLayoutSpaceBundle *)self performActionOnRepeatLayoutSpaces:a3]&& self->mSpace)
  {
    v5 = *(a3 + 2);

    v5(a3);
  }
}

- (BOOL)performActionOnFrozenLayoutSpaces:(id)a3
{
  if (self->mFrozenHeaderCornerSpace && ((*(a3 + 2))(a3) & 1) != 0 || self->mFrozenHeaderRowsSpace && ((*(a3 + 2))(a3) & 1) != 0)
  {
    return 1;
  }

  if (!self->mFrozenHeaderColumnsSpace)
  {
    return 0;
  }

  v6 = *(a3 + 2);

  return v6(a3);
}

- (BOOL)performActionOnRepeatLayoutSpaces:(id)a3
{
  if (self->mRepeatHeaderCornerSpace && ((*(a3 + 2))(a3) & 1) != 0 || self->mRepeatHeaderRowsSpace && ((*(a3 + 2))(a3) & 1) != 0)
  {
    return 1;
  }

  if (!self->mRepeatHeaderColumnsSpace)
  {
    return 0;
  }

  v6 = *(a3 + 2);

  return v6(a3);
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  mLayout = self->mLayout;
  v9 = objc_opt_class();
  v10 = [v3 stringWithFormat:@"<%@ %p layout=<%@ %p>\n   mainSpace=<%@ %p>", v5, self, v7, mLayout, NSStringFromClass(v9), self->mSpace];
  if (self->mFrozenHeaderCornerSpace)
  {
    v11 = objc_opt_class();
    [v10 appendFormat:@"\n   frozenCorner=<%@ %p>", NSStringFromClass(v11), self->mFrozenHeaderCornerSpace];
  }

  if (self->mFrozenHeaderRowsSpace)
  {
    v12 = objc_opt_class();
    [v10 appendFormat:@"\n   frozenRows=<%@ %p>", NSStringFromClass(v12), self->mFrozenHeaderRowsSpace];
  }

  if (self->mFrozenHeaderColumnsSpace)
  {
    v13 = objc_opt_class();
    [v10 appendFormat:@"\n   frozenColumns=<%@ %p>", NSStringFromClass(v13), self->mFrozenHeaderColumnsSpace];
  }

  if (self->mRepeatHeaderCornerSpace)
  {
    v14 = objc_opt_class();
    [v10 appendFormat:@"\n   repeatCorner=<%@ %p>", NSStringFromClass(v14), self->mRepeatHeaderCornerSpace];
  }

  if (self->mRepeatHeaderRowsSpace)
  {
    v15 = objc_opt_class();
    [v10 appendFormat:@"\n   repeatRows=<%@ %p>", NSStringFromClass(v15), self->mRepeatHeaderRowsSpace];
  }

  if (self->mRepeatHeaderColumnsSpace)
  {
    v16 = objc_opt_class();
    [v10 appendFormat:@"\n   repeatColumns=<%@ %p>", NSStringFromClass(v16), self->mRepeatHeaderColumnsSpace];
  }

  [v10 appendString:@"}>"];
  return v10;
}

@end