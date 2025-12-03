@interface REHTTPDebugServer
- (BOOL)_isReservedFilePath:(id)path;
- (REHTTPDebugServerDataSource)dataSource;
- (SEL)_serverMethod:(id)method;
- (id)_aboutPage;
- (id)_create404Element;
- (id)_createContentItemWithTitle:(id)title content:(id)content;
- (id)_enginesPage;
- (id)_landingPage;
- (id)_pageMap;
- (id)_radarLinkWithTitle:(id)title;
- (void)_availableEngineInstancesForProcess:(id)process completion:(id)completion;
- (void)_handleFileRequest:(id)request completion:(id)completion;
- (void)_loadAvailableEngines:(id)engines;
- (void)_loadEngineListWithRequest:(id)request completion:(id)completion;
- (void)_loadPageForReservedPath:(id)path completion:(id)completion;
- (void)httpServer:(id)server handleRequest:(id)request completion:(id)completion;
@end

@implementation REHTTPDebugServer

- (void)_loadAvailableEngines:(id)engines
{
  v81 = *MEMORY[0x277D85DE8];
  enginesCopy = engines;
  [(REHTTPDebugServer *)self setAvailableEngines:enginesCopy];
  array = [MEMORY[0x277CBEB18] array];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [(REHTTPDebugServer *)self _pageMap];
  v6 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
  selfCopy = self;
  v60 = array;
  v62 = enginesCopy;
  if (v6)
  {
    v7 = v6;
    v8 = *v75;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v75 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v74 + 1) + 8 * i);
        _pageMap = [(REHTTPDebugServer *)self _pageMap];
        v12 = [_pageMap objectForKeyedSubscript:v10];

        attributes = [v12 attributes];
        v14 = [attributes objectForKeyedSubscript:@"re-display-name"];
        v15 = v14;
        if (v14)
        {
          _pageTitle = v14;
        }

        else
        {
          _pageTitle = [(REHTTPDebugServer *)self _pageTitle];
        }

        v17 = _pageTitle;

        _pageTitle2 = [(REHTTPDebugServer *)self _pageTitle];
        v19 = [v17 isEqualToString:_pageTitle2];

        if (v19)
        {
          v21 = [REHTMLPageNavigationLink alloc];
          v22 = [@"/" stringByAppendingPathComponent:v10];
          v20 = [(REHTMLPageNavigationLink *)v21 initWithLocation:v22 title:v17];

          array = v60;
          [v60 addObject:v20];

          self = selfCopy;
          goto LABEL_14;
        }

        self = selfCopy;
      }

      v7 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v20 = 0;
    array = v60;
LABEL_14:
    enginesCopy = v62;
  }

  else
  {
    v20 = 0;
  }

  if ([enginesCopy count])
  {
    v23 = [enginesCopy sortedArrayUsingComparator:&__block_literal_global_28];

    v24 = [REHTMLPageNavigationLink alloc];
    processName = [(REHTTPDebugServer *)self processName];
    v26 = processName;
    if (processName)
    {
      v27 = processName;
    }

    else
    {
      v27 = &stru_283B97458;
    }

    v28 = [(REHTMLPageNavigationLink *)v24 initWithLocation:&stru_283B97458 title:v27, v60];
    [array addObject:v28];

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v29 = v23;
    v30 = [v29 countByEnumeratingWithState:&v70 objects:v79 count:16];
    v62 = v29;
    if (v30)
    {
      v31 = v30;
      v32 = *v71;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v71 != v32)
          {
            objc_enumerationMutation(v62);
          }

          v34 = *(*(&v70 + 1) + 8 * j);
          v35 = [REHTMLPageNavigationLink alloc];
          v36 = [v34 stringByAppendingPathComponent:@"/"];
          v37 = [@"/" stringByAppendingPathComponent:v36];
          v38 = [(REHTMLPageNavigationLink *)v35 initWithLocation:v37 title:v34];

          [array addObject:v38];
        }

        v29 = v62;
        v31 = [v62 countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v31);
    }

    self = selfCopy;
  }

  array2 = [MEMORY[0x277CBEB18] array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obja = [(REHTTPDebugServer *)self _pageMap];
  v40 = [obja countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v67;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v67 != v42)
        {
          objc_enumerationMutation(obja);
        }

        v44 = *(*(&v66 + 1) + 8 * k);
        if (v20)
        {
          location = [(REHTMLPageNavigationLink *)v20 location];
          lastPathComponent = [location lastPathComponent];
          v47 = [v44 isEqualToString:lastPathComponent];

          if (v47)
          {
            continue;
          }
        }

        _pageMap2 = [(REHTTPDebugServer *)selfCopy _pageMap];
        v49 = [_pageMap2 objectForKeyedSubscript:v44];

        attributes2 = [v49 attributes];
        v51 = [attributes2 objectForKeyedSubscript:@"re-display-name"];
        v52 = v51;
        if (v51)
        {
          _pageTitle3 = v51;
        }

        else
        {
          _pageTitle3 = [(REHTTPDebugServer *)selfCopy _pageTitle];
        }

        v54 = _pageTitle3;

        v55 = [REHTMLPageNavigationLink alloc];
        v56 = [@"/" stringByAppendingPathComponent:v44];
        v57 = [(REHTMLPageNavigationLink *)v55 initWithLocation:v56 title:v54];

        [array2 addObject:v57];
      }

      v41 = [obja countByEnumeratingWithState:&v66 objects:v78 count:16];
    }

    while (v41);
  }

  if ([array2 count])
  {
    [array2 sortUsingComparator:&__block_literal_global_36_0];
    v58 = [[REHTMLPageNavigationLink alloc] initWithLocation:&stru_283B97458 title:&stru_283B97458];
    [v61 addObject:v58];

    [v61 addObjectsFromArray:array2];
  }

  [(REHTMLPageBuilder *)selfCopy->_pageBuilder setLinks:v61];

  v59 = *MEMORY[0x277D85DE8];
}

