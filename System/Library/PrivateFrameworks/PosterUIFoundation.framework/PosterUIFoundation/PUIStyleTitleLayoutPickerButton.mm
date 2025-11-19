@interface PUIStyleTitleLayoutPickerButton
- (PUIStyleTitleLayoutPickerButton)initWithFrame:(CGRect)a3;
@end

@implementation PUIStyleTitleLayoutPickerButton

- (PUIStyleTitleLayoutPickerButton)initWithFrame:(CGRect)a3
{
  v28[3] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PUIStyleTitleLayoutPickerButton;
  v3 = [(PUIStylePickerButton *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v4 = getPRIncomingCallTextViewAdapterWrapperClass_softClass;
    v27 = getPRIncomingCallTextViewAdapterWrapperClass_softClass;
    if (!getPRIncomingCallTextViewAdapterWrapperClass_softClass)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __getPRIncomingCallTextViewAdapterWrapperClass_block_invoke;
      v23[3] = &unk_1E7854348;
      v23[4] = &v24;
      __getPRIncomingCallTextViewAdapterWrapperClass_block_invoke(v23);
      v4 = v25[3];
    }

    v5 = v4;
    _Block_object_dispose(&v24, 8);
    v6 = [[v4 alloc] initWithName:&stru_1F1C6DED8];
    textViewAdapter = v3->_textViewAdapter;
    v3->_textViewAdapter = v6;

    v8 = [(PUIIncomingCallTextViewAdapter *)v3->_textViewAdapter viewController];
    v9 = [v8 view];

    [v9 setUserInteractionEnabled:0];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUIStyleTitleLayoutPickerButton *)v3 addSubview:v9];
    v19 = MEMORY[0x1E696ACD8];
    v21 = [v9 topAnchor];
    v20 = [(PUIStyleTitleLayoutPickerButton *)v3 topAnchor];
    v10 = [v21 constraintEqualToAnchor:v20 constant:9.0];
    v28[0] = v10;
    v11 = [v9 centerXAnchor];
    v12 = [(PUIStyleTitleLayoutPickerButton *)v3 centerXAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v28[1] = v13;
    v14 = [v9 bottomAnchor];
    v15 = [(PUIStyleTitleLayoutPickerButton *)v3 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:-9.0];
    v28[2] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    [v19 activateConstraints:v17];
  }

  return v3;
}

@end