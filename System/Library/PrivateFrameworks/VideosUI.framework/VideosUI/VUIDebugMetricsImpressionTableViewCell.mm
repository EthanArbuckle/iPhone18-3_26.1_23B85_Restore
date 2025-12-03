@interface VUIDebugMetricsImpressionTableViewCell
- (NSString)idStr;
- (NSString)idType;
- (NSString)impressionId;
- (NSString)impressionIndex;
- (NSString)impressionParentId;
- (NSString)impressionParentName;
- (NSString)name;
- (NSString)type;
- (VUIDebugMetricsImpressionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setIdStr:(id)str;
- (void)setIdType:(id)type;
- (void)setImpressionId:(id)id;
- (void)setImpressionIndex:(id)index;
- (void)setImpressionParentId:(id)id;
- (void)setImpressionParentName:(id)name;
- (void)setName:(id)name;
- (void)setType:(id)type;
@end

@implementation VUIDebugMetricsImpressionTableViewCell

- (VUIDebugMetricsImpressionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v48.receiver = self;
  v48.super_class = VUIDebugMetricsImpressionTableViewCell;
  v4 = [(VUIDebugMetricsImpressionTableViewCell *)&v48 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v5 setNumberOfLines:1];
    [(VUITextLayout *)v5 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v5 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v5 setFontSize:20.0];
    [(VUITextLayout *)v5 setFontWeight:6];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v5 setColor:blackColor];

    v7 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v5 existingLabel:0];
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v7;

    contentView = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_nameLabel];

    v10 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v10 setNumberOfLines:1];
    [(VUITextLayout *)v10 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v10 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v10 setFontSize:18.0];
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v10 setColor:blackColor2];

    v12 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v10 existingLabel:0];
    typeLabel = v4->_typeLabel;
    v4->_typeLabel = v12;

    contentView2 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_typeLabel];

    v15 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v15 setNumberOfLines:1];
    [(VUITextLayout *)v15 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v15 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v10 setFontSize:15.0];
    blackColor3 = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v15 setColor:blackColor3];

    v17 = [VUILabel labelWithString:@"id: " textLayout:v15 existingLabel:0];
    staticIDLabel = v4->_staticIDLabel;
    v4->_staticIDLabel = v17;

    contentView3 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_staticIDLabel];

    v20 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v15 existingLabel:0];
    idLabel = v4->_idLabel;
    v4->_idLabel = v20;

    contentView4 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [contentView4 addSubview:v4->_idLabel];

    v23 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v15 existingLabel:0];
    idTypeLabel = v4->_idTypeLabel;
    v4->_idTypeLabel = v23;

    contentView5 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [contentView5 addSubview:v4->_idTypeLabel];

    v26 = [VUILabel labelWithString:@"Impression Id: " textLayout:v15 existingLabel:0];
    staticImpressionIdLabel = v4->_staticImpressionIdLabel;
    v4->_staticImpressionIdLabel = v26;

    contentView6 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [contentView6 addSubview:v4->_staticImpressionIdLabel];

    v29 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v15 existingLabel:0];
    impressionIdLabel = v4->_impressionIdLabel;
    v4->_impressionIdLabel = v29;

    contentView7 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [contentView7 addSubview:v4->_impressionIdLabel];

    v32 = [VUILabel labelWithString:@"Index: " textLayout:v15 existingLabel:0];
    staticImpressionIndexLabel = v4->_staticImpressionIndexLabel;
    v4->_staticImpressionIndexLabel = v32;

    contentView8 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [contentView8 addSubview:v4->_staticImpressionIndexLabel];

    v35 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v15 existingLabel:0];
    impressionIndexLabel = v4->_impressionIndexLabel;
    v4->_impressionIndexLabel = v35;

    contentView9 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [contentView9 addSubview:v4->_impressionIndexLabel];

    v38 = [VUILabel labelWithString:@"Parent: " textLayout:v15 existingLabel:0];
    staticImpressionParentLabel = v4->_staticImpressionParentLabel;
    v4->_staticImpressionParentLabel = v38;

    contentView10 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [contentView10 addSubview:v4->_staticImpressionParentLabel];

    v41 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v15 existingLabel:0];
    impressionParentIdLabel = v4->_impressionParentIdLabel;
    v4->_impressionParentIdLabel = v41;

    contentView11 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [contentView11 addSubview:v4->_impressionParentIdLabel];

    v44 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v15 existingLabel:0];
    impressionParentNameLabel = v4->_impressionParentNameLabel;
    v4->_impressionParentNameLabel = v44;

    contentView12 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [contentView12 addSubview:v4->_impressionParentNameLabel];
  }

  return v4;
}

