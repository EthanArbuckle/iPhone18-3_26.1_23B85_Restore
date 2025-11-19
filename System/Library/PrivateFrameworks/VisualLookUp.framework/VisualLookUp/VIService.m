@interface VIService
- (CGSize)targetImageSizeForInputImageSize:(CGSize)a3;
- (VIService)init;
- (VIService)initWithNetworkTimeoutInterval:(int64_t)a3;
- (VIService)initWithTrialOverrideType:(id)a3 namespaces:(id)a4 factors:(id)a5 values:(id)a6;
- (id)encryptedSearchWithParsedVisualQuery:(id)a3 domain:(id)a4 completion:(id)a5;
- (id)getEncryptedSearchDomainsWithVisualQuery:(id)a3 cachedResults:(id)a4 completion:(id)a5;
- (id)lookupTextWithQuery:(id)a3 completion:(id)a4;
- (id)newStreamingSession;
- (id)ontologyGraph;
- (id)parseForENLabelWithVisualQuery:(id)a3 cachedResults:(id)a4 domains:(id)a5 completion:(id)a6;
- (id)parseWithVisualQuery:(id)a3 cachedResults:(id)a4 completion:(id)a5;
- (id)parseWithVisualQuery:(id)a3 completion:(id)a4;
- (id)pegasusPayloadWithParsedVisualQuery:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)searchWithParsedVisualQuery:(id)a3 completion:(id)a4;
- (id)searchWithVisualQuery:(id)a3 completion:(id)a4;
- (void)checkEncryptedSearchProxyEnabledWithCompletion:(id)a3;
@end

@implementation VIService

- (VIService)init
{
  v8.receiver = self;
  v8.super_class = VIService;
  v2 = [(VIService *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    compatService = v2->_compatService;
    v2->_compatService = v3;

    v5 = objc_opt_new();
    textLookupFlow = v2->_textLookupFlow;
    v2->_textLookupFlow = v5;
  }

  return v2;
}

- (VIService)initWithNetworkTimeoutInterval:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = VIService;
  v4 = [(VIService *)&v10 init];
  if (v4)
  {
    v5 = [[_TtC12VisualLookUp35VisualIntelligenceServiceCompatible alloc] initWithTimeoutInterval:a3];
    compatService = v4->_compatService;
    v4->_compatService = v5;

    v7 = objc_opt_new();
    textLookupFlow = v4->_textLookupFlow;
    v4->_textLookupFlow = v7;
  }

  return v4;
}

- (VIService)initWithTrialOverrideType:(id)a3 namespaces:(id)a4 factors:(id)a5 values:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = VIService;
  v14 = [(VIService *)&v20 init];
  if (v14)
  {
    v15 = [[_TtC12VisualLookUp35VisualIntelligenceServiceCompatible alloc] initWithOverrideTrialTypes:v10 namespaces:v11 factors:v12 values:v13];
    compatService = v14->_compatService;
    v14->_compatService = v15;

    v17 = objc_opt_new();
    textLookupFlow = v14->_textLookupFlow;
    v14->_textLookupFlow = v17;
  }

  return v14;
}

- (CGSize)targetImageSizeForInputImageSize:(CGSize)a3
{
  [(VisualIntelligenceServiceCompatible *)self->_compatService targetImageSizeWithInputImageSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)parseWithVisualQuery:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    compatService = self->_compatService;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__VIService_parseWithVisualQuery_completion___block_invoke;
    v13[3] = &unk_1E858AAB0;
    v14 = v7;
    v10 = [(VisualIntelligenceServiceCompatible *)compatService parseWithVisualQuery:v6 completion:v13];
  }

  else
  {
    if (v7)
    {
      v11 = _VIServiceNilInputError();
      (v8)[2](v8, 0, v11);
    }

    v10 = 0;
  }

  return v10;
}

uint64_t __45__VIService_parseWithVisualQuery_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)parseWithVisualQuery:(id)a3 cachedResults:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    compatService = self->_compatService;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__VIService_parseWithVisualQuery_cachedResults_completion___block_invoke;
    v16[3] = &unk_1E858AAD8;
    v17 = v10;
    v13 = [(VisualIntelligenceServiceCompatible *)compatService parseCachedWithVisualQuery:v8 cachedResults:v9 completion:v16];
  }

  else
  {
    if (v10)
    {
      v14 = _VIServiceNilInputError();
      (v11)[2](v11, 0, 0, v14);
    }

    v13 = 0;
  }

  return v13;
}

uint64_t __59__VIService_parseWithVisualQuery_cachedResults_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)searchWithParsedVisualQuery:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    compatService = self->_compatService;
    v10 = [v6 image];
    v11 = [v6 visualUnderstanding];
    v12 = [v6 queryContext];
    v13 = [(VisualIntelligenceServiceCompatible *)compatService searchWithImage:v10 visualUnderstanding:v11 queryContext:v12 completion:v8];

