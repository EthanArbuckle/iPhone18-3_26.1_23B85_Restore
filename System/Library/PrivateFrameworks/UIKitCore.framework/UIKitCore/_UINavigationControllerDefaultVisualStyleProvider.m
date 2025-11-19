@interface _UINavigationControllerDefaultVisualStyleProvider
- (id)styleForNavigationController:(id)a3;
@end

@implementation _UINavigationControllerDefaultVisualStyleProvider

- (id)styleForNavigationController:(id)a3
{
  v4 = a3;
  if (self)
  {
    if (_MergedGlobals_983 != -1)
    {
      dispatch_once(&_MergedGlobals_983, &__block_literal_global_24);
    }

    self = qword_1ED49C748;
  }

  v5 = MEMORY[0x1E696AD98];
  v6 = [v4 traitCollection];
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "userInterfaceIdiom")}];
  v8 = [(_UINavigationControllerDefaultVisualStyleProvider *)self objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = objc_opt_class();
  }

  v9 = [[v8 alloc] initWithNavigationController:v4];

  return v9;
}

@end