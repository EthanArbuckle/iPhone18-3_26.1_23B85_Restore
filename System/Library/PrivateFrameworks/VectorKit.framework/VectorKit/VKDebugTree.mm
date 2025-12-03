@interface VKDebugTree
- (BOOL)deserializeTree:(id)tree;
- (BOOL)deserializeZippedTree:(id)tree;
- (id).cxx_construct;
- (id)_serializeNode:(const void *)node;
- (id)_serializeProperty:(const void *)property;
- (id)_serializeValue:(const void *)value;
- (id)logTree;
- (id)serializeTree;
- (id)serializeZippedTree;
- (optional<gdc::DebugTreeNode>)_deserializeNode:(optional<gdc::DebugTreeNode> *__return_ptr)retstr;
- (optional<gdc::DebugTreeProperty>)_deserializeProperty:(optional<gdc::DebugTreeProperty> *__return_ptr)retstr;
- (optional<gdc::DebugTreeValue>)_deserializeValue:(optional<gdc::DebugTreeValue> *__return_ptr)retstr;
- (void)_populateData;
- (void)populateData:(id)data;
- (void)replaceInternalData:(const void *)data;
- (void)setOption:(unint64_t)option value:(BOOL)value;
- (void)setOptions:(id)options;
@end

@implementation VKDebugTree

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (BOOL)deserializeZippedTree:(id)tree
{
  treeCopy = tree;
  v5 = treeCopy;
  if (treeCopy && [treeCopy length])
  {
    v6 = [v5 length];
    v7 = [v5 length];
    v8 = [MEMORY[0x1E695DF88] dataWithLength:v6 + (v7 >> 1)];
    v20.avail_in = [v5 length];
    v20.zalloc = 0;
    v20.zfree = 0;
    v20.total_out = 0;
    if (inflateInit_(&v20, "1.2.12", 112))
    {
      goto LABEL_14;
    }

    v9 = v7 >> 1;
    do
    {
      total_out = v20.total_out;
      if (total_out >= [v8 length])
      {
        [v8 increaseLengthBy:v9];
      }

      mutableBytes = [v8 mutableBytes];
      v20.next_out = (mutableBytes + v20.total_out);
      v12 = [v8 length];
      v20.avail_out = v12 - LODWORD(v20.total_out);
      v13 = inflate(&v20, 2);
    }

    while (!v13);
    v14 = v13 == 1;
    v16 = inflateEnd(&v20);
    v17 = !v14;
    if (v16)
    {
      v17 = 1;
    }

    if (v17)
    {
LABEL_14:
      v15 = 0;
    }

    else
    {
      [v8 setLength:v20.total_out];
      v18 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:0];
      v15 = [(VKDebugTree *)self deserializeTree:v18];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)serializeZippedTree
{
  serializeTree = [(VKDebugTree *)self serializeTree];
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:serializeTree requiringSecureCoding:0 error:0];
  v10.total_out = 0;
  memset(&v10.zalloc, 0, 24);
  v10.avail_in = [v3 length];
  if (deflateInit_(&v10, 9, "1.2.12", 112))
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF88] dataWithLength:1024];
    do
    {
      total_out = v10.total_out;
      if (total_out >= [v5 length])
      {
        [v5 increaseLengthBy:1024];
      }

      mutableBytes = [v5 mutableBytes];
      v10.next_out = (mutableBytes + v10.total_out);
      v8 = [v5 length];
      v10.avail_out = v8 - LODWORD(v10.total_out);
      deflate(&v10, 4);
    }

    while (!v10.avail_out);
    deflateEnd(&v10);
    [v5 setLength:v10.total_out];
    v4 = [MEMORY[0x1E695DEF0] dataWithData:v5];
  }

  return v4;
}

