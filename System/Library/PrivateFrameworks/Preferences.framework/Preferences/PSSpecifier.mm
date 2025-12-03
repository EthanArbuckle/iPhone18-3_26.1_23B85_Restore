@interface PSSpecifier
+ (PSSpecifier)specifierWithSpecifier:(id)specifier;
+ (id)deleteButtonSpecifierWithName:(id)name target:(id)target action:(SEL)action;
+ (id)groupSpecifierWithID:(id)d name:(id)name;
+ (id)preferenceSpecifierNamed:(id)named target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit;
+ (int64_t)autoCapsTypeForString:(id)string;
+ (int64_t)autoCorrectionTypeForNumber:(id)number;
+ (int64_t)keyboardTypeForString:(id)string;
- (BOOL)hasValidGetter;
- (BOOL)hasValidSetter;
- (BOOL)isEqualToSpecifier:(id)specifier;
- (BOOL)isRadioGroup;
- (NSDictionary)shortTitleDictionary;
- (NSString)identifier;
- (PSController)parentController;
- (PSSpecifier)init;
- (PSSpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit;
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
- (int64_t)titleCompare:(id)compare;
- (unint64_t)controllerLoadStyle;
- (void)_addLinkSpec:(id)spec;
- (void)addFooterHyperlinkWithRange:(_NSRange)range target:(id)target action:(SEL)action;
- (void)addFooterHyperlinkWithRange:(_NSRange)range url:(id)url;
- (void)identifier;
- (void)loadValuesAndTitlesFromDataSource;
- (void)performButtonAction;
- (void)performConfirmationAction;
- (void)performConfirmationAlternateAction;
- (void)performConfirmationCancelAction;
- (void)performControllerLoadAction;
- (void)performLegacyAction;
- (void)performSetterWithValue:(id)value;
- (void)setButtonAction:(SEL)action;
- (void)setConfirmationAction:(SEL)action;
- (void)setConfirmationAlternateAction:(SEL)action;
- (void)setConfirmationCancelAction:(SEL)action;
- (void)setControllerLoadAction:(SEL)action;
- (void)setKeyboardType:(int64_t)type autoCaps:(int64_t)caps autoCorrection:(int64_t)correction;
- (void)setProperties:(id)properties;
- (void)setProperty:(id)property forKey:(id)key;
- (void)setValues:(id)values titles:(id)titles shortTitles:(id)shortTitles;
- (void)setValues:(id)values titles:(id)titles shortTitles:(id)shortTitles usingLocalizedTitleSorting:(BOOL)sorting;
- (void)setupIconImageWithBundle:(id)bundle;
- (void)setupIconImageWithPath:(id)path;
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
    name = v3;
  }

  else
  {
    name = [(PSSpecifier *)self name];
    if (!name)
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
      [(PSSpecifier *)name identifier];
    }
  }

