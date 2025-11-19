@interface _SVXAddViewsExpressionParser
- (_SVXAddViewsExpressionParser)initWithParsingService:(id)a3 preferences:(id)a4;
- (id)_parseViews:(id)a3 addViews:(id)a4 aceViewByAceId:(id)a5 aceIdByParseableExpressionIds:(id)a6;
- (id)_prepareParsingModelWithAddViews:(id)a3;
- (void)parseAddViews:(id)a3 reply:(id)a4;
@end

@implementation _SVXAddViewsExpressionParser

- (id)_parseViews:(id)a3 addViews:(id)a4 aceViewByAceId:(id)a5 aceIdByParseableExpressionIds:(id)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v38 = a5;
  v37 = a6;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v47 = "[_SVXAddViewsExpressionParser _parseViews:addViews:aceViewByAceId:aceIdByParseableExpressionIds:]";
    v48 = 2112;
    v49 = v10;
    v50 = 2112;
    v51 = v9;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s Successfully parsed expressions for command: %@\n    Parsed expressions: %@", buf, 0x20u);
  }

  v34 = v10;
  v33 = [v10 copy];
  v12 = [v33 views];
  v13 = [v12 mutableCopy];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v9;
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
        v17 = [v16 parseableExpression];
        v18 = [v17 aceId];
        v19 = [v37 objectForKey:v18];
        v20 = [v38 objectForKey:v19];

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
          v49 = v12;
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
        v28 = [v12 indexOfObjectPassingTest:v40];
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

- (id)_prepareParsingModelWithAddViews:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v37 = a3;
  v4 = [v37 views];
  v46 = [v4 countByEnumeratingWithState:&v48 objects:v56 count:16];
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
  v38 = v4;
  v39 = self;
  v40 = *v49;
  do
  {
    for (i = 0; i != v46; ++i)
    {
      if (*v49 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v48 + 1) + 8 * i);
      v12 = [v11 svx_parseableExpression];
      v13 = v12;
      if (v12)
      {
        if (self->_ignoresLocallyParseableExpressions)
        {
          v44 = v7;
          v14 = [v12 expressionString];
          if (![v14 length])
          {
            goto LABEL_13;
          }

          v41 = v6;
          v42 = v5;
          v15 = v43;
          if (!v43)
          {
            speakableUtteranceParserProvider = v39->_speakableUtteranceParserProvider;
            v17 = objc_alloc(MEMORY[0x277CBEAF8]);
            v18 = [(_SVXExpressionParser *)v39 preferences];
            v19 = [v18 languageCode];
            v20 = [v17 initWithLocaleIdentifier:v19];
            v21 = [(SVXAFSpeakableUtteranceParserProvider *)speakableUtteranceParserProvider getWithLocale:v20];

            v9 = v45;
            v15 = v21;
          }

          v22 = [v11 groupIdentifier];
          v23 = [_SVXSpeakableNamespaceDomainOccurrenceProvider providerForDomain:v22];
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

            v4 = v38;
            self = v39;
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

          v4 = v38;
          self = v39;
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

        v32 = [v11 aceId];
        [v5 setObject:v11 forKey:v32];
        v33 = [v13 aceId];
        [v6 setObject:v32 forKey:v33];

        [v7 addObject:v13];
        goto LABEL_20;
      }

LABEL_21:
    }

    v46 = [v4 countByEnumeratingWithState:&v48 objects:v56 count:16];
  }

  while (v46);
LABEL_25:

  v34 = [[_SVXExpressionParsingModel alloc] initWithParseableExpressions:v7 aceViewIdByExpressionId:v6 aceViewByAceId:v5];
  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)parseAddViews:(id)a3 reply:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = MEMORY[0x277CEF098];
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[_SVXAddViewsExpressionParser parseAddViews:reply:]";
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s Looking for parseable expressions in command %@", buf, 0x16u);
    }

    v10 = [(_SVXAddViewsExpressionParser *)self _prepareParsingModelWithAddViews:v6];
    v11 = [v10 parseableExpressions];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [(_SVXExpressionParser *)self parsingService];
      v14 = [v10 parseableExpressions];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52___SVXAddViewsExpressionParser_parseAddViews_reply___block_invoke;
      v18[3] = &unk_279C67450;
      v18[4] = self;
      v19 = v6;
      v20 = v10;
      v21 = v7;
      [v13 parseExpressions:v14 targetDevice:0 reply:v18];
    }

    else
    {
      v15 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v23 = "[_SVXAddViewsExpressionParser parseAddViews:reply:]";
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s Found no parseable expressions in command %@", buf, 0x16u);
      }

      v16 = [v6 copy];
      (*(v7 + 2))(v7, 1, v16);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (_SVXAddViewsExpressionParser)initWithParsingService:(id)a3 preferences:(id)a4
{
  v9.receiver = self;
  v9.super_class = _SVXAddViewsExpressionParser;
  v4 = [(_SVXExpressionParser *)&v9 initWithParsingService:a3 preferences:a4];
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