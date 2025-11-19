@interface PSSpecifier
+ (PSSpecifier)specifierWithSpecifier:(id)a3;
+ (id)deleteButtonSpecifierWithName:(id)a3 target:(id)a4 action:(SEL)a5;
+ (id)groupSpecifierWithID:(id)a3 name:(id)a4;
+ (id)preferenceSpecifierNamed:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9;
+ (int64_t)autoCapsTypeForString:(id)a3;
+ (int64_t)autoCorrectionTypeForNumber:(id)a3;
+ (int64_t)keyboardTypeForString:(id)a3;
- (BOOL)hasValidGetter;
- (BOOL)hasValidSetter;
- (BOOL)isEqualToSpecifier:(id)a3;
- (BOOL)isRadioGroup;
- (NSDictionary)shortTitleDictionary;
- (NSString)identifier;
- (PSController)parentController;
- (PSSpecifier)init;
- (PSSpecifier)initWithName:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9;
- (SEL)buttonAction;
- (SEL)confirmationAction;
- (SEL)confirmationAlternateAction;
- (SEL)confirmationCancelAction;
- (SEL)controllerLoadAction;
- (id)description;
- (id)displayStringForCurrentValue;
- (id)performGetter;
- (id)target;
- (id)ultimateTargetForPresentation;
- (id)weakUserInfo;
- (int64_t)titleCompare:(id)a3;
- (unint64_t)controllerLoadStyle;
- (void)_addLinkSpec:(id)a3;
- (void)addFooterHyperlinkWithRange:(_NSRange)a3 target:(id)a4 action:(SEL)a5;
- (void)addFooterHyperlinkWithRange:(_NSRange)a3 url:(id)a4;
- (void)identifier;
- (void)loadValuesAndTitlesFromDataSource;
- (void)performButtonAction;
- (void)performConfirmationAction;
- (void)performConfirmationAlternateAction;
- (void)performConfirmationCancelAction;
- (void)performControllerLoadAction;
- (void)performLegacyAction;
- (void)performSetterWithValue:(id)a3;
- (void)setButtonAction:(SEL)a3;
- (void)setConfirmationAction:(SEL)a3;
- (void)setConfirmationAlternateAction:(SEL)a3;
- (void)setConfirmationCancelAction:(SEL)a3;
- (void)setControllerLoadAction:(SEL)a3;
- (void)setKeyboardType:(int64_t)a3 autoCaps:(int64_t)a4 autoCorrection:(int64_t)a5;
- (void)setProperties:(id)a3;
- (void)setProperty:(id)a3 forKey:(id)a4;
- (void)setValues:(id)a3 titles:(id)a4 shortTitles:(id)a5;
- (void)setValues:(id)a3 titles:(id)a4 shortTitles:(id)a5 usingLocalizedTitleSorting:(BOOL)a6;
- (void)setupIconImageWithBundle:(id)a3;
- (void)setupIconImageWithPath:(id)a3;
@end

@implementation PSSpecifier

