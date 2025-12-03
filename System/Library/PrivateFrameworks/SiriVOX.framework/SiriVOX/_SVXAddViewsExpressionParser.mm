@interface _SVXAddViewsExpressionParser
- (_SVXAddViewsExpressionParser)initWithParsingService:(id)service preferences:(id)preferences;
- (id)_parseViews:(id)views addViews:(id)addViews aceViewByAceId:(id)id aceIdByParseableExpressionIds:(id)ids;
- (id)_prepareParsingModelWithAddViews:(id)views;
- (void)parseAddViews:(id)views reply:(id)reply;
@end

@implementation _SVXAddViewsExpressionParser

- (id)_parseViews:(id)views addViews:(id)addViews aceViewByAceId:(id)id aceIdByParseableExpressionIds:(id)ids
{
  v57 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  addViewsCopy = addViews;
  idCopy = id;
  idsCopy = ids;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v47 = "[_SVXAddViewsExpressionParser _parseViews:addViews:aceViewByAceId:aceIdByParseableExpressionIds:]";
    v48 = 2112;
    v49 = addViewsCopy;
    v50 = 2112;
    v51 = viewsCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s Successfully parsed expressions for command: %@\n    Parsed expressions: %@", buf, 0x20u);
  }

  v34 = addViewsCopy;
  v33 = [addViewsCopy copy];
  views = [v33 views];
  v13 = [views mutableCopy];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = viewsCopy;
  v39 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (v39)
  {
    v36 = *v43;
    do
    {
      v14 = 0;
      v15 = MEMORY[0x277CEF098];
      do
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v42 + 1) + 8 * v14);
        parseableExpression = [v16 parseableExpression];
        aceId = [parseableExpression aceId];
        v19 = [idsCopy objectForKey:aceId];
        v20 = [idCopy objectForKey:v19];

        v21 = [v20 copy];
        v22 = *v15;
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
        {
          v23 = v22;
          v24 = [v16 description];
          v25 = [v21 description];
          *buf = 136316162;
          v47 = "[_SVXAddViewsExpressionParser _parseViews:addViews:aceViewByAceId:aceIdByParseableExpressionIds:]";
          v48 = 2112;
          v49 = v16;
          v50 = 2112;
          v51 = v21;
          v52 = 2112;
          v53 = v24;
          v54 = 2112;
          v55 = v25;
          _os_log_impl(&dword_2695B9000, v23, OS_LOG_TYPE_INFO, "%s Applying parsed expression %@ to view %@\n    Parsed expression: %@\n    View: %@", buf, 0x34u);

          v15 = MEMORY[0x277CEF098];
        }

        [v21 svx_applyParsedExpression:v16];
        v26 = *v15;
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v47 = "[_SVXAddViewsExpressionParser _parseViews:addViews:aceViewByAceId:aceIdByParseableExpressionIds:]";
          v48 = 2112;
          v49 = views;
          v50 = 2112;
          v51 = v13;
          _os_log_impl(&dword_2695B9000, v26, OS_LOG_TYPE_INFO, "%s Splicing in applied parsed expression\n    Original views: %@\n    Updated views: %@", buf, 0x20u);
        }

        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __98___SVXAddViewsExpressionParser__parseViews_addViews_aceViewByAceId_aceIdByParseableExpressionIds___block_invoke;
        v40[3] = &unk_279C67478;
        v27 = v20;
        v41 = v27;
        v28 = [views indexOfObjectPassingTest:v40];
        if (v28 >= [v13 count])
        {
          v29 = *v15;
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v47 = "[_SVXAddViewsExpressionParser _parseViews:addViews:aceViewByAceId:aceIdByParseableExpressionIds:]";
            v48 = 2112;
            v49 = v21;
            v50 = 2112;
            v51 = v27;
            v52 = 2112;
            v53 = v13;
            _os_log_error_impl(&dword_2695B9000, v29, OS_LOG_TYPE_ERROR, "%s Failed splicing updated view for view in array\n    Updated ace view: %@\n    Original ace view: %@\n    Updated views array: %@", buf, 0x2Au);
          }
        }

        else
        {
          [v13 replaceObjectAtIndex:v28 withObject:v21];
        }

        ++v14;
      }

      while (v39 != v14);
      v39 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
    }

    while (v39);
  }

  v30 = [v13 copy];
  [v33 setViews:v30];

  v31 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)_prepareParsingModelWithAddViews:(id)views
{
  v57 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  viewsCopy = views;
  views = [viewsCopy views];
  v46 = [views countByEnumeratingWithState:&v48 objects:v56 count:16];
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (!v46)
  {
    v43 = 0;
    goto LABEL_25;
  }

  v43 = 0;
  v8 = *v49;
  v9 = *MEMORY[0x277CEF568];
  v45 = *MEMORY[0x277CEF568];
  v38 = views;
  selfCopy = self;
  v40 = *v49;
  do
  {
    for (i = 0; i != v46; ++i)
    {
      if (*v49 != v8)
      {
        objc_enumerationMutation(views);
      }

      v11 = *(*(&v48 + 1) + 8 * i);
      svx_parseableExpression = [v11 svx_parseableExpression];
      v13 = svx_parseableExpression;
      if (svx_parseableExpression)
      {
        if (self->_ignoresLocallyParseableExpressions)
        {
          v44 = v7;
          expressionString = [svx_parseableExpression expressionString];
          if (![expressionString length])
          {
            goto LABEL_13;
          }

          v41 = v6;
          v42 = v5;
          v15 = v43;
          if (!v43)
          {
            speakableUtteranceParserProvider = selfCopy->_speakableUtteranceParserProvider;
            v17 = objc_alloc(MEMORY[0x277CBEAF8]);
            preferences = [(_SVXExpressionParser *)selfCopy preferences];
            languageCode = [preferences languageCode];
            v20 = [v17 initWithLocaleIdentifier:languageCode];
            v21 = [(SVXAFSpeakableUtteranceParserProvider *)speakableUtteranceParserProvider getWithLocale:v20];

            v9 = v45;
            v15 = v21;
          }

          groupIdentifier = [v11 groupIdentifier];
          v23 = [_SVXSpeakableNamespaceDomainOccurrenceProvider providerForDomain:groupIdentifier];
          [v15 registerProvider:v23 forNamespace:v9];
          [v13 expressionString];
          v25 = v24 = v9;
          v47 = 0;
          v26 = [v15 parseStringWithFormat:v25 error:&v47];
          v27 = v47;

          v43 = v15;
          if (v27)
          {
            [v15 registerProvider:0 forNamespace:v24];

            views = v38;
            self = selfCopy;
            v6 = v41;
            v5 = v42;
LABEL_13:

            v7 = v44;
            v8 = v40;
LABEL_14:
            v28 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v53 = "[_SVXAddViewsExpressionParser _prepareParsingModelWithAddViews:]";
              v54 = 2112;
              v55 = v13;
              _os_log_impl(&dword_2695B9000, v28, OS_LOG_TYPE_INFO, "%s Expression doesn't require remote parse: %@", buf, 0x16u);
            }

LABEL_20:
            v9 = v45;
            goto LABEL_21;
          }

          v29 = [v23 count];
          [v15 registerProvider:0 forNamespace:v24];

          views = v38;
          self = selfCopy;
          v6 = v41;
          v5 = v42;
          v7 = v44;
          v8 = v40;
          if (!v29)
          {
            goto LABEL_14;
          }
        }

        if (!v7)
        {
          v7 = objc_opt_new();
          v30 = objc_opt_new();

          v31 = objc_opt_new();
          v5 = v31;
          v6 = v30;
        }

        aceId = [v11 aceId];
        [v5 setObject:v11 forKey:aceId];
        aceId2 = [v13 aceId];
        [v6 setObject:aceId forKey:aceId2];

        [v7 addObject:v13];
        goto LABEL_20;
      }

LABEL_21:
    }

    v46 = [views countByEnumeratingWithState:&v48 objects:v56 count:16];
  }

  while (v46);
