@interface RUIObjectModelParser
- (BOOL)parseActionSignalWithElementName:(id)name;
- (RUIObjectModelParser)initWithBaseURL:(id)l style:(id)style delegate:(id)delegate decodingUserInfo:(id)info;
- (RUIObjectModelParserDelegate)delegate;
- (id)_createAndAddPageWithAttributes:(id)attributes;
- (id)_createPageWithName:(id)name attributes:(id)attributes;
- (id)_lastPageCreateIfNeeded;
- (id)_lastRow;
- (void)_addNavigationBarWithAttributes:(id)attributes;
- (void)_logDeprecation:(id)deprecation value:(id)value;
- (void)_validateDocumentContent;
- (void)dealloc;
- (void)parseXMLElement:(id)element;
- (void)parser:(id)parser setDefaultActionSignal:(id)signal;
- (void)traversalDelegateDidEndlement:(id)endlement;
- (void)traversalDelegateDidStartElement:(id)element;
- (void)traversalDelegateFoundCData:(id)data;
@end

@implementation RUIObjectModelParser

- (RUIObjectModelParser)initWithBaseURL:(id)l style:(id)style delegate:(id)delegate decodingUserInfo:(id)info
{
  lCopy = l;
  styleCopy = style;
  delegateCopy = delegate;
  infoCopy = info;
  v26.receiver = self;
  v26.super_class = RUIObjectModelParser;
  v14 = [(RUIObjectModelParser *)&v26 init];
  if (v14)
  {
    v15 = objc_alloc_init(RUIObjectModel);
    uiObjectModel = v14->_uiObjectModel;
    v14->_uiObjectModel = v15;

    [(RUIObjectModel *)v14->_uiObjectModel setDecodingUserInfo:infoCopy];
    [(RUIObjectModel *)v14->_uiObjectModel setSourceURL:lCopy];
    [(RUIObjectModel *)v14->_uiObjectModel setStyle:styleCopy];
    [(RUIObjectModelParser *)v14 setBaseURL:lCopy];
    [(RUIObjectModelParser *)v14 setDelegate:delegateCopy];
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pages = v14->_pages;
    v14->_pages = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentPageStack = v14->_currentPageStack;
    v14->_currentPageStack = v19;

    v21 = objc_opt_new();
    accumulator = v14->_accumulator;
    v14->_accumulator = v21;

    v23 = objc_opt_new();
    elementStack = v14->_elementStack;
    v14->_elementStack = v23;
  }

  return v14;
}

- (void)parseXMLElement:(id)element
{
  [(RUIObjectModelParser *)self setXmlElement:element];
  xmlElement = [(RUIObjectModelParser *)self xmlElement];
  [xmlElement traverseWithDelegate:self];

  [(RUIObjectModelParser *)self _validateDocumentContent];
  uiObjectModel = self->_uiObjectModel;

  [(RUIObjectModel *)uiObjectModel parseDidFinish];
}

- (void)dealloc
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_pages;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v18 + 1) + 8 * v7++) setObjectModel:0];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_currentPageStack;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) setObjectModel:0];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  v13.receiver = self;
  v13.super_class = RUIObjectModelParser;
  [(RUIObjectModelParser *)&v13 dealloc];
}

- (id)_createPageWithName:(id)name attributes:(id)attributes
{
  nameCopy = name;
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0 || (v10 = objc_loadWeakRetained(&self->_delegate), [v10 objectModelParser:self createPageWithName:nameCopy attributes:attributesCopy], v11 = objc_claimAutoreleasedReturnValue(), v10, -[RUIPage setAttributes:](v11, "setAttributes:", attributesCopy), !v11))
  {
    v11 = [[RUIPage alloc] initWithAttributes:attributesCopy];
  }

  v12 = [(RUIElement *)[RUIPageElement alloc] initWithAttributes:attributesCopy parent:0];
  [(RUIPage *)v11 setPageElement:v12];
  style = [(RUIObjectModel *)self->_uiObjectModel style];
  [(RUIPage *)v11 setStyle:style];

  [(RUIPage *)v11 setObjectModel:self->_uiObjectModel];
  [(NSMutableArray *)self->_currentPageStack addObject:v11];

  return v11;
}

