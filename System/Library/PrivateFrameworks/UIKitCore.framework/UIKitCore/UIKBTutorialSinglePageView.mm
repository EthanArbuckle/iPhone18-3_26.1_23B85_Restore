@interface UIKBTutorialSinglePageView
- (UIKBTutorialSinglePageView)initWithImageView:(id)view;
- (void)configPageView;
@end

@implementation UIKBTutorialSinglePageView

- (UIKBTutorialSinglePageView)initWithImageView:(id)view
{
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = UIKBTutorialSinglePageView;
  v6 = [(UIView *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualDisplayView, view);
    [(UIView *)v7 addSubview:v7->_visualDisplayView];
    v8 = objc_alloc_init(UILabel);
    textTitle = v7->_textTitle;
    v7->_textTitle = v8;

    [(UILabel *)v7->_textTitle setTextAlignment:1];
    [(UIView *)v7 addSubview:v7->_textTitle];
    v10 = objc_alloc_init(UILabel);
    textBody = v7->_textBody;
    v7->_textBody = v10;

    [(UILabel *)v7->_textBody setTextAlignment:1];
    [(UIView *)v7 addSubview:v7->_textBody];
    v12 = v7;
  }

  return v7;
}

- (void)configPageView
{
  useAlertStyle = [(UIKBTutorialSinglePageView *)self useAlertStyle];
  v116 = objc_alloc_init(UILayoutGuide);
  [(UIView *)self addLayoutGuide:v116];
  topAnchor = [(UILayoutGuide *)v116 topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v6 setActive:1];

  heightAnchor = [(UILayoutGuide *)v116 heightAnchor];
  v8 = heightAnchor;
  if (useAlertStyle)
  {
    v9 = [heightAnchor constraintEqualToConstant:29.0];
    [v9 setActive:1];

    textTitle = [(UIKBTutorialSinglePageView *)self textTitle];
    [textTitle setTranslatesAutoresizingMaskIntoConstraints:0];

    textTitle2 = [(UIKBTutorialSinglePageView *)self textTitle];
    topAnchor3 = [textTitle2 topAnchor];
    bottomAnchor = [(UILayoutGuide *)v116 bottomAnchor];
    v14 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    [v14 setActive:1];

    textTitle3 = [(UIKBTutorialSinglePageView *)self textTitle];
    leadingAnchor = [textTitle3 leadingAnchor];
    leadingAnchor2 = [(UIView *)self leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v18 setActive:1];

    textTitle4 = [(UIKBTutorialSinglePageView *)self textTitle];
    trailingAnchor = [textTitle4 trailingAnchor];
    trailingAnchor2 = [(UIView *)self trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v22 setActive:1];

    textBody = [(UIKBTutorialSinglePageView *)self textBody];
    [textBody setTranslatesAutoresizingMaskIntoConstraints:0];

    textBody2 = [(UIKBTutorialSinglePageView *)self textBody];
    topAnchor4 = [textBody2 topAnchor];
    textTitle5 = [(UIKBTutorialSinglePageView *)self textTitle];
    bottomAnchor2 = [textTitle5 bottomAnchor];
    v28 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:1.0];
    [v28 setActive:1];

    textBody3 = [(UIKBTutorialSinglePageView *)self textBody];
    leadingAnchor3 = [textBody3 leadingAnchor];
    textTitle6 = [(UIKBTutorialSinglePageView *)self textTitle];
    leadingAnchor4 = [textTitle6 leadingAnchor];
    v33 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v33 setActive:1];

    textBody4 = [(UIKBTutorialSinglePageView *)self textBody];
    trailingAnchor3 = [textBody4 trailingAnchor];
    textTitle7 = [(UIKBTutorialSinglePageView *)self textTitle];
    trailingAnchor4 = [textTitle7 trailingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v38 setActive:1];

    visualDisplayView = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    [visualDisplayView setTranslatesAutoresizingMaskIntoConstraints:0];

    visualDisplayView2 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    topAnchor5 = [visualDisplayView2 topAnchor];
    textBody5 = [(UIKBTutorialSinglePageView *)self textBody];
    bottomAnchor3 = [textBody5 bottomAnchor];
    v44 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:20.0];
    [v44 setActive:1];

    visualDisplayView3 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    centerXAnchor = [visualDisplayView3 centerXAnchor];
    centerXAnchor2 = [(UIView *)self centerXAnchor];
    v48 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v48 setActive:1];

    v49 = objc_alloc_init(UILayoutGuide);
    [(UIView *)self addLayoutGuide:v49];
    bottomAnchor4 = [(UILayoutGuide *)v49 bottomAnchor];
    bottomAnchor5 = [(UIView *)self bottomAnchor];
    v52 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [v52 setActive:1];

    topAnchor6 = [(UILayoutGuide *)v49 topAnchor];
    visualDisplayView4 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    bottomAnchor6 = [visualDisplayView4 bottomAnchor];
    v56 = [topAnchor6 constraintEqualToAnchor:bottomAnchor6];
    [v56 setActive:1];

    heightAnchor2 = [(UILayoutGuide *)v49 heightAnchor];
    v58 = [(UILayoutGuide *)heightAnchor2 constraintEqualToConstant:20.0];
  }

  else
  {
    v49 = [heightAnchor constraintEqualToConstant:20.0];

    LODWORD(v59) = 1132003328;
    [(UILayoutGuide *)v49 setPriority:v59];
    [(UILayoutGuide *)v49 setActive:1];
    visualDisplayView5 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    [visualDisplayView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    visualDisplayView6 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    topAnchor7 = [visualDisplayView6 topAnchor];
    bottomAnchor7 = [(UILayoutGuide *)v116 bottomAnchor];
    v64 = [topAnchor7 constraintEqualToAnchor:bottomAnchor7];
    [v64 setActive:1];

    visualDisplayView7 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    centerXAnchor3 = [visualDisplayView7 centerXAnchor];
    centerXAnchor4 = [(UIView *)self centerXAnchor];
    v68 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v68 setActive:1];

    textTitle8 = [(UIKBTutorialSinglePageView *)self textTitle];
    [textTitle8 setTranslatesAutoresizingMaskIntoConstraints:0];

    textTitle9 = [(UIKBTutorialSinglePageView *)self textTitle];
    topAnchor8 = [textTitle9 topAnchor];
    visualDisplayView8 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    bottomAnchor8 = [visualDisplayView8 bottomAnchor];
    v74 = [topAnchor8 constraintEqualToAnchor:bottomAnchor8 constant:20.0];
    [v74 setActive:1];

    textTitle10 = [(UIKBTutorialSinglePageView *)self textTitle];
    leadingAnchor5 = [textTitle10 leadingAnchor];
    leadingAnchor6 = [(UIView *)self leadingAnchor];
    v78 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v78 setActive:1];

    textTitle11 = [(UIKBTutorialSinglePageView *)self textTitle];
    trailingAnchor5 = [textTitle11 trailingAnchor];
    trailingAnchor6 = [(UIView *)self trailingAnchor];
    v82 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v82 setActive:1];

    textBody6 = [(UIKBTutorialSinglePageView *)self textBody];
    [textBody6 setTranslatesAutoresizingMaskIntoConstraints:0];

    textBody7 = [(UIKBTutorialSinglePageView *)self textBody];
    leadingAnchor7 = [textBody7 leadingAnchor];
    textTitle12 = [(UIKBTutorialSinglePageView *)self textTitle];
    leadingAnchor8 = [textTitle12 leadingAnchor];
    v88 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    [v88 setActive:1];

    textBody8 = [(UIKBTutorialSinglePageView *)self textBody];
    trailingAnchor7 = [textBody8 trailingAnchor];
    textTitle13 = [(UIKBTutorialSinglePageView *)self textTitle];
    trailingAnchor8 = [textTitle13 trailingAnchor];
    v93 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    [v93 setActive:1];

    bottomAnchor9 = [(UIView *)self bottomAnchor];
    textBody9 = [(UIKBTutorialSinglePageView *)self textBody];
    bottomAnchor10 = [textBody9 bottomAnchor];
    v97 = 6.0;
    v98 = [bottomAnchor9 constraintGreaterThanOrEqualToAnchor:bottomAnchor10 constant:6.0];
    [v98 setActive:1];

    textTitle14 = [(UIKBTutorialSinglePageView *)self textTitle];
    text = [textTitle14 text];
    v101 = [text length];

    textBody10 = [(UIKBTutorialSinglePageView *)self textBody];
    topAnchor9 = [textBody10 topAnchor];
    if (v101)
    {
      textTitle15 = [(UIKBTutorialSinglePageView *)self textTitle];
    }

    else
    {
      textTitle15 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
      v97 = 20.0;
    }

    bottomAnchor11 = [textTitle15 bottomAnchor];
    v106 = [topAnchor9 constraintEqualToAnchor:bottomAnchor11 constant:v97];
    [v106 setActive:1];

    heightAnchor2 = objc_alloc_init(UILayoutGuide);
    [(UIView *)self addLayoutGuide:heightAnchor2];
    bottomAnchor12 = [(UILayoutGuide *)heightAnchor2 bottomAnchor];
    bottomAnchor13 = [(UIView *)self bottomAnchor];
    v109 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13];
    [v109 setActive:1];

    topAnchor10 = [(UILayoutGuide *)heightAnchor2 topAnchor];
    textBody11 = [(UIKBTutorialSinglePageView *)self textBody];
    firstBaselineAnchor = [textBody11 firstBaselineAnchor];
    v113 = [topAnchor10 constraintEqualToAnchor:firstBaselineAnchor];
    [v113 setActive:1];

    v57HeightAnchor = [(UILayoutGuide *)heightAnchor2 heightAnchor];
    v58 = [v57HeightAnchor constraintEqualToConstant:36.0];

    LODWORD(v115) = 1144750080;
    [v58 setPriority:v115];
  }

  [v58 setActive:1];
}

@end