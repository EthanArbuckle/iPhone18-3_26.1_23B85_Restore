@interface PREditingTitleLayoutPickerCellView
- (PREditingTitleLayoutPickerCellView)initWithFrame:(CGRect)frame;
@end

@implementation PREditingTitleLayoutPickerCellView

- (PREditingTitleLayoutPickerCellView)initWithFrame:(CGRect)frame
{
  v21[3] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PREditingTitleLayoutPickerCellView;
  v3 = [(PREditingPickerCellView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[PRIncomingCallTextViewAdapter alloc] initWithName:&stru_1F1C13D90];
    textViewAdapter = v3->_textViewAdapter;
    v3->_textViewAdapter = v4;

    viewController = [(PRIncomingCallTextViewAdapter *)v3->_textViewAdapter viewController];
    view = [viewController view];

    [view setUserInteractionEnabled:0];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PREditingTitleLayoutPickerCellView *)v3 addSubview:view];
    v17 = MEMORY[0x1E696ACD8];
    topAnchor = [view topAnchor];
    topAnchor2 = [(PREditingTitleLayoutPickerCellView *)v3 topAnchor];
    v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:9.0];
    v21[0] = v8;
    centerXAnchor = [view centerXAnchor];
    centerXAnchor2 = [(PREditingTitleLayoutPickerCellView *)v3 centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v21[1] = v11;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [(PREditingTitleLayoutPickerCellView *)v3 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-9.0];
    v21[2] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    [v17 activateConstraints:v15];
  }

  return v3;
}

@end