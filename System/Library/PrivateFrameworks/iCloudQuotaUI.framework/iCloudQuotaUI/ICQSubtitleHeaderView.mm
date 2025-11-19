@interface ICQSubtitleHeaderView
- (ICQSubtitleHeaderView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3;
- (id)addSubtitle;
- (id)subtitleAtIndex:(unint64_t)a3;
- (void)layoutSubviews;
@end

@implementation ICQSubtitleHeaderView

- (ICQSubtitleHeaderView)initWithSpecifier:(id)a3
{
  v19.receiver = self;
  v19.super_class = ICQSubtitleHeaderView;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = [(ICQSubtitleHeaderView *)&v19 initWithFrame:a3, *MEMORY[0x277CBF3A0], v4, v5, v6];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v3, v4, v5, v6}];
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v8;

    v10 = v7->_titleLabel;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v10 setFont:v11];

    v12 = v7->_titleLabel;
    v13 = [MEMORY[0x277D75348] darkGrayColor];
    [(UILabel *)v12 setTextColor:v13];

    v14 = v7->_titleLabel;
    v15 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v14 setBackgroundColor:v15];

    [(ICQSubtitleHeaderView *)v7 addSubview:v7->_titleLabel];
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    subtitleLabels = v7->_subtitleLabels;
    v7->_subtitleLabels = v16;
  }

  return v7;
}

- (id)subtitleAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_subtitleLabels count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_subtitleLabels objectAtIndex:a3];
  }

  return v5;
}

- (id)addSubtitle
{
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  [v4 setFont:v5];

  v6 = [MEMORY[0x277D75348] grayColor];
  [v4 setTextColor:v6];

  v7 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v7];

  [v4 setNumberOfLines:0];
  [v4 setLineBreakMode:0];
  [(NSMutableArray *)self->_subtitleLabels addObject:v4];
  [(ICQSubtitleHeaderView *)self addSubview:v4];
  [(ICQSubtitleHeaderView *)self setNeedsLayout];

  return v4;
}

- (double)preferredHeightForWidth:(double)a3
{
  v39 = *MEMORY[0x277D85DE8];
  PSTextViewInsets();
  v32 = v6;
  [(UILabel *)self->_titleLabel sizeToFit];
  [(UILabel *)self->_titleLabel bounds];
  v8 = v7;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_subtitleLabels;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        [v13 frame];
        v15 = v14;
        v17 = v16;
        v18 = [v13 text];
        v19 = [v13 font];
        v20 = [(ICQSubtitleHeaderView *)self superview];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v22 = 15.0;
        if (isKindOfClass)
        {
          v3 = [(ICQSubtitleHeaderView *)self superview];
          [v3 _backgroundInset];
          v24 = v23;
          if (PSIsN56())
          {
            PSTableViewSideInset();
          }

          else
          {
            PreferencesTableViewCellLeftPad();
            v25 = v26;
          }

          v22 = v24 + v25 - v32;
        }

        [v18 _legacy_sizeWithFont:v19 constrainedToSize:objc_msgSend(v13 lineBreakMode:{"lineBreakMode"), a3 + v22 * -2.0, 1.79769313e308}];
        v28 = v27;
        v30 = v29;
        if (isKindOfClass)
        {
        }

        [v13 setFrame:{v15, v17, v28, v30}];
        v8 = v8 + v30 + 4.0;
      }

      v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  return v8 + 5.0 + 6.0;
}

- (void)layoutSubviews
{
  v35 = *MEMORY[0x277D85DE8];
  PSTextViewInsets();
  v4 = v3;
  v5 = [(ICQSubtitleHeaderView *)self superview];
  objc_opt_class();
  v6 = 15.0;
  if (objc_opt_isKindOfClass())
  {
    v7 = [(ICQSubtitleHeaderView *)self superview];
    [v7 _backgroundInset];
    v9 = v8;
    if (PSIsN56())
    {
      PSTableViewSideInset();
    }

    else
    {
      PreferencesTableViewCellLeftPad();
      v10 = v11;
    }

    v6 = v9 + v10 - v4;
  }

  [(ICQSubtitleHeaderView *)self bounds];
  v13 = v12;
  [(UILabel *)self->_titleLabel frame];
  v15 = v14;
  v17 = v16;
  v18 = [(ICQSubtitleHeaderView *)self _shouldReverseLayoutDirection];
  v19 = v13 - v6 - v15;
  if (!v18)
  {
    v19 = v6;
  }

  [(UILabel *)self->_titleLabel setFrame:v19, 5.0, v15, v17];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = self->_subtitleLabels;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = v17 + 5.0 + 4.0;
    v24 = *v31;
    v25 = v13 + v6 * -2.0;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v30 + 1) + 8 * i);
        [v27 frame];
        v29 = v28;
        [v27 setFrame:{v6, v23, v25}];
        v23 = v23 + v29 + 4.0;
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v22);
  }
}

@end