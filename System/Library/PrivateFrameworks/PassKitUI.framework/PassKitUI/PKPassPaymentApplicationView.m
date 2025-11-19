@interface PKPassPaymentApplicationView
- (PKPassPaymentApplicationView)initWithCoder:(id)a3;
- (PKPassPaymentApplicationView)initWithPass:(id)a3;
- (PKPassPaymentApplicationViewDelegate)delegate;
- (void)_selectedApplicationDidChange:(id)a3;
- (void)layoutSubviews;
- (void)setShowHeader:(BOOL)a3;
@end

@implementation PKPassPaymentApplicationView

- (PKPassPaymentApplicationView)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"This class is not NSCoding compliant"];

  return [(PKPassPaymentApplicationView *)self init];
}

- (PKPassPaymentApplicationView)initWithPass:(id)a3
{
  v5 = a3;
  v46.receiver = self;
  v46.super_class = PKPassPaymentApplicationView;
  v6 = [(PKPassPaymentApplicationView *)&v46 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, a3);
    v8 = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v7->_paymentService;
    v7->_paymentService = v8;

    if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      v10 = objc_alloc_init(PKPassPaymentSummaryHeaderView);
      headerView = v7->_headerView;
      v7->_headerView = v10;

      v12 = v7->_headerView;
      v13 = PKLocalizedPaymentString(&cfstr_PaymentAccount_1.isa);
      [(PKPassPaymentSummaryHeaderView *)v12 setPrimaryTitle:v13];

      [(PKPassPaymentApplicationView *)v7 addSubview:v7->_headerView];
      v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
      horizontalSeparator = v7->_horizontalSeparator;
      v7->_horizontalSeparator = v14;

      v16 = v7->_horizontalSeparator;
      v17 = [MEMORY[0x1E69DC888] separatorColor];
      [(UIView *)v16 setBackgroundColor:v17];

      [(PKPassPaymentApplicationView *)v7 addSubview:v7->_horizontalSeparator];
      v7->_showHeader = 1;
    }

    v18 = [(PKPaymentPass *)v7->_pass devicePaymentApplications];
    v19 = [v18 allObjects];

    v20 = [MEMORY[0x1E69DC668] sharedApplication];
    v21 = [v20 userInterfaceLayoutDirection] == 0;

    v22 = [v5 sortedPaymentApplications:v19 ascending:v21];

    v23 = v7->_paymentService;
    v24 = [v5 uniqueID];
    v25 = [(PKPaymentService *)v23 defaultPaymentApplicationForPassUniqueIdentifier:v24];
    selectedApplication = v7->_selectedApplication;
    v7->_selectedApplication = v25;

    v27 = v7->_selectedApplication;
    if (!v27 || ([(PKPaymentApplication *)v27 supportsContactlessPayment]& 1) == 0)
    {
      v28 = [(PKPaymentPass *)v7->_pass devicePrimaryContactlessPaymentApplication];
      v29 = v7->_selectedApplication;
      v7->_selectedApplication = v28;
    }

    if ([v22 count])
    {
      v45 = v5;
      v30 = [v22 copy];
      paymentApplications = v7->_paymentApplications;
      v7->_paymentApplications = v30;

      v32 = [(PKPaymentApplication *)v7->_selectedApplication applicationIdentifier];
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([(NSArray *)v7->_paymentApplications count])
      {
        v34 = 0;
        v35 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          v36 = [(NSArray *)v7->_paymentApplications objectAtIndexedSubscript:v34];
          v37 = [v36 applicationIdentifier];
          v38 = [v37 isEqualToString:v32];

          if (v38)
          {
            v35 = v34;
          }

          v39 = [v36 displayName];
          v40 = v39;
          if (v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = &stru_1F3BD7330;
          }

          [v33 addObject:v41];

          ++v34;
        }

        while (v34 < [(NSArray *)v7->_paymentApplications count]);
      }

      else
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v42 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:v33];
      segmentedControl = v7->_segmentedControl;
      v7->_segmentedControl = v42;

      [(UISegmentedControl *)v7->_segmentedControl setSelectedSegmentIndex:v35];
      [(UISegmentedControl *)v7->_segmentedControl setExclusiveTouch:1];
      [(UISegmentedControl *)v7->_segmentedControl addTarget:v7 action:sel__selectedApplicationDidChange_ forControlEvents:4096];
      [(PKPassPaymentApplicationView *)v7 addSubview:v7->_segmentedControl];

      v5 = v45;
    }
  }

  return v7;
}

