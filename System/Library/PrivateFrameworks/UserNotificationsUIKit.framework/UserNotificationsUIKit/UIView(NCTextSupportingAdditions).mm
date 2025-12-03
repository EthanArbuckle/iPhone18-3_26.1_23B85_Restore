@interface UIView(NCTextSupportingAdditions)
- (BOOL)nc_isMenuEnabled;
- (id)_interactionForClass:()NCTextSupportingAdditions;
- (uint64_t)canBecomeFirstResponder;
- (uint64_t)nc_setMenuEnabled:()NCTextSupportingAdditions;
@end

@implementation UIView(NCTextSupportingAdditions)

- (BOOL)nc_isMenuEnabled
{
  v1 = [self _interactionForClass:objc_opt_class()];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)canBecomeFirstResponder
{
  v3.receiver = self;
  v3.super_class = UIView_0;
  if (objc_msgSendSuper2(&v3, sel_canBecomeFirstResponder))
  {
    return 1;
  }

  else
  {
    return [self nc_isMenuEnabled];
  }
}

- (uint64_t)nc_setMenuEnabled:()NCTextSupportingAdditions
{
  result = [self nc_isMenuEnabled];
  if (result != a3)
  {
    if (a3)
    {
      v6 = objc_alloc_init(NCTextMenuInteraction);
      [self addInteraction:v6];
    }

    else
    {
      v6 = [self _interactionForClass:objc_opt_class()];
      if (v6)
      {
        [self removeInteraction:v6];
      }
    }

    return [self setUserInteractionEnabled:a3];
  }

  return result;
}

- (id)_interactionForClass:()NCTextSupportingAdditions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__8;
  v12 = __Block_byref_object_dispose__8;
  v13 = 0;
  interactions = [self interactions];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__UIView_NCTextSupportingAdditions___interactionForClass___block_invoke;
  v7[3] = &unk_278371C58;
  v7[4] = &v8;
  v7[5] = a3;
  [interactions enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

@end