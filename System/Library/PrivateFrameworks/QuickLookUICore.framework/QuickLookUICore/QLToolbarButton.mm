@interface QLToolbarButton
- (BOOL)isEqual:(id)equal;
- (QLToolbarButton)barButtonWithTarget:(id)target action:(SEL)action maxSize:(CGSize)size;
- (QLToolbarButton)initWithCoder:(id)coder;
- (QLToolbarButton)initWithIdentifier:(id)identifier;
- (UIEdgeInsets)_additionalSelectionInsets;
- (id)_barButtonImage;
- (void)encodeWithCoder:(id)coder;
- (void)handleLongPress:(id)press;
- (void)invalidateCurrentState;
@end

@implementation QLToolbarButton

- (QLToolbarButton)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = QLToolbarButton;
  v6 = [(QLToolbarButton *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v7->_placement = 1;
    v7->_enabled = 1;
    v8 = v7;
  }

  return v7;
}

- (id)_barButtonImage
{
  unspecifiedConfiguration = [MEMORY[0x277D755D0] unspecifiedConfiguration];
  _configurationIgnoringDynamicType = [unspecifiedConfiguration _configurationIgnoringDynamicType];

  if ([(QLToolbarButton *)self useBundleImage])
  {
    v5 = MEMORY[0x277D755B8];
    symbolImageName = [(QLToolbarButton *)self symbolImageName];
    v7 = QLFrameworkBundle();
    symbolImageName2 = [v5 imageNamed:symbolImageName inBundle:v7 withConfiguration:_configurationIgnoringDynamicType];
  }

  else
  {
    if ([(QLToolbarButton *)self useInternalSymbolImage])
    {
      v9 = MEMORY[0x277D755B8];
      symbolImageName = [(QLToolbarButton *)self symbolImageName];
      v10 = [v9 _systemImageNamed:symbolImageName withConfiguration:_configurationIgnoringDynamicType];
    }

    else
    {
      symbolImageName2 = [(QLToolbarButton *)self symbolImageName];

      if (!symbolImageName2)
      {
        goto LABEL_9;
      }

      v11 = MEMORY[0x277D755B8];
      symbolImageName = [(QLToolbarButton *)self symbolImageName];
      v10 = [v11 systemImageNamed:symbolImageName withConfiguration:_configurationIgnoringDynamicType];
    }

    symbolImageName2 = v10;
  }

LABEL_9:

  return symbolImageName2;
}

- (QLToolbarButton)barButtonWithTarget:(id)target action:(SEL)action maxSize:(CGSize)size
{
  targetCopy = target;
  symbolImageName = [(QLToolbarButton *)self symbolImageName];

  if (symbolImageName)
  {
    v9 = [QLToolbarButtonItemRepresentation alloc];
    _barButtonImage = [(QLToolbarButton *)self _barButtonImage];
    v11 = [(QLToolbarButtonItemRepresentation *)v9 initWithImage:_barButtonImage style:0 target:targetCopy action:action];
LABEL_5:
    v15 = v11;

    goto LABEL_6;
  }

  title = [(QLToolbarButton *)self title];

  v13 = [QLToolbarButtonItemRepresentation alloc];
  v14 = v13;
  if (title)
  {
    _barButtonImage = [(QLToolbarButton *)self title];
    v11 = [(QLToolbarButtonItemRepresentation *)v14 initWithTitle:_barButtonImage style:0 target:targetCopy action:action];
    goto LABEL_5;
  }

  v15 = [(QLToolbarButtonItemRepresentation *)v13 initWithBarButtonSystemItem:self->_systemItem target:targetCopy action:action];
LABEL_6:
  options = [(QLToolbarButton *)self options];

  if (options)
  {
    [(QLToolbarButtonItemRepresentation *)v15 setLongPressTarget:self action:sel_handleLongPress_];
  }

  [(QLToolbarButtonItemRepresentation *)v15 setSelected:[(QLToolbarButton *)self selected]];
  [(QLToolbarButton *)self _additionalSelectionInsets];
  [(QLToolbarButtonItemRepresentation *)v15 _setAdditionalSelectionInsets:?];
  [(QLToolbarButtonItemRepresentation *)v15 setEnabled:[(QLToolbarButton *)self enabled]];
  title2 = [(QLToolbarButton *)self title];
  [(QLToolbarButtonItemRepresentation *)v15 setTitle:title2];

  identifier = [(QLToolbarButton *)self identifier];
  [(QLToolbarButtonItemRepresentation *)v15 setIdentifier:identifier];

  [(QLToolbarButtonItemRepresentation *)v15 setPlacement:[(QLToolbarButton *)self placement]];
  [(QLToolbarButtonItemRepresentation *)v15 setPresentingViewController:targetCopy];
  [(QLToolbarButtonItemRepresentation *)v15 setOriginalButton:self];
  [(QLToolbarButtonItemRepresentation *)v15 setDisappearsOnTap:[(QLToolbarButton *)self disappearsOnTap]];
  accessibilityIdentifier = [(QLToolbarButton *)self accessibilityIdentifier];

  if (accessibilityIdentifier)
  {
    accessibilityIdentifier2 = [(QLToolbarButton *)self accessibilityIdentifier];
    [(QLToolbarButtonItemRepresentation *)v15 setAccessibilityIdentifier:accessibilityIdentifier2];
  }

  objc_storeStrong(&self->_currentItemRepresentation, v15);
  objc_storeWeak(&self->_target, targetCopy);
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;

  return v15;
}

