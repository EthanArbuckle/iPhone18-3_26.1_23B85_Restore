@interface UPUsoSerializer
+ (id)_convertBundleIdToEntity:(id)a3;
+ (id)_groupHigherLevelEntities:(id)a3;
+ (id)_intermediateNodeRepresentations:()vector<std:(std:()std:(std::reference_wrapper<const siri::ontology::UsoGraphEdge>>>> *)a3 :allocator<std::pair<std::reference_wrapper<siri::ontology::UsoGraphNode> :reference_wrapper<const)siri::ontology::UsoGraphEdge>> :pair<std::reference_wrapper<siri::ontology::UsoGraphNode>;
+ (id)_leafNodeFromGraphEdge:(const void *)a3 andGraphNode:(const UsoGraphNode *)a4;
+ (id)_leafNodeFromLabel:(id)a3 andGraphSemanticValueNode:(const void *)a4;
+ (id)_leafNodeFromLabel:(id)a3 andGraphStringNode:(const void *)a4;
- (UPUsoSerializer)init;
- (id).cxx_construct;
- (id)deserializeFromSerializedGraph:(id)a3;
- (id)serializeFromIntent:(id)a3 andEntities:(id)a4 forBundleId:(id)a5;
- (void)_addPathForLabel:(id)a3 range:(_NSRange)a4 text:(id)a5 semanticValue:(id)a6 sharedEntityGraph:(id)a7 toGraphNode:(UsoGraphNode *)a8 forGraph:(void *)a9;
- (void)_attachSharedEntity:(id)a3 withCustomEntityEdge:(const void *)a4 toGraphNode:(UsoGraphNode *)a5 forGraph:(void *)a6;
- (void)_insertHigherLevelEntities:(id)a3 intoGraph:(void *)a4 underTaskNode:(UsoGraphNode *)a5;
- (void)_insertSimpleEntity:(id)a3 intoGraph:(void *)a4 underTaskNode:(UsoGraphNode *)a5;
@end

@implementation UPUsoSerializer

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)_attachSharedEntity:(id)a3 withCustomEntityEdge:(const void *)a4 toGraphNode:(UsoGraphNode *)a5 forGraph:(void *)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager([MEMORY[0x277D5DF00] convertUsoGraphFromObjCToCpp:v7]);
  v10 = *SharedUsoVocabManager;
  v9 = SharedUsoVocabManager[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v29 = v10;
    v30 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  else
  {
    v29 = v10;
    v30 = 0;
  }

  siri::ontology::UsoGraphProtoReader::fromProtobuf(&v28, &v29, v31);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
  siri::ontology::UsoGraph::prettyPrint();
  v11 = SNLPOSLoggerForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    std::stringbuf::str();
    v12 = v22 >= 0 ? &__p : __p;
    *buf = 136642819;
    v33 = v12;
    _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "Attaching shared entity graph: %{sensitive}s", buf, 0xCu);
    if (v22 < 0)
    {
      operator delete(__p);
    }
  }

  siri::ontology::UsoGraph::getSuccessors(&__p, *(*(v28 + 11) + 8), *(v28 + 11));
  if (v21 - __p != 8)
  {
    v16 = SNLPOSLoggerForCategory(3);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v17 = "The shared entity graph does not have a single, unique entity below the root: skipping";
LABEL_20:
    _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_21;
  }

  v13 = *__p;
  if ((*(**__p + 16))(*__p) != 2)
  {
    v16 = SNLPOSLoggerForCategory(3);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v17 = "The shared entity graph does not have an entity node";
    goto LABEL_20;
  }

  v14 = **v13;
  if (v15)
  {
    siri::ontology::UsoGraph::deepCopyToGraph(v28, v15, a6);
    siri::ontology::UsoGraphNode::setSuccessor();
    goto LABEL_22;
  }

  v16 = SNLPOSLoggerForCategory(3);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v17 = "The entity node could not be dynamically cast to a UsoEntityNode";
    goto LABEL_20;
  }

