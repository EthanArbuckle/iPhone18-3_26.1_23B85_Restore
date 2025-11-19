@interface PKConfigurablePassDetailSectionsController
- (BOOL)_validateField:(id)a3;
- (BOOL)hasArbitraryInfoField:(id)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (NSArray)sectionIdentifiers;
- (PKConfigurablePassDetailSectionsController)initWithPaymentPass:(id)a3 forSelectSections:(id)a4;
- (PKConfigurablePassDetailSectionsControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (id)_initWithPaymentPass:(id)a3 visibleSectionIdentifiers:(id)a4 clientReservedIdentifiers:(id)a5 renderUnclaimedFields:(BOOL)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (id)titleForFooterInSectionIdentifier:(id)a3;
- (id)titleForHeaderInSectionIdentifier:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSectionIdentifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
@end

@implementation PKConfigurablePassDetailSectionsController

- (PKConfigurablePassDetailSectionsController)initWithPaymentPass:(id)a3 forSelectSections:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithArray:v7];

  v10 = [(PKConfigurablePassDetailSectionsController *)self _initWithPaymentPass:v8 visibleSectionIdentifiers:v9 clientReservedIdentifiers:0 renderUnclaimedFields:0];
  return v10;
}

- (id)_initWithPaymentPass:(id)a3 visibleSectionIdentifiers:(id)a4 clientReservedIdentifiers:(id)a5 renderUnclaimedFields:(BOOL)a6
{
  v6 = a6;
  v120 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v66 = a4;
  v11 = a5;
  v113.receiver = self;
  v113.super_class = PKConfigurablePassDetailSectionsController;
  v84 = [(PKPaymentPassDetailSectionController *)&v113 init];
  if (v84)
  {
    v61 = v6;
    v72 = v11;
    v75 = [v10 passDetailSections];
    v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v70 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v67 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v65 = v10;
    obj = [v10 backFieldBuckets];
    v13 = [obj countByEnumeratingWithState:&v109 objects:v119 count:16];
    if (v13)
    {
      v14 = v13;
      v81 = *v110;
      v15 = *MEMORY[0x1E69BB768];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v110 != v81)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v109 + 1) + 8 * i);
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v18 = v17;
          v19 = [v18 countByEnumeratingWithState:&v105 objects:v118 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v106;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v106 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v105 + 1) + 8 * j);
                v24 = [v23 key];
                if ([v24 hasPrefix:v15])
                {
                  [v12 setObject:v23 forKey:v24];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v105 objects:v118 count:16];
            }

            while (v20);
          }
        }

        v14 = [obj countByEnumeratingWithState:&v109 objects:v119 count:16];
      }

      while (v14);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __141__PKConfigurablePassDetailSectionsController__initWithPaymentPass_visibleSectionIdentifiers_clientReservedIdentifiers_renderUnclaimedFields___block_invoke;
    aBlock[3] = &unk_1E801F558;
    v64 = v73;
    v102 = v64;
    v63 = v70;
    v103 = v63;
    v62 = v67;
    v104 = v62;
    v74 = _Block_copy(aBlock);
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v25 = v75;
    v26 = [v25 countByEnumeratingWithState:&v97 objects:v117 count:16];
    v11 = v72;
    v71 = v25;
    if (v26)
    {
      v27 = v26;
      v28 = *v98;
      v68 = *v98;
      do
      {
        v29 = 0;
        v76 = v27;
        do
        {
          if (*v98 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v97 + 1) + 8 * v29);
          v31 = [v30 identifier];
          if (v66)
          {
            if (([v66 containsObject:v31] & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          else if ([v30 isHidden])
          {
            goto LABEL_28;
          }

          if ([v11 containsObject:v31])
          {
LABEL_28:
            v32 = [v30 rows];
            [v12 removeObjectsForKeys:v32];
            goto LABEL_40;
          }

          v82 = v31;
          v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          obja = v30;
          v33 = [v30 rows];
          v34 = [v33 countByEnumeratingWithState:&v93 objects:v116 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v94;
            do
            {
              for (k = 0; k != v35; ++k)
              {
                if (*v94 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v93 + 1) + 8 * k);
                v39 = [v12 objectForKey:v38];
                if (v39 && [(PKConfigurablePassDetailSectionsController *)v84 _validateField:v39])
                {
                  [v12 removeObjectForKey:v38];
                  [v32 addObject:v39];
                }
              }

              v35 = [v33 countByEnumeratingWithState:&v93 objects:v116 count:16];
            }

            while (v35);
          }

          v74[2](v74, obja, v32);
          v25 = v71;
          v11 = v72;
          v28 = v68;
          v27 = v76;
          v31 = v82;
LABEL_40:

          ++v29;
        }

        while (v29 != v27);
        v27 = [v25 countByEnumeratingWithState:&v97 objects:v117 count:16];
      }

      while (v27);
    }

    v40 = [v12 allKeys];
    v41 = v40;
    v10 = v65;
    if (v61 && [v40 count])
    {
      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v69 = [v65 backFieldBuckets];
      objb = [v69 countByEnumeratingWithState:&v89 objects:v115 count:16];
      if (objb)
      {
        v77 = *v90;
        do
        {
          v44 = 0;
          do
          {
            if (*v90 != v77)
            {
              objc_enumerationMutation(v69);
            }

            v83 = v44;
            v45 = *(*(&v89 + 1) + 8 * v44);
            v85 = 0u;
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v46 = v45;
            v47 = [v46 countByEnumeratingWithState:&v85 objects:v114 count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v86;
              do
              {
                for (m = 0; m != v48; ++m)
                {
                  if (*v86 != v49)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v51 = *(*(&v85 + 1) + 8 * m);
                  v52 = [v51 key];
                  if ([v41 containsObject:v52])
                  {
                    [v42 addObject:v51];
                    [v43 addObject:v52];
                  }
                }

                v48 = [v46 countByEnumeratingWithState:&v85 objects:v114 count:16];
              }

              while (v48);
            }

            v44 = v83 + 1;
          }

          while ((v83 + 1) != objb);
          objb = [v69 countByEnumeratingWithState:&v89 objects:v115 count:16];
        }

        while (objb);
      }

      v53 = [objc_alloc(MEMORY[0x1E69B8A30]) initWithRows:v43];
      [v53 setInsertAfterSection:@"PassesInGroup"];
      v74[2](v74, v53, v42);

      v10 = v65;
      v25 = v71;
      v11 = v72;
    }

    v54 = [v63 copy];
    sectionMap = v84->_sectionMap;
    v84->_sectionMap = v54;

    v56 = [v62 copy];
    fieldMap = v84->_fieldMap;
    v84->_fieldMap = v56;

    v58 = [v64 copy];
    allSectionIdentifiers = v84->_allSectionIdentifiers;
    v84->_allSectionIdentifiers = v58;
  }

  return v84;
}

