@interface RUIObjectModelParser
- (BOOL)parseActionSignalWithElementName:(id)a3;
- (RUIObjectModelParser)initWithBaseURL:(id)a3 style:(id)a4 delegate:(id)a5 decodingUserInfo:(id)a6;
- (RUIObjectModelParserDelegate)delegate;
- (id)_createAndAddPageWithAttributes:(id)a3;
- (id)_createPageWithName:(id)a3 attributes:(id)a4;
- (id)_lastPageCreateIfNeeded;
- (id)_lastRow;
- (void)_addNavigationBarWithAttributes:(id)a3;
- (void)_logDeprecation:(id)a3 value:(id)a4;
- (void)_validateDocumentContent;
- (void)dealloc;
- (void)parseXMLElement:(id)a3;
- (void)parser:(id)a3 setDefaultActionSignal:(id)a4;
- (void)traversalDelegateDidEndlement:(id)a3;
- (void)traversalDelegateDidStartElement:(id)a3;
- (void)traversalDelegateFoundCData:(id)a3;
@end

@implementation RUIObjectModelParser

- (RUIObjectModelParser)initWithBaseURL:(id)a3 style:(id)a4 delegate:(id)a5 decodingUserInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = RUIObjectModelParser;
  v14 = [(RUIObjectModelParser *)&v26 init];
  if (v14)
  {
    v15 = objc_alloc_init(RUIObjectModel);
    uiObjectModel = v14->_uiObjectModel;
    v14->_uiObjectModel = v15;

    [(RUIObjectModel *)v14->_uiObjectModel setDecodingUserInfo:v13];
    [(RUIObjectModel *)v14->_uiObjectModel setSourceURL:v10];
    [(RUIObjectModel *)v14->_uiObjectModel setStyle:v11];
    [(RUIObjectModelParser *)v14 setBaseURL:v10];
    [(RUIObjectModelParser *)v14 setDelegate:v12];
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

- (void)parseXMLElement:(id)a3
{
  [(RUIObjectModelParser *)self setXmlElement:a3];
  v4 = [(RUIObjectModelParser *)self xmlElement];
  [v4 traverseWithDelegate:self];

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

- (id)_createPageWithName:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0 || (v10 = objc_loadWeakRetained(&self->_delegate), [v10 objectModelParser:self createPageWithName:v6 attributes:v7], v11 = objc_claimAutoreleasedReturnValue(), v10, -[RUIPage setAttributes:](v11, "setAttributes:", v7), !v11))
  {
    v11 = [[RUIPage alloc] initWithAttributes:v7];
  }

  v12 = [(RUIElement *)[RUIPageElement alloc] initWithAttributes:v7 parent:0];
  [(RUIPage *)v11 setPageElement:v12];
  v13 = [(RUIObjectModel *)self->_uiObjectModel style];
  [(RUIPage *)v11 setStyle:v13];

  [(RUIPage *)v11 setObjectModel:self->_uiObjectModel];
  [(NSMutableArray *)self->_currentPageStack addObject:v11];

  return v11;
}

- (id)_createAndAddPageWithAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"name"];
  v6 = [(RUIObjectModelParser *)self _createPageWithName:v5 attributes:v4];

  if (v4)
  {
    v7 = [v4 objectForKeyedSubscript:@"validationFunction"];
    [v6 setValidationFunction:v7];

    v8 = [v4 objectForKeyedSubscript:@"id"];
    [v6 setPageID:v8];

    v9 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    if (v9)
    {
      v10 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v9];
      v11 = [v6 view];
      [v11 setBackgroundColor:v10];
    }
  }

  [(NSMutableArray *)self->_pages addObject:v6];

  return v6;
}

- (id)_lastPageCreateIfNeeded
{
  v3 = [(NSMutableArray *)self->_currentPageStack lastObject];
  if (!v3)
  {
    v3 = [(RUIObjectModelParser *)self _createAndAddPageWithAttributes:0];
  }

  return v3;
}

- (id)_lastRow
{
  v2 = [(NSMutableArray *)self->_currentPageStack lastObject];
  v3 = [v2 tableViewOM];
  v4 = [v3 sections];
  v5 = [v4 lastObject];

  v6 = [v5 rows];
  v7 = [v6 lastObject];

  return v7;
}

- (void)_addNavigationBarWithAttributes:(id)a3
{
  v9 = a3;
  v4 = [(RUIObjectModelParser *)self _lastPageCreateIfNeeded];
  v5 = [v9 objectForKey:@"title"];
  if ([v5 length])
  {
    [v4 setNavTitle:v5];
  }

  v6 = [v9 objectForKey:@"subTitle"];
  if ([v6 length])
  {
    [v4 setNavSubTitle:v6];
  }

  v7 = [v9 objectForKey:@"backButtonTitle"];
  if (v7)
  {
    [v4 setBackButtonTitle:v7];
  }

  v8 = [v9 objectForKey:@"hidesBackButton"];
  [v4 setHidesBackButton:{objc_msgSend(v8, "BOOLValue")}];
}

