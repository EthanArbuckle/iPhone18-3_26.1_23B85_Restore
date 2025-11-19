@interface CACBannerViewPresenter
- (CACBannerViewPresenter)initWithContainingView:(id)a3;
- (void)_hideBannerView;
- (void)dismissBannerView;
- (void)presentBannerViewWithText:(id)a3 type:(int64_t)a4 avoidingSystemAperature:(CGRect)a5;
- (void)presentBannerViewWithText:(id)a3 type:(int64_t)a4 avoidingSystemAperature:(CGRect)a5 duration:(double)a6;
@end

@implementation CACBannerViewPresenter

- (CACBannerViewPresenter)initWithContainingView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CACBannerViewPresenter;
  v6 = [(CACBannerViewPresenter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containingView, a3);
  }

  return v7;
}

- (void)_hideBannerView
{
  v3 = [(CACBannerViewPresenter *)self bannerView];
  [(CACBannerViewPresenter *)self setBannerView:0];
  if (v3)
  {
    v4 = MEMORY[0x277D75D18];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__CACBannerViewPresenter__hideBannerView__block_invoke;
    v7[3] = &unk_279CEB2D0;
    v8 = v3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__CACBannerViewPresenter__hideBannerView__block_invoke_2;
    v5[3] = &unk_279CEB760;
    v6 = v8;
    [v4 animateWithDuration:v7 animations:v5 completion:0.3];
  }
}

- (void)presentBannerViewWithText:(id)a3 type:(int64_t)a4 avoidingSystemAperature:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  [objc_opt_class() durationToDisplayMessageString:v12];
  [(CACBannerViewPresenter *)self presentBannerViewWithText:v12 type:a4 avoidingSystemAperature:x duration:y, width, height, v11];
}

