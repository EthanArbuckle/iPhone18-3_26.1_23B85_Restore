@interface QLPreviewConverterParts
+ (void)registerPreview:(id)a3;
+ (void)unregisterPreview:(id)a3;
- (BOOL)isCancelled;
- (NSURLResponse)previewResponse;
- (id)delegate;
- (id)newAttachmentURLWithID:(id)a3 properties:(id)a4;
- (id)previewRequest;
- (id)safeRequestForRequest:(id)a3;
- (void)computePreviewInThread;
- (void)dealloc;
- (void)registerURL:(id)a3 mimeType:(id)a4 textEncoding:(id)a5;
- (void)setDelegate:(id)a3;
- (void)setError:(id)a3;
- (void)startComputingPreview;
- (void)startDataRepresentationWithContentType:(id)a3 properties:(id)a4;
@end

@implementation QLPreviewConverterParts

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = self;
    objc_sync_enter(v5);
    objc_storeWeak(&self->_delegate, obj);
    objc_sync_exit(v5);
  }
}

+ (void)registerPreview:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_sync_enter(v3);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v3 setRegisteredURLs:v4];

  v5 = [v3 fileName];
  v6 = [(QLPreviewURLProtocol *)QLPreviewConverterURLProtocol newUniqueURLWithName:v5];
  [v3 setPreviewURL:v6];

  v7 = MEMORY[0x277D43EF8];
  v8 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v8 = *v7;
  }

  v9 = v8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v3 previewURL];
    v11 = [v10 description];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_261653000, v9, OS_LOG_TYPE_DEFAULT, "%@ #Conversion", &v13, 0xCu);
  }

  [QLPreviewConverterURLProtocol registerPreview:v3];
  objc_sync_exit(v3);

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)unregisterPreview:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v3 previewURL];
    v8 = [v7 description];
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&dword_261653000, v6, OS_LOG_TYPE_DEFAULT, "%@ #Conversion", &v13, 0xCu);
  }

  v9 = v3;
  objc_sync_enter(v9);
  v10 = [v9 registeredURLs];
  [QLPreviewConverterURLProtocol unregisterURLs:v10 andPreview:v9];

  [v9 setRegisteredURLs:0];
  [v9 setPreviewURL:0];
  v11 = v9[15];
  v9[15] = 0;

  objc_sync_exit(v9);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(QLPreviewConverterParts *)self setUrl:0];
  [(QLPreviewConverterParts *)self setData:0];
  [(QLPreviewConverterParts *)self setFileName:0];
  [(QLPreviewConverterParts *)self setUti:0];
  [(QLPreviewConverterParts *)self setPassword:0];
  [(QLPreviewConverterParts *)self setConnection:0];
  [(QLPreviewConverterParts *)self setDelegate:0];
  delegateCallbackThread = self->delegateCallbackThread;
  self->delegateCallbackThread = 0;

  mainError = self->mainError;
  self->mainError = 0;

  v5.receiver = self;
  v5.super_class = QLPreviewConverterParts;
  [(QLPreviewParts *)&v5 dealloc];
}

- (id)safeRequestForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 URL];
  if ([v5 isFileURL])
  {
    v6 = [(QLPreviewParts *)self voidRequest];
    goto LABEL_14;
  }

  v7 = [v4 HTTPMethod];
  v8 = v7;
  if (!v7 || ![v7 caseInsensitiveCompare:@"get"])
  {
    v9 = [v5 scheme];
    v10 = [v9 lowercaseString];

    if ([v10 isEqual:@"about"])
    {
      v11 = v4;
    }

    else
    {
      if (([v10 isEqual:@"applewebdata"] & 1) == 0 && !objc_msgSend(v10, "isEqual:", @"data"))
      {
        v13 = self;
        objc_sync_enter(v13);
        v14 = [(QLPreviewParts *)v13 previewURL];

        if (!v14)
        {
          goto LABEL_23;
        }

        v15 = [(QLPreviewParts *)v13 previewURL];
        v16 = [v5 isEqual:v15];

        if (v16)
        {
          goto LABEL_19;
        }

        if (![objc_msgSend(objc_opt_class() "urlProtocolClass")])
        {
          goto LABEL_23;
        }

        v18 = [v5 host];
        v19 = [(QLPreviewParts *)v13 previewURL];
        v20 = [v19 host];
        v21 = [v18 isEqual:v20];

        if (v21 & 1) != 0 || (-[QLPreviewParts registeredURLs](v13, "registeredURLs"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 containsObject:v5], v22, (v23))
        {
LABEL_19:
          v17 = v4;
        }

        else
        {
LABEL_23:
          v17 = [(QLPreviewParts *)v13 voidRequest];
        }

        v6 = v17;
        objc_sync_exit(v13);

        goto LABEL_12;
      }

      v11 = [(QLPreviewParts *)self requestForURL:v5];
    }

    v6 = v11;
LABEL_12:

    goto LABEL_13;
  }

  v6 = [(QLPreviewParts *)self voidRequest];
