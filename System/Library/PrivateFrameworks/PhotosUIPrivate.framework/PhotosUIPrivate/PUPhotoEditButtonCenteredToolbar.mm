@interface PUPhotoEditButtonCenteredToolbar
- (double)interItemSpacing;
- (void)_addCenterConstraintsWithMetrics:(id)metrics verticalLayout:(BOOL)layout;
- (void)_addLeadingConstraintsWithMetrics:(id)metrics verticalLayout:(BOOL)layout;
- (void)_addTrailingConstraintsWithMetrics:(id)metrics verticalLayout:(BOOL)layout;
- (void)_invalidateAllConstraints;
- (void)setCenterView:(id)view leadingViews:(id)views trailingViews:(id)trailingViews;
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

- (void)_addCenterConstraintsWithMetrics:(id)metrics verticalLayout:(BOOL)layout
{
  layoutCopy = layout;
  metricsCopy = metrics;
  if (self->_centerView && !self->_centerLayoutConstraints)
  {
    v42 = metricsCopy;
    array = [MEMORY[0x1E695DF70] array];
    [(UIView *)self->_centerView setTranslatesAutoresizingMaskIntoConstraints:0];
    buttonAreaLayoutGuide = [(PUPhotoEditButtonCenteredToolbar *)self buttonAreaLayoutGuide];
    centerView = self->_centerView;
    if (layoutCopy)
    {
      centerYAnchor = [(UIView *)centerView centerYAnchor];
      centerYAnchor2 = [buttonAreaLayoutGuide centerYAnchor];
      v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [array addObject:v12];

      leadingAnchor = [(UIView *)self->_centerView leadingAnchor];
      leadingAnchor2 = [buttonAreaLayoutGuide leadingAnchor];
      v15 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
      [array addObject:v15];

      trailingAnchor = [(UIView *)self->_centerView trailingAnchor];
      trailingAnchor2 = [buttonAreaLayoutGuide trailingAnchor];
      v18 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
      [array addObject:v18];

      centerXAnchor = [(UIView *)self->_centerView centerXAnchor];
      centerXAnchor2 = [buttonAreaLayoutGuide centerXAnchor];
      leadingAnchor4 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [array addObject:leadingAnchor4];
    }

    else
    {
      centerXAnchor3 = [(UIView *)centerView centerXAnchor];
      centerXAnchor4 = [buttonAreaLayoutGuide centerXAnchor];
      centerXAnchor = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

      LODWORD(v24) = 1132068864;
      [centerXAnchor setPriority:v24];
      [array addObject:centerXAnchor];
      topAnchor = [(UIView *)self->_centerView topAnchor];
      topAnchor2 = [buttonAreaLayoutGuide topAnchor];
      v27 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
      [array addObject:v27];

      bottomAnchor = [(UIView *)self->_centerView bottomAnchor];
      bottomAnchor2 = [buttonAreaLayoutGuide bottomAnchor];
      v30 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
      [array addObject:v30];

      centerYAnchor3 = [(UIView *)self->_centerView centerYAnchor];
      centerYAnchor4 = [buttonAreaLayoutGuide centerYAnchor];
      v33 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      [array addObject:v33];

      if ([(NSArray *)self->_leadingViews count])
      {
        lastObject = [(NSArray *)self->_leadingViews lastObject];
        trailingAnchor3 = [lastObject trailingAnchor];
        leadingAnchor3 = [(UIView *)self->_centerView leadingAnchor];
        v37 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor3 constant:-5.0];
        [array addObject:v37];
      }

      if (![(NSArray *)self->_trailingViews count])
      {
        goto LABEL_10;
      }

      centerXAnchor2 = [(NSArray *)self->_trailingViews firstObject];
      leadingAnchor4 = [centerXAnchor2 leadingAnchor];
      trailingAnchor4 = [(UIView *)self->_centerView trailingAnchor];
      v39 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:5.0];
      [array addObject:v39];
    }

LABEL_10:
    [MEMORY[0x1E696ACD8] activateConstraints:array];
    v40 = [array copy];
    centerLayoutConstraints = self->_centerLayoutConstraints;
    self->_centerLayoutConstraints = v40;

    metricsCopy = v42;
  }
}