- (NSString)name
{
  nameLabel = [(VUIDebugMetricsImpressionTableViewCell *)self nameLabel];
  text = [nameLabel text];

  return text;
}

- (void)setName:(id)name
{
  nameCopy = name;
  nameLabel = [(VUIDebugMetricsImpressionTableViewCell *)self nameLabel];
  [nameLabel setText:nameCopy];
}

- (NSString)type
{
  typeLabel = [(VUIDebugMetricsImpressionTableViewCell *)self typeLabel];
  text = [typeLabel text];

  return text;
}

- (void)setType:(id)type
{
  typeCopy = type;
  typeLabel = [(VUIDebugMetricsImpressionTableViewCell *)self typeLabel];
  [typeLabel setText:typeCopy];
}

- (NSString)idStr
{
  idLabel = [(VUIDebugMetricsImpressionTableViewCell *)self idLabel];
  text = [idLabel text];

  return text;
}

- (void)setIdStr:(id)str
{
  strCopy = str;
  idLabel = [(VUIDebugMetricsImpressionTableViewCell *)self idLabel];
  [idLabel setText:strCopy];
}

- (NSString)idType
{
  idTypeLabel = [(VUIDebugMetricsImpressionTableViewCell *)self idTypeLabel];
  text = [idTypeLabel text];

  return text;
}

- (void)setIdType:(id)type
{
  typeCopy = type;
  idTypeLabel = [(VUIDebugMetricsImpressionTableViewCell *)self idTypeLabel];
  typeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", typeCopy];

  [idTypeLabel setText:typeCopy];
}

- (NSString)impressionId
{
  impressionIdLabel = [(VUIDebugMetricsImpressionTableViewCell *)self impressionIdLabel];
  text = [impressionIdLabel text];

  return text;
}

- (void)setImpressionId:(id)id
{
  idCopy = id;
  impressionIdLabel = [(VUIDebugMetricsImpressionTableViewCell *)self impressionIdLabel];
  [impressionIdLabel setText:idCopy];
}

- (NSString)impressionIndex
{
  impressionIndexLabel = [(VUIDebugMetricsImpressionTableViewCell *)self impressionIndexLabel];
  text = [impressionIndexLabel text];

  return text;
}

- (void)setImpressionIndex:(id)index
{
  indexCopy = index;
  impressionIndexLabel = [(VUIDebugMetricsImpressionTableViewCell *)self impressionIndexLabel];
  [impressionIndexLabel setText:indexCopy];
}

- (NSString)impressionParentId
{
  impressionParentIdLabel = [(VUIDebugMetricsImpressionTableViewCell *)self impressionParentIdLabel];
  text = [impressionParentIdLabel text];

  return text;
}

- (void)setImpressionParentId:(id)id
{
  idCopy = id;
  impressionParentIdLabel = [(VUIDebugMetricsImpressionTableViewCell *)self impressionParentIdLabel];
  [impressionParentIdLabel setText:idCopy];
}

- (NSString)impressionParentName
{
  impressionParentNameLabel = [(VUIDebugMetricsImpressionTableViewCell *)self impressionParentNameLabel];
  text = [impressionParentNameLabel text];

  return text;
}

- (void)setImpressionParentName:(id)name
{
  nameCopy = name;
  impressionParentNameLabel = [(VUIDebugMetricsImpressionTableViewCell *)self impressionParentNameLabel];
  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", nameCopy];

  [impressionParentNameLabel setText:nameCopy];
}