uint64_t __43__REHTTPDebugServer__loadAvailableEngines___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];

  v7 = [v5 compare:v6 options:1];
  return v7;
}

- (id)_createContentItemWithTitle:(id)title content:(id)content
{
  titleCopy = title;
  contentCopy = content;
  if (titleCopy)
  {
    v7 = +[REHTMLElement div];
    v8 = [v7 elementByAddingClass:@"section"];

    v9 = [REHTMLElement elementWithHTMLString:titleCopy];
    v10 = [v8 addChild:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = +[REHTMLElement div];
  v12 = [v11 elementByAddingClass:@"content-item"];

  if (v10)
  {
    v13 = [v12 addChild:v10];

    v12 = v13;
  }

  if (contentCopy)
  {
    v14 = [v12 addChild:contentCopy];

    v12 = v14;
  }

  return v12;
}

- (id)_create404Element
{
  v3 = [REHTMLElement elementWithHTMLString:@"<br><div style=display: inline-block text-align: center; font-size: 300%; width: 100%;>👻</div><br><br>"];;
  v4 = [(REHTTPDebugServer *)self _createContentItemWithTitle:@"Page not found — 404" content:v3];
  pageBuilder = self->_pageBuilder;
  _pageTitle = [(REHTTPDebugServer *)self _pageTitle];
  v7 = [(REHTMLPageBuilder *)pageBuilder pageWithTitle:_pageTitle content:v4 backLocation:0];

  return v7;
}

- (void)_handleFileRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v8 = WeakRetained;
    if (WeakRetained && (*&self->_dataSourceCallbacks & 2) != 0)
    {
      [WeakRetained debugServer:self processName:self->_processName handleFileRequest:requestCopy completion:completionCopy];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)_availableEngineInstancesForProcess:(id)process completion:(id)completion
{
  processCopy = process;
  completionCopy = completion;
  if (completionCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v8 = WeakRetained;
    if (WeakRetained && (*&self->_dataSourceCallbacks & 1) != 0)
    {
      [WeakRetained debugServer:self availableEngineInstancesForProcess:processCopy completion:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, MEMORY[0x277CBEBF8]);
    }
  }
}

- (void)httpServer:(id)server handleRequest:(id)request completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v9 = MEMORY[0x277CCACE0];
  v10 = [requestCopy url];
  v11 = [v9 componentsWithURL:v10 resolvingAgainstBaseURL:0];

  [v11 setQuery:0];
  path = [v11 path];
  if (path)
  {
    v13 = path;
    v14 = [requestCopy url];
    hasDirectoryPath = [v14 hasDirectoryPath];

    if (hasDirectoryPath)
    {
      v16 = [(__CFString *)v13 stringByAppendingPathComponent:@"index.html"];

      v13 = v16;
    }
  }

  else
  {
    v13 = @"index.html";
  }

  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __57__REHTTPDebugServer_httpServer_handleRequest_completion___block_invoke;
  v34 = &unk_2785FBC50;
  v17 = v13;
  v35 = v17;
  v18 = requestCopy;
  v36 = v18;
  selfCopy = self;
  v19 = completionCopy;
  v38 = v19;
  v20 = MEMORY[0x22AABC5E0](&v31);
  v21 = [(REHTTPDebugServer *)self _serverMethod:v17, v31, v32, v33, v34];
  if (v21)
  {
    v22 = v21;
    v23 = RELogForDomain(21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = NSStringFromSelector(v22);
      *buf = 138412290;
      v40 = v24;
      _os_log_impl(&dword_22859F000, v23, OS_LOG_TYPE_INFO, "Handling server request with method %@", buf, 0xCu);
    }

    v25 = MEMORY[0x22AABC5E0](v19);
    [(REHTTPDebugServer *)self performSelector:v22 withObject:v18 withObject:v25];
  }

  else if ([(REHTTPDebugServer *)self _isReservedFilePath:v17])
  {
    [(REHTTPDebugServer *)self _loadPageForReservedPath:v17 completion:v20];
  }

  else
  {
    v26 = [(REHTTPFileCache *)self->_cache loadFileAtPath:v17];
    v27 = [v18 url];
    path2 = [v27 path];

    if (v26)
    {
      v29 = [v18 responseWithStatusCode:200];
      [v29 setBody:v26];
      (*(v19 + 2))(v19, v29);
    }

    else
    {
      [(REHTTPDebugServer *)self _handleFileRequest:path2 completion:v20];
    }

    v17 = path2;
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __57__REHTTPDebugServer_httpServer_handleRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [*(a1 + 32) stringByDeletingLastPathComponent];
    v7 = [*(a1 + 40) responseWithStatusCode:200];
    v8 = [*(*(a1 + 48) + 16) pageWithTitle:v5 content:v10 backLocation:v6];
    v9 = [v8 encodedData];
    [v7 setBody:v9];
  }

  else
  {
    v7 = [*(a1 + 40) responseWithStatusCode:404];
    v6 = [*(a1 + 48) _create404Element];
    v8 = [v6 encodedData];
    [v7 setBody:v8];
  }

  (*(*(a1 + 56) + 16))();
}

- (id)_pageMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__REHTTPDebugServer__pageMap__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  if (_pageMap_onceToken != -1)
  {
    dispatch_once(&_pageMap_onceToken, block);
  }

  return _pageMap_PageMap;
}

