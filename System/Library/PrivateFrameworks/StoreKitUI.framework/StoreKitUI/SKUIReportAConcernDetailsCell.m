@interface SKUIReportAConcernDetailsCell
- (NSString)text;
- (SKUIReportAConcernDetailsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setPlaceholderText:(id)a3;
- (void)updatePlaceholderText:(BOOL)a3;
@end

@implementation SKUIReportAConcernDetailsCell

- (SKUIReportAConcernDetailsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReportAConcernDetailsCell initWithStyle:reuseIdentifier:];
  }

  v15.receiver = self;
  v15.super_class = SKUIReportAConcernDetailsCell;
  v7 = [(SKUIReportAConcernDetailsCell *)&v15 initWithStyle:a3 reuseIdentifier:v6];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D75C40]);
    v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textView = v7->_textView;
    v7->_textView = v9;

    v11 = [(SKUIReportAConcernDetailsCell *)v7 textLabel];
    v12 = [v11 font];
    [(UITextView *)v7->_textView setFont:v12];

    v13 = [(SKUIReportAConcernDetailsCell *)v7 contentView];
    [v13 addSubview:v7->_textView];
  }

  return v7;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = SKUIReportAConcernDetailsCell;
  [(SKUIReportAConcernDetailsCell *)&v38 layoutSubviews];
  v3 = [(SKUIReportAConcernDetailsCell *)self contentView];
  v4 = [v3 readableContentGuide];
  [v4 layoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(SKUIReportAConcernDetailsCell *)self textView];
  v14 = [v13 textContainer];
  [v14 lineFragmentPadding];
  v37 = v15;

  v16 = [(SKUIReportAConcernDetailsCell *)self contentView];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  rect_8 = v21;
  v24 = v23;

  v25 = [(SKUIReportAConcernDetailsCell *)self textView];
  [v25 setFrame:{v18, v20, v22, v24}];

  v34 = v6;
  v39.origin.x = v6;
  v39.origin.y = v8;
  v39.size.width = v10;
  v39.size.height = v12;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = v18;
  v40.origin.y = v20;
  v40.size.width = rect_8;
  v40.size.height = v24;
  v36 = MinY - CGRectGetMinY(v40);
  v41.origin.x = v6;
  v41.origin.y = v8;
  v41.size.width = v10;
  v41.size.height = v12;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = v18;
  v42.origin.y = v20;
  v42.size.width = rect_8;
  v42.size.height = v24;
  v35 = MinX - CGRectGetMinX(v42) - v37;
  v43.origin.x = v18;
  v43.origin.y = v20;
  v43.size.width = rect_8;
  v43.size.height = v24;
  MaxY = CGRectGetMaxY(v43);
  v44.origin.x = v34;
  v44.origin.y = v8;
  v44.size.width = v10;
  v44.size.height = v12;
  v29 = MaxY - CGRectGetMaxY(v44);
  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = rect_8;
  v45.size.height = v24;
  MaxX = CGRectGetMaxX(v45);
  v46.origin.x = v34;
  v46.origin.y = v8;
  v46.size.width = v10;
  v46.size.height = v12;
  v31 = MaxX - CGRectGetMaxX(v46) - v37;
  v32 = [(SKUIReportAConcernDetailsCell *)self textView];
  [v32 setTextContainerInset:{v36, v35, v29, v31}];
}

- (void)setPlaceholderText:(id)a3
{
  objc_storeStrong(&self->_placeholderText, a3);
  if (a3)
  {
    v5 = [(SKUIReportAConcernDetailsCell *)self textView];
    [v5 setDelegate:self];

    [(SKUIReportAConcernDetailsCell *)self updatePlaceholderText:0];
  }
}

- (NSString)text
{
  v3 = [(SKUIReportAConcernDetailsCell *)self textView];
  v4 = [v3 text];
  v5 = [(SKUIReportAConcernDetailsCell *)self placeholderText];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(SKUIReportAConcernDetailsCell *)self textView];
    v7 = [v8 text];
  }

  return v7;
}

- (void)updatePlaceholderText:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIReportAConcernDetailsCell *)self textView];
  v6 = [v5 text];
  v7 = v6;
  if (v3)
  {
    v8 = [(SKUIReportAConcernDetailsCell *)self placeholderText];
    v9 = [v7 isEqualToString:v8];

    if (!v9)
    {
      return;
    }

    v10 = [(SKUIReportAConcernDetailsCell *)self textView];
    [v10 setText:&stru_2827FFAC8];

    v16 = [(SKUIReportAConcernDetailsCell *)self textLabel];
    v11 = [v16 textColor];
    v12 = [(SKUIReportAConcernDetailsCell *)self textView];
    [v12 setTextColor:v11];
  }

  else
  {
    v13 = [v6 length];

    if (v13)
    {
      return;
    }

    v14 = [(SKUIReportAConcernDetailsCell *)self placeholderText];
    v15 = [(SKUIReportAConcernDetailsCell *)self textView];
    [v15 setText:v14];

    v16 = [MEMORY[0x277D75348] lightGrayColor];
    v11 = [(SKUIReportAConcernDetailsCell *)self textView];
    [v11 setTextColor:v16];
  }
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReportAConcernDetailsCell initWithStyle:reuseIdentifier:]";
}

@end