- (PSSpecifier)init
{
  gScale = ScreenScale();
  v7.receiver = self;
  v7.super_class = PSSpecifier;
  v3 = [(PSSpecifier *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    properties = v3->_properties;
    v3->_properties = v4;
  }

  return v3;
}

- (PSController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

- (NSString)identifier
{
  v3 = [(PSSpecifier *)self propertyForKey:@"id"];
  if (v3 || ([(PSSpecifier *)self propertyForKey:@"label"], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || ([(PSSpecifier *)self propertyForKey:@"key"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = [(PSSpecifier *)self name];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _PSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PSSpecifier *)v4 identifier];
    }
  }

LABEL_9:

  return v4;
}

- (SEL)controllerLoadAction
{
  if (self->_controllerLoadAction)
  {
    return self->_controllerLoadAction;
  }

  else
  {
    return 0;
  }
}

- (void)loadValuesAndTitlesFromDataSource
{
  if (!self->_values)
  {
    v4 = [(PSSpecifier *)self propertyForKey:@"valuesDataSource"];
    if (v4)
    {
      v15 = v4;
      NSSelectorFromString(v4);
      WeakRetained = objc_loadWeakRetained(&self->target);
      v6 = SFPerformSelector();

      v7 = [(PSSpecifier *)self propertyForKey:@"titlesDataSource"];
      v8 = v7;
      if (v7)
      {
        NSSelectorFromString(v7);
        v9 = objc_loadWeakRetained(&self->target);
        v10 = SFPerformSelector();
      }

      else
      {
        v10 = 0;
      }

      v11 = [(PSSpecifier *)self propertyForKey:@"shortTitlesDataSource"];
      v12 = v11;
      if (v11)
      {
        NSSelectorFromString(v11);
        v13 = objc_loadWeakRetained(&self->target);
        v14 = SFPerformSelector();
      }

      else
      {
        v14 = 0;
      }

      [(PSSpecifier *)self setValues:v6 titles:v10 shortTitles:v14];

      v4 = v15;
    }
  }
}

- (BOOL)isRadioGroup
{
  objc_opt_class();
  v3 = [(PSSpecifier *)self propertyForKey:@"isRadioGroup"];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    objc_opt_class();
    v7 = [(PSSpecifier *)self propertyForKey:@"isRadioGroup"];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v6 = [v9 BOOLValue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)displayStringForCurrentValue
{
  v3 = [(PSSpecifier *)self cellType];
  v4 = [(PSSpecifier *)self values];

  if (!v4)
  {
    [(PSSpecifier *)self loadValuesAndTitlesFromDataSource];
  }

  if (v3 <= 0xD && ((1 << v3) & 0x200A) != 0 || ![(PSSpecifier *)self hasValidGetter])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(PSSpecifier *)self performGetter];
    if (v5 && v3 != 9)
    {
      if (v3 == 4 || v3 == 2)
      {
        v10 = [(PSSpecifier *)self shortTitleDictionary];
      }

      else
      {
        v10 = [(PSSpecifier *)self titleDictionary];
      }

      v11 = v10;
      if (v10)
      {
        v12 = [v10 objectForKey:v5];

        v5 = v12;
      }
    }
  }

  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

+ (id)deleteButtonSpecifierWithName:(id)a3 target:(id)a4 action:(SEL)a5
{
  v7 = a3;
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:a4 set:0 get:0 detail:0 cell:13 edit:0];
  [v8 setProperty:v7 forKey:@"id"];

  [v8 setProperty:objc_opt_class() forKey:@"cellClass"];
  [v8 setButtonAction:a5];

  return v8;
}

- (PSSpecifier)initWithName:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9
{
  v15 = a3;
  v16 = a4;
  gScale = ScreenScale();
  v21.receiver = self;
  v21.super_class = PSSpecifier;
  v17 = [(PSSpecifier *)&v21 init];
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    properties = v17->_properties;
    v17->_properties = v18;

    [(PSSpecifier *)v17 setName:v15];
    objc_storeWeak(&v17->target, v16);
    v17->getter = a6;
    v17->setter = a5;
    v17->detailControllerClass = a7;
    v17->cellType = a8;
    v17->editPaneClass = a9;
  }

  return v17;
}

+ (id)preferenceSpecifierNamed:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9
{
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(PSSpecifier);
  [(PSSpecifier *)v16 setName:v15];

  objc_storeWeak(&v16->target, v14);
  v16->getter = a6;
  v16->setter = a5;
  v16->detailControllerClass = a7;
  v16->cellType = a8;
  v16->editPaneClass = a9;

  return v16;
}

+ (id)groupSpecifierWithID:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = [a1 groupSpecifierWithName:a4];
  [v7 setIdentifier:v6];

  return v7;
}

