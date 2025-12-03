@interface PUIStyleTitleLayoutPickerButton
- (PUIStyleTitleLayoutPickerButton)initWithFrame:(CGRect)frame;
@end

@implementation PUIStyleTitleLayoutPickerButton

- (PUIStyleTitleLayoutPickerButton)initWithFrame:(CGRect)frame
{
  v28[3] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PUIStyleTitleLayoutPickerButton;
  v3 = [(PUIStylePickerButton *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    viewController = [(PUIIncomingCallTextViewAdapter *)v3->_textViewAdapter viewController];
    view = [viewController view];

    [view setUserInteractionEnabled:0];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUIStyleTitleLayoutPickerButton *)v3 addSubview:view];
    v19 = MEMORY[0x1E696ACD8];
    topAnchor = [view topAnchor];
    topAnchor2 = [(PUIStyleTitleLayoutPickerButton *)v3 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:9.0];
    v28[0] = v10;
    centerXAnchor = [view centerXAnchor];
    centerXAnchor2 = [(PUIStyleTitleLayoutPickerButton *)v3 centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v28[1] = v13;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [(PUIStyleTitleLayoutPickerButton *)v3 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-9.0];
    v28[2] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    [v19 activateConstraints:v17];
  }

  return v3;
}

@end