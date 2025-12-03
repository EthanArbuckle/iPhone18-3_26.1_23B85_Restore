@interface VUIViewElementDataSource
- (IKViewElement)viewElement;
- (VUIRouterDataSource)routerDataSource;
- (VUIViewElementDataSource)initWithDataDictionary:(id)dictionary viewElement:(id)element;
@end

@implementation VUIViewElementDataSource

- (VUIViewElementDataSource)initWithDataDictionary:(id)dictionary viewElement:(id)element
{
  dictionaryCopy = dictionary;
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = VUIViewElementDataSource;
  v9 = [(VUIViewElementDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataDictionary, dictionary);
    objc_storeWeak(&v10->_viewElement, elementCopy);
  }

  return v10;
}

- (VUIRouterDataSource)routerDataSource
{
  routerDataSource = self->_routerDataSource;
  if (!routerDataSource)
  {
    v4 = [(NSDictionary *)self->_dataDictionary objectForKeyedSubscript:@"routerDataSource"];
    v5 = [[VUIRouterDataSource alloc] initWithRouterData:v4 appContext:0];
    v6 = self->_routerDataSource;
    self->_routerDataSource = v5;

    routerDataSource = self->_routerDataSource;
  }

  return routerDataSource;
}

- (IKViewElement)viewElement
{
  WeakRetained = objc_loadWeakRetained(&self->_viewElement);

  return WeakRetained;
}

@end