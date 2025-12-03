@interface _PXCuratedLibraryLayoutSkimmingSlideshowAnimationHelper
- (_PXCuratedLibraryLayoutSkimmingSlideshowAnimationHelper)initWithLayout:(id)layout;
- (id)animation:(id)animation doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes:(id)indexes rootLayout:(id)layout presentedGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos;
- (void)_adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos spriteIndexRange:(_PXGSpriteIndexRange)range appearing:(BOOL)appearing;
- (void)setUserData:(id)data;
@end

@implementation _PXCuratedLibraryLayoutSkimmingSlideshowAnimationHelper

- (void)_adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos spriteIndexRange:(_PXGSpriteIndexRange)range appearing:(BOOL)appearing
{
  length = range.length;
  v8 = &OBJC_IVAR____PXCuratedLibraryLayoutSkimmingSlideshowAnimationHelper__fromIndexPath;
  if (appearing)
  {
    v8 = &OBJC_IVAR____PXCuratedLibraryLayoutSkimmingSlideshowAnimationHelper__toIndexPath;
  }

  v9 = (self + *v8);
  v10 = v9[1];
  v27 = *v9;
  v28 = v10;
  if (range.length)
  {
    v13 = (self->_userInterfaceDirection == 0) ^ appearing;
    if (appearing)
    {
      v14 = -0.2;
    }

    else
    {
      v14 = 1.0;
    }

    if (appearing)
    {
      v15 = -0.1;
    }

    else
    {
      v15 = 0.1;
    }

    p_var2 = &geometries->var0.var2;
    p_var1 = &styles->var1;
    do
    {
      v26 = 0;
      v25[0] = v27;
      v25[1] = v28;
      if ([(_PXCuratedLibraryLayoutSkimmingSlideshowAnimationHelper *)self _shoulAnimateSpriteWithInfo:infos matchingSectionIndexPath:v25 spriteKind:&v26])
      {
        if (v26 == 1)
        {
          v20 = COERCE_FLOAT(*&p_var1->var0.var1[2]);
          v22 = -v20;
          if (v13)
          {
            v22 = COERCE_FLOAT(*&p_var1->var0.var1[2]);
          }

          v18 = COERCE_FLOAT(*p_var1);
          v19 = COERCE_FLOAT(HIDWORD(*&p_var1->var0.var0.var0));
          v21 = COERCE_FLOAT(HIDWORD(*p_var1));
          v29 = CGRectOffset(*(&v20 - 2), v22 * 0.1, 0.0);
          height = v29.size.height;
          y = v29.origin.y;
          *p_var1 = vcvt_hight_f32_f64(vcvt_f32_f64(v29.origin), v29.size);
          p_var1[-1].var0.var0.var3 = v14;
          *p_var2 = v15 + *p_var2;
        }

        else if (v26 == 3)
        {
          p_var1[-1].var0.var0.var3 = -1.0;
        }
      }

      p_var2 += 4;
      p_var1 += 10;
      infos = (infos + 40);
      --length;
    }

    while (length);
  }
}

- (id)animation:(id)animation doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes:(id)indexes rootLayout:(id)layout presentedGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos
{
  v10 = MEMORY[0x1E696AD50];
  indexesCopy = indexes;
  v12 = objc_alloc_init(v10);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __170___PXCuratedLibraryLayoutSkimmingSlideshowAnimationHelper_animation_doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes_rootLayout_presentedGeometries_styles_infos___block_invoke;
  v17[3] = &unk_1E7744440;
  v17[4] = self;
  infosCopy = infos;
  v13 = v12;
  v18 = v13;
  [indexesCopy enumerateIndexesUsingBlock:v17];

  v14 = v18;
  v15 = v13;

  return v13;
}

- (void)setUserData:(id)data
{
  v16.receiver = self;
  v16.super_class = _PXCuratedLibraryLayoutSkimmingSlideshowAnimationHelper;
  [(PXCuratedLibraryLayoutAnimationHelper *)&v16 setUserData:data];
  userData = [(PXCuratedLibraryLayoutAnimationHelper *)self userData];
  if (userData)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      px_descriptionForAssertionMessage = [userData px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayoutAnimationHelper.m" lineNumber:190 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.userData", v12, px_descriptionForAssertionMessage}];
    }
  }

  v6 = [userData objectForKeyedSubscript:@"PXCuratedLibrarySkimmingSlideshowFromSectionKey"];
  v7 = v6;
  if (v6)
  {
    [v6 px_simpleIndexPathValue];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  *&self->_fromIndexPath.dataSourceIdentifier = v14;
  *&self->_fromIndexPath.item = v15;

  v8 = [userData objectForKeyedSubscript:@"PXCuratedLibrarySkimmingSlideshowToSectionKey"];
  v9 = v8;
  if (v8)
  {
    [v8 px_simpleIndexPathValue];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  *&self->_toIndexPath.dataSourceIdentifier = v14;
  *&self->_toIndexPath.item = v15;
}

- (_PXCuratedLibraryLayoutSkimmingSlideshowAnimationHelper)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v7.receiver = self;
  v7.super_class = _PXCuratedLibraryLayoutSkimmingSlideshowAnimationHelper;
  v5 = [(PXCuratedLibraryLayoutAnimationHelper *)&v7 initWithLayout:layoutCopy];
  if (v5)
  {
    v5->_userInterfaceDirection = [layoutCopy userInterfaceDirection];
  }

  return v5;
}

@end