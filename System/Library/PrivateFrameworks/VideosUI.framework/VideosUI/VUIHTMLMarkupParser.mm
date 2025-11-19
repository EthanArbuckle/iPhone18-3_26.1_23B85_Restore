@interface VUIHTMLMarkupParser
+ (void)initialize;
- (VUIHTMLMarkupParser)delegate;
- (VUIHTMLMarkupParser)init;
- (VUIHTMLMarkupParser)initWithString:(id)a3;
- (void)parse;
- (void)reportErrorWithCode:(unint64_t)a3 userInfo:(id)a4;
- (void)reportParseError:(_xmlError *)a3;
@end

@implementation VUIHTMLMarkupParser

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    xmlInitParser();
  }

  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___VUIHTMLMarkupParser;
  objc_msgSendSuper2(&v3, sel_initialize);
}

- (VUIHTMLMarkupParser)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VUIHTMLMarkupParser;
  v5 = [(VUIHTMLMarkupParser *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    string = v5->_string;
    v5->_string = v6;
  }

  return v5;
}

- (VUIHTMLMarkupParser)init
{
  [(VUIHTMLMarkupParser *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)reportErrorWithCode:(unint64_t)a3 userInfo:(id)a4
{
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VideosUIFramework.HTMLMarkupParser.errorDomain" code:a3 userInfo:a4];
  v5 = [(VUIHTMLMarkupParser *)self delegate];
  [v5 parser:self parseErrorOccurred:v6];
}

- (void)reportParseError:(_xmlError *)a3
{
  if (a3->level == XML_ERR_FATAL)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:a3->line];
    [v9 setObject:v6 forKeyedSubscript:@"VideosUIFramework.HTMLMarkupParser.errorLineNumber"];

    v7 = [MEMORY[0x1E696AD98] numberWithInt:a3->int2];
    [v9 setObject:v7 forKeyedSubscript:@"VideosUIFramework.HTMLMarkupParser.errorColumn"];

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3->message];
    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    [(VUIHTMLMarkupParser *)self reportErrorWithCode:a3->code userInfo:v9];
  }
}

- (void)parse
{
  v3 = [(VUIHTMLMarkupParser *)self delegate];
  if (v3)
  {
    v4 = [(VUIHTMLMarkupParser *)self string];
    v5 = [v4 UTF8String];

    if (!v5 || (-[VUIHTMLMarkupParser string](self, "string"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 lengthOfBytesUsingEncoding:4], v6, v7 >> 31))
    {
      v8 = self;
      v9 = -101;
LABEL_5:
      [(VUIHTMLMarkupParser *)v8 reportErrorWithCode:v9 userInfo:0];
      goto LABEL_6;
    }

    MemoryParserCtxt = htmlCreateMemoryParserCtxt(v5, v7);
    if (!MemoryParserCtxt)
    {
      v8 = self;
      v9 = -100;
      goto LABEL_5;
    }

    v11 = MemoryParserCtxt;
    v28 = xmmword_1F5D50020;
    v29 = unk_1F5D50030;
    v30 = xmmword_1F5D50040;
    v31 = unk_1F5D50050;
    v24 = xmmword_1F5D4FFE0;
    v25 = unk_1F5D4FFF0;
    v26 = xmmword_1F5D50000;
    v27 = *&off_1F5D50010;
    v20 = xmmword_1F5D4FFA0;
    v21 = unk_1F5D4FFB0;
    v22 = xmmword_1F5D4FFC0;
    v23 = *&off_1F5D4FFD0;
    v16 = xmmword_1F5D4FF60;
    v17 = *algn_1F5D4FF70;
    v18 = xmmword_1F5D4FF80;
    v19 = unk_1F5D4FF90;
    sax = MemoryParserCtxt->sax;
    if (sax)
    {
      free(sax);
    }

    v11->sax = &v16;
    v11->userData = self;
    v11->encoding = "UTF-8";
    v11->charset = 1;
    htmlCtxtUseOptions(v11, 10305);
    [(VUIHTMLMarkupParser *)self set_parserContext:v11, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31];
    v13 = htmlParseDocument(v11);
    myDoc = v11->myDoc;
    if (myDoc)
    {
      xmlFreeDoc(myDoc);
    }

    if (v13)
    {
      LastError = xmlCtxtGetLastError([(VUIHTMLMarkupParser *)self _parserContext]);
      if (LastError)
      {
        [(VUIHTMLMarkupParser *)self reportParseError:LastError];
      }
    }

    v11->encoding = 0;
    v11->charset = 0;
    v11->sax = 0;
    v11->userData = 0;
    xmlFreeParserCtxt(v11);
    [(VUIHTMLMarkupParser *)self set_parserContext:0];
  }

LABEL_6:
}

- (VUIHTMLMarkupParser)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end