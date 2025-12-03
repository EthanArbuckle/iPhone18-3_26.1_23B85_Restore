@interface UIKeyboardHostedCandidateInlineFloatingView
- (BOOL)hostInlineRectIsVertical;
- (UIKeyboardHostedCandidateInlineFloatingView)initWithContainer:(id)container delegate:(id)delegate;
- (UIKeyboardHostedCandidateInlineFloatingViewDelegate)delegate;
- (void)hostIsTextVerticalDidChange:(id)change;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
@end

@implementation UIKeyboardHostedCandidateInlineFloatingView

- (BOOL)hostInlineRectIsVertical
{
  selfCopy = self;
  v3 = sub_188FD04E0();

  return v3 & 1;
}

- (UIKeyboardHostedCandidateInlineFloatingView)initWithContainer:(id)container delegate:(id)delegate
{
  v33[4] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = UIKeyboardHostedCandidateInlineFloatingView;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  delegateCopy = delegate;
  containerCopy = container;
  v11 = [(UIKeyboardCandidateInlineFloatingView *)&v32 initWithFrame:v5, v6, v7, v8];
  [(UIView *)v11 setClipsToBounds:1];
  [containerCopy addSubview:v11];
  [(UIView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIKeyboardHostedCandidateInlineFloatingView *)v11 setDelegate:delegateCopy];

  v12 = +[UIColor clearColor];
  [(UIView *)v11 setBackgroundColor:v12];

  v13 = +[UIColor systemBackgroundColor];
  [containerCopy setBackgroundColor:v13];

  layer = [containerCopy layer];
  [layer setCornerRadius:22.0];

  layer2 = [(UIView *)v11 layer];
  [layer2 setCornerRadius:18.0];

  v27 = MEMORY[0x1E69977A0];
  topAnchor = [(UIView *)v11 topAnchor];
  topAnchor2 = [containerCopy topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
  v33[0] = v29;
  leadingAnchor = [(UIView *)v11 leadingAnchor];
  leadingAnchor2 = [containerCopy leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
  v33[1] = v17;
  trailingAnchor = [(UIView *)v11 trailingAnchor];
  trailingAnchor2 = [containerCopy trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-4.0];
  v33[2] = v20;
  bottomAnchor = [(UIView *)v11 bottomAnchor];
  bottomAnchor2 = [containerCopy bottomAnchor];

  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
  v33[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
  [v27 activateConstraints:v24];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v11 selector:sel_hostIsTextVerticalDidChange_ name:@"_UIKeyboardCandidateInlineFloatingViewHostIsTextVerticalDidChangeNotification" object:0];

  return v11;
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = UIKeyboardHostedCandidateInlineFloatingView;
  [(UIView *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  delegate = [(UIKeyboardHostedCandidateInlineFloatingView *)self delegate];
  [delegate hostedInlineFloatingViewFrameUpdated];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = UIKeyboardHostedCandidateInlineFloatingView;
  [(UIView *)&v7 setHidden:?];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"_UIKeyboardCandidateInlineFloatingViewHiddenDidChangeHiddenKey";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:hiddenCopy];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [defaultCenter postNotificationName:@"_UIKeyboardCandidateInlineFloatingViewHiddenDidChangeNotification" object:0 userInfo:v6];
}

- (void)hostIsTextVerticalDidChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"isVertical"];
  bOOLValue = [v4 BOOLValue];

  delegate = [(UIKeyboardHostedCandidateInlineFloatingView *)self delegate];
  [delegate hostedInlineFloatingViewIsTextVerticalUpdated:bOOLValue];
}

- (UIKeyboardHostedCandidateInlineFloatingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end