LABEL_5:
    goto LABEL_6;
  }

  if (v7)
  {
    v10 = +[VISearchResult empty];
    v11 = _VIServiceNilInputError();
    (v8)[2](v8, v10, v11);
    v13 = 0;
    goto LABEL_5;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (id)encryptedSearchWithParsedVisualQuery:(id)a3 domain:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    compatService = self->_compatService;
    v13 = [v8 image];
    v14 = [v8 visualUnderstanding];
    v15 = [v8 queryContext];
    v16 = [(VisualIntelligenceServiceCompatible *)compatService encryptedSearchWithImage:v13 visualUnderstanding:v14 queryContext:v15 domain:v9 completion:v11];

LABEL_5:
    goto LABEL_6;
  }

  if (v10)
  {
    v13 = +[VISearchResult empty];
    v14 = _VIServiceNilInputError();
    (v11)[2](v11, v13, v14);
    v16 = 0;
    goto LABEL_5;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

- (void)checkEncryptedSearchProxyEnabledWithCompletion:(id)a3
{
  v4 = a3;
  compatService = self->_compatService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__VIService_checkEncryptedSearchProxyEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E858AB00;
  v8 = v4;
  v6 = v4;
  [(VisualIntelligenceServiceCompatible *)compatService checkEncryptedSearchProxyEnabledWithAction:v7];
}

uint64_t __60__VIService_checkEncryptedSearchProxyEnabledWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)getEncryptedSearchDomainsWithVisualQuery:(id)a3 cachedResults:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    compatService = self->_compatService;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __79__VIService_getEncryptedSearchDomainsWithVisualQuery_cachedResults_completion___block_invoke;
    v16[3] = &unk_1E858AB28;
    v17 = v10;
    v13 = [(VisualIntelligenceServiceCompatible *)compatService getEncryptedSearchDomainsWithVisualQuery:v8 cachedResults:v9 completion:v16];
  }

  else
  {
    if (v10)
    {
      v14 = _VIServiceNilInputError();
      (v11)[2](v11, 0, 0, v14);
    }

    v13 = 0;
  }

  return v13;
}

uint64_t __79__VIService_getEncryptedSearchDomainsWithVisualQuery_cachedResults_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)parseForENLabelWithVisualQuery:(id)a3 cachedResults:(id)a4 domains:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v10)
  {
    compatService = self->_compatService;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__VIService_parseForENLabelWithVisualQuery_cachedResults_domains_completion___block_invoke;
    v19[3] = &unk_1E858AAD8;
    v20 = v13;
    v16 = [(VisualIntelligenceServiceCompatible *)compatService parseForENRichLabelWithVisualQuery:v10 cachedResults:v11 domains:v12 completion:v19];
  }

  else
  {
    if (v13)
    {
      v17 = _VIServiceNilInputError();
      (v14)[2](v14, 0, 0, v17);
    }

    v16 = 0;
  }

  return v16;
}

uint64_t __77__VIService_parseForENLabelWithVisualQuery_cachedResults_domains_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)searchWithVisualQuery:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(VisualIntelligenceServiceCompatible *)self->_compatService searchWithVisualQuery:v6 completion:v7];
  }

  else
  {
    if (v7)
    {
      v10 = +[VISearchResult empty];
      v11 = _VIServiceNilInputError();
      (v8)[2](v8, v10, v11);
    }

    v9 = 0;
  }

  return v9;
}

- (id)pegasusPayloadWithParsedVisualQuery:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    compatService = self->_compatService;
    v11 = [v8 image];
    v12 = [v9 visualUnderstanding];
    v13 = [v9 queryContext];
    v14 = [(VisualIntelligenceServiceCompatible *)compatService pegasusPayloadDataWithImage:v11 visualUnderstanding:v12 queryContext:v13 options:a4 error:a5];
  }

  else if (a5)
  {
    _VIServiceNilInputError();
    *a5 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)lookupTextWithQuery:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(VITextLookupFlowCompatible *)self->_textLookupFlow lookupTextWithQuery:v6 completion:v7];
  }

  else
  {
    if (v7)
    {
      v10 = _VIServiceNilInputError();
      (v8)[2](v8, 0, v10);
    }

    v9 = 0;
  }

  return v9;
}

- (id)ontologyGraph
{
  v3 = [VIOntologyGraph alloc];
  v4 = [(VisualIntelligenceServiceCompatible *)self->_compatService ontologyGraph];
  v5 = [(VIOntologyGraph *)v3 initWithOntologyGraph:v4];

  return v5;
}

- (id)newStreamingSession
{
  v3 = [VIStreamingSession alloc];
  compatService = self->_compatService;

  return [(VIStreamingSession *)v3 initWithCompatService:compatService];
}

@end