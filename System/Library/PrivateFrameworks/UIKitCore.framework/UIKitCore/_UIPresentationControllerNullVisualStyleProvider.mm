@interface _UIPresentationControllerNullVisualStyleProvider
- (Class)presentationControllerClassForModalPresentationStyle:(int64_t)a3 inIdiom:(int64_t)a4;
- (id)defaultStyleForPresentationController:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 inIdiom:(int64_t)a4;
- (id)styleForRootPresentationController:(id)a3;
- (int64_t)defaultConcretePresentationStyleForViewController:(id)a3;
@end

@implementation _UIPresentationControllerNullVisualStyleProvider

- (id)defaultStyleForPresentationController:(id)a3
{
  v3 = a3;
  v4 = [[_UIPresentationControllerVisualStyle alloc] initWithPresentationController:v3];

  return v4;
}

- (id)styleForRootPresentationController:(id)a3
{
  v3 = a3;
  v4 = [[_UIPresentationControllerVisualStyle alloc] initWithPresentationController:v3];

  return v4;
}

- (int64_t)defaultConcretePresentationStyleForViewController:(id)a3
{
  v4 = a3;
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
      v6 = [v4 topViewController];
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
    v12 = [(_UIPresentationControllerNullVisualStyleProvider *)self defaultSheetMetrics];
    if ([v12 defaultMode])
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

- (id)presentationControllerForPresentedViewController:(id)a3 inIdiom:(int64_t)a4
{
  v6 = a3;
  v7 = [objc_alloc(-[_UIPresentationControllerNullVisualStyleProvider presentationControllerClassForModalPresentationStyle:inIdiom:](self presentationControllerClassForModalPresentationStyle:objc_msgSend(v6 inIdiom:{"modalPresentationStyle"), a4)), "initWithPresentedViewController:presentingViewController:", v6, 0}];

  return v7;
}

- (id)presentationControllerForPresentedViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 traitCollection];
  v6 = -[_UIPresentationControllerNullVisualStyleProvider presentationControllerForPresentedViewController:inIdiom:](self, "presentationControllerForPresentedViewController:inIdiom:", v4, [v5 userInterfaceIdiom]);

  return v6;
}

- (Class)presentationControllerClassForModalPresentationStyle:(int64_t)a3 inIdiom:(int64_t)a4
{
  v5 = 0;
  if (a3 > 6)
  {
    if (a3 > 16)
    {
      if (a3 == 17 || a3 == 18 || a3 == 100)
      {
        goto LABEL_17;
      }
    }

    else if (a3 == 7 || a3 == 8 || a3 == 16)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (a3 <= 2)
    {
      if (a3 > 2)
      {
        goto LABEL_18;
      }

LABEL_17:
      v5 = objc_opt_class();
      goto LABEL_18;
    }

    if (a3 == 3 || a3 == 5 || a3 == 6)
    {
      goto LABEL_17;
    }
  }

LABEL_18:

  return v5;
}

@end