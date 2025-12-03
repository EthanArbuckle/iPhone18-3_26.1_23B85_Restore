@interface VITextLookupQuery
- (VITextLookupQuery)initWithQueryTerm:(id)term domain:(id)domain textContext:(id)context imageContext:(id)imageContext annotation:(id)annotation queryContext:(id)queryContext;
- (VITextLookupQuery)initWithQueryTerm:(id)term hintDomain:(id)domain textContext:(id)context imageContext:(id)imageContext annotation:(id)annotation queryContext:(id)queryContext;
@end

@implementation VITextLookupQuery

- (VITextLookupQuery)initWithQueryTerm:(id)term domain:(id)domain textContext:(id)context imageContext:(id)imageContext annotation:(id)annotation queryContext:(id)queryContext
{
  queryContextCopy = queryContext;
  annotationCopy = annotation;
  imageContextCopy = imageContext;
  contextCopy = context;
  domainCopy = domain;
  termCopy = term;
  v20 = [VITextContext alloc];
  v21 = [(VITextContext *)v20 initWithSurroundingText:contextCopy normalizedBoundingBoxes:MEMORY[0x1E695E0F0]];

  v22 = [(VITextLookupQuery *)self initWithQueryTerm:termCopy hintDomain:domainCopy textContext:v21 imageContext:imageContextCopy annotation:annotationCopy queryContext:queryContextCopy];
  return v22;
}

- (VITextLookupQuery)initWithQueryTerm:(id)term hintDomain:(id)domain textContext:(id)context imageContext:(id)imageContext annotation:(id)annotation queryContext:(id)queryContext
{
  termCopy = term;
  domainCopy = domain;
  contextCopy = context;
  imageContextCopy = imageContext;
  annotationCopy = annotation;
  queryContextCopy = queryContext;
  v28.receiver = self;
  v28.super_class = VITextLookupQuery;
  v20 = [(VITextLookupQuery *)&v28 init];
  if (v20)
  {
    v21 = [termCopy copy];
    queryTerm = v20->_queryTerm;
    v20->_queryTerm = v21;

    v23 = [contextCopy copy];
    textContext = v20->_textContext;
    v20->_textContext = v23;

    v25 = [domainCopy copy];
    hintDomain = v20->_hintDomain;
    v20->_hintDomain = v25;

    objc_storeStrong(&v20->_imageContext, imageContext);
    objc_storeStrong(&v20->_annotation, annotation);
    objc_storeStrong(&v20->_queryContext, queryContext);
  }

  return v20;
}

@end