- (BOOL)deserializeTree:(id)tree
{
  v31 = *MEMORY[0x1E69E9840];
  treeCopy = tree;
  std::string::basic_string[abi:nn200100]<0>(v27, "Root");
  gdc::DebugTreeNode::DebugTreeNode(v14, v27);
  if (*(&self->_debugTree._name.__rep_.__l + 23) < 0)
  {
    operator delete(self->_debugTree._name.__rep_.__l.__data_);
  }

  *self->_debugTree._name.__rep_.__s.__data_ = *v14;
  *(&self->_debugTree._name.__rep_.__l + 2) = v15;
  HIBYTE(v15) = 0;
  LOBYTE(v14[0]) = 0;
  if (self->_anon_28[15] < 0)
  {
    operator delete(*&self->_debugTree.var0);
  }

  *&self->_debugTree.var0 = *__p;
  *&self->_anon_28[8] = v17;
  HIBYTE(v17) = 0;
  LOBYTE(__p[0]) = 0;
  std::vector<gdc::DebugTreeNode>::__vdeallocate(&self->_anon_28[16]);
  *&self->_anon_28[16] = v18;
  *&self->_anon_28[32] = v19;
  v19 = 0;
  v18 = 0uLL;
  std::vector<gdc::DebugTreeProperty>::__vdeallocate(&self->_anon_28[40]);
  *&self->_anon_28[40] = v20;
  *&self->_anon_28[56] = v21;
  v21 = 0;
  v20 = 0uLL;
  v29 = &v20;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v29);
  v29 = &v18;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v29);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([treeCopy objectForKey:@"Version"], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "intValue"), v5, v6 <= 3))
  {
    v8 = [treeCopy objectForKey:@"Root Nodes"];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v10)
    {
      v11 = *v24;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [(VKDebugTree *)self _deserializeNode:*(*(&v23 + 1) + 8 * i)];
          if ((v22 & 1) == 0)
          {
            v7 = 0;
            goto LABEL_29;
          }

          gdc::DebugTreeNode::addChildNode(&self->_debugTree._name.__rep_.__l.__data_, v14);
          if (v22 == 1)
          {
            v27[0] = &v20;
            std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](v27);
            v27[0] = &v18;
            std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](v27);
            if (SHIBYTE(v17) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v15) < 0)
            {
              operator delete(v14[0]);
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v23 objects:v30 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 1;
LABEL_29:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)serializeTree
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*&self->_anon_28[24] - *&self->_anon_28[16]) >> 5)];
  v5 = *&self->_anon_28[16];
  v6 = *&self->_anon_28[24];
  while (v5 != v6)
  {
    v7 = [(VKDebugTree *)self _serializeNode:v5];
    [v4 addObject:v7];

    v5 += 96;
  }

  [dictionary setObject:&unk_1F2A88398 forKey:@"Version"];
  [dictionary setObject:v4 forKey:@"Root Nodes"];

  return dictionary;
}

- (optional<gdc::DebugTreeNode>)_deserializeNode:(optional<gdc::DebugTreeNode> *__return_ptr)retstr
{
  v3 = v1;
  v65 = *MEMORY[0x1E69E9840];
  v5 = v2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 objectForKey:@"Type"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"Node"), v6, (v7))
  {
    v8 = [v5 objectForKey:@"Name"];
    std::string::basic_string[abi:nn200100]<0>(v61, [v8 UTF8String]);

    gdc::DebugTreeNode::DebugTreeNode(v53, v61);
    v9 = [v5 objectForKey:@"Identifier"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      std::string::basic_string[abi:nn200100]<0>(__p, [v10 UTF8String]);
      gdc::DebugTreeNode::DebugTreeNode(v37, v61, __p);
      if (v52 < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = &v44;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](__p);
      __p[0] = &v42;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](__p);
      if (v41 < 0)
      {
        operator delete(v39);
      }

      if (v38 < 0)
      {
        operator delete(v37[0]);
      }
    }

    v30 = [v5 objectForKey:@"Children"];
    v12 = [v5 objectForKey:@"Properties"];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v13 = v30;
    v31 = v10;
    v32 = v12;
    v14 = [v13 countByEnumeratingWithState:&v47 objects:v64 count:16];
    if (v14)
    {
      v15 = *v48;
      var0 = retstr->var0.var0;
      v29 = retstr[1].var1.__rep_.__s.__data_[8];
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v48 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [v3 _deserializeNode:*(*(&v47 + 1) + 8 * i)];
          if (v46 != 1)
          {
            retstr[1].var1.__rep_.__s.__data_[8] = 0;
            retstr->var0.var0 = 0;

            v23 = v31;
            v22 = v32;
            goto LABEL_40;
          }

          gdc::DebugTreeNode::addChildNode(v53, v37);
          if (v46)
          {
            __p[0] = &v44;
            std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](__p);
            __p[0] = &v42;
            std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](__p);
            if (v41 < 0)
            {
              operator delete(v39);
            }

            if (v38 < 0)
            {
              operator delete(v37[0]);
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v47 objects:v64 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      retstr->var0.var0 = var0;
      retstr[1].var1.__rep_.__s.__data_[8] = v29;
      v12 = v32;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v63 count:16];
    if (v19)
    {
      v20 = *v34;
      LODWORD(v28) = retstr[1].var1.__rep_.__s.__data_[8];
      HIDWORD(v28) = retstr->var0.var0;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [v3 _deserializeProperty:{*(*(&v33 + 1) + 8 * j), v28}];
          if (v45 != 1)
          {
            retstr[1].var1.__rep_.__s.__data_[8] = 0;
            retstr->var0.var0 = 0;

            v23 = v31;
            v22 = v32;
            goto LABEL_40;
          }

          gdc::DebugTreeNode::addProperty(v53, v37);
          if (v45)
          {
            __p[0] = &v43;
            std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](__p);
            __p[0] = &v40;
            std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](__p);
            if (v38 < 0)
            {
              operator delete(v37[0]);
            }
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v33 objects:v63 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v23 = v31;
    v22 = v32;
    v24 = v56;
    *(&retstr->var0.var1._name.__rep_.__l + 2) = v54;
    retstr->var1.__rep_.__l.__size_ = v24;
    v25 = v60;
    retstr[1].var0.var1._name.__rep_.__l.__size_ = v58;
    *&retstr->var0.var0 = *v53;
    v53[0] = 0;
    v53[1] = 0;
    v26 = v55;
    v54 = 0;
    *&v55 = 0;
    *&retstr->var0.var1.var0 = v26;
    *(&v55 + 1) = 0;
    v56 = 0;
    *(&retstr->var1.__rep_.__l + 1) = v57;
    v57 = 0uLL;
    *(&retstr[1].var0.var1._name.__rep_.__l + 1) = v59;
    retstr[1].var1.__rep_.__l.__data_ = v25;
    v58 = 0;
    v59 = 0uLL;
    v60 = 0;
    retstr[1].var1.__rep_.__s.__data_[8] = 1;
