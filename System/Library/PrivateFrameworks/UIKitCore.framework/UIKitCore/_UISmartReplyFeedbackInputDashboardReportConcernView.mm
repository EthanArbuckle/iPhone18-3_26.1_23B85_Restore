@interface _UISmartReplyFeedbackInputDashboardReportConcernView
- (BOOL)touchInView:(id)view;
- (CGRect)interactionRect;
- (_UISmartReplyFeedbackInputDashboardReportConcernView)init;
- (void)layoutSubviews;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UISmartReplyFeedbackInputDashboardReportConcernView

- (_UISmartReplyFeedbackInputDashboardReportConcernView)init
{
  v55[5] = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = _UISmartReplyFeedbackInputDashboardReportConcernView;
  v2 = [(_UISmartReplyFeedbackInputDashboardView *)&v53 init];
  if (v2)
  {
    v3 = objc_alloc_init(UIView);
    [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 setFeedbackIconAndLabelView:v3];

    v4 = [(_UISmartReplyFeedbackInputDashboardView *)v2 makeImageWithSystemImageNamed:@"exclamationmark.bubble"];
    [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 setFeedbackIconView:v4];

    v5 = _UILocalizedString(@"_UISmartReplyFeedbackInputDashboardView.reportAConcern", @"Report a Concern button label in the candidate bar for Smart Reply feedback", @"Report a Concern");
    v6 = [(_UISmartReplyFeedbackInputDashboardView *)v2 makeFeedbackLabelWithText:v5];
    [(_UISmartReplyFeedbackInputDashboardView *)v2 setFeedbackLabel:v6];

    feedbackIconAndLabelView = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    feedbackIconView = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconView];
    [feedbackIconAndLabelView addSubview:feedbackIconView];

    feedbackIconAndLabelView2 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    feedbackLabel = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    [feedbackIconAndLabelView2 addSubview:feedbackLabel];

    feedbackIconView2 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconView];
    [feedbackIconView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    feedbackLabel2 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    [feedbackLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v40 = MEMORY[0x1E69977A0];
    feedbackIconView3 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconView];
    leadingAnchor = [feedbackIconView3 leadingAnchor];
    feedbackIconAndLabelView3 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    leadingAnchor2 = [feedbackIconAndLabelView3 leadingAnchor];
    v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v55[0] = v47;
    feedbackIconView4 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconView];
    centerYAnchor = [feedbackIconView4 centerYAnchor];
    feedbackIconAndLabelView4 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    centerYAnchor2 = [feedbackIconAndLabelView4 centerYAnchor];
    v42 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v55[1] = v42;
    feedbackLabel3 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    leadingAnchor3 = [feedbackLabel3 leadingAnchor];
    feedbackIconView5 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconView];
    trailingAnchor = [feedbackIconView5 trailingAnchor];
    v36 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:5.0];
    v55[2] = v36;
    feedbackLabel4 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    trailingAnchor2 = [feedbackLabel4 trailingAnchor];
    feedbackIconAndLabelView5 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    trailingAnchor3 = [feedbackIconAndLabelView5 trailingAnchor];
    v15 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v55[3] = v15;
    feedbackLabel5 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    centerYAnchor3 = [feedbackLabel5 centerYAnchor];
    feedbackIconAndLabelView6 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    centerYAnchor4 = [feedbackIconAndLabelView6 centerYAnchor];
    v20 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v55[4] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:5];
    [v40 activateConstraints:v21];

    feedbackIconAndLabelView7 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    [(UIView *)v2 addSubview:feedbackIconAndLabelView7];

    feedbackIconAndLabelView8 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    [feedbackIconAndLabelView8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v52 = MEMORY[0x1E69977A0];
    feedbackIconAndLabelView9 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    centerXAnchor = [feedbackIconAndLabelView9 centerXAnchor];
    centerXAnchor2 = [(UIView *)v2 centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v54[0] = v27;
    feedbackIconAndLabelView10 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    centerYAnchor5 = [feedbackIconAndLabelView10 centerYAnchor];
    centerYAnchor6 = [(UIView *)v2 centerYAnchor];
    v31 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v54[1] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    [v52 activateConstraints:v32];
  }

  return v2;
}