- (void)setShowHeader:(BOOL)a3
{
  self->_showHeader = a3;
  if (a3)
  {
    [(PKPassPaymentApplicationView *)self addSubview:self->_headerView];
    [(PKPassPaymentApplicationView *)self addSubview:self->_horizontalSeparator];
  }

  else
  {
    [(PKPassPaymentSummaryHeaderView *)self->_headerView removeFromSuperview];
    [(UIView *)self->_horizontalSeparator removeFromSuperview];
  }

  [(PKPassPaymentApplicationView *)self setNeedsLayout];
}

- (void)_selectedApplicationDidChange:(id)a3
{
  v5 = self->_selectedApplication;
  v6 = -[NSArray objectAtIndexedSubscript:](self->_paymentApplications, "objectAtIndexedSubscript:", [a3 selectedSegmentIndex]);
  selectedApplication = self->_selectedApplication;
  self->_selectedApplication = v6;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      [(UISegmentedControl *)self->_segmentedControl setUserInteractionEnabled:0];
      v12 = objc_loadWeakRetained(&self->_delegate);
      v13 = self->_selectedApplication;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __62__PKPassPaymentApplicationView__selectedApplicationDidChange___block_invoke;
      v14[3] = &unk_1E8012FD0;
      v14[4] = self;
      v15 = v5;
      [v12 paymentApplicationView:self didSelectApplication:v13 completion:v14];
    }
  }
}

uint64_t __62__PKPassPaymentApplicationView__selectedApplicationDidChange___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    objc_storeStrong((*(a1 + 32) + 464), *(a1 + 40));
    [*(*(a1 + 32) + 424) setSelectedSegmentIndex:{objc_msgSend(*(*(a1 + 32) + 440), "indexOfObject:", *(*(a1 + 32) + 464))}];
  }

  v3 = *(*(a1 + 32) + 424);

  return [v3 setUserInteractionEnabled:1];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = PKPassPaymentApplicationView;
  [(PKPassPaymentApplicationView *)&v17 layoutSubviews];
  +[PKPassPaymentSummaryHeaderView preferredHeight];
  v4 = v3;
  [(PKPassPaymentApplicationView *)self bounds];
  Width = CGRectGetWidth(v18);
  v6 = PKUIGetMinScreenWidthType();
  v7 = -4.0;
  if (!v6)
  {
    v7 = -20.0;
  }

  v8 = Width + v7 * 2.0;
  headerView = self->_headerView;
  [(PKPassPaymentApplicationView *)self bounds];
  [(PKPassPaymentSummaryHeaderView *)headerView setFrame:0.0, 0.0];
  horizontalSeparator = self->_horizontalSeparator;
  if (PKUIGetMinScreenWidthType())
  {
    v11 = 4.0;
  }

  else
  {
    v11 = 20.0;
  }

  [(UIView *)horizontalSeparator setFrame:v11, v4, v8, PKUIPixelLength()];
  showHeader = self->_showHeader;
  v13 = 10.0;
  v14 = v4 + 10.0;
  segmentedControl = self->_segmentedControl;
  if (PKUIGetMinScreenWidthType())
  {
    v16 = 4.0;
  }

  else
  {
    v16 = 20.0;
  }

  if (showHeader)
  {
    v13 = v14;
  }

  [(UISegmentedControl *)self->_segmentedControl frame];
  [(UISegmentedControl *)segmentedControl setFrame:v16, v13, v8];
}

- (PKPassPaymentApplicationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end