LABEL_13:

LABEL_14:

  return v6;
}

- (void)startComputingPreview
{
  v3 = [MEMORY[0x277CCACC8] currentThread];
  delegateCallbackThread = self->delegateCallbackThread;
  self->delegateCallbackThread = v3;

  v5.receiver = self;
  v5.super_class = QLPreviewConverterParts;
  [(QLPreviewParts *)&v5 startComputingPreview];
}

- (void)computePreviewInThread
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(QLPreviewParts *)self setOutstandingURLs:v3];

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(QLPreviewParts *)self setEncodingsForURLs:v4];

  obj = self;
  objc_sync_enter(obj);
  v5 = [(QLPreviewParts *)obj previewURL];

  if (v5)
  {
    v6 = [(QLPreviewParts *)obj outstandingURLs];
    v7 = [(QLPreviewParts *)obj previewURL];
    [v6 addObject:v7];

    objc_sync_exit(obj);
    v8 = MEMORY[0x277D43EF8];
    v9 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261653000, v9, OS_LOG_TYPE_DEFAULT, "will compute preview #Conversion", buf, 2u);
    }

    if (![(QLPreviewConverterParts *)obj isCancelled])
    {
      [(QLPreviewConverterParts *)obj computePreview];
    }

    v10 = *v8;
    if (!*v8)
    {
      QLSInitLogging();
      v10 = *v8;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261653000, v10, OS_LOG_TYPE_DEFAULT, "did compute preview #Conversion", buf, 2u);
    }

    v11 = obj;
    data = obj->_data;
    if (data)
    {
      obj->_data = 0;

      v11 = obj;
    }

    if (v11->_url && v11->_shouldRemoveURLAfterGeneration)
    {
      v13 = [MEMORY[0x277CCAA00] defaultManager];
      v14 = *v8;
      if (!*v8)
      {
        QLSInitLogging();
        v14 = *v8;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        url = obj->_url;
        *buf = 138412290;
        v66 = url;
        _os_log_impl(&dword_261653000, v14, OS_LOG_TYPE_DEFAULT, "Deleting temporary file created for the conversion %@. #Conversion", buf, 0xCu);
      }

      v16 = obj->_url;
      v63 = 0;
      v17 = [v13 removeItemAtURL:v16 error:&v63];
      v18 = v63;
      if ((v17 & 1) == 0)
      {
        v19 = *v8;
        if (!*v8)
        {
          QLSInitLogging();
          v19 = *v8;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v66 = v18;
          _os_log_impl(&dword_261653000, v19, OS_LOG_TYPE_DEFAULT, "Problem deleting the temporary file for the preview converter (%@) #Conversion", buf, 0xCu);
        }
      }

      v20 = obj->_url;
      obj->_url = 0;

      v11 = obj;
    }

    v21 = [(QLPreviewConverterParts *)v11 htmlErrorDisabled];
    v22 = obj;
    objc_sync_enter(v22);
    v23 = [(QLPreviewParts *)v22 registeredURLs];
    v24 = [(QLPreviewParts *)v22 previewURL];
    v25 = [v23 containsObject:v24];

    v26 = v21 | v25;
    if ([(NSError *)v22->mainError code]== 4)
    {
      v27 = [(NSError *)v22->mainError domain];
      v28 = [v27 isEqualToString:@"QuickLookErrorDomain"];

      objc_sync_exit(v22);
      if ((v26 | v28))
      {
        goto LABEL_41;
      }
    }

    else
    {
      objc_sync_exit(v22);

      if (v26)
      {
LABEL_41:
        v40 = [(QLPreviewParts *)v22 outstandingURLs];
        v41 = [v40 count] == 0;

        if (!v41)
        {
          v42 = +[QLPreviewConverterURLProtocol _errorForNoPreview];
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          obja = [(QLPreviewParts *)v22 outstandingURLs];
          v43 = [obja countByEnumeratingWithState:&v59 objects:v64 count:16];
          if (v43)
          {
            v44 = *v60;
            do
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v60 != v44)
                {
                  objc_enumerationMutation(obja);
                }

                v46 = *(*(&v59 + 1) + 8 * i);
                v47 = [(QLPreviewParts *)v22 previewURL];
                v48 = [v46 isEqual:v47];

                if (v48)
                {
                  mainError = v22->mainError;
                  if (!mainError)
                  {
                    mainError = v42;
                  }

                  v50 = mainError;
                  [(QLPreviewURLProtocol *)QLPreviewConverterURLProtocol setError:v50 forURL:v46];
                  WeakRetained = objc_loadWeakRetained(&v22->_delegate);
                  v52 = objc_opt_respondsToSelector();

                  if (v52)
                  {
                    v53 = [[QLThreadInvoker alloc] initWithConnection:v22->_connection data:0 error:v50];
                    delegateCallbackThread = v22->delegateCallbackThread;
                    v55 = objc_loadWeakRetained(&v22->_delegate);
                    [(QLThreadInvoker *)v53 performSelector:sel_connectionDidFailWithError_ onThread:delegateCallbackThread withObject:v55 waitUntilDone:0];
                  }
                }

                else
                {
                  [(QLPreviewURLProtocol *)QLPreviewConverterURLProtocol setError:v42 forURL:v46];
                }
              }

              v43 = [obja countByEnumeratingWithState:&v59 objects:v64 count:16];
            }

            while (v43);
          }
        }

        [(QLPreviewParts *)v22 setOutstandingURLs:0];
        [(QLPreviewParts *)v22 setEncodingsForURLs:0];
        if (![(QLPreviewConverterParts *)v22 isCancelled])
        {
          v22->computed = 1;
        }

        v56 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    v30 = *v8;
    if (!*v8)
    {
      QLSInitLogging();
      v30 = *v8;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261653000, v30, OS_LOG_TYPE_DEFAULT, "Preview failed #Conversion", buf, 2u);
    }

    v31 = v22->mainError;
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = +[QLPreviewConverterURLProtocol _errorForNoPreview];
    }

    v33 = v32;
    v34 = [(NSError *)v32 localizedDescription];
    v35 = [(NSError *)v33 localizedRecoverySuggestion];
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"<html><meta name=viewport content=width=device-width, minimum-scale=1.0, maximum-scale=1.6><style type=text/css> div {font-family: Arialfont-size: 18;}</style><body><div align=center><br><b>%@</b></div><br><div align=center>%@</div></body></html>", v34, v35];;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"text/html", @"MimeType", @"UTF-8", @"TextEncoding", 0}];
    v38 = [*MEMORY[0x277CE1DA0] identifier];
    [(QLPreviewConverterParts *)v22 startDataRepresentationWithContentType:v38 properties:v37];

    v39 = [v36 dataUsingEncoding:4];
    [(QLPreviewConverterParts *)v22 appendData:v39 forURL:0 lastChunk:0];

    goto LABEL_41;
  }

  [(QLPreviewParts *)obj setOutstandingURLs:0];
  [(QLPreviewParts *)obj setEncodingsForURLs:0];
  objc_sync_exit(obj);
  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCancelled
{
  if (self->cancelled)
  {
    return 1;
  }

  v3 = [(QLPreviewParts *)self previewURL];
  v2 = v3 == 0;

  return v2;
}

