@interface UISwipeActionVisualStyleProvider
+ (id)idiomToVisualStyleClassMap;
+ (id)visualStyleForIdiom:(int64_t)a3;
+ (void)registerVisualStyle:(Class)a3 forIdiom:(int64_t)a4;
@end

@implementation UISwipeActionVisualStyleProvider

+ (id)idiomToVisualStyleClassMap
{
  objc_opt_self();
  if (_MergedGlobals_1059 != -1)
  {
    dispatch_once(&_MergedGlobals_1059, &__block_literal_global_157);
  }

  v0 = qword_1ED49D978;

  return v0;
}

void __62__UISwipeActionVisualStyleProvider_idiomToVisualStyleClassMap__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = &unk_1EFE302B0;
  v4[0] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = [v0 mutableCopy];
  v2 = qword_1ED49D978;
  qword_1ED49D978 = v1;
}

+ (void)registerVisualStyle:(Class)a3 forIdiom:(int64_t)a4
{
  if (([(objc_class *)a3 conformsToProtocol:&unk_1EFF74808]& 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = NSStringFromClass(a3);
    [v9 handleFailureInMethod:a2 object:a1 file:@"UISwipeActionVisualStyle.m" lineNumber:134 description:{@"visualStyle of type %@ does not conform to UISwipeActionVisualStyle.", v10}];
  }

  v11 = +[UISwipeActionVisualStyleProvider idiomToVisualStyleClassMap];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v11 setObject:a3 forKey:v8];
}

+ (id)visualStyleForIdiom:(int64_t)a3
{
  v4 = +[UISwipeActionVisualStyleProvider idiomToVisualStyleClassMap];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    objc_opt_class();
  }

  v7 = objc_opt_new();

  return v7;
}

@end