@interface VUIDebugMetricsEventCell
- (VUIDebugMetricsEventCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setEventTypeLabelStr:(id)str;
- (void)setSubhead1LabelStr:(id)str;
- (void)setSubhead2LabelStr:(id)str;
- (void)setSubhead3LabelStr:(id)str;
- (void)setTabName:(id)name;
@end

@implementation VUIDebugMetricsEventCell

- (VUIDebugMetricsEventCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v52.receiver = self;
  v52.super_class = VUIDebugMetricsEventCell;
  v4 = [(VUIDebugMetricsEventCell *)&v52 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v5 setNumberOfLines:1];
    [(VUITextLayout *)v5 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v5 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v5 setTextStyle:3];
    [(VUITextLayout *)v5 setMaximumContentSizeCategory:3];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v5 setColor:blackColor];

    [(VUITextLayout *)v5 setFontWeight:7];
    eventTypeLabelLayout = v4->_eventTypeLabelLayout;
    v4->_eventTypeLabelLayout = v5;
    v51 = v5;

    v8 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v51 existingLabel:0];
    eventTypeLabel = v4->_eventTypeLabel;
    v4->_eventTypeLabel = v8;

    contentView = [(VUIDebugMetricsEventCell *)v4 contentView];
    [contentView addSubview:v4->_eventTypeLabel];

    v11 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v11 setNumberOfLines:1];
    [(VUITextLayout *)v11 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v11 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v11 setTextStyle:17];
    [(VUITextLayout *)v11 setMaximumContentSizeCategory:3];
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v11 setColor:blackColor2];

    subhead1LabelLayout = v4->_subhead1LabelLayout;
    v4->_subhead1LabelLayout = v11;
    v14 = v11;

    v15 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v14 existingLabel:0];
    subhead1Label = v4->_subhead1Label;
    v4->_subhead1Label = v15;

    contentView2 = [(VUIDebugMetricsEventCell *)v4 contentView];
    [contentView2 addSubview:v4->_subhead1Label];

    v18 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v18 setNumberOfLines:1];
    [(VUITextLayout *)v18 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v18 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v18 setTextStyle:17];
    [(VUITextLayout *)v18 setMaximumContentSizeCategory:3];
    blackColor3 = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v18 setColor:blackColor3];

    subhead2LabelLayout = v4->_subhead2LabelLayout;
    v4->_subhead2LabelLayout = v18;
    v21 = v18;

    v22 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v21 existingLabel:0];
    subhead2Label = v4->_subhead2Label;
    v4->_subhead2Label = v22;

    contentView3 = [(VUIDebugMetricsEventCell *)v4 contentView];
    [contentView3 addSubview:v4->_subhead2Label];

    v25 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v25 setNumberOfLines:1];
    [(VUITextLayout *)v25 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v25 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v25 setTextStyle:17];
    [(VUITextLayout *)v25 setMaximumContentSizeCategory:3];
    blackColor4 = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v25 setColor:blackColor4];

    subhead3LabelLayout = v4->_subhead3LabelLayout;
    v4->_subhead3LabelLayout = v25;
    v28 = v25;

    v29 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v21 existingLabel:0];
    subhead3Label = v4->_subhead3Label;
    v4->_subhead3Label = v29;

    contentView4 = [(VUIDebugMetricsEventCell *)v4 contentView];
    [contentView4 addSubview:v4->_subhead3Label];

    v32 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v32 setNumberOfLines:1];
    [(VUITextLayout *)v32 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v32 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v32 setTextStyle:3];
    [(VUITextLayout *)v32 setMaximumContentSizeCategory:3];
    blackColor5 = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v32 setColor:blackColor5];

    tabNameLabelLayout = v4->_tabNameLabelLayout;
    v4->_tabNameLabelLayout = v32;
    v35 = v32;

    v36 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v35 existingLabel:0];
    tabNameLabel = v4->_tabNameLabel;
    v4->_tabNameLabel = v36;

    contentView5 = [(VUIDebugMetricsEventCell *)v4 contentView];
    [contentView5 addSubview:v4->_tabNameLabel];

    v39 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v40 = *MEMORY[0x1E695F058];
    v41 = *(MEMORY[0x1E695F058] + 8);
    v42 = *(MEMORY[0x1E695F058] + 16);
    v43 = *(MEMORY[0x1E695F058] + 24);
    v44 = [v39 initWithFrame:{*MEMORY[0x1E695F058], v41, v42, v43}];
    tabImageView = v4->_tabImageView;
    v4->_tabImageView = v44;

    contentView6 = [(VUIDebugMetricsEventCell *)v4 contentView];
    [contentView6 addSubview:v4->_tabImageView];

    v47 = [[VUISeparatorView alloc] initWithFrame:v40, v41, v42, v43];
    separatorView = v4->_separatorView;
    v4->_separatorView = v47;

    contentView7 = [(VUIDebugMetricsEventCell *)v4 contentView];
    [contentView7 addSubview:v4->_separatorView];
  }

  return v4;
}

