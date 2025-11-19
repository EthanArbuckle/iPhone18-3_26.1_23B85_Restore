@interface _UISmartReplyFeedbackInputDashboardThumbsUpDownView
- (_UISmartReplyFeedbackInputDashboardThumbsUpDownView)init;
@end

@implementation _UISmartReplyFeedbackInputDashboardThumbsUpDownView

- (_UISmartReplyFeedbackInputDashboardThumbsUpDownView)init
{
  v64[6] = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = _UISmartReplyFeedbackInputDashboardThumbsUpDownView;
  v2 = [(_UISmartReplyFeedbackInputDashboardView *)&v62 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [UIAction actionWithHandler:&__block_literal_global_30_3];
    v4 = [(_UISmartReplyFeedbackInputDashboardView *)v2 makeButtonWithSystemImageNamed:@"hand.thumbsdown" action:v3];
    [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 setThumbsDownButton:v4];

    v5 = [UIAction actionWithHandler:&__block_literal_global_36_3];
    v6 = [(_UISmartReplyFeedbackInputDashboardView *)v2 makeButtonWithSystemImageNamed:@"hand.thumbsup" action:v5];
    [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 setThumbsUpButton:v6];

    v7 = _UILocalizedString(@"_UISmartReplyFeedbackInputDashboardView.shareFeedback", @"Share Feedback button label in the candidate bar for Smart Reply feedback", @"Share Feedback");
    v8 = [(_UISmartReplyFeedbackInputDashboardView *)v2 makeFeedbackLabelWithText:v7];
    [(_UISmartReplyFeedbackInputDashboardView *)v2 setFeedbackLabel:v8];

    v9 = +[UIColor secondaryLabelColor];
    v10 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    [v10 setTextColor:v9];

    v11 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsDownButton];
    [(UIView *)v2 addSubview:v11];

    v12 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    [(UIView *)v2 addSubview:v12];

    v13 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsUpButton];
    [(UIView *)v2 addSubview:v13];

    v14 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsDownButton];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsUpButton];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = +[UIDevice currentDevice];
    LODWORD(v10) = [v17 userInterfaceIdiom] == 6;

    if (v10)
    {
      v18 = 8.0;
    }

    else
    {
      v18 = 0.0;
    }

    v59 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    v58 = [v59 centerYAnchor];
    v57 = [(UIView *)v2 centerYAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v64[0] = v56;
    v55 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    v54 = [v55 centerXAnchor];
    v53 = [(UIView *)v2 centerXAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v64[1] = v52;
    v51 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsUpButton];
    v49 = [v51 trailingAnchor];
    v50 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    v48 = [v50 leadingAnchor];
    v47 = [v49 constraintEqualToAnchor:v48 constant:-v18];
    v64[2] = v47;
    v46 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsUpButton];
    v44 = [v46 centerYAnchor];
    v45 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    v43 = [v45 centerYAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v64[3] = v42;
    v41 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsDownButton];
    v40 = [v41 leadingAnchor];
    v19 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    v20 = [v19 trailingAnchor];
    v21 = [v40 constraintEqualToAnchor:v20 constant:v18];
    v64[4] = v21;
    v22 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsDownButton];
    v23 = [v22 centerYAnchor];
    v24 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    v25 = [v24 centerYAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    v64[5] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:6];
    [v39 activateConstraints:v27];

    v28 = +[UIDevice currentDevice];
    LOBYTE(v27) = [v28 userInterfaceIdiom] == 6;

    if ((v27 & 1) == 0)
    {
      v29 = MEMORY[0x1E69977A0];
      v60 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsUpButton];
      v30 = [v60 heightAnchor];
      v31 = [(UIView *)v2 heightAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];
      v63[0] = v32;
      v33 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsDownButton];
      v34 = [v33 heightAnchor];
      v35 = [(UIView *)v2 heightAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      v63[1] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
      [v29 activateConstraints:v37];
    }

    objc_destroyWeak(&location);
  }

  return v2;
}

@end