@interface SSDialog
- (NSArray)buttons;
- (NSDictionary)dialogDictionary;
- (SSDialog)init;
- (SSDialog)initWithDialogDictionary:(id)a3;
- (SSDialogButton)defaultButton;
- (id)valueForProperty:(id)a3;
- (void)_setValue:(id)a3 forProperty:(id)a4;
- (void)dealloc;
- (void)setButtons:(id)a3;
- (void)setDefaultButton:(id)a3;
@end

@implementation SSDialog

- (SSDialog)init
{
  v4.receiver = self;
  v4.super_class = SSDialog;
  v2 = [(SSDialog *)&v4 init];
  if (v2)
  {
    v2->_dialogDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (SSDialog)initWithDialogDictionary:(id)a3
{
  v8.receiver = self;
  v8.super_class = SSDialog;
  v4 = [(SSDialog *)&v8 init];
  if (v4)
  {
    v5 = [[SSProtocolConditionalEvaluator alloc] initWithDictionary:a3];
    v6 = [(SSProtocolConditionalEvaluator *)v5 dictionaryByEvaluatingConditions];

    v4->_dialogDictionary = [v6 mutableCopy];
    if (![(NSString *)[(SSDialog *)v4 title] length]&& ![(NSString *)[(SSDialog *)v4 message] length]&& ![(NSArray *)[(SSDialog *)v4 buttons] count])
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDialog;
  [(SSDialog *)&v3 dealloc];
}

- (NSArray)buttons
{
  buttons = self->_buttons;
  if (!buttons)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    AvailableKey = SSValueForFirstAvailableKey(self->_dialogDictionary, @"cancelButtonString", v5, v6, v7, v8, v9, v10, @"cancelButton");
    if ([AvailableKey length])
    {
      v18 = [[SSDialogButton alloc] initWithTitle:AvailableKey actionDictionary:SSValueForFirstAvailableKey(self->_dialogDictionary, @"cancelButtonAction", v12, v13, v14, v15, v16, v17, 0)];
      if (v18)
      {
        v19 = v18;
        [v4 addObject:v18];
      }
    }

    v20 = SSValueForFirstAvailableKey(self->_dialogDictionary, @"okButtonString", v12, v13, v14, v15, v16, v17, @"okButton");
    if ([v20 length])
    {
      v27 = [[SSDialogButton alloc] initWithTitle:v20 actionDictionary:SSValueForFirstAvailableKey(self->_dialogDictionary, @"okButtonAction", v21, v22, v23, v24, v25, v26, 0)];
      if (v27)
      {
        v28 = v27;
        [v4 addObject:v27];
      }
    }

    self->_buttons = [v4 copy];

    buttons = self->_buttons;
  }

  v29 = buttons;

  return v29;
}

- (SSDialogButton)defaultButton
{
  v22 = *MEMORY[0x1E69E9840];
  AvailableKey = SSValueForFirstAvailableKey(self->_dialogDictionary, @"defaultButton", v2, v3, v4, v5, v6, v7, 0);
  if (![AvailableKey length])
  {
    return 0;
  }

  v10 = [(SSDialog *)self buttons];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = *v18;
LABEL_4:
  v14 = 0;
  while (1)
  {
    if (*v18 != v13)
    {
      objc_enumerationMutation(v10);
    }

    v15 = *(*(&v17 + 1) + 8 * v14);
    if ([(NSString *)[(SSDialogButton *)v15 buttonTitle] isEqualToString:AvailableKey])
    {
      return v15;
    }

    if (v12 == ++v14)
    {
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 0;
      if (v12)
      {
        goto LABEL_4;
      }

      return v15;
    }
  }
}

- (void)setDefaultButton:(id)a3
{
  v4 = [a3 buttonTitle];

  [(SSDialog *)self _setValue:v4 forProperty:@"defaultButton"];
}

- (id)valueForProperty:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_dialogDictionary objectForKey:a3];

  return v3;
}

- (NSDictionary)dialogDictionary
{
  v2 = [(NSMutableDictionary *)self->_dialogDictionary copy];

  return v2;
}

- (void)setButtons:(id)a3
{
  if ([a3 count])
  {
    v5 = [objc_msgSend(a3 objectAtIndex:{0), "buttonTitle"}];
  }

  else
  {
    v5 = 0;
  }

  if ([a3 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_msgSend(a3 objectAtIndex:{1), "buttonTitle"}];
  }

  [(SSDialog *)self _setValue:v5 forProperty:@"cancelButtonString"];

  [(SSDialog *)self _setValue:v6 forProperty:@"okButtonString"];
}

- (void)_setValue:(id)a3 forProperty:(id)a4
{
  dialogDictionary = self->_dialogDictionary;
  if (a3)
  {
    if (!dialogDictionary)
    {
      dialogDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_dialogDictionary = dialogDictionary;
    }

    [(NSMutableDictionary *)dialogDictionary setObject:a3 forKey:a4];
  }

  else
  {

    [(NSMutableDictionary *)dialogDictionary removeObjectForKey:a4];
  }
}

@end