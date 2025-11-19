@interface VKRouteAnnotation
- (VKRouteAnnotation)initWithRouteAnnotation:(id)a3 onRoute:(id)a4;
- (void)populateDebugNode:(void *)a3;
@end

@implementation VKRouteAnnotation

- (void)populateDebugNode:(void *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VKRouteAnnotation;
  [(VKTrafficFeature *)&v18 populateDebugNode:?];
  v20 = 15;
  strcpy(&v19, "StyleAttributes");
  v5 = gdc::DebugTreeNode::createChildNode(a3, &v19);
  gdc::DebugTreeNode::DebugTreeNode(&v13, v5);
  memset(v12, 0, sizeof(v12));
  v6 = [(GEOStyleAttributes *)self->_originalStyleAttributes attributes];
  if ([v6 countByEnumeratingWithState:v12 objects:v22 count:16])
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

- (VKRouteAnnotation)initWithRouteAnnotation:(id)a3 onRoute:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = VKRouteAnnotation;
  v9 = [(VKTrafficFeature *)&v21 initWithEnrouteNotice:v7 onRoute:v8];
  v10 = v9;
  v11 = 0;
  if (v7)
  {
    if (v9)
    {
      v11 = [v7 artwork];
      if (v11)
      {
        v12 = [v7 artwork];
        if ([v12 hasIcon])
        {
          v13 = [v7 artwork];
          v14 = [v13 icon];
          v15 = [v14 hasStyleAttributes];

          if (v15)
          {
            v16 = [v7 artwork];
            v17 = [v16 icon];
            v18 = [v17 styleAttributes];
            originalStyleAttributes = v10->_originalStyleAttributes;
            v10->_originalStyleAttributes = v18;

            objc_storeStrong(&v10->_routeAnnotation, a3);
            v11 = v10;
            goto LABEL_9;
          }
        }

        else
        {
        }

        v11 = 0;
      }
    }
  }

LABEL_9:

  return v11;
}

@end