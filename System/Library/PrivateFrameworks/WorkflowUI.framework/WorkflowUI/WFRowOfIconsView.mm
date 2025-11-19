@interface WFRowOfIconsView
- (CGSize)intrinsicContentSize;
- (WFRowOfIconsView)initWithMaxNumberOfIcons:(unint64_t)a3 height:(double)a4;
- (void)rebuildSubviewsForItems:(id)a3;
@end

@implementation WFRowOfIconsView

- (void)rebuildSubviewsForItems:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [(WFRowOfIconsView *)self iconViews];
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        v11 = [(WFRowOfIconsView *)self stackView];
        [v11 removeArrangedSubview:v10];

        [v10 removeFromSuperview];
      }

      v7 = [v5 countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v7);
  }

  v12 = [(WFRowOfIconsView *)self iconViews];
  [v12 removeAllObjects];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = [v4 count];
  v14 = [(WFRowOfIconsView *)self maxNumberOfIcons];
  if (v13 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v31 = v4;
  v16 = [v4 subarrayWithRange:{0, v15}];
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      v20 = 0;
      do
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * v20);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = MEMORY[0x277D7D520];
          v23 = v21;
          v24 = [[v22 alloc] initWithIcon:v23 size:{29.0, 29.0}];
LABEL_20:
          v26 = v24;

          [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
          v27 = [(WFRowOfIconsView *)self stackView];
          [v27 addArrangedSubview:v26];

          v28 = [(WFRowOfIconsView *)self iconViews];
          [v28 addObject:v26];
LABEL_21:

          goto LABEL_22;
        }

        if ([v21 conformsToProtocol:&unk_288451BC8])
        {
          v25 = getHUTriggerIconViewClass_15163;
          v23 = v21;
          v24 = [objc_alloc(v25()) initWithIconDescriptor:v23];
          goto LABEL_20;
        }

        v26 = getWFTriggersLogObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          *buf = 136315650;
          v41 = "[WFRowOfIconsView rebuildSubviewsForItems:]";
          v42 = 2112;
          v43 = v29;
          v44 = 2112;
          v45 = v21;
          v28 = v29;
          _os_log_impl(&dword_274719000, v26, OS_LOG_TYPE_ERROR, "%s Unexpected item class (%@): %@", buf, 0x20u);
          goto LABEL_21;
        }

LABEL_22:

        ++v20;
      }

      while (v18 != v20);
      v30 = [v16 countByEnumeratingWithState:&v32 objects:v46 count:16];
      v18 = v30;
    }

    while (v30);
  }

  [(WFRowOfIconsView *)self setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  [(WFRowOfIconsView *)self height];
  v4 = v3;
  v5 = v2;
  result.height = v4;
  result.width = v5;
  return result;
}

- (WFRowOfIconsView)initWithMaxNumberOfIcons:(unint64_t)a3 height:(double)a4
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = WFRowOfIconsView;
  v6 = [(WFRowOfIconsView *)&v28 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_height = a4;
    v6->_maxNumberOfIcons = a3;
    v8 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = v7->_stackView;
    v7->_stackView = v8;

    [(UIStackView *)v7->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v7->_stackView setAxis:0];
    [(UIStackView *)v7->_stackView setAlignment:3];
    [(UIStackView *)v7->_stackView setDistribution:3];
    [(UIStackView *)v7->_stackView setSpacing:0.0];
    [(WFRowOfIconsView *)v7 addSubview:v7->_stackView];
    v23 = MEMORY[0x277CCAAD0];
    v27 = [(UIStackView *)v7->_stackView topAnchor];
    v26 = [(WFRowOfIconsView *)v7 topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v29[0] = v25;
    v24 = [(UIStackView *)v7->_stackView bottomAnchor];
    v10 = [(WFRowOfIconsView *)v7 bottomAnchor];
    v11 = [v24 constraintEqualToAnchor:v10];
    v29[1] = v11;
    v12 = [(UIStackView *)v7->_stackView leadingAnchor];
    v13 = [(WFRowOfIconsView *)v7 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v29[2] = v14;
    v15 = [(UIStackView *)v7->_stackView trailingAnchor];
    v16 = [(WFRowOfIconsView *)v7 trailingAnchor];
    v17 = [v15 constraintLessThanOrEqualToAnchor:v16];
    v29[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v23 activateConstraints:v18];

    v19 = objc_opt_new();
    iconViews = v7->_iconViews;
    v7->_iconViews = v19;

    v21 = v7;
  }

  return v7;
}

@end