- (void)_addTrailingConstraintsWithMetrics:(id)metrics verticalLayout:(BOOL)layout
{
  layoutCopy = layout;
  v89 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  if (self->_trailingViews && !self->_trailingLayoutConstraints)
  {
    array = [MEMORY[0x1E695DF70] array];
    v8 = [(PUPhotoEditToolbar *)self layoutOrientation]== 3 || [(PUPhotoEditToolbar *)self layoutOrientation]== 2;
    v73 = v8;
    [(PUPhotoEditButtonCenteredToolbar *)self buttonAreaLayoutGuide];
    v78 = v77 = self;
    if (layoutCopy)
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
        v70 = metricsCopy;
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
            lastObject = [(NSArray *)v77->_trailingViews lastObject];

            [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
            if (v14)
            {
              topAnchor = [v15 topAnchor];
              bottomAnchor = [(NSArray *)v14 bottomAnchor];
              v19 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:-15.0];
              [array addObject:v19];
            }

            if (v15 == lastObject)
            {
              bottomAnchor2 = [v15 bottomAnchor];
              bottomAnchor3 = [v78 bottomAnchor];
              v22 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-15.0];
              [array addObject:v22];
            }

            leadingAnchor = [v15 leadingAnchor];
            leadingAnchor2 = [v78 leadingAnchor];
            v25 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
            [array addObject:v25];

            trailingAnchor = [v15 trailingAnchor];
            trailingAnchor2 = [v78 trailingAnchor];
            v28 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
            [array addObject:v28];

            centerXAnchor = [v15 centerXAnchor];
            centerXAnchor2 = [v78 centerXAnchor];
            v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
            [array addObject:v31];

            v11 = v15;
            ++v13;
            v14 = v11;
          }

          while (v10 != v13);
          v10 = [(NSArray *)obj countByEnumeratingWithState:&v83 objects:v88 count:16];
        }

        while (v10);
        metricsCopy = v70;
      }

      else
      {
        v11 = 0;
      }

      v34 = obj;
    }

    else
    {
      reverseObjectEnumerator = [(NSArray *)self->_trailingViews reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v34 = allObjects;
      v74 = [(NSArray *)v34 countByEnumeratingWithState:&v79 objects:v87 count:16];
      if (v74)
      {
        v71 = metricsCopy;
        v35 = 0;
        v72 = *v80;
        selfCopy = self;
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
            [(PUPhotoEditButtonCenteredToolbar *)selfCopy interItemSpacing];
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

            configuration = [v42 configuration];
            v44 = configuration;
            if (configuration)
            {
              [configuration contentInsets];
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

              trailingAnchor3 = [v39 trailingAnchor];
              leadingAnchor3 = [v38 leadingAnchor];
              centerYAnchor3 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:v53];

              LODWORD(v57) = 1143930880;
              [centerYAnchor3 setPriority:v57];
              [array addObject:centerYAnchor3];
              trailingAnchor4 = [v39 trailingAnchor];
              leadingAnchor4 = [v38 leadingAnchor];
              v60 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:leadingAnchor4];
              [array addObject:v60];

              centerYAnchor = [v39 centerYAnchor];
              centerYAnchor2 = [v78 centerYAnchor];
              v63 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
              [array addObject:v63];

              selfCopy = v77;
            }

            else
            {
              if (v73)
              {
                LODWORD(v45) = 1148846080;
                [v39 setContentCompressionResistancePriority:0 forAxis:v45];
              }

              trailingAnchor5 = [v39 trailingAnchor];
              trailingAnchor6 = [v78 trailingAnchor];
              [(PUPhotoEditToolbar *)selfCopy longSideMargin];
              v67 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v66];
              [array addObject:v67];

              centerYAnchor3 = [v39 centerYAnchor];
              centerYAnchor = [v78 centerYAnchor];
              centerYAnchor2 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor];
              [array addObject:centerYAnchor2];
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
        metricsCopy = v71;
      }

      else
      {
        v11 = v34;
      }
    }

    [MEMORY[0x1E696ACD8] activateConstraints:array];
    v68 = [array copy];
    trailingLayoutConstraints = v77->_trailingLayoutConstraints;
    v77->_trailingLayoutConstraints = v68;
  }
}

