@interface RUIParser
- (RUIParser)initWithBaseURL:(id)a3 style:(id)a4 delegate:(id)a5 decodingUserInfo:(id)a6;
- (RUIParser)initWithDelegate:(id)a3;
- (RUIParser)initWithXML:(id)a3 baseURL:(id)a4 style:(id)a5 delegate:(id)a6;
- (RUIParser)initWithXML:(id)a3 baseURL:(id)a4 style:(id)a5 delegate:(id)a6 decodingUserInfo:(id)a7;
- (RUIParserDelegate)delegate;
- (id)objectModelParser:(id)a3 createPageWithName:(id)a4 attributes:(id)a5;
- (id)parseXML:(id)a3;
- (void)parseObjectModelWithXMLElement:(id)a3;
@end

@implementation RUIParser

- (RUIParser)initWithXML:(id)a3 baseURL:(id)a4 style:(id)a5 delegate:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  v15 = [(RUIParser *)self initWithXML:v13 baseURL:v12 style:v11 delegate:v10 decodingUserInfo:v14];

  return v15;
}

- (RUIParser)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RUIParser;
  v5 = [(RUIParser *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (RUIParser)initWithBaseURL:(id)a3 style:(id)a4 delegate:(id)a5 decodingUserInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = RUIParser;
  v14 = [(RUIParser *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, v12);
    v16 = [[RUIObjectModelParser alloc] initWithBaseURL:v10 style:v11 delegate:v15 decodingUserInfo:v13];
    objectModelParser = v15->_objectModelParser;
    v15->_objectModelParser = v16;
  }

  return v15;
}

- (RUIParser)initWithXML:(id)a3 baseURL:(id)a4 style:(id)a5 delegate:(id)a6 decodingUserInfo:(id)a7
{
  v12 = a3;
  v13 = [(RUIParser *)self initWithBaseURL:a4 style:a5 delegate:a6 decodingUserInfo:a7];
  v14 = v13;
  if (v13)
  {
    v15 = [(RUIParser *)v13 parseXML:v12];
    [(RUIParser *)v14 parseObjectModelWithXMLElement:v15];
  }

  return v14;
}

- (void)parseObjectModelWithXMLElement:(id)a3
{
  [(RUIObjectModelParser *)self->_objectModelParser parseXMLElement:a3];
  v9 = [(RUIObjectModelParser *)self->_objectModelParser error];
  v4 = [(RUIObjectModelParser *)self->_objectModelParser uiObjectModel];
  error = self->_error;
  p_error = &self->_error;
  v5 = error;
  if (error)
  {
    v8 = v5;
  }

  else
  {
    v8 = v9;
  }

  objc_storeStrong(p_error, v8);
  *(p_error - 24) = *p_error == 0;
  [v4 parseDidFinish];
}

- (id)parseXML:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
  v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  if (![v7 length])
  {
    if (_isInternalInstall())
    {
      v8 = _RUILoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v8, OS_LOG_TYPE_DEFAULT, "Treating empty document as valid", buf, 2u);
      }
    }

    v9 = [@"<xmlui action=push/>" dataUsingEncoding:4];

    v4 = v9;
  }

  v10 = objc_alloc_init(RUIXMLSanitizer);
  v22 = 0;
  v11 = [(RUIXMLSanitizer *)v10 sanitizedXMLElementWithData:v4 error:&v22];
  v12 = v22;
  v21 = 0;
  v13 = [(RUIXMLSanitizer *)v10 logStringWithXMLString:v5 error:&v21];
  v14 = v21;
  if (v14)
  {
    v15 = _RUILoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(RUIParser *)v14 parseXML:v15];
    }

LABEL_10:

    goto LABEL_11;
  }

  if (_isInternalInstall())
  {
    v15 = _RUILoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&dword_21B93D000, v15, OS_LOG_TYPE_DEFAULT, "RUIParser processing document:\n%@", buf, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_11:
  if (v12)
  {
    error = self->_error;
    p_error = &self->_error;
    v16 = error;
    if (error)
    {
      v19 = v16;
    }

    else
    {
      v19 = v12;
    }

    objc_storeStrong(p_error, v19);
    *(p_error - 24) = 0;
  }

  return v11;
}

- (id)objectModelParser:(id)a3 createPageWithName:(id)a4 attributes:(id)a5
{
  v7 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = [v11 parser:self createPageWithName:v7 attributes:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (RUIParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)parseXML:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21B93D000, a2, OS_LOG_TYPE_ERROR, "RUIParser failed to decode string with error:%@", &v2, 0xCu);
}

@end