void __141__PKConfigurablePassDetailSectionsController__initWithPaymentPass_visibleSectionIdentifiers_clientReservedIdentifiers_renderUnclaimedFields___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v5 count])
  {
    v6 = [v9 identifier];
    [*(a1 + 32) addObject:v6];
    [*(a1 + 40) setObject:v9 forKey:v6];
    v7 = *(a1 + 48);
    v8 = [v5 copy];
    [v7 setObject:v8 forKey:v6];
  }
}

- (BOOL)hasArbitraryInfoField:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E69BB768];
  if ([v4 hasPrefix:*MEMORY[0x1E69BB768]])
  {
    v6 = v4;
  }

  else
  {
    v6 = [v5 stringByAppendingString:v4];
  }

  v7 = v6;
  v8 = [(NSDictionary *)self->_fieldMap allValues];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__PKConfigurablePassDetailSectionsController_hasArbitraryInfoField___block_invoke;
  v12[3] = &unk_1E801F5A8;
  v13 = v7;
  v9 = v7;
  v10 = [v8 pk_containsObjectPassingTest:v12];

  return v10;
}

uint64_t __68__PKConfigurablePassDetailSectionsController_hasArbitraryInfoField___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PKConfigurablePassDetailSectionsController_hasArbitraryInfoField___block_invoke_2;
  v5[3] = &unk_1E801F580;
  v6 = *(a1 + 32);
  v3 = [a2 pk_containsObjectPassingTest:v5];

  return v3;
}

