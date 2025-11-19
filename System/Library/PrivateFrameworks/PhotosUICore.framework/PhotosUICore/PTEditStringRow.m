@interface PTEditStringRow
@end

@implementation PTEditStringRow

void __97__PTEditStringRow_PXEditStringRow___px_configureTextField_withTextPlaceholder_saveAction_forRow___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = objc_loadWeakRetained(a1 + 5);
  v4 = [v3 text];
  v7 = [WeakRetained _px_validatedTextFromText:v4];

  v5 = [v7 length] != 0;
  v6 = objc_loadWeakRetained(a1 + 6);
  [v6 setEnabled:v5];
}

uint64_t __129__PTEditStringRow_PXEditStringRow__px_rowWithTitle_valueKeyPath_alertTitle_alertMessage_textPlaceholder_textValidator_condition___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 56) copy];
  [v5 _px_setEditStringRowTextValidationAction:v7];

  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  objc_initWeak(&location, v8);
  objc_initWeak(&from, v5);
  v9 = MEMORY[0x1E69DC648];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __129__PTEditStringRow_PXEditStringRow__px_rowWithTitle_valueKeyPath_alertTitle_alertMessage_textPlaceholder_textValidator_condition___block_invoke_2;
  v18[3] = &unk_1E77323F0;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  v10 = [v9 actionWithTitle:@"Save" style:0 handler:v18];
  [v8 addAction:v10];
  v11 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v8 addAction:v11];
  objc_initWeak(&v17, v10);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __129__PTEditStringRow_PXEditStringRow__px_rowWithTitle_valueKeyPath_alertTitle_alertMessage_textPlaceholder_textValidator_condition___block_invoke_3;
  v13[3] = &unk_1E7732418;
  v16[1] = *(a1 + 64);
  v14 = *(a1 + 48);
  objc_copyWeak(&v15, &v17);
  objc_copyWeak(v16, &from);
  [v8 addTextFieldWithConfigurationHandler:v13];
  [v6 presentViewController:v8 animated:1 completion:0];
  objc_destroyWeak(v16);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __129__PTEditStringRow_PXEditStringRow__px_rowWithTitle_valueKeyPath_alertTitle_alertMessage_textPlaceholder_textValidator_condition___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained textFields];
  v6 = [v3 firstObject];

  v4 = [v6 text];
  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 setValue:v4];
}

void __129__PTEditStringRow_PXEditStringRow__px_rowWithTitle_valueKeyPath_alertTitle_alertMessage_textPlaceholder_textValidator_condition___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = objc_loadWeakRetained((a1 + 48));
  [v3 _px_configureTextField:v5 withTextPlaceholder:v4 saveAction:WeakRetained forRow:v6];
}

@end