@interface STStorageOptionTip
- (STStorageOptionTip)init;
- (STStorageOptionTipDelegate)delegate;
- (float)activationPercent;
- (int64_t)eventualGain;
- (int64_t)immediateGain;
- (void)enableOption;
- (void)performAdditionalAction;
- (void)setActivationPercent:(float)a3;
- (void)setEventualGain:(int64_t)a3;
- (void)setImmediateGain:(int64_t)a3;
- (void)setValue:(id)a3 specifier:(id)a4;
@end

@implementation STStorageOptionTip

- (STStorageOptionTip)init
{
  v5.receiver = self;
  v5.super_class = STStorageOptionTip;
  v2 = [(STStorageTip *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_282D51E38 target:v2 set:sel_setValue_specifier_ get:0 detail:0 cell:6 edit:0];
    [v3 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [(STStorageTip *)v2 setSpecifier:v3];
    [(STStorageTip *)v2 setProperty:@"stOptionTip" forKey:@"stTipKind"];
  }

  return v2;
}

- (void)enableOption
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained enableOptionForTip:self];

  v4 = [MEMORY[0x277D69958] sharedNotifier];
  [v4 postAppsStateChanged:0];
}

- (void)performAdditionalAction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 performAdditionalAction:self];
  }
}

- (void)setValue:(id)a3 specifier:(id)a4
{
  v18 = [(STStorageOptionTip *)self confirmationText:a3];
  if ([v18 length])
  {
    v5 = [(STStorageOptionTip *)self confirmationButtonTitle];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(STStorageTip *)self title];
    }

    v8 = v7;

    v9 = STFrameworkLocStr(@"ST_CANCEL");
    v10 = objc_alloc_init(MEMORY[0x277D3F9C8]);
    [v10 setTitle:v8];
    [v10 setPrompt:v18];
    [v10 setCancelButton:v9];
    v11 = STFrameworkLocStr(@"ST_ENABLE");
    [v10 setOkButton:v11];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[STStorageOptionTip mayCauseDataLoss](self, "mayCauseDataLoss")}];
    [v10 setProperty:v12 forKey:*MEMORY[0x277D3FE80]];

    objc_storeWeak(&v10[*MEMORY[0x277D3FCB8]], self);
    [v10 setConfirmationAction:sel_enableOption];
    v13 = [(STStorageOptionTip *)self additionalButtonTitle];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [(STStorageOptionTip *)self additionalButtonTitle];
      [v10 setAlternateButton:v15];

      [v10 setConfirmationAlternateAction:sel_performAdditionalAction];
    }

    v16 = [(STStorageTip *)self propertyForKey:@"_stController"];
    v17 = [v16 pointerValue];
    [v17 showConfirmationViewForSpecifier:v10];
  }

  else
  {
    [(STStorageOptionTip *)self enableOption];
  }
}

- (void)setActivationPercent:(float)a3
{
  [(STStorageOptionTip *)self activationPercent];
  if (*&v5 != a3)
  {
    *&v5 = a3;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    [(STStorageTip *)self setProperty:v6 forKey:@"stPercent"];
  }
}

- (float)activationPercent
{
  v2 = [(STStorageTip *)self propertyForKey:@"stPercent"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (int64_t)immediateGain
{
  v2 = [(STStorageTip *)self specifier];
  v3 = [v2 propertyForKey:@"stImmediateGain"];
  v4 = [v3 longLongValue];

  return v4;
}

- (void)setImmediateGain:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [(STStorageTip *)self setProperty:v4 forKey:@"stImmediateGain"];
}

- (int64_t)eventualGain
{
  v2 = [(STStorageTip *)self propertyForKey:@"stEventualGain"];
  v3 = [v2 longLongValue];

  return v3;
}

- (void)setEventualGain:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [(STStorageTip *)self setProperty:v4 forKey:@"stEventualGain"];
}

- (STStorageOptionTipDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end