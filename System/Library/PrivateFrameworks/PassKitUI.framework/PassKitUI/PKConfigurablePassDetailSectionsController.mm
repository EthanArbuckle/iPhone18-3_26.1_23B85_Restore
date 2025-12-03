@interface PKConfigurablePassDetailSectionsController
- (BOOL)_validateField:(id)field;
- (BOOL)hasArbitraryInfoField:(id)field;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (NSArray)sectionIdentifiers;
- (PKConfigurablePassDetailSectionsController)initWithPaymentPass:(id)pass forSelectSections:(id)sections;
- (PKConfigurablePassDetailSectionsControllerDelegate)delegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)_initWithPaymentPass:(id)pass visibleSectionIdentifiers:(id)identifiers clientReservedIdentifiers:(id)reservedIdentifiers renderUnclaimedFields:(BOOL)fields;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)titleForFooterInSectionIdentifier:(id)identifier;
- (id)titleForHeaderInSectionIdentifier:(id)identifier;
- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
@end

@implementation PKConfigurablePassDetailSectionsController

- (PKConfigurablePassDetailSectionsController)initWithPaymentPass:(id)pass forSelectSections:(id)sections
{
  v6 = MEMORY[0x1E695DFD8];
  sectionsCopy = sections;
  passCopy = pass;
  v9 = [[v6 alloc] initWithArray:sectionsCopy];

  v10 = [(PKConfigurablePassDetailSectionsController *)self _initWithPaymentPass:passCopy visibleSectionIdentifiers:v9 clientReservedIdentifiers:0 renderUnclaimedFields:0];
  return v10;
}

- (id)_initWithPaymentPass:(id)pass visibleSectionIdentifiers:(id)identifiers clientReservedIdentifiers:(id)reservedIdentifiers renderUnclaimedFields:(BOOL)fields
{
  fieldsCopy = fields;
  v120 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  identifiersCopy = identifiers;
  reservedIdentifiersCopy = reservedIdentifiers;
  v113.receiver = self;
  v113.super_class = PKConfigurablePassDetailSectionsController;
  v84 = [(PKPaymentPassDetailSectionController *)&v113 init];
  if (v84)
  {
    v61 = fieldsCopy;
    v72 = reservedIdentifiersCopy;
    passDetailSections = [passCopy passDetailSections];
    v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v70 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v67 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v65 = passCopy;
    obj = [passCopy backFieldBuckets];
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
    v25 = passDetailSections;
    v26 = [v25 countByEnumeratingWithState:&v97 objects:v117 count:16];
    reservedIdentifiersCopy = v72;
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
          identifier = [v30 identifier];
          if (identifiersCopy)
          {
            if (([identifiersCopy containsObject:identifier] & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          else if ([v30 isHidden])
          {
            goto LABEL_28;
          }

          if ([reservedIdentifiersCopy containsObject:identifier])
          {
LABEL_28:
            rows = [v30 rows];
            [v12 removeObjectsForKeys:rows];
            goto LABEL_40;
          }

          v82 = identifier;
          rows = objc_alloc_init(MEMORY[0x1E695DF70]);
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          obja = v30;
          rows2 = [v30 rows];
          v34 = [rows2 countByEnumeratingWithState:&v93 objects:v116 count:16];
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
                  objc_enumerationMutation(rows2);
                }

                v38 = *(*(&v93 + 1) + 8 * k);
                v39 = [v12 objectForKey:v38];
                if (v39 && [(PKConfigurablePassDetailSectionsController *)v84 _validateField:v39])
                {
                  [v12 removeObjectForKey:v38];
                  [rows addObject:v39];
                }
              }

              v35 = [rows2 countByEnumeratingWithState:&v93 objects:v116 count:16];
            }

            while (v35);
          }

          v74[2](v74, obja, rows);
          v25 = v71;
          reservedIdentifiersCopy = v72;
          v28 = v68;
          v27 = v76;
          identifier = v82;
LABEL_40:

          ++v29;
        }

        while (v29 != v27);
        v27 = [v25 countByEnumeratingWithState:&v97 objects:v117 count:16];
      }

      while (v27);
    }

    allKeys = [v12 allKeys];
    v41 = allKeys;
    passCopy = v65;
    if (v61 && [allKeys count])
    {
      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      backFieldBuckets = [v65 backFieldBuckets];
      objb = [backFieldBuckets countByEnumeratingWithState:&v89 objects:v115 count:16];
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
              objc_enumerationMutation(backFieldBuckets);
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
          objb = [backFieldBuckets countByEnumeratingWithState:&v89 objects:v115 count:16];
        }

        while (objb);
      }

      v53 = [objc_alloc(MEMORY[0x1E69B8A30]) initWithRows:v43];
      [v53 setInsertAfterSection:@"PassesInGroup"];
      v74[2](v74, v53, v42);

      passCopy = v65;
      v25 = v71;
      reservedIdentifiersCopy = v72;
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

