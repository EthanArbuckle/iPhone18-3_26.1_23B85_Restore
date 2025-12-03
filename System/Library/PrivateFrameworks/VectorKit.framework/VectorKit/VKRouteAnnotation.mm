@interface VKRouteAnnotation
- (VKRouteAnnotation)initWithRouteAnnotation:(id)annotation onRoute:(id)route;
- (void)populateDebugNode:(void *)node;
@end

@implementation VKRouteAnnotation

- (void)populateDebugNode:(void *)node
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VKRouteAnnotation;
  [(VKTrafficFeature *)&v18 populateDebugNode:?];
  v20 = 15;
  strcpy(&v19, "StyleAttributes");
  v5 = gdc::DebugTreeNode::createChildNode(node, &v19);
  gdc::DebugTreeNode::DebugTreeNode(&v13, v5);
  memset(v12, 0, sizeof(v12));
  attributes = [(GEOStyleAttributes *)self->_originalStyleAttributes attributes];
  if ([attributes countByEnumeratingWithState:v12 objects:v22 count:16])
  {
    v7 = **(&v12[0] + 1);
    std::to_string(&v10, 0);
    v8 = std::string::insert(&v10, 0, "Attribute: ", 0xBuLL);
    __p = *v8;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    gdc::DebugTreeValue::DebugTreeValue(&v19, [v7 key]);
    gdc::DebugTreeValue::DebugTreeValue(&v21, [v7 value]);
    memset(v9, 0, sizeof(v9));
    std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v9, &v19, v22, 2uLL);
  }

  *&v19 = &v17;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v19);
  *&v19 = &v16;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v19);
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

- (VKRouteAnnotation)initWithRouteAnnotation:(id)annotation onRoute:(id)route
{
  annotationCopy = annotation;
  routeCopy = route;
  v21.receiver = self;
  v21.super_class = VKRouteAnnotation;
  v9 = [(VKTrafficFeature *)&v21 initWithEnrouteNotice:annotationCopy onRoute:routeCopy];
  v10 = v9;
  artwork = 0;
  if (annotationCopy)
  {
    if (v9)
    {
      artwork = [annotationCopy artwork];
      if (artwork)
      {
        artwork2 = [annotationCopy artwork];
        if ([artwork2 hasIcon])
        {
          artwork3 = [annotationCopy artwork];
          icon = [artwork3 icon];
          hasStyleAttributes = [icon hasStyleAttributes];

          if (hasStyleAttributes)
          {
            artwork4 = [annotationCopy artwork];
            icon2 = [artwork4 icon];
            styleAttributes = [icon2 styleAttributes];
            originalStyleAttributes = v10->_originalStyleAttributes;
            v10->_originalStyleAttributes = styleAttributes;

            objc_storeStrong(&v10->_routeAnnotation, annotation);
            artwork = v10;
            goto LABEL_9;
          }
        }

        else
        {
        }

        artwork = 0;
      }
    }
  }

LABEL_9:

  return artwork;
}

@end