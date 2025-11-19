@interface RTTUIServiceUpdateCell
+ (double)heightForWidth:(double)a3 delegate:(id)a4 serviceUpdate:(id)a5;
- (RTTUIServiceCellDelegate)delegate;
- (RTTUIServiceUpdateCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 serviceUpdate:(id)a5;
- (double)preferredHeightForWidth:(double)a3;
- (void)adjustTextViewSize;
- (void)layoutSubviews;
@end

@implementation RTTUIServiceUpdateCell

+ (double)heightForWidth:(double)a3 delegate:(id)a4 serviceUpdate:(id)a5
{
  v7 = a5;
  v8 = heightForWidth_delegate_serviceUpdate__onceToken;
  v9 = a4;
  if (v8 != -1)
  {
    +[RTTUIServiceUpdateCell heightForWidth:delegate:serviceUpdate:];
  }

  v10 = *(heightForWidth_delegate_serviceUpdate__SizeCell + 1040);
  *(heightForWidth_delegate_serviceUpdate__SizeCell + 1040) = v7;
  v11 = v7;

  [heightForWidth_delegate_serviceUpdate__SizeCell setDelegate:v9];
  [heightForWidth_delegate_serviceUpdate__SizeCell updateLayout];
  [heightForWidth_delegate_serviceUpdate__SizeCell preferredHeightForWidth:a3];
  v13 = v12;

  return v13;
}

uint64_t __64__RTTUIServiceUpdateCell_heightForWidth_delegate_serviceUpdate___block_invoke()
{
  v0 = objc_alloc_init(RTTUIServiceUpdateCell);
  v1 = heightForWidth_delegate_serviceUpdate__SizeCell;
  heightForWidth_delegate_serviceUpdate__SizeCell = v0;

  v2 = heightForWidth_delegate_serviceUpdate__SizeCell;

  return [v2 updateLayout];
}

- (RTTUIServiceUpdateCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 serviceUpdate:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = RTTUIServiceUpdateCell;
  v10 = [(RTTUIServiceUpdateCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_serviceUpdate, a5);
  }

  return v11;
}

- (double)preferredHeightForWidth:(double)a3
{
  [(UITextView *)self->_titleView sizeThatFits:a3, 1.79769313e308];
  v6 = v5;
  [(UITextView *)self->_subtitleView sizeThatFits:a3, 1.79769313e308];
  return fmax(v6 + v7, 20.0);
}

- (void)adjustTextViewSize
{
  [(RTTUIServiceUpdateCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v47 = *(MEMORY[0x277CBF348] + 8);
  v48 = *MEMORY[0x277CBF348];
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [(UITextView *)self->_titleView setFont:v11];

  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UITextView *)self->_subtitleView setFont:v12];

  titleView = self->_titleView;
  v14 = [(RTTUIServiceUpdateCell *)self window];
  [v14 frame];
  [(UITextView *)titleView sizeThatFits:CGRectGetWidth(v50), 1.79769313e308];
  v16 = v15;

  v17 = fmax(v16, 20.0);
  v44 = v4;
  v45 = v17;
  v51.origin.x = v4;
  v51.origin.y = v6;
  v51.size.width = v8;
  v51.size.height = v10;
  Width = CGRectGetWidth(v51);
  v19 = self->_titleView;
  v20 = [(RTTUIServiceUpdateCell *)self window];
  [v20 frame];
  [(UITextView *)v19 sizeThatFits:CGRectGetWidth(v52), v17];
  v22 = v21;

  v23 = fmax(v22, 130.0);
  if (Width >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = Width;
  }

  v53.origin.x = v4;
  v53.origin.y = v6;
  v53.size.width = v8;
  v53.size.height = v10;
  v25 = CGRectGetWidth(v53);
  v54.origin.x = v48;
  v54.origin.y = v47;
  v54.size.width = v24;
  v54.size.height = v17;
  v46 = (v25 - CGRectGetWidth(v54)) * 0.5;
  [(UITextView *)self->_titleView setFrame:?];
  subtitleView = self->_subtitleView;
  v27 = [(RTTUIServiceUpdateCell *)self window];
  [v27 frame];
  [(UITextView *)subtitleView sizeThatFits:CGRectGetWidth(v55), 1.79769313e308];
  v29 = v28;

  v30 = fmax(v29, 20.0);
  v56.origin.x = v4;
  v56.origin.y = v6;
  v31 = v6;
  v56.size.width = v8;
  v32 = v8;
  v56.size.height = v10;
  v33 = v10;
  v34 = CGRectGetWidth(v56);
  v35 = self->_subtitleView;
  v36 = [(RTTUIServiceUpdateCell *)self window];
  [v36 frame];
  [(UITextView *)v35 sizeThatFits:CGRectGetWidth(v57), v30];
  v38 = v37;

  v39 = fmax(v38, 130.0);
  if (v34 >= v39)
  {
    v34 = v39;
  }

  v58.origin.x = v44;
  v58.origin.y = v31;
  v58.size.width = v32;
  v58.size.height = v33;
  v40 = CGRectGetWidth(v58);
  v59.origin.x = v48;
  v59.origin.y = v47;
  v59.size.width = v34;
  v59.size.height = v30;
  v41 = (v40 - CGRectGetWidth(v59)) * 0.5;
  v60.origin.x = v46;
  v60.origin.y = v47;
  v60.size.width = v24;
  v60.size.height = v45;
  MaxY = CGRectGetMaxY(v60);
  [(UITextView *)self->_subtitleView setFrame:v41, MaxY, v34, v30];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __44__RTTUIServiceUpdateCell_adjustTextViewSize__block_invoke;
  v49[3] = &unk_279AE5298;
  v49[4] = self;
  *&v49[5] = v46;
  *&v49[6] = v47;
  *&v49[7] = v24;
  *&v49[8] = v45;
  *&v49[9] = v41;
  *&v49[10] = MaxY;
  *&v49[11] = v34;
  *&v49[12] = v30;
  v43 = MEMORY[0x26670A470](v49);
  v43[2]();
}

void __44__RTTUIServiceUpdateCell_adjustTextViewSize__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  v4 = CGRectUnion(*(a1 + 40), *(a1 + 72));
  [v2 setFrame:{v4.origin.x, v4.origin.y, v4.size.width, v4.size.height}];
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = RTTUIServiceUpdateCell;
  [(RTTUIServiceUpdateCell *)&v58 layoutSubviews];
  v3 = [(RTTUIServiceUpdateCell *)self delegate];
  v4 = [v3 isCurrentCallConnected];

  if (!self->_titleView)
  {
    v5 = [RTTUIStaticTextView alloc];
    v6 = [(RTTUIServiceUpdateCell *)self textLabel];
    [v6 frame];
    v7 = [(RTTUIStaticTextView *)v5 initWithFrame:0 textContainer:?];
    titleView = self->_titleView;
    self->_titleView = v7;

    v9 = self->_titleView;
    v10 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v9 setBackgroundColor:v10];

    v11 = self->_titleView;
    v12 = [MEMORY[0x277D74300] boldSystemFontOfSize:20.0];
    [(UITextView *)v11 setFont:v12];

    v13 = [(RTTUIServiceUpdateCell *)self contentView];
    [v13 addSubview:self->_titleView];

    v14 = [(UITextView *)self->_titleView textContainer];
    [v14 setLineBreakMode:0];

    v15 = [(UITextView *)self->_titleView textContainer];
    [v15 setMaximumNumberOfLines:0];

    [(UITextView *)self->_titleView setTextAlignment:1];
    [(UITextView *)self->_titleView setEditable:0];
    [(UITextView *)self->_titleView setSelectable:1];
    [(UITextView *)self->_titleView setScrollEnabled:0];
  }

  if (!self->_subtitleView)
  {
    v16 = [RTTUIStaticTextView alloc];
    v17 = [(RTTUIServiceUpdateCell *)self textLabel];
    [v17 frame];
    v18 = [(RTTUIStaticTextView *)v16 initWithFrame:0 textContainer:?];
    subtitleView = self->_subtitleView;
    self->_subtitleView = v18;

    v20 = self->_subtitleView;
    v21 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v20 setBackgroundColor:v21];

    v22 = self->_subtitleView;
    v23 = [MEMORY[0x277D74300] systemFontOfSize:20.0];
    [(UITextView *)v22 setFont:v23];

    v24 = [(RTTUIServiceUpdateCell *)self contentView];
    [v24 addSubview:self->_subtitleView];

    v25 = [(UITextView *)self->_subtitleView textContainer];
    [v25 setLineBreakMode:0];

    v26 = [(UITextView *)self->_subtitleView textContainer];
    [v26 setMaximumNumberOfLines:0];

    [(UITextView *)self->_subtitleView setTextAlignment:1];
    [(UITextView *)self->_subtitleView setEditable:0];
    [(UITextView *)self->_subtitleView setSelectable:1];
    [(UITextView *)self->_subtitleView setScrollEnabled:0];
  }

  v27 = [MEMORY[0x277D75348] clearColor];
  [(RTTUIServiceUpdateCell *)self setBackgroundColor:v27];

  v28 = [(RTTServiceUpdate *)self->_serviceUpdate serviceUpdateType];
  v29 = [v28 isEqualToString:*MEMORY[0x277D440F8]];

  if (!v29)
  {
    v30 = [(RTTServiceUpdate *)self->_serviceUpdate serviceUpdateType];
    v31 = [v30 isEqualToString:*MEMORY[0x277D44128]];

    if (!v31)
    {
      v36 = [(RTTServiceUpdate *)self->_serviceUpdate serviceUpdateType];
      v37 = [v36 isEqualToString:*MEMORY[0x277D44108]];

      if (v37)
      {
        v38 = self->_titleView;
        v39 = MEMORY[0x277CCACA8];
      }

      else
      {
        v40 = [(RTTServiceUpdate *)self->_serviceUpdate serviceUpdateType];
        v41 = [v40 isEqualToString:*MEMORY[0x277D44120]];

        if (!v41)
        {
          v45 = [(RTTServiceUpdate *)self->_serviceUpdate serviceUpdateType];
          v46 = [v45 isEqualToString:*MEMORY[0x277D44100]];

          if (v46)
          {
            v47 = self->_titleView;
          }

          else
          {
            v48 = [(RTTServiceUpdate *)self->_serviceUpdate serviceUpdateType];
            v49 = *MEMORY[0x277D44118];

            if (v48 == v49)
            {
              v47 = self->_titleView;
            }

            else
            {
              v50 = [(RTTServiceUpdate *)self->_serviceUpdate serviceUpdateType];
              v51 = *MEMORY[0x277D44130];

              if (v50 == v51)
              {
                v47 = self->_titleView;
              }

              else
              {
                v52 = [(RTTServiceUpdate *)self->_serviceUpdate serviceUpdateType];
                v53 = *MEMORY[0x277D44110];

                if (v52 != v53)
                {
                  goto LABEL_23;
                }

                v47 = self->_titleView;
              }
            }
          }

          v54 = ttyLocString();
          [(UITextView *)v47 setText:v54];

LABEL_22:
          [(UITextView *)self->_subtitleView setText:0];
          goto LABEL_23;
        }

        v38 = self->_titleView;
        v39 = MEMORY[0x277CCACA8];
      }

      v42 = ttyLocString();
      v43 = [(RTTServiceUpdate *)self->_serviceUpdate optionValueForKey:*MEMORY[0x277D440F0]];
      v44 = [v39 stringWithFormat:v42, v43];
      [(UITextView *)v38 setText:v44];

      goto LABEL_22;
    }
  }

  v32 = self->_titleView;
  v33 = ttyLocString();
  [(UITextView *)v32 setText:v33];

  v34 = self->_subtitleView;
  v35 = ttyLocString();
  [(UITextView *)v34 setText:v35];

LABEL_23:
  IsRTTNotificationContentExtension = Soft_AXProcessIsRTTNotificationContentExtension();
  if (!v4 || IsRTTNotificationContentExtension)
  {
    v56 = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    v56 = [MEMORY[0x277D75348] whiteColor];
  }

  v57 = v56;
  [(UITextView *)self->_titleView setTextColor:v56];
  [(UITextView *)self->_subtitleView setTextColor:v57];
  [(RTTUIServiceUpdateCell *)self adjustTextViewSize];
}

- (RTTUIServiceCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end