- (void)registerURL:(id)a3 mimeType:(id)a4 textEncoding:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = QLPreviewConverterParts;
  [(QLPreviewParts *)&v13 registerURL:v8 mimeType:v9 textEncoding:a5];
  previewResponse = self->previewResponse;
  if (previewResponse)
  {
    v11 = [(NSURLResponse *)previewResponse URL];
    v12 = [v11 isEqual:v8];

    if (v12)
    {
      [(NSURLResponse *)self->previewResponse _setMIMEType:v9];
    }
  }
}

- (void)startDataRepresentationWithContentType:(id)a3 properties:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D43EF8];
  v8 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = v39;
    v51 = 2112;
    v52 = v6;
    _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_DEFAULT, "contentType = %@, properties = %@ #Conversion", buf, 0x16u);
  }

  v41 = v6;
  v9 = self;
  objc_sync_enter(v9);
  obj = v9;
  v10 = [(QLPreviewParts *)v9 previewURL];
  LOBYTE(v9) = v10 == 0;

  if ((v9 & 1) == 0)
  {
    v11 = 134217984;
    if (!v6)
    {
      v38 = 0;
      theString = 0;
      goto LABEL_24;
    }

    theString = [v6 objectForKey:@"TextEncoding"];
    if (theString)
    {
      v12 = CFStringConvertIANACharSetNameToEncoding(theString);
      if (v12 == -1)
      {
        v11 = 134217984;
      }

      else
      {
        v11 = v12;
      }
    }

    v38 = [v6 objectForKey:@"MimeType"];
    v13 = [v6 objectForKey:@"HTMLPageCount"];
    v14 = v13;
    if (v13)
    {
      obj->_pageCount = [v13 intValue];
    }

    v15 = [v6 objectForKey:@"Width"];

    if (v15)
    {
      [v15 floatValue];
    }

    else
    {
      v17 = [v6 objectForKey:@"HTMLWidth"];
      v15 = v17;
      if (!v17)
      {
LABEL_19:
        v18 = [v6 objectForKey:@"Height"];

        if (v18)
        {
          [v18 floatValue];
LABEL_23:
          obj->_pageHeight = v19;

          goto LABEL_24;
        }

        v20 = [v6 objectForKey:@"HTMLHeight"];
        v18 = v20;
        if (v20)
        {
          [v20 floatValue];
          goto LABEL_23;
        }

LABEL_24:
        v21 = [(QLPreviewParts *)obj encodingsForURLs];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
        v23 = [(QLPreviewParts *)obj previewURL];
        [v21 setObject:v22 forKey:v23];

        v24 = [(QLPreviewParts *)obj previewURL];
        [(QLPreviewConverterParts *)obj registerURL:v24 mimeType:v38 textEncoding:theString];

        [v6 objectForKey:@"Attachments"];
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v25 = v45 = 0u;
        v26 = [v25 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v26)
        {
          v42 = *v45;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v45 != v42)
              {
                objc_enumerationMutation(v25);
              }

              v28 = *(*(&v44 + 1) + 8 * i);
              v29 = [v25 objectForKey:v28];
              v30 = [v29 objectForKey:@"MimeType"];
              v31 = [v29 objectForKey:@"TextEncoding"];
              v32 = [v29 objectForKey:@"AttachmentData"];
              v33 = MEMORY[0x277CBEBC0];
              v34 = [(QLPreviewParts *)obj previewURL];
              v35 = [v33 URLWithString:v28 relativeToURL:v34];
              v36 = [v35 absoluteURL];

              if (v36)
              {
                [(QLPreviewConverterParts *)obj registerURL:v36 mimeType:v30 textEncoding:v31];
                [(QLPreviewURLProtocol *)QLPreviewConverterURLProtocol appendData:v32 forURL:v36 lastChunk:1];
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v44 objects:v48 count:16];
          }

          while (v26);
        }

        goto LABEL_34;
      }

      [v17 floatValue];
    }

    obj->_pageWidth = v16;
    goto LABEL_19;
  }