- (void)_logDeprecation:(id)a3 value:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" = %@", v7];
  }

  else
  {
    v8 = &stru_282D68F58;
  }

  if (_isInternalInstall())
  {
    v9 = _RUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(RUIObjectModelParser *)self baseURL];
      v11 = [(NSMutableArray *)self->_elementStack lastObject];
      *buf = 138413058;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Page with baseURL %@ is using deprecated feature %@%@ in %@ element", buf, 0x2Au);
    }
  }
}

- (BOOL)parseActionSignalWithElementName:(id)a3
{
  v4 = a3;
  v5 = [RUIActionSignal signalWithString:v4];
  if (v5)
  {
    actionSignal = self->_actionSignal;
    if (actionSignal)
    {
      v7 = [(RUIActionSignal *)actionSignal subActions];
      [v7 addObject:v4];
    }

    else
    {
      v8 = v5;
      v7 = self->_actionSignal;
      self->_actionSignal = v8;
    }
  }

  return v5 != 0;
}

- (void)traversalDelegateDidStartElement:(id)a3
{
  v4 = a3;
  [(NSMutableString *)self->_accumulator setString:&stru_282D68F58];
  v5 = [v4 attributtes];
  v6 = [v4 name];
  objc_storeStrong(&self->_currentElementAttributes, v5);
  if ([v6 isEqualToString:@"buddyFlowComplete"])
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
    if (![v6 isEqualToString:@"xmlui"])
    {
      if ([v6 isEqualToString:@"actions"])
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
        if ([v6 isEqualToString:@"script"])
        {
          v18 = MEMORY[0x277CBEBC0];
          v19 = [v5 objectForKey:@"src"];
          v20 = [v18 URLWithString:v19];
          [(RUIObjectModel *)self->_uiObjectModel setScriptURL:v20];

          self->_parserState = 1;
          goto LABEL_55;
        }

        if ([v6 isEqualToString:@"page"])
        {
          v17 = [(RUIObjectModelParser *)self _createAndAddPageWithAttributes:v5];
          v31 = [RUITopLevelElementParser alloc];
          v32 = [v17 elementProvider];
          v33 = [(RUITopLevelElementParser *)v31 initWithXMLElement:v4 elementProvider:v32 objectModel:self->_uiObjectModel delegate:self];

          v34 = [v17 pageElement];
          [v34 setSourceXMLElement:v4];

          [(RUITopLevelElementParser *)v33 parse];
        }

        else
        {
          if (![v6 isEqualToString:@"alert"])
          {
            if ([v6 isEqualToString:@"clientInfo"])
            {
              [(RUIObjectModel *)self->_uiObjectModel setClientInfo:v5];
            }

            else if ([v6 isEqualToString:@"serverInfo"])
            {
              [(RUIObjectModel *)self->_uiObjectModel setServerInfo:v5];
            }

            else if ([v6 isEqualToString:@"updateInfo"])
            {
              [(RUIObjectModel *)self->_uiObjectModel setUpdateInfo:v5];
            }

            else
            {
              [(RUIObjectModelParser *)self parseActionSignalWithElementName:v6];
            }

            goto LABEL_55;
          }

          self->_parserState = 2;
          v35 = [[RUIAlertView alloc] initWithAttributes:v5 parent:0];
          v36 = [(RUIObjectModel *)self->_uiObjectModel style];
          [(RUIElement *)v35 setStyle:v36];

          v37 = [v5 objectForKey:@"title"];
          [(RUIAlertView *)v35 setTitle:v37];

          v38 = [v5 objectForKey:@"message"];
          [(RUIAlertView *)v35 setMessage:v38];

          v39 = [v5 objectForKey:@"cancelButtonTitle"];

          if (v39)
          {
            v40 = [v5 objectForKeyedSubscript:@"cancelButtonTitle"];
            [(RUIAlertView *)v35 addButtonWithTitle:v40 URL:0 style:1 attributes:0];
          }

          currentAlert = self->_currentAlert;
          self->_currentAlert = v35;
          v17 = v35;

          [v17 setSourceXMLElement:v4];
        }
      }

      goto LABEL_55;
    }

    if (!self->_error && ![(NSMutableArray *)self->_elementStack count])
    {
      *&self->_foundXMLUI = 257;
    }

    v10 = [v5 objectForKey:@"action"];
    uiObjectModel = self->_uiObjectModel;
    v12 = [v5 objectForKey:@"id"];
    [(RUIObjectModel *)uiObjectModel setIdentifier:v12];

    v13 = self->_uiObjectModel;
    v14 = [v5 objectForKey:@"idOfOldestObjectModelToRemoveAfterPush"];
    [(RUIObjectModel *)v13 setIdentifierMarkingStackRemovalAfterPush:v14];

    v15 = [v5 objectForKeyedSubscript:@"idOfObjectModelToReplace"];
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

    v22 = [v5 objectForKey:@"validationFunction"];
    [(RUIObjectModel *)self->_uiObjectModel setValidationFunction:v22];

    v23 = [v5 objectForKey:@"refresh"];
    v24 = [v23 componentsSeparatedByString:@""];;
    if ([v24 count] == 2)
    {
      v25 = [v24 objectAtIndex:0];
      -[RUIObjectModel setRefreshDelay:](self->_uiObjectModel, "setRefreshDelay:", [v25 intValue]);

      v26 = [v24 objectAtIndex:1];
      [(RUIObjectModel *)self->_uiObjectModel setRefreshURL:v26];
    }

    v27 = [(RUIObjectModel *)self->_uiObjectModel style];

    if (!v27)
    {
      v28 = [v5 objectForKey:@"style"];
      v50 = v10;
      if ([v28 isEqualToString:@"setupAssistant"])
      {
        v29 = self->_uiObjectModel;
        v30 = +[RUIStyle setupAssistantStyle];
      }

      else if ([v28 isEqualToString:@"setupAssistantModal"])
      {
        v29 = self->_uiObjectModel;
        v30 = +[RUIStyle setupAssistantModalStyle];
      }

      else if ([v28 isEqualToString:@"oslo"])
      {
        v29 = self->_uiObjectModel;
        v30 = +[RUIStyle osloStyle];
      }

      else if ([v28 isEqualToString:@"atv"])
      {
        v29 = self->_uiObjectModel;
        v30 = +[RUIStyle frontRowStyle];
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

        v30 = [(__objc2_class *)v43 defaultStyle];
      }

      v44 = v30;
      [(RUIObjectModel *)v29 setStyle:v30];

      v10 = v50;
    }

    v45 = [v5 objectForKeyedSubscript:@"tintColor"];

    if (v45)
    {
      v46 = MEMORY[0x277D75348];
      v47 = [v5 objectForKeyedSubscript:@"tintColor"];
      v48 = [v46 _remoteUI_colorWithString:v47 defaultColor:0];

      v49 = [(RUIObjectModel *)self->_uiObjectModel style];
      [v49 setTintColor:v48];
    }
  }