- (BOOL)hasArbitraryInfoField:(id)field
{
  fieldCopy = field;
  v5 = *MEMORY[0x1E69BB768];
  if ([fieldCopy hasPrefix:*MEMORY[0x1E69BB768]])
  {
    v6 = fieldCopy;
  }

  else
  {
    v6 = [v5 stringByAppendingString:fieldCopy];
  }

  v7 = v6;
  allValues = [(NSDictionary *)self->_fieldMap allValues];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__PKConfigurablePassDetailSectionsController_hasArbitraryInfoField___block_invoke;
  v12[3] = &unk_1E801F5A8;
  v13 = v7;
  v9 = v7;
  v10 = [allValues pk_containsObjectPassingTest:v12];

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

- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier
{
  v4 = [(NSDictionary *)self->_fieldMap objectForKeyedSubscript:identifier];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  fieldMap = self->_fieldMap;
  pathCopy = path;
  v12 = [(NSDictionary *)fieldMap objectForKey:identifierCopy];
  v13 = [pathCopy row];

  v14 = [v12 objectAtIndex:v13];

  if (v14)
  {
    valueImage = [v14 valueImage];
    if (valueImage)
    {
      v16 = MEMORY[0x1E69DCAB8];
      v17 = viewCopy;
      image = [valueImage image];
      v19 = [v16 imageWithPKImage:image];

      v20 = [v17 dequeueReusableCellWithIdentifier:@"imageViewCell"];

      if (!v20)
      {
        v20 = [[PKImageViewCell alloc] initWithReuseIdentifier:@"imageViewCell"];
        [(PKImageViewCell *)v20 setUserInteractionEnabled:0];
        [(PKImageViewCell *)v20 setSelectedBackgroundView:0];
      }

      v21 = MEMORY[0x1E69DC888];
      backgroundColor = [valueImage backgroundColor];
      v23 = [v21 pkui_colorWithPKColor:backgroundColor];
      [(PKImageViewCell *)v20 setBackgroundColor:v23];

      [(PKImageViewCell *)v20 setImage:v19];
    }

    else
    {
      useBridgeStyle = self->_useBridgeStyle;
      v19 = identifierCopy;
      v25 = v14;
      v20 = [viewCopy dequeueReusableCellWithIdentifier:v19];
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

- (id)titleForHeaderInSectionIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_sectionMap objectForKey:identifier];
  header = [v3 header];

  return header;
}

- (id)titleForFooterInSectionIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_sectionMap objectForKey:identifier];
  footer = [v3 footer];

  return footer;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  v10 = [(NSDictionary *)self->_fieldMap objectForKey:identifier];
  v11 = [v10 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  if (([v11 isDrillInField] & 1) != 0 || (objc_msgSend(v11, "link"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    LOBYTE(containsURL) = 1;
  }

  else
  {
    valueImage = [v11 valueImage];

    if (valueImage)
    {
      LOBYTE(containsURL) = 0;
    }

    else
    {
      v16 = [viewCopy cellForRowAtIndexPath:pathCopy];
      containsURL = [v16 containsURL];
    }
  }

  return containsURL;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  v10 = [(NSDictionary *)self->_fieldMap objectForKey:identifier];
  v11 = [v10 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  if (v11)
  {
    if ([v11 isDrillInField])
    {
      v12 = v11;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      authRequirement = [v12 authRequirement];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __98__PKConfigurablePassDetailSectionsController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke;
      v17[3] = &unk_1E801F5D0;
      v17[4] = self;
      v18 = v12;
      v19 = viewCopy;
      v20 = pathCopy;
      v15 = v12;
      [WeakRetained presentAuthRequestForPolicy:authRequirement completion:v17];
    }

    else
    {
      v15 = [viewCopy cellForRowAtIndexPath:pathCopy];
      containsURL = [v15 containsURL];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      if (containsURL)
      {
        [v15 openFirstURL];
      }
    }
  }

  else
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  fieldMap = self->_fieldMap;
  pathCopy = path;
  v8 = [(NSDictionary *)fieldMap objectForKey:identifier];
  v9 = [pathCopy row];

  v10 = [v8 objectAtIndex:v9];

  valueImage = [v10 valueImage];
  v12 = valueImage;
  if (!valueImage)
  {
    goto LABEL_11;
  }

  image = [valueImage image];
  if (!image)
  {
    v21 = 0.0;
    goto LABEL_13;
  }

  v14 = image;
  [image size];
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

- (BOOL)_validateField:(id)field
{
  valueImage = [field valueImage];
  v4 = valueImage;
  if (valueImage)
  {
    image = [valueImage image];
    v6 = image != 0;
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