+ (PSSpecifier)specifierWithSpecifier:(id)a3
{
  if (a3)
  {
    v3 = a3;
    objc_opt_class();
    v4 = objc_opt_new();
    v5 = [v3 name];
    [v4 setName:v5];

    v6 = [v3 target];
    [v4 setTarget:v6];

    v4[3] = v3[3];
    [v4 setDetailControllerClass:{objc_msgSend(v3, "detailControllerClass")}];
    [v4 setCellType:{objc_msgSend(v3, "cellType")}];
    [v4 setEditPaneClass:{objc_msgSend(v3, "editPaneClass")}];
    [v4 setLegacyAction:{objc_msgSend(v3, "legacyAction")}];
    [v4 setLegacyCancel:{objc_msgSend(v3, "legacyCancel")}];
    v4[9] = v3[9];
    v4[10] = v3[10];
    v4[11] = v3[11];
    v4[12] = v3[12];
    [v4 setConfirmationAction:{objc_msgSend(v3, "confirmationAction")}];
    [v4 setConfirmationAlternateAction:{objc_msgSend(v3, "confirmationAlternateAction")}];
    [v4 setConfirmationCancelAction:{objc_msgSend(v3, "confirmationCancelAction")}];
    [v4 setShowContentString:{objc_msgSend(v3, "showContentString")}];
    v7 = [v3 titleDictionary];
    [v4 setTitleDictionary:v7];

    v8 = [v3 shortTitleDictionary];
    [v4 setShortTitleDictionary:v8];

    v9 = [v3 values];
    [v4 setValues:v9];

    v10 = [v3 userInfo];
    [v4 setUserInfo:v10];

    v11 = [v3 properties];

    [v4 setProperties:v11];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setProperty:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_properties setObject:a3 forKey:a4];
  }
}

- (void)setProperties:(id)a3
{
  v4 = [a3 mutableCopy];
  properties = self->_properties;
  self->_properties = v4;
}

- (BOOL)hasValidSetter
{
  WeakRetained = objc_loadWeakRetained(&self->target);
  if (WeakRetained && self->setter)
  {
    v4 = objc_loadWeakRetained(&self->target);
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)performSetterWithValue:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PSSpecifier *)self hasValidSetter])
  {
    WeakRetained = objc_loadWeakRetained(&self->target);
    v6 = SFPerformSelector2();
  }

  else
  {
    v7 = _PSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_loadWeakRetained(&self->target);
      Name = sel_getName(self->setter);
      v10 = 138412546;
      v11 = v8;
      v12 = 2080;
      v13 = Name;
      _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "target %@ is nil, has no setter, or does not respond to setter %s", &v10, 0x16u);
    }
  }
}

- (BOOL)hasValidGetter
{
  WeakRetained = objc_loadWeakRetained(&self->target);
  if (WeakRetained && self->getter)
  {
    v4 = objc_loadWeakRetained(&self->target);
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (id)performGetter
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(PSSpecifier *)self hasValidGetter])
  {
    WeakRetained = objc_loadWeakRetained(&self->target);
    v4 = SFPerformSelector();
  }

  else
  {
    v5 = _PSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained(&self->target);
      Name = sel_getName(self->getter);
      v9 = 138412546;
      v10 = v6;
      v11 = 2080;
      v12 = Name;
      _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "target %@ is nil, has no getter, or does not respond to getter %s", &v9, 0x16u);
    }

    v4 = 0;
  }

  return v4;
}

- (void)performLegacyAction
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->target);
  v4 = WeakRetained;
  if (WeakRetained && self->action)
  {
    v5 = objc_loadWeakRetained(&self->target);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v11 = objc_loadWeakRetained(&self->target);
      v7 = SFPerformSelector();

      return;
    }
  }

  else
  {
  }

  v8 = _PSLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_loadWeakRetained(&self->target);
    Name = sel_getName(self->action);
    *buf = 138412546;
    v13 = v9;
    v14 = 2080;
    v15 = Name;
    _os_log_impl(&dword_18B008000, v8, OS_LOG_TYPE_DEFAULT, "target %@ is nil, has no action, or does not respond to action %s", buf, 0x16u);
  }
}