LABEL_25:

  v34 = [[_SVXExpressionParsingModel alloc] initWithParseableExpressions:v7 aceViewIdByExpressionId:v6 aceViewByAceId:v5];
  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)parseAddViews:(id)views reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = MEMORY[0x277CEF098];
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[_SVXAddViewsExpressionParser parseAddViews:reply:]";
      v24 = 2112;
      v25 = viewsCopy;
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Looking for parseable expressions in command %@", buf, 0x16u);
    }

    v10 = [(_SVXAddViewsExpressionParser *)self _prepareParsingModelWithAddViews:viewsCopy];
    parseableExpressions = [v10 parseableExpressions];
    v12 = [parseableExpressions count];

    if (v12)
    {
      parsingService = [(_SVXExpressionParser *)self parsingService];
      parseableExpressions2 = [v10 parseableExpressions];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52___SVXAddViewsExpressionParser_parseAddViews_reply___block_invoke;
      v18[3] = &unk_279C67450;
      v18[4] = self;
      v19 = viewsCopy;
      v20 = v10;
      v21 = replyCopy;
      [parsingService parseExpressions:parseableExpressions2 targetDevice:0 reply:v18];
    }

    else
    {
      v15 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v23 = "[_SVXAddViewsExpressionParser parseAddViews:reply:]";
        v24 = 2112;
        v25 = viewsCopy;
        _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s Found no parseable expressions in command %@", buf, 0x16u);
      }

      v16 = [viewsCopy copy];
      (*(replyCopy + 2))(replyCopy, 1, v16);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (_SVXAddViewsExpressionParser)initWithParsingService:(id)service preferences:(id)preferences
{
  v9.receiver = self;
  v9.super_class = _SVXAddViewsExpressionParser;
  v4 = [(_SVXExpressionParser *)&v9 initWithParsingService:service preferences:preferences];
  v5 = v4;
  if (v4)
  {
    v4->_ignoresLocallyParseableExpressions = 1;
    v6 = objc_alloc_init(SVXAFSpeakableUtteranceParserProvider);
    speakableUtteranceParserProvider = v5->_speakableUtteranceParserProvider;
    v5->_speakableUtteranceParserProvider = v6;
  }

  return v5;
}

@end