LABEL_40:

    v37[0] = &v59;
    std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](v37);
    v37[0] = &v57;
    std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](v37);
    if (SHIBYTE(v56) < 0)
    {
      operator delete(v55);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53[0]);
    }

    if (v62 < 0)
    {
      operator delete(v61[0]);
    }
  }

  else
  {
    retstr->var0.var0 = 0;
    retstr[1].var1.__rep_.__s.__data_[8] = 0;
  }

  return result;
}

- (id)_serializeNode:(const void *)node
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"Node" forKey:@"Type"];
  nodeCopy = node;
  if ((*(node + 23) & 0x80000000) == 0 || (nodeCopy = *node) != 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nodeCopy];
    [dictionary setObject:v7 forKey:@"Name"];
  }

  v8 = gdc::DebugTreeNode::identifier(node);
  v9 = *(v8 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v8 + 8);
  }

  if (v9)
  {
    if (v10 >= 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = *v8;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    [dictionary setObject:v12 forKey:@"Identifier"];
  }

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(node + 7) - *(node + 6)) >> 5)];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((*(node + 10) - *(node + 9)) >> 4)];
  v15 = *(node + 9);
  v16 = *(node + 10);
  while (v15 != v16)
  {
    v17 = [(VKDebugTree *)self _serializeProperty:v15];
    [v14 addObject:v17];

    v15 += 80;
  }

  v18 = *(node + 6);
  v19 = *(node + 7);
  while (v18 != v19)
  {
    v20 = [(VKDebugTree *)self _serializeNode:v18];
    [v13 addObject:v20];

    v18 += 96;
  }

  if ([v14 count])
  {
    [dictionary setObject:v14 forKey:@"Properties"];
  }

  if ([v13 count])
  {
    [dictionary setObject:v13 forKey:@"Children"];
  }

  return dictionary;
}

