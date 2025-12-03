@interface VSFooterMessageView
- (VSFooterMessageView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width;
- (void)dealloc;
@end

@implementation VSFooterMessageView

- (VSFooterMessageView)initWithSpecifier:(id)specifier
{
  v75 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  VSRequireMainThread();
  v5 = [(VSFooterMessageView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = [[VSFontCenter alloc] initWithTraitEnvironment:v5];
    fontCenter = v5->_fontCenter;
    v5->_fontCenter = v6;

    v8 = [specifierCopy propertyForKey:@"VSFooterPrimaryMessage"];
    v9 = [v8 copy];
    primaryMessage = v5->_primaryMessage;
    v5->_primaryMessage = v9;

    v11 = [specifierCopy propertyForKey:@"VSFooterSecondaryMessage"];
    v12 = [v11 copy];
    secondaryMessage = v5->_secondaryMessage;
    v5->_secondaryMessage = v12;

    v14 = [specifierCopy propertyForKey:@"VSFooterTertiaryMessage"];
    v15 = [v14 copy];
    tertiaryMessage = v5->_tertiaryMessage;
    v5->_tertiaryMessage = v15;

    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v66 = objc_alloc_init(MEMORY[0x277D756B8]);
    v67 = v17;
    v73[0] = v17;
    v73[1] = v66;
    v65 = objc_alloc_init(MEMORY[0x277D756B8]);
    v73[2] = v65;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
    v19 = [v18 countByEnumeratingWithState:&v68 objects:v74 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v69;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v69 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v68 + 1) + 8 * i);
          [v23 setNumberOfLines:0];
          [v23 setTextAlignment:1];
          [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(VSFooterMessageView *)v5 addSubview:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v68 objects:v74 count:16];
      }

      while (v20);
    }

    [v67 setText:v5->_primaryMessage];
    [v66 setText:v5->_secondaryMessage];
    [v65 setText:v5->_tertiaryMessage];
    v24 = v5->_fontCenter;
    v25 = VSMainConcurrencyBindingOptions();
    [v67 vs_bind:@"font" toObject:v24 withKeyPath:@"bodyFont" options:v25];

    v26 = v5->_fontCenter;
    v27 = VSMainConcurrencyBindingOptions();
    [v66 vs_bind:@"font" toObject:v26 withKeyPath:@"footnoteFont" options:v27];

    v28 = v5->_fontCenter;
    v29 = VSMainConcurrencyBindingOptions();
    [v65 vs_bind:@"font" toObject:v28 withKeyPath:@"footnoteFont" options:v29];

    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    topAnchor = [v67 topAnchor];
    topAnchor2 = [(VSFooterMessageView *)v5 topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v30 addObject:v33];

    bottomAnchor = [v65 bottomAnchor];
    bottomAnchor2 = [(VSFooterMessageView *)v5 bottomAnchor];
    v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v30 addObject:v36];

    lastBaselineAnchor = [v67 lastBaselineAnchor];
    firstBaselineAnchor = [v66 firstBaselineAnchor];
    v39 = [lastBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-48.0];
    [v30 addObject:v39];

    lastBaselineAnchor2 = [v66 lastBaselineAnchor];
    firstBaselineAnchor2 = [v65 firstBaselineAnchor];
    v42 = [lastBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor2 constant:-43.0];
    [v30 addObject:v42];

    centerXAnchor = [v67 centerXAnchor];
    centerXAnchor2 = [(VSFooterMessageView *)v5 centerXAnchor];
    v45 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v30 addObject:v45];

    centerXAnchor3 = [v66 centerXAnchor];
    centerXAnchor4 = [(VSFooterMessageView *)v5 centerXAnchor];
    v48 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v30 addObject:v48];

    centerXAnchor5 = [v65 centerXAnchor];
    centerXAnchor6 = [(VSFooterMessageView *)v5 centerXAnchor];
    v51 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v30 addObject:v51];

    widthAnchor = [v67 widthAnchor];
    widthAnchor2 = [(VSFooterMessageView *)v5 widthAnchor];
    v54 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 constant:-40.0];
    [v30 addObject:v54];

    widthAnchor3 = [v66 widthAnchor];
    widthAnchor4 = [(VSFooterMessageView *)v5 widthAnchor];
    v57 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4 constant:-40.0];
    [v30 addObject:v57];

    widthAnchor5 = [v65 widthAnchor];
    widthAnchor6 = [(VSFooterMessageView *)v5 widthAnchor];
    v60 = [widthAnchor5 constraintLessThanOrEqualToAnchor:widthAnchor6 constant:-40.0];
    [v30 addObject:v60];

    [MEMORY[0x277CCAAD0] activateConstraints:v30];
    v72 = objc_opt_class();
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
    v62 = [(VSFooterMessageView *)v5 registerForTraitChanges:v61 withHandler:&__block_literal_global_17];
  }

  v63 = *MEMORY[0x277D85DE8];
  return v5;
}

void __41__VSFooterMessageView_initWithSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 fontCenter];
  v3 = [v2 traitCollection];

  [v4 setTraitCollection:v3];
}

- (void)dealloc
{
  VSRequireMainThread();
  v3.receiver = self;
  v3.super_class = VSFooterMessageView;
  [(VSFooterMessageView *)&v3 dealloc];
}

- (double)preferredHeightForWidth:(double)width
{
  LODWORD(v3) = 1144766464;
  LODWORD(v4) = 1.0;
  [(VSFooterMessageView *)self systemLayoutSizeFittingSize:width withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:v3, v4];
  return v5;
}

@end