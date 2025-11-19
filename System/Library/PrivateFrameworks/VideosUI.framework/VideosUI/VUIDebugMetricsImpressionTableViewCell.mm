@interface VUIDebugMetricsImpressionTableViewCell
- (NSString)idStr;
- (NSString)idType;
- (NSString)impressionId;
- (NSString)impressionIndex;
- (NSString)impressionParentId;
- (NSString)impressionParentName;
- (NSString)name;
- (NSString)type;
- (VUIDebugMetricsImpressionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setIdStr:(id)a3;
- (void)setIdType:(id)a3;
- (void)setImpressionId:(id)a3;
- (void)setImpressionIndex:(id)a3;
- (void)setImpressionParentId:(id)a3;
- (void)setImpressionParentName:(id)a3;
- (void)setName:(id)a3;
- (void)setType:(id)a3;
@end

@implementation VUIDebugMetricsImpressionTableViewCell

- (VUIDebugMetricsImpressionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v48.receiver = self;
  v48.super_class = VUIDebugMetricsImpressionTableViewCell;
  v4 = [(VUIDebugMetricsImpressionTableViewCell *)&v48 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v5 setNumberOfLines:1];
    [(VUITextLayout *)v5 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v5 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v5 setFontSize:20.0];
    [(VUITextLayout *)v5 setFontWeight:6];
    v6 = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v5 setColor:v6];

    v7 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v5 existingLabel:0];
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v7;

    v9 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [v9 addSubview:v4->_nameLabel];

    v10 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v10 setNumberOfLines:1];
    [(VUITextLayout *)v10 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v10 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v10 setFontSize:18.0];
    v11 = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v10 setColor:v11];

    v12 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v10 existingLabel:0];
    typeLabel = v4->_typeLabel;
    v4->_typeLabel = v12;

    v14 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [v14 addSubview:v4->_typeLabel];

    v15 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v15 setNumberOfLines:1];
    [(VUITextLayout *)v15 setNumberOfLinesAXSmall:1];
    [(VUITextLayout *)v15 setNumberOfLinesAXLarge:1];
    [(VUITextLayout *)v10 setFontSize:15.0];
    v16 = [MEMORY[0x1E69DC888] blackColor];
    [(VUITextLayout *)v15 setColor:v16];

    v17 = [VUILabel labelWithString:@"id: " textLayout:v15 existingLabel:0];
    staticIDLabel = v4->_staticIDLabel;
    v4->_staticIDLabel = v17;

    v19 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [v19 addSubview:v4->_staticIDLabel];

    v20 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v15 existingLabel:0];
    idLabel = v4->_idLabel;
    v4->_idLabel = v20;

    v22 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [v22 addSubview:v4->_idLabel];

    v23 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v15 existingLabel:0];
    idTypeLabel = v4->_idTypeLabel;
    v4->_idTypeLabel = v23;

    v25 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [v25 addSubview:v4->_idTypeLabel];

    v26 = [VUILabel labelWithString:@"Impression Id: " textLayout:v15 existingLabel:0];
    staticImpressionIdLabel = v4->_staticImpressionIdLabel;
    v4->_staticImpressionIdLabel = v26;

    v28 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [v28 addSubview:v4->_staticImpressionIdLabel];

    v29 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v15 existingLabel:0];
    impressionIdLabel = v4->_impressionIdLabel;
    v4->_impressionIdLabel = v29;

    v31 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [v31 addSubview:v4->_impressionIdLabel];

    v32 = [VUILabel labelWithString:@"Index: " textLayout:v15 existingLabel:0];
    staticImpressionIndexLabel = v4->_staticImpressionIndexLabel;
    v4->_staticImpressionIndexLabel = v32;

    v34 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [v34 addSubview:v4->_staticImpressionIndexLabel];

    v35 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v15 existingLabel:0];
    impressionIndexLabel = v4->_impressionIndexLabel;
    v4->_impressionIndexLabel = v35;

    v37 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [v37 addSubview:v4->_impressionIndexLabel];

    v38 = [VUILabel labelWithString:@"Parent: " textLayout:v15 existingLabel:0];
    staticImpressionParentLabel = v4->_staticImpressionParentLabel;
    v4->_staticImpressionParentLabel = v38;

    v40 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [v40 addSubview:v4->_staticImpressionParentLabel];

    v41 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v15 existingLabel:0];
    impressionParentIdLabel = v4->_impressionParentIdLabel;
    v4->_impressionParentIdLabel = v41;

    v43 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [v43 addSubview:v4->_impressionParentIdLabel];

    v44 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v15 existingLabel:0];
    impressionParentNameLabel = v4->_impressionParentNameLabel;
    v4->_impressionParentNameLabel = v44;

    v46 = [(VUIDebugMetricsImpressionTableViewCell *)v4 contentView];
    [v46 addSubview:v4->_impressionParentNameLabel];
  }

  return v4;
}