- (id)_createAndAddPageWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [attributesCopy objectForKeyedSubscript:@"name"];
  v6 = [(RUIObjectModelParser *)self _createPageWithName:v5 attributes:attributesCopy];

  if (attributesCopy)
  {
    v7 = [attributesCopy objectForKeyedSubscript:@"validationFunction"];
    [v6 setValidationFunction:v7];

    v8 = [attributesCopy objectForKeyedSubscript:@"id"];
    [v6 setPageID:v8];

    v9 = [attributesCopy objectForKeyedSubscript:@"backgroundColor"];
    if (v9)
    {
      v10 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v9];
      view = [v6 view];
      [view setBackgroundColor:v10];
    }
  }

  [(NSMutableArray *)self->_pages addObject:v6];

  return v6;
}

- (id)_lastPageCreateIfNeeded
{
  lastObject = [(NSMutableArray *)self->_currentPageStack lastObject];
  if (!lastObject)
  {
    lastObject = [(RUIObjectModelParser *)self _createAndAddPageWithAttributes:0];
  }

  return lastObject;
}

- (id)_lastRow
{
  lastObject = [(NSMutableArray *)self->_currentPageStack lastObject];
  tableViewOM = [lastObject tableViewOM];
  sections = [tableViewOM sections];
  lastObject2 = [sections lastObject];

  rows = [lastObject2 rows];
  lastObject3 = [rows lastObject];

  return lastObject3;
}

- (void)_addNavigationBarWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  _lastPageCreateIfNeeded = [(RUIObjectModelParser *)self _lastPageCreateIfNeeded];
  v5 = [attributesCopy objectForKey:@"title"];
  if ([v5 length])
  {
    [_lastPageCreateIfNeeded setNavTitle:v5];
  }

  v6 = [attributesCopy objectForKey:@"subTitle"];
  if ([v6 length])
  {
    [_lastPageCreateIfNeeded setNavSubTitle:v6];
  }

  v7 = [attributesCopy objectForKey:@"backButtonTitle"];
  if (v7)
  {
    [_lastPageCreateIfNeeded setBackButtonTitle:v7];
  }

  v8 = [attributesCopy objectForKey:@"hidesBackButton"];
  [_lastPageCreateIfNeeded setHidesBackButton:{objc_msgSend(v8, "BOOLValue")}];
}

- (void)_logDeprecation:(id)deprecation value:(id)value
{
  v20 = *MEMORY[0x277D85DE8];
  deprecationCopy = deprecation;
  valueCopy = value;
  if (valueCopy)
  {
    valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@" = %@", valueCopy];
  }

  else
  {
    valueCopy = &stru_282D68F58;
  }

  if (_isInternalInstall())
  {
    v9 = _RUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      baseURL = [(RUIObjectModelParser *)self baseURL];
      lastObject = [(NSMutableArray *)self->_elementStack lastObject];
      *buf = 138413058;
      v13 = baseURL;
      v14 = 2112;
      v15 = deprecationCopy;
      v16 = 2112;
      v17 = valueCopy;
      v18 = 2112;
      v19 = lastObject;
      _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Page with baseURL %@ is using deprecated feature %@%@ in %@ element", buf, 0x2Au);
    }
  }
}

- (BOOL)parseActionSignalWithElementName:(id)name
{
  nameCopy = name;
  v5 = [RUIActionSignal signalWithString:nameCopy];
  if (v5)
  {
    actionSignal = self->_actionSignal;
    if (actionSignal)
    {
      subActions = [(RUIActionSignal *)actionSignal subActions];
      [subActions addObject:nameCopy];
    }

    else
    {
      v8 = v5;
      subActions = self->_actionSignal;
      self->_actionSignal = v8;
    }
  }

  return v5 != 0;
}

