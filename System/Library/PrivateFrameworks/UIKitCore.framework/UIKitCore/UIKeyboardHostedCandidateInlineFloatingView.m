@interface UIKeyboardHostedCandidateInlineFloatingView
- (BOOL)hostInlineRectIsVertical;
- (UIKeyboardHostedCandidateInlineFloatingView)initWithContainer:(id)a3 delegate:(id)a4;
- (UIKeyboardHostedCandidateInlineFloatingViewDelegate)delegate;
- (void)hostIsTextVerticalDidChange:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation UIKeyboardHostedCandidateInlineFloatingView

- (BOOL)hostInlineRectIsVertical
{
  v2 = self;
  v3 = sub_188FD04E0();

  return v3 & 1;
}

- (UIKeyboardHostedCandidateInlineFloatingView)initWithContainer:(id)a3 delegate:(id)a4
{
  v33[4] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = UIKeyboardHostedCandidateInlineFloatingView;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = a4;
  v10 = a3;
  v11 = [(UIKeyboardCandidateInlineFloatingView *)&v32 initWithFrame:v5, v6, v7, v8];
  [(UIView *)v11 setClipsToBounds:1];
  [v10 addSubview:v11];
  [(UIView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIKeyboardHostedCandidateInlineFloatingView *)v11 setDelegate:v9];

  v12 = +[UIColor clearColor];
  [(UIView *)v11 setBackgroundColor:v12];

  v13 = +[UIColor systemBackgroundColor];
  [v10 setBackgroundColor:v13];

  v14 = [v10 layer];
  [v14 setCornerRadius:22.0];

  v15 = [(UIView *)v11 layer];
  [v15 setCornerRadius:18.0];

  v27 = MEMORY[0x1E69977A0];
  v31 = [(UIView *)v11 topAnchor];
  v30 = [v10 topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:4.0];
  v33[0] = v29;
  v28 = [(UIView *)v11 leadingAnchor];
  v16 = [v10 leadingAnchor];
  v17 = [v28 constraintEqualToAnchor:v16 constant:4.0];
  v33[1] = v17;
  v18 = [(UIView *)v11 trailingAnchor];
  v19 = [v10 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-4.0];
  v33[2] = v20;
  v21 = [(UIView *)v11 bottomAnchor];
  v22 = [v10 bottomAnchor];

  v23 = [v21 constraintEqualToAnchor:v22 constant:-4.0];
  v33[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
  [v27 activateConstraints:v24];

  v25 = [MEMORY[0x1E696AD88] defaultCenter];
  [v25 addObserver:v11 selector:sel_hostIsTextVerticalDidChange_ name:@"_UIKeyboardCandidateInlineFloatingViewHostIsTextVerticalDidChangeNotification" object:0];

  return v11;
}

- (void)setFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = UIKeyboardHostedCandidateInlineFloatingView;
  [(UIView *)&v5 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(UIKeyboardHostedCandidateInlineFloatingView *)self delegate];
  [v4 hostedInlineFloatingViewFrameUpdated];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = UIKeyboardHostedCandidateInlineFloatingView;
  [(UIView *)&v7 setHidden:?];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"_UIKeyboardCandidateInlineFloatingViewHiddenDidChangeHiddenKey";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v4 postNotificationName:@"_UIKeyboardCandidateInlineFloatingViewHiddenDidChangeNotification" object:0 userInfo:v6];
}

- (void)hostIsTextVerticalDidChange:(id)a3
{
  v7 = [a3 userInfo];
  v4 = [v7 objectForKeyedSubscript:@"isVertical"];
  v5 = [v4 BOOLValue];

  v6 = [(UIKeyboardHostedCandidateInlineFloatingView *)self delegate];
  [v6 hostedInlineFloatingViewIsTextVerticalUpdated:v5];
}

- (UIKeyboardHostedCandidateInlineFloatingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end