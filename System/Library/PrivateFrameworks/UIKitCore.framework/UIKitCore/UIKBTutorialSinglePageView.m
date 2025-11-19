@interface UIKBTutorialSinglePageView
- (UIKBTutorialSinglePageView)initWithImageView:(id)a3;
- (void)configPageView;
@end

@implementation UIKBTutorialSinglePageView

- (UIKBTutorialSinglePageView)initWithImageView:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = UIKBTutorialSinglePageView;
  v6 = [(UIView *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualDisplayView, a3);
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
  v3 = [(UIKBTutorialSinglePageView *)self useAlertStyle];
  v116 = objc_alloc_init(UILayoutGuide);
  [(UIView *)self addLayoutGuide:v116];
  v4 = [(UILayoutGuide *)v116 topAnchor];
  v5 = [(UIView *)self topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v6 setActive:1];

  v7 = [(UILayoutGuide *)v116 heightAnchor];
  v8 = v7;
  if (v3)
  {
    v9 = [v7 constraintEqualToConstant:29.0];
    [v9 setActive:1];

    v10 = [(UIKBTutorialSinglePageView *)self textTitle];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(UIKBTutorialSinglePageView *)self textTitle];
    v12 = [v11 topAnchor];
    v13 = [(UILayoutGuide *)v116 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v14 setActive:1];

    v15 = [(UIKBTutorialSinglePageView *)self textTitle];
    v16 = [v15 leadingAnchor];
    v17 = [(UIView *)self leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v18 setActive:1];

    v19 = [(UIKBTutorialSinglePageView *)self textTitle];
    v20 = [v19 trailingAnchor];
    v21 = [(UIView *)self trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    v23 = [(UIKBTutorialSinglePageView *)self textBody];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = [(UIKBTutorialSinglePageView *)self textBody];
    v25 = [v24 topAnchor];
    v26 = [(UIKBTutorialSinglePageView *)self textTitle];
    v27 = [v26 bottomAnchor];
    v28 = [v25 constraintEqualToAnchor:v27 constant:1.0];
    [v28 setActive:1];

    v29 = [(UIKBTutorialSinglePageView *)self textBody];
    v30 = [v29 leadingAnchor];
    v31 = [(UIKBTutorialSinglePageView *)self textTitle];
    v32 = [v31 leadingAnchor];
    v33 = [v30 constraintEqualToAnchor:v32];
    [v33 setActive:1];

    v34 = [(UIKBTutorialSinglePageView *)self textBody];
    v35 = [v34 trailingAnchor];
    v36 = [(UIKBTutorialSinglePageView *)self textTitle];
    v37 = [v36 trailingAnchor];
    v38 = [v35 constraintEqualToAnchor:v37];
    [v38 setActive:1];

    v39 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

    v40 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    v41 = [v40 topAnchor];
    v42 = [(UIKBTutorialSinglePageView *)self textBody];
    v43 = [v42 bottomAnchor];
    v44 = [v41 constraintEqualToAnchor:v43 constant:20.0];
    [v44 setActive:1];

    v45 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    v46 = [v45 centerXAnchor];
    v47 = [(UIView *)self centerXAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    [v48 setActive:1];

    v49 = objc_alloc_init(UILayoutGuide);
    [(UIView *)self addLayoutGuide:v49];
    v50 = [(UILayoutGuide *)v49 bottomAnchor];
    v51 = [(UIView *)self bottomAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [v52 setActive:1];

    v53 = [(UILayoutGuide *)v49 topAnchor];
    v54 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    v55 = [v54 bottomAnchor];
    v56 = [v53 constraintEqualToAnchor:v55];
    [v56 setActive:1];

    v57 = [(UILayoutGuide *)v49 heightAnchor];
    v58 = [(UILayoutGuide *)v57 constraintEqualToConstant:20.0];
  }

  else
  {
    v49 = [v7 constraintEqualToConstant:20.0];

    LODWORD(v59) = 1132003328;
    [(UILayoutGuide *)v49 setPriority:v59];
    [(UILayoutGuide *)v49 setActive:1];
    v60 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    [v60 setTranslatesAutoresizingMaskIntoConstraints:0];

    v61 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    v62 = [v61 topAnchor];
    v63 = [(UILayoutGuide *)v116 bottomAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];
    [v64 setActive:1];

    v65 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    v66 = [v65 centerXAnchor];
    v67 = [(UIView *)self centerXAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];
    [v68 setActive:1];

    v69 = [(UIKBTutorialSinglePageView *)self textTitle];
    [v69 setTranslatesAutoresizingMaskIntoConstraints:0];

    v70 = [(UIKBTutorialSinglePageView *)self textTitle];
    v71 = [v70 topAnchor];
    v72 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
    v73 = [v72 bottomAnchor];
    v74 = [v71 constraintEqualToAnchor:v73 constant:20.0];
    [v74 setActive:1];

    v75 = [(UIKBTutorialSinglePageView *)self textTitle];
    v76 = [v75 leadingAnchor];
    v77 = [(UIView *)self leadingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];
    [v78 setActive:1];

    v79 = [(UIKBTutorialSinglePageView *)self textTitle];
    v80 = [v79 trailingAnchor];
    v81 = [(UIView *)self trailingAnchor];
    v82 = [v80 constraintEqualToAnchor:v81];
    [v82 setActive:1];

    v83 = [(UIKBTutorialSinglePageView *)self textBody];
    [v83 setTranslatesAutoresizingMaskIntoConstraints:0];

    v84 = [(UIKBTutorialSinglePageView *)self textBody];
    v85 = [v84 leadingAnchor];
    v86 = [(UIKBTutorialSinglePageView *)self textTitle];
    v87 = [v86 leadingAnchor];
    v88 = [v85 constraintEqualToAnchor:v87];
    [v88 setActive:1];

    v89 = [(UIKBTutorialSinglePageView *)self textBody];
    v90 = [v89 trailingAnchor];
    v91 = [(UIKBTutorialSinglePageView *)self textTitle];
    v92 = [v91 trailingAnchor];
    v93 = [v90 constraintEqualToAnchor:v92];
    [v93 setActive:1];

    v94 = [(UIView *)self bottomAnchor];
    v95 = [(UIKBTutorialSinglePageView *)self textBody];
    v96 = [v95 bottomAnchor];
    v97 = 6.0;
    v98 = [v94 constraintGreaterThanOrEqualToAnchor:v96 constant:6.0];
    [v98 setActive:1];

    v99 = [(UIKBTutorialSinglePageView *)self textTitle];
    v100 = [v99 text];
    v101 = [v100 length];

    v102 = [(UIKBTutorialSinglePageView *)self textBody];
    v103 = [v102 topAnchor];
    if (v101)
    {
      v104 = [(UIKBTutorialSinglePageView *)self textTitle];
    }

    else
    {
      v104 = [(UIKBTutorialSinglePageView *)self visualDisplayView];
      v97 = 20.0;
    }

    v105 = [v104 bottomAnchor];
    v106 = [v103 constraintEqualToAnchor:v105 constant:v97];
    [v106 setActive:1];

    v57 = objc_alloc_init(UILayoutGuide);
    [(UIView *)self addLayoutGuide:v57];
    v107 = [(UILayoutGuide *)v57 bottomAnchor];
    v108 = [(UIView *)self bottomAnchor];
    v109 = [v107 constraintEqualToAnchor:v108];
    [v109 setActive:1];

    v110 = [(UILayoutGuide *)v57 topAnchor];
    v111 = [(UIKBTutorialSinglePageView *)self textBody];
    v112 = [v111 firstBaselineAnchor];
    v113 = [v110 constraintEqualToAnchor:v112];
    [v113 setActive:1];

    v114 = [(UILayoutGuide *)v57 heightAnchor];
    v58 = [v114 constraintEqualToConstant:36.0];

    LODWORD(v115) = 1144750080;
    [v58 setPriority:v115];
  }

  [v58 setActive:1];
}

@end