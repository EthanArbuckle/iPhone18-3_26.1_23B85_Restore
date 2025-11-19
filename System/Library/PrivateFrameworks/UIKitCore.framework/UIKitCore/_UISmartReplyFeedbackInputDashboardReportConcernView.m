@interface _UISmartReplyFeedbackInputDashboardReportConcernView
- (BOOL)touchInView:(id)a3;
- (CGRect)interactionRect;
- (_UISmartReplyFeedbackInputDashboardReportConcernView)init;
- (void)layoutSubviews;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

    v7 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    v8 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconView];
    [v7 addSubview:v8];

    v9 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    v10 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    [v9 addSubview:v10];

    v11 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v40 = MEMORY[0x1E69977A0];
    v51 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconView];
    v49 = [v51 leadingAnchor];
    v50 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    v48 = [v50 leadingAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v55[0] = v47;
    v46 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconView];
    v44 = [v46 centerYAnchor];
    v45 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    v43 = [v45 centerYAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v55[1] = v42;
    v41 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    v38 = [v41 leadingAnchor];
    v39 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconView];
    v37 = [v39 trailingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:5.0];
    v55[2] = v36;
    v35 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    v34 = [v35 trailingAnchor];
    v13 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    v14 = [v13 trailingAnchor];
    v15 = [v34 constraintEqualToAnchor:v14];
    v55[3] = v15;
    v16 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    v17 = [v16 centerYAnchor];
    v18 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    v19 = [v18 centerYAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    v55[4] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:5];
    [v40 activateConstraints:v21];

    v22 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    [(UIView *)v2 addSubview:v22];

    v23 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v52 = MEMORY[0x1E69977A0];
    v24 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    v25 = [v24 centerXAnchor];
    v26 = [(UIView *)v2 centerXAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v54[0] = v27;
    v28 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)v2 feedbackIconAndLabelView];
    v29 = [v28 centerYAnchor];
    v30 = [(UIView *)v2 centerYAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v54[1] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    [v52 activateConstraints:v32];
  }

  return v2;
}

- (CGRect)interactionRect
{
  v3 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self feedbackIconView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(_UISmartReplyFeedbackInputDashboardView *)self feedbackLabel];
  [v12 frame];
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

- (BOOL)touchInView:(id)a3
{
  v4 = [a3 touchesForView:self];
  v5 = [v4 anyObject];

  [v5 locationInView:self];
  v7 = v6;
  v9 = v8;
  v10 = +[UIDevice currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 6)
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v7 = a4;
  v5 = +[UIDevice currentDevice];
  if ([v5 userInterfaceIdiom] != 6)
  {

    goto LABEL_5;
  }

  v6 = [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self touchInView:v7];

  if (v6)
  {
LABEL_5:
    [(UIView *)self setAlpha:0.5];
    [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self setTouchState:1];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  if ([(_UISmartReplyFeedbackInputDashboardReportConcernView *)self touchState]== 1 && ![(_UISmartReplyFeedbackInputDashboardReportConcernView *)self touchInView:v5])
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

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  [(UIView *)self setAlpha:1.0];
  if ([(_UISmartReplyFeedbackInputDashboardReportConcernView *)self touchState]== 1 && [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self touchInView:v5])
  {
    v6 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_INFO, "_UISmartReplyFeedbackInputDashboardViewController IDV triggered", buf, 2u);
    }

    v7 = +[UIKeyboardImpl activeInstance];
    v8 = [v7 keyboardStateManager];
    v9 = [v8 smartReplyFeedbackManager];
    [v9 reportSmartRepliesConcern];
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

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(UIView *)self setAlpha:a3, a4, 1.0];

  [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self setTouchState:4];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = _UISmartReplyFeedbackInputDashboardReportConcernView;
  [(UIView *)&v8 layoutSubviews];
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    [(_UISmartReplyFeedbackInputDashboardReportConcernView *)self interactionRect];
    v5 = [UIShape fixedRectShapeWithRect:"fixedRectShapeWithRect:cornerRadius:cornerCurve:maskedCorners:" cornerRadius:2 cornerCurve:-1 maskedCorners:?];
    v6 = +[UIHoverHighlightEffect effect];
    v7 = [UIHoverStyle styleWithEffect:v6 shape:v5];
    [(UIView *)self setHoverStyle:v7];
  }
}

@end