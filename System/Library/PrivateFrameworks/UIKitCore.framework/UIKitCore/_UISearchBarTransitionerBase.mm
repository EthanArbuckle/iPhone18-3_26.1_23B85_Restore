@interface _UISearchBarTransitionerBase
- (UIView)searchBar;
- (_UISearchBarTransitionerBase)init;
- (_UISearchBarTransitionerBase)initWithNewTransitionContextForSearchBar:(id)bar;
- (_UISearchBarTransitionerBase)initWithTransitionContext:(id)context forSearchBar:(id)bar;
- (void)animate;
- (void)cancel;
- (void)prepare;
@end

@implementation _UISearchBarTransitionerBase

- (_UISearchBarTransitionerBase)initWithTransitionContext:(id)context forSearchBar:(id)bar
{
  contextCopy = context;
  barCopy = bar;
  v17.receiver = self;
  v17.super_class = _UISearchBarTransitionerBase;
  v9 = [(_UISearchBarTransitionerBase *)&v17 init];
  if (v9)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (contextCopy)
    {
      v11 = barCopy == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = v11;
    if (has_internal_diagnostics)
    {
      if (v12)
      {
        v14 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *v16 = 0;
          _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "_UISearchBarTransitioner is useless without a transitionContext and a search bar", v16, 2u);
        }
      }
    }

    else if (v12)
    {
      v15 = *(__UILogGetCategoryCachedImpl("Assert", &initWithTransitionContext_forSearchBar____s_category) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "_UISearchBarTransitioner is useless without a transitionContext and a search bar", v16, 2u);
      }
    }

    objc_storeStrong(&v9->_transitionContext, context);
    objc_storeWeak(&v9->_searchBar, barCopy);
  }

  return v9;
}

- (_UISearchBarTransitionerBase)init
{
  if (os_variant_has_internal_diagnostics())
  {
    v5 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "init not allowed on a _UISearchBarTransitioner", buf, 2u);
    }
  }

  else
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &init___s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "init not allowed on a _UISearchBarTransitioner", v6, 2u);
    }
  }

  return 0;
}

- (_UISearchBarTransitionerBase)initWithNewTransitionContextForSearchBar:(id)bar
{
  barCopy = bar;
  v5 = objc_alloc_init(_UISearchBarTransitionContext);
  v6 = [(_UISearchBarTransitionerBase *)self initWithTransitionContext:v5 forSearchBar:barCopy];

  return v6;
}

- (void)prepare
{
  fromLayout = [(_UISearchBarTransitionContext *)self->_transitionContext fromLayout];
  activeLayout = self->_activeLayout;
  self->_activeLayout = fromLayout;
}

- (void)animate
{
  toLayout = [(_UISearchBarTransitionContext *)self->_transitionContext toLayout];
  activeLayout = self->_activeLayout;
  self->_activeLayout = toLayout;
}

- (void)cancel
{
  fromLayout = [(_UISearchBarTransitionContext *)self->_transitionContext fromLayout];
  activeLayout = self->_activeLayout;
  self->_activeLayout = fromLayout;
}

- (UIView)searchBar
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);

  return WeakRetained;
}

@end