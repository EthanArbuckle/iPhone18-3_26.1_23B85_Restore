@interface VKMapView(Internal)
- (uint64_t)populateDebugNode:()Internal withOptions:;
- (void)populateDebugNode:()Internal withOptions:;
@end

@implementation VKMapView(Internal)

- (void)populateDebugNode:()Internal withOptions:
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v4)
  {
    v20 = *v39;
    do
    {
      v22 = v4;
      for (i = 0; i != v22; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v38 + 1) + 8 * i);
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v6];
        v7 = v24;
        std::string::basic_string[abi:nn200100]<0>(v36, [v24 UTF8String]);
        v8 = [obj objectForKey:v6];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ChildNode = gdc::DebugTreeNode::createChildNode(a3, v36);
          v10 = v8;
          std::function<void ()(NSDictionary *,gdc::DebugTreeNode &)>::operator()(*(self + 8), v10, ChildNode);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = gdc::DebugTreeNode::createChildNode(a3, v36);
            v12 = v8;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v10 = v12;
            v13 = [v10 countByEnumeratingWithState:&v32 objects:v42 count:16];
            if (v13)
            {
              v14 = *v33;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v33 != v14)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", *(*(&v32 + 1) + 8 * j)];
                  v17 = v16;
                  std::string::basic_string[abi:nn200100]<0>(&v28, [v16 UTF8String]);
                  gdc::DebugTreeValue::DebugTreeValue(v29, &v28);
                  gdc::DebugTreeNode::addProperty(v11, v36, v29);
                  if (v31 < 0)
                  {
                    operator delete(__p);
                  }

                  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v28.__r_.__value_.__l.__data_);
                  }
                }

                v13 = [v10 countByEnumeratingWithState:&v32 objects:v42 count:16];
              }

              while (v13);
            }
          }

          else
          {
            v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v8];
            v18 = v10;
            std::string::basic_string[abi:nn200100]<0>(&v28, [v10 UTF8String]);
            gdc::DebugTreeValue::DebugTreeValue(v25, &v28);
            gdc::DebugTreeNode::addProperty(a3, v36, v25);
            if (v27 < 0)
            {
              operator delete(v26);
            }

            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v37 < 0)
        {
          operator delete(v36[0]);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v4);
  }
}

- (uint64_t)populateDebugNode:()Internal withOptions:
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E6510;
  a2[1] = v2;
  return result;
}

@end