- (void)performControllerLoadAction
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->target);
  v4 = WeakRetained;
  if (WeakRetained && self->_controllerLoadAction)
  {
    v5 = objc_loadWeakRetained(&self->target);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v11 = objc_loadWeakRetained(&self->target);
      v10 = SFPerformSelector();

      return;
    }
  }

  else
  {
  }

  v6 = _PSLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained(&self->target);
    if (self->_controllerLoadAction)
    {
      controllerLoadAction = self->_controllerLoadAction;
    }

    else
    {
      controllerLoadAction = 0;
    }

    *buf = 138412546;
    v13 = v7;
    v14 = 2080;
    Name = sel_getName(controllerLoadAction);
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "target %@ is nil, has no controllerLoadAction, or does not respond to controllerLoadAction %s", buf, 0x16u);
  }
}

- (void)performButtonAction
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->target);
  v4 = WeakRetained;
  if (WeakRetained && self->_buttonAction)
  {
    v5 = objc_loadWeakRetained(&self->target);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v11 = objc_loadWeakRetained(&self->target);
      v10 = SFPerformSelector();

      return;
    }
  }

  else
  {
  }

  v6 = _PSLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained(&self->target);
    if (self->_buttonAction)
    {
      buttonAction = self->_buttonAction;
    }

    else
    {
      buttonAction = 0;
    }

    *buf = 138412546;
    v13 = v7;
    v14 = 2080;
    Name = sel_getName(buttonAction);
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "target %@ is nil, has no buttonAction, or does not respond to buttonAction %s", buf, 0x16u);
  }
}

- (void)performConfirmationAction
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->target);
  v4 = WeakRetained;
  if (WeakRetained && self->_confirmationAction)
  {
    v5 = objc_loadWeakRetained(&self->target);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v11 = objc_loadWeakRetained(&self->target);
      v10 = SFPerformSelector();

      return;
    }
  }

  else
  {
  }

  v6 = _PSLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained(&self->target);
    if (self->_confirmationAction)
    {
      confirmationAction = self->_confirmationAction;
    }

    else
    {
      confirmationAction = 0;
    }

    *buf = 138412546;
    v13 = v7;
    v14 = 2080;
    Name = sel_getName(confirmationAction);
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "target %@ is nil, has no confirmationAction, or does not respond to confirmationAction %s", buf, 0x16u);
  }
}

- (void)performConfirmationAlternateAction
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->target);
  v4 = WeakRetained;
  if (WeakRetained && self->_confirmationAlternateAction)
  {
    v5 = objc_loadWeakRetained(&self->target);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v11 = objc_loadWeakRetained(&self->target);
      v10 = SFPerformSelector();

      return;
    }
  }

  else
  {
  }

  v6 = _PSLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained(&self->target);
    if (self->_confirmationAlternateAction)
    {
      confirmationAlternateAction = self->_confirmationAlternateAction;
    }

    else
    {
      confirmationAlternateAction = 0;
    }

    *buf = 138412546;
    v13 = v7;
    v14 = 2080;
    Name = sel_getName(confirmationAlternateAction);
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "target %@ is nil, has no confirmationAltAction, or does not respond to confirmationAlternateAction %s", buf, 0x16u);
  }
}

- (void)performConfirmationCancelAction
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->target);
  v4 = WeakRetained;
  if (WeakRetained && self->_confirmationCancelAction)
  {
    v5 = objc_loadWeakRetained(&self->target);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v11 = objc_loadWeakRetained(&self->target);
      v10 = SFPerformSelector();

      return;
    }
  }

  else
  {
  }

  v6 = _PSLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained(&self->target);
    if (self->_confirmationCancelAction)
    {
      confirmationCancelAction = self->_confirmationCancelAction;
    }

    else
    {
      confirmationCancelAction = 0;
    }

    *buf = 138412546;
    v13 = v7;
    v14 = 2080;
    Name = sel_getName(confirmationCancelAction);
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "target %@ is nil, has no confirmationCancelAction, or does not respond to confirmationCancelAction %s", buf, 0x16u);
  }
}

