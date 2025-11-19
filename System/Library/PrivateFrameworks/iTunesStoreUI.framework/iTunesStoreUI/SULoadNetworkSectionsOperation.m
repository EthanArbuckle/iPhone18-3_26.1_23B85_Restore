@interface SULoadNetworkSectionsOperation
- (BOOL)_loadArtworkForResponse:(id)a3;
- (ISStoreURLOperation)baseOperation;
- (NSString)expectedVersionString;
- (SULoadNetworkSectionsOperation)initWithURL:(id)a3 clientInterface:(id)a4;
- (SUSectionsResponse)sectionsResponse;
- (id)_bestItemImageForImages:(id)a3 withImageKind:(id)a4;
- (id)_copyImageWithURL:(id)a3 scale:(float)a4 error:(id *)a5;
- (id)_copyLoadedItemImage:(id)a3 error:(id *)a4;
- (void)_setSectionsResponse:(id)a3;
- (void)dealloc;
- (void)run;
- (void)setBaseOperation:(id)a3;
- (void)setExpectedVersionString:(id)a3;
@end

@implementation SULoadNetworkSectionsOperation

- (SULoadNetworkSectionsOperation)initWithURL:(id)a3 clientInterface:(id)a4
{
  v6 = [(SULoadNetworkSectionsOperation *)self init];
  if (v6)
  {
    v6->_clientInterface = a4;
    if (a3)
    {
      v7 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:a3];
      v8 = objc_alloc_init(MEMORY[0x1E69E47E0]);
      v6->_baseOperation = v8;
      [(ISStoreURLOperation *)v8 setTracksPerformanceMetrics:SSDebugShouldTrackPerformance()];
      [(ISStoreURLOperation *)v6->_baseOperation setRequestProperties:v7];
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SULoadNetworkSectionsOperation;
  [(SULoadNetworkSectionsOperation *)&v3 dealloc];
}

- (ISStoreURLOperation)baseOperation
{
  [(SULoadNetworkSectionsOperation *)self lock];
  v3 = self->_baseOperation;
  [(SULoadNetworkSectionsOperation *)self unlock];
  return v3;
}

- (NSString)expectedVersionString
{
  [(SULoadNetworkSectionsOperation *)self lock];
  v3 = self->_expectedVersionString;
  [(SULoadNetworkSectionsOperation *)self unlock];
  return v3;
}

- (SUSectionsResponse)sectionsResponse
{
  [(SULoadNetworkSectionsOperation *)self lock];
  v3 = self->_sectionsResponse;
  [(SULoadNetworkSectionsOperation *)self unlock];
  return v3;
}

- (void)setBaseOperation:(id)a3
{
  [(SULoadNetworkSectionsOperation *)self lock];
  baseOperation = self->_baseOperation;
  if (baseOperation != a3)
  {

    self->_baseOperation = a3;
  }

  [(SULoadNetworkSectionsOperation *)self unlock];
}

- (void)setExpectedVersionString:(id)a3
{
  [(SULoadNetworkSectionsOperation *)self lock];
  expectedVersionString = self->_expectedVersionString;
  if (expectedVersionString != a3)
  {

    self->_expectedVersionString = a3;
  }

  [(SULoadNetworkSectionsOperation *)self unlock];
}

- (void)run
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = self->_baseOperation;
  v4 = objc_alloc_init(MEMORY[0x1E69E47B8]);
  [(ISStoreURLOperation *)v3 setDataProvider:v4];
  v5 = [-[ISStoreURLOperation requestProperties](v3 "requestProperties")];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{-[SULoadNetworkSectionsOperation expectedVersionString](self, "expectedVersionString"), @"version", 0}];
  [v5 setCachePolicy:1];
  [v5 setRequestParameters:v6];
  [(ISStoreURLOperation *)v3 setRequestProperties:v5];

  v18 = 0;
  if (([(SULoadNetworkSectionsOperation *)self runSubOperation:v3 returningError:&v18]& 1) != 0)
  {
    v7 = -[SUSectionsResponse initWithClientInterface:sectionsDictionary:responseType:]([SUSectionsResponse alloc], "initWithClientInterface:sectionsDictionary:responseType:", self->_clientInterface, [v4 output], 1);
    v8 = [(SULoadNetworkSectionsOperation *)self _loadArtworkForResponse:v7];
    if (v8)
    {
      [(SUSectionsResponse *)v7 dropEmbeddedImages];
    }

    else
    {
      v9 = [MEMORY[0x1E69D4938] sharedConfig];
      v10 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = v10 | 2;
      }

      else
      {
        v11 = v10;
      }

      if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v12 = objc_opt_class();
        v19 = 138412290;
        v20 = v12;
        LODWORD(v17) = 12;
        v16 = &v19;
        v13 = _os_log_send_and_compose_impl();
        if (v13)
        {
          v14 = v13;
          v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v19, v17}];
          free(v14);
          v16 = v15;
          SSFileLog();
        }
      }
    }

    [(SUSectionsResponse *)v7 setCacheable:v8, v16];
    -[SUSectionsResponse setStoreFrontIdentifier:](v7, "setStoreFrontIdentifier:", [objc_msgSend(MEMORY[0x1E69D48B0] "currentDevice")]);
    [(SULoadNetworkSectionsOperation *)self _setSectionsResponse:v7];
    [(SULoadNetworkSectionsOperation *)self setSuccess:1];
  }

  else
  {
    [(SULoadNetworkSectionsOperation *)self setError:v18];
  }
}