LABEL_34:
  objc_sync_exit(obj);

  v37 = *MEMORY[0x277D85DE8];
}

- (id)newAttachmentURLWithID:(id)a3 properties:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 objectForKey:@"TextEncoding"];
  v9 = [v6 objectForKey:@"MimeType"];

  v10 = [(QLPreviewParts *)self newAttachmentURLWithID:v7 mimeType:v9 textEncoding:v8];
  return v10;
}

- (void)setError:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  mainError = obj->mainError;
  obj->mainError = v4;

  objc_sync_exit(obj);
}

- (id)previewRequest
{
  v3 = objc_alloc(MEMORY[0x277CCAD20]);
  v4 = [(QLPreviewParts *)self previewURL];
  v5 = [v3 initWithURL:v4 cachePolicy:1 timeoutInterval:300.0];

  return v5;
}

- (NSURLResponse)previewResponse
{
  previewResponse = self->previewResponse;
  if (!previewResponse)
  {
    v4 = [(QLPreviewParts *)self previewURL];
    v5 = [(QLPreviewURLProtocol *)QLPreviewConverterURLProtocol mimeTypeForAttachmentURL:v4];

    if (!v5)
    {
      v5 = @"text/html";
    }

    v6 = objc_alloc(MEMORY[0x277CCAD28]);
    v7 = [(QLPreviewParts *)self previewURL];
    v8 = [v6 initWithURL:v7 MIMEType:v5 expectedContentLength:-1 textEncodingName:@"UTF-8"];
    v9 = self->previewResponse;
    self->previewResponse = v8;

    previewResponse = self->previewResponse;
  }

  return previewResponse;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end