uint64_t __68__PKConfigurablePassDetailSectionsController_hasArbitraryInfoField___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 key];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (NSArray)sectionIdentifiers
{
  if ([(PKPaymentPassDetailSectionController *)self currentSegment])
  {
    allSectionIdentifiers = MEMORY[0x1E695E0F0];
  }

  else
  {
    allSectionIdentifiers = self->_allSectionIdentifiers;
  }

  return allSectionIdentifiers;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSectionIdentifier:(id)a4
{
  v4 = [(NSDictionary *)self->_fieldMap objectForKeyedSubscript:a4];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  fieldMap = self->_fieldMap;
  v11 = a4;
  v12 = [(NSDictionary *)fieldMap objectForKey:v9];
  v13 = [v11 row];

  v14 = [v12 objectAtIndex:v13];

  if (v14)
  {
    v15 = [v14 valueImage];
    if (v15)
    {
      v16 = MEMORY[0x1E69DCAB8];
      v17 = v8;
      v18 = [v15 image];
      v19 = [v16 imageWithPKImage:v18];

      v20 = [v17 dequeueReusableCellWithIdentifier:@"imageViewCell"];

      if (!v20)
      {
        v20 = [[PKImageViewCell alloc] initWithReuseIdentifier:@"imageViewCell"];
        [(PKImageViewCell *)v20 setUserInteractionEnabled:0];
        [(PKImageViewCell *)v20 setSelectedBackgroundView:0];
      }

      v21 = MEMORY[0x1E69DC888];
      v22 = [v15 backgroundColor];
      v23 = [v21 pkui_colorWithPKColor:v22];
      [(PKImageViewCell *)v20 setBackgroundColor:v23];

      [(PKImageViewCell *)v20 setImage:v19];
    }

    else
    {
      useBridgeStyle = self->_useBridgeStyle;
      v19 = v9;
      v25 = v14;
      v20 = [v8 dequeueReusableCellWithIdentifier:v19];
      if (!v20)
      {
        v20 = [[PKBackFieldTableCell alloc] initWithBridgeStyle:useBridgeStyle reuseIdentifier:v19];
      }

      [(PKImageViewCell *)v20 setShowLinks:1];
      [(PKImageViewCell *)v20 setField:v25];
    }

    -[PKImageViewCell setAccessoryType:](v20, "setAccessoryType:", [v14 isDrillInField]);
    [(PKImageViewCell *)v20 setSelectionStyle:3];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)titleForHeaderInSectionIdentifier:(id)a3
{
  v3 = [(NSDictionary *)self->_sectionMap objectForKey:a3];
  v4 = [v3 header];

  return v4;
}

- (id)titleForFooterInSectionIdentifier:(id)a3
{
  v3 = [(NSDictionary *)self->_sectionMap objectForKey:a3];
  v4 = [v3 footer];

  return v4;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSDictionary *)self->_fieldMap objectForKey:a5];
  v11 = [v10 objectAtIndex:{objc_msgSend(v9, "row")}];

  if (([v11 isDrillInField] & 1) != 0 || (objc_msgSend(v11, "link"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v15 = [v11 valueImage];

    if (v15)
    {
      LOBYTE(v13) = 0;
    }

    else
    {
      v16 = [v8 cellForRowAtIndexPath:v9];
      v13 = [v16 containsURL];
    }
  }

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSDictionary *)self->_fieldMap objectForKey:a5];
  v11 = [v10 objectAtIndex:{objc_msgSend(v9, "row")}];

  if (v11)
  {
    if ([v11 isDrillInField])
    {
      v12 = v11;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v14 = [v12 authRequirement];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __98__PKConfigurablePassDetailSectionsController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke;
      v17[3] = &unk_1E801F5D0;
      v17[4] = self;
      v18 = v12;
      v19 = v8;
      v20 = v9;
      v15 = v12;
      [WeakRetained presentAuthRequestForPolicy:v14 completion:v17];
    }

    else
    {
      v15 = [v8 cellForRowAtIndexPath:v9];
      v16 = [v15 containsURL];
      [v8 deselectRowAtIndexPath:v9 animated:1];
      if (v16)
      {
        [v15 openFirstURL];
      }
    }
  }

  else
  {
    [v8 deselectRowAtIndexPath:v9 animated:1];
  }
}

void __98__PKConfigurablePassDetailSectionsController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke(void *a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 96));
    [WeakRetained presentPassDetailDrillInForField:a1[5]];
  }

  else
  {
    v3 = a1[6];
    v4 = a1[7];

    [v3 deselectRowAtIndexPath:v4 animated:1];
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  fieldMap = self->_fieldMap;
  v7 = a4;
  v8 = [(NSDictionary *)fieldMap objectForKey:a5];
  v9 = [v7 row];

  v10 = [v8 objectAtIndex:v9];

  v11 = [v10 valueImage];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_11;
  }

  v13 = [v11 image];
  if (!v13)
  {
    v21 = 0.0;
    goto LABEL_13;
  }

  v14 = v13;
  [v13 size];
  v17 = v16;
  v18 = v15;
  v19 = *MEMORY[0x1E695F060];
  v20 = *(MEMORY[0x1E695F060] + 8);
  v21 = v15 <= 184.0 ? v15 : 184.0;

  if (v17 == v19 && v18 == v20)
  {
LABEL_11:
    v21 = *MEMORY[0x1E69DE3D0];
  }

LABEL_13:

  return v21;
}

- (BOOL)_validateField:(id)a3
{
  v3 = [a3 valueImage];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 image];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (PKConfigurablePassDetailSectionsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end