- (void)traversalDelegateDidStartElement:(id)element
{
  elementCopy = element;
  [(NSMutableString *)self->_accumulator setString:&stru_282D68F58];
  attributtes = [elementCopy attributtes];
  name = [elementCopy name];
  objc_storeStrong(&self->_currentElementAttributes, attributtes);
  if ([name isEqualToString:@"buddyFlowComplete"])
  {
    if (_isInternalInstall())
    {
      v7 = _RUILoggingFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v7, OS_LOG_TYPE_DEFAULT, "Buddy Flow Complete!", buf, 2u);
      }
    }

    v8 = [RUIActionSignal signalWithType:1];
    actionSignal = self->_actionSignal;
    self->_actionSignal = v8;

    *&self->_foundXMLUI = 257;
  }

  else
  {
    if (![name isEqualToString:@"xmlui"])
    {
      if ([name isEqualToString:@"actions"])
      {
        if (!_isInternalInstall())
        {
          goto LABEL_55;
        }

        v17 = _RUILoggingFacility();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v51 = 0;
          _os_log_impl(&dword_21B93D000, v17, OS_LOG_TYPE_DEFAULT, "Starting to parse actions", v51, 2u);
        }
      }

      else
      {
        if ([name isEqualToString:@"script"])
        {
          v18 = MEMORY[0x277CBEBC0];
          v19 = [attributtes objectForKey:@"src"];
          v20 = [v18 URLWithString:v19];
          [(RUIObjectModel *)self->_uiObjectModel setScriptURL:v20];

          self->_parserState = 1;
          goto LABEL_55;
        }

        if ([name isEqualToString:@"page"])
        {
          v17 = [(RUIObjectModelParser *)self _createAndAddPageWithAttributes:attributtes];
          v31 = [RUITopLevelElementParser alloc];
          elementProvider = [v17 elementProvider];
          v33 = [(RUITopLevelElementParser *)v31 initWithXMLElement:elementCopy elementProvider:elementProvider objectModel:self->_uiObjectModel delegate:self];

          pageElement = [v17 pageElement];
          [pageElement setSourceXMLElement:elementCopy];

          [(RUITopLevelElementParser *)v33 parse];
        }

        else
        {
          if (![name isEqualToString:@"alert"])
          {
            if ([name isEqualToString:@"clientInfo"])
            {
              [(RUIObjectModel *)self->_uiObjectModel setClientInfo:attributtes];
            }

            else if ([name isEqualToString:@"serverInfo"])
            {
              [(RUIObjectModel *)self->_uiObjectModel setServerInfo:attributtes];
            }

            else if ([name isEqualToString:@"updateInfo"])
            {
              [(RUIObjectModel *)self->_uiObjectModel setUpdateInfo:attributtes];
            }

            else
            {
              [(RUIObjectModelParser *)self parseActionSignalWithElementName:name];
            }

            goto LABEL_55;
          }

          self->_parserState = 2;
          v35 = [[RUIAlertView alloc] initWithAttributes:attributtes parent:0];
          style = [(RUIObjectModel *)self->_uiObjectModel style];
          [(RUIElement *)v35 setStyle:style];

          v37 = [attributtes objectForKey:@"title"];
          [(RUIAlertView *)v35 setTitle:v37];

          v38 = [attributtes objectForKey:@"message"];
          [(RUIAlertView *)v35 setMessage:v38];

          v39 = [attributtes objectForKey:@"cancelButtonTitle"];

          if (v39)
          {
            v40 = [attributtes objectForKeyedSubscript:@"cancelButtonTitle"];
            [(RUIAlertView *)v35 addButtonWithTitle:v40 URL:0 style:1 attributes:0];
          }

          currentAlert = self->_currentAlert;
          self->_currentAlert = v35;
          v17 = v35;

          [v17 setSourceXMLElement:elementCopy];
        }
      }

      goto LABEL_55;
    }

    if (!self->_error && ![(NSMutableArray *)self->_elementStack count])
    {
      *&self->_foundXMLUI = 257;
    }

    v10 = [attributtes objectForKey:@"action"];
    uiObjectModel = self->_uiObjectModel;
    v12 = [attributtes objectForKey:@"id"];
    [(RUIObjectModel *)uiObjectModel setIdentifier:v12];

    v13 = self->_uiObjectModel;
    v14 = [attributtes objectForKey:@"idOfOldestObjectModelToRemoveAfterPush"];
    [(RUIObjectModel *)v13 setIdentifierMarkingStackRemovalAfterPush:v14];

    v15 = [attributtes objectForKeyedSubscript:@"idOfObjectModelToReplace"];
    [(RUIObjectModel *)self->_uiObjectModel setIdOfObjectModelToReplace:v15];

    v16 = [RUIActionSignal signalWithString:v10];
    if (v16)
    {
      objc_storeStrong(&self->_actionSignal, v16);
    }

    else if ([v10 length])
    {
      v21 = _RUILoggingFacility();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(RUIObjectModelParser *)v10 traversalDelegateDidStartElement:v21];
      }
    }

    v22 = [attributtes objectForKey:@"validationFunction"];
    [(RUIObjectModel *)self->_uiObjectModel setValidationFunction:v22];

    v23 = [attributtes objectForKey:@"refresh"];
    v24 = [v23 componentsSeparatedByString:@""];;
    if ([v24 count] == 2)
    {
      v25 = [v24 objectAtIndex:0];
      -[RUIObjectModel setRefreshDelay:](self->_uiObjectModel, "setRefreshDelay:", [v25 intValue]);

      v26 = [v24 objectAtIndex:1];
      [(RUIObjectModel *)self->_uiObjectModel setRefreshURL:v26];
    }

    style2 = [(RUIObjectModel *)self->_uiObjectModel style];

    if (!style2)
    {
      v28 = [attributtes objectForKey:@"style"];
      v50 = v10;
      if ([v28 isEqualToString:@"setupAssistant"])
      {
        v29 = self->_uiObjectModel;
        defaultStyle = +[RUIStyle setupAssistantStyle];
      }

      else if ([v28 isEqualToString:@"setupAssistantModal"])
      {
        v29 = self->_uiObjectModel;
        defaultStyle = +[RUIStyle setupAssistantModalStyle];
      }

      else if ([v28 isEqualToString:@"oslo"])
      {
        v29 = self->_uiObjectModel;
        defaultStyle = +[RUIStyle osloStyle];
      }

      else if ([v28 isEqualToString:@"atv"])
      {
        v29 = self->_uiObjectModel;
        defaultStyle = +[RUIStyle frontRowStyle];
      }

      else
      {
        v42 = [v28 isEqualToString:@"defaultStyle"];
        v29 = self->_uiObjectModel;
        if (v42)
        {
          v43 = RUIDefaultAppearanceStyle;
        }

        else
        {
          v43 = RUIStyle;
        }

        defaultStyle = [(__objc2_class *)v43 defaultStyle];
      }

      v44 = defaultStyle;
      [(RUIObjectModel *)v29 setStyle:defaultStyle];

      v10 = v50;
    }

    v45 = [attributtes objectForKeyedSubscript:@"tintColor"];

    if (v45)
    {
      v46 = MEMORY[0x277D75348];
      v47 = [attributtes objectForKeyedSubscript:@"tintColor"];
      v48 = [v46 _remoteUI_colorWithString:v47 defaultColor:0];

      style3 = [(RUIObjectModel *)self->_uiObjectModel style];
      [style3 setTintColor:v48];
    }
  }