- (void)setValues:(id)a3 titles:(id)a4 shortTitles:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (v14 && v8)
  {
    [(PSSpecifier *)self setValues:?];
    v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v8 forKeys:v14];
    [(PSSpecifier *)self setTitleDictionary:v10];
    if (v9)
    {
      shortTitleDict = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v9 forKeys:v14];
      [(PSSpecifier *)self setShortTitleDictionary:shortTitleDict];
    }

    else
    {
      shortTitleDict = self->_shortTitleDict;
      self->_shortTitleDict = 0;
    }
  }

  else
  {
    values = self->_values;
    self->_values = 0;

    titleDict = self->_titleDict;
    self->_titleDict = 0;

    v10 = self->_shortTitleDict;
    self->_shortTitleDict = 0;
  }
}

- (void)setValues:(id)a3 titles:(id)a4 shortTitles:(id)a5 usingLocalizedTitleSorting:(BOOL)a6
{
  v6 = a6;
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  [(PSSpecifier *)self setValues:v10 titles:v11 shortTitles:a5];
  if (v6)
  {
    v25 = self;
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __71__PSSpecifier_setValues_titles_shortTitles_usingLocalizedTitleSorting___block_invoke;
    v30[3] = &unk_1E71DE638;
    v13 = v12;
    v31 = v13;
    v14 = v10;
    v32 = v14;
    [v11 enumerateObjectsUsingBlock:v30];
    [v13 sortUsingComparator:&__block_literal_global_26];
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v13;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v26 + 1) + 8 * i);
          v23 = [v22 objectAtIndexedSubscript:0];
          [v15 addObject:v23];

          v24 = [v22 objectAtIndexedSubscript:1];
          [v16 addObject:v24];
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v19);
    }

    [(PSSpecifier *)v25 setValues:v16];
  }
}

void __71__PSSpecifier_setValues_titles_shortTitles_usingLocalizedTitleSorting___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  v9[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [v4 addObject:v8];
}

uint64_t __71__PSSpecifier_setValues_titles_shortTitles_usingLocalizedTitleSorting___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndexedSubscript:0];
  v6 = [v4 objectAtIndexedSubscript:0];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (void)setupIconImageWithBundle:(id)a3
{
  v23 = a3;
  v4 = [v23 resourcePath];
  [(PSSpecifier *)self setupIconImageWithPath:v4];

  v5 = [(NSMutableDictionary *)self->_properties objectForKey:@"iconImage"];

  v6 = v23;
  if (!v5)
  {
    v7 = [(NSMutableDictionary *)self->_properties objectForKey:@"icon"];
    if (!v7 || (v8 = MEMORY[0x1E69DCAB8], [MEMORY[0x1E69DCEB0] mainScreen], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "traitCollection"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "imageNamed:inBundle:compatibleWithTraitCollection:", v7, v23, v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, !v11))
    {
      v12 = [(NSMutableDictionary *)self->_properties objectForKey:@"icon2"];
      if (!v12 || (v13 = v12, v14 = MEMORY[0x1E69DCAB8], [MEMORY[0x1E69DCEB0] mainScreen], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "traitCollection"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "imageNamed:inBundle:compatibleWithTraitCollection:", v13, v23, v16), v11 = objc_claimAutoreleasedReturnValue(), v16, v15, v13, !v11))
      {
        v17 = [(NSMutableDictionary *)self->_properties objectForKey:@"tintedIcon"];
        if (!v17)
        {
          goto LABEL_12;
        }

        v11 = v17;
        v18 = MEMORY[0x1E69DCAB8];
        v19 = [MEMORY[0x1E69DCEB0] mainScreen];
        v20 = [v19 traitCollection];
        v21 = [v18 imageNamed:v11 inBundle:v23 compatibleWithTraitCollection:v20];

        if (!v21)
        {
LABEL_11:

          goto LABEL_12;
        }

        v22 = SFTintedImageFromMask();

        if (!v22)
        {
LABEL_12:

          v6 = v23;
          goto LABEL_13;
        }

        v11 = v22;
      }
    }

    [(NSMutableDictionary *)self->_properties setObject:v11 forKey:@"iconImage"];
    goto LABEL_11;
  }

