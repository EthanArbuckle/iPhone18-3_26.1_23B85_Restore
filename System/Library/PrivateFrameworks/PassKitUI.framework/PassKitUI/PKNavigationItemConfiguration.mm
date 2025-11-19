@interface PKNavigationItemConfiguration
- (PKNavigationItemConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyToViewController:(uint64_t)a1;
- (void)setLeadingItemGroups:(uint64_t)a1;
- (void)setTitleView:(uint64_t)a1;
- (void)setTrailingItemGroups:(uint64_t)a1;
@end

@implementation PKNavigationItemConfiguration

- (PKNavigationItemConfiguration)init
{
  v17.receiver = self;
  v17.super_class = PKNavigationItemConfiguration;
  v2 = [(PKNavigationItemConfiguration *)&v17 init];
  v3 = v2;
  if (v2)
  {
    title = v2->_title;
    v2->_style = 0;
    v2->_title = 0;
    v2->_visible = 1;

    largeTitle = v3->_largeTitle;
    v3->_largeTitle = 0;

    titleView = v3->_titleView;
    v3->_titleView = 0;

    attributedSubtitle = v3->_attributedSubtitle;
    v3->_attributedSubtitle = 0;

    largeAttributedSubtitle = v3->_largeAttributedSubtitle;
    v3->_largeAttributedSubtitle = 0;

    subtitleView = v3->_subtitleView;
    v3->_subtitleView = 0;

    largeSubtitleView = v3->_largeSubtitleView;
    v3->_largeSubtitleView = 0;

    backButtonTitle = v3->_backButtonTitle;
    v3->_largeTitleDisplayMode = 0;
    v3->_backButtonTitle = 0;
    v3->_automaticallyHideTitle = 0;

    leadingItemGroups = v3->_leadingItemGroups;
    v13 = MEMORY[0x1E695E0F0];
    v3->_backButtonDisplayMode = 0;
    v3->_leadingItemGroups = v13;

    trailingItemGroups = v3->_trailingItemGroups;
    v3->_trailingItemGroups = v13;

    toolbarItems = v3->_toolbarItems;
    v3->_toolbarItems = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 2) = self->_style;
  *(v4 + 9) = self->_visible;
  objc_storeStrong(v4 + 3, self->_title);
  objc_storeStrong(v4 + 4, self->_largeTitle);
  objc_storeStrong(v4 + 5, self->_titleView);
  objc_storeStrong(v4 + 6, self->_attributedSubtitle);
  objc_storeStrong(v4 + 7, self->_largeAttributedSubtitle);
  objc_storeStrong(v4 + 8, self->_subtitleView);
  objc_storeStrong(v4 + 9, self->_largeSubtitleView);
  *(v4 + 10) = self->_largeTitleDisplayMode;
  *(v4 + 10) = self->_automaticallyHideTitle;
  objc_storeStrong(v4 + 11, self->_backButtonTitle);
  *(v4 + 12) = self->_backButtonDisplayMode;
  objc_storeStrong(v4 + 13, self->_leadingItemGroups);
  objc_storeStrong(v4 + 14, self->_trailingItemGroups);
  objc_storeStrong(v4 + 15, self->_toolbarItems);
  return v4;
}

- (void)applyToViewController:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_87;
  }

  if (v3)
  {
    v5 = [v3 navigationItem];
    v6 = [v4 navigationController];
    v7 = [v6 navigationBar];

    v8 = MEMORY[0x1E69DD250];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __55__PKNavigationItemConfiguration_applyToViewController___block_invoke;
    v70[3] = &unk_1E8010970;
    v9 = v7;
    v71 = v9;
    [v8 performWithoutAnimation:v70];

    if ([v5 style] != *(a1 + 16))
    {
      [v5 setStyle:?];
    }

    if (*(a1 + 9) == 1)
    {
      if (*(a1 + 8))
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }

    if ([v5 _preferredNavigationBarVisibility] != v10)
    {
      [v5 _setPreferredNavigationBarVisibility:v10];
    }

    v11 = [v5 _isNavigationBarHidden];
    v12 = *(a1 + 9);
    if (v11 == v12)
    {
      [v5 _setNavigationBarHidden:v12 ^ 1u];
    }

    if (*(a1 + 10) == 1)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
      [v13 configureWithTransparentBackground];
      v14 = [v13 copy];
      [v5 setScrollEdgeAppearance:v14];

      [v13 configureWithDefaultBackground];
      [v13 _setTitleControlHidden:1];
      v15 = [v13 copy];
      [v5 setStandardAppearance:v15];
    }

    else
    {
      v16 = [v5 scrollEdgeAppearance];

      if (v16)
      {
        [v5 setScrollEdgeAppearance:0];
      }

      v17 = [v5 standardAppearance];

      if (v17)
      {
        [v5 setStandardAppearance:0];
      }
    }

    v18 = [v5 compactScrollEdgeAppearance];

    if (v18)
    {
      [v5 setCompactScrollEdgeAppearance:0];
    }

    v19 = [v5 compactAppearance];

    if (v19)
    {
      [v5 setCompactAppearance:0];
    }

    if ([v5 largeTitleDisplayMode] != *(a1 + 80))
    {
      [v5 setLargeTitleDisplayMode:?];
    }

    v20 = [v5 attributedTitle];
    v21 = *(a1 + 24);
    v22 = v20;
    v23 = v21;
    v24 = v23;
    if (v22 == v23)
    {

      goto LABEL_34;
    }

    if (v22 && v23)
    {
      v25 = [v22 isEqualToAttributedString:v23];

      if (v25)
      {
LABEL_34:
        v26 = [v5 largeTitle];
        v27 = *(a1 + 32);
        v28 = v26;
        v29 = v27;
        v30 = v29;
        if (v28 == v29)
        {

          goto LABEL_42;
        }

        if (v28 && v29)
        {
          v31 = [v28 isEqualToString:v29];

          if (v31)
          {
LABEL_42:
            v32 = [v5 titleView];
            v33 = *(a1 + 40);

            if (v32 != v33)
            {
              [v5 setTitleView:*(a1 + 40)];
            }

            v34 = [v5 attributedSubtitle];
            v35 = *(a1 + 48);
            v36 = v34;
            v37 = v35;
            v38 = v37;
            if (v36 == v37)
            {

              goto LABEL_52;
            }

            if (v36 && v37)
            {
              v39 = [v36 isEqualToAttributedString:v37];

              if (v39)
              {
LABEL_52:
                v40 = [v5 largeAttributedSubtitle];
                v41 = *(a1 + 56);
                v42 = v40;
                v43 = v41;
                v44 = v43;
                if (v42 == v43)
                {

                  goto LABEL_60;
                }

                if (v42 && v43)
                {
                  v45 = [v42 isEqualToAttributedString:v43];

                  if (v45)
                  {
LABEL_60:
                    v46 = [v5 subtitleView];
                    v47 = *(a1 + 64);

                    if (v46 != v47)
                    {
                      [v5 setSubtitleView:*(a1 + 64)];
                    }

                    v48 = [v5 largeSubtitleView];
                    v49 = *(a1 + 72);

                    if (v48 != v49)
                    {
                      [v5 setLargeSubtitleView:*(a1 + 72)];
                    }

                    v50 = [v5 leadingItemGroups];
                    v51 = __55__PKNavigationItemConfiguration_applyToViewController___block_invoke_2(v50, *(a1 + 104));

                    if (!v51)
                    {
                      [v5 setLeadingItemGroups:*(a1 + 104)];
                    }

                    v52 = [v5 trailingItemGroups];
                    v53 = __55__PKNavigationItemConfiguration_applyToViewController___block_invoke_2(v52, *(a1 + 112));

                    if (!v53)
                    {
                      [v5 setTrailingItemGroups:*(a1 + 112)];
                    }

                    v54 = [v4 toolbarItems];
                    v55 = *(a1 + 120);
                    v56 = v54;
                    v57 = v55;
                    v58 = [v56 count];
                    if (v58 == [v57 count] && (v56 == 0) != (v57 != 0))
                    {
                      v59 = [v56 count];
                      if (!v59)
                      {
LABEL_74:

                        goto LABEL_76;
                      }

                      v60 = v59;
                      v61 = 0;
                      while (1)
                      {
                        v62 = [v56 objectAtIndexedSubscript:v61];
                        v63 = [v57 objectAtIndexedSubscript:v61];

                        if (v62 != v63)
                        {
                          break;
                        }

                        if (v60 == ++v61)
                        {
                          goto LABEL_74;
                        }
                      }
                    }

                    [v4 setToolbarItems:*(a1 + 120) animated:1];
LABEL_76:
                    if ([v5 backButtonDisplayMode] != *(a1 + 96))
                    {
                      [v5 setBackButtonDisplayMode:?];
                    }

                    v64 = [v5 backButtonTitle];
                    v65 = *(a1 + 88);
                    v66 = v64;
                    v67 = v65;
                    v68 = v67;
                    if (v66 == v67)
                    {
                    }

                    else
                    {
                      if (v66 && v67)
                      {
                        v69 = [v66 isEqualToString:v67];

                        if (v69)
                        {
                          goto LABEL_86;
                        }
                      }

                      else
                      {
                      }

                      [v5 setBackButtonTitle:*(a1 + 88)];
                    }

LABEL_86:
                    [v9 layoutIfNeeded];

LABEL_87:
                    return;
                  }
                }

                else
                {
                }

                [v5 setLargeAttributedSubtitle:*(a1 + 56)];
                goto LABEL_60;
              }
            }

            else
            {
            }

            [v5 setAttributedSubtitle:*(a1 + 48)];
            goto LABEL_52;
          }
        }

        else
        {
        }

        [v5 setLargeTitle:*(a1 + 32)];
        goto LABEL_42;
      }
    }

    else
    {
    }

    [v5 setAttributedTitle:*(a1 + 24)];
    goto LABEL_34;
  }

  __break(1u);
}

BOOL __55__PKNavigationItemConfiguration_applyToViewController___block_invoke_2(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5 == [v4 count])
  {
    v6 = [v3 count];
    if (v6)
    {
      v7 = 0;
      v8 = v6 - 1;
      do
      {
        v9 = [v3 objectAtIndexedSubscript:v7];
        v10 = [v4 objectAtIndexedSubscript:v7];

        v11 = v9 == v10;
        v12 = v9 == v10;
        if (!v11)
        {
          break;
        }

        v11 = v8 == v7++;
      }

      while (!v11);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setLeadingItemGroups:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (!v3)
    {
      __break(1u);
      return;
    }

    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 104);
    *(a1 + 104) = v4;

    v3 = v6;
  }
}

- (void)setTrailingItemGroups:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (!v3)
    {
      __break(1u);
      return;
    }

    v6 = v3;
    v4 = [v3 copy];
    v5 = *(a1 + 112);
    *(a1 + 112) = v4;

    v3 = v6;
  }
}

- (void)setTitleView:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

@end