@interface _UIPresentationControllerDefaultVisualStyleProvider
+ (id)sharedInstance;
- (Class)presentationControllerClassForModalPresentationStyle:(int64_t)a3 inIdiom:(int64_t)a4;
- (_UISheetPresentationMetrics)defaultSheetMetrics;
- (id)_init;
- (id)_providerForIdiom:(int64_t)a3;
- (id)_providerForPresentationController:(id)a3;
- (id)_providerForViewController:(id)a3;
- (id)defaultStyleForPresentationController:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 inIdiom:(int64_t)a4;
- (id)styleForAlertPresentationController:(id)a3;
- (id)styleForPopoverPresentationController:(id)a3;
- (id)styleForRootPresentationController:(id)a3;
- (id)styleForSearchPresentationController:(id)a3;
- (id)styleForSheetPresentationController:(id)a3;
- (int64_t)defaultConcretePresentationStyleForViewController:(id)a3;
- (int64_t)defaultConcreteTransitionStyleForViewController:(id)a3;
- (void)registerVisualStyleProvider:(id)a3 forIdiom:(int64_t)a4;
@end

@implementation _UIPresentationControllerDefaultVisualStyleProvider

+ (id)sharedInstance
{
  if (qword_1ED49F6A0 != -1)
  {
    dispatch_once(&qword_1ED49F6A0, &__block_literal_global_115_3);
  }

  v3 = qword_1ED49F6A8;

  return v3;
}

- (_UISheetPresentationMetrics)defaultSheetMetrics
{
  v3 = +[UIDevice currentDevice];
  v4 = -[_UIPresentationControllerDefaultVisualStyleProvider _providerForIdiom:](self, "_providerForIdiom:", [v3 userInterfaceIdiom]);

  v5 = objc_opt_respondsToSelector();
  fallbackProvider = v4;
  if ((v5 & 1) == 0)
  {
    fallbackProvider = self->_fallbackProvider;
  }

  v7 = [(_UIPresentationControllerNullVisualStyleProvider *)fallbackProvider defaultSheetMetrics];

  return v7;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = _UIPresentationControllerDefaultVisualStyleProvider;
  v2 = [(_UIPresentationControllerDefaultVisualStyleProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    providerByIdiom = v2->_providerByIdiom;
    v2->_providerByIdiom = v3;

    v5 = objc_alloc_init(_UIPresentationControllerNullVisualStyleProvider);
    fallbackProvider = v2->_fallbackProvider;
    v2->_fallbackProvider = v5;
  }

  return v2;
}

- (void)registerVisualStyleProvider:(id)a3 forIdiom:(int64_t)a4
{
  providerByIdiom = self->_providerByIdiom;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  [(NSMutableDictionary *)providerByIdiom setObject:v7 forKeyedSubscript:v8];
}

- (id)_providerForIdiom:(int64_t)a3
{
  providerByIdiom = self->_providerByIdiom;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(NSMutableDictionary *)providerByIdiom objectForKeyedSubscript:v5];
  fallbackProvider = v6;
  if (!v6)
  {
    fallbackProvider = self->_fallbackProvider;
  }

  v8 = fallbackProvider;

  return fallbackProvider;
}

- (id)_providerForViewController:(id)a3
{
  v4 = [a3 traitCollection];
  v5 = -[_UIPresentationControllerDefaultVisualStyleProvider _providerForIdiom:](self, "_providerForIdiom:", [v4 userInterfaceIdiom]);

  return v5;
}

- (id)_providerForPresentationController:(id)a3
{
  v4 = [a3 traitCollection];
  v5 = -[_UIPresentationControllerDefaultVisualStyleProvider _providerForIdiom:](self, "_providerForIdiom:", [v4 userInterfaceIdiom]);

  return v5;
}

- (id)defaultStyleForPresentationController:(id)a3
{
  v4 = a3;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForPresentationController:v4];
  v6 = [v5 defaultStyleForPresentationController:v4];

  return v6;
}

