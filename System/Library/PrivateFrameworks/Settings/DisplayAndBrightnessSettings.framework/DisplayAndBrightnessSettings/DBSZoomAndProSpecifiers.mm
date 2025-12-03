@interface DBSZoomAndProSpecifiers
+ (BOOL)specifiersPresentIn:(id)in;
+ (void)removeSpecifiersFrom:(id)from;
- (DBSZoomAndProSpecifiersDelegate)delegate;
- (NSArray)specifiers;
- (id)_displayZoomFooterText;
- (id)advancedDetailString:(id)string;
- (id)localizedMagnifyModeName;
- (void)presentModalMagnifyController;
@end

@implementation DBSZoomAndProSpecifiers

+ (BOOL)specifiersPresentIn:(id)in
{
  v3 = [in specifierForID:@"DISPLAY_ZOOM_PRO_GROUP"];
  v4 = v3 != 0;

  return v4;
}

+ (void)removeSpecifiersFrom:(id)from
{
  fromCopy = from;
  array = [MEMORY[0x277CBEB18] array];
  v4 = [fromCopy specifierForID:@"DISPLAY_ZOOM_PRO_GROUP"];
  if (v4)
  {
    [array addObject:v4];
  }

  v5 = [fromCopy specifierForID:@"MAGNIFY"];
  if (v5)
  {
    [array addObject:v5];
  }

  v6 = [fromCopy specifierForID:@"ADVANCED_LINK_GROUP_ID"];
  if (v6)
  {
    [array addObject:v6];
  }

  if ([array count])
  {
    [fromCopy removeContiguousSpecifiers:array animated:1];
  }
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    array = [MEMORY[0x277CBEB18] array];
    mEMORY[0x277D3F990] = [MEMORY[0x277D3F990] sharedManager];
    v6 = [mEMORY[0x277D3F990] capabilityBoolAnswer:*MEMORY[0x277D400B0]];

    mEMORY[0x277D3F990]2 = [MEMORY[0x277D3F990] sharedManager];
    v8 = [mEMORY[0x277D3F990]2 capabilityBoolAnswer:*MEMORY[0x277D3FF10]];

    if (v8 && (v6 & 1) == 0)
    {
      v9 = MEMORY[0x277D3FAD8];
      if (DBSChamoisEnabled())
      {
        v10 = @"DISPLAY_ZOOM_PRO";
      }

      else
      {
        v10 = @"DISPLAY_ZOOM_LEGACY";
      }

      v11 = DBS_LocalizedStringForDisplays(v10);
      v12 = [v9 groupSpecifierWithID:@"DISPLAY_ZOOM_PRO_GROUP" name:v11];

      _displayZoomFooterText = [(DBSZoomAndProSpecifiers *)self _displayZoomFooterText];
      [v12 setProperty:_displayZoomFooterText forKey:*MEMORY[0x277D3FF88]];
      [(NSMutableArray *)array addObject:v12];
      v14 = MEMORY[0x277D3FAD8];
      if (DBSChamoisEnabled())
      {
        v15 = @"VIEW";
      }

      else
      {
        v15 = @"VIEW_LEGACY";
      }

      v16 = DBS_LocalizedStringForDisplays(v15);
      v17 = [v14 preferenceSpecifierNamed:v16 target:self set:0 get:sel_localizedMagnifyModeName detail:0 cell:2 edit:0];

      [v17 setObject:@"MAGNIFY" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      sf_isiPad = [currentDevice sf_isiPad];

      if (sf_isiPad)
      {
        [v17 setButtonAction:sel_presentModalMagnifyController];
        [v17 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
      }

      else
      {
        [v17 setDetailControllerClass:objc_opt_class()];
      }

      [(NSMutableArray *)array addObject:v17];
    }

    delegate = [(DBSZoomAndProSpecifiers *)self delegate];
    proModeSupported = [delegate proModeSupported];

    if (proModeSupported)
    {
      v22 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ADVANCED_LINK_GROUP_ID"];
      [(NSMutableArray *)array addObject:v22];
      v23 = MEMORY[0x277D3FAD8];
      v24 = DBS_LocalizedStringForDisplays(@"ADVANCED");
      v25 = [v23 preferenceSpecifierNamed:v24 target:self set:0 get:sel_advancedDetailString_ detail:objc_opt_class() cell:2 edit:0];
      advancedSpecifier = self->_advancedSpecifier;
      self->_advancedSpecifier = v25;

      [(PSSpecifier *)self->_advancedSpecifier setObject:@"ADVANCED" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
      [(NSMutableArray *)array addObject:self->_advancedSpecifier];
    }

    v27 = self->_specifiers;
    self->_specifiers = array;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (id)_displayZoomFooterText
{
  v3 = +[DBSDisplayZoomConfigurationController defaultController];
  displayZoomModes = [v3 displayZoomModes];

  v5 = DBSStringForDisplayZoomOption(1);
  v6 = DBSStringForDisplayZoomOption(0);
  v7 = DBSStringForDisplayZoomOption(2);
  delegate = [(DBSZoomAndProSpecifiers *)self delegate];
  connectedDisplayName = [delegate connectedDisplayName];

  v10 = [displayZoomModes objectForKeyedSubscript:v5];
  v11 = v10;
  if (connectedDisplayName)
  {
    if (v10)
    {
      v12 = [displayZoomModes objectForKeyedSubscript:v6];
      if (v12)
      {
        v13 = v12;
        v14 = [displayZoomModes objectForKeyedSubscript:v7];

        if (v14)
        {
          v15 = MEMORY[0x277CCACA8];
          v16 = @"EXTERNALDISPLAY_DISPLAY_ZOOMED_STANDARD_DENSE_DESCRIPTION";
LABEL_18:
          v27 = DBS_LocalizedStringForDisplays(v16);
          v28 = [v15 localizedStringWithFormat:v27, connectedDisplayName];

          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    v21 = [displayZoomModes objectForKeyedSubscript:v5];
    if (v21 && (v22 = v21, [displayZoomModes objectForKeyedSubscript:v6], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = @"EXTERNALDISPLAY_DISPLAY_ZOOMED_STANDARD_DESCRIPTION";
    }

    else
    {
      v24 = [displayZoomModes objectForKeyedSubscript:v7];
      if (v24 && (v25 = v24, [displayZoomModes objectForKeyedSubscript:v6], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26))
      {
        v15 = MEMORY[0x277CCACA8];
        v16 = @"EXTERNALDISPLAY_DISPLAY_STANDARD_DENSE_DESCRIPTION";
      }

      else
      {
        v15 = MEMORY[0x277CCACA8];
        v16 = @"EXTERNALDISPLAY_DISPLAY_ZOOM_DEFAULT_DESCRIPTION";
      }
    }

    goto LABEL_18;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  v17 = [displayZoomModes objectForKeyedSubscript:v6];
  if (!v17)
  {

    goto LABEL_20;
  }

  v18 = v17;
  v19 = [displayZoomModes objectForKeyedSubscript:v7];

  if (!v19)
  {
LABEL_20:
    v29 = [displayZoomModes objectForKeyedSubscript:v5];
    if (v29 && (v30 = v29, [displayZoomModes objectForKeyedSubscript:v6], v31 = objc_claimAutoreleasedReturnValue(), v31, v30, v31))
    {
      v20 = @"DEFAULT_DISPLAY_ZOOMED_STANDARD_DESCRIPTION";
    }

    else
    {
      v32 = [displayZoomModes objectForKeyedSubscript:v7];
      if (v32 && (v33 = v32, [displayZoomModes objectForKeyedSubscript:v6], v34 = objc_claimAutoreleasedReturnValue(), v34, v33, v34))
      {
        v20 = @"DEFAULT_DISPLAY_STANDARD_DENSE_DESCRIPTION";
      }

      else
      {
        v20 = @"DEFAULT_DISPLAY_ZOOM_DEFAULT_DESCRIPTION";
      }
    }

    goto LABEL_27;
  }

  v20 = @"DEFAULT_DISPLAY_ZOOMED_STANDARD_DENSE_DESCRIPTION";
LABEL_27:
  v28 = DBS_LocalizedStringForDisplays(v20);
LABEL_28:

  return v28;
}

- (id)localizedMagnifyModeName
{
  delegate = [(DBSZoomAndProSpecifiers *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(DBSZoomAndProSpecifiers *)self delegate];
    localizedMagnifyModeName = [delegate2 localizedMagnifyModeName];
  }

  else
  {
    delegate2 = +[DBSDisplayZoomConfigurationController defaultController];
    currentDisplayZoomMode = [delegate2 currentDisplayZoomMode];
    localizedMagnifyModeName = [currentDisplayZoomMode localizedName];
  }

  return localizedMagnifyModeName;
}

- (void)presentModalMagnifyController
{
  delegate = [(DBSZoomAndProSpecifiers *)self delegate];
  [delegate presentModalMagnifyController];
}

- (id)advancedDetailString:(id)string
{
  mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
  isReference = [mainDisplay isReference];

  if (isReference)
  {
    v5 = DBS_LocalizedStringForDisplays(@"REFERENCE_MODE_ON");
  }

  else
  {
    v5 = &stru_2834977A0;
  }

  return v5;
}

- (DBSZoomAndProSpecifiersDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end