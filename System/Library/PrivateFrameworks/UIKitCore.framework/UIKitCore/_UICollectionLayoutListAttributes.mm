@interface _UICollectionLayoutListAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)setSeparatorVisualEffect:(uint64_t)a1;
@end

@implementation _UICollectionLayoutListAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_flags;
    *(v4 + 16) = self->_appearanceStyle;
    *(v4 + 24) = self->_backgroundMaskedCorners;
    objc_storeStrong((v4 + 32), self->_sectionData);
    objc_storeStrong((v5 + 40), self->_sectionBackgroundColor);
    objc_storeStrong((v5 + 48), self->_separatorBackgroundColor);
    objc_storeStrong((v5 + 56), self->_separatorVisualEffect);
    *(v5 + 64) = self->_maxWidth;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = 31;
  if ((*&self->_flags & 1) == 0)
  {
    v2 = 0;
  }

  return v2 ^ self->_appearanceStyle;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    p_isa = &v6->super.isa;
    if (self->_appearanceStyle == v6->_appearanceStyle && (flags = self->_flags, v9 = v6->_flags, ((*&v9 ^ *&flags) & 1) == 0) && (v10 = (*&flags >> 1) & 1, v10 == ((*&v9 >> 1) & 1)) && (!v10 || self->_backgroundMaskedCorners == v6->_backgroundMaskedCorners) && vabdd_f64(self->_maxWidth, v6->_maxWidth) <= 2.22044605e-16 && _deferringTokenEqualToToken(self->_sectionData, v6->_sectionData) && _deferringTokenEqualToToken(self->_sectionBackgroundColor, p_isa[5]) && _deferringTokenEqualToToken(self->_separatorBackgroundColor, p_isa[6]))
    {
      v11 = _deferringTokenEqualToToken(self->_separatorVisualEffect, p_isa[7]);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"appearanceStyle = %ld", self->_appearanceStyle];
  [v3 addObject:v4];

  if (*&self->_flags)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"stylesFirstItemAsHeader = %@", v5];
  [v3 addObject:v6];

  if ((*&self->_flags & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"backgroundMaskedCorners = %lu", self->_backgroundMaskedCorners];
    [v3 addObject:v7];
  }

  if (self->_sectionData)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sectionData = %@", self->_sectionData];
    [v3 addObject:v8];
  }

  if (self->_sectionBackgroundColor)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sectionBackgroundColor = %@", self->_sectionBackgroundColor];
    [v3 addObject:v9];
  }

  if (self->_separatorBackgroundColor)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"separatorBackgroundColor = %@", self->_separatorBackgroundColor];
    [v3 addObject:v10];
  }

  if (self->_separatorVisualEffect)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"separatorVisualEffect = %@", self->_separatorVisualEffect];
    [v3 addObject:v11];
  }

  if (self->_maxWidth != 0.0)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"maxWidth = %g", *&self->_maxWidth];
    [v3 addObject:v12];
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [v3 componentsJoinedByString:@" "];;
  v17 = [v13 stringWithFormat:@"<%@: %p %@>", v15, self, v16];;

  return v17;
}

- (void)setSeparatorVisualEffect:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

@end