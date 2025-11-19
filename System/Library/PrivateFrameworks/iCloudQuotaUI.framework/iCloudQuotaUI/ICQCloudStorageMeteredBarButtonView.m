@interface ICQCloudStorageMeteredBarButtonView
+ (id)barButtonItemWithString:(id)a3 andPercentUsed:(double)a4;
- (ICQCloudStorageMeteredBarButtonView)initWithString:(id)a3 andPercentUsed:(double)a4;
- (void)layoutSubviews;
- (void)sizeToFit;
@end

@implementation ICQCloudStorageMeteredBarButtonView

+ (id)barButtonItemWithString:(id)a3 andPercentUsed:(double)a4
{
  v5 = a3;
  v6 = [[ICQCloudStorageMeteredBarButtonView alloc] initWithString:v5 andPercentUsed:a4];

  [(ICQCloudStorageMeteredBarButtonView *)v6 setNeedsLayout];
  [(ICQCloudStorageMeteredBarButtonView *)v6 layoutIfNeeded];
  [(ICQCloudStorageMeteredBarButtonView *)v6 sizeToFit];
  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v6];

  return v7;
}

- (ICQCloudStorageMeteredBarButtonView)initWithString:(id)a3 andPercentUsed:(double)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = ICQCloudStorageMeteredBarButtonView;
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  v11 = [(ICQCloudStorageMeteredBarButtonView *)&v24 initWithFrame:*MEMORY[0x277CBF3A0], v8, v9, v10];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    storageString = v11->_storageString;
    v11->_storageString = v12;

    v14 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v11->_storageString setFont:v14];

    v15 = PSToolbarLabelsTextColor();
    [(UILabel *)v11->_storageString setTextColor:v15];

    v16 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v11->_storageString setBackgroundColor:v16];

    [(UILabel *)v11->_storageString setTextAlignment:1];
    [(UILabel *)v11->_storageString setLineBreakMode:4];
    [(UILabel *)v11->_storageString setText:v6];
    [(UILabel *)v11->_storageString sizeToFit];
    [(ICQCloudStorageMeteredBarButtonView *)v11 addSubview:v11->_storageString];
    v11->_percentUsed = fmin(a4, 1.0);
    v17 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:1];
    progressBar = v11->_progressBar;
    v11->_progressBar = v17;

    v19 = v11->_progressBar;
    v20 = [MEMORY[0x277D75348] lightGrayColor];
    [(UIProgressView *)v19 setTrackTintColor:v20];

    *&v21 = a4;
    [(UIProgressView *)v11->_progressBar setProgress:v21];
    if (v11->_percentUsed >= 0.949999988)
    {
      v22 = [MEMORY[0x277D75348] redColor];
      [(UIProgressView *)v11->_progressBar setProgressTintColor:v22];
    }

    [(ICQCloudStorageMeteredBarButtonView *)v11 addSubview:v11->_progressBar];
  }

  return v11;
}

- (void)layoutSubviews
{
  [(ICQCloudStorageMeteredBarButtonView *)self bounds];
  v4 = v3;
  [(UILabel *)self->_storageString frame];
  v6 = v5;
  v7 = v4;
  v8 = ceilf(v7);
  v9 = v8;
  v10 = floor((282.0 - v8) * 0.5);
  if (v8 >= 282.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v10;
  }

  v12 = floor((v9 + -282.0) * 0.5);
  if (v8 >= 282.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  [(UILabel *)self->_storageString setFrame:v11, 0.0, v9, v5];
  [(UIProgressView *)self->_progressBar frame];
  v15 = v14;
  v19.origin.y = 0.0;
  v19.origin.x = v11;
  v19.size.width = v9;
  v19.size.height = v6;
  MaxY = CGRectGetMaxY(v19);
  progressBar = self->_progressBar;

  [(UIProgressView *)progressBar setFrame:v13, MaxY + 4.0, 282.0, v15];
}

- (void)sizeToFit
{
  [(UIProgressView *)self->_progressBar frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_storageString frame];
  v18.origin.x = v11;
  v18.origin.y = v12;
  v18.size.width = v13;
  v18.size.height = v14;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  v17 = CGRectUnion(v16, v18);

  [(ICQCloudStorageMeteredBarButtonView *)self setBounds:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];
}

@end