- (NSString)name
{
  v2 = [(VUIDebugMetricsImpressionTableViewCell *)self nameLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(VUIDebugMetricsImpressionTableViewCell *)self nameLabel];
  [v5 setText:v4];
}

- (NSString)type
{
  v2 = [(VUIDebugMetricsImpressionTableViewCell *)self typeLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setType:(id)a3
{
  v4 = a3;
  v5 = [(VUIDebugMetricsImpressionTableViewCell *)self typeLabel];
  [v5 setText:v4];
}

- (NSString)idStr
{
  v2 = [(VUIDebugMetricsImpressionTableViewCell *)self idLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setIdStr:(id)a3
{
  v4 = a3;
  v5 = [(VUIDebugMetricsImpressionTableViewCell *)self idLabel];
  [v5 setText:v4];
}

- (NSString)idType
{
  v2 = [(VUIDebugMetricsImpressionTableViewCell *)self idTypeLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setIdType:(id)a3
{
  v4 = a3;
  v6 = [(VUIDebugMetricsImpressionTableViewCell *)self idTypeLabel];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v4];

  [v6 setText:v5];
}

- (NSString)impressionId
{
  v2 = [(VUIDebugMetricsImpressionTableViewCell *)self impressionIdLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setImpressionId:(id)a3
{
  v4 = a3;
  v5 = [(VUIDebugMetricsImpressionTableViewCell *)self impressionIdLabel];
  [v5 setText:v4];
}

- (NSString)impressionIndex
{
  v2 = [(VUIDebugMetricsImpressionTableViewCell *)self impressionIndexLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setImpressionIndex:(id)a3
{
  v4 = a3;
  v5 = [(VUIDebugMetricsImpressionTableViewCell *)self impressionIndexLabel];
  [v5 setText:v4];
}

- (NSString)impressionParentId
{
  v2 = [(VUIDebugMetricsImpressionTableViewCell *)self impressionParentIdLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setImpressionParentId:(id)a3
{
  v4 = a3;
  v5 = [(VUIDebugMetricsImpressionTableViewCell *)self impressionParentIdLabel];
  [v5 setText:v4];
}

- (NSString)impressionParentName
{
  v2 = [(VUIDebugMetricsImpressionTableViewCell *)self impressionParentNameLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setImpressionParentName:(id)a3
{
  v4 = a3;
  v6 = [(VUIDebugMetricsImpressionTableViewCell *)self impressionParentNameLabel];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v4];

  [v6 setText:v5];
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
  v3 = [(VUIDebugMetricsImpressionTableViewCell *)self nameLabel];
  [v3 setText:&stru_1F5DB25C0];

  v4 = [(VUIDebugMetricsImpressionTableViewCell *)self typeLabel];
  [v4 setText:&stru_1F5DB25C0];

  v5 = [(VUIDebugMetricsImpressionTableViewCell *)self idLabel];
  [v5 setText:&stru_1F5DB25C0];

  v6 = [(VUIDebugMetricsImpressionTableViewCell *)self idTypeLabel];
  [v6 setText:&stru_1F5DB25C0];

  v7 = [(VUIDebugMetricsImpressionTableViewCell *)self impressionIdLabel];
  [v7 setText:&stru_1F5DB25C0];

  v8 = [(VUIDebugMetricsImpressionTableViewCell *)self impressionIndexLabel];
  [v8 setText:&stru_1F5DB25C0];

  v9 = [(VUIDebugMetricsImpressionTableViewCell *)self impressionParentIdLabel];
  [v9 setText:&stru_1F5DB25C0];

  v10 = [(VUIDebugMetricsImpressionTableViewCell *)self impressionParentNameLabel];
  [v10 setText:&stru_1F5DB25C0];
}

@end