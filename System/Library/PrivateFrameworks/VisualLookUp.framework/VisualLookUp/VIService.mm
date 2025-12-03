@interface VIService
- (CGSize)targetImageSizeForInputImageSize:(CGSize)size;
- (VIService)init;
- (VIService)initWithNetworkTimeoutInterval:(int64_t)interval;
- (VIService)initWithTrialOverrideType:(id)type namespaces:(id)namespaces factors:(id)factors values:(id)values;
- (id)encryptedSearchWithParsedVisualQuery:(id)query domain:(id)domain completion:(id)completion;
- (id)getEncryptedSearchDomainsWithVisualQuery:(id)query cachedResults:(id)results completion:(id)completion;
- (id)lookupTextWithQuery:(id)query completion:(id)completion;
- (id)newStreamingSession;
- (id)ontologyGraph;
- (id)parseForENLabelWithVisualQuery:(id)query cachedResults:(id)results domains:(id)domains completion:(id)completion;
- (id)parseWithVisualQuery:(id)query cachedResults:(id)results completion:(id)completion;
- (id)parseWithVisualQuery:(id)query completion:(id)completion;
- (id)pegasusPayloadWithParsedVisualQuery:(id)query options:(unint64_t)options error:(id *)error;
- (id)searchWithParsedVisualQuery:(id)query completion:(id)completion;
- (id)searchWithVisualQuery:(id)query completion:(id)completion;
- (void)checkEncryptedSearchProxyEnabledWithCompletion:(id)completion;
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

- (VIService)initWithNetworkTimeoutInterval:(int64_t)interval
{
  v10.receiver = self;
  v10.super_class = VIService;
  v4 = [(VIService *)&v10 init];
  if (v4)
  {
    v5 = [[_TtC12VisualLookUp35VisualIntelligenceServiceCompatible alloc] initWithTimeoutInterval:interval];
    compatService = v4->_compatService;
    v4->_compatService = v5;

    v7 = objc_opt_new();
    textLookupFlow = v4->_textLookupFlow;
    v4->_textLookupFlow = v7;
  }

  return v4;
}

- (VIService)initWithTrialOverrideType:(id)type namespaces:(id)namespaces factors:(id)factors values:(id)values
{
  typeCopy = type;
  namespacesCopy = namespaces;
  factorsCopy = factors;
  valuesCopy = values;
  v20.receiver = self;
  v20.super_class = VIService;
  v14 = [(VIService *)&v20 init];
  if (v14)
  {
    v15 = [[_TtC12VisualLookUp35VisualIntelligenceServiceCompatible alloc] initWithOverrideTrialTypes:typeCopy namespaces:namespacesCopy factors:factorsCopy values:valuesCopy];
    compatService = v14->_compatService;
    v14->_compatService = v15;

    v17 = objc_opt_new();
    textLookupFlow = v14->_textLookupFlow;
    v14->_textLookupFlow = v17;
  }

  return v14;
}

