@interface PXCMMInvitationSpec
+ (id)specForLayoutVariant:(int64_t)a3;
- (PXCMMInvitationSpec)init;
- (double)aspectRatio;
- (double)bulletSize;
- (double)cornerRadius;
- (double)insets;
- (double)subtitleSpacing;
- (double)titleSpacing;
- (double)verticalPadding;
- (id)_initWithLayoutVariant:(int64_t)a3;
- (int64_t)posterTitleTextStyle;
- (int64_t)titleTextStyle;
@end

@implementation PXCMMInvitationSpec

- (int64_t)titleTextStyle
{
  if (self->_layoutVariant >= 4uLL)
  {
    v12 = v3;
    v13 = v2;
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationSpec.m" lineNumber:251 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 7;
}

- (int64_t)posterTitleTextStyle
{
  layoutVariant = self->_layoutVariant;
  if (layoutVariant >= 4)
  {
    v13 = v3;
    v14 = v2;
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationSpec.m" lineNumber:240 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return qword_1A53832F8[layoutVariant];
}

- (double)subtitleSpacing
{
  v8 = self->_layoutVariant - 1;
  if (v8 >= 3)
  {
    v13 = v3;
    v14 = v2;
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationSpec.m" lineNumber:122 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return dbl_1A53832E0[v8];
}

- (double)titleSpacing
{
  layoutVariant = self->_layoutVariant;
  result = 2.0;
  if (layoutVariant != 1)
  {
    if (layoutVariant != 3)
    {
      v13 = v3;
      v14 = v2;
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationSpec.m" lineNumber:108 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    return 0.0;
  }

  return result;
}

- (double)bulletSize
{
  if ((self->_layoutVariant - 1) >= 3)
  {
    v12 = v3;
    v13 = v2;
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationSpec.m" lineNumber:95 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 12.0;
}

- (double)verticalPadding
{
  layoutVariant = self->_layoutVariant;
  result = 9.0;
  if (layoutVariant != 1)
  {
    if (layoutVariant != 3)
    {
      v13 = v3;
      v14 = v2;
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationSpec.m" lineNumber:83 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    return 0.0;
  }

  return result;
}

- (double)insets
{
  layoutVariant = self->_layoutVariant;
  if (layoutVariant >= 4)
  {
    v13 = v3;
    v14 = v2;
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationSpec.m" lineNumber:70 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return dbl_1A53832C0[layoutVariant];
}

- (double)cornerRadius
{
  layoutVariant = self->_layoutVariant;
  if (layoutVariant >= 4)
  {
    v13 = v3;
    v14 = v2;
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationSpec.m" lineNumber:56 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return dbl_1A53832A0[layoutVariant];
}

- (double)aspectRatio
{
  layoutVariant = self->_layoutVariant;
  if (layoutVariant >= 4)
  {
    v13 = v3;
    v14 = v2;
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationSpec.m" lineNumber:43 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return dbl_1A5383280[layoutVariant];
}

- (id)_initWithLayoutVariant:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PXCMMInvitationSpec;
  result = [(PXCMMInvitationSpec *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (PXCMMInvitationSpec)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationSpec.m" lineNumber:21 description:{@"%s is not available as initializer", "-[PXCMMInvitationSpec init]"}];

  abort();
}

+ (id)specForLayoutVariant:(int64_t)a3
{
  if (specForLayoutVariant__predicate != -1)
  {
    dispatch_once(&specForLayoutVariant__predicate, &__block_literal_global_223886);
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [specForLayoutVariant__specs objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [[PXCMMInvitationSpec alloc] _initWithLayoutVariant:a3];
    [specForLayoutVariant__specs setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

void __44__PXCMMInvitationSpec_specForLayoutVariant___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = specForLayoutVariant__specs;
  specForLayoutVariant__specs = v0;
}

@end