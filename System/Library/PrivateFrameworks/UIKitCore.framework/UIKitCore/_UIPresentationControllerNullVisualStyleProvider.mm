@interface _UIPresentationControllerNullVisualStyleProvider
- (Class)presentationControllerClassForModalPresentationStyle:(int64_t)style inIdiom:(int64_t)idiom;
- (id)defaultStyleForPresentationController:(id)controller;
- (id)presentationControllerForPresentedViewController:(id)controller;
- (id)presentationControllerForPresentedViewController:(id)controller inIdiom:(int64_t)idiom;
- (id)styleForRootPresentationController:(id)controller;
- (int64_t)defaultConcretePresentationStyleForViewController:(id)controller;
@end

@implementation _UIPresentationControllerNullVisualStyleProvider

- (id)defaultStyleForPresentationController:(id)controller
{
  controllerCopy = controller;
  v4 = [[_UIPresentationControllerVisualStyle alloc] initWithPresentationController:controllerCopy];

  return v4;
}

- (id)styleForRootPresentationController:(id)controller
{
  controllerCopy = controller;
  v4 = [[_UIPresentationControllerVisualStyle alloc] initWithPresentationController:controllerCopy];

  return v4;
}

- (int64_t)defaultConcretePresentationStyleForViewController:(id)controller
{
  controllerCopy = controller;
  if (qword_1ED49F698 != -1)
  {
    dispatch_once(&qword_1ED49F698, &__block_literal_global_419);
  }

  if (_MergedGlobals_1212 == 1)
  {
    NSClassFromString(&cfstr_ChatkitAppcard.isa);
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      topViewController = [controllerCopy topViewController];
      NSClassFromString(&cfstr_Cnvisualidenti.isa);
      v7 = objc_opt_isKindOfClass();

      isKindOfClass |= v7;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  if (byte_1ED49F691 == 1)
  {
    NSClassFromString(&cfstr_PosterboardPos.isa);
    v8 = objc_opt_isKindOfClass();
  }

  else
  {
    v8 = 0;
  }

  if (((isKindOfClass | v8) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v9 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    goto LABEL_14;
  }

  v11 = _UIInternalPreference_ForceFormSheetsAsDefault;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_ForceFormSheetsAsDefault)
  {
    goto LABEL_14;
  }

  v10 = 1;
  while (v9 >= v11)
  {
    _UIInternalPreferenceSync(v9, &_UIInternalPreference_ForceFormSheetsAsDefault, @"ForceFormSheetsAsDefault", _UIInternalPreferenceUpdateBool);
    v11 = _UIInternalPreference_ForceFormSheetsAsDefault;
    if (v9 == _UIInternalPreference_ForceFormSheetsAsDefault)
    {
      goto LABEL_25;
    }
  }

  if (!byte_1EA95E574)
  {
LABEL_14:
    v10 = 1;
  }

  else
  {
LABEL_21:
    defaultSheetMetrics = [(_UIPresentationControllerNullVisualStyleProvider *)self defaultSheetMetrics];
    if ([defaultSheetMetrics defaultMode])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

LABEL_25:

  return v10;
}

- (id)presentationControllerForPresentedViewController:(id)controller inIdiom:(int64_t)idiom
{
  controllerCopy = controller;
  v7 = [objc_alloc(-[_UIPresentationControllerNullVisualStyleProvider presentationControllerClassForModalPresentationStyle:inIdiom:](self presentationControllerClassForModalPresentationStyle:objc_msgSend(controllerCopy inIdiom:{"modalPresentationStyle"), idiom)), "initWithPresentedViewController:presentingViewController:", controllerCopy, 0}];

  return v7;
}

- (id)presentationControllerForPresentedViewController:(id)controller
{
  controllerCopy = controller;
  traitCollection = [controllerCopy traitCollection];
  v6 = -[_UIPresentationControllerNullVisualStyleProvider presentationControllerForPresentedViewController:inIdiom:](self, "presentationControllerForPresentedViewController:inIdiom:", controllerCopy, [traitCollection userInterfaceIdiom]);

  return v6;
}

- (Class)presentationControllerClassForModalPresentationStyle:(int64_t)style inIdiom:(int64_t)idiom
{
  v5 = 0;
  if (style > 6)
  {
    if (style > 16)
    {
      if (style == 17 || style == 18 || style == 100)
      {
        goto LABEL_17;
      }
    }

    else if (style == 7 || style == 8 || style == 16)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (style <= 2)
    {
      if (style > 2)
      {
        goto LABEL_18;
      }

LABEL_17:
      v5 = objc_opt_class();
      goto LABEL_18;
    }

    if (style == 3 || style == 5 || style == 6)
    {
      goto LABEL_17;
    }
  }

LABEL_18:

  return v5;
}

@end