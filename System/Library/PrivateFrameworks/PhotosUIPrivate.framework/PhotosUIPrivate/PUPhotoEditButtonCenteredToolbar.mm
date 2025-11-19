@interface PUPhotoEditButtonCenteredToolbar
- (double)interItemSpacing;
- (void)_addCenterConstraintsWithMetrics:(id)a3 verticalLayout:(BOOL)a4;
- (void)_addLeadingConstraintsWithMetrics:(id)a3 verticalLayout:(BOOL)a4;
- (void)_addTrailingConstraintsWithMetrics:(id)a3 verticalLayout:(BOOL)a4;
- (void)_invalidateAllConstraints;
- (void)setCenterView:(id)a3 leadingViews:(id)a4 trailingViews:(id)a5;
@end

@implementation PUPhotoEditButtonCenteredToolbar

- (void)_invalidateAllConstraints
{
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_centerLayoutConstraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_leadingLayoutConstraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_trailingLayoutConstraints];
  centerLayoutConstraints = self->_centerLayoutConstraints;
  self->_centerLayoutConstraints = 0;

  leadingLayoutConstraints = self->_leadingLayoutConstraints;
  self->_leadingLayoutConstraints = 0;

  trailingLayoutConstraints = self->_trailingLayoutConstraints;
  self->_trailingLayoutConstraints = 0;

  v6.receiver = self;
  v6.super_class = PUPhotoEditButtonCenteredToolbar;
  [(PUPhotoEditToolbar *)&v6 _invalidateAllConstraints];
}

- (void)_addCenterConstraintsWithMetrics:(id)a3 verticalLayout:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self->_centerView && !self->_centerLayoutConstraints)
  {
    v42 = v6;
    v7 = [MEMORY[0x1E695DF70] array];
    [(UIView *)self->_centerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(PUPhotoEditButtonCenteredToolbar *)self buttonAreaLayoutGuide];
    centerView = self->_centerView;
    if (v4)
    {
      v10 = [(UIView *)centerView centerYAnchor];
      v11 = [v8 centerYAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      [v7 addObject:v12];

      v13 = [(UIView *)self->_centerView leadingAnchor];
      v14 = [v8 leadingAnchor];
      v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];
      [v7 addObject:v15];

      v16 = [(UIView *)self->_centerView trailingAnchor];
      v17 = [v8 trailingAnchor];
      v18 = [v16 constraintLessThanOrEqualToAnchor:v17];
      [v7 addObject:v18];

      v19 = [(UIView *)self->_centerView centerXAnchor];
      v20 = [v8 centerXAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      [v7 addObject:v21];
    }

    else
    {
      v22 = [(UIView *)centerView centerXAnchor];
      v23 = [v8 centerXAnchor];
      v19 = [v22 constraintEqualToAnchor:v23];

      LODWORD(v24) = 1132068864;
      [v19 setPriority:v24];
      [v7 addObject:v19];
      v25 = [(UIView *)self->_centerView topAnchor];
      v26 = [v8 topAnchor];
      v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26];
      [v7 addObject:v27];

      v28 = [(UIView *)self->_centerView bottomAnchor];
      v29 = [v8 bottomAnchor];
      v30 = [v28 constraintLessThanOrEqualToAnchor:v29];
      [v7 addObject:v30];

      v31 = [(UIView *)self->_centerView centerYAnchor];
      v32 = [v8 centerYAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      [v7 addObject:v33];

      if ([(NSArray *)self->_leadingViews count])
      {
        v34 = [(NSArray *)self->_leadingViews lastObject];
        v35 = [v34 trailingAnchor];
        v36 = [(UIView *)self->_centerView leadingAnchor];
        v37 = [v35 constraintLessThanOrEqualToAnchor:v36 constant:-5.0];
        [v7 addObject:v37];
      }

      if (![(NSArray *)self->_trailingViews count])
      {
        goto LABEL_10;
      }

      v20 = [(NSArray *)self->_trailingViews firstObject];
      v21 = [v20 leadingAnchor];
      v38 = [(UIView *)self->_centerView trailingAnchor];
      v39 = [v21 constraintGreaterThanOrEqualToAnchor:v38 constant:5.0];
      [v7 addObject:v39];
    }

LABEL_10:
    [MEMORY[0x1E696ACD8] activateConstraints:v7];
    v40 = [v7 copy];
    centerLayoutConstraints = self->_centerLayoutConstraints;
    self->_centerLayoutConstraints = v40;

    v6 = v42;
  }
}

