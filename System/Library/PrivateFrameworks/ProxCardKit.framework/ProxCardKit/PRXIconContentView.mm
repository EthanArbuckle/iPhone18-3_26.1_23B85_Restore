@interface PRXIconContentView
- (PRXIconContentView)initWithCardStyle:(int64_t)style;
- (void)setBodyLabel:(id)label;
- (void)setImageViews:(id)views;
- (void)updateConstraints;
@end

@implementation PRXIconContentView

- (PRXIconContentView)initWithCardStyle:(int64_t)style
{
  v35[7] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = PRXIconContentView;
  v3 = [(PRXCardContentView *)&v34 initWithCardStyle:style];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756D0]);
    imageViewsGuide = v3->_imageViewsGuide;
    v3->_imageViewsGuide = v4;

    [(PRXIconContentView *)v3 addLayoutGuide:v3->_imageViewsGuide];
    mainContentGuide = [(PRXCardContentView *)v3 mainContentGuide];
    widthAnchor = [(UILayoutGuide *)v3->_imageViewsGuide widthAnchor];
    v33 = [widthAnchor constraintEqualToConstant:0.0];

    LODWORD(v8) = 1112276992;
    [v33 setPriority:v8];
    heightAnchor = [(UILayoutGuide *)v3->_imageViewsGuide heightAnchor];
    v10 = [heightAnchor constraintEqualToConstant:0.0];

    v11 = v10;
    v23 = v10;
    LODWORD(v12) = 1112276992;
    [v10 setPriority:v12];
    v26 = MEMORY[0x277CCAAD0];
    topAnchor = [(UILayoutGuide *)v3->_imageViewsGuide topAnchor];
    topAnchor2 = [mainContentGuide topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v35[0] = v30;
    leadingAnchor = [(UILayoutGuide *)v3->_imageViewsGuide leadingAnchor];
    leadingAnchor2 = [mainContentGuide leadingAnchor];
    v27 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v35[1] = v27;
    trailingAnchor = [(UILayoutGuide *)v3->_imageViewsGuide trailingAnchor];
    trailingAnchor2 = [mainContentGuide trailingAnchor];
    v13 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v35[2] = v13;
    centerXAnchor = [(UILayoutGuide *)v3->_imageViewsGuide centerXAnchor];
    centerXAnchor2 = [mainContentGuide centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v35[3] = v16;
    bottomAnchor = [(UILayoutGuide *)v3->_imageViewsGuide bottomAnchor];
    bottomAnchor2 = [mainContentGuide bottomAnchor];
    v19 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v35[4] = v19;
    v35[5] = v33;
    v35[6] = v11;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:7];
    [v26 activateConstraints:v20];

    v21 = v3;
  }

  return v3;
}