LABEL_13:
}

- (void)setupIconImageWithPath:(id)a3
{
  v7 = a3;
  v4 = [(NSMutableDictionary *)self->_properties objectForKey:@"icon"];
  v5 = _copyIconForPathFromSpecifier(v4, v7);

  if (v5 || ([(NSMutableDictionary *)self->_properties objectForKey:@"icon2"], v6 = objc_claimAutoreleasedReturnValue(), _copyIconForPathFromSpecifier(v6, v7), v5 = objc_claimAutoreleasedReturnValue(), v6, v5))
  {
    [(NSMutableDictionary *)self->_properties setObject:v5 forKey:@"iconImage"];
  }
}

- (id)description
{
  name = self->_name;
  if (!name)
  {
    name = &stru_1EFE45030;
  }

  v4 = name;
  v5 = [(PSSpecifier *)self identifier];
  if ([v5 length])
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = [(PSSpecifier *)self identifier];
    v9 = [(PSSpecifier *)self target];
    v10 = objc_opt_class();
    v11 = [(PSSpecifier *)self target];
    v12 = [v6 stringWithFormat:@"<%@ %p: ID %@, Name '%@' target <%@: %p>>", v7, self, v8, v4, v10, v11];
  }

  else
  {
    v12 = v4;
  }

  if (self->cellType)
  {
    v13 = v12;
  }

  else
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"G: %@ %p", v12, self];
  }

  v14 = v13;

  return v14;
}

+ (int64_t)autoCorrectionTypeForNumber:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 BOOLValue])
  {
    return 2;
  }

  return 1;
}

+ (int64_t)autoCapsTypeForString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"sentences"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"words"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"all"])
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)keyboardTypeForString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"numbers"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"phone"])
    {
      v5 = 5;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)shortTitleDictionary
{
  shortTitleDict = self->_shortTitleDict;
  if (!shortTitleDict)
  {
    shortTitleDict = self->_titleDict;
  }

  v3 = shortTitleDict;

  return v3;
}

- (void)setKeyboardType:(int64_t)a3 autoCaps:(int64_t)a4 autoCorrection:(int64_t)a5
{
  self->keyboardType = a3;
  self->autoCapsType = a4;
  self->autoCorrectionType = a5;
  self->textFieldType = 0;
}

