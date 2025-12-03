@interface UIFont(LayoutMetrics)
+ (id)layoutMetrics;
+ (void)registerLayoutMetrics:()LayoutMetrics;
@end

@implementation UIFont(LayoutMetrics)

+ (id)layoutMetrics
{
  v0 = __layoutMetrics;
  if (!__layoutMetrics)
  {
    v1 = objc_alloc_init(_UIFontLayoutMetrics);
    v2 = __layoutMetrics;
    __layoutMetrics = v1;

    v0 = __layoutMetrics;
  }

  return v0;
}

+ (void)registerLayoutMetrics:()LayoutMetrics
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = NSStringFromClass(a3);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFontMetrics.m" lineNumber:132 description:{@"layoutMetrics of type %@ is not a subclass of _UIFontLayoutMetrics.", v9}];
  }

  v6 = objc_alloc_init(a3);
  v7 = __layoutMetrics;
  __layoutMetrics = v6;
}

@end