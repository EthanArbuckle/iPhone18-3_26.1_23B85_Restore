@interface _UIPresentationControllerDefaultVisualStyleProvider
+ (id)sharedInstance;
- (Class)presentationControllerClassForModalPresentationStyle:(int64_t)style inIdiom:(int64_t)idiom;
- (_UISheetPresentationMetrics)defaultSheetMetrics;
- (id)_init;
- (id)_providerForIdiom:(int64_t)idiom;
- (id)_providerForPresentationController:(id)controller;
- (id)_providerForViewController:(id)controller;
- (id)defaultStyleForPresentationController:(id)controller;
- (id)presentationControllerForPresentedViewController:(id)controller;
- (id)presentationControllerForPresentedViewController:(id)controller inIdiom:(int64_t)idiom;
- (id)styleForAlertPresentationController:(id)controller;
- (id)styleForPopoverPresentationController:(id)controller;
- (id)styleForRootPresentationController:(id)controller;
- (id)styleForSearchPresentationController:(id)controller;
- (id)styleForSheetPresentationController:(id)controller;
- (int64_t)defaultConcretePresentationStyleForViewController:(id)controller;
- (int64_t)defaultConcreteTransitionStyleForViewController:(id)controller;
- (void)registerVisualStyleProvider:(id)provider forIdiom:(int64_t)idiom;
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

  defaultSheetMetrics = [(_UIPresentationControllerNullVisualStyleProvider *)fallbackProvider defaultSheetMetrics];

  return defaultSheetMetrics;
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

- (void)registerVisualStyleProvider:(id)provider forIdiom:(int64_t)idiom
{
  providerByIdiom = self->_providerByIdiom;
  v6 = MEMORY[0x1E696AD98];
  providerCopy = provider;
  v8 = [v6 numberWithInteger:idiom];
  [(NSMutableDictionary *)providerByIdiom setObject:providerCopy forKeyedSubscript:v8];
}

- (id)_providerForIdiom:(int64_t)idiom
{
  providerByIdiom = self->_providerByIdiom;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  v6 = [(NSMutableDictionary *)providerByIdiom objectForKeyedSubscript:v5];
  fallbackProvider = v6;
  if (!v6)
  {
    fallbackProvider = self->_fallbackProvider;
  }

  v8 = fallbackProvider;

  return fallbackProvider;
}

- (id)_providerForViewController:(id)controller
{
  traitCollection = [controller traitCollection];
  v5 = -[_UIPresentationControllerDefaultVisualStyleProvider _providerForIdiom:](self, "_providerForIdiom:", [traitCollection userInterfaceIdiom]);

  return v5;
}

- (id)_providerForPresentationController:(id)controller
{
  traitCollection = [controller traitCollection];
  v5 = -[_UIPresentationControllerDefaultVisualStyleProvider _providerForIdiom:](self, "_providerForIdiom:", [traitCollection userInterfaceIdiom]);

  return v5;
}

- (id)defaultStyleForPresentationController:(id)controller
{
  controllerCopy = controller;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForPresentationController:controllerCopy];
  v6 = [v5 defaultStyleForPresentationController:controllerCopy];

  return v6;
}

- (id)styleForRootPresentationController:(id)controller
{
  controllerCopy = controller;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForPresentationController:controllerCopy];
  v6 = [v5 styleForRootPresentationController:controllerCopy];

  return v6;
}

- (id)styleForAlertPresentationController:(id)controller
{
  controllerCopy = controller;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForPresentationController:controllerCopy];
  v6 = [v5 styleForAlertPresentationController:controllerCopy];

  return v6;
}

- (id)styleForSheetPresentationController:(id)controller
{
  controllerCopy = controller;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForPresentationController:controllerCopy];
  v6 = [v5 styleForSheetPresentationController:controllerCopy];

  return v6;
}

- (id)styleForPopoverPresentationController:(id)controller
{
  controllerCopy = controller;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForPresentationController:controllerCopy];
  v6 = [v5 styleForPopoverPresentationController:controllerCopy];

  return v6;
}

- (id)styleForSearchPresentationController:(id)controller
{
  controllerCopy = controller;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForPresentationController:controllerCopy];
  v6 = [v5 styleForSearchPresentationController:controllerCopy];

  return v6;
}

- (int64_t)defaultConcretePresentationStyleForViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForViewController:controllerCopy];
  v6 = objc_opt_respondsToSelector();
  fallbackProvider = v5;
  if ((v6 & 1) == 0)
  {
    fallbackProvider = self->_fallbackProvider;
  }

  v8 = [(_UIPresentationControllerNullVisualStyleProvider *)fallbackProvider defaultConcretePresentationStyleForViewController:controllerCopy];

  return v8;
}

- (int64_t)defaultConcreteTransitionStyleForViewController:(id)controller
{
  controllerCopy = controller;
  v5 = +[UIDevice currentDevice];
  v6 = -[_UIPresentationControllerDefaultVisualStyleProvider _providerForIdiom:](self, "_providerForIdiom:", [v5 userInterfaceIdiom]);

  v7 = objc_opt_respondsToSelector();
  fallbackProvider = v6;
  if ((v7 & 1) == 0)
  {
    fallbackProvider = self->_fallbackProvider;
  }

  v9 = [(_UIPresentationControllerNullVisualStyleProvider *)fallbackProvider defaultConcreteTransitionStyleForViewController:controllerCopy];

  return v9;
}

- (id)presentationControllerForPresentedViewController:(id)controller inIdiom:(int64_t)idiom
{
  controllerCopy = controller;
  v7 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForIdiom:idiom];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 presentationControllerForPresentedViewController:controllerCopy inIdiom:idiom];
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
        [(_UIPresentationControllerNullVisualStyleProvider *)fallbackProvider presentationControllerForPresentedViewController:controllerCopy inIdiom:idiom];
      }

      else
      {
        [(_UIPresentationControllerNullVisualStyleProvider *)fallbackProvider presentationControllerForPresentedViewController:controllerCopy];
      }
      v9 = ;
      goto LABEL_10;
    }

    v8 = [v7 presentationControllerForPresentedViewController:controllerCopy];
  }

  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_10:

  return v9;
}

- (id)presentationControllerForPresentedViewController:(id)controller
{
  controllerCopy = controller;
  traitCollection = [controllerCopy traitCollection];
  v6 = -[_UIPresentationControllerDefaultVisualStyleProvider presentationControllerForPresentedViewController:inIdiom:](self, "presentationControllerForPresentedViewController:inIdiom:", controllerCopy, [traitCollection userInterfaceIdiom]);

  return v6;
}

- (Class)presentationControllerClassForModalPresentationStyle:(int64_t)style inIdiom:(int64_t)idiom
{
  v7 = [(_UIPresentationControllerDefaultVisualStyleProvider *)self _providerForIdiom:idiom];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v8 = [v7 presentationControllerClassForModalPresentationStyle:style inIdiom:idiom]) == 0)
  {
    v8 = [(_UIPresentationControllerNullVisualStyleProvider *)self->_fallbackProvider presentationControllerClassForModalPresentationStyle:style inIdiom:idiom];
  }

  v9 = v8;

  return v8;
}

@end