- (void)setEventTypeLabelStr:(id)str
{
  v4 = [str copy];
  eventTypeLabelStr = self->_eventTypeLabelStr;
  self->_eventTypeLabelStr = v4;

  [(VUILabel *)self->_eventTypeLabel setText:self->_eventTypeLabelStr];

  [(VUIDebugMetricsEventCell *)self setNeedsLayout];
}

- (void)setSubhead1LabelStr:(id)str
{
  v4 = [str copy];
  subhead1LabelStr = self->_subhead1LabelStr;
  self->_subhead1LabelStr = v4;

  [(VUILabel *)self->_subhead1Label setText:self->_subhead1LabelStr];

  [(VUIDebugMetricsEventCell *)self setNeedsLayout];
}

- (void)setSubhead2LabelStr:(id)str
{
  v4 = [str copy];
  subhead2LabelStr = self->_subhead2LabelStr;
  self->_subhead2LabelStr = v4;

  [(VUILabel *)self->_subhead2Label setText:self->_subhead2LabelStr];

  [(VUIDebugMetricsEventCell *)self setNeedsLayout];
}

- (void)setSubhead3LabelStr:(id)str
{
  v4 = [str copy];
  subhead3LabelStr = self->_subhead3LabelStr;
  self->_subhead3LabelStr = v4;

  [(VUILabel *)self->_subhead3Label setText:self->_subhead3LabelStr];

  [(VUIDebugMetricsEventCell *)self setNeedsLayout];
}