LABEL_55:
  [(NSMutableArray *)self->_elementStack addObject:name];
}

- (void)traversalDelegateDidEndlement:(id)endlement
{
  endlementCopy = endlement;
  v4 = [(NSMutableString *)self->_accumulator copy];
  name = [endlementCopy name];
  v6 = name;
  parserState = self->_parserState;
  if (parserState)
  {
    if (parserState == 2)
    {
      if ([name isEqualToString:@"cancelButton"])
      {
        [(RUIAlertView *)self->_currentAlert addButtonWithTitle:v4 URL:0 style:1 attributes:self->_currentElementAttributes xmlElement:endlementCopy];
      }

      else if ([v6 isEqualToString:@"button"])
      {
        v8 = [(NSDictionary *)self->_currentElementAttributes objectForKeyedSubscript:@"destructive"];
        if ([v8 BOOLValue])
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        v10 = MEMORY[0x277CBEBC0];
        currentAlert = self->_currentAlert;
        v12 = [(NSDictionary *)self->_currentElementAttributes objectForKeyedSubscript:@"url"];
        v13 = [v10 URLWithString:v12];
        [(RUIAlertView *)currentAlert addButtonWithTitle:v4 URL:v13 style:v9 attributes:self->_currentElementAttributes xmlElement:endlementCopy];
      }

      else if ([v6 isEqualToString:@"alert"])
      {
        [(RUIObjectModel *)self->_uiObjectModel addAlertElement:self->_currentAlert];
        self->_parserState = 0;
        v14 = self->_currentAlert;
        self->_currentAlert = 0;
      }
    }

    else if (parserState == 1 && [name isEqualToString:@"script"])
    {
      self->_parserState = 0;
    }
  }

  else if ([name isEqualToString:@"xmlui"])
  {
    [(RUIObjectModel *)self->_uiObjectModel setPages:self->_pages];
    [(NSMutableArray *)self->_currentPageStack removeAllObjects];
    [(NSMutableArray *)self->_pages removeAllObjects];
  }

  else if ([v6 isEqualToString:@"page"])
  {
    [(NSMutableArray *)self->_currentPageStack removeLastObject];
  }

  [(NSMutableString *)self->_accumulator setString:&stru_282D68F58];
}

