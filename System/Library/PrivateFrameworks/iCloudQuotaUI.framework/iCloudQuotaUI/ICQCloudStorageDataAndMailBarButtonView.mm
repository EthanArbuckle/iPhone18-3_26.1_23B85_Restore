@interface ICQCloudStorageDataAndMailBarButtonView
+ (id)barButtonItemWithData:(id)a3 andMail:(id)a4;
- (ICQCloudStorageDataAndMailBarButtonView)initWithData:(id)a3 andMail:(id)a4;
- (void)layoutSubviews;
- (void)sizeToFit;
@end

@implementation ICQCloudStorageDataAndMailBarButtonView

+ (id)barButtonItemWithData:(id)a3 andMail:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ICQCloudStorageDataAndMailBarButtonView alloc] initWithData:v6 andMail:v5];

  [(ICQCloudStorageDataAndMailBarButtonView *)v7 setNeedsLayout];
  [(ICQCloudStorageDataAndMailBarButtonView *)v7 layoutIfNeeded];
  [(ICQCloudStorageDataAndMailBarButtonView *)v7 sizeToFit];
  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v7];

  return v8;
}

- (ICQCloudStorageDataAndMailBarButtonView)initWithData:(id)a3 andMail:(id)a4
{
  v6 = a3;
  v7 = a4;
  v38.receiver = self;
  v38.super_class = ICQCloudStorageDataAndMailBarButtonView;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [(ICQCloudStorageDataAndMailBarButtonView *)&v38 initWithFrame:*MEMORY[0x277CBF3A0], v9, v10, v11];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
    data = v12->_data;
    v12->_data = v13;

    v15 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v12->_data setFont:v15];

    v16 = PSToolbarLabelsTextColor();
    [(UILabel *)v12->_data setTextColor:v16];

    v17 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v12->_data setBackgroundColor:v17];

    [(UILabel *)v12->_data setTextAlignment:1];
    [(UILabel *)v12->_data setLineBreakMode:4];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"STORAGE_LABEL" value:&stru_28844FC60 table:@"CloudGroup"];
    [(UILabel *)v12->_data setText:v19];

    [(UILabel *)v12->_data sizeToFit];
    [(ICQCloudStorageDataAndMailBarButtonView *)v12 addSubview:v12->_data];
    v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
    dataSizes = v12->_dataSizes;
    v12->_dataSizes = v20;

    v22 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v12->_dataSizes setFont:v22];

    v23 = PSToolbarLabelsTextColor();
    [(UILabel *)v12->_dataSizes setTextColor:v23];

    v24 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v12->_dataSizes setBackgroundColor:v24];

    [(UILabel *)v12->_dataSizes setTextAlignment:1];
    [(UILabel *)v12->_dataSizes setLineBreakMode:4];
    [(UILabel *)v12->_dataSizes setText:v6];
    [(UILabel *)v12->_dataSizes sizeToFit];
    [(ICQCloudStorageDataAndMailBarButtonView *)v12 addSubview:v12->_dataSizes];
    v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
    mail = v12->_mail;
    v12->_mail = v25;

    v27 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v12->_mail setFont:v27];

    v28 = PSToolbarLabelsTextColor();
    [(UILabel *)v12->_mail setTextColor:v28];

    v29 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v12->_mail setBackgroundColor:v29];

    [(UILabel *)v12->_mail setTextAlignment:1];
    [(UILabel *)v12->_mail setLineBreakMode:4];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"MAIL_LABEL" value:&stru_28844FC60 table:@"CloudGroup"];
    [(UILabel *)v12->_mail setText:v31];

    [(UILabel *)v12->_mail sizeToFit];
    [(ICQCloudStorageDataAndMailBarButtonView *)v12 addSubview:v12->_mail];
    v32 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
    mailSizes = v12->_mailSizes;
    v12->_mailSizes = v32;

    v34 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v12->_mailSizes setFont:v34];

    v35 = PSToolbarLabelsTextColor();
    [(UILabel *)v12->_mailSizes setTextColor:v35];

    v36 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v12->_mailSizes setBackgroundColor:v36];

    [(UILabel *)v12->_mailSizes setTextAlignment:1];
    [(UILabel *)v12->_mailSizes setLineBreakMode:4];
    [(UILabel *)v12->_mailSizes setText:v7];
    [(UILabel *)v12->_mailSizes sizeToFit];
    [(ICQCloudStorageDataAndMailBarButtonView *)v12 addSubview:v12->_mailSizes];
  }

  return v12;
}

- (void)sizeToFit
{
  [(UILabel *)self->_mail frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_mailSizes frame];
  v37.origin.x = v11;
  v37.origin.y = v12;
  v37.size.width = v13;
  v37.size.height = v14;
  v32.origin.x = v4;
  v32.origin.y = v6;
  v32.size.width = v8;
  v32.size.height = v10;
  v33 = CGRectUnion(v32, v37);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  [(UILabel *)self->_data frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(UILabel *)self->_dataSizes frame];
  v38.origin.x = v27;
  v38.origin.y = v28;
  v38.size.width = v29;
  v38.size.height = v30;
  v34.origin.x = v20;
  v34.origin.y = v22;
  v34.size.width = v24;
  v34.size.height = v26;
  v39 = CGRectUnion(v34, v38);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v36 = CGRectUnion(v35, v39);

  [(ICQCloudStorageDataAndMailBarButtonView *)self setBounds:v36.origin.x, v36.origin.y, v36.size.width, v36.size.height];
}

- (void)layoutSubviews
{
  [(UILabel *)self->_data frame];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_dataSizes frame];
  v8 = v7;
  v27 = v9;
  [(UILabel *)self->_mail frame];
  v11 = v10;
  v24 = v12;
  [(UILabel *)self->_mailSizes frame];
  v14 = v13;
  v25 = v8;
  v26 = v15;
  v23 = v13;
  if (v4 + 2.0 + v8 >= v11 + 2.0 + v13)
  {
    v16 = v4 + 2.0 + v8;
  }

  else
  {
    v16 = v11 + 2.0 + v13;
  }

  v17 = floor((v8 + v16 - v4 + 2.0) * 0.5);
  v29.origin.y = 0.0;
  v29.origin.x = v17;
  v29.size.width = v4;
  v29.size.height = v6;
  v22 = CGRectGetMaxX(v29) + 2.0;
  v30.origin.y = 0.0;
  v30.origin.x = v17;
  v30.size.width = v4;
  v30.size.height = v6;
  v18 = CGRectGetMaxY(v30) + -2.0;
  v19 = floor((v14 + v16 - v11 + 2.0) * 0.5);
  v31.origin.x = v19;
  v31.origin.y = v18;
  v31.size.width = v11;
  v31.size.height = v24;
  v20 = CGRectGetMaxX(v31) + 2.0;
  [(UILabel *)self->_data setFrame:v17, 0.0, v4, v6];
  [(UILabel *)self->_dataSizes setFrame:v22, 0.0, v25, v27];
  [(UILabel *)self->_mail setFrame:v19, v18, v11, v24];
  mailSizes = self->_mailSizes;

  [(UILabel *)mailSizes setFrame:v20, v18, v23, v26];
}

@end