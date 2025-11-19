@interface SXDataTableComponentSizer
- (SXDataTableComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7 textComponentLayoutHosting:(id)a8 textSourceFactory:(id)a9 recordValueTransformerFactory:(id)a10;
- (SXTextComponentLayoutHosting)textComponentLayoutHosting;
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
- (id)contentSizeCategoryForDataTableComponentController:(id)a3;
- (id)documentColumnLayoutForDataTableComponentController:(id)a3;
- (id)tableStyleForComponent:(id)a3;
- (id)unitConverterForDataTableComponentController:(id)a3;
@end

@implementation SXDataTableComponentSizer

- (SXDataTableComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7 textComponentLayoutHosting:(id)a8 textSourceFactory:(id)a9 recordValueTransformerFactory:(id)a10
{
  v16 = a3;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v44.receiver = self;
  v44.super_class = SXDataTableComponentSizer;
  v21 = v17;
  v22 = [(SXComponentSizer *)&v44 initWithComponent:v16 componentLayout:a4 componentStyle:a5 DOMObjectProvider:v17 layoutOptions:a7];
  v23 = v22;
  if (v22)
  {
    objc_storeWeak(&v22->_textComponentLayoutHosting, v18);
    v24 = v16;
    [(SXDataTableComponentSizer *)v23 tableStyleForComponent:v24];
    v42 = v40 = v16;
    v43 = v20;
    v41 = v18;
    v39 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:0];
    v25 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:0];
    v26 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:0];
    v27 = [SXJSONObjectTransformer concatenatingTransformerWithKey:@"textStyles"];
    [(SXJSONObjectMerger *)v26 addTransformer:v27 keyPath:@"textStyle"];
    v28 = [SXDataTableComponentStyleFactory alloc];
    [v24 data];
    v29 = v21;
    v31 = v30 = v19;
    v32 = [v24 dataOrientation];

    v33 = [(SXDataTableComponentStyleFactory *)v28 initWithRecordStore:v31 tableStyle:v42 dataOrientation:v32 rowStyleMerger:v39 columnStyleMerger:v25 cellStyleMerger:v26];
    v19 = v30;
    v21 = v29;
    v34 = [[SXDataTableComponentController alloc] initWithStyleFactory:v33 textSourceFactory:v19 dataSource:v23 recordValueTransformerFactory:v43 DOMObjectProvider:v29];
    dataTableComponentController = v23->_dataTableComponentController;
    v23->_dataTableComponentController = v34;

    v20 = v43;
    v36 = [[SXDataTableLayouter alloc] initWithDataSource:v23->_dataTableComponentController];
    layouter = v23->_layouter;
    v23->_layouter = v36;

    v18 = v41;
    v16 = v40;
  }

  return v23;
}

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  v6 = a4;
  v7 = [(SXDataTableComponentSizer *)self dataTableComponentController];
  [v7 prepareForLayout];

  v8 = [(SXDataTableComponentSizer *)self layouter];
  [v8 reset];

  [(SXDataTableComponentSizer *)self setCurrentLayoutContext:v6];
  v9 = [(SXDataTableComponentSizer *)self layouter];
  v10 = [v9 blueprintForWidth:a3];

  if (v10)
  {
    [(SXComponentSizer *)self saveInfo:v10 forRenderingPhaseWithIdentifier:@"blueprint"];
    v11 = [(SXDataTableComponentSizer *)self dataTableComponentController];
    [(SXComponentSizer *)self saveInfo:v11 forRenderingPhaseWithIdentifier:@"component_controller"];
  }

  [v10 tableSize];
  v13 = v12;

  return v13;
}

- (id)documentColumnLayoutForDataTableComponentController:(id)a3
{
  v3 = [(SXComponentSizer *)self layoutOptions];
  v4 = [v3 columnLayout];

  return v4;
}

- (id)contentSizeCategoryForDataTableComponentController:(id)a3
{
  v3 = [(SXComponentSizer *)self layoutOptions];
  v4 = [v3 contentSizeCategory];

  return v4;
}

- (id)unitConverterForDataTableComponentController:(id)a3
{
  v3 = [(SXDataTableComponentSizer *)self currentLayoutContext];
  v4 = [v3 unitConverter];

  return v4;
}

- (id)tableStyleForComponent:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentSizer *)self DOMObjectProvider];
  v6 = [v5 componentStyleForComponent:v4];

  v7 = [v6 tableStyle];

  return v7;
}

- (SXTextComponentLayoutHosting)textComponentLayoutHosting
{
  WeakRetained = objc_loadWeakRetained(&self->_textComponentLayoutHosting);

  return WeakRetained;
}

@end