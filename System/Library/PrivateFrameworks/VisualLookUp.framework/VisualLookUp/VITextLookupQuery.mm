@interface VITextLookupQuery
- (VITextLookupQuery)initWithQueryTerm:(id)a3 domain:(id)a4 textContext:(id)a5 imageContext:(id)a6 annotation:(id)a7 queryContext:(id)a8;
- (VITextLookupQuery)initWithQueryTerm:(id)a3 hintDomain:(id)a4 textContext:(id)a5 imageContext:(id)a6 annotation:(id)a7 queryContext:(id)a8;
@end

@implementation VITextLookupQuery

- (VITextLookupQuery)initWithQueryTerm:(id)a3 domain:(id)a4 textContext:(id)a5 imageContext:(id)a6 annotation:(id)a7 queryContext:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [VITextContext alloc];
  v21 = [(VITextContext *)v20 initWithSurroundingText:v17 normalizedBoundingBoxes:MEMORY[0x1E695E0F0]];

  v22 = [(VITextLookupQuery *)self initWithQueryTerm:v19 hintDomain:v18 textContext:v21 imageContext:v16 annotation:v15 queryContext:v14];
  return v22;
}

- (VITextLookupQuery)initWithQueryTerm:(id)a3 hintDomain:(id)a4 textContext:(id)a5 imageContext:(id)a6 annotation:(id)a7 queryContext:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v28.receiver = self;
  v28.super_class = VITextLookupQuery;
  v20 = [(VITextLookupQuery *)&v28 init];
  if (v20)
  {
    v21 = [v14 copy];
    queryTerm = v20->_queryTerm;
    v20->_queryTerm = v21;

    v23 = [v16 copy];
    textContext = v20->_textContext;
    v20->_textContext = v23;

    v25 = [v15 copy];
    hintDomain = v20->_hintDomain;
    v20->_hintDomain = v25;

    objc_storeStrong(&v20->_imageContext, a6);
    objc_storeStrong(&v20->_annotation, a7);
    objc_storeStrong(&v20->_queryContext, a8);
  }

  return v20;
}

@end