LABEL_55:
  [(NSMutableArray *)self->_elementStack addObject:v6];
}

- (void)traversalDelegateDidEndlement:(id)a3
{
  v15 = a3;
  v4 = [(NSMutableString *)self->_accumulator copy];
  v5 = [v15 name];
  v6 = v5;
  parserState = self->_parserState;
  if (parserState)
  {
    if (parserState == 2)
    {
      if ([v5 isEqualToString:@"cancelButton"])
      {
        [(RUIAlertView *)self->_currentAlert addButtonWithTitle:v4 URL:0 style:1 attributes:self->_currentElementAttributes xmlElement:v15];
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
        [(RUIAlertView *)currentAlert addButtonWithTitle:v4 URL:v13 style:v9 attributes:self->_currentElementAttributes xmlElement:v15];
      }

      else if ([v6 isEqualToString:@"alert"])
      {
        [(RUIObjectModel *)self->_uiObjectModel addAlertElement:self->_currentAlert];
        self->_parserState = 0;
        v14 = self->_currentAlert;
        self->_currentAlert = 0;
      }
    }

    else if (parserState == 1 && [v5 isEqualToString:@"script"])
    {
      self->_parserState = 0;
    }
  }

  else if ([v5 isEqualToString:@"xmlui"])
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
  v9 = [(RUIObjectModel *)self->_uiObjectModel allPages];
  if ([v9 count] || self->_actionSignal)
  {
LABEL_8:

    return;
  }

  v3 = [(RUIObjectModel *)self->_uiObjectModel primaryAlert];
  if (v3 || ([(RUIObjectModel *)self->_uiObjectModel scriptURL], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || ([(RUIObjectModel *)self->_uiObjectModel inlineScript], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || ([(RUIObjectModel *)self->_uiObjectModel clientInfo], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_8;
  }

  v4 = [(RUIObjectModel *)self->_uiObjectModel serverInfo];

  if (!v4 && !self->_foundXMLUI)
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

- (void)traversalDelegateFoundCData:(id)a3
{
  v7 = a3;
  accumulator = self->_accumulator;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  [(NSMutableString *)accumulator appendString:v5];

  if (self->_parserState == 1)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    [(RUIObjectModel *)self->_uiObjectModel setInlineScript:v6];
  }
}

- (void)parser:(id)a3 setDefaultActionSignal:(id)a4
{
  v6 = a4;
  actionSignal = self->_actionSignal;
  p_actionSignal = &self->_actionSignal;
  if (!actionSignal)
  {
    v9 = v6;
    objc_storeStrong(p_actionSignal, a4);
    v6 = v9;
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