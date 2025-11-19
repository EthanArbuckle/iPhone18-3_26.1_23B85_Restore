@interface UIContentViewEditingController
@end

@implementation UIContentViewEditingController

void __78___UIContentViewEditingController_updateLabelProperties_editingConfiguration___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v5 = v1;
    v6 = v2;
    if ([*(a1 + 32) numberOfLines] != 1)
    {
      v3 = *(__UILogGetCategoryCachedImpl("ContentViewEditingConfiguration", &_block_invoke___s_category_2) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Enabling _UIContentViewEditingConfiguration.usesTextInputAsLabel with a corresponding label configuration whose numberOfLines != 1 will result in incorrect positioning of the text input. This message will only be logged once.", v4, 2u);
      }
    }
  }
}

@end