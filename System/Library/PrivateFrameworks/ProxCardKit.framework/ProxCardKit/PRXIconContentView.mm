@interface PRXIconContentView
- (PRXIconContentView)initWithCardStyle:(int64_t)a3;
- (void)setBodyLabel:(id)a3;
- (void)setImageViews:(id)a3;
- (void)updateConstraints;
@end

@implementation PRXIconContentView

- (PRXIconContentView)initWithCardStyle:(int64_t)a3
{
  v35[7] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = PRXIconContentView;
  v3 = [(PRXCardContentView *)&v34 initWithCardStyle:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756D0]);
    imageViewsGuide = v3->_imageViewsGuide;
    v3->_imageViewsGuide = v4;

    [(PRXIconContentView *)v3 addLayoutGuide:v3->_imageViewsGuide];
    v6 = [(PRXCardContentView *)v3 mainContentGuide];
    v7 = [(UILayoutGuide *)v3->_imageViewsGuide widthAnchor];
    v33 = [v7 constraintEqualToConstant:0.0];

    LODWORD(v8) = 1112276992;
    [v33 setPriority:v8];
    v9 = [(UILayoutGuide *)v3->_imageViewsGuide heightAnchor];
    v10 = [v9 constraintEqualToConstant:0.0];

    v11 = v10;
    v23 = v10;
    LODWORD(v12) = 1112276992;
    [v10 setPriority:v12];
    v26 = MEMORY[0x277CCAAD0];
    v32 = [(UILayoutGuide *)v3->_imageViewsGuide topAnchor];
    v31 = [v6 topAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v35[0] = v30;
    v29 = [(UILayoutGuide *)v3->_imageViewsGuide leadingAnchor];
    v28 = [v6 leadingAnchor];
    v27 = [v29 constraintGreaterThanOrEqualToAnchor:v28];
    v35[1] = v27;
    v25 = [(UILayoutGuide *)v3->_imageViewsGuide trailingAnchor];
    v24 = [v6 trailingAnchor];
    v13 = [v25 constraintLessThanOrEqualToAnchor:v24];
    v35[2] = v13;
    v14 = [(UILayoutGuide *)v3->_imageViewsGuide centerXAnchor];
    v15 = [v6 centerXAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v35[3] = v16;
    v17 = [(UILayoutGuide *)v3->_imageViewsGuide bottomAnchor];
    v18 = [v6 bottomAnchor];
    v19 = [v17 constraintLessThanOrEqualToAnchor:v18];
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
    v4 = [MEMORY[0x277CBEB18] array];
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
          v9 = [v8 centerYAnchor];
          v10 = [v7 centerYAnchor];
          v11 = v10;
          if (!v10)
          {
            v2 = [(UILayoutGuide *)self->_imageViewsGuide centerYAnchor];
            v11 = v2;
          }

          v12 = [v9 constraintEqualToAnchor:v11];
          [v4 addObject:v12];

          if (!v10)
          {
          }

          v13 = [v8 topAnchor];
          v14 = [(UILayoutGuide *)self->_imageViewsGuide topAnchor];
          v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];
          [v4 addObject:v15];

          v16 = [v8 bottomAnchor];
          v17 = [(UILayoutGuide *)self->_imageViewsGuide bottomAnchor];
          v18 = [v16 constraintLessThanOrEqualToAnchor:v17];
          [v4 addObject:v18];

          v19 = [v8 leadingAnchor];
          if (v7)
          {
            v20 = [v7 trailingAnchor];
            [v19 constraintEqualToAnchor:v20 constant:10.0];
          }

          else
          {
            v20 = [(UILayoutGuide *)self->_imageViewsGuide leadingAnchor];
            [v19 constraintEqualToAnchor:v20];
          }
          v21 = ;
          [v4 addObject:v21];

          v5 = v8;
          ++v6;
          v7 = v5;
        }

        while (v43 != v6);
        v43 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v43);
    }

    v22 = [v5 trailingAnchor];
    v23 = [(UILayoutGuide *)self->_imageViewsGuide trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v4 addObject:v24];

    v25 = [v4 copy];
    imageViewsConstraints = self->_imageViewsConstraints;
    self->_imageViewsConstraints = v25;

    [MEMORY[0x277CCAAD0] activateConstraints:self->_imageViewsConstraints];
  }

  if (self->_bodyLabel)
  {
    if (!self->_bodyLabelConstraints)
    {
      v27 = [(PRXCardContentView *)self mainContentGuide];
      v44 = [(PRXLabel *)self->_bodyLabel topAnchor];
      v42 = [(UILayoutGuide *)self->_imageViewsGuide bottomAnchor];
      obja = [v44 constraintEqualToAnchor:v42 constant:20.0];
      v50[0] = obja;
      v38 = [(PRXLabel *)self->_bodyLabel leadingAnchor];
      v37 = [v27 leadingAnchor];
      v28 = [v38 constraintEqualToAnchor:v37];
      v50[1] = v28;
      v29 = [(PRXLabel *)self->_bodyLabel trailingAnchor];
      v30 = [v27 trailingAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];
      v50[2] = v31;
      v32 = [(PRXLabel *)self->_bodyLabel bottomAnchor];
      v33 = [v27 bottomAnchor];
      v34 = [v32 constraintLessThanOrEqualToAnchor:v33];
      v50[3] = v34;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
      bodyLabelConstraints = self->_bodyLabelConstraints;
      self->_bodyLabelConstraints = v35;

      [MEMORY[0x277CCAAD0] activateConstraints:self->_bodyLabelConstraints];
    }
  }
}

- (void)setImageViews:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  imageViews = self->_imageViews;
  if (imageViews != v5 && ![(NSArray *)imageViews isEqualToArray:v5])
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

    objc_storeStrong(&self->_imageViews, a3);
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

- (void)setBodyLabel:(id)a3
{
  v5 = a3;
  bodyLabel = self->_bodyLabel;
  v8 = v5;
  if (bodyLabel != v5)
  {
    [(PRXLabel *)bodyLabel removeFromSuperview];
    objc_storeStrong(&self->_bodyLabel, a3);
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