- (optional<gdc::DebugTreeProperty>)_deserializeProperty:(optional<gdc::DebugTreeProperty> *__return_ptr)retstr
{
  v3 = v1;
  v61 = *MEMORY[0x1E69E9840];
  v5 = v2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 objectForKey:@"Type"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"Property"), v6, (v7))
  {
    v8 = [v5 objectForKey:@"Name"];
    std::string::basic_string[abi:nn200100]<0>(v57, [v8 UTF8String]);

    v9 = [v5 objectForKey:@"Visual Type"];
    v10 = v9;
    if (v9 && ([v9 isEqualToString:@"Primitive"] & 1) == 0)
    {
      if ([v10 isEqualToString:@"Time"])
      {
        v11 = 1;
      }

      else if ([v10 isEqualToString:@"StyleAttribute"])
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    gdc::DebugTreeProperty::DebugTreeProperty(&v51, v57, v11);
    v12 = [v5 objectForKey:@"Values"];
    v13 = v12;
    if (v12 && [v12 count])
    {
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v47 objects:v60 count:16];
      if (v15)
      {
        v30 = v5;
        obj = v14;
        v29 = v13;
        v16 = *v48;
        var0 = retstr->var0.var0;
        v18 = retstr[1].var0.var0;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v48 != v16)
            {
              objc_enumerationMutation(obj);
            }

            [v3 _deserializeValue:*(*(&v47 + 1) + 8 * i)];
            v20 = v46;
            if (v46 == 1)
            {
              v38[0] = *v42;
              *(v38 + 9) = *&v42[9];
              __p = v43;
              v40 = v44;
              v43 = 0uLL;
              v44 = 0;
              v41 = v45;
              gdc::DebugTreeProperty::addValue(&v51, v38);
              if (SHIBYTE(v40) < 0)
              {
                operator delete(__p);
              }
            }

            else
            {
              v18 = 0;
              var0 = 0;
            }

            if (v46 == 1 && SHIBYTE(v44) < 0)
            {
              operator delete(v43);
            }

            if (!v20)
            {
              retstr[1].var0.var0 = v18;
              retstr->var0.var0 = var0;
              v5 = v30;
              v13 = v29;
              v22 = obj;
              goto LABEL_43;
            }
          }

          v15 = [obj countByEnumeratingWithState:&v47 objects:v60 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

        retstr->var0.var0 = var0;
        retstr[1].var0.var0 = v18;
        v5 = v30;
        v13 = v29;
        v14 = obj;
      }
    }

    v21 = [v5 objectForKey:@"Tags"];
    v22 = v21;
    if (v21 && [v21 count])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v34 objects:v59 count:16];
      if (v24)
      {
        v25 = *v35;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v35 != v25)
            {
              objc_enumerationMutation(v23);
            }

            std::string::basic_string[abi:nn200100]<0>(v32, [*(*(&v34 + 1) + 8 * j) UTF8String]);
            gdc::DebugTreeProperty::addTag(&v51, v32);
            if (v33 < 0)
            {
              operator delete(v32[0]);
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v34 objects:v59 count:16];
        }

        while (v24);
      }
    }

    *(&retstr->var0.var1.var0.__rep_.__l + 2) = *(&v51.__r_.__value_.__l + 2);
    retstr->var1 = v52;
    v27 = v56;
    retstr->var2.var2 = v54;
    *&retstr->var0.var0 = *&v51.__r_.__value_.__l.__data_;
    *&v51.__r_.__value_.__l.__data_ = 0uLL;
    *&retstr->var2.var0 = v53;
    v51.__r_.__value_.__r.__words[2] = 0;
    v53 = 0uLL;
    *&retstr->var3.var0 = v55;
    retstr->var3.var2 = v27;
    v56 = 0;
    v54 = 0;
    v55 = 0uLL;
    retstr[1].var0.var0 = 1;
LABEL_43:

    *v42 = &v55;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v42);
    *v42 = &v53;
    std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](v42);
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (v58 < 0)
    {
      operator delete(v57[0]);
    }
  }

  else
  {
    retstr->var0.var0 = 0;
    retstr[1].var0.var0 = 0;
  }

  return result;
}

- (id)_serializeProperty:(const void *)property
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"Property" forKey:@"Type"];
  propertyCopy = property;
  if ((*(property + 23) & 0x80000000) == 0 || (propertyCopy = *property) != 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:propertyCopy];
    [dictionary setObject:v7 forKey:@"Name"];
  }

  v8 = *(property + 6);
  if (v8 <= 2)
  {
    [dictionary setObject:*(&off_1E7B33D90 + v8) forKey:@"Visual Type"];
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(property + 5) - *(property + 4)) >> 6];
  v10 = *(property + 4);
  v11 = *(property + 5);
  while (v10 != v11)
  {
    v12 = [(VKDebugTree *)self _serializeValue:v10];
    [v9 addObject:v12];

    v10 += 64;
  }

  [dictionary setObject:v9 forKey:@"Values"];
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(property + 8) - *(property + 7)) >> 3)];
  v15 = *(property + 7);
  for (i = *(property + 8); v15 != i; v15 += 3)
  {
    v16 = v15;
    if (*(v15 + 23) < 0)
    {
      v16 = *v15;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
    [v13 addObject:v17];
  }

  [dictionary setObject:v13 forKey:@"Tags"];

  return dictionary;
}