LABEL_21:

LABEL_22:
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  v23 = *MEMORY[0x277D82828];
  *(&v23 + *(v23 - 24)) = *(MEMORY[0x277D82828] + 24);
  v24 = MEMORY[0x277D82878] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v25);
  std::ostream::~ostream();
  MEMORY[0x223DC4C10](&v27);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v28);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v18 = v31;
  v31 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_addPathForLabel:(id)a3 range:(_NSRange)a4 text:(id)a5 semanticValue:(id)a6 sharedEntityGraph:(id)a7 toGraphNode:(UsoGraphNode *)a8 forGraph:(void *)a9
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  ptr = self->_usoVocabManager.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v13 UTF8String]);
  siri::ontology::UsoVocabManager::createCustomEdgeName();
  if (v19 < 0)
  {
    operator delete(__p);
  }

  operator new();
}

- (void)_insertHigherLevelEntities:(id)a3 intoGraph:(void *)a4 underTaskNode:(UsoGraphNode *)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v22 = a3;
  [objc_opt_class() _groupHigherLevelEntities:v22];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  obj = v49 = 0u;
  v23 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v23)
  {
    v24 = *v49;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v48 + 1) + 8 * i);
        v5 = [obj objectForKey:?];
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v29 = v5;
        v28 = [v29 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v28)
        {
          v27 = *v45;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v45 != v27)
              {
                objc_enumerationMutation(v29);
              }

              v32 = [v29 objectForKey:*(*(&v44 + 1) + 8 * j)];
              ptr = self->_usoVocabManager.__ptr_;
              v43 = 19;
              strcpy(__p, "unknownCustomEntity");
              siri::ontology::UsoVocabManager::createCustomEntityName();
              if (v43 < 0)
              {
                operator delete(*__p);
              }

              v7 = self->_usoVocabManager.__ptr_;
              v8 = v30;
              std::string::basic_string[abi:ne200100]<0>(&v40, [v30 UTF8String]);
              siri::ontology::UsoVocabManager::createCustomEdgeName();
              if (v41 < 0)
              {
                operator delete(v40);
              }

              EntityNode = siri::ontology::UsoGraph::createEntityNode();
              siri::ontology::UsoGraphNode::setSuccessor();
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              v33 = v32;
              v10 = [v33 countByEnumeratingWithState:&v36 objects:v52 count:16];
              if (v10)
              {
                v11 = *v37;
                do
                {
                  for (k = 0; k != v10; ++k)
                  {
                    if (*v37 != v11)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v13 = *(*(&v36 + 1) + 8 * k);
                    v14 = [v13 higherLevelChildLabel];
                    v15 = [v13 range];
                    v17 = v16;
                    v18 = [v13 text];
                    v19 = [v13 semanticValue];
                    v20 = [v13 sharedEntityGraph];
                    [(UPUsoSerializer *)self _addPathForLabel:v14 range:v15 text:v17 semanticValue:v18 sharedEntityGraph:v19 toGraphNode:v20 forGraph:EntityNode, a4, v22];
                  }

                  v10 = [v33 countByEnumeratingWithState:&v36 objects:v52 count:16];
                }

                while (v10);
              }
            }

            v28 = [v29 countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v28);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v23);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_insertSimpleEntity:(id)a3 intoGraph:(void *)a4 underTaskNode:(UsoGraphNode *)a5
{
  v15 = a3;
  v8 = [v15 label];
  v9 = [v15 range];
  v11 = v10;
  v12 = [v15 text];
  v13 = [v15 semanticValue];
  v14 = [v15 sharedEntityGraph];
  [(UPUsoSerializer *)self _addPathForLabel:v8 range:v9 text:v11 semanticValue:v12 sharedEntityGraph:v13 toGraphNode:v14 forGraph:a5, a4];
}

