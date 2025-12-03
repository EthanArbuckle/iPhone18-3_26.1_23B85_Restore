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
    feedbackLabel = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    [feedbackLabel setTextColor:v9];

    thumbsDownButton = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsDownButton];
    [(UIView *)v2 addSubview:thumbsDownButton];

    feedbackLabel2 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    [(UIView *)v2 addSubview:feedbackLabel2];

    thumbsUpButton = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsUpButton];
    [(UIView *)v2 addSubview:thumbsUpButton];

    thumbsDownButton2 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsDownButton];
    [thumbsDownButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

    feedbackLabel3 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    [feedbackLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    thumbsUpButton2 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsUpButton];
    [thumbsUpButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = +[UIDevice currentDevice];
    LODWORD(feedbackLabel) = [v17 userInterfaceIdiom] == 6;

    if (feedbackLabel)
    {
      v18 = 8.0;
    }

    else
    {
      v18 = 0.0;
    }

    feedbackLabel4 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    centerYAnchor = [feedbackLabel4 centerYAnchor];
    centerYAnchor2 = [(UIView *)v2 centerYAnchor];
    v56 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v64[0] = v56;
    feedbackLabel5 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    centerXAnchor = [feedbackLabel5 centerXAnchor];
    centerXAnchor2 = [(UIView *)v2 centerXAnchor];
    v52 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v64[1] = v52;
    thumbsUpButton3 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsUpButton];
    trailingAnchor = [thumbsUpButton3 trailingAnchor];
    feedbackLabel6 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    leadingAnchor = [feedbackLabel6 leadingAnchor];
    v47 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-v18];
    v64[2] = v47;
    thumbsUpButton4 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsUpButton];
    centerYAnchor3 = [thumbsUpButton4 centerYAnchor];
    feedbackLabel7 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    centerYAnchor4 = [feedbackLabel7 centerYAnchor];
    v42 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v64[3] = v42;
    thumbsDownButton3 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsDownButton];
    leadingAnchor2 = [thumbsDownButton3 leadingAnchor];
    feedbackLabel8 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    trailingAnchor2 = [feedbackLabel8 trailingAnchor];
    v21 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor2 constant:v18];
    v64[4] = v21;
    thumbsDownButton4 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsDownButton];
    centerYAnchor5 = [thumbsDownButton4 centerYAnchor];
    feedbackLabel9 = [(_UISmartReplyFeedbackInputDashboardView *)v2 feedbackLabel];
    centerYAnchor6 = [feedbackLabel9 centerYAnchor];
    v26 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v64[5] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:6];
    [v39 activateConstraints:v27];

    v28 = +[UIDevice currentDevice];
    LOBYTE(v27) = [v28 userInterfaceIdiom] == 6;

    if ((v27 & 1) == 0)
    {
      v29 = MEMORY[0x1E69977A0];
      thumbsUpButton5 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsUpButton];
      heightAnchor = [thumbsUpButton5 heightAnchor];
      heightAnchor2 = [(UIView *)v2 heightAnchor];
      v32 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      v63[0] = v32;
      thumbsDownButton5 = [(_UISmartReplyFeedbackInputDashboardThumbsUpDownView *)v2 thumbsDownButton];
      heightAnchor3 = [thumbsDownButton5 heightAnchor];
      heightAnchor4 = [(UIView *)v2 heightAnchor];
      v36 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
      v63[1] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
      [v29 activateConstraints:v37];
    }

    objc_destroyWeak(&location);
  }

  return v2;
}

@end