- (void)_addTrailingConstraintsWithMetrics:(id)a3 verticalLayout:(BOOL)a4
{
  v4 = a4;
  v89 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_trailingViews && !self->_trailingLayoutConstraints)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [(PUPhotoEditToolbar *)self layoutOrientation]== 3 || [(PUPhotoEditToolbar *)self layoutOrientation]== 2;
    v73 = v8;
    [(PUPhotoEditButtonCenteredToolbar *)self buttonAreaLayoutGuide];
    v78 = v77 = self;
    if (v4)
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      obj = self->_trailingViews;
      v9 = [(NSArray *)obj countByEnumeratingWithState:&v83 objects:v88 count:16];
      if (v9)
      {
        v10 = v9;
        v70 = v6;
        v11 = 0;
        v12 = *v84;
        do
        {
          v13 = 0;
          v14 = v11;
          do
          {
            if (*v84 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v83 + 1) + 8 * v13);
            v16 = [(NSArray *)v77->_trailingViews lastObject];

            [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
            if (v14)
            {
              v17 = [v15 topAnchor];
              v18 = [(NSArray *)v14 bottomAnchor];
              v19 = [v17 constraintEqualToAnchor:v18 constant:-15.0];
              [v7 addObject:v19];
            }

            if (v15 == v16)
            {
              v20 = [v15 bottomAnchor];
              v21 = [v78 bottomAnchor];
              v22 = [v20 constraintEqualToAnchor:v21 constant:-15.0];
              [v7 addObject:v22];
            }

            v23 = [v15 leadingAnchor];
            v24 = [v78 leadingAnchor];
            v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];
            [v7 addObject:v25];

            v26 = [v15 trailingAnchor];
            v27 = [v78 trailingAnchor];
            v28 = [v26 constraintLessThanOrEqualToAnchor:v27];
            [v7 addObject:v28];

            v29 = [v15 centerXAnchor];
            v30 = [v78 centerXAnchor];
            v31 = [v29 constraintEqualToAnchor:v30];
            [v7 addObject:v31];

            v11 = v15;
            ++v13;
            v14 = v11;
          }

          while (v10 != v13);
          v10 = [(NSArray *)obj countByEnumeratingWithState:&v83 objects:v88 count:16];
        }

        while (v10);
        v6 = v70;
      }

      else
      {
        v11 = 0;
      }

      v34 = obj;
    }

    else
    {
      v32 = [(NSArray *)self->_trailingViews reverseObjectEnumerator];
      v33 = [v32 allObjects];

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v34 = v33;
      v74 = [(NSArray *)v34 countByEnumeratingWithState:&v79 objects:v87 count:16];
      if (v74)
      {
        v71 = v6;
        v35 = 0;
        v72 = *v80;
        v36 = self;
        obja = v34;
        do
        {
          v37 = 0;
          v38 = v35;
          do
          {
            if (*v80 != v72)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v79 + 1) + 8 * v37);
            [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
            [(PUPhotoEditButtonCenteredToolbar *)v36 interItemSpacing];
            v41 = v40;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v42 = v39;
            }

            else
            {
              v42 = 0;
            }

            v43 = [v42 configuration];
            v44 = v43;
            if (v43)
            {
              [v43 contentInsets];
            }

            else
            {
              [v42 contentEdgeInsets];
            }

            v49 = v45;
            v50 = v46;
            v51 = v47;
            v52 = v48;
            if (v38)
            {
              if ([(NSArray *)v34 indexOfObject:v38]== 0 && v73)
              {
                v53 = v41 * -0.5;
              }

              else
              {
                v53 = 0.0;
              }

              v54 = [v39 trailingAnchor];
              v55 = [v38 leadingAnchor];
              v56 = [v54 constraintEqualToAnchor:v55 constant:v53];

              LODWORD(v57) = 1143930880;
              [v56 setPriority:v57];
              [v7 addObject:v56];
              v58 = [v39 trailingAnchor];
              v59 = [v38 leadingAnchor];
              v60 = [v58 constraintLessThanOrEqualToAnchor:v59];
              [v7 addObject:v60];

              v61 = [v39 centerYAnchor];
              v62 = [v78 centerYAnchor];
              v63 = [v61 constraintEqualToAnchor:v62];
              [v7 addObject:v63];

              v36 = v77;
            }

            else
            {
              if (v73)
              {
                LODWORD(v45) = 1148846080;
                [v39 setContentCompressionResistancePriority:0 forAxis:v45];
              }

              v64 = [v39 trailingAnchor];
              v65 = [v78 trailingAnchor];
              [(PUPhotoEditToolbar *)v36 longSideMargin];
              v67 = [v64 constraintEqualToAnchor:v65 constant:-v66];
              [v7 addObject:v67];

              v56 = [v39 centerYAnchor];
              v61 = [v78 centerYAnchor];
              v62 = [v56 constraintEqualToAnchor:v61];
              [v7 addObject:v62];
            }

            v35 = v39;
            if (v44)
            {
              [v44 setContentInsets:{v49, v50, v51, v52}];
              [v42 setConfiguration:v44];
            }

            else
            {
              [v42 setContentEdgeInsets:{v49, v50, v51, v52}];
            }

            v34 = obja;

            ++v37;
            v38 = v35;
          }

          while (v74 != v37);
          v74 = [(NSArray *)obja countByEnumeratingWithState:&v79 objects:v87 count:16];
        }

        while (v74);

        v11 = obja;
        v6 = v71;
      }

      else
      {
        v11 = v34;
      }
    }

    [MEMORY[0x1E696ACD8] activateConstraints:v7];
    v68 = [v7 copy];
    trailingLayoutConstraints = v77->_trailingLayoutConstraints;
    v77->_trailingLayoutConstraints = v68;
  }
}

