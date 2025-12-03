@interface SBModalWidgetIntroductionBackgroundDescriptionView
- (SBModalWidgetIntroductionBackgroundDescriptionView)initWithFrame:(CGRect)frame withOwner:(id)owner;
- (UIViewController)owner;
@end

@implementation SBModalWidgetIntroductionBackgroundDescriptionView

- (SBModalWidgetIntroductionBackgroundDescriptionView)initWithFrame:(CGRect)frame withOwner:(id)owner
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v83[4] = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  v80.receiver = self;
  v80.super_class = SBModalWidgetIntroductionBackgroundDescriptionView;
  height = [(SBModalWidgetIntroductionBackgroundDescriptionView *)&v80 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_owner, ownerCopy);
    v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = v11->_backgroundView;
    v11->_backgroundView = v12;

    [(UIView *)v11->_backgroundView _setContinuousCornerRadius:40.0];
    [(UIView *)v11->_backgroundView setClipsToBounds:1];
    v14 = v11->_backgroundView;
    [MEMORY[0x1E69DC888] systemBackgroundColor];
    v15 = v79 = ownerCopy;
    [(UIView *)v14 setBackgroundColor:v15];

    [(UIView *)v11->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBModalWidgetIntroductionBackgroundDescriptionView *)v11 addSubview:v11->_backgroundView];
    v16 = SBHPinViewWithinView(v11, v11->_backgroundView);
    v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
    labelContainerView = v11->_labelContainerView;
    v11->_labelContainerView = v17;

    v19 = v11->_labelContainerView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v19 setBackgroundColor:clearColor];

    [(UIView *)v11->_labelContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBModalWidgetIntroductionBackgroundDescriptionView *)v11 addSubview:v11->_labelContainerView];
    v64 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIView *)v11->_labelContainerView leadingAnchor];
    leadingAnchor2 = [(SBModalWidgetIntroductionBackgroundDescriptionView *)v11 leadingAnchor];
    v70 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v83[0] = v70;
    trailingAnchor = [(UIView *)v11->_labelContainerView trailingAnchor];
    trailingAnchor2 = [(SBModalWidgetIntroductionBackgroundDescriptionView *)v11 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v83[1] = v21;
    topAnchor = [(UIView *)v11->_labelContainerView topAnchor];
    topAnchor2 = [(SBModalWidgetIntroductionBackgroundDescriptionView *)v11 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v83[2] = v24;
    bottomAnchor = [(UIView *)v11->_labelContainerView bottomAnchor];
    bottomAnchor2 = [(SBModalWidgetIntroductionBackgroundDescriptionView *)v11 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v83[3] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
    [v64 activateConstraints:v28];

    v29 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v11->_titleLabel;
    v11->_titleLabel = v29;

    v31 = v11->_titleLabel;
    v32 = SBHBundle();
    v33 = [v32 localizedStringForKey:@"MODAL_WIDGET_DISCOVERABILITY_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [(UILabel *)v31 setText:v33];

    v34 = v11->_titleLabel;
    v35 = [MEMORY[0x1E69DB878] systemFontOfSize:30.0 weight:*MEMORY[0x1E69DB968]];
    [(UILabel *)v34 setFont:v35];

    v36 = v11->_titleLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v36 setTextColor:labelColor];

    [(UILabel *)v11->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v11->_titleLabel setMinimumScaleFactor:0.6];
    [(UILabel *)v11->_titleLabel setNumberOfLines:2];
    [(UILabel *)v11->_titleLabel setTextAlignment:1];
    [(UILabel *)v11->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v11->_labelContainerView addSubview:v11->_titleLabel];
    v68 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UILabel *)v11->_titleLabel centerXAnchor];
    centerXAnchor2 = [(UIView *)v11->_labelContainerView centerXAnchor];
    v71 = [centerXAnchor constraintGreaterThanOrEqualToAnchor:centerXAnchor2];
    v82[0] = v71;
    topAnchor3 = [(UILabel *)v11->_titleLabel topAnchor];
    topAnchor4 = [(UIView *)v11->_labelContainerView topAnchor];
    v39 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:100.0];
    v82[1] = v39;
    widthAnchor = [(UILabel *)v11->_titleLabel widthAnchor];
    v41 = [widthAnchor constraintEqualToConstant:200.0];
    v82[2] = v41;
    heightAnchor = [(UILabel *)v11->_titleLabel heightAnchor];
    v43 = [heightAnchor constraintEqualToConstant:50.0];
    v82[3] = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
    [v68 activateConstraints:v44];

    v45 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    introductionTextLabel = v11->_introductionTextLabel;
    v11->_introductionTextLabel = v45;

    v47 = v11->_introductionTextLabel;
    v48 = SBHBundle();
    v49 = [v48 localizedStringForKey:@"MODAL_WIDGET_DISCOVERABILITY_DESCRIPTION" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [(UILabel *)v47 setText:v49];

    v50 = v11->_introductionTextLabel;
    v51 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB978]];
    [(UILabel *)v50 setFont:v51];

    v52 = v11->_introductionTextLabel;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v52 setTextColor:labelColor2];

    [(UILabel *)v11->_introductionTextLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v11->_introductionTextLabel setMinimumScaleFactor:0.6];
    [(UILabel *)v11->_introductionTextLabel setNumberOfLines:2];
    [(UILabel *)v11->_introductionTextLabel setTextAlignment:1];
    [(UILabel *)v11->_introductionTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v11->_labelContainerView addSubview:v11->_introductionTextLabel];
    v69 = MEMORY[0x1E696ACD8];
    leadingAnchor3 = [(UILabel *)v11->_introductionTextLabel leadingAnchor];
    leadingAnchor4 = [(UIView *)v11->_labelContainerView leadingAnchor];
    v72 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:30.0];
    v81[0] = v72;
    trailingAnchor3 = [(UILabel *)v11->_introductionTextLabel trailingAnchor];
    trailingAnchor4 = [(UIView *)v11->_labelContainerView trailingAnchor];
    v56 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-30.0];
    v81[1] = v56;
    topAnchor5 = [(UILabel *)v11->_introductionTextLabel topAnchor];
    bottomAnchor3 = [(UILabel *)v11->_titleLabel bottomAnchor];
    v59 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:15.0];
    v81[2] = v59;
    heightAnchor2 = [(UILabel *)v11->_introductionTextLabel heightAnchor];
    v61 = [heightAnchor2 constraintEqualToConstant:60.0];
    v81[3] = v61;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:4];
    [v69 activateConstraints:v62];

    ownerCopy = v79;
  }

  return v11;
}

- (UIViewController)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end