- (id)styleForRootPresentationController:(id)a3
{
  v4 = a3;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForPresentationController:v4];
  v6 = [v5 styleForRootPresentationController:v4];

  return v6;
}

- (id)styleForAlertPresentationController:(id)a3
{
  v4 = a3;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForPresentationController:v4];
  v6 = [v5 styleForAlertPresentationController:v4];

  return v6;
}

- (id)styleForSheetPresentationController:(id)a3
{
  v4 = a3;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForPresentationController:v4];
  v6 = [v5 styleForSheetPresentationController:v4];

  return v6;
}

- (id)styleForPopoverPresentationController:(id)a3
{
  v4 = a3;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForPresentationController:v4];
  v6 = [v5 styleForPopoverPresentationController:v4];

  return v6;
}

- (id)styleForSearchPresentationController:(id)a3
{
  v4 = a3;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForPresentationController:v4];
  v6 = [v5 styleForSearchPresentationController:v4];

  return v6;
}

- (int64_t)defaultConcretePresentationStyleForViewController:(id)a3
{
  v4 = a3;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForViewController:v4];
  v6 = objc_opt_respondsToSelector();
  fallbackProvider = v5;
  if ((v6 & 1) == 0)
  {
    fallbackProvider = self->_fallbackProvider;
  }

  v8 = [(_UIPresentationControllerNullVisualStyleProvider *)fallbackProvider defaultConcretePresentationStyleForViewController:v4];

  return v8;
}

- (int64_t)defaultConcreteTransitionStyleForViewController:(id)a3
{
  v4 = a3;
  v5 = +[UIDevice currentDevice];
  v6 = -[_UIPresentationControllerDefaultVisualStyleProvider _providerForIdiom:](self, "_providerForIdiom:", [v5 userInterfaceIdiom]);

  v7 = objc_opt_respondsToSelector();
  fallbackProvider = v6;
  if ((v7 & 1) == 0)
  {
    fallbackProvider = self->_fallbackProvider;
  }

  v9 = [(_UIPresentationControllerNullVisualStyleProvider *)fallbackProvider defaultConcreteTransitionStyleForViewController:v4];

  return v9;
}

- (id)presentationControllerForPresentedViewController:(id)a3 inIdiom:(int64_t)a4
{
  v6 = a3;
  v7 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForIdiom:a4];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 presentationControllerForPresentedViewController:v6 inIdiom:a4];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_6:
      v10 = objc_opt_respondsToSelector();
      fallbackProvider = self->_fallbackProvider;
      if (v10)
      {
        [(_UIPresentationControllerNullVisualStyleProvider *)fallbackProvider presentationControllerForPresentedViewController:v6 inIdiom:a4];
      }

      else
      {
        [(_UIPresentationControllerNullVisualStyleProvider *)fallbackProvider presentationControllerForPresentedViewController:v6];
      }
      v9 = ;
      goto LABEL_10;
    }

    v8 = [v7 presentationControllerForPresentedViewController:v6];
  }

  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_10:

  return v9;
}

- (id)presentationControllerForPresentedViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 traitCollection];
  v6 = -[_UIPresentationControllerDefaultVisualStyleProvider presentationControllerForPresentedViewController:inIdiom:](self, "presentationControllerForPresentedViewController:inIdiom:", v4, [v5 userInterfaceIdiom]);

  return v6;
}

- (Class)presentationControllerClassForModalPresentationStyle:(int64_t)a3 inIdiom:(int64_t)a4
{
  v7 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForIdiom:a4];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v8 = [v7 presentationControllerClassForModalPresentationStyle:a3 inIdiom:a4]) == 0)
  {
    v8 = [(_UIPresentationControllerNullVisualStyleProvider *)self->_fallbackProvider presentationControllerClassForModalPresentationStyle:a3 inIdiom:a4];
  }

  v9 = v8;

  return v8;
}

@end