- (id)_bestItemImageForImages:(id)a3 withImageKind:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v7 = v6;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v23;
  v12 = 1.79769313e308;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(a3);
      }

      v14 = *(*(&v22 + 1) + 8 * i);
      [v14 imageScale];
      v16 = v15;
      v17 = [objc_msgSend(v14 "imageKind")];
      v18 = vabdd_f64(v16, v7);
      v19 = vabdd_f64(v12, v7);
      if (v17)
      {
        v20 = v18 < v19;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        v12 = v16;
        v10 = v14;
      }
    }

    v9 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:{16, v18}];
  }

  while (v9);
  return v10;
}

- (id)_copyImageWithURL:(id)a3 scale:(float)a4 error:(id *)a5
{
  v15 = 0;
  if ([objc_msgSend(a3 "scheme")])
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:0 error:&v15];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v9 scale:a4];
      if (!a5)
      {
        return v10;
      }
    }

    else
    {
      v10 = 0;
      if (!a5)
      {
        return v10;
      }
    }

    goto LABEL_9;
  }

  v11 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  v12 = objc_alloc_init(SUImageDataProvider);
  [(SUImageDataProvider *)v12 setInputImageScale:a4];
  [v11 setDataProvider:v12];
  v13 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:a3];
  [v13 setCachePolicy:1];
  [v11 setRequestProperties:v13];

  if (([(SULoadNetworkSectionsOperation *)self runSubOperation:v11 returningError:&v15]& 1) != 0)
  {
    v10 = [(ISDataProvider *)v12 output];
  }

  else
  {
    [(SULoadNetworkSectionsOperation *)self setError:v15];
    v10 = 0;
  }

  if (a5)
  {
LABEL_9:
    *a5 = v15;
  }

  return v10;
}

- (id)_copyLoadedItemImage:(id)a3 error:(id *)a4
{
  v7 = [a3 URL];
  [a3 imageScale];
  *&v8 = v8;

  return [(SULoadNetworkSectionsOperation *)self _copyImageWithURL:v7 scale:a4 error:v8];
}

