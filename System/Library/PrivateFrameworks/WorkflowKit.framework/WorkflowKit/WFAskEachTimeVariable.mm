@interface WFAskEachTimeVariable
- (NSString)prompt;
- (WFAskEachTimeVariable)initWithPrompt:(id)prompt collectionFilter:(id)filter;
- (WFDisambiguationCollectionFilter)collectionFilter;
- (id)icon;
- (id)rewrittenWithStrings:(id)strings;
- (id)userVisiblePrompt;
- (id)userVisibleStringsForUseCase:(unint64_t)case;
- (void)retrieveContentCollectionWithVariableSource:(id)source completionHandler:(id)handler;
@end

@implementation WFAskEachTimeVariable

- (id)icon
{
  v2 = objc_alloc(MEMORY[0x1E69E0D70]);
  v3 = [MEMORY[0x1E69E09E0] colorWithSystemColor:1];
  clearBackground = [MEMORY[0x1E69E0B48] clearBackground];
  v5 = [v2 initWithSymbolName:@"text.bubble" symbolColor:v3 background:clearBackground];

  return v5;
}

- (WFDisambiguationCollectionFilter)collectionFilter
{
  collectionFilter = self->_collectionFilter;
  if (!collectionFilter)
  {
    dictionary = [(WFVariable *)self dictionary];
    v5 = [dictionary objectForKey:@"CollectionFilter"];

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
  dictionary = [(WFVariable *)self dictionary];
  v3 = [dictionary objectForKey:@"Prompt"];

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

- (void)retrieveContentCollectionWithVariableSource:(id)source completionHandler:(id)handler
{
  v9 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = getWFGeneralLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315138;
    v8 = "[WFAskEachTimeVariable retrieveContentCollectionWithVariableSource:completionHandler:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Ask Each Time variable unexpectedly asked for content", &v7, 0xCu);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
  v6 = *MEMORY[0x1E69E9840];
}

- (WFAskEachTimeVariable)initWithPrompt:(id)prompt collectionFilter:(id)filter
{
  promptCopy = prompt;
  filterCopy = filter;
  if (![promptCopy length])
  {
    v8 = 0;
    if (filterCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = [promptCopy copy];
  if (!filterCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [filterCopy copy];
LABEL_6:
  v10 = objc_opt_new();
  [v10 setValue:v8 forKey:@"Prompt"];
  serializableRepresentation = [v9 serializableRepresentation];
  [v10 setValue:serializableRepresentation forKey:@"CollectionFilter"];

  v12 = [(WFVariable *)self initWithDictionary:v10 variableProvider:0];
  return v12;
}

- (id)rewrittenWithStrings:(id)strings
{
  v17 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  userVisiblePrompt = [(WFAskEachTimeVariable *)self userVisiblePrompt];
  if (userVisiblePrompt)
  {
    v6 = [stringsCopy objectForKey:userVisiblePrompt];
    if (v6)
    {
      v7 = [WFAskEachTimeVariable alloc];
      collectionFilter = [(WFAskEachTimeVariable *)self collectionFilter];
      selfCopy3 = [(WFAskEachTimeVariable *)v7 initWithPrompt:v6 collectionFilter:collectionFilter];
    }

    else
    {
      v10 = getWFUserStringsLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v13 = 136315394;
        v14 = "[WFAskEachTimeVariable(UserStrings) rewrittenWithStrings:]";
        v15 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Missing string for variable %@", &v13, 0x16u);
      }

      selfCopy3 = self;
    }
  }

  else
  {
    selfCopy3 = self;
  }

  v11 = *MEMORY[0x1E69E9840];

  return selfCopy3;
}

- (id)userVisibleStringsForUseCase:(unint64_t)case
{
  userVisiblePrompt = [(WFAskEachTimeVariable *)self userVisiblePrompt];
  if (userVisiblePrompt)
  {
    [MEMORY[0x1E695DFD8] setWithObject:userVisiblePrompt];
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
  prompt = [(WFAskEachTimeVariable *)self prompt];

  if (prompt)
  {
    v4 = [WFUserVisibleString alloc];
    prompt2 = [(WFAskEachTimeVariable *)self prompt];
    v6 = [(WFUserVisibleString *)v4 initWithContent:prompt2 ofKind:0 comment:@"Ask Each Time prompt"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end