LABEL_9:

  return name;
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
    bOOLValue = [v5 BOOLValue];
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
      bOOLValue = [v9 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (id)displayStringForCurrentValue
{
  cellType = [(PSSpecifier *)self cellType];
  values = [(PSSpecifier *)self values];

  if (!values)
  {
    [(PSSpecifier *)self loadValuesAndTitlesFromDataSource];
  }

  if (cellType <= 0xD && ((1 << cellType) & 0x200A) != 0 || ![(PSSpecifier *)self hasValidGetter])
  {
    performGetter = 0;
  }

  else
  {
    performGetter = [(PSSpecifier *)self performGetter];
    if (performGetter && cellType != 9)
    {
      if (cellType == 4 || cellType == 2)
      {
        shortTitleDictionary = [(PSSpecifier *)self shortTitleDictionary];
      }

      else
      {
        shortTitleDictionary = [(PSSpecifier *)self titleDictionary];
      }

      v11 = shortTitleDictionary;
      if (shortTitleDictionary)
      {
        v12 = [shortTitleDictionary objectForKey:performGetter];

        performGetter = v12;
      }
    }
  }

  objc_opt_class();
  v6 = performGetter;
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

+ (id)deleteButtonSpecifierWithName:(id)name target:(id)target action:(SEL)action
{
  nameCopy = name;
  v8 = [PSSpecifier preferenceSpecifierNamed:nameCopy target:target set:0 get:0 detail:0 cell:13 edit:0];
  [v8 setProperty:nameCopy forKey:@"id"];

  [v8 setProperty:objc_opt_class() forKey:@"cellClass"];
  [v8 setButtonAction:action];

  return v8;
}

- (PSSpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit
{
  nameCopy = name;
  targetCopy = target;
  gScale = ScreenScale();
  v21.receiver = self;
  v21.super_class = PSSpecifier;
  v17 = [(PSSpecifier *)&v21 init];
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    properties = v17->_properties;
    v17->_properties = v18;

    [(PSSpecifier *)v17 setName:nameCopy];
    objc_storeWeak(&v17->target, targetCopy);
    v17->getter = get;
    v17->setter = set;
    v17->detailControllerClass = detail;
    v17->cellType = cell;
    v17->editPaneClass = edit;
  }

  return v17;
}

+ (id)preferenceSpecifierNamed:(id)named target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit
{
  targetCopy = target;
  namedCopy = named;
  v16 = objc_alloc_init(PSSpecifier);
  [(PSSpecifier *)v16 setName:namedCopy];

  objc_storeWeak(&v16->target, targetCopy);
  v16->getter = get;
  v16->setter = set;
  v16->detailControllerClass = detail;
  v16->cellType = cell;
  v16->editPaneClass = edit;

  return v16;
}

+ (id)groupSpecifierWithID:(id)d name:(id)name
{
  dCopy = d;
  v7 = [self groupSpecifierWithName:name];
  [v7 setIdentifier:dCopy];

  return v7;
}

+ (PSSpecifier)specifierWithSpecifier:(id)specifier
{
  if (specifier)
  {
    specifierCopy = specifier;
    objc_opt_class();
    v4 = objc_opt_new();
    name = [specifierCopy name];
    [v4 setName:name];

    target = [specifierCopy target];
    [v4 setTarget:target];

    v4[3] = specifierCopy[3];
    [v4 setDetailControllerClass:{objc_msgSend(specifierCopy, "detailControllerClass")}];
    [v4 setCellType:{objc_msgSend(specifierCopy, "cellType")}];
    [v4 setEditPaneClass:{objc_msgSend(specifierCopy, "editPaneClass")}];
    [v4 setLegacyAction:{objc_msgSend(specifierCopy, "legacyAction")}];
    [v4 setLegacyCancel:{objc_msgSend(specifierCopy, "legacyCancel")}];
    v4[9] = specifierCopy[9];
    v4[10] = specifierCopy[10];
    v4[11] = specifierCopy[11];
    v4[12] = specifierCopy[12];
    [v4 setConfirmationAction:{objc_msgSend(specifierCopy, "confirmationAction")}];
    [v4 setConfirmationAlternateAction:{objc_msgSend(specifierCopy, "confirmationAlternateAction")}];
    [v4 setConfirmationCancelAction:{objc_msgSend(specifierCopy, "confirmationCancelAction")}];
    [v4 setShowContentString:{objc_msgSend(specifierCopy, "showContentString")}];
    titleDictionary = [specifierCopy titleDictionary];
    [v4 setTitleDictionary:titleDictionary];

    shortTitleDictionary = [specifierCopy shortTitleDictionary];
    [v4 setShortTitleDictionary:shortTitleDictionary];

    values = [specifierCopy values];
    [v4 setValues:values];

    userInfo = [specifierCopy userInfo];
    [v4 setUserInfo:userInfo];

    properties = [specifierCopy properties];

    [v4 setProperties:properties];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setProperty:(id)property forKey:(id)key
{
  if (property)
  {
    [(NSMutableDictionary *)self->_properties setObject:property forKey:key];
  }
}

- (void)setProperties:(id)properties
{
  v4 = [properties mutableCopy];
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

- (void)performSetterWithValue:(id)value
{
  v14 = *MEMORY[0x1E69E9840];
  valueCopy = value;
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

- (void)setValues:(id)values titles:(id)titles shortTitles:(id)shortTitles
{
  valuesCopy = values;
  titlesCopy = titles;
  shortTitlesCopy = shortTitles;
  if (valuesCopy && titlesCopy)
  {
    [(PSSpecifier *)self setValues:?];
    v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:titlesCopy forKeys:valuesCopy];
    [(PSSpecifier *)self setTitleDictionary:v10];
    if (shortTitlesCopy)
    {
      shortTitleDict = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:shortTitlesCopy forKeys:valuesCopy];
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

- (void)setValues:(id)values titles:(id)titles shortTitles:(id)shortTitles usingLocalizedTitleSorting:(BOOL)sorting
{
  sortingCopy = sorting;
  v34 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  titlesCopy = titles;
  [(PSSpecifier *)self setValues:valuesCopy titles:titlesCopy shortTitles:shortTitles];
  if (sortingCopy)
  {
    selfCopy = self;
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(titlesCopy, "count")}];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __71__PSSpecifier_setValues_titles_shortTitles_usingLocalizedTitleSorting___block_invoke;
    v30[3] = &unk_1E71DE638;
    v13 = v12;
    v31 = v13;
    v14 = valuesCopy;
    v32 = v14;
    [titlesCopy enumerateObjectsUsingBlock:v30];
    [v13 sortUsingComparator:&__block_literal_global_26];
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(titlesCopy, "count")}];
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

    [(PSSpecifier *)selfCopy setValues:v16];
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

- (void)setupIconImageWithBundle:(id)bundle
{
  bundleCopy = bundle;
  resourcePath = [bundleCopy resourcePath];
  [(PSSpecifier *)self setupIconImageWithPath:resourcePath];

  v5 = [(NSMutableDictionary *)self->_properties objectForKey:@"iconImage"];

  v6 = bundleCopy;
  if (!v5)
  {
    v7 = [(NSMutableDictionary *)self->_properties objectForKey:@"icon"];
    if (!v7 || (v8 = MEMORY[0x1E69DCAB8], [MEMORY[0x1E69DCEB0] mainScreen], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "traitCollection"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "imageNamed:inBundle:compatibleWithTraitCollection:", v7, bundleCopy, v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, !v11))
    {
      v12 = [(NSMutableDictionary *)self->_properties objectForKey:@"icon2"];
      if (!v12 || (v13 = v12, v14 = MEMORY[0x1E69DCAB8], [MEMORY[0x1E69DCEB0] mainScreen], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "traitCollection"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "imageNamed:inBundle:compatibleWithTraitCollection:", v13, bundleCopy, v16), v11 = objc_claimAutoreleasedReturnValue(), v16, v15, v13, !v11))
      {
        v17 = [(NSMutableDictionary *)self->_properties objectForKey:@"tintedIcon"];
        if (!v17)
        {
          goto LABEL_12;
        }

        v11 = v17;
        v18 = MEMORY[0x1E69DCAB8];
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        traitCollection = [mainScreen traitCollection];
        v21 = [v18 imageNamed:v11 inBundle:bundleCopy compatibleWithTraitCollection:traitCollection];

        if (!v21)
        {
LABEL_11:

          goto LABEL_12;
        }

        v22 = SFTintedImageFromMask();

        if (!v22)
        {
LABEL_12:

          v6 = bundleCopy;
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

- (void)setupIconImageWithPath:(id)path
{
  pathCopy = path;
  v4 = [(NSMutableDictionary *)self->_properties objectForKey:@"icon"];
  v5 = _copyIconForPathFromSpecifier(v4, pathCopy);

  if (v5 || ([(NSMutableDictionary *)self->_properties objectForKey:@"icon2"], v6 = objc_claimAutoreleasedReturnValue(), _copyIconForPathFromSpecifier(v6, pathCopy), v5 = objc_claimAutoreleasedReturnValue(), v6, v5))
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
  identifier = [(PSSpecifier *)self identifier];
  if ([identifier length])
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    identifier2 = [(PSSpecifier *)self identifier];
    target = [(PSSpecifier *)self target];
    v10 = objc_opt_class();
    target2 = [(PSSpecifier *)self target];
    v12 = [v6 stringWithFormat:@"<%@ %p: ID %@, Name '%@' target <%@: %p>>", v7, self, identifier2, v4, v10, target2];
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

+ (int64_t)autoCorrectionTypeForNumber:(id)number
{
  if (!number)
  {
    return 0;
  }

  if ([number BOOLValue])
  {
    return 2;
  }

  return 1;
}

+ (int64_t)autoCapsTypeForString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy isEqualToString:@"sentences"])
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

+ (int64_t)keyboardTypeForString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy isEqualToString:@"numbers"])
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

- (void)setKeyboardType:(int64_t)type autoCaps:(int64_t)caps autoCorrection:(int64_t)correction
{
  self->keyboardType = type;
  self->autoCapsType = caps;
  self->autoCorrectionType = correction;
  self->textFieldType = 0;
}

- (int64_t)titleCompare:(id)compare
{
  compareCopy = compare;
  name = [(PSSpecifier *)self name];
  name2 = [compareCopy name];

  v7 = [name localizedCaseInsensitiveCompare:name2];
  return v7;
}

- (BOOL)isEqualToSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (([(PSSpecifier *)self isEqual:specifierCopy]& 1) != 0)
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

      name = [specifierCopy name];
      if ([(__CFString *)name isEqualToString:name])
      {
        identifier = [(PSSpecifier *)self identifier];
        v10 = identifier;
        if (identifier)
        {
          v11 = identifier;
        }

        else
        {
          v11 = &stru_1EFE45030;
        }

        identifier2 = [specifierCopy identifier];
        if (-[__CFString isEqualToString:](v11, "isEqualToString:", identifier2) && self->getter == *(specifierCopy + 2) && self->setter == *(specifierCopy + 3) && (v13 = -[PSSpecifier legacyAction](self, "legacyAction"), v13 == [specifierCopy legacyAction]) && (v14 = -[PSSpecifier legacyCancel](self, "legacyCancel"), v14 == objc_msgSend(specifierCopy, "legacyCancel")) && self->detailControllerClass == *(specifierCopy + 6) && self->cellType == *(specifierCopy + 7) && self->editPaneClass == *(specifierCopy + 8) && (!self->_confirmationAction ? (confirmationAction = 0) : (confirmationAction = self->_confirmationAction), confirmationAction == objc_msgSend(specifierCopy, "confirmationAction") && (!self->_confirmationAlternateAction ? (confirmationAlternateAction = 0) : (confirmationAlternateAction = self->_confirmationAlternateAction), confirmationAlternateAction == objc_msgSend(specifierCopy, "confirmationAlternateAction") && (!self->_confirmationCancelAction ? (confirmationCancelAction = 0) : (confirmationCancelAction = self->_confirmationCancelAction), confirmationCancelAction == objc_msgSend(specifierCopy, "confirmationCancelAction") && (!self->_controllerLoadAction ? (controllerLoadAction = 0) : (controllerLoadAction = self->_controllerLoadAction), controllerLoadAction == objc_msgSend(specifierCopy, "controllerLoadAction"))))))
        {
          properties = self->_properties;
          properties = [specifierCopy properties];
          if ([(NSMutableDictionary *)properties isEqualToDictionary:properties])
          {
            values = self->_values;
            values = [specifierCopy values];
            if ([(NSArray *)values isEqualToArray:values])
            {
              titleDict = self->_titleDict;
              titleDictionary = [specifierCopy titleDictionary];
              if ([(NSDictionary *)titleDict isEqualToDictionary:titleDictionary])
              {
                shortTitleDict = self->_shortTitleDict;
                shortTitleDictionary = [specifierCopy shortTitleDictionary];
                if ([(NSDictionary *)shortTitleDict isEqualToDictionary:shortTitleDictionary])
                {
                  userInfo = self->_userInfo;
                  userInfo = [specifierCopy userInfo];
                  v5 = [userInfo isEqual:userInfo];
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

- (void)setControllerLoadAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_controllerLoadAction = actionCopy;
  self->_controllerLoadStyle = 0;
}

- (void)setButtonAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_buttonAction = actionCopy;
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

- (void)setConfirmationAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_confirmationAction = actionCopy;
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

- (void)setConfirmationAlternateAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_confirmationAlternateAction = actionCopy;
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

- (void)setConfirmationCancelAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_confirmationCancelAction = actionCopy;
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

  target = [(PSSpecifier *)self target];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    target2 = [(PSSpecifier *)self target];
    if (objc_opt_isKindOfClass())
    {
      v6 = target2;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v7 observersOfClass:__listControllerClass_0];

    allObjects = [v8 allObjects];
    firstObject = [allObjects firstObject];

    target = firstObject;
  }

  target3 = target;
  if (!target)
  {
    target3 = [(PSSpecifier *)self target];
  }

  v12 = target3;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!target)
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

    ultimateTargetForPresentation = [(PSSpecifier *)self ultimateTargetForPresentation];
    controllerLoadAction = [(PSSpecifier *)self controllerLoadAction];
    if (controllerLoadAction)
    {
      v6 = controllerLoadAction;
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

          v18 = [ultimateTargetForPresentation methodForSelector:sel_lazyLoadBundle_];
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

    if (!ultimateTargetForPresentation)
    {
      goto LABEL_24;
    }

    if (!__listControllerControllerForSpecifierIMP)
    {
      __listControllerControllerForSpecifierIMP = [PSListController instanceMethodForSelector:sel_controllerForSpecifier_];
      __listControllerSelectSpecifierIMP = [PSListController instanceMethodForSelector:sel_selectSpecifier_];
    }

    v10 = [ultimateTargetForPresentation methodForSelector:sel_selectSpecifier_];
    if (!v10 || v10 == __listControllerSelectSpecifierIMP)
    {
      v11 = [ultimateTargetForPresentation methodForSelector:sel_controllerForSpecifier_];
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

- (void)addFooterHyperlinkWithRange:(_NSRange)range url:(id)url
{
  v5 = [PSFooterMultiHyperlinkViewLinkSpec specWithRange:range.location url:range.length, url];
  [(PSSpecifier *)self _addLinkSpec:v5];
}

- (void)addFooterHyperlinkWithRange:(_NSRange)range target:(id)target action:(SEL)action
{
  action = [PSFooterMultiHyperlinkViewLinkSpec specWithRange:range.location target:range.length action:target, action];
  [(PSSpecifier *)self _addLinkSpec:action];
}

- (void)_addLinkSpec:(id)spec
{
  v8[1] = *MEMORY[0x1E69E9840];
  specCopy = spec;
  v5 = [(PSSpecifier *)self propertyForKey:@"footerHyperlinkLinkSpecs"];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 arrayByAddingObject:specCopy];
  }

  else
  {
    v8[0] = specCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  [(PSSpecifier *)self setProperty:v7 forKey:@"footerHyperlinkLinkSpecs"];
}

- (void)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  target = [a2 target];
  v6 = 138412546;
  selfCopy = self;
  v8 = 2112;
  v9 = target;
  _os_log_error_impl(&dword_18B008000, a3, OS_LOG_TYPE_ERROR, "ERROR: specifier has non-string identifier: %@, target: %@", &v6, 0x16u);
}

@end