- (void)_validateDocumentContent
{
  allPages = [(RUIObjectModel *)self->_uiObjectModel allPages];
  if ([allPages count] || self->_actionSignal)
  {
LABEL_8:

    return;
  }

  primaryAlert = [(RUIObjectModel *)self->_uiObjectModel primaryAlert];
  if (primaryAlert || ([(RUIObjectModel *)self->_uiObjectModel scriptURL], (primaryAlert = objc_claimAutoreleasedReturnValue()) != 0) || ([(RUIObjectModel *)self->_uiObjectModel inlineScript], (primaryAlert = objc_claimAutoreleasedReturnValue()) != 0) || ([(RUIObjectModel *)self->_uiObjectModel clientInfo], (primaryAlert = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_8;
  }

  serverInfo = [(RUIObjectModel *)self->_uiObjectModel serverInfo];

  if (!serverInfo && !self->_foundXMLUI)
  {
    if (_isInternalInstall())
    {
      v5 = _RUILoggingFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v5, OS_LOG_TYPE_DEFAULT, "No usable content in document!", buf, 2u);
      }
    }

    uiObjectModel = self->_uiObjectModel;
    self->_uiObjectModel = 0;

    self->_succeeded = 0;
    v7 = [RUIHTTPRequest errorWithCode:4];
    error = self->_error;
    self->_error = v7;
  }
}

- (void)traversalDelegateFoundCData:(id)data
{
  dataCopy = data;
  accumulator = self->_accumulator;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
  [(NSMutableString *)accumulator appendString:v5];

  if (self->_parserState == 1)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
    [(RUIObjectModel *)self->_uiObjectModel setInlineScript:v6];
  }
}

- (void)parser:(id)parser setDefaultActionSignal:(id)signal
{
  signalCopy = signal;
  actionSignal = self->_actionSignal;
  p_actionSignal = &self->_actionSignal;
  if (!actionSignal)
  {
    v9 = signalCopy;
    objc_storeStrong(p_actionSignal, signal);
    signalCopy = v9;
  }
}

- (RUIObjectModelParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)traversalDelegateDidStartElement:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21B93D000, a2, OS_LOG_TYPE_ERROR, "warning: unknown action signal '%@'", &v2, 0xCu);
}

@end