- (void)_addLeadingConstraintsWithMetrics:(id)metrics verticalLayout:(BOOL)layout
{
  layoutCopy = layout;
  v84 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  if (self->_leadingViews)
  {
    v7 = 608;
    if (!self->_leadingLayoutConstraints)
    {
      array = [MEMORY[0x1E695DF70] array];
      v9 = [(PUPhotoEditToolbar *)self layoutOrientation]== 3 || [(PUPhotoEditToolbar *)self layoutOrientation]== 2;
      v72 = v9;
      buttonAreaLayoutGuide = [(PUPhotoEditButtonCenteredToolbar *)self buttonAreaLayoutGuide];
      selfCopy = self;
      if (layoutCopy)
      {
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        obj = self->_leadingViews;
        v11 = [(NSArray *)obj countByEnumeratingWithState:&v78 objects:v83 count:16];
        if (!v11)
        {
          selfCopy3 = self;
          v13 = 0;
LABEL_47:

          [MEMORY[0x1E696ACD8] activateConstraints:array];
          v64 = [array copy];
          v65 = *(&selfCopy3->super.super.super.super.isa + v7);
          *(&selfCopy3->super.super.super.super.isa + v7) = v64;

          goto LABEL_48;
        }

        v12 = v11;
        v66 = 608;
        v67 = metricsCopy;
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
            topAnchor = [v17 topAnchor];
            if (v16)
            {
              [v16 bottomAnchor];
            }

            else
            {
              [buttonAreaLayoutGuide topAnchor];
            }
            v19 = ;
            v20 = [topAnchor constraintEqualToAnchor:v19 constant:15.0];
            [array addObject:v20];

            leadingAnchor = [v17 leadingAnchor];
            leadingAnchor2 = [buttonAreaLayoutGuide leadingAnchor];
            v23 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
            [array addObject:v23];

            trailingAnchor = [v17 trailingAnchor];
            trailingAnchor2 = [buttonAreaLayoutGuide trailingAnchor];
            v26 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
            [array addObject:v26];

            centerXAnchor = [v17 centerXAnchor];
            centerXAnchor2 = [buttonAreaLayoutGuide centerXAnchor];
            v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
            [array addObject:v29];

            v13 = v17;
            ++v15;
            v16 = v13;
          }

          while (v12 != v15);
          v12 = [(NSArray *)obj countByEnumeratingWithState:&v78 objects:v83 count:16];
        }

        while (v12);
        metricsCopy = v67;
        selfCopy3 = selfCopy;
      }

      else
      {
        v66 = 608;
        v68 = metricsCopy;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v69 = self->_leadingViews;
        v31 = [(NSArray *)v69 countByEnumeratingWithState:&v74 objects:v82 count:16];
        selfCopy3 = self;
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
              [(PUPhotoEditButtonCenteredToolbar *)selfCopy3 interItemSpacing];
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
                v42 = [(NSArray *)selfCopy3->_leadingViews indexOfObject:v34]== 0 && v72;
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
                    firstBaselineAnchor = [v35 firstBaselineAnchor];
                    firstBaselineAnchor2 = [(NSArray *)obj firstBaselineAnchor];
                    v46 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
                    [array addObject:v46];
                  }

                  else
                  {
                    centerYAnchor = [v35 centerYAnchor];
                    centerYAnchor2 = [buttonAreaLayoutGuide centerYAnchor];
                    v59 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
                    [array addObject:v59];

                    obj = v35;
                  }
                }

                else
                {
                  centerYAnchor3 = [v35 centerYAnchor];
                  centerYAnchor4 = [buttonAreaLayoutGuide centerYAnchor];
                  v50 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
                  [array addObject:v50];

                  v40 = 10.0;
                }

                leadingAnchor3 = [v35 leadingAnchor];
                trailingAnchor3 = [v34 trailingAnchor];
                centerYAnchor5 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:v40];

                LODWORD(v62) = 1143930880;
                [centerYAnchor5 setPriority:v62];
                [array addObject:centerYAnchor5];
                leadingAnchor4 = [v35 leadingAnchor];
                trailingAnchor4 = [v34 trailingAnchor];
                v63 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
                [array addObject:v63];

                selfCopy3 = selfCopy;
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

                leadingAnchor5 = [v35 leadingAnchor];
                leadingAnchor6 = [buttonAreaLayoutGuide leadingAnchor];
                [(PUPhotoEditToolbar *)selfCopy3 longSideMargin];
                v53 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:?];
                [array addObject:v53];

                centerYAnchor5 = [v35 centerYAnchor];
                leadingAnchor4 = [buttonAreaLayoutGuide centerYAnchor];
                trailingAnchor4 = [centerYAnchor5 constraintEqualToAnchor:leadingAnchor4];
                [array addObject:trailingAnchor4];
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

        metricsCopy = v68;
      }

      v7 = v66;
      goto LABEL_47;
    }
  }