- (optional<gdc::DebugTreeValue>)_deserializeValue:(optional<gdc::DebugTreeValue> *__return_ptr)retstr
{
  v3 = v1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"Type"];
    v5 = [v4 isEqualToString:@"Value"];

    if (v5)
    {
      v6 = [v3 objectForKey:@"Value Type"];
      gdc::DebugTreeValue::DebugTreeValue(v14);
      if ([v6 isEqualToString:@"String"])
      {
        v7 = [v3 objectForKey:@"Value"];
        gdc::DebugTreeValue::DebugTreeValue(v10, [v7 UTF8String]);
      }

      else if ([v6 isEqualToString:@"Number"])
      {
        v7 = [v3 objectForKey:@"Value"];
        gdc::DebugTreeValue::DebugTreeValue(v10, [v7 longLongValue]);
      }

      else if ([v6 isEqualToString:@"Unsigned Number"])
      {
        v7 = [v3 objectForKey:@"Value"];
        gdc::DebugTreeValue::DebugTreeValue(v10, [v7 unsignedLongLongValue]);
      }

      else if ([v6 isEqualToString:@"Double"])
      {
        v7 = [v3 objectForKey:@"Value"];
        [v7 doubleValue];
        gdc::DebugTreeValue::DebugTreeValue(v10, v8);
      }

      else
      {
        if (![v6 isEqualToString:@"Boolean"])
        {
LABEL_17:
          *&retstr->var0.var0 = v14[0];
          *(&retstr->var0.var1.var0.var1 + 1) = *(v14 + 9);
          *retstr->var0.var1.var0.var4.__rep_.__s.__data_ = *__p;
          *(&retstr->var0.var1.var0.var4.__rep_.__l + 2) = v16;
          retstr->var1 = v17;
          retstr[1].var0.var0 = 1;

          goto LABEL_18;
        }

        v7 = [v3 objectForKey:@"Value"];
        gdc::DebugTreeValue::DebugTreeValue(v10, [v7 BOOLValue]);
      }

      v14[0] = *v10;
      *(v14 + 9) = *&v10[9];
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v11;
      v16 = v12;
      HIBYTE(v12) = 0;
      LOBYTE(v11) = 0;
      v17 = v13;

      goto LABEL_17;
    }
  }

  retstr->var0.var0 = 0;
  retstr[1].var0.var0 = 0;
LABEL_18:

  return result;
}

- (id)_serializeValue:(const void *)value
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"Value" forKey:@"Type"];
  v5 = *(value + 14);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_20;
      }

      [dictionary setObject:@"Unsigned Number" forKey:@"Value Type"];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(value + 1)];
      [dictionary setObject:v9 forKey:@"Value"];
    }

    else
    {
      [dictionary setObject:@"Number" forKey:@"Value Type"];
      v9 = [MEMORY[0x1E696AD98] numberWithLongLong:*value];
      [dictionary setObject:v9 forKey:@"Value"];
    }

    goto LABEL_19;
  }

  switch(v5)
  {
    case 2:
      [dictionary setObject:@"Double" forKey:@"Value Type"];
      v9 = [MEMORY[0x1E696AD98] numberWithDouble:*(value + 2)];
      [dictionary setObject:v9 forKey:@"Value"];
LABEL_19:

      break;
    case 3:
      [dictionary setObject:@"Boolean" forKey:@"Value Type"];
      if (geo::codec::VectorTile::hasComputedJunctions(*(value + 24)))
      {
        v10 = @"True";
      }

      else
      {
        v10 = @"False";
      }

      [dictionary setObject:v10 forKey:@"Value"];
      break;
    case 4:
      [dictionary setObject:@"String" forKey:@"Value Type"];
      v6 = MEMORY[0x1E696AEC0];
      gdc::DebugTreeValue::string(&__p, value);
      v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v8 = [v6 stringWithUTF8String:v7];
      [dictionary setObject:v8 forKey:@"Value"];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      break;
  }

LABEL_20:

  return dictionary;
}