- (int64_t)titleCompare:(id)a3
{
  v4 = a3;
  v5 = [(PSSpecifier *)self name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (BOOL)isEqualToSpecifier:(id)a3
{
  v4 = a3;
  if (([(PSSpecifier *)self isEqual:v4]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = objc_opt_class();
    if (v6 == objc_opt_class())
    {
      if (self->_name)
      {
        name = self->_name;
      }

      else
      {
        name = &stru_1EFE45030;
      }

      v8 = [v4 name];
      if ([(__CFString *)name isEqualToString:v8])
      {
        v9 = [(PSSpecifier *)self identifier];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = &stru_1EFE45030;
        }

        v12 = [v4 identifier];
        if (-[__CFString isEqualToString:](v11, "isEqualToString:", v12) && self->getter == *(v4 + 2) && self->setter == *(v4 + 3) && (v13 = -[PSSpecifier legacyAction](self, "legacyAction"), v13 == [v4 legacyAction]) && (v14 = -[PSSpecifier legacyCancel](self, "legacyCancel"), v14 == objc_msgSend(v4, "legacyCancel")) && self->detailControllerClass == *(v4 + 6) && self->cellType == *(v4 + 7) && self->editPaneClass == *(v4 + 8) && (!self->_confirmationAction ? (confirmationAction = 0) : (confirmationAction = self->_confirmationAction), confirmationAction == objc_msgSend(v4, "confirmationAction") && (!self->_confirmationAlternateAction ? (confirmationAlternateAction = 0) : (confirmationAlternateAction = self->_confirmationAlternateAction), confirmationAlternateAction == objc_msgSend(v4, "confirmationAlternateAction") && (!self->_confirmationCancelAction ? (confirmationCancelAction = 0) : (confirmationCancelAction = self->_confirmationCancelAction), confirmationCancelAction == objc_msgSend(v4, "confirmationCancelAction") && (!self->_controllerLoadAction ? (controllerLoadAction = 0) : (controllerLoadAction = self->_controllerLoadAction), controllerLoadAction == objc_msgSend(v4, "controllerLoadAction"))))))
        {
          properties = self->_properties;
          v21 = [v4 properties];
          if ([(NSMutableDictionary *)properties isEqualToDictionary:v21])
          {
            values = self->_values;
            v23 = [v4 values];
            if ([(NSArray *)values isEqualToArray:v23])
            {
              titleDict = self->_titleDict;
              v25 = [v4 titleDictionary];
              if ([(NSDictionary *)titleDict isEqualToDictionary:v25])
              {
                shortTitleDict = self->_shortTitleDict;
                v27 = [v4 shortTitleDictionary];
                if ([(NSDictionary *)shortTitleDict isEqualToDictionary:v27])
                {
                  userInfo = self->_userInfo;
                  v29 = [v4 userInfo];
                  v5 = [userInfo isEqual:v29];
                }

                else
                {
                  v5 = 0;
                }
              }

              else
              {
                v5 = 0;
              }
            }

            else
            {
              v5 = 0;
            }
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setControllerLoadAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_controllerLoadAction = v3;
  self->_controllerLoadStyle = 0;
}

- (void)setButtonAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_buttonAction = v3;
  self->_controllerLoadStyle = 0;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->target);

  return WeakRetained;
}

- (SEL)confirmationAction
{
  if (self->_confirmationAction)
  {
    return self->_confirmationAction;
  }

  else
  {
    return 0;
  }
}

- (void)setConfirmationAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_confirmationAction = v3;
}

- (SEL)confirmationAlternateAction
{
  if (self->_confirmationAlternateAction)
  {
    return self->_confirmationAlternateAction;
  }

  else
  {
    return 0;
  }
}

- (void)setConfirmationAlternateAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_confirmationAlternateAction = v3;
}

- (SEL)confirmationCancelAction
{
  if (self->_confirmationCancelAction)
  {
    return self->_confirmationCancelAction;
  }

  else
  {
    return 0;
  }
}

- (void)setConfirmationCancelAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_confirmationCancelAction = v3;
}

- (SEL)buttonAction
{
  if (self->_buttonAction)
  {
    return self->_buttonAction;
  }

  else
  {
    return 0;
  }
}

- (id)weakUserInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_weakUserInfo);

  return WeakRetained;
}

- (id)ultimateTargetForPresentation
{
  if (!__listControllerClass_0)
  {
    v3 = PSPreferencesFrameworkBundle();
    __listControllerClass_0 = [v3 classNamed:@"PSListController"];
  }

  v4 = [(PSSpecifier *)self target];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = [(PSSpecifier *)self target];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v7 observersOfClass:__listControllerClass_0];

    v9 = [v8 allObjects];
    v10 = [v9 firstObject];

    v4 = v10;
  }

  v11 = v4;
  if (!v4)
  {
    v11 = [(PSSpecifier *)self target];
  }

  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!v4)
  {
  }

  return v13;
}

