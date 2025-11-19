@interface WFAskEachTimeVariable
- (NSString)prompt;
- (WFAskEachTimeVariable)initWithPrompt:(id)a3 collectionFilter:(id)a4;
- (WFDisambiguationCollectionFilter)collectionFilter;
- (id)icon;
- (id)rewrittenWithStrings:(id)a3;
- (id)userVisiblePrompt;
- (id)userVisibleStringsForUseCase:(unint64_t)a3;
- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4;
@end

@implementation WFAskEachTimeVariable

- (id)icon
{
  v2 = objc_alloc(MEMORY[0x1E69E0D70]);
  v3 = [MEMORY[0x1E69E09E0] colorWithSystemColor:1];
  v4 = [MEMORY[0x1E69E0B48] clearBackground];
  v5 = [v2 initWithSymbolName:@"text.bubble" symbolColor:v3 background:v4];

  return v5;
}

- (WFDisambiguationCollectionFilter)collectionFilter
{
  collectionFilter = self->_collectionFilter;
  if (!collectionFilter)
  {
    v4 = [(WFVariable *)self dictionary];
    v5 = [v4 objectForKey:@"CollectionFilter"];

    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [objc_alloc(MEMORY[0x1E69E0AC8]) initWithSerializedRepresentation:v5];
        v7 = self->_collectionFilter;
        self->_collectionFilter = v6;
      }
    }

    collectionFilter = self->_collectionFilter;
  }

  return collectionFilter;
}

- (NSString)prompt
{
  v2 = [(WFVariable *)self dictionary];
  v3 = [v2 objectForKey:@"Prompt"];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = getWFGeneralLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315138;
    v8 = "[WFAskEachTimeVariable retrieveContentCollectionWithVariableSource:completionHandler:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Ask Each Time variable unexpectedly asked for content", &v7, 0xCu);
  }

  (*(v4 + 2))(v4, 0, 0);
  v6 = *MEMORY[0x1E69E9840];
}

- (WFAskEachTimeVariable)initWithPrompt:(id)a3 collectionFilter:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    v8 = 0;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = [v6 copy];
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [v7 copy];
LABEL_6:
  v10 = objc_opt_new();
  [v10 setValue:v8 forKey:@"Prompt"];
  v11 = [v9 serializableRepresentation];
  [v10 setValue:v11 forKey:@"CollectionFilter"];

  v12 = [(WFVariable *)self initWithDictionary:v10 variableProvider:0];
  return v12;
}

- (id)rewrittenWithStrings:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFAskEachTimeVariable *)self userVisiblePrompt];
  if (v5)
  {
    v6 = [v4 objectForKey:v5];
    if (v6)
    {
      v7 = [WFAskEachTimeVariable alloc];
      v8 = [(WFAskEachTimeVariable *)self collectionFilter];
      v9 = [(WFAskEachTimeVariable *)v7 initWithPrompt:v6 collectionFilter:v8];
    }

    else
    {
      v10 = getWFUserStringsLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v13 = 136315394;
        v14 = "[WFAskEachTimeVariable(UserStrings) rewrittenWithStrings:]";
        v15 = 2112;
        v16 = self;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Missing string for variable %@", &v13, 0x16u);
      }

      v9 = self;
    }
  }

  else
  {
    v9 = self;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)userVisibleStringsForUseCase:(unint64_t)a3
{
  v3 = [(WFAskEachTimeVariable *)self userVisiblePrompt];
  if (v3)
  {
    [MEMORY[0x1E695DFD8] setWithObject:v3];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v4 = ;

  return v4;
}

- (id)userVisiblePrompt
{
  v3 = [(WFAskEachTimeVariable *)self prompt];

  if (v3)
  {
    v4 = [WFUserVisibleString alloc];
    v5 = [(WFAskEachTimeVariable *)self prompt];
    v6 = [(WFUserVisibleString *)v4 initWithContent:v5 ofKind:0 comment:@"Ask Each Time prompt"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end