- (void)layoutSubviews
{
  [(VUIDebugMetricsImpressionTableViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [MEMORY[0x1E69DD2E8] vui_padding];
  v12 = v11;
  v14 = v13;
  v82.origin.x = v4;
  v82.origin.y = v6;
  v79 = v6;
  v82.size.width = v8;
  v82.size.height = v10;
  v15 = CGRectGetWidth(v82) - v12 - v14;
  v16 = *(MEMORY[0x1E695F058] + 8);
  v83.origin.x = v4;
  v17 = v4;
  v83.origin.y = v6;
  v83.size.width = v8;
  v83.size.height = v10;
  v78 = v10;
  v18 = v15;
  [(VUILabel *)self->_nameLabel sizeThatFits:v15, CGRectGetHeight(v83)];
  v20 = v19;
  v22 = v21;
  [(VUILabel *)self->_nameLabel setFrame:v12, v16, v19, v21];
  v84.origin.x = v12;
  v84.origin.y = v16;
  v84.size.width = v20;
  v84.size.height = v22;
  v23 = v16 + CGRectGetHeight(v84);
  v85.origin.x = v17;
  rect = v17;
  v85.origin.y = v79;
  v85.size.width = v8;
  v85.size.height = v10;
  [(VUILabel *)self->_typeLabel sizeThatFits:v18, CGRectGetHeight(v85)];
  v25 = v24;
  v27 = v26;
  [(VUILabel *)self->_typeLabel setFrame:v12, v23, v24, v26];
  v86.origin.x = v12;
  v86.origin.y = v23;
  v86.size.width = v25;
  v86.size.height = v27;
  v28 = v23 + CGRectGetHeight(v86);
  v87.origin.x = v17;
  v87.origin.y = v79;
  v87.size.width = v8;
  v87.size.height = v78;
  [(VUILabel *)self->_staticIDLabel sizeThatFits:v18, CGRectGetHeight(v87)];
  v30 = v29;
  v32 = v31;
  [(VUILabel *)self->_staticIDLabel setFrame:v12, v28, v29, v31];
  v88.origin.x = v12;
  v88.origin.y = v28;
  v88.size.width = v30;
  v88.size.height = v32;
  v33 = v12 + CGRectGetWidth(v88) + 5.0;
  v89.origin.x = v17;
  v89.origin.y = v79;
  v89.size.width = v8;
  v89.size.height = v78;
  v34 = v18;
  [(VUILabel *)self->_idLabel sizeThatFits:v18, CGRectGetHeight(v89)];
  v36 = v35;
  v38 = v37;
  [(VUILabel *)self->_idLabel setFrame:v33, v28, v35, v37];
  v90.origin.x = v33;
  v90.origin.y = v28;
  v90.size.width = v36;
  v90.size.height = v38;
  v75 = v33 + CGRectGetWidth(v90) + 5.0;
  v91.origin.y = v79;
  v91.origin.x = rect;
  v91.size.width = v8;
  v91.size.height = v78;
  [(VUILabel *)self->_idTypeLabel sizeThatFits:v34, CGRectGetHeight(v91)];
  v40 = v39;
  v42 = v41;
  [(VUILabel *)self->_idTypeLabel setFrame:v75, v28, v39, v41];
  v92.origin.x = v12;
  v92.origin.y = v28;
  v92.size.width = v40;
  v92.size.height = v42;
  v43 = v28 + CGRectGetHeight(v92);
  v93.origin.x = rect;
  v93.origin.y = v79;
  v93.size.width = v8;
  v93.size.height = v78;
  [(VUILabel *)self->_staticImpressionIdLabel sizeThatFits:v34, CGRectGetHeight(v93)];
  v45 = v44;
  v47 = v46;
  [(VUILabel *)self->_staticImpressionIdLabel setFrame:v12, v43, v44, v46];
  v94.origin.x = v12;
  v94.origin.y = v43;
  v94.size.width = v45;
  v94.size.height = v47;
  v76 = v12 + CGRectGetWidth(v94) + 5.0;
  v95.origin.x = rect;
  v95.origin.y = v79;
  v95.size.width = v8;
  v95.size.height = v78;
  [(VUILabel *)self->_impressionIdLabel sizeThatFits:v34, CGRectGetHeight(v95)];
  v49 = v48;
  v51 = v50;
  [(VUILabel *)self->_impressionIdLabel setFrame:v76, v43, v48, v50];
  v96.origin.x = v12;
  v96.origin.y = v43;
  v96.size.width = v49;
  v96.size.height = v51;
  v52 = v43 + CGRectGetHeight(v96);
  v97.origin.x = rect;
  v97.origin.y = v79;
  v97.size.width = v8;
  v97.size.height = v78;
  [(VUILabel *)self->_staticImpressionIndexLabel sizeThatFits:v34, CGRectGetHeight(v97)];
  v54 = v53;
  v56 = v55;
  [(VUILabel *)self->_staticImpressionIndexLabel setFrame:v12, v52, v53, v55];
  v98.origin.x = v12;
  v98.origin.y = v52;
  v98.size.width = v54;
  v98.size.height = v56;
  v77 = v12 + CGRectGetWidth(v98) + 5.0;
  v99.origin.x = rect;
  v99.origin.y = v79;
  v99.size.width = v8;
  v99.size.height = v78;
  [(VUILabel *)self->_impressionIndexLabel sizeThatFits:v34, CGRectGetHeight(v99)];
  v58 = v57;
  v60 = v59;
  [(VUILabel *)self->_impressionIndexLabel setFrame:v77, v52, v57, v59];
  v100.origin.x = v12;
  v100.origin.y = v52;
  v100.size.width = v58;
  v100.size.height = v60;
  v61 = v52 + CGRectGetHeight(v100);
  v101.origin.x = rect;
  v101.origin.y = v79;
  v101.size.width = v8;
  v101.size.height = v78;
  [(VUILabel *)self->_staticImpressionParentLabel sizeThatFits:v34, CGRectGetHeight(v101)];
  v63 = v62;
  v65 = v64;
  [(VUILabel *)self->_staticImpressionParentLabel setFrame:v12, v61, v62, v64];
  v102.origin.x = v12;
  v102.origin.y = v61;
  v102.size.width = v63;
  v102.size.height = v65;
  v66 = v12 + CGRectGetWidth(v102) + 5.0;
  v103.origin.x = rect;
  v103.origin.y = v79;
  v103.size.width = v8;
  v103.size.height = v78;
  [(VUILabel *)self->_impressionParentIdLabel sizeThatFits:v34, CGRectGetHeight(v103)];
  v68 = v67;
  v70 = v69;
  [(VUILabel *)self->_impressionParentIdLabel setFrame:v66, v61, v67, v69];
  v104.origin.x = v66;
  v104.origin.y = v61;
  v104.size.width = v68;
  v104.size.height = v70;
  v71 = v66 + CGRectGetWidth(v104) + 5.0;
  v105.origin.x = rect;
  v105.origin.y = v79;
  v105.size.width = v8;
  v105.size.height = v78;
  [(VUILabel *)self->_impressionParentNameLabel sizeThatFits:v34, CGRectGetHeight(v105)];
  impressionParentNameLabel = self->_impressionParentNameLabel;

  [(VUILabel *)impressionParentNameLabel setFrame:v71, v61, v72, v73];
}

- (void)prepareForReuse
{
  v11.receiver = self;
  v11.super_class = VUIDebugMetricsImpressionTableViewCell;
  [(VUIDebugMetricsImpressionTableViewCell *)&v11 prepareForReuse];
  nameLabel = [(VUIDebugMetricsImpressionTableViewCell *)self nameLabel];
  [nameLabel setText:&stru_1F5DB25C0];

  typeLabel = [(VUIDebugMetricsImpressionTableViewCell *)self typeLabel];
  [typeLabel setText:&stru_1F5DB25C0];

  idLabel = [(VUIDebugMetricsImpressionTableViewCell *)self idLabel];
  [idLabel setText:&stru_1F5DB25C0];

  idTypeLabel = [(VUIDebugMetricsImpressionTableViewCell *)self idTypeLabel];
  [idTypeLabel setText:&stru_1F5DB25C0];

  impressionIdLabel = [(VUIDebugMetricsImpressionTableViewCell *)self impressionIdLabel];
  [impressionIdLabel setText:&stru_1F5DB25C0];

  impressionIndexLabel = [(VUIDebugMetricsImpressionTableViewCell *)self impressionIndexLabel];
  [impressionIndexLabel setText:&stru_1F5DB25C0];

  impressionParentIdLabel = [(VUIDebugMetricsImpressionTableViewCell *)self impressionParentIdLabel];
  [impressionParentIdLabel setText:&stru_1F5DB25C0];

  impressionParentNameLabel = [(VUIDebugMetricsImpressionTableViewCell *)self impressionParentNameLabel];
  [impressionParentNameLabel setText:&stru_1F5DB25C0];
}

@end