- (void)_addLeadingConstraintsWithMetrics:(id)a3 verticalLayout:(BOOL)a4
{
  v4 = a4;
  v84 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_leadingViews)
  {
    v7 = 608;
    if (!self->_leadingLayoutConstraints)
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v9 = [(PUPhotoEditToolbar *)self layoutOrientation]== 3 || [(PUPhotoEditToolbar *)self layoutOrientation]== 2;
      v72 = v9;
      v10 = [(PUPhotoEditButtonCenteredToolbar *)self buttonAreaLayoutGuide];
      v70 = self;
      if (v4)
      {
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        obj = self->_leadingViews;
        v11 = [(NSArray *)obj countByEnumeratingWithState:&v78 objects:v83 count:16];
        if (!v11)
        {
          v30 = self;
          v13 = 0;
LABEL_47:

          [MEMORY[0x1E696ACD8] activateConstraints:v8];
          v64 = [v8 copy];
          v65 = *(&v30->super.super.super.super.isa + v7);
          *(&v30->super.super.super.super.isa + v7) = v64;

          goto LABEL_48;
        }

        v12 = v11;
        v66 = 608;
        v67 = v6;
        v13 = 0;
        v14 = *v79;
        do
        {
          v15 = 0;
          v16 = v13;
          do
          {
            if (*v79 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v78 + 1) + 8 * v15);
            [v17 setTranslatesAutoresizingMaskIntoConstraints:{0, v66}];
            v18 = [v17 topAnchor];
            if (v16)
            {
              [v16 bottomAnchor];
            }

            else
            {
              [v10 topAnchor];
            }
            v19 = ;
            v20 = [v18 constraintEqualToAnchor:v19 constant:15.0];
            [v8 addObject:v20];

            v21 = [v17 leadingAnchor];
            v22 = [v10 leadingAnchor];
            v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22];
            [v8 addObject:v23];

            v24 = [v17 trailingAnchor];
            v25 = [v10 trailingAnchor];
            v26 = [v24 constraintLessThanOrEqualToAnchor:v25];
            [v8 addObject:v26];

            v27 = [v17 centerXAnchor];
            v28 = [v10 centerXAnchor];
            v29 = [v27 constraintEqualToAnchor:v28];
            [v8 addObject:v29];

            v13 = v17;
            ++v15;
            v16 = v13;
          }

          while (v12 != v15);
          v12 = [(NSArray *)obj countByEnumeratingWithState:&v78 objects:v83 count:16];
        }

        while (v12);
        v6 = v67;
        v30 = v70;
      }

      else
      {
        v66 = 608;
        v68 = v6;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v69 = self->_leadingViews;
        v31 = [(NSArray *)v69 countByEnumeratingWithState:&v74 objects:v82 count:16];
        v30 = self;
        if (v31)
        {
          v32 = v31;
          obj = 0;
          v13 = 0;
          v71 = *v75;
          do
          {
            v33 = 0;
            v34 = v13;
            do
            {
              if (*v75 != v71)
              {
                objc_enumerationMutation(v69);
              }

              v35 = *(*(&v74 + 1) + 8 * v33);
              [v35 setTranslatesAutoresizingMaskIntoConstraints:{0, v66}];
              [(PUPhotoEditButtonCenteredToolbar *)v30 interItemSpacing];
              v37 = v36;
              objc_opt_class();
              LOBYTE(v39) = 0;
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                v39 = objc_opt_isKindOfClass() ^ 1;
              }

              if (v34)
              {
                v40 = v37 * 0.5;
                v42 = [(NSArray *)v30->_leadingViews indexOfObject:v34]== 0 && v72;
                v41 = v42 == 0;
                v43 = v42 | v39;
                if (v41)
                {
                  v40 = 0.0;
                }

                if (v43)
                {
                  if (obj)
                  {
                    v44 = [v35 firstBaselineAnchor];
                    v45 = [(NSArray *)obj firstBaselineAnchor];
                    v46 = [v44 constraintEqualToAnchor:v45];
                    [v8 addObject:v46];
                  }

                  else
                  {
                    v57 = [v35 centerYAnchor];
                    v58 = [v10 centerYAnchor];
                    v59 = [v57 constraintEqualToAnchor:v58];
                    [v8 addObject:v59];

                    obj = v35;
                  }
                }

                else
                {
                  v48 = [v35 centerYAnchor];
                  v49 = [v10 centerYAnchor];
                  v50 = [v48 constraintEqualToAnchor:v49];
                  [v8 addObject:v50];

                  v40 = 10.0;
                }

                v60 = [v35 leadingAnchor];
                v61 = [v34 trailingAnchor];
                v54 = [v60 constraintEqualToAnchor:v61 constant:v40];

                LODWORD(v62) = 1143930880;
                [v54 setPriority:v62];
                [v8 addObject:v54];
                v55 = [v35 leadingAnchor];
                v56 = [v34 trailingAnchor];
                v63 = [v55 constraintGreaterThanOrEqualToAnchor:v56];
                [v8 addObject:v63];

                v30 = v70;
              }

              else
              {
                if (v72 || !+[PUPhotoEditLayoutSupport isPhoneClassDevice])
                {
                  LODWORD(v38) = 1148846080;
                  [v35 setContentCompressionResistancePriority:0 forAxis:v38];
                }

                else
                {
                  v47 = v35;

                  obj = v47;
                }

                v51 = [v35 leadingAnchor];
                v52 = [v10 leadingAnchor];
                [(PUPhotoEditToolbar *)v30 longSideMargin];
                v53 = [v51 constraintEqualToAnchor:v52 constant:?];
                [v8 addObject:v53];

                v54 = [v35 centerYAnchor];
                v55 = [v10 centerYAnchor];
                v56 = [v54 constraintEqualToAnchor:v55];
                [v8 addObject:v56];
              }

              v13 = v35;
              ++v33;
              v34 = v13;
            }

            while (v32 != v33);
            v32 = [(NSArray *)v69 countByEnumeratingWithState:&v74 objects:v82 count:16];
          }

          while (v32);
        }

        else
        {
          obj = 0;
          v13 = 0;
        }

        v6 = v68;
      }

      v7 = v66;
      goto LABEL_47;
    }
  }