- (id)deserializeFromSerializedGraph:(id)a3
{
  v4 = a3;
  cntrl = self->_usoVocabManager.__cntrl_;
  ptr = self->_usoVocabManager.__ptr_;
  v44 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v42 = 0;
  if (v4)
  {
    [v4 toCppUsoGraph:&ptr withError:&v42];
    v6 = v42;
    cntrl = v44;
    if (!v44)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  v45 = 0;
  if (cntrl)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

LABEL_6:
  v7 = *(v45 + 88);
  v32 = v6;
  siri::ontology::oname::graph::ontology_init::Argument_task(cntrl);
  v8 = *(v7 + 8);
  siri::ontology::UsoGraph::getSuccessors();
  if (v41 == v40)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v9 = ***v40;
  if (!v10)
  {
    __cxa_bad_cast();
  }

  v11 = v10;
  var1 = v10[4].var1;
  v13 = (var1 + 8);
  if (*(var1 + 31) < 0)
  {
    v13 = *v13;
  }

  v30 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  siri::ontology::UsoGraph::getSuccessorsWithEdges(&v38, v11->var1, v11);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = v38;
  v15 = v39;
  if (v38 != v39)
  {
    do
    {
      v17 = *v16;
      (*(**v16 + 48))(__p, *v16);
      if ((*(*v17 + 16))(v17) == 2)
      {
        v18 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v18 = __p[1];
        }

        if (v18 == 19)
        {
          v19 = __p;
          if ((v37 & 0x80u) != 0)
          {
            v19 = __p[0];
          }

          v20 = *v19;
          v21 = v19[1];
          v22 = *(v19 + 11);
          if (v20 == 0x436E776F6E6B6E75 && v21 == 0x746E456D6F747375 && v22 == 0x797469746E456D6FLL)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::reference_wrapper<siri::ontology::UsoGraphNode>,std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>>(1uLL);
          }
        }
      }

      v25 = [UPUsoSerializer _leafNodeFromGraphEdge:v16[1] andGraphNode:*v16, v30];
      [v14 addObject:v25];

      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      v16 += 2;
    }

    while (v16 != v15);
  }

  v26 = [UPResultRootNode alloc];
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v27 = [UPUsoSerializer _intermediateNodeRepresentations:&v33, v30];
  v28 = [(UPResultRootNode *)v26 initWithLabel:v31 intermediateNodes:v27 directLeafNodes:v14];

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v45);

  return v28;
}

- (id)serializeFromIntent:(id)a3 andEntities:(id)a4 forBundleId:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v14 = a4;
  v9 = a5;
  *(&v17.__r_.__value_.__s + 23) = 19;
  strcpy(&v17, "unknownCustomEntity");
  if ([v9 length])
  {
    v10 = [UPUsoSerializer _convertBundleIdToEntity:v9];
    MEMORY[0x223DC46D0](&v17, [v10 UTF8String]);
  }

  v11 = v8;
  std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
  ptr = self->_usoVocabManager.__ptr_;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v17;
  }

  siri::ontology::UsoVocabManager::createCustomEntityName();
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  operator new();
}

- (UPUsoSerializer)init
{
  v8.receiver = self;
  v8.super_class = UPUsoSerializer;
  v2 = [(UPUsoSerializer *)&v8 init];
  SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager(v2);
  v5 = *SharedUsoVocabManager;
  v4 = SharedUsoVocabManager[1];
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  cntrl = v2->_usoVocabManager.__cntrl_;
  v2->_usoVocabManager.__ptr_ = v5;
  v2->_usoVocabManager.__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  return v2;
}

