@interface VTUIPagedLabel
- (VTUIPagedLabel)initWithFrame:(CGRect)a3 isProximity:(BOOL)a4 forEnrollmentStyle:(int64_t)a5 withIntelligentLight:(BOOL)a6;
- (void)clear;
- (void)setupViews;
- (void)slideInText:(id)a3 afterDelay:(double)a4 completion:(id)a5;
@end

@implementation VTUIPagedLabel

- (VTUIPagedLabel)initWithFrame:(CGRect)a3 isProximity:(BOOL)a4 forEnrollmentStyle:(int64_t)a5 withIntelligentLight:(BOOL)a6
{
  v12.receiver = self;
  v12.super_class = VTUIPagedLabel;
  v9 = [(VTUIPagedLabel *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v10 = v9;
  if (v9)
  {
    v9->_isProximity = a4;
    v9->_enrollmentStyle = a5;
    v9->_hasIntelligentLight = a6;
    [(VTUIPagedLabel *)v9 setupViews];
  }

  return v10;
}

- (void)setupViews
{
  v89 = +[VTUIStyle sharedStyle];
  v3 = objc_alloc_init(MEMORY[0x277D759D8]);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setAutoresizesSubviews:0];
  [(UIScrollView *)self->_scrollView setScrollEnabled:0];
  [(UIScrollView *)self->_scrollView setClipsToBounds:0];
  [(VTUIPagedLabel *)self addSubview:self->_scrollView];
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  [(UIScrollView *)self->_scrollView bounds];
  v6 = [v5 initWithFrame:?];
  instructionContainerLeft = self->_instructionContainerLeft;
  self->_instructionContainerLeft = v6;

  [(UIView *)self->_instructionContainerLeft setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_instructionContainerLeft setAutoresizesSubviews:0];
  [(UIScrollView *)self->_scrollView addSubview:self->_instructionContainerLeft];
  v8 = objc_alloc(MEMORY[0x277D75D18]);
  [(UIScrollView *)self->_scrollView bounds];
  v9 = [v8 initWithFrame:?];
  instructionContainerRight = self->_instructionContainerRight;
  self->_instructionContainerRight = v9;

  [(UIView *)self->_instructionContainerRight setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_instructionContainerRight setAutoresizesSubviews:0];
  [(UIScrollView *)self->_scrollView addSubview:self->_instructionContainerRight];
  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  instructionLabelLeft = self->_instructionLabelLeft;
  self->_instructionLabelLeft = v11;

  [(UILabel *)self->_instructionLabelLeft setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_instructionLabelLeft setNumberOfLines:0];
  [(UILabel *)self->_instructionLabelLeft setLineBreakMode:0];
  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  instructionLabelRight = self->_instructionLabelRight;
  self->_instructionLabelRight = v13;

  [(UILabel *)self->_instructionLabelRight setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_instructionLabelRight setNumberOfLines:0];
  [(UILabel *)self->_instructionLabelRight setLineBreakMode:0];
  if (self->_hasIntelligentLight)
  {
    v15 = self->_instructionLabelLeft;
    v16 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v15 setTextColor:v16];

    v17 = self->_instructionLabelRight;
    v18 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v17 setTextColor:v18];
  }

  if (self->_isProximity)
  {
    v19 = self->_instructionLabelLeft;
    if (self->_enrollmentStyle == 1)
    {
      v20 = [v89 PRXheaderFont];
      [(UILabel *)v19 setFont:v20];

      v21 = self->_instructionLabelLeft;
      v22 = [v89 PRXheaderColor];
      [(UILabel *)v21 setTextColor:v22];

      v23 = self->_instructionLabelRight;
      v24 = [v89 PRXheaderFont];
      [(UILabel *)v23 setFont:v24];

      v25 = self->_instructionLabelRight;
      [v89 PRXheaderColor];
    }

    else
    {
      v30 = [v89 proxInstructionFont];
      [(UILabel *)v19 setFont:v30];

      v31 = self->_instructionLabelLeft;
      v32 = [v89 proxInstructionColor];
      [(UILabel *)v31 setTextColor:v32];

      v33 = self->_instructionLabelRight;
      v34 = [v89 proxInstructionFont];
      [(UILabel *)v33 setFont:v34];

      v25 = self->_instructionLabelRight;
      [v89 proxInstructionColor];
    }
    v29 = ;
    [(UILabel *)v25 setTextColor:v29];
  }

  else
  {
    v26 = self->_instructionLabelLeft;
    v27 = [v89 instructionLabelFont];
    [(UILabel *)v26 setFont:v27];

    v28 = self->_instructionLabelRight;
    v29 = [v89 instructionLabelFont];
    [(UILabel *)v28 setFont:v29];
  }

  [(UIView *)self->_instructionContainerLeft addSubview:self->_instructionLabelLeft];
  [(UIView *)self->_instructionContainerRight addSubview:self->_instructionLabelRight];
  v35 = MEMORY[0x277CCAAD0];
  v36 = self->_instructionLabelLeft;
  v37 = self->_instructionContainerLeft;
  if (self->_isProximity)
  {
    [v89 proxPaddingFromTop];
    v39 = [v35 constraintWithItem:v36 attribute:3 relatedBy:0 toItem:v37 attribute:3 multiplier:1.0 constant:v38];
    [(VTUIPagedLabel *)self addConstraint:v39];

    v40 = MEMORY[0x277CCAAD0];
    v41 = self->_instructionLabelRight;
    v42 = self->_instructionContainerRight;
    [v89 proxPaddingFromTop];
    v44 = [v40 constraintWithItem:v41 attribute:3 relatedBy:0 toItem:v42 attribute:3 multiplier:1.0 constant:v43];
    [(VTUIPagedLabel *)self addConstraint:v44];

    v45 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_scrollView attribute:7 relatedBy:0 toItem:self attribute:7 multiplier:1.0 constant:0.0];
    [(VTUIPagedLabel *)self addConstraint:v45];

    v46 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_scrollView attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [(VTUIPagedLabel *)self addConstraint:v46];
  }

  else
  {
    [v89 titleBaselineOffsetFromTop];
    v48 = [v35 constraintWithItem:v36 attribute:12 relatedBy:0 toItem:v37 attribute:3 multiplier:1.0 constant:v47];
    [(VTUIPagedLabel *)self addConstraint:v48];

    v49 = MEMORY[0x277CCAAD0];
    v50 = self->_instructionLabelRight;
    v51 = self->_instructionContainerRight;
    [v89 titleBaselineOffsetFromTop];
    v53 = [v49 constraintWithItem:v50 attribute:12 relatedBy:0 toItem:v51 attribute:3 multiplier:1.0 constant:v52];
    [(VTUIPagedLabel *)self addConstraint:v53];

    v54 = MEMORY[0x277CCAAD0];
    v46 = _NSDictionaryOfVariableBindings(&cfstr_Scrollview.isa, self->_scrollView, 0);
    v55 = [v54 constraintsWithVisualFormat:@"H:|-[_scrollView]-|" options:0 metrics:0 views:v46];
    [(VTUIPagedLabel *)self addConstraints:v55];
  }

  v56 = MEMORY[0x277CCAAD0];
  v57 = _NSDictionaryOfVariableBindings(&cfstr_Scrollview.isa, self->_scrollView, 0);
  v58 = [v56 constraintsWithVisualFormat:@"V:|[_scrollView]|" options:0 metrics:0 views:v57];
  [(VTUIPagedLabel *)self addConstraints:v58];

  v59 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_instructionContainerLeft attribute:7 relatedBy:0 toItem:self->_scrollView attribute:7 multiplier:1.0 constant:0.0];
  [(VTUIPagedLabel *)self addConstraint:v59];

  v60 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_instructionContainerRight attribute:7 relatedBy:0 toItem:self->_scrollView attribute:7 multiplier:1.0 constant:0.0];
  [(VTUIPagedLabel *)self addConstraint:v60];

  v61 = self->_scrollView;
  v62 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_instructionContainerLeft attribute:8 relatedBy:0 toItem:v61 attribute:8 multiplier:1.0 constant:0.0];
  [(UIScrollView *)v61 addConstraint:v62];

  v63 = self->_scrollView;
  v64 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_instructionContainerRight attribute:8 relatedBy:0 toItem:v63 attribute:8 multiplier:1.0 constant:0.0];
  [(UIScrollView *)v63 addConstraint:v64];

  v65 = self->_scrollView;
  v66 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_instructionContainerLeft attribute:3 relatedBy:0 toItem:v65 attribute:3 multiplier:1.0 constant:0.0];
  [(UIScrollView *)v65 addConstraint:v66];

  v67 = self->_scrollView;
  v68 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_instructionContainerRight attribute:3 relatedBy:0 toItem:v67 attribute:3 multiplier:1.0 constant:0.0];
  [(UIScrollView *)v67 addConstraint:v68];

  v69 = self->_scrollView;
  v70 = MEMORY[0x277CCAAD0];
  v71 = _NSDictionaryOfVariableBindings(&cfstr_Instructioncon.isa, self->_instructionContainerLeft, self->_instructionContainerRight, 0);
  v72 = [v70 constraintsWithVisualFormat:@"H:|[_instructionContainerLeft][_instructionContainerRight]|" options:0 metrics:0 views:v71];
  [(UIScrollView *)v69 addConstraints:v72];

  v73 = self->_instructionContainerLeft;
  v74 = MEMORY[0x277CCAAD0];
  v75 = _NSDictionaryOfVariableBindings(&cfstr_Instructionlab.isa, self->_instructionLabelLeft, 0);
  v76 = [v74 constraintsWithVisualFormat:@"H:|[_instructionLabelLeft]|" options:0 metrics:0 views:v75];
  [(UIView *)v73 addConstraints:v76];

  v77 = self->_instructionContainerLeft;
  v78 = MEMORY[0x277CCAAD0];
  v79 = _NSDictionaryOfVariableBindings(&cfstr_Instructionlab.isa, self->_instructionLabelLeft, 0);
  v80 = [v78 constraintsWithVisualFormat:@"V:|-(>=0)-[_instructionLabelLeft]-(>=0)-|" options:0 metrics:0 views:v79];
  [(UIView *)v77 addConstraints:v80];

  v81 = self->_instructionContainerRight;
  v82 = MEMORY[0x277CCAAD0];
  v83 = _NSDictionaryOfVariableBindings(&cfstr_Instructionlab_0.isa, self->_instructionLabelRight, 0);
  v84 = [v82 constraintsWithVisualFormat:@"H:|[_instructionLabelRight]|" options:0 metrics:0 views:v83];
  [(UIView *)v81 addConstraints:v84];

  v85 = self->_instructionContainerRight;
  v86 = MEMORY[0x277CCAAD0];
  v87 = _NSDictionaryOfVariableBindings(&cfstr_Instructionlab_0.isa, self->_instructionLabelRight, 0);
  v88 = [v86 constraintsWithVisualFormat:@"V:|-(>=0)-[_instructionLabelRight]-(>=0)-|" options:0 metrics:0 views:v87];
  [(UIView *)v85 addConstraints:v88];
}