LABEL_48:
}

- (void)setCenterView:(id)a3 leadingViews:(id)a4 trailingViews:(id)a5
{
  v81 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v59 = v10;
  if (([v10 isEqualToArray:self->_leadingViews] & 1) == 0 || !objc_msgSend(v11, "isEqualToArray:", self->_trailingViews) || self->_centerView != v9)
  {
    v57 = v9;
    v58 = v11;
    p_centerView = &self->_centerView;
    if ([(UIView *)self->_centerView isDescendantOfView:self])
    {
      [(UIView *)*p_centerView removeFromSuperview];
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v13 = self->_leadingViews;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v73;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v73 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v72 + 1) + 8 * i);
          if ([v18 isDescendantOfView:self])
          {
            [v18 removeFromSuperview];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v72 objects:v80 count:16];
      }

      while (v15);
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v19 = self->_trailingViews;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v68 objects:v79 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v69;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v69 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v68 + 1) + 8 * j);
          if ([v24 isDescendantOfView:self])
          {
            [v24 removeFromSuperview];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v68 objects:v79 count:16];
      }

      while (v21);
    }

    v25 = [(PUPhotoEditToolbar *)self mainToolbarContainer];
    objc_storeStrong(p_centerView, a3);
    [v25 addSubview:*p_centerView];
    v26 = [v59 copy];
    leadingViews = self->_leadingViews;
    self->_leadingViews = v26;

    v28 = [v58 copy];
    trailingViews = self->_trailingViews;
    self->_trailingViews = v28;

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v30 = self->_leadingViews;
    v31 = [(NSArray *)v30 countByEnumeratingWithState:&v64 objects:v78 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v65;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v65 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [v25 addSubview:*(*(&v64 + 1) + 8 * k)];
        }

        v32 = [(NSArray *)v30 countByEnumeratingWithState:&v64 objects:v78 count:16];
      }

      while (v32);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v35 = self->_trailingViews;
    v36 = [(NSArray *)v35 countByEnumeratingWithState:&v60 objects:v77 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v61;
      do
      {
        for (m = 0; m != v37; ++m)
        {
          if (*v61 != v38)
          {
            objc_enumerationMutation(v35);
          }

          [v25 addSubview:*(*(&v60 + 1) + 8 * m)];
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v60 objects:v77 count:16];
      }

      while (v37);
    }

    v40 = [(PUPhotoEditButtonCenteredToolbar *)self buttonAreaLayoutGuide];

    if (!v40)
    {
      v41 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      [(PUPhotoEditButtonCenteredToolbar *)self setButtonAreaLayoutGuide:v41];

      v42 = [(PUPhotoEditButtonCenteredToolbar *)self buttonAreaLayoutGuide];
      [v25 addLayoutGuide:v42];
    }

    v43 = [(PUPhotoEditButtonCenteredToolbar *)self buttonAreaLayoutGuide];
    v56 = [v25 leftAnchor];
    v55 = [v43 leftAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v76[0] = v54;
    v53 = [v25 rightAnchor];
    v52 = [v43 rightAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v76[1] = v51;
    v44 = [v25 topAnchor];
    v45 = [v43 topAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    v76[2] = v46;
    v47 = [v25 bottomAnchor];
    v48 = [v43 bottomAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    v76[3] = v49;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:4];
    [v25 addConstraints:v50];

    [(PUPhotoEditButtonCenteredToolbar *)self _invalidateAllConstraints];
    v9 = v57;
    v11 = v58;
  }
}

- (double)interItemSpacing
{
  if ([(PUPhotoEditToolbar *)self layoutOrientation]== 3 || [(PUPhotoEditToolbar *)self layoutOrientation]== 2)
  {
    v3 = 12.0;
    v4 = 24.0;
  }

  else
  {
    v3 = 8.0;
    v4 = 18.0;
  }

  v5 = [(PUPhotoEditToolbar *)self photoEditSpec];
  v6 = [v5 shouldUseCompactToolbarSpacing];

  if (v6)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

@end