void __29__REHTTPDebugServer__pageMap__block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"index.html";
  v2 = [*(a1 + 32) _landingPage];
  v9[0] = v2;
  v8[1] = @"about.html";
  v3 = [*(a1 + 32) _aboutPage];
  v9[1] = v3;
  v8[2] = @"engines.html";
  v4 = [*(a1 + 32) _enginesPage];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v6 = _pageMap_PageMap;
  _pageMap_PageMap = v5;

  v7 = *MEMORY[0x277D85DE8];
}

- (SEL)_serverMethod:(id)method
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__REHTTPDebugServer__serverMethod___block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  v3 = _serverMethod__onceToken;
  methodCopy = method;
  if (v3 != -1)
  {
    dispatch_once(&_serverMethod__onceToken, block);
  }

  v5 = [@"/" stringByAppendingPathComponent:methodCopy];

  v6 = [_serverMethod__MethodMap objectForKey:v5];
  return v6;
}

void __35__REHTTPDebugServer__serverMethod___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:256];
  v3 = [*(a1 + 32) _engineList];
  [v2 setObject:sel__loadEngineListWithRequest_completion_ forKey:v3];

  v4 = _serverMethod__MethodMap;
  _serverMethod__MethodMap = v2;
}

- (BOOL)_isReservedFilePath:(id)path
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__REHTTPDebugServer__isReservedFilePath___block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  v3 = _isReservedFilePath__onceToken;
  pathCopy = path;
  if (v3 != -1)
  {
    dispatch_once(&_isReservedFilePath__onceToken, block);
  }

  v5 = [@"/" stringByAppendingPathComponent:pathCopy];

  v6 = [_isReservedFilePath__Paths containsObject:v5];
  return v6;
}

void __41__REHTTPDebugServer__isReservedFilePath___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) _pageMap];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [@"/" stringByAppendingPathComponent:*(*(&v13 + 1) + 8 * v7)];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 32) _landPageFileName];
  [v2 addObject:v9];

  v10 = [v2 copy];
  v11 = _isReservedFilePath__Paths;
  _isReservedFilePath__Paths = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_loadPageForReservedPath:(id)path completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  lastPathComponent = [path lastPathComponent];
  v8 = RELogForDomain(21);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = lastPathComponent;
    _os_log_impl(&dword_22859F000, v8, OS_LOG_TYPE_INFO, "Vending system page %@", &v14, 0xCu);
  }

  _pageMap = [(REHTTPDebugServer *)self _pageMap];
  v10 = [_pageMap objectForKeyedSubscript:lastPathComponent];

  attributes = [v10 attributes];
  v12 = [attributes objectForKeyedSubscript:@"re-display-name"];

  completionCopy[2](completionCopy, v10, v12);
  v13 = *MEMORY[0x277D85DE8];
}