- (BOOL)_loadArtworkForResponse:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [a3 allSections];
  v66 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v66)
  {
    v64 = *MEMORY[0x1E69D4CA8];
    v65 = *v76;
    v62 = *MEMORY[0x1E69D4CB0];
    v63 = *MEMORY[0x1E69D4CC0];
    v61 = *MEMORY[0x1E69D4CB8];
    v59 = 1;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v76 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v75 + 1) + 8 * i);
        v6 = -[SULoadNetworkSectionsOperation _bestItemImageForImages:withImageKind:](self, "_bestItemImageForImages:withImageKind:", [v5 itemImages], v64);
        if (v6)
        {
          v7 = [(SULoadNetworkSectionsOperation *)self _copyLoadedItemImage:v6 error:0];
          v8 = v7 != 0;
          [v5 setImage:v7];
        }

        else
        {
          v8 = 1;
        }

        v9 = -[SULoadNetworkSectionsOperation _bestItemImageForImages:withImageKind:](self, "_bestItemImageForImages:withImageKind:", [v5 itemImages], v63);
        if (v9)
        {
          v10 = [(SULoadNetworkSectionsOperation *)self _copyLoadedItemImage:v9 error:0];
          if (!v10)
          {
            v8 = 0;
          }

          [v5 setSelectedImage:v10];
        }

        v11 = -[SULoadNetworkSectionsOperation _bestItemImageForImages:withImageKind:](self, "_bestItemImageForImages:withImageKind:", [v5 itemImages], v62);
        if (v11)
        {
          v12 = [(SULoadNetworkSectionsOperation *)self _copyLoadedItemImage:v11 error:0];
          if (!v12)
          {
            v8 = 0;
          }

          [v5 setMoreListImage:v12];
        }

        v13 = -[SULoadNetworkSectionsOperation _bestItemImageForImages:withImageKind:](self, "_bestItemImageForImages:withImageKind:", [v5 itemImages], v61);
        if (v13)
        {
          v14 = [(SULoadNetworkSectionsOperation *)self _copyLoadedItemImage:v13 error:0];
          if (!v14)
          {
            v8 = 0;
          }

          [v5 setSelectedMoreListImage:v14];
        }

        v15 = [v5 leftSectionButtons];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v71 objects:v84 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v72;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v72 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v71 + 1) + 8 * j);
              v21 = [v20 imageURL];
              if (v21)
              {
                v22 = v21;
                [v20 imageURLScale];
                v23 = [(SULoadNetworkSectionsOperation *)self _copyImageWithURL:v22 scale:0 error:?];
                v8 &= v23 != 0;
                [v5 setSectionButtonImage:v23 forTag:{objc_msgSend(v20, "tag")}];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v71 objects:v84 count:16];
          }

          while (v17);
        }

        v24 = [v5 rightSectionButtons];
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v25 = [v24 countByEnumeratingWithState:&v67 objects:v83 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v68;
          do
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v68 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v67 + 1) + 8 * k);
              v30 = [v29 imageURL];
              if (v30)
              {
                v31 = v30;
                [v29 imageURLScale];
                v32 = [(SULoadNetworkSectionsOperation *)self _copyImageWithURL:v31 scale:0 error:?];
                v8 &= v32 != 0;
                [v5 setSectionButtonImage:v32 forTag:{objc_msgSend(v29, "tag")}];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v67 objects:v83 count:16];
          }

          while (v26);
        }

        if ((v8 & 1) == 0)
        {
          v33 = [MEMORY[0x1E69D4938] sharedConfig];
          v34 = [v33 shouldLog];
          if ([v33 shouldLogToDisk])
          {
            v34 |= 2u;
          }

          if (!os_log_type_enabled([v33 OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v34 &= 2u;
          }

          if (v34)
          {
            v35 = objc_opt_class();
            v79 = 138412546;
            v80 = v35;
            v81 = 2112;
            v82 = v5;
            LODWORD(v57) = 22;
            v56 = &v79;
            v36 = _os_log_send_and_compose_impl();
            if (v36)
            {
              v37 = v36;
              v38 = [MEMORY[0x1E696AEC0] stringWithCString:v36 encoding:{4, &v79, v57}];
              free(v37);
              v56 = v38;
              SSFileLog();
            }
          }

          v59 = 0;
        }
      }

      v66 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v66);
  }

  else
  {
    v59 = 1;
  }

  v39 = [objc_msgSend(a3 moreListImageCollection];
  if (![v39 count])
  {
    return v59;
  }

  v40 = [(SULoadNetworkSectionsOperation *)self _bestItemImageForImages:v39 withImageKind:*MEMORY[0x1E69D4CA8]];
  if (!v40)
  {
    v45 = [(SULoadNetworkSectionsOperation *)self _bestItemImageForImages:v39 withImageKind:*MEMORY[0x1E69D4CC0]];
    if (v45)
    {
      v44 = v45;
      v42 = 1;
LABEL_58:
      v46 = [(SULoadNetworkSectionsOperation *)self _copyLoadedItemImage:v44 error:0];
      [a3 setMoreListSelectedImage:v46];

      v47 = !v42 || v46 == 0;
      v48 = v59;
      if (!v47)
      {
        return v48;
      }

      goto LABEL_65;
    }

    return v59;
  }

  v41 = [(SULoadNetworkSectionsOperation *)self _copyLoadedItemImage:v40 error:0];
  v42 = v41 != 0;
  [a3 setMoreListImage:v41];

  v43 = [(SULoadNetworkSectionsOperation *)self _bestItemImageForImages:v39 withImageKind:*MEMORY[0x1E69D4CC0]];
  if (v43)
  {
    v44 = v43;
    goto LABEL_58;
  }

  v48 = v59;
  if (v41)
  {
    return v48;
  }

LABEL_65:
  v49 = [MEMORY[0x1E69D4938] sharedConfig];
  v50 = [v49 shouldLog];
  if ([v49 shouldLogToDisk])
  {
    v51 = v50 | 2;
  }

  else
  {
    v51 = v50;
  }

  if (!os_log_type_enabled([v49 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v51 &= 2u;
  }

  if (v51)
  {
    v52 = objc_opt_class();
    v79 = 138412290;
    v80 = v52;
    LODWORD(v57) = 12;
    v53 = _os_log_send_and_compose_impl();
    if (v53)
    {
      v54 = v53;
      [MEMORY[0x1E696AEC0] stringWithCString:v53 encoding:{4, &v79, v57}];
      free(v54);
      SSFileLog();
    }
  }

  return 0;
}

- (void)_setSectionsResponse:(id)a3
{
  [(SULoadNetworkSectionsOperation *)self lock];
  sectionsResponse = self->_sectionsResponse;
  if (sectionsResponse != a3)
  {

    self->_sectionsResponse = a3;
  }

  [(SULoadNetworkSectionsOperation *)self unlock];
}

@end