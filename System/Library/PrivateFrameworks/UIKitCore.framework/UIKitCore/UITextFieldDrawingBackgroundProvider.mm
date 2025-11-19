@interface UITextFieldDrawingBackgroundProvider
@end

@implementation UITextFieldDrawingBackgroundProvider

void __54___UITextFieldDrawingBackgroundProvider_drawInBounds___block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_VisualizeMaterials_block_invoke___s_category_4) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = v0;
    v2 = 138412290;
    v3 = objc_opt_class();
    _os_log_impl(&dword_188A29000, v1, OS_LOG_TYPE_ERROR, "%@ does not implement -drawInBounds:, and it should!", &v2, 0xCu);
  }
}

@end