- (unint64_t)controllerLoadStyle
{
  controllerLoadStyle = self->_controllerLoadStyle;
  if (!controllerLoadStyle)
  {
    if ([(PSSpecifier *)self buttonAction])
    {
      controllerLoadStyle = 3;
      self->_controllerLoadStyle = 3;
      return controllerLoadStyle;
    }

    v4 = [(PSSpecifier *)self ultimateTargetForPresentation];
    v5 = [(PSSpecifier *)self controllerLoadAction];
    if (v5)
    {
      v6 = v5;
      goto LABEL_6;
    }

    objc_opt_class();
    v7 = [(PSSpecifier *)self objectForKeyedSubscript:@"loadAction"];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = [(PSSpecifier *)self objectForKeyedSubscript:@"loadAction"];
      v6 = NSSelectorFromString(v9);

      if (v6)
      {
LABEL_6:
        if (v6 == sel_lazyLoadBundle_)
        {
          if (!__listControllerLazyLoadBundleIMP)
          {
            __listControllerLazyLoadBundleIMP = [PSListController instanceMethodForSelector:sel_lazyLoadBundle_];
          }

          v18 = [v4 methodForSelector:sel_lazyLoadBundle_];
          if (__listControllerLazyLoadBundleIMP == v18)
          {
            controllerLoadStyle = 1;
          }

          else
          {
            controllerLoadStyle = 4;
          }

          goto LABEL_39;
        }

        goto LABEL_7;
      }
    }

    if (!v4)
    {
      goto LABEL_24;
    }

    if (!__listControllerControllerForSpecifierIMP)
    {
      __listControllerControllerForSpecifierIMP = [PSListController instanceMethodForSelector:sel_controllerForSpecifier_];
      __listControllerSelectSpecifierIMP = [PSListController instanceMethodForSelector:sel_selectSpecifier_];
    }

    v10 = [v4 methodForSelector:sel_selectSpecifier_];
    if (!v10 || v10 == __listControllerSelectSpecifierIMP)
    {
      v11 = [v4 methodForSelector:sel_controllerForSpecifier_];
      if (!v11 || v11 == __listControllerControllerForSpecifierIMP)
      {
LABEL_24:
        if ([(PSSpecifier *)self detailControllerClass]&& [(objc_class *)[(PSSpecifier *)self detailControllerClass] isSubclassOfClass:objc_opt_class()]&& [(objc_class *)[(PSSpecifier *)self detailControllerClass] conformsToProtocol:&unk_1EFE6C730]&& ([(objc_class *)[(PSSpecifier *)self detailControllerClass] isSubclassOfClass:objc_opt_class()]& 1) == 0 && [(PSSpecifier *)self cellType]!= 3)
        {
          controllerLoadStyle = 2;
          goto LABEL_39;
        }

        objc_opt_class();
        v12 = [(PSSpecifier *)self objectForKeyedSubscript:@"detail"];
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        if (v14)
        {
          v15 = v14;
          objc_opt_class();
          v16 = [(PSSpecifier *)self objectForKeyedSubscript:@"bundle"];
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {

LABEL_46:
            controllerLoadStyle = 1;
            goto LABEL_39;
          }

          objc_opt_class();
          v20 = [(PSSpecifier *)self objectForKeyedSubscript:@"lazy-bundle"];
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            goto LABEL_46;
          }
        }

        else
        {
        }
      }
    }

LABEL_7:
    controllerLoadStyle = 4;
LABEL_39:
    self->_controllerLoadStyle = controllerLoadStyle;
  }

  return controllerLoadStyle;
}

- (void)addFooterHyperlinkWithRange:(_NSRange)a3 url:(id)a4
{
  v5 = [PSFooterMultiHyperlinkViewLinkSpec specWithRange:a3.location url:a3.length, a4];
  [(PSSpecifier *)self _addLinkSpec:v5];
}

- (void)addFooterHyperlinkWithRange:(_NSRange)a3 target:(id)a4 action:(SEL)a5
{
  v6 = [PSFooterMultiHyperlinkViewLinkSpec specWithRange:a3.location target:a3.length action:a4, a5];
  [(PSSpecifier *)self _addLinkSpec:v6];
}

- (void)_addLinkSpec:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PSSpecifier *)self propertyForKey:@"footerHyperlinkLinkSpecs"];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 arrayByAddingObject:v4];
  }

  else
  {
    v8[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  [(PSSpecifier *)self setProperty:v7 forKey:@"footerHyperlinkLinkSpecs"];
}

- (void)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 target];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_18B008000, a3, OS_LOG_TYPE_ERROR, "ERROR: specifier has non-string identifier: %@, target: %@", &v6, 0x16u);
}

@end