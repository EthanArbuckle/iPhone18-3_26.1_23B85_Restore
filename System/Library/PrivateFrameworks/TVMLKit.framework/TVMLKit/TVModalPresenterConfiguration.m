@interface TVModalPresenterConfiguration
- (CGRect)sourceRect;
- (CGSize)formSheetSize;
- (CGSize)popoverSize;
- (TVModalPresenterConfiguration)initWithDictionary:(id)a3;
- (void)_configureWithDictionary:(id)a3;
@end

@implementation TVModalPresenterConfiguration

- (TVModalPresenterConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TVModalPresenterConfiguration;
  v5 = [(TVModalPresenterConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TVModalPresenterConfiguration *)v5 _configureWithDictionary:v4];
  }

  return v6;
}

- (void)_configureWithDictionary:(id)a3
{
  v66 = a3;
  v4 = [v66 objectForKey:@"popover"];
  objc_opt_class();
  v5 = 0.0;
  v63 = v4;
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = v4) != 0)
  {
    v7 = v6;
    v8 = [v6 objectForKey:@"barButtonID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = v8;
    }

    else
    {
      v65 = 0;
    }

    v12 = [v7 objectForKey:@"height"];
    objc_opt_class();
    v11 = 0.0;
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      v11 = v13;
    }

    v62 = v7;
    v14 = [v7 objectForKey:@"width"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      v5 = v15;
    }

    v9 = 3;
    v10 = 7;
  }

  else
  {
    v62 = 0;
    v65 = 0;
    v9 = 0;
    v10 = 5;
    v11 = 0.0;
  }

  v16 = [v66 objectForKey:@"playback"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    v10 = 0;
    v9 = 2;
  }

  v19 = [v66 objectForKey:@"formSheet"];
  objc_opt_class();
  v20 = 0.0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v21 = v19) != 0)
  {
    v64 = v21;
    v22 = [v21 objectForKey:@"height"];
    objc_opt_class();
    v23 = 0.0;
    if (objc_opt_isKindOfClass())
    {
      [v22 doubleValue];
      v23 = v24;
    }

    v25 = [v64 objectForKey:@"width"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v25 doubleValue];
      v20 = v26;
    }

    v9 = 1;
    v10 = 2;
  }

  else
  {
    v64 = 0;
    v23 = 0.0;
  }

  v27 = [v66 objectForKey:@"navigationBarHidden"];
  objc_opt_class();
  v59 = v27;
  if (objc_opt_isKindOfClass())
  {
    v57 = [v27 BOOLValue];
  }

  else
  {
    v57 = 1;
  }

  v28 = MEMORY[0x277CBF3A0];
  v29 = [v66 objectForKey:@"useCustomPresenter"];
  objc_opt_class();
  v61 = v17;
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v29 BOOLValue])
  {
    v9 = 4;
  }

  v30 = *v28;
  v31 = v28[1];
  v32 = v28[2];
  v33 = v28[3];
  v34 = [v66 objectForKey:@"sourceview"];
  objc_opt_class();
  v60 = v19;
  v58 = v29;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v36 = 0;
    goto LABEL_33;
  }

  v35 = v34;
  v36 = v35;
  if (!v35)
  {
LABEL_33:
    v39 = 0;
    goto LABEL_38;
  }

  v37 = v10;
  v38 = [v35 objectForKey:@"sourceviewObj"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = [v36 objectForKey:@"sourceviewRect"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v40 CGRectValue];
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v33 = v44;
  }

  v10 = v37;
LABEL_38:
  v45 = [v66 objectForKey:@"overridePresentationStyle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  if ([v46 isEqualToString:@"currentContext"])
  {
    v47 = 6;
  }

  else if ([v46 isEqualToString:@"formSheet"])
  {
    v9 = 1;
    v47 = 2;
  }

  else if ([v46 isEqualToString:@"fullscreen"])
  {
    v47 = 5;
  }

  else if ([v46 isEqualToString:@"none"])
  {
    v47 = -1;
  }

  else if ([v46 isEqualToString:@"pageSheet"])
  {
    v47 = 1;
  }

  else
  {
    v47 = v10;
  }

  v48 = [v66 objectForKey:@"allowsModalOverModal"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = [v48 BOOLValue];
  }

  else
  {
    v49 = 0;
  }

  v50 = [v65 copy];
  barButtonID = self->_barButtonID;
  self->_barButtonID = v50;

  self->_configurationType = v9;
  if (*MEMORY[0x277CBF3A8] == v20)
  {
    v52 = v63;
    if (*(MEMORY[0x277CBF3A8] + 8) == v23)
    {
      [MEMORY[0x277D75D28] defaultFormSheetSize];
      v20 = v53;
      v23 = v54;
    }
  }

  else
  {
    v52 = v63;
  }

  self->_formSheetSize.width = v20;
  self->_formSheetSize.height = v23;
  self->_navigationBarHidden = v57;
  self->_popoverSize.width = v5;
  self->_popoverSize.height = v11;
  self->_allowsModalOverModal = v49;
  self->_allowsMenuDismissal = 1;
  sourceView = self->_sourceView;
  self->_presentationStyle = v47;
  self->_sourceView = v39;
  v56 = v39;

  self->_sourceRect.origin.x = v30;
  self->_sourceRect.origin.y = v31;
  self->_sourceRect.size.width = v32;
  self->_sourceRect.size.height = v33;
}

- (CGSize)formSheetSize
{
  width = self->_formSheetSize.width;
  height = self->_formSheetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)popoverSize
{
  width = self->_popoverSize.width;
  height = self->_popoverSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end