- (void)updateConstraints
{
  v52 = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = PRXIconContentView;
  [(PRXCardContentView *)&v49 updateConstraints];
  if ([(NSArray *)self->_imageViews count]&& !self->_imageViewsConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = self->_imageViews;
    v43 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    v5 = 0;
    if (v43)
    {
      v41 = *v46;
      do
      {
        v6 = 0;
        v7 = v5;
        do
        {
          if (*v46 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v45 + 1) + 8 * v6);
          centerYAnchor = [v8 centerYAnchor];
          centerYAnchor2 = [v7 centerYAnchor];
          v11 = centerYAnchor2;
          if (!centerYAnchor2)
          {
            centerYAnchor3 = [(UILayoutGuide *)self->_imageViewsGuide centerYAnchor];
            v11 = centerYAnchor3;
          }

          v12 = [centerYAnchor constraintEqualToAnchor:v11];
          [array addObject:v12];

          if (!centerYAnchor2)
          {
          }

          topAnchor = [v8 topAnchor];
          topAnchor2 = [(UILayoutGuide *)self->_imageViewsGuide topAnchor];
          v15 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
          [array addObject:v15];

          bottomAnchor = [v8 bottomAnchor];
          bottomAnchor2 = [(UILayoutGuide *)self->_imageViewsGuide bottomAnchor];
          v18 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
          [array addObject:v18];

          leadingAnchor = [v8 leadingAnchor];
          if (v7)
          {
            trailingAnchor = [v7 trailingAnchor];
            [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:10.0];
          }

          else
          {
            trailingAnchor = [(UILayoutGuide *)self->_imageViewsGuide leadingAnchor];
            [leadingAnchor constraintEqualToAnchor:trailingAnchor];
          }
          v21 = ;
          [array addObject:v21];

          v5 = v8;
          ++v6;
          v7 = v5;
        }

        while (v43 != v6);
        v43 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v43);
    }

    trailingAnchor2 = [v5 trailingAnchor];
    trailingAnchor3 = [(UILayoutGuide *)self->_imageViewsGuide trailingAnchor];
    v24 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [array addObject:v24];

    v25 = [array copy];
    imageViewsConstraints = self->_imageViewsConstraints;
    self->_imageViewsConstraints = v25;

    [MEMORY[0x277CCAAD0] activateConstraints:self->_imageViewsConstraints];
  }

  if (self->_bodyLabel)
  {
    if (!self->_bodyLabelConstraints)
    {
      mainContentGuide = [(PRXCardContentView *)self mainContentGuide];
      topAnchor3 = [(PRXLabel *)self->_bodyLabel topAnchor];
      bottomAnchor3 = [(UILayoutGuide *)self->_imageViewsGuide bottomAnchor];
      obja = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:20.0];
      v50[0] = obja;
      leadingAnchor2 = [(PRXLabel *)self->_bodyLabel leadingAnchor];
      leadingAnchor3 = [mainContentGuide leadingAnchor];
      v28 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
      v50[1] = v28;
      trailingAnchor4 = [(PRXLabel *)self->_bodyLabel trailingAnchor];
      trailingAnchor5 = [mainContentGuide trailingAnchor];
      v31 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
      v50[2] = v31;
      bottomAnchor4 = [(PRXLabel *)self->_bodyLabel bottomAnchor];
      bottomAnchor5 = [mainContentGuide bottomAnchor];
      v34 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor5];
      v50[3] = v34;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
      bodyLabelConstraints = self->_bodyLabelConstraints;
      self->_bodyLabelConstraints = v35;

      [MEMORY[0x277CCAAD0] activateConstraints:self->_bodyLabelConstraints];
    }
  }
}

- (void)setImageViews:(id)views
{
  v29 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  imageViews = self->_imageViews;
  if (imageViews != viewsCopy && ![(NSArray *)imageViews isEqualToArray:viewsCopy])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = self->_imageViews;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v23 + 1) + 8 * i) removeFromSuperview];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_imageViews, views);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = self->_imageViews;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * j);
          [v17 setTranslatesAutoresizingMaskIntoConstraints:{0, v19}];
          [(PRXIconContentView *)self addSubview:v17];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }

    imageViewsConstraints = self->_imageViewsConstraints;
    self->_imageViewsConstraints = 0;

    if ([(NSArray *)self->_imageViews count])
    {
      [(PRXIconContentView *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setBodyLabel:(id)label
{
  labelCopy = label;
  bodyLabel = self->_bodyLabel;
  v8 = labelCopy;
  if (bodyLabel != labelCopy)
  {
    [(PRXLabel *)bodyLabel removeFromSuperview];
    objc_storeStrong(&self->_bodyLabel, label);
    [(PRXLabel *)self->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXIconContentView *)self addSubview:self->_bodyLabel];
    bodyLabelConstraints = self->_bodyLabelConstraints;
    self->_bodyLabelConstraints = 0;

    if (self->_bodyLabel)
    {
      [(PRXIconContentView *)self setNeedsUpdateConstraints];
    }
  }
}

@end