- (CGRect)interactionRect
{
  feedbackIconView = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self feedbackIconView];
  [feedbackIconView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  feedbackLabel = [(_UISmartReplyFeedbackInputDashboardView *)self feedbackLabel];
  [feedbackLabel frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v30.origin.x = v14;
  v30.origin.y = v16;
  v30.size.width = v18;
  v30.size.height = v20;
  v34.origin.x = v5;
  v34.origin.y = v7;
  v34.size.width = v9;
  v34.size.height = v11;
  v31 = CGRectUnion(v30, v34);
  v32 = CGRectInset(v31, -24.0, -12.0);
  width = v32.size.width;
  height = v32.size.height;
  [(UIView *)self bounds:v32.origin.x];
  v24 = (v23 - width) * 0.5;
  [(UIView *)self bounds];
  v26 = (v25 - height) * 0.5;
  v27 = v24;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v26;
  result.origin.x = v27;
  return result;
}

- (BOOL)touchInView:(id)view
{
  v4 = [view touchesForView:self];
  anyObject = [v4 anyObject];

  [anyObject locationInView:self];
  v7 = v6;
  v9 = v8;
  v10 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v10 userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self interactionRect];
    v15.x = v7;
    v15.y = v9;
    v12 = CGRectContainsPoint(v16, v15);
  }

  else
  {
    v12 = [(UIView *)self pointInside:0 withEvent:v7, v9];
  }

  v13 = v12;

  return v13;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  v5 = +[UIDevice currentDevice];
  if ([v5 userInterfaceIdiom] != 6)
  {

    goto LABEL_5;
  }

  v6 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self touchInView:eventCopy];

  if (v6)
  {
LABEL_5:
    [(UIView *)self setAlpha:0.5];
    [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self setTouchState:1];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  if ([(_UISmartReplyFeedbackInputDashboardReportConcernView *)self touchState]== 1 && ![(_UISmartReplyFeedbackInputDashboardReportConcernView *)self touchInView:eventCopy])
  {
    [(UIView *)self setAlpha:1.0];
    [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self setTouchState:4];
    v6 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_INFO, "_UISmartReplyFeedbackInputDashboardViewController touch out of bounds", v7, 2u);
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  [(UIView *)self setAlpha:1.0];
  if ([(_UISmartReplyFeedbackInputDashboardReportConcernView *)self touchState]== 1 && [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self touchInView:eventCopy])
  {
    v6 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_INFO, "_UISmartReplyFeedbackInputDashboardViewController IDV triggered", buf, 2u);
    }

    v7 = +[UIKeyboardImpl activeInstance];
    keyboardStateManager = [v7 keyboardStateManager];
    smartReplyFeedbackManager = [keyboardStateManager smartReplyFeedbackManager];
    [smartReplyFeedbackManager reportSmartRepliesConcern];
  }

  else
  {
    v7 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "_UISmartReplyFeedbackInputDashboardViewController IDV NOT triggered", v10, 2u);
    }
  }

  [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self setTouchState:3];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  [(UIView *)self setAlpha:cancelled, event, 1.0];

  [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self setTouchState:4];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = _UISmartReplyFeedbackInputDashboardReportConcernView;
  [(UIView *)&v8 layoutSubviews];
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self interactionRect];
    v5 = [UIShape fixedRectShapeWithRect:"fixedRectShapeWithRect:cornerRadius:cornerCurve:maskedCorners:" cornerRadius:2 cornerCurve:-1 maskedCorners:?];
    v6 = +[UIHoverHighlightEffect effect];
    v7 = [UIHoverStyle styleWithEffect:v6 shape:v5];
    [(UIView *)self setHoverStyle:v7];
  }
}

@end