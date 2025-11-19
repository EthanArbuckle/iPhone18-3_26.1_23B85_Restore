@interface PKContactPicker
- (PKContactPicker)initWithSelectionHandler:(id)a3 cancelationHandler:(id)a4;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
@end

@implementation PKContactPicker

- (PKContactPicker)initWithSelectionHandler:(id)a3 cancelationHandler:(id)a4
{
  v20[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = PKContactPicker;
  v8 = [(PKContactPicker *)&v19 init];
  if (v8)
  {
    v9 = _Block_copy(v6);
    selectionHandler = v8->_selectionHandler;
    v8->_selectionHandler = v9;

    v11 = _Block_copy(v7);
    cancelationHandler = v8->_cancelationHandler;
    v8->_cancelationHandler = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695D120]);
    [(UIViewController *)v13 setShouldDisplaySuggestionsController:1];
    [(UIViewController *)v13 setAllowsEditing:1];
    [(UIViewController *)v13 setDelegate:v8];
    v14 = *MEMORY[0x1E695C208];
    v20[0] = *MEMORY[0x1E695C330];
    v20[1] = v14;
    v15 = *MEMORY[0x1E695C310];
    v20[2] = *MEMORY[0x1E695C240];
    v20[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    [(UIViewController *)v13 setDisplayedPropertyKeys:v16];

    pickerViewController = v8->_pickerViewController;
    v8->_pickerViewController = v13;
  }

  return v8;
}

- (void)contactPickerDidCancel:(id)a3
{
  cancelationHandler = self->_cancelationHandler;
  if (cancelationHandler)
  {
    cancelationHandler[2]();
  }
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  if (self->_selectionHandler)
  {
    v5 = MEMORY[0x1E69B8728];
    v6 = a4;
    v7 = [[v5 alloc] initWithCNContact:v6];

    (*(self->_selectionHandler + 2))();
  }
}

@end