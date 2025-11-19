@interface QLToolbarButton
- (BOOL)isEqual:(id)a3;
- (QLToolbarButton)barButtonWithTarget:(id)a3 action:(SEL)a4 maxSize:(CGSize)a5;
- (QLToolbarButton)initWithCoder:(id)a3;
- (QLToolbarButton)initWithIdentifier:(id)a3;
- (UIEdgeInsets)_additionalSelectionInsets;
- (id)_barButtonImage;
- (void)encodeWithCoder:(id)a3;
- (void)handleLongPress:(id)a3;
- (void)invalidateCurrentState;
@end

@implementation QLToolbarButton

- (QLToolbarButton)initWithIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = QLToolbarButton;
  v6 = [(QLToolbarButton *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v7->_placement = 1;
    v7->_enabled = 1;
    v8 = v7;
  }

  return v7;
}

- (id)_barButtonImage
{
  v3 = [MEMORY[0x277D755D0] unspecifiedConfiguration];
  v4 = [v3 _configurationIgnoringDynamicType];

  if ([(QLToolbarButton *)self useBundleImage])
  {
    v5 = MEMORY[0x277D755B8];
    v6 = [(QLToolbarButton *)self symbolImageName];
    v7 = QLFrameworkBundle();
    v8 = [v5 imageNamed:v6 inBundle:v7 withConfiguration:v4];
  }

  else
  {
    if ([(QLToolbarButton *)self useInternalSymbolImage])
    {
      v9 = MEMORY[0x277D755B8];
      v6 = [(QLToolbarButton *)self symbolImageName];
      v10 = [v9 _systemImageNamed:v6 withConfiguration:v4];
    }

    else
    {
      v8 = [(QLToolbarButton *)self symbolImageName];

      if (!v8)
      {
        goto LABEL_9;
      }

      v11 = MEMORY[0x277D755B8];
      v6 = [(QLToolbarButton *)self symbolImageName];
      v10 = [v11 systemImageNamed:v6 withConfiguration:v4];
    }

    v8 = v10;
  }

LABEL_9:

  return v8;
}

- (QLToolbarButton)barButtonWithTarget:(id)a3 action:(SEL)a4 maxSize:(CGSize)a5
{
  v7 = a3;
  v8 = [(QLToolbarButton *)self symbolImageName];

  if (v8)
  {
    v9 = [QLToolbarButtonItemRepresentation alloc];
    v10 = [(QLToolbarButton *)self _barButtonImage];
    v11 = [(QLToolbarButtonItemRepresentation *)v9 initWithImage:v10 style:0 target:v7 action:a4];
LABEL_5:
    v15 = v11;

    goto LABEL_6;
  }

  v12 = [(QLToolbarButton *)self title];

  v13 = [QLToolbarButtonItemRepresentation alloc];
  v14 = v13;
  if (v12)
  {
    v10 = [(QLToolbarButton *)self title];
    v11 = [(QLToolbarButtonItemRepresentation *)v14 initWithTitle:v10 style:0 target:v7 action:a4];
    goto LABEL_5;
  }

  v15 = [(QLToolbarButtonItemRepresentation *)v13 initWithBarButtonSystemItem:self->_systemItem target:v7 action:a4];
LABEL_6:
  v16 = [(QLToolbarButton *)self options];

  if (v16)
  {
    [(QLToolbarButtonItemRepresentation *)v15 setLongPressTarget:self action:sel_handleLongPress_];
  }

  [(QLToolbarButtonItemRepresentation *)v15 setSelected:[(QLToolbarButton *)self selected]];
  [(QLToolbarButton *)self _additionalSelectionInsets];
  [(QLToolbarButtonItemRepresentation *)v15 _setAdditionalSelectionInsets:?];
  [(QLToolbarButtonItemRepresentation *)v15 setEnabled:[(QLToolbarButton *)self enabled]];
  v17 = [(QLToolbarButton *)self title];
  [(QLToolbarButtonItemRepresentation *)v15 setTitle:v17];

  v18 = [(QLToolbarButton *)self identifier];
  [(QLToolbarButtonItemRepresentation *)v15 setIdentifier:v18];

  [(QLToolbarButtonItemRepresentation *)v15 setPlacement:[(QLToolbarButton *)self placement]];
  [(QLToolbarButtonItemRepresentation *)v15 setPresentingViewController:v7];
  [(QLToolbarButtonItemRepresentation *)v15 setOriginalButton:self];
  [(QLToolbarButtonItemRepresentation *)v15 setDisappearsOnTap:[(QLToolbarButton *)self disappearsOnTap]];
  v19 = [(QLToolbarButton *)self accessibilityIdentifier];

  if (v19)
  {
    v20 = [(QLToolbarButton *)self accessibilityIdentifier];
    [(QLToolbarButtonItemRepresentation *)v15 setAccessibilityIdentifier:v20];
  }

  objc_storeStrong(&self->_currentItemRepresentation, v15);
  objc_storeWeak(&self->_target, v7);
  if (a4)
  {
    v21 = a4;
  }

  else
  {
    v21 = 0;
  }

  self->_action = v21;

  return v15;
}