+ (id)_leafNodeFromLabel:(id)a3 andGraphSemanticValueNode:(const void *)a4
{
  v5 = a3;
  siri::ontology::oname::graph::ontology_init::Argument_stringValue(v5);
  v6 = *(a4 + 1);
  siri::ontology::UsoGraph::getSuccessors();
  if (v18 == v17)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (*v17 + 104));
  if ((v16 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v9 = __p.__r_.__value_.__r.__words[0];
  v10 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v9;
  }

  v12 = [v7 stringWithCString:p_p encoding:v10];
  v13 = [[UPResultLeafNode alloc] initWithLabel:v5 andText:0 andSemanticValue:v12];

  if (v16 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return v13;
}

+ (id)_leafNodeFromLabel:(id)a3 andGraphStringNode:(const void *)a4
{
  v5 = a3;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (a4 + 104));
  if ((v15 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v8 = __p.__r_.__value_.__r.__words[0];
  v9 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v7 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v8;
  }

  v11 = [v6 stringWithCString:p_p encoding:v9];
  v12 = [[UPResultLeafNode alloc] initWithLabel:v5 andText:v11 andSemanticValue:0];

  if (v15 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v12;
}

+ (id)_convertBundleIdToEntity:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"." withString:@"_"];

  return v3;
}

+ (id)_groupHigherLevelEntities:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v22;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 higherLevelParentLabel];
        v10 = [v3 objectForKey:v9];
        v11 = v10 == 0;

        if (v11)
        {
          v12 = [MEMORY[0x277CBEB38] dictionary];
          [v3 setObject:v12 forKey:v9];
        }

        v13 = [v3 objectForKey:v9];
        v14 = [v8 groupId];
        if (v14)
        {
          [v8 groupId];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithLong:0x7FFFFFFFFFFFFFFFLL];
        }
        v15 = ;

        v16 = [v13 objectForKey:v15];
        v17 = v16 == 0;

        if (v17)
        {
          v18 = [MEMORY[0x277CBEB18] array];
          [v13 setObject:v18 forKey:v15];
        }

        v19 = [v13 objectForKey:v15];
        [v19 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_intermediateNodeRepresentations:()vector<std:(std:()std:(std::reference_wrapper<const siri::ontology::UsoGraphEdge>>>> *)a3 :allocator<std::pair<std::reference_wrapper<siri::ontology::UsoGraphNode> :reference_wrapper<const)siri::ontology::UsoGraphEdge>> :pair<std::reference_wrapper<siri::ontology::UsoGraphNode>
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  var0 = a3->var0;
  var1 = a3->var1;
  if (a3->var0 != var1)
  {
    do
    {
      v7 = var0[1];
      v8 = v7 + 4;
      if (*(v7 + 55) < 0)
      {
        v8 = *v8;
      }

      v9 = *var0;
      v10 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
      v11 = **v9;
      if (!v12)
      {
        __cxa_bad_cast();
      }

      v13 = v12;
      v14 = [MEMORY[0x277CBEB18] array];
      siri::ontology::UsoGraph::getSuccessorsWithEdges(&v20, v13[1], v13);
      v16 = v20;
      v15 = v21;
      if (v20 != v21)
      {
        do
        {
          v17 = [UPUsoSerializer _leafNodeFromGraphEdge:v16[1] andGraphNode:*v16];
          [v14 addObject:v17];

          v16 += 2;
        }

        while (v16 != v15);
        v16 = v20;
      }

      if (v16)
      {
        v21 = v16;
        operator delete(v16);
      }

      v18 = [[UPResultIntermediateNode alloc] initWithLabel:v10 andLeafNodes:v14];
      [v4 addObject:v18];

      var0 += 2;
    }

    while (var0 != var1);
  }

  return v4;
}

+ (id)_leafNodeFromGraphEdge:(const void *)a3 andGraphNode:(const UsoGraphNode *)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3 + 32;
  v7 = *(a3 + 4);
  v8 = *(a3 + 55);
  v9 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v8 >= 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v11 = [v5 stringWithCString:v10 encoding:v9];
  if ((*(a4->var0 + 2))(a4) == 3)
  {
    [UPUsoSerializer _leafNodeFromLabel:v11 andGraphStringNode:a4];
  }

  else
  {
    [UPUsoSerializer _leafNodeFromLabel:v11 andGraphSemanticValueNode:a4];
  }
  v12 = ;

  return v12;
}

@end