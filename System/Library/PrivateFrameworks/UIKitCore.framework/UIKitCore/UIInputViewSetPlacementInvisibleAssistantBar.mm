@interface UIInputViewSetPlacementInvisibleAssistantBar
+ (id)placementWithPlacement:(id)placement;
- (id)applicatorInfoForOwner:(id)owner;
@end

@implementation UIInputViewSetPlacementInvisibleAssistantBar

+ (id)placementWithPlacement:(id)placement
{
  v13 = *MEMORY[0x1E69E9840];
  placementCopy = placement;
  if (([placementCopy isVisible] & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = 136315138;
        v12 = "+[UIInputViewSetPlacementInvisibleAssistantBar placementWithPlacement:]";
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "%s: Should not be called with an invisible placement", &v11, 0xCu);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &placementWithPlacement____s_category_403) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315138;
        v12 = "+[UIInputViewSetPlacementInvisibleAssistantBar placementWithPlacement:]";
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%s: Should not be called with an invisible placement", &v11, 0xCu);
      }
    }
  }

  v6 = objc_alloc_init(self);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 5, placement);
  }

  return v7;
}

- (id)applicatorInfoForOwner:(id)owner
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  v5 = [(UIInputViewSetPlacement *)self->super.super._actualPlacement applicatorInfoForOwner:owner];
  v6 = [v4 dictionaryWithDictionary:v5];

  [v6 removeObjectsForKeys:&unk_1EFE2CC28];
  v14[0] = @"AlphaForAssistantBar";
  v7 = MEMORY[0x1E696AD98];
  [(UIInputViewSetPlacementInvisible *)self alpha];
  v8 = [v7 numberWithDouble:?];
  v15[0] = v8;
  v14[1] = @"TransformForAssistantBar";
  v9 = MEMORY[0x1E696B098];
  [(UIInputViewSetPlacementInvisible *)self transform];
  v10 = [v9 valueWithCGAffineTransform:v13];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v6 addEntriesFromDictionary:v11];

  return v6;
}

@end