- (void)handleLongPress:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  if ([a3 state] == 1)
  {
    v4 = self->_currentItemRepresentation;
    v5 = [(QLToolbarButtonItemRepresentation *)v4 presentingViewController];
    v6 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v7 = [(QLToolbarButtonItemRepresentation *)v4 customView];
    v8 = [v6 popoverPresentationController];
    [v8 setSourceView:v7];

    v9 = [(QLToolbarButtonItemRepresentation *)v4 customView];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v6 popoverPresentationController];
    [v18 setSourceRect:{v11, v13, v15, v17}];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v19 = [(QLToolbarButton *)self options];
    v20 = [v19 countByEnumeratingWithState:&v46 objects:v50 count:16];
    v21 = &off_261679000;
    if (v20)
    {
      v22 = v20;
      v38 = v5;
      v39 = v4;
      v23 = *v47;
      v24 = 1;
      obj = v19;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          v26 = v6;
          if (*v47 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v46 + 1) + 8 * i);
          v28 = MEMORY[0x277D750F8];
          v29 = [v27 title];
          v30 = [v27 style];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __35__QLToolbarButton_handleLongPress___block_invoke;
          v45[3] = &unk_279AE0DF0;
          v45[4] = self;
          v45[5] = v27;
          v31 = [v28 actionWithTitle:v29 style:v30 handler:v45];

          v6 = v26;
          [v26 addAction:v31];
          v24 &= [v27 isCancel] ^ 1;
        }

        v22 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v22);

      v5 = v38;
      v4 = v39;
      v21 = &off_261679000;
      if ((v24 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v32 = MEMORY[0x277D750F8];
    v33 = QLLocalizedString(@"Cancel");
    v34 = [v32 actionWithTitle:v33 style:1 handler:0];
    [v6 addAction:v34];

LABEL_13:
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = *(v21 + 322);
    v41[2] = __35__QLToolbarButton_handleLongPress___block_invoke_2;
    v41[3] = &unk_279AE0E18;
    v42 = v5;
    v43 = v6;
    v44 = self;
    v35 = v6;
    v36 = v5;
    [v36 prepareForActionSheetPresentationWithCompletionHandler:v41];
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __35__QLToolbarButton_handleLongPress___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 24));
  if (*(*(a1 + 32) + 32))
  {
    v6 = *(*(a1 + 32) + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = WeakRetained;
  [WeakRetained performSelector:v6 withObject:*(a1 + 40)];
}

void __35__QLToolbarButton_handleLongPress___block_invoke_2(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__QLToolbarButton_handleLongPress___block_invoke_3;
  v4[3] = &unk_279AE0E18;
  v5 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  QLRunInMainThread(v4);
}

id __35__QLToolbarButton_handleLongPress___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) presentViewController:*(a1 + 40) animated:1 completion:0];
  v2 = *(a1 + 40);
  v3 = (*(a1 + 48) + 16);

  return objc_storeWeak(v3, v2);
}

