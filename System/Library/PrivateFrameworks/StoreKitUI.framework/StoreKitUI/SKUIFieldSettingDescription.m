@interface SKUIFieldSettingDescription
+ (Class)_viewClassForSettingDescription:(id)a3;
+ (id)_inputViewElementFromElement:(id)a3;
+ (int64_t)_fieldTypeFromElement:(id)a3;
- (BOOL)allowsSelection;
- (SKUIFieldSettingDescription)initWithViewElement:(id)a3 parent:(id)a4;
- (SKUISettingsGroupController)controller;
- (id)fieldValueForKey:(id)a3;
- (void)_dispatchEventOfType:(unint64_t)a3 extraInfo:(id)a4;
- (void)handleSelectionOnCompletion:(id)a3;
- (void)setFieldValue:(id)a3 forKey:(id)a4;
@end

@implementation SKUIFieldSettingDescription

- (SKUIFieldSettingDescription)initWithViewElement:(id)a3 parent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIFieldSettingDescription initWithViewElement:parent:];
  }

  v10.receiver = self;
  v10.super_class = SKUIFieldSettingDescription;
  v8 = [(SKUISettingDescription *)&v10 initWithViewElement:v6 parent:v7];
  if (v8)
  {
    v8->_fieldType = [objc_opt_class() _fieldTypeFromElement:v6];
  }

  return v8;
}

- (id)fieldValueForKey:(id)a3
{
  fieldValues = self->_fieldValues;
  if (fieldValues)
  {
    fieldValues = [fieldValues objectForKey:a3];
    v3 = vars8;
  }

  return fieldValues;
}

- (void)setFieldValue:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  fieldValues = self->_fieldValues;
  if (!fieldValues)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_fieldValues;
    self->_fieldValues = v8;

    fieldValues = self->_fieldValues;
  }

  v10 = [(NSMutableDictionary *)fieldValues objectForKey:v6];
  if (([v12 isEqual:v10] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_fieldValues setObject:v12 forKey:v6];
    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v12, v6, 0}];
    [(SKUIFieldSettingDescription *)self _dispatchEventOfType:15 extraInfo:v11];
  }
}

+ (int64_t)_fieldTypeFromElement:(id)a3
{
  v3 = [a1 _inputViewElementFromElement:a3];
  if (v3)
  {
    if ([v3 isMemberOfClass:objc_opt_class()])
    {
      v4 = 0;
    }

    else if ([v3 isMemberOfClass:objc_opt_class()])
    {
      v4 = 1;
    }

    else if ([v3 isMemberOfClass:objc_opt_class()])
    {
      v4 = 2;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (id)_inputViewElementFromElement:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__78;
  v11 = __Block_byref_object_dispose__78;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SKUIFieldSettingDescription__inputViewElementFromElement___block_invoke;
  v6[3] = &unk_2781F8568;
  v6[4] = &v7;
  [v3 enumerateChildrenUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __60__SKUIFieldSettingDescription__inputViewElementFromElement___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v6 = [v7 elementType];
  if ((v6 - 139) < 2 || v6 == 58 || v6 == 18)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (BOOL)allowsSelection
{
  if (self->_fieldType != 1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained && (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_controller), v6 = [v5 isMemberOfClass:objc_opt_class()], v5, v4, v6))
  {
    v7 = objc_loadWeakRetained(&self->_controller);
    v8 = [v7 valueForSettingDescription:self];
    v9 = [v7 isAuthenticating];

    v10 = v9 ^ 1;
  }

  else
  {
    v8 = 0;
    v10 = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v8 BOOLValue];
  }

  else
  {
    v12 = 0;
  }

  v11 = v10 & v12;

  return v11;
}

- (void)handleSelectionOnCompletion:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v5 = [WeakRetained isMemberOfClass:objc_opt_class()];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_controller);
    [v6 submitSettingDescription:self];
  }

  v7[2]();
}

+ (Class)_viewClassForSettingDescription:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
    if (v4[5] > 2uLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = objc_opt_class();
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)_dispatchEventOfType:(unint64_t)a3 extraInfo:(id)a4
{
  v9 = a4;
  v6 = objc_opt_class();
  v7 = [(SKUISettingDescription *)self viewElement];
  v8 = [v6 _inputViewElementFromElement:v7];

  if (!v8)
  {
    v8 = [(SKUISettingDescription *)self viewElement];
  }

  [v8 dispatchEventOfType:a3 canBubble:1 isCancelable:1 extraInfo:v9 completionBlock:0];
}

- (SKUISettingsGroupController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)initWithViewElement:parent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFieldSettingDescription initWithViewElement:parent:]";
}

@end