LABEL_48:
}

- (void)setCenterView:(id)view leadingViews:(id)views trailingViews:(id)trailingViews
{
  v81 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  viewsCopy = views;
  trailingViewsCopy = trailingViews;
  v59 = viewsCopy;
  if (([viewsCopy isEqualToArray:self->_leadingViews] & 1) == 0 || !objc_msgSend(trailingViewsCopy, "isEqualToArray:", self->_trailingViews) || self->_centerView != viewCopy)
  {
    v57 = viewCopy;
    v58 = trailingViewsCopy;
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

    mainToolbarContainer = [(PUPhotoEditToolbar *)self mainToolbarContainer];
    objc_storeStrong(p_centerView, view);
    [mainToolbarContainer addSubview:*p_centerView];
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

          [mainToolbarContainer addSubview:*(*(&v64 + 1) + 8 * k)];
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

          [mainToolbarContainer addSubview:*(*(&v60 + 1) + 8 * m)];
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v60 objects:v77 count:16];
      }

      while (v37);
    }

    buttonAreaLayoutGuide = [(PUPhotoEditButtonCenteredToolbar *)self buttonAreaLayoutGuide];

    if (!buttonAreaLayoutGuide)
    {
      v41 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      [(PUPhotoEditButtonCenteredToolbar *)self setButtonAreaLayoutGuide:v41];

      buttonAreaLayoutGuide2 = [(PUPhotoEditButtonCenteredToolbar *)self buttonAreaLayoutGuide];
      [mainToolbarContainer addLayoutGuide:buttonAreaLayoutGuide2];
    }

    buttonAreaLayoutGuide3 = [(PUPhotoEditButtonCenteredToolbar *)self buttonAreaLayoutGuide];
    leftAnchor = [mainToolbarContainer leftAnchor];
    leftAnchor2 = [buttonAreaLayoutGuide3 leftAnchor];
    v54 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v76[0] = v54;
    rightAnchor = [mainToolbarContainer rightAnchor];
    rightAnchor2 = [buttonAreaLayoutGuide3 rightAnchor];
    v51 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v76[1] = v51;
    topAnchor = [mainToolbarContainer topAnchor];
    topAnchor2 = [buttonAreaLayoutGuide3 topAnchor];
    v46 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v76[2] = v46;
    bottomAnchor = [mainToolbarContainer bottomAnchor];
    bottomAnchor2 = [buttonAreaLayoutGuide3 bottomAnchor];
    v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v76[3] = v49;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:4];
    [mainToolbarContainer addConstraints:v50];

    [(PUPhotoEditButtonCenteredToolbar *)self _invalidateAllConstraints];
    viewCopy = v57;
    trailingViewsCopy = v58;
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

  photoEditSpec = [(PUPhotoEditToolbar *)self photoEditSpec];
  shouldUseCompactToolbarSpacing = [photoEditSpec shouldUseCompactToolbarSpacing];

  if (shouldUseCompactToolbarSpacing)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

@end