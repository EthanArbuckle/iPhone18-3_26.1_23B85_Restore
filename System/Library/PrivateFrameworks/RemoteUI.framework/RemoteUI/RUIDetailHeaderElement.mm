@interface RUIDetailHeaderElement
- (void)configureView:(id)a3;
- (void)setBody:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation RUIDetailHeaderElement

- (void)configureView:(id)a3
{
  v44[10] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(RUIElement *)self body];
    v6 = [(RUIElement *)self attributes];
    [v4 setDetailText:v5 attributes:v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeWeak(&self->_headerView, v4);
    v7 = MEMORY[0x277D75348];
    v8 = [(RUIElement *)self attributes];
    v9 = [v8 objectForKeyedSubscript:@"color"];
    v10 = [v7 _remoteUI_colorWithString:v9 defaultColor:0];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v13 = [(RUIElement *)self style];
      v12 = [v13 detailHeaderLabelTextColor];
    }

    WeakRetained = objc_loadWeakRetained(&self->_headerView);
    [WeakRetained setDetailHeaderColor:v12];

    v15 = [(RUIElement *)self attributes];
    v16 = [v15 objectForKeyedSubscript:@"url"];
    if (v16)
    {
    }

    else
    {
      v17 = [(RUIElement *)self attributes];
      v18 = [v17 objectForKeyedSubscript:@"activationFunction"];

      if (!v18)
      {
        goto LABEL_11;
      }
    }

    objc_initWeak(location, self);
    v19 = objc_loadWeakRetained(&self->_headerView);
    v20 = [v19 detailHeaderLabel];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __40__RUIDetailHeaderElement_configureView___block_invoke;
    v40[3] = &unk_2782E81C8;
    objc_copyWeak(&v41, location);
    [v20 setAction:v40];

    objc_destroyWeak(&v41);
    objc_destroyWeak(location);
LABEL_11:
    v21 = *MEMORY[0x277D76A08];
    v43[0] = @"title1";
    v43[1] = @"title2";
    v22 = *MEMORY[0x277D76A20];
    v44[0] = v21;
    v44[1] = v22;
    v23 = *MEMORY[0x277D76A28];
    v43[2] = @"title3";
    v43[3] = @"headline";
    v24 = *MEMORY[0x277D76988];
    v44[2] = v23;
    v44[3] = v24;
    v25 = *MEMORY[0x277D769D0];
    v43[4] = @"subheadline";
    v43[5] = @"body";
    v26 = *MEMORY[0x277D76918];
    v44[4] = v25;
    v44[5] = v26;
    v27 = *MEMORY[0x277D76920];
    v43[6] = @"callout";
    v43[7] = @"footnote";
    v28 = *MEMORY[0x277D76968];
    v44[6] = v27;
    v44[7] = v28;
    v43[8] = @"caption1";
    v43[9] = @"caption2";
    v29 = *MEMORY[0x277D76940];
    v44[8] = *MEMORY[0x277D76938];
    v44[9] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:10];
    v31 = [(RUIElement *)self attributes];
    v32 = [v31 objectForKeyedSubscript:@"textStyle"];

    v33 = [v30 objectForKeyedSubscript:v32];

    if (v33)
    {
      v34 = objc_loadWeakRetained(&self->_headerView);
      v35 = [v34 detailHeaderLabel];
      v36 = MEMORY[0x277D74300];
      v37 = [v30 objectForKeyedSubscript:v32];
      v38 = [v4 traitCollection];
      v39 = [v36 preferredFontForTextStyle:v37 compatibleWithTraitCollection:v38];
      [v35 setFont:v39];
    }

    else
    {
      if (!v32 || !_isInternalInstall())
      {
        goto LABEL_14;
      }

      v34 = _RUILoggingFacility();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v32;
        _os_log_impl(&dword_21B93D000, v34, OS_LOG_TYPE_DEFAULT, "'%@' is not a supported text style", location, 0xCu);
      }
    }

LABEL_14:
  }
}

void __40__RUIDetailHeaderElement_configureView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performAction:2 completion:0];
}

- (void)setBody:(id)a3
{
  v4 = a3;
  v5 = [(RUIElement *)self body];

  if (v5 != v4)
  {
    v9.receiver = self;
    v9.super_class = RUIDetailHeaderElement;
    [(RUIElement *)&v9 setBody:v4];
    WeakRetained = objc_loadWeakRetained(&self->_headerView);
    v7 = [(RUIElement *)self body];
    v8 = [(RUIElement *)self attributes];
    [WeakRetained setDetailText:v7 attributes:v8];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = RUIDetailHeaderElement;
  [(RUIElement *)&v7 setEnabled:?];
  WeakRetained = objc_loadWeakRetained(&self->_headerView);
  v6 = [WeakRetained detailHeaderLabel];
  [v6 setEnabled:v3];
}

@end