@interface PTEditStringRow(PXEditStringRow)
+ (id)px_rowWithTitle:()PXEditStringRow valueKeyPath:alertTitle:alertMessage:textPlaceholder:textValidator:condition:;
+ (void)_px_configureTextField:()PXEditStringRow withTextPlaceholder:saveAction:forRow:;
- (id)_px_editStringRowTextFieldAction;
- (id)_px_editStringRowTextValidationAction;
- (id)_px_validatedTextFromText:()PXEditStringRow;
- (void)_px_setEditStringRowTextFieldAction:()PXEditStringRow;
- (void)_px_setEditStringRowTextValidationAction:()PXEditStringRow;
- (void)_px_updateSaveActionFromTextField;
- (void)setValue:()PXEditStringRow;
@end

@implementation PTEditStringRow(PXEditStringRow)

- (void)setValue:()PXEditStringRow
{
  v2 = [a1 _px_validatedTextFromText:?];
  v3.receiver = a1;
  v3.super_class = &off_1F1AF02A8;
  objc_msgSendSuper2(&v3, sel_setValue_, v2);
}

- (void)_px_updateSaveActionFromTextField
{
  v1 = [a1 _px_editStringRowTextFieldAction];
  v1[2]();
}

- (void)_px_setEditStringRowTextFieldAction:()PXEditStringRow
{
  v4 = _PXPTEditStringRowTextFieldActionAssociationKey;
  v5 = _Block_copy(aBlock);
  objc_setAssociatedObject(a1, v4, v5, 1);
}

- (id)_px_editStringRowTextFieldAction
{
  v1 = objc_getAssociatedObject(a1, _PXPTEditStringRowTextFieldActionAssociationKey);
  v2 = _Block_copy(v1);

  return v2;
}

- (id)_px_validatedTextFromText:()PXEditStringRow
{
  v4 = a3;
  v5 = [a1 _px_editStringRowTextValidationAction];

  if (v5)
  {
    v6 = [a1 _px_editStringRowTextValidationAction];
    v7 = (v6)[2](v6, v4);
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (void)_px_setEditStringRowTextValidationAction:()PXEditStringRow
{
  v4 = _PXPTEditStringRowTextValidationActionAssociationKey;
  v5 = _Block_copy(aBlock);
  objc_setAssociatedObject(a1, v4, v5, 1);
}

- (id)_px_editStringRowTextValidationAction
{
  v1 = objc_getAssociatedObject(a1, _PXPTEditStringRowTextValidationActionAssociationKey);
  v2 = _Block_copy(v1);

  return v2;
}

+ (void)_px_configureTextField:()PXEditStringRow withTextPlaceholder:saveAction:forRow:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [v9 setAutocapitalizationType:0];
  [v9 setAutocorrectionType:1];
  [v9 setEnablesReturnKeyAutomatically:1];
  [v9 setPlaceholder:v10];
  v13 = [v12 value];
  [v9 setText:v13];

  objc_initWeak(&location, v9);
  objc_initWeak(&v22, v11);
  objc_initWeak(&from, v12);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __97__PTEditStringRow_PXEditStringRow___px_configureTextField_withTextPlaceholder_saveAction_forRow___block_invoke;
  v17 = &unk_1E7745A88;
  objc_copyWeak(&v18, &from);
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &v22);
  [v12 _px_setEditStringRowTextFieldAction:&v14];
  [v12 _px_updateSaveActionFromTextField];
  [v9 addTarget:v12 action:sel__px_updateSaveActionFromTextField forControlEvents:0x20000];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

+ (id)px_rowWithTitle:()PXEditStringRow valueKeyPath:alertTitle:alertMessage:textPlaceholder:textValidator:condition:
{
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = [a1 rowWithTitle:a3 valueKeyPath:a4];
  [v20 setCondition:v19];

  v21 = MEMORY[0x1E69C6658];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __129__PTEditStringRow_PXEditStringRow__px_rowWithTitle_valueKeyPath_alertTitle_alertMessage_textPlaceholder_textValidator_condition___block_invoke;
  v28[3] = &unk_1E7732440;
  v29 = v15;
  v30 = v16;
  v32 = v18;
  v33 = a1;
  v31 = v17;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v18;
  v26 = [v21 actionWithHandler:v28];
  [v20 setAction:v26];

  return v20;
}

@end