- (void)setTabName:(id)name
{
  v4 = [name copy];
  tabName = self->_tabName;
  self->_tabName = v4;

  [(VUILabel *)self->_tabNameLabel setText:self->_tabName];

  [(VUIDebugMetricsEventCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(VUIDebugMetricsEventCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [MEMORY[0x1E69DD2E8] vui_padding];
  v12 = v11;
  v14 = v13;
  v70.origin.x = v4;
  v70.origin.y = v6;
  v70.size.width = v8;
  v70.size.height = v10;
  Width = CGRectGetWidth(v70);
  v16 = MEMORY[0x1E695F058];
  v64 = v14;
  v17 = Width - v12 - v14;
  v18 = *(MEMORY[0x1E695F058] + 8);
  v71.origin.x = v4;
  v71.origin.y = v6;
  v71.size.width = v8;
  v71.size.height = v10;
  [(VUILabel *)self->_eventTypeLabel sizeThatFits:v17, CGRectGetHeight(v71)];
  v55 = v20;
  v56 = v19;
  v72.origin.x = v4;
  v72.origin.y = v6;
  v72.size.width = v8;
  v72.size.height = v10;
  [(VUILabel *)self->_subhead1Label sizeThatFits:v17, CGRectGetHeight(v72)];
  v22 = v21;
  v54 = v23;
  v73.origin.x = v4;
  v73.origin.y = v6;
  v73.size.width = v8;
  v73.size.height = v10;
  [(VUILabel *)self->_subhead2Label sizeThatFits:v17, CGRectGetHeight(v73)];
  v60 = v25;
  recta = v24;
  v74.origin.x = v4;
  v74.origin.y = v6;
  v74.size.width = v8;
  v74.size.height = v10;
  [(VUILabel *)self->_subhead3Label sizeThatFits:v17, CGRectGetHeight(v74)];
  v57 = v27;
  v58 = v26;
  v65 = v6;
  v66 = v4;
  v75.origin.x = v4;
  v75.origin.y = v6;
  v67 = v10;
  v68 = v8;
  v75.size.width = v8;
  v75.size.height = v10;
  Height = CGRectGetHeight(v75);
  v76.origin.x = v12;
  v76.origin.y = v18;
  v76.size.width = v56;
  v76.size.height = v55;
  v29 = CGRectGetHeight(v76);
  v77.origin.x = v12;
  v77.origin.y = v18;
  v77.size.width = v22;
  v77.size.height = v54;
  v30 = v29 + CGRectGetHeight(v77);
  v78.origin.x = v12;
  v78.origin.y = v18;
  v78.size.width = v22;
  v78.size.height = v54;
  v31 = (Height - (v30 + CGRectGetHeight(v78))) * 0.5;
  [(VUILabel *)self->_eventTypeLabel setFrame:v12, v31, v56, v55];
  v79.origin.x = v12;
  v79.origin.y = v31;
  v79.size.width = v56;
  v79.size.height = v55;
  v32 = v31 + CGRectGetHeight(v79) + 5.0;
  [(VUILabel *)self->_subhead1Label setFrame:v12, v32, v22, v54];
  v80.origin.x = v12;
  v80.origin.y = v18;
  v80.size.width = recta;
  v80.size.height = v60;
  v33 = v32 + CGRectGetHeight(v80);
  [(VUILabel *)self->_subhead2Label setFrame:v12, v33, recta, v60];
  v81.origin.x = v12;
  rect = v18;
  v81.origin.y = v18;
  v81.size.width = v58;
  v81.size.height = v57;
  v61 = v12;
  [(VUILabel *)self->_subhead3Label setFrame:v12, v33 + CGRectGetHeight(v81), v58, v57];
  v34 = [(NSString *)self->_tabName length];
  v35 = *v16;
  if (v34)
  {
    v37 = v65;
    v36 = v66;
    v82.origin.x = v66;
    v82.origin.y = v65;
    v82.size.width = v8;
    v82.size.height = v67;
    [(VUILabel *)self->_tabNameLabel sizeThatFits:v17, CGRectGetHeight(v82)];
    v39 = v38;
    v59 = v38;
    v41 = v40;
    v83.origin.x = v66;
    v83.origin.y = v65;
    v83.size.width = v8;
    v83.size.height = v67;
    v42 = CGRectGetWidth(v83) - v64;
    v84.origin.x = v35;
    v84.origin.y = rect;
    v84.size.width = v39;
    v84.size.height = v41;
    v43 = v42 - CGRectGetWidth(v84);
    v85.origin.x = v66;
    v85.origin.y = v65;
    v85.size.width = v8;
    v85.size.height = v67;
    v44 = CGRectGetHeight(v85);
    v86.origin.x = v43;
    v86.origin.y = rect;
    v86.size.width = v59;
    v86.size.height = v41;
    [(VUILabel *)self->_tabNameLabel setFrame:v43, (v44 - CGRectGetHeight(v86)) * 0.5, v59, v41];
  }

  else
  {
    [(UIImageView *)self->_tabImageView sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v46 = v45;
    v48 = v47;
    v37 = v65;
    v36 = v66;
    v87.origin.x = v66;
    v87.origin.y = v65;
    v87.size.width = v8;
    v87.size.height = v67;
    v49 = CGRectGetHeight(v87);
    v88.origin.x = v35;
    v88.origin.y = rect;
    v88.size.width = v46;
    v88.size.height = v48;
    v50 = (v49 - CGRectGetHeight(v88)) * 0.5;
    v89.origin.x = v66;
    v89.origin.y = v65;
    v89.size.width = v8;
    v89.size.height = v67;
    v51 = CGRectGetWidth(v89) - v64;
    v90.origin.x = v35;
    v90.origin.y = v50;
    v90.size.width = v46;
    v90.size.height = v48;
    [(UIImageView *)self->_tabImageView setFrame:v51 - CGRectGetWidth(v90), v50, v46, v48];
  }

  [(UIImageView *)self->_tabImageView setHidden:[(NSString *)self->_tabName length]!= 0];
  [(VUILabel *)self->_tabNameLabel setHidden:[(NSString *)self->_tabName length]== 0];
  separatorView = self->_separatorView;
  v91.origin.x = v36;
  v91.origin.y = v37;
  v91.size.height = v67;
  v91.size.width = v68;
  v53 = CGRectGetHeight(v91) + -1.0;

  [(VUISeparatorView *)separatorView setFrame:v61, v53, v17, 1.0];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = VUIDebugMetricsEventCell;
  [(VUIDebugMetricsEventCell *)&v3 prepareForReuse];
  [(VUILabel *)self->_eventTypeLabel setText:0];
  [(VUILabel *)self->_subhead1Label setText:0];
  [(VUILabel *)self->_subhead2Label setText:0];
  [(VUILabel *)self->_subhead3Label setText:0];
  [(UIImageView *)self->_tabImageView setImage:0];
}

@end