- (void)slideInText:(id)a3 afterDelay:(double)a4 completion:(id)a5
{
  v34[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(VTUIPagedLabel *)self _shouldReverseLayoutDirection];
  if (v10)
  {
    [(UIView *)self->_instructionContainerLeft frame];
  }

  else
  {
    v11 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
  }

  [(UIScrollView *)self->_scrollView setContentOffset:v11, v12];
  [(UIScrollView *)self->_scrollView setHidden:0];
  [(UIView *)self->_instructionContainerRight setAlpha:0.0];
  v13 = +[VTUIStyle sharedStyle];
  v14 = objc_alloc_init(MEMORY[0x277D74240]);
  [v14 setAlignment:1];
  [v13 headerTitleLinespacing];
  [v14 setLineSpacing:?];
  v33 = *MEMORY[0x277D74118];
  v34[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  if (v8)
  {
    v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8 attributes:v15];
  }

  else
  {
    v16 = 0;
  }

  [(UILabel *)self->_instructionLabelRight setAttributedText:v16];
  [(UILabel *)self->_instructionLabelLeft setAlpha:1.0];
  [(UIScrollView *)self->_scrollView setNeedsLayout];
  [(UIScrollView *)self->_scrollView layoutIfNeeded];
  if (v10)
  {
    v17 = *MEMORY[0x277CBF348];
    v18 = *(MEMORY[0x277CBF348] + 8);
    [(UIView *)self->_instructionContainerLeft frame];
  }

  else
  {
    [(UIView *)self->_instructionContainerRight frame];
    v17 = v21;
    v18 = v22;
    v19 = *MEMORY[0x277CBF348];
    v20 = *(MEMORY[0x277CBF348] + 8);
  }

  v23 = MEMORY[0x277D75D18];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __52__VTUIPagedLabel_slideInText_afterDelay_completion___block_invoke;
  v32[3] = &unk_279E549B8;
  v32[4] = self;
  v32[5] = v17;
  v32[6] = v18;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __52__VTUIPagedLabel_slideInText_afterDelay_completion___block_invoke_2;
  v27[3] = &unk_279E549E0;
  v27[4] = self;
  v28 = v16;
  v30 = v19;
  v31 = v20;
  v29 = v9;
  v24 = v9;
  v25 = v16;
  [v23 animateWithDuration:0 delay:v32 options:v27 animations:0.3 completion:a4];

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __52__VTUIPagedLabel_slideInText_afterDelay_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setContentOffset:{*(a1 + 40), *(a1 + 48)}];
  [*(*(a1 + 32) + 416) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 424);

  return [v2 setAlpha:1.0];
}

uint64_t __52__VTUIPagedLabel_slideInText_afterDelay_completion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setAttributedText:*(a1 + 40)];
  [*(*(a1 + 32) + 416) setAlpha:1.0];
  [*(*(a1 + 32) + 424) setAlpha:0.0];
  [*(*(a1 + 32) + 408) setContentOffset:{*(a1 + 56), *(a1 + 64)}];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)clear
{
  if ([(VTUIPagedLabel *)self _shouldReverseLayoutDirection])
  {
    [(UIView *)self->_instructionContainerLeft frame];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = *MEMORY[0x277CBF348];
    v6 = *(MEMORY[0x277CBF348] + 8);
  }

  [(UIScrollView *)self->_scrollView setHidden:1];
  v7 = [(UIScrollView *)self->_scrollView layer];
  [v7 removeAllAnimations];

  [(UIScrollView *)self->_scrollView setContentOffset:v4, v6];
  [(UIView *)self->_instructionContainerLeft setAlpha:1.0];
  [(UIView *)self->_instructionContainerRight setAlpha:0.0];
  [(UILabel *)self->_instructionLabelLeft setAttributedText:0];
  instructionLabelRight = self->_instructionLabelRight;

  [(UILabel *)instructionLabelRight setAttributedText:0];
}

@end