- (void)handleLongPress:(id)press
{
  v51 = *MEMORY[0x277D85DE8];
  if ([press state] == 1)
  {
    v4 = self->_currentItemRepresentation;
    presentingViewController = [(QLToolbarButtonItemRepresentation *)v4 presentingViewController];
    v6 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
    customView = [(QLToolbarButtonItemRepresentation *)v4 customView];
    popoverPresentationController = [v6 popoverPresentationController];
    [popoverPresentationController setSourceView:customView];

    customView2 = [(QLToolbarButtonItemRepresentation *)v4 customView];
    [customView2 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    popoverPresentationController2 = [v6 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{v11, v13, v15, v17}];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    options = [(QLToolbarButton *)self options];
    v20 = [options countByEnumeratingWithState:&v46 objects:v50 count:16];
    v21 = &off_261679000;
    if (v20)
    {
      v22 = v20;
      v38 = presentingViewController;
      v39 = v4;
      v23 = *v47;
      v24 = 1;
      obj = options;
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
          title = [v27 title];
          style = [v27 style];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __35__QLToolbarButton_handleLongPress___block_invoke;
          v45[3] = &unk_279AE0DF0;
          v45[4] = self;
          v45[5] = v27;
          v31 = [v28 actionWithTitle:title style:style handler:v45];

          v6 = v26;
          [v26 addAction:v31];
          v24 &= [v27 isCancel] ^ 1;
        }

        v22 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v22);

      presentingViewController = v38;
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
    v42 = presentingViewController;
    v43 = v6;
    selfCopy = self;
    v35 = v6;
    v36 = presentingViewController;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  identifier = [(QLToolbarButton *)self identifier];
  identifier2 = [equalCopy identifier];
  v7 = identifier2;
  if (identifier == identifier2)
  {
  }

  else
  {
    identifier3 = [(QLToolbarButton *)self identifier];
    identifier4 = [equalCopy identifier];
    v10 = [identifier3 isEqual:identifier4];

    if (!v10)
    {
      goto LABEL_18;
    }
  }

  title = [(QLToolbarButton *)self title];
  title2 = [equalCopy title];
  v13 = title2;
  if (title == title2)
  {
  }

  else
  {
    title3 = [(QLToolbarButton *)self title];
    title4 = [equalCopy title];
    v16 = [title3 isEqual:title4];

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  accessibilityIdentifier = [(QLToolbarButton *)self accessibilityIdentifier];
  accessibilityIdentifier2 = [equalCopy accessibilityIdentifier];
  v19 = accessibilityIdentifier2;
  if (accessibilityIdentifier == accessibilityIdentifier2)
  {
  }

  else
  {
    accessibilityIdentifier3 = [(QLToolbarButton *)self accessibilityIdentifier];
    accessibilityIdentifier4 = [equalCopy accessibilityIdentifier];
    v22 = [accessibilityIdentifier3 isEqual:accessibilityIdentifier4];

    if (!v22)
    {
      goto LABEL_18;
    }
  }

  options = [(QLToolbarButton *)self options];
  options2 = [equalCopy options];
  v25 = options2;
  if (options == options2)
  {
  }

  else
  {
    options3 = [(QLToolbarButton *)self options];
    options4 = [equalCopy options];
    v28 = [options3 isEqual:options4];

    if (!v28)
    {
      goto LABEL_18;
    }
  }

  selected = [(QLToolbarButton *)self selected];
  if (selected != [equalCopy selected])
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
  [equalCopy _additionalSelectionInsets];
  LOBYTE(v30) = 0;
  if (v35 == v43 && v33 == v40 && v39 == v42 && v37 == v41)
  {
    systemItem = [(QLToolbarButton *)self systemItem];
    if (systemItem == [equalCopy systemItem])
    {
      placement = [(QLToolbarButton *)self placement];
      if (placement == [equalCopy placement])
      {
        forceToNavBar = [(QLToolbarButton *)self forceToNavBar];
        if (forceToNavBar == [equalCopy forceToNavBar])
        {
          useBundleImage = [(QLToolbarButton *)self useBundleImage];
          if (useBundleImage == [equalCopy useBundleImage])
          {
            useInternalSymbolImage = [(QLToolbarButton *)self useInternalSymbolImage];
            if (useInternalSymbolImage == [equalCopy useInternalSymbolImage])
            {
              symbolImageName = [(QLToolbarButton *)self symbolImageName];
              symbolImageName2 = [equalCopy symbolImageName];

              if (symbolImageName == symbolImageName2)
              {
                enabled = [(QLToolbarButton *)self enabled];
                if (enabled == [equalCopy enabled])
                {
                  roundedSelectedIndicator = [(QLToolbarButton *)self roundedSelectedIndicator];
                  if (roundedSelectedIndicator == [equalCopy roundedSelectedIndicator])
                  {
                    disappearsOnTap = [(QLToolbarButton *)self disappearsOnTap];
                    v30 = disappearsOnTap ^ [equalCopy disappearsOnTap] ^ 1;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(QLToolbarButton *)self identifier];

  if (identifier)
  {
    identifier2 = [(QLToolbarButton *)self identifier];
    [coderCopy encodeObject:identifier2 forKey:@"identifier"];
  }

  symbolImageName = [(QLToolbarButton *)self symbolImageName];

  if (symbolImageName)
  {
    symbolImageName2 = [(QLToolbarButton *)self symbolImageName];
    [coderCopy encodeObject:symbolImageName2 forKey:@"symbolImageName"];
  }

  [coderCopy encodeInteger:-[QLToolbarButton systemItem](self forKey:{"systemItem"), @"systemItem"}];
  [coderCopy encodeInteger:-[QLToolbarButton placement](self forKey:{"placement"), @"placement"}];
  [coderCopy encodeBool:-[QLToolbarButton forceToNavBar](self forKey:{"forceToNavBar"), @"forceToNavBar"}];
  [coderCopy encodeBool:-[QLToolbarButton useBundleImage](self forKey:{"useBundleImage"), @"useBundleImage"}];
  [coderCopy encodeBool:-[QLToolbarButton useInternalSymbolImage](self forKey:{"useInternalSymbolImage"), @"useInternalSymbolImage"}];
  [coderCopy encodeBool:-[QLToolbarButton enabled](self forKey:{"enabled"), @"enabled"}];
  [coderCopy encodeBool:-[QLToolbarButton selected](self forKey:{"selected"), @"selected"}];
  [(QLToolbarButton *)self _additionalSelectionInsets];
  [coderCopy encodeUIEdgeInsets:@"_additionalSelectionInsets" forKey:?];
  [coderCopy encodeBool:-[QLToolbarButton roundedSelectedIndicator](self forKey:{"roundedSelectedIndicator"), @"roundedSelectedIndicator"}];
  [coderCopy encodeBool:-[QLToolbarButton disappearsOnTap](self forKey:{"disappearsOnTap"), @"disappearsOnTap"}];
  title = [(QLToolbarButton *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  accessibilityIdentifier = [(QLToolbarButton *)self accessibilityIdentifier];
  [coderCopy encodeObject:accessibilityIdentifier forKey:@"accessibilityIdentifier"];

  options = [(QLToolbarButton *)self options];
  [coderCopy encodeObject:options forKey:@"options"];
}

- (QLToolbarButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = QLToolbarButton;
  v5 = [(QLToolbarButton *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolImageName"];
    symbolImageName = v5->_symbolImageName;
    v5->_symbolImageName = v8;

    v5->_systemItem = [coderCopy decodeIntegerForKey:@"systemItem"];
    v5->_placement = [coderCopy decodeIntegerForKey:@"placement"];
    v5->_forceToNavBar = [coderCopy decodeBoolForKey:@"forceToNavBar"];
    v5->_useBundleImage = [coderCopy decodeBoolForKey:@"useBundleImage"];
    v5->_useInternalSymbolImage = [coderCopy decodeBoolForKey:@"useInternalSymbolImage"];
    v5->_selected = [coderCopy decodeBoolForKey:@"selected"];
    [coderCopy decodeUIEdgeInsetsForKey:@"_additionalSelectionInsets"];
    v5->__additionalSelectionInsets.top = v10;
    v5->__additionalSelectionInsets.left = v11;
    v5->__additionalSelectionInsets.bottom = v12;
    v5->__additionalSelectionInsets.right = v13;
    v5->_roundedSelectedIndicator = [coderCopy decodeBoolForKey:@"roundedSelectedIndicator"];
    v5->_disappearsOnTap = [coderCopy decodeBoolForKey:@"disappearsOnTap"];
    v5->_enabled = [coderCopy decodeBoolForKey:@"enabled"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityIdentifier"];
    accessibilityIdentifier = v5->_accessibilityIdentifier;
    v5->_accessibilityIdentifier = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"options"];
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