- (void)presentBannerViewWithText:(id)a3 type:(int64_t)a4 avoidingSystemAperature:(CGRect)a5 duration:(double)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v83[3] = *MEMORY[0x277D85DE8];
  v13 = a3;
  if (a4 != 5)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideBannerView object:0];
    v14 = [(CACBannerViewPresenter *)self containingView];
    v15 = [v14 traitCollection];
    v16 = [v15 userInterfaceIdiom];

    if (v16 != 3)
    {
      v17 = [(CACBannerViewPresenter *)self bannerView];

      if (!v17)
      {
        v18 = objc_alloc_init(CACBannerView);
        [(CACBannerView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
        v19 = [(CACBannerViewPresenter *)self containingView];
        [v19 addSubview:v18];

        v73 = v18;
        [(CACBannerViewPresenter *)self setBannerView:v18];
        v84.origin.x = x;
        v84.origin.y = y;
        v84.size.width = width;
        v84.size.height = height;
        v75 = v13;
        if (CGRectIsEmpty(v84))
        {
          v20 = [(CACBannerViewPresenter *)self containingView];
          [v20 safeAreaInsets];
          v22 = v21;

          if (v22 == 0.0 || ([MEMORY[0x277D75418] currentDevice], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "userInterfaceIdiom"), v23, v25 = 0.0, v24 == 1))
          {
            v25 = 10.0;
          }

          v26 = [(CACBannerViewPresenter *)self bannerView];
          v27 = [v26 topAnchor];
          v28 = [(CACBannerViewPresenter *)self containingView];
          v29 = [v28 safeAreaLayoutGuide];
          v30 = [v29 topAnchor];
          v31 = [v27 constraintEqualToAnchor:v30 constant:v25];
        }

        else
        {
          v26 = [(CACBannerViewPresenter *)self bannerView];
          v27 = [v26 topAnchor];
          v28 = [(CACBannerViewPresenter *)self containingView];
          v29 = [v28 topAnchor];
          v85.origin.x = x;
          v85.origin.y = y;
          v85.size.width = width;
          v85.size.height = height;
          v31 = [v27 constraintEqualToAnchor:v29 constant:CGRectGetMaxY(v85) + 10.0];
        }

        v66 = v31;

        v67 = MEMORY[0x277CCAAD0];
        v83[0] = v31;
        v72 = [(CACBannerViewPresenter *)self containingView];
        v71 = [v72 safeAreaLayoutGuide];
        v69 = [v71 leadingAnchor];
        v70 = [(CACBannerViewPresenter *)self bannerView];
        v68 = [v70 leadingAnchor];
        v32 = [v69 constraintEqualToAnchor:v68 constant:-10.0];
        v83[1] = v32;
        v33 = [(CACBannerViewPresenter *)self containingView];
        v34 = [v33 safeAreaLayoutGuide];
        v35 = [v34 trailingAnchor];
        v36 = [(CACBannerViewPresenter *)self bannerView];
        v37 = [v36 trailingAnchor];
        v38 = [v35 constraintEqualToAnchor:v37 constant:10.0];
        v83[2] = v38;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
        [v67 activateConstraints:v39];

        v13 = v75;
        v17 = 0;
      }

      v40 = +[CACPreferences sharedPreferences];
      v41 = [v40 additionalLoggingForCommands];

      if (a4 <= 1)
      {
        if (a4)
        {
          if (a4 != 1)
          {
            goto LABEL_35;
          }

          v42 = [(CACBannerViewPresenter *)self bannerView];
          [v42 setText:v13];

          v43 = [(CACBannerViewPresenter *)self bannerView];
          [v43 setSymbolImage:@"exclamationmark.triangle.fill"];

          if (!v41)
          {
            goto LABEL_35;
          }

          v44 = CACLogAdditionalLogging();
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            goto LABEL_34;
          }

          *buf = 138543362;
          v82 = v13;
          v45 = "Banner - Error: %{public}@";
          goto LABEL_27;
        }
      }

      else
      {
        if (a4 == 2)
        {
          v48 = [(CACBannerViewPresenter *)self bannerView];
          [v48 setText:v13];

          v49 = [(CACBannerViewPresenter *)self bannerView];
          [v49 setSymbolImage:0];

          if (!v41)
          {
            goto LABEL_35;
          }

          v44 = CACLogAdditionalLogging();
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            goto LABEL_34;
          }

          *buf = 138543362;
          v82 = v13;
          v45 = "Banner - Command: %{public}@";
LABEL_27:
          _os_log_impl(&dword_26B354000, v44, OS_LOG_TYPE_INFO, v45, buf, 0xCu);
LABEL_34:

          goto LABEL_35;
        }

        if (a4 == 3)
        {
          v50 = [(CACBannerViewPresenter *)self bannerView];
          [v50 setText:v13];

          v51 = [(CACBannerViewPresenter *)self bannerView];
          [v51 setSymbolImage:0];

          if (v41)
          {
            v52 = CACLogAdditionalLogging();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v82 = v13;
              _os_log_impl(&dword_26B354000, v52, OS_LOG_TYPE_INFO, "Banner - Title: %{public}@", buf, 0xCu);
            }
          }

          v44 = [v13 componentsSeparatedByString:@"\n"];
          if ([v44 count]>= 2)
          {
            v53 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v13];
            v54 = [v44 firstObject];
            v55 = [v54 length];

            v56 = [v44 firstObject];
            v74 = [v56 length];
            v57 = [v13 length];
            [v44 firstObject];
            v58 = v76 = v17;
            v59 = v57 - [v58 length];

            v60 = objc_alloc_init(MEMORY[0x277D74240]);
            [v60 setAlignment:1];
            v61 = [MEMORY[0x277D75520] defaultMetrics];
            [v61 scaledValueForValue:4.0];
            [v60 setLineSpacing:?];

            [v53 addAttribute:*MEMORY[0x277D74118] value:v60 range:{0, objc_msgSend(v13, "length")}];
            v79 = *MEMORY[0x277D74160];
            v80 = &unk_287BEFEE8;
            v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
            [v53 addAttributes:v62 range:{0, v55}];

            v63 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
            [v53 addAttribute:*MEMORY[0x277D740A8] value:v63 range:{v74, v59}];
            v64 = [(CACBannerViewPresenter *)self bannerView];
            [v64 setAttributedText:v53];

            v17 = v76;
          }

          goto LABEL_34;
        }

        if (a4 != 4)
        {
LABEL_35:
          if (v17)
          {
            [(CACBannerViewPresenter *)self performSelector:sel__hideBannerView withObject:0 afterDelay:a6];
          }

          else
          {
            v65 = [(CACBannerViewPresenter *)self bannerView];
            [v65 setAlpha:0.0];

            v78[0] = MEMORY[0x277D85DD0];
            v78[1] = 3221225472;
            v78[2] = __90__CACBannerViewPresenter_presentBannerViewWithText_type_avoidingSystemAperature_duration___block_invoke;
            v78[3] = &unk_279CEB2D0;
            v78[4] = self;
            v77[0] = MEMORY[0x277D85DD0];
            v77[1] = 3221225472;
            v77[2] = __90__CACBannerViewPresenter_presentBannerViewWithText_type_avoidingSystemAperature_duration___block_invoke_2;
            v77[3] = &unk_279CEB788;
            v77[4] = self;
            *&v77[5] = a6;
            [MEMORY[0x277D75D18] animateWithDuration:v78 animations:v77 completion:0.3];
          }

          goto LABEL_38;
        }
      }

      v46 = [(CACBannerViewPresenter *)self bannerView];
      [v46 setText:v13];

      v47 = [(CACBannerViewPresenter *)self bannerView];
      [v47 setSymbolImage:@"info.circle.fill"];

      if (!v41)
      {
        goto LABEL_35;
      }

      v44 = CACLogAdditionalLogging();
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v82 = v13;
      v45 = "Banner - Hint: %{public}@";
      goto LABEL_27;
    }
  }

LABEL_38:
}

void __90__CACBannerViewPresenter_presentBannerViewWithText_type_avoidingSystemAperature_duration___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) bannerView];
  [v1 setAlpha:1.0];
}

- (void)dismissBannerView
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideBannerView object:0];

  [(CACBannerViewPresenter *)self _hideBannerView];
}

@end