- (CGSize)targetImageSizeForInputImageSize:(CGSize)size
{
  [(VisualIntelligenceServiceCompatible *)self->_compatService targetImageSizeWithInputImageSize:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)parseWithVisualQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  v8 = completionCopy;
  if (queryCopy)
  {
    compatService = self->_compatService;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__VIService_parseWithVisualQuery_completion___block_invoke;
    v13[3] = &unk_1E858AAB0;
    v14 = completionCopy;
    v10 = [(VisualIntelligenceServiceCompatible *)compatService parseWithVisualQuery:queryCopy completion:v13];
  }

  else
  {
    if (completionCopy)
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

- (id)parseWithVisualQuery:(id)query cachedResults:(id)results completion:(id)completion
{
  queryCopy = query;
  resultsCopy = results;
  completionCopy = completion;
  v11 = completionCopy;
  if (queryCopy)
  {
    compatService = self->_compatService;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__VIService_parseWithVisualQuery_cachedResults_completion___block_invoke;
    v16[3] = &unk_1E858AAD8;
    v17 = completionCopy;
    v13 = [(VisualIntelligenceServiceCompatible *)compatService parseCachedWithVisualQuery:queryCopy cachedResults:resultsCopy completion:v16];
  }

  else
  {
    if (completionCopy)
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

- (id)searchWithParsedVisualQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  v8 = completionCopy;
  if (queryCopy)
  {
    compatService = self->_compatService;
    image = [queryCopy image];
    visualUnderstanding = [queryCopy visualUnderstanding];
    queryContext = [queryCopy queryContext];
    v13 = [(VisualIntelligenceServiceCompatible *)compatService searchWithImage:image visualUnderstanding:visualUnderstanding queryContext:queryContext completion:v8];

LABEL_5:
    goto LABEL_6;
  }

  if (completionCopy)
  {
    image = +[VISearchResult empty];
    visualUnderstanding = _VIServiceNilInputError();
    (v8)[2](v8, image, visualUnderstanding);
    v13 = 0;
    goto LABEL_5;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (id)encryptedSearchWithParsedVisualQuery:(id)query domain:(id)domain completion:(id)completion
{
  queryCopy = query;
  domainCopy = domain;
  completionCopy = completion;
  v11 = completionCopy;
  if (queryCopy)
  {
    compatService = self->_compatService;
    image = [queryCopy image];
    visualUnderstanding = [queryCopy visualUnderstanding];
    queryContext = [queryCopy queryContext];
    v16 = [(VisualIntelligenceServiceCompatible *)compatService encryptedSearchWithImage:image visualUnderstanding:visualUnderstanding queryContext:queryContext domain:domainCopy completion:v11];

LABEL_5:
    goto LABEL_6;
  }

  if (completionCopy)
  {
    image = +[VISearchResult empty];
    visualUnderstanding = _VIServiceNilInputError();
    (v11)[2](v11, image, visualUnderstanding);
    v16 = 0;
    goto LABEL_5;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

- (void)checkEncryptedSearchProxyEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  compatService = self->_compatService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__VIService_checkEncryptedSearchProxyEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E858AB00;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (id)getEncryptedSearchDomainsWithVisualQuery:(id)query cachedResults:(id)results completion:(id)completion
{
  queryCopy = query;
  resultsCopy = results;
  completionCopy = completion;
  v11 = completionCopy;
  if (queryCopy)
  {
    compatService = self->_compatService;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __79__VIService_getEncryptedSearchDomainsWithVisualQuery_cachedResults_completion___block_invoke;
    v16[3] = &unk_1E858AB28;
    v17 = completionCopy;
    v13 = [(VisualIntelligenceServiceCompatible *)compatService getEncryptedSearchDomainsWithVisualQuery:queryCopy cachedResults:resultsCopy completion:v16];
  }

  else
  {
    if (completionCopy)
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

- (id)parseForENLabelWithVisualQuery:(id)query cachedResults:(id)results domains:(id)domains completion:(id)completion
{
  queryCopy = query;
  resultsCopy = results;
  domainsCopy = domains;
  completionCopy = completion;
  v14 = completionCopy;
  if (queryCopy)
  {
    compatService = self->_compatService;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__VIService_parseForENLabelWithVisualQuery_cachedResults_domains_completion___block_invoke;
    v19[3] = &unk_1E858AAD8;
    v20 = completionCopy;
    v16 = [(VisualIntelligenceServiceCompatible *)compatService parseForENRichLabelWithVisualQuery:queryCopy cachedResults:resultsCopy domains:domainsCopy completion:v19];
  }

  else
  {
    if (completionCopy)
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

- (id)searchWithVisualQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  v8 = completionCopy;
  if (queryCopy)
  {
    v9 = [(VisualIntelligenceServiceCompatible *)self->_compatService searchWithVisualQuery:queryCopy completion:completionCopy];
  }

  else
  {
    if (completionCopy)
    {
      v10 = +[VISearchResult empty];
      v11 = _VIServiceNilInputError();
      (v8)[2](v8, v10, v11);
    }

    v9 = 0;
  }

  return v9;
}

- (id)pegasusPayloadWithParsedVisualQuery:(id)query options:(unint64_t)options error:(id *)error
{
  queryCopy = query;
  v9 = queryCopy;
  if (queryCopy)
  {
    compatService = self->_compatService;
    image = [queryCopy image];
    visualUnderstanding = [v9 visualUnderstanding];
    queryContext = [v9 queryContext];
    v14 = [(VisualIntelligenceServiceCompatible *)compatService pegasusPayloadDataWithImage:image visualUnderstanding:visualUnderstanding queryContext:queryContext options:options error:error];
  }

  else if (error)
  {
    _VIServiceNilInputError();
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)lookupTextWithQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  v8 = completionCopy;
  if (queryCopy)
  {
    v9 = [(VITextLookupFlowCompatible *)self->_textLookupFlow lookupTextWithQuery:queryCopy completion:completionCopy];
  }

  else
  {
    if (completionCopy)
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
  ontologyGraph = [(VisualIntelligenceServiceCompatible *)self->_compatService ontologyGraph];
  v5 = [(VIOntologyGraph *)v3 initWithOntologyGraph:ontologyGraph];

  return v5;
}

- (id)newStreamingSession
{
  v3 = [VIStreamingSession alloc];
  compatService = self->_compatService;

  return [(VIStreamingSession *)v3 initWithCompatService:compatService];
}

@end