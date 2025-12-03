@interface SXDataTableComponentSizer
- (SXDataTableComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options textComponentLayoutHosting:(id)hosting textSourceFactory:(id)factory recordValueTransformerFactory:(id)self0;
- (SXTextComponentLayoutHosting)textComponentLayoutHosting;
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
- (id)contentSizeCategoryForDataTableComponentController:(id)controller;
- (id)documentColumnLayoutForDataTableComponentController:(id)controller;
- (id)tableStyleForComponent:(id)component;
- (id)unitConverterForDataTableComponentController:(id)controller;
@end

@implementation SXDataTableComponentSizer

- (SXDataTableComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options textComponentLayoutHosting:(id)hosting textSourceFactory:(id)factory recordValueTransformerFactory:(id)self0
{
  componentCopy = component;
  providerCopy = provider;
  hostingCopy = hosting;
  factoryCopy = factory;
  transformerFactoryCopy = transformerFactory;
  v44.receiver = self;
  v44.super_class = SXDataTableComponentSizer;
  v21 = providerCopy;
  v22 = [(SXComponentSizer *)&v44 initWithComponent:componentCopy componentLayout:layout componentStyle:style DOMObjectProvider:providerCopy layoutOptions:options];
  v23 = v22;
  if (v22)
  {
    objc_storeWeak(&v22->_textComponentLayoutHosting, hostingCopy);
    v24 = componentCopy;
    [(SXDataTableComponentSizer *)v23 tableStyleForComponent:v24];
    v42 = v40 = componentCopy;
    v43 = transformerFactoryCopy;
    v41 = hostingCopy;
    v39 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:0];
    v25 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:0];
    v26 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:0];
    v27 = [SXJSONObjectTransformer concatenatingTransformerWithKey:@"textStyles"];
    [(SXJSONObjectMerger *)v26 addTransformer:v27 keyPath:@"textStyle"];
    v28 = [SXDataTableComponentStyleFactory alloc];
    [v24 data];
    v29 = v21;
    v31 = v30 = factoryCopy;
    dataOrientation = [v24 dataOrientation];

    v33 = [(SXDataTableComponentStyleFactory *)v28 initWithRecordStore:v31 tableStyle:v42 dataOrientation:dataOrientation rowStyleMerger:v39 columnStyleMerger:v25 cellStyleMerger:v26];
    factoryCopy = v30;
    v21 = v29;
    v34 = [[SXDataTableComponentController alloc] initWithStyleFactory:v33 textSourceFactory:factoryCopy dataSource:v23 recordValueTransformerFactory:v43 DOMObjectProvider:v29];
    dataTableComponentController = v23->_dataTableComponentController;
    v23->_dataTableComponentController = v34;

    transformerFactoryCopy = v43;
    v36 = [[SXDataTableLayouter alloc] initWithDataSource:v23->_dataTableComponentController];
    layouter = v23->_layouter;
    v23->_layouter = v36;

    hostingCopy = v41;
    componentCopy = v40;
  }

  return v23;
}

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  contextCopy = context;
  dataTableComponentController = [(SXDataTableComponentSizer *)self dataTableComponentController];
  [dataTableComponentController prepareForLayout];

  layouter = [(SXDataTableComponentSizer *)self layouter];
  [layouter reset];

  [(SXDataTableComponentSizer *)self setCurrentLayoutContext:contextCopy];
  layouter2 = [(SXDataTableComponentSizer *)self layouter];
  v10 = [layouter2 blueprintForWidth:width];

  if (v10)
  {
    [(SXComponentSizer *)self saveInfo:v10 forRenderingPhaseWithIdentifier:@"blueprint"];
    dataTableComponentController2 = [(SXDataTableComponentSizer *)self dataTableComponentController];
    [(SXComponentSizer *)self saveInfo:dataTableComponentController2 forRenderingPhaseWithIdentifier:@"component_controller"];
  }

  [v10 tableSize];
  v13 = v12;

  return v13;
}

- (id)documentColumnLayoutForDataTableComponentController:(id)controller
{
  layoutOptions = [(SXComponentSizer *)self layoutOptions];
  columnLayout = [layoutOptions columnLayout];

  return columnLayout;
}

- (id)contentSizeCategoryForDataTableComponentController:(id)controller
{
  layoutOptions = [(SXComponentSizer *)self layoutOptions];
  contentSizeCategory = [layoutOptions contentSizeCategory];

  return contentSizeCategory;
}

- (id)unitConverterForDataTableComponentController:(id)controller
{
  currentLayoutContext = [(SXDataTableComponentSizer *)self currentLayoutContext];
  unitConverter = [currentLayoutContext unitConverter];

  return unitConverter;
}

- (id)tableStyleForComponent:(id)component
{
  componentCopy = component;
  dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
  v6 = [dOMObjectProvider componentStyleForComponent:componentCopy];

  tableStyle = [v6 tableStyle];

  return tableStyle;
}

- (SXTextComponentLayoutHosting)textComponentLayoutHosting
{
  WeakRetained = objc_loadWeakRetained(&self->_textComponentLayoutHosting);

  return WeakRetained;
}

@end