- (void)invalidateCurrentState
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_alertController);
    [v4 dismissViewControllerAnimated:0 completion:0];

    objc_storeWeak(&self->_alertController, 0);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(QLToolbarButton *)self identifier];
  v6 = [v4 identifier];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(QLToolbarButton *)self identifier];
    v9 = [v4 identifier];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_18;
    }
  }

  v11 = [(QLToolbarButton *)self title];
  v12 = [v4 title];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [(QLToolbarButton *)self title];
    v15 = [v4 title];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  v17 = [(QLToolbarButton *)self accessibilityIdentifier];
  v18 = [v4 accessibilityIdentifier];
  v19 = v18;
  if (v17 == v18)
  {
  }

  else
  {
    v20 = [(QLToolbarButton *)self accessibilityIdentifier];
    v21 = [v4 accessibilityIdentifier];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_18;
    }
  }

  v23 = [(QLToolbarButton *)self options];
  v24 = [v4 options];
  v25 = v24;
  if (v23 == v24)
  {
  }

  else
  {
    v26 = [(QLToolbarButton *)self options];
    v27 = [v4 options];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_18;
    }
  }

  v29 = [(QLToolbarButton *)self selected];
  if (v29 != [v4 selected])
  {
LABEL_18:
    LOBYTE(v30) = 0;
    goto LABEL_19;
  }

  [(QLToolbarButton *)self _additionalSelectionInsets];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  [v4 _additionalSelectionInsets];
  LOBYTE(v30) = 0;
  if (v35 == v43 && v33 == v40 && v39 == v42 && v37 == v41)
  {
    v44 = [(QLToolbarButton *)self systemItem];
    if (v44 == [v4 systemItem])
    {
      v45 = [(QLToolbarButton *)self placement];
      if (v45 == [v4 placement])
      {
        v46 = [(QLToolbarButton *)self forceToNavBar];
        if (v46 == [v4 forceToNavBar])
        {
          v47 = [(QLToolbarButton *)self useBundleImage];
          if (v47 == [v4 useBundleImage])
          {
            v48 = [(QLToolbarButton *)self useInternalSymbolImage];
            if (v48 == [v4 useInternalSymbolImage])
            {
              v49 = [(QLToolbarButton *)self symbolImageName];
              v50 = [v4 symbolImageName];

              if (v49 == v50)
              {
                v51 = [(QLToolbarButton *)self enabled];
                if (v51 == [v4 enabled])
                {
                  v52 = [(QLToolbarButton *)self roundedSelectedIndicator];
                  if (v52 == [v4 roundedSelectedIndicator])
                  {
                    v53 = [(QLToolbarButton *)self disappearsOnTap];
                    v30 = v53 ^ [v4 disappearsOnTap] ^ 1;
                    goto LABEL_19;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_18;
  }

LABEL_19:

  return v30;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(QLToolbarButton *)self identifier];

  if (v4)
  {
    v5 = [(QLToolbarButton *)self identifier];
    [v11 encodeObject:v5 forKey:@"identifier"];
  }

  v6 = [(QLToolbarButton *)self symbolImageName];

  if (v6)
  {
    v7 = [(QLToolbarButton *)self symbolImageName];
    [v11 encodeObject:v7 forKey:@"symbolImageName"];
  }

  [v11 encodeInteger:-[QLToolbarButton systemItem](self forKey:{"systemItem"), @"systemItem"}];
  [v11 encodeInteger:-[QLToolbarButton placement](self forKey:{"placement"), @"placement"}];
  [v11 encodeBool:-[QLToolbarButton forceToNavBar](self forKey:{"forceToNavBar"), @"forceToNavBar"}];
  [v11 encodeBool:-[QLToolbarButton useBundleImage](self forKey:{"useBundleImage"), @"useBundleImage"}];
  [v11 encodeBool:-[QLToolbarButton useInternalSymbolImage](self forKey:{"useInternalSymbolImage"), @"useInternalSymbolImage"}];
  [v11 encodeBool:-[QLToolbarButton enabled](self forKey:{"enabled"), @"enabled"}];
  [v11 encodeBool:-[QLToolbarButton selected](self forKey:{"selected"), @"selected"}];
  [(QLToolbarButton *)self _additionalSelectionInsets];
  [v11 encodeUIEdgeInsets:@"_additionalSelectionInsets" forKey:?];
  [v11 encodeBool:-[QLToolbarButton roundedSelectedIndicator](self forKey:{"roundedSelectedIndicator"), @"roundedSelectedIndicator"}];
  [v11 encodeBool:-[QLToolbarButton disappearsOnTap](self forKey:{"disappearsOnTap"), @"disappearsOnTap"}];
  v8 = [(QLToolbarButton *)self title];
  [v11 encodeObject:v8 forKey:@"title"];

  v9 = [(QLToolbarButton *)self accessibilityIdentifier];
  [v11 encodeObject:v9 forKey:@"accessibilityIdentifier"];

  v10 = [(QLToolbarButton *)self options];
  [v11 encodeObject:v10 forKey:@"options"];
}

- (QLToolbarButton)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = QLToolbarButton;
  v5 = [(QLToolbarButton *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolImageName"];
    symbolImageName = v5->_symbolImageName;
    v5->_symbolImageName = v8;

    v5->_systemItem = [v4 decodeIntegerForKey:@"systemItem"];
    v5->_placement = [v4 decodeIntegerForKey:@"placement"];
    v5->_forceToNavBar = [v4 decodeBoolForKey:@"forceToNavBar"];
    v5->_useBundleImage = [v4 decodeBoolForKey:@"useBundleImage"];
    v5->_useInternalSymbolImage = [v4 decodeBoolForKey:@"useInternalSymbolImage"];
    v5->_selected = [v4 decodeBoolForKey:@"selected"];
    [v4 decodeUIEdgeInsetsForKey:@"_additionalSelectionInsets"];
    v5->__additionalSelectionInsets.top = v10;
    v5->__additionalSelectionInsets.left = v11;
    v5->__additionalSelectionInsets.bottom = v12;
    v5->__additionalSelectionInsets.right = v13;
    v5->_roundedSelectedIndicator = [v4 decodeBoolForKey:@"roundedSelectedIndicator"];
    v5->_disappearsOnTap = [v4 decodeBoolForKey:@"disappearsOnTap"];
    v5->_enabled = [v4 decodeBoolForKey:@"enabled"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityIdentifier"];
    accessibilityIdentifier = v5->_accessibilityIdentifier;
    v5->_accessibilityIdentifier = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"options"];
    options = v5->_options;
    v5->_options = v21;

    v23 = v5;
  }

  return v5;
}

- (UIEdgeInsets)_additionalSelectionInsets
{
  objc_copyStruct(v6, &self->__additionalSelectionInsets, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end