- (id)logTree
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v12);
  *(&v14[0].__locale_ + *(v12 - 24)) = 10;
  [(VKDebugTree *)self _outputTree:&v12];
  v3 = MEMORY[0x1E696AEC0];
  if ((v19 & 0x10) != 0)
  {
    v5 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v5 = v15;
    }

    locale = v14[4].__locale_;
  }

  else
  {
    if ((v19 & 8) == 0)
    {
      v4 = 0;
      HIBYTE(v11) = 0;
      goto LABEL_14;
    }

    locale = v14[1].__locale_;
    v5 = v14[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v11) = v5 - locale;
  if (v4)
  {
    memmove(__p, locale, v4);
  }

LABEL_14:
  *(__p + v4) = 0;
  if (v11 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = [v3 stringWithUTF8String:{v7, __p[0], __p[1], v11}];
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&v20);

  return v8;
}

- (void)replaceInternalData:(const void *)data
{
  p_debugTree = &self->_debugTree;
  std::string::operator=(&self->_debugTree, data);
  std::string::operator=(&self->_debugTree.var0, data + 1);
  if (p_debugTree != data)
  {
    std::vector<gdc::DebugTreeNode>::__assign_with_size[abi:nn200100]<gdc::DebugTreeNode*,gdc::DebugTreeNode*>(&self->_anon_28[16], *(data + 6), *(data + 7), 0xAAAAAAAAAAAAAAABLL * ((*(data + 7) - *(data + 6)) >> 5));
    v6 = *(data + 9);
    v7 = *(data + 10);

    std::vector<gdc::DebugTreeProperty>::__assign_with_size[abi:nn200100]<gdc::DebugTreeProperty*,gdc::DebugTreeProperty*>(&self->_anon_28[40], v6, v7, 0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 4));
  }
}

- (void)populateData:(id)data
{
  dataCopy = data;
  std::string::basic_string[abi:nn200100]<0>(v6, "Root");
  gdc::DebugTreeNode::DebugTreeNode(v8, v6);
  if (*(&self->_debugTree._name.__rep_.__l + 23) < 0)
  {
    operator delete(self->_debugTree._name.__rep_.__l.__data_);
  }

  *self->_debugTree._name.__rep_.__s.__data_ = *v8;
  *(&self->_debugTree._name.__rep_.__l + 2) = v9;
  HIBYTE(v9) = 0;
  LOBYTE(v8[0]) = 0;
  if (self->_anon_28[15] < 0)
  {
    operator delete(*&self->_debugTree.var0);
  }

  *&self->_debugTree.var0 = *__p;
  *&self->_anon_28[8] = v11;
  HIBYTE(v11) = 0;
  LOBYTE(__p[0]) = 0;
  std::vector<gdc::DebugTreeNode>::__vdeallocate(&self->_anon_28[16]);
  *&self->_anon_28[16] = v12;
  *&self->_anon_28[32] = v13;
  v13 = 0;
  v12 = 0uLL;
  std::vector<gdc::DebugTreeProperty>::__vdeallocate(&self->_anon_28[40]);
  *&self->_anon_28[40] = v14;
  *&self->_anon_28[56] = v15;
  v15 = 0;
  v14 = 0uLL;
  v16 = &v14;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v16);
  v16 = &v12;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v16);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v8, "Map View");
  ChildNode = gdc::DebugTreeNode::createChildNode(&self->_debugTree._name.__rep_.__l.__data_, v8);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  [dataCopy populateDebugNode:ChildNode withOptions:&self->_options];
}

- (void)_populateData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = *&self->_anon_28[16];
  for (i = *&self->_anon_28[24]; v4 != i; v4 += 96)
  {
    v6 = [[VKDebugTreeDataNode alloc] initWithDebugTreeNode:v4 withParent:0];
    [(VKDebugTreeDataNode *)v6 buildChildren];
    [(NSArray *)v3 addObject:v6];
  }

  nodes = self->_nodes;
  self->_nodes = v3;
}

- (void)setOption:(unint64_t)option value:(BOOL)value
{
  if (option >= 8)
  {
    abort();
  }

  v4 = 1 << option;
  if (value)
  {
    v5 = self->_options.__first_ | v4;
  }

  else
  {
    v5 = self->_options.__first_ & ~v4;
  }

  self->_options.__first_ = v5;
}

- (void)setOptions:(id)options
{
  optionsCopy = options;
  if (optionsCopy)
  {
    for (i = 0; i != 8; ++i)
    {
      v5 = [&unk_1F2A885C0 objectAtIndex:i];
      v6 = [optionsCopy containsObject:v5];

      if (v6)
      {
        self->_options.__first_ |= 1 << i;
      }
    }
  }
}

@end