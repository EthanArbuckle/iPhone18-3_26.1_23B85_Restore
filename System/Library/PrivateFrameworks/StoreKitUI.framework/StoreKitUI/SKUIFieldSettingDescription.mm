@interface SKUIFieldSettingDescription
+ (Class)_viewClassForSettingDescription:(id)description;
+ (id)_inputViewElementFromElement:(id)element;
+ (int64_t)_fieldTypeFromElement:(id)element;
- (BOOL)allowsSelection;
- (SKUIFieldSettingDescription)initWithViewElement:(id)element parent:(id)parent;
- (SKUISettingsGroupController)controller;
- (id)fieldValueForKey:(id)key;
- (void)_dispatchEventOfType:(unint64_t)type extraInfo:(id)info;
- (void)handleSelectionOnCompletion:(id)completion;
- (void)setFieldValue:(id)value forKey:(id)key;
@end

@implementation SKUIFieldSettingDescription

- (SKUIFieldSettingDescription)initWithViewElement:(id)element parent:(id)parent
{
  elementCopy = element;
  parentCopy = parent;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIFieldSettingDescription initWithViewElement:parent:];
  }

  v10.receiver = self;
  v10.super_class = SKUIFieldSettingDescription;
  v8 = [(SKUISettingDescription *)&v10 initWithViewElement:elementCopy parent:parentCopy];
  if (v8)
  {
    v8->_fieldType = [objc_opt_class() _fieldTypeFromElement:elementCopy];
  }

  return v8;
}

- (id)fieldValueForKey:(id)key
{
  fieldValues = self->_fieldValues;
  if (fieldValues)
  {
    fieldValues = [fieldValues objectForKey:key];
    v3 = vars8;
  }

  return fieldValues;
}

- (void)setFieldValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  fieldValues = self->_fieldValues;
  if (!fieldValues)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_fieldValues;
    self->_fieldValues = v8;

    fieldValues = self->_fieldValues;
  }

  v10 = [(NSMutableDictionary *)fieldValues objectForKey:keyCopy];
  if (([valueCopy isEqual:v10] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_fieldValues setObject:valueCopy forKey:keyCopy];
    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{valueCopy, keyCopy, 0}];
    [(SKUIFieldSettingDescription *)self _dispatchEventOfType:15 extraInfo:v11];
  }
}

+ (int64_t)_fieldTypeFromElement:(id)element
{
  v3 = [self _inputViewElementFromElement:element];
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

+ (id)_inputViewElementFromElement:(id)element
{
  elementCopy = element;
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
  [elementCopy enumerateChildrenUsingBlock:v6];
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
    isAuthenticating = [v7 isAuthenticating];

    v10 = isAuthenticating ^ 1;
  }

  else
  {
    v8 = 0;
    v10 = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v11 = v10 & bOOLValue;

  return v11;
}

- (void)handleSelectionOnCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v5 = [WeakRetained isMemberOfClass:objc_opt_class()];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_controller);
    [v6 submitSettingDescription:self];
  }

  completionCopy[2]();
}

+ (Class)_viewClassForSettingDescription:(id)description
{
  descriptionCopy = description;
  if (descriptionCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = descriptionCopy;
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

- (void)_dispatchEventOfType:(unint64_t)type extraInfo:(id)info
{
  infoCopy = info;
  v6 = objc_opt_class();
  viewElement = [(SKUISettingDescription *)self viewElement];
  viewElement2 = [v6 _inputViewElementFromElement:viewElement];

  if (!viewElement2)
  {
    viewElement2 = [(SKUISettingDescription *)self viewElement];
  }

  [viewElement2 dispatchEventOfType:type canBubble:1 isCancelable:1 extraInfo:infoCopy completionBlock:0];
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