- (id)_radarLinkWithTitle:(id)title
{
  titleCopy = title;
  if (![(__CFString *)titleCopy length])
  {

    titleCopy = @"Relevance Engine | 2.0";
  }

  v4 = [REHTMLElement link:@"rdar://new/problem/component=Relevance%20Engine&version=2.0" title:titleCopy];

  return v4;
}

- (id)_enginesPage
{
  v2 = [(REHTTPFileCache *)self->_cache loadFileAtPath:@"/engines.html"];
  v3 = +[REHTMLElement div];
  v4 = [REHTMLElement elementWithHTMLData:v2];
  v5 = [v3 addChild:v4];

  v6 = [v5 elementByAddingAtttibute:@"re-display-name" value:@"Select Process"];

  return v6;
}

- (id)_landingPage
{
  _landPageFileName = [(REHTTPDebugServer *)self _landPageFileName];
  v4 = [(REHTTPFileCache *)self->_cache loadFileAtPath:_landPageFileName];
  v5 = [REHTMLElement elementWithHTMLData:v4];

  return v5;
}

- (id)_aboutPage
{
  v3 = [REHTMLElement htmlElementWithTag:@"p" content:@"This tool allows introspecting state of Relevance Engine and provides a set of tools for debugging."];
  v4 = [REHTMLElement htmlElementWithTag:@"p" content:@"File any bugs against "];
  v5 = [(REHTTPDebugServer *)self _radarLinkWithTitle:0];
  v6 = [v4 addChild:v5];

  v7 = [v3 append:v6];
  v8 = [(REHTTPDebugServer *)self _createContentItemWithTitle:0 content:v7];

  v9 = [v8 elementByAddingAtttibute:@"re-display-name" value:@"About"];

  return v9;
}

- (void)_loadEngineListWithRequest:(id)request completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__12;
    v38 = __Block_byref_object_dispose__12;
    v39 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __59__REHTTPDebugServer__loadEngineListWithRequest_completion___block_invoke;
    v30[3] = &unk_2785FBC78;
    v30[4] = self;
    v33 = &v34;
    v7 = requestCopy;
    v31 = v7;
    v32 = completionCopy;
    v23 = MEMORY[0x22AABC5E0](v30);
    v8 = MEMORY[0x277CCACE0];
    v9 = [v7 url];
    v24 = [v8 componentsWithURL:v9 resolvingAgainstBaseURL:0];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    queryItems = [v24 queryItems];
    v11 = [queryItems countByEnumeratingWithState:&v26 objects:v42 count:16];
    if (v11)
    {
      v12 = *v27;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(queryItems);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          name = [v14 name];
          v16 = [name isEqualToString:@"engine"];

          if (v16)
          {
            value = [v14 value];
            v19 = v35[5];
            v35[5] = value;

            v20 = RELogForDomain(21);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = v35[5];
              *buf = 138412290;
              v41 = v21;
              _os_log_impl(&dword_22859F000, v20, OS_LOG_TYPE_INFO, "Vending engines for process %@", buf, 0xCu);
            }

            [(REHTTPDebugServer *)self _availableEngineInstancesForProcess:v35[5] completion:v23];
            goto LABEL_16;
          }
        }

        v11 = [queryItems countByEnumeratingWithState:&v26 objects:v42 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = RELogForDomain(21);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22859F000, v17, OS_LOG_TYPE_INFO, "Unable to load engines for process", buf, 2u);
    }

    v23[2](v23, MEMORY[0x277CBEBF8]);
LABEL_16:

    _Block_object_dispose(&v34, 8);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __59__REHTTPDebugServer__loadEngineListWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:2 error:0];
    [*(a1 + 32) setProcessName:*(*(*(a1 + 56) + 8) + 40)];
    [*(a1 + 32) _loadAvailableEngines:v6];
    if (v4)
    {
      v5 = [*(a1 + 40) responseWithStatusCode:200];
      [v5 setBody:v4];

      goto LABEL_6;
    }
  }

  else
  {
    [*(a1 + 32) setProcessName:0];
    [*(a1 + 32) _loadAvailableEngines:MEMORY[0x277CBEBF8]];
  }

  v5 = [*(a1 + 40) responseWithStatusCode:500];
LABEL_6:
  (*(*(a1 + 48) + 16))();
}

- (REHTTPDebugServerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end