@interface USOSerializedGraph
- (NSString)printedForm;
- (USOSerializedGraph)initWithCoder:(id)a3;
- (USOSerializedGraph)initWithNodes:(id)a3 edges:(id)a4;
- (USOSerializedGraph)initWithNodes:(id)a3 edges:(id)a4 identifiers:(id)a5 alignments:(id)a6;
- (USOSerializedGraph)initWithUsoGraph:(const void *)a3 withError:(id *)a4;
- (const)getOrCreateEdgeName:(id)a3 withVocabManager:(shared_ptr<siri:(id *)a5 :ontology::UsoVocabManager>)a4 withError:;
- (const)getOrCreateNodeName:(id)a3 withVocabManager:(shared_ptr<siri:(id *)a5 :ontology::UsoVocabManager>)a4 withError:;
- (const)getOrCreateVerbName:(id)a3 withVocabManager:(shared_ptr<siri:(id *)a5 :ontology::UsoVocabManager>)a4 withError:;
- (id)createSerializedNode:(const UsoGraphNode *)a3 withError:(id *)a4;
- (id)getIdentifiersIfExists:(const UsoGraphNode *)a3 nodeIndex:(unint64_t)a4;
- (id)getUtteranceAlignmentsIfExists:(const UsoGraphNode *)a3 nodeIndex:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USOSerializedGraph

- (NSString)printedForm
{
  if (!self->_printedForm)
  {
    siri::ontology::getSharedUsoVocabManager(self);
    v3 = siri::ontology::getSharedUsoVocabManager(void)::inst;
    v4 = unk_1EBE27900;
    if (unk_1EBE27900)
    {
      atomic_fetch_add_explicit((unk_1EBE27900 + 8), 1uLL, memory_order_relaxed);
      v19 = v4;
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v19 = 0;
    }

    v18 = v3;
    [(USOSerializedGraph *)self toCppUsoGraph:&v18 withError:0];
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
    if (v20)
    {
      siri::ontology::UsoGraph::prettyPrint(v20, &v13);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "", 0);
    v5 = MEMORY[0x1E696AEC0];
    std::stringbuf::str();
    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v7 = [v5 stringWithUTF8String:p_p];
    printedForm = self->_printedForm;
    self->_printedForm = v7;

    if (v12 < 0)
    {
      operator delete(__p);
    }

    v13 = *MEMORY[0x1E69E54E8];
    *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v14 = MEMORY[0x1E69E5548] + 16;
    if (v16 < 0)
    {
      operator delete(v15[7].__locale_);
    }

    v14 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v15);
    std::ostream::~ostream();
    MEMORY[0x1C68DE150](&v17);
    std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v20);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v9 = self->_printedForm;

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(USOSerializedGraph *)self nodes];
  [v9 encodeObject:v4 forKey:@"nodes"];

  v5 = [(USOSerializedGraph *)self edges];
  [v9 encodeObject:v5 forKey:@"edges"];

  v6 = [(USOSerializedGraph *)self identifiers];
  [v9 encodeObject:v6 forKey:@"identifiers"];

  v7 = [(USOSerializedGraph *)self alignments];
  [v9 encodeObject:v7 forKey:@"alignments"];

  v8 = [(USOSerializedGraph *)self printedForm];
  [v9 encodeObject:v8 forKey:@"printedForm"];
}

- (USOSerializedGraph)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = USOSerializedGraph;
  v5 = [(USOSerializedGraph *)&v30 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"nodes"];
    nodes = v5->_nodes;
    v5->_nodes = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"edges"];
    edges = v5->_edges;
    v5->_edges = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"identifiers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"alignments"];
    alignments = v5->_alignments;
    v5->_alignments = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"printedForm"];
    printedForm = v5->_printedForm;
    v5->_printedForm = v26;

    v28 = v5;
  }

  return v5;
}

- (const)getOrCreateEdgeName:(id)a3 withVocabManager:(shared_ptr<siri:(id *)a5 :ontology::UsoVocabManager>)a4 withError:
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v8 = [v7 usoElementId];
  v9 = *var0;
  if (v8)
  {
    EdgeName = siri::ontology::UsoVocabManager::getEdgeName(v9, v8);
    if (v11)
    {
      CustomEdgeName = EdgeName;
    }

    else
    {
      if (var1)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid edge element id: %d", v8];
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObject:v16 forKey:*MEMORY[0x1E696A578]];
        *var1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"USOSerializedGraphErrorDomain" code:5 userInfo:v17];
      }

      CustomEdgeName = 0;
    }
  }

  else
  {
    v13 = [v7 edgeLabel];
    v14 = [v13 UTF8String];
    v15 = [v7 edgeLabel];
    std::string::basic_string[abi:ne200100](__p, v14, [v15 lengthOfBytesUsingEncoding:4]);
    CustomEdgeName = siri::ontology::UsoVocabManager::createCustomEdgeName(v9, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return CustomEdgeName;
}

- (const)getOrCreateVerbName:(id)a3 withVocabManager:(shared_ptr<siri:(id *)a5 :ontology::UsoVocabManager>)a4 withError:
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v8 = [v7 usoVerbId];
  v9 = [v8 intValue];

  v10 = *var0;
  if (v9)
  {
    VerbName = siri::ontology::UsoVocabManager::getVerbName(v10, v9);
    if (v12)
    {
      CustomVerbName = VerbName;
    }

    else
    {
      if (var1)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid verb element id: %d", v9];
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObject:v17 forKey:*MEMORY[0x1E696A578]];
        *var1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"USOSerializedGraphErrorDomain" code:6 userInfo:v18];
      }

      CustomVerbName = 0;
    }
  }

  else
  {
    v14 = [v7 verbLabel];
    v15 = [v14 UTF8String];
    v16 = [v7 verbLabel];
    std::string::basic_string[abi:ne200100](__p, v15, [v16 lengthOfBytesUsingEncoding:4]);
    CustomVerbName = siri::ontology::UsoVocabManager::createCustomVerbName(v10, __p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return CustomVerbName;
}

- (const)getOrCreateNodeName:(id)a3 withVocabManager:(shared_ptr<siri:(id *)a5 :ontology::UsoVocabManager>)a4 withError:
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v8 = [v7 usoElementId];
  v9 = *var0;
  if (v8)
  {
    v10 = siri::ontology::UsoVocabManager::getOntologyName<siri::ontology::OntologyNodeName>(v9, v8);
    if (v11)
    {
      CustomEntityName = v10;
    }

    else
    {
      if (var1)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid node element id: %d", v8];
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObject:v16 forKey:*MEMORY[0x1E696A578]];
        *var1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"USOSerializedGraphErrorDomain" code:5 userInfo:v17];
      }

      CustomEntityName = 0;
    }
  }

  else
  {
    v13 = [v7 entityLabel];
    v14 = [v13 UTF8String];
    v15 = [v7 entityLabel];
    std::string::basic_string[abi:ne200100](__p, v14, [v15 lengthOfBytesUsingEncoding:4]);
    CustomEntityName = siri::ontology::UsoVocabManager::createCustomEntityName(v9, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return CustomEntityName;
}

- (USOSerializedGraph)initWithUsoGraph:(const void *)a3 withError:(id *)a4
{
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 1065353216;
  v32 = a3;
  siri::ontology::UsoGraph::getNodes(a3, &v40);
  v6 = v40;
  v7 = v41;
  if (v40 == v41)
  {
    goto LABEL_24;
  }

  v8 = 0;
  v33 = &v43;
  v9 = v40;
  v36 = v40;
  do
  {
    v10 = *v9;
    v11 = [(USOSerializedGraph *)self createSerializedNode:*v9 withError:a4, v32, v33];
    if (!v11)
    {
      goto LABEL_43;
    }

    [obj addObject:v11];
    v12 = [(USOSerializedGraph *)self getIdentifiersIfExists:v10 nodeIndex:v8];
    [v38 addObjectsFromArray:v12];

    v13 = [(USOSerializedGraph *)self getUtteranceAlignmentsIfExists:v10 nodeIndex:v8];
    if (v13)
    {
      [v35 addObject:v13];
    }

    v14 = *(v10 + 16);
    if (!*(&v42 + 1))
    {
      goto LABEL_22;
    }

    v15 = vcnt_s8(*(&v42 + 8));
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = *(v10 + 16);
      if (v14 >= *(&v42 + 1))
      {
        v16 = v14 % *(&v42 + 1);
      }
    }

    else
    {
      v16 = (*(&v42 + 1) - 1) & v14;
    }

    v17 = *(v42 + 8 * v16);
    if (!v17 || (v18 = *v17) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v19 = v18[1];
      if (v19 == v14)
      {
        break;
      }

      if (v15.u32[0] > 1uLL)
      {
        if (v19 >= *(&v42 + 1))
        {
          v19 %= *(&v42 + 1);
        }
      }

      else
      {
        v19 &= *(&v42 + 1) - 1;
      }

      if (v19 != v16)
      {
        goto LABEL_22;
      }

LABEL_21:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    if (v18[2] != v14)
    {
      goto LABEL_21;
    }

    ++v8;

    ++v9;
    v6 = v36;
  }

  while (v9 != v7);
LABEL_24:
  if (v6)
  {
    operator delete(v6);
  }

  siri::ontology::UsoGraph::getEdges(v32, &v40);
  v6 = v40;
  v20 = v41;
  if (v40 == v41)
  {
LABEL_35:
    if (v6)
    {
      operator delete(v6);
    }

    objc_storeStrong(&self->_nodes, obj);
    objc_storeStrong(&self->_edges, v34);
    objc_storeStrong(&self->_identifiers, v38);
    objc_storeStrong(&self->_alignments, v35);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
    siri::ontology::UsoGraph::prettyPrint(v32, &v40);
  }

  v21 = v40;
  while (1)
  {
    v22 = *v21;
    v23 = v42;
    v24 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v42, *(&v42 + 1), **v21);
    if (!v24)
    {
      if (!a4)
      {
        goto LABEL_43;
      }

      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"USOSerializedGraphErrorDomain" code:1 userInfo:0];
      goto LABEL_42;
    }

    v25 = v24;
    v26 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v23, *(&v23 + 1), v22[1]);
    if (!v26)
    {
      break;
    }

    v27 = [[USOSerializedGraphEdge alloc] initWithUsoElementId:*(v22 + 15) fromVertex:v25[3] toVertex:v26[3] enumeration:*(v22 + 4)];
    if (!*(v22 + 15))
    {
      v28 = v22 + 4;
      if (*(v22 + 55) < 0)
      {
        v28 = *v28;
      }

      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v28, v32}];
      [(USOSerializedGraphEdge *)v27 setEdgeLabel:v29];
    }

    [v34 addObject:{v27, v32}];

    if (++v21 == v20)
    {
      goto LABEL_35;
    }
  }

  if (!a4)
  {
    goto LABEL_43;
  }

  v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"USOSerializedGraphErrorDomain" code:2 userInfo:0];
LABEL_42:
  *a4 = v30;
LABEL_43:
  if (v6)
  {
    operator delete(v6);
  }

  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&v42);

  return 0;
}

- (id)createSerializedNode:(const UsoGraphNode *)a3 withError:(id *)a4
{
  v6 = objc_alloc_init(USOSerializedGraphNode);
  v7 = (*(a3->var0 + 2))(a3);
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v19 = *a3->var0;
        if (!v20)
        {
          __cxa_bad_cast();
        }

        v21 = v20;
        [(USOSerializedGraphNode *)v6 setUsoElementId:*(v20[3] + 36)];
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (v21 + 13));
        if (v41 == 1)
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v22 = MEMORY[0x1E696AEC0];
          std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (v21 + 13));
          if ((v41 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v24 = [v22 stringWithUTF8String:p_p];
          [(USOSerializedGraphNode *)v6 setStringPayload:v24];

          if (v41 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_45;
      case 4:
        v36 = *a3->var0;
        if (!v37)
        {
          __cxa_bad_cast();
        }

        v38 = v37;
        [(USOSerializedGraphNode *)v6 setUsoElementId:*(v37[3] + 36)];
        if ((v38[14] & 1) == 0)
        {
          goto LABEL_45;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v38[13]];
        [(USOSerializedGraphNode *)v6 setIntegerPayload:v14];
        goto LABEL_44;
      case 5:
        v15 = *a3->var0;
        if (!v16)
        {
          __cxa_bad_cast();
        }

        v17 = v16;
        [(USOSerializedGraphNode *)v6 setUsoElementId:*(v16[3] + 36)];
        v18 = v17[3];
        if (*(v18 + 36))
        {
          goto LABEL_45;
        }

        v12 = MEMORY[0x1E696AEC0];
        v13 = (v18 + 8);
        if (*(v18 + 31) < 0)
        {
          v13 = *v13;
        }

LABEL_9:
        v14 = [v12 stringWithUTF8String:v13];
        [(USOSerializedGraphNode *)v6 setEntityLabel:v14];
LABEL_44:

LABEL_45:
        v26 = v6;
        goto LABEL_46;
    }
  }

  else
  {
    switch(v7)
    {
      case 0:
        goto LABEL_5;
      case 1:
        v27 = *a3->var0;
        if (!v28)
        {
          __cxa_bad_cast();
        }

        v29 = v28;
        [(USOSerializedGraphNode *)v6 setUsoElementId:*(v28[3] + 36)];
        v30 = v29[3];
        if (!*(v30 + 36))
        {
          v31 = (v30 + 8);
          if (*(v30 + 31) < 0)
          {
            v31 = *v31;
          }

          v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v31];
          [(USOSerializedGraphNode *)v6 setEntityLabel:v32];
        }

        v33 = [MEMORY[0x1E696AD98] numberWithInt:*(v29[13] + 36)];
        [(USOSerializedGraphNode *)v6 setUsoVerbId:v33];

        v34 = v29[13];
        if (*(v34 + 36))
        {
          goto LABEL_45;
        }

        v35 = (v34 + 8);
        if (*(v34 + 31) < 0)
        {
          v35 = *v35;
        }

        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v35];
        [(USOSerializedGraphNode *)v6 setVerbLabel:v14];
        goto LABEL_44;
      case 2:
LABEL_5:
        v8 = *a3->var0;
        if (!v9)
        {
          __cxa_bad_cast();
        }

        v10 = v9;
        [(USOSerializedGraphNode *)v6 setUsoElementId:*(v9[3] + 36)];
        v11 = v10[3];
        if (*(v11 + 36))
        {
          goto LABEL_45;
        }

        v12 = MEMORY[0x1E696AEC0];
        v13 = (v11 + 8);
        if (*(v11 + 31) < 0)
        {
          v13 = *v13;
        }

        goto LABEL_9;
    }
  }

  if (a4)
  {
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Unknown UsoGraphNode" forKey:*MEMORY[0x1E696A578]];
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"USOSerializedGraphErrorDomain" code:4 userInfo:v25];
  }

  v26 = 0;
LABEL_46:

  return v26;
}

- (id)getUtteranceAlignmentsIfExists:(const UsoGraphNode *)a3 nodeIndex:(unint64_t)a4
{
  v5 = *a3->var0;
  if (!v6 || (v7 = v6, v6[7] == v6[8]))
  {
    v16 = 0;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    siri::ontology::UsoUtteranceAlignment::getSpans(*v7[7], &v18);
    v9 = v18;
    v10 = v19;
    if (v18 != v19)
    {
      v11 = v18;
      do
      {
        v12 = *v11;
        if (*(*v11 + 20) == 1)
        {
          v13 = v12[4];
        }

        else
        {
          v13 = 0;
        }

        if (*(v12 + 28) == 1)
        {
          v14 = v12[6];
        }

        else
        {
          v14 = 0;
        }

        v15 = [[USOSerializedUtteranceSpan alloc] initWithStartIndex:**v11 endIndex:(*v11)[1] startUnicodeScalarIndex:(*v11)[2] endUnicodeScalarIndex:(*v11)[3] startMilliSeconds:v13 endMilliSeconds:v14];
        [v8 addObject:v15];

        ++v11;
      }

      while (v11 != v10);
    }

    if (v9)
    {
      operator delete(v9);
    }

    v16 = [[USOSerializedUtteranceAlignment alloc] initWithNodeIndex:a4 asrHypothesisIndex:**v7[7] spans:v8];
  }

  return v16;
}

- (id)getIdentifiersIfExists:(const UsoGraphNode *)a3 nodeIndex:(unint64_t)a4
{
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = *a3->var0;
  if (v6)
  {
    siri::ontology::UsoEntityNode::getIdentifiers(v6, &v35);
    __p = v35;
    v30 = v36;
    if (v35 != v36)
    {
      v7 = 0x1E696A000uLL;
      v8 = 0x1E696A000uLL;
      v9 = v35;
      do
      {
        v10 = *(v7 + 3776);
        v11 = *v9;
        if (SHIBYTE((*v9)->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v33, v11->__r_.__value_.__l.__data_, v11->__r_.__value_.__l.__size_);
        }

        else
        {
          v12 = *&v11->__r_.__value_.__l.__data_;
          v33.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
          *&v33.__r_.__value_.__l.__data_ = v12;
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v33;
        }

        else
        {
          v13 = v33.__r_.__value_.__r.__words[0];
        }

        v14 = [v10 stringWithUTF8String:v13];
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        v15 = *(v7 + 3776);
        v16 = *v9;
        if (SHIBYTE((*v9)[1].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v33, v16[1].__r_.__value_.__l.__data_, v16[1].__r_.__value_.__l.__size_);
        }

        else
        {
          v33 = v16[1];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v33;
        }

        else
        {
          v17 = v33.__r_.__value_.__r.__words[0];
        }

        v18 = [v15 stringWithUTF8String:v17];
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v33, &(*v9)[2]);
        if (v34 == 1)
        {
          if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v33;
          }

          else
          {
            v19 = v33.__r_.__value_.__r.__words[0];
          }

          v20 = [*(v7 + 3776) stringWithUTF8String:v19];
          if ((v34 & 1) != 0 && SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v33.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v20 = 0;
        }

        v21 = *v9;
        if ((*v9)[3].__r_.__value_.__r.__words[2])
        {
          v22 = [*(v8 + 3480) numberWithDouble:*&v21[3].__r_.__value_.__l.__size_];
          v21 = *v9;
        }

        else
        {
          v22 = 0;
        }

        if ((v21[4].__r_.__value_.__r.__words[0] & 0x100000000) != 0)
        {
          v23 = [*(v8 + 3480) numberWithInt:?];
          v21 = *v9;
        }

        else
        {
          v23 = 0;
        }

        if ((v21[4].__r_.__value_.__l.__size_ & 0x100000000) != 0)
        {
          v24 = [*(v8 + 3480) numberWithUnsignedInt:?];
          v21 = *v9;
        }

        else
        {
          v24 = 0;
        }

        v25 = v7;
        if ((v21[4].__r_.__value_.__r.__words[2] & 0x100000000) != 0)
        {
          v26 = [*(v8 + 3480) numberWithUnsignedInt:?];
        }

        else
        {
          v26 = 0;
        }

        v27 = [[USOSerializedIdentifier alloc] initWithNodeIndex:a4 value:v14 appBundleId:v18 namespaceString:v20 probability:v22 sourceComponent:v23 groupIndex:v24 interpretationGroup:v26];
        [v32 addObject:v27];

        ++v9;
        v7 = v25;
        v8 = 0x1E696A000;
      }

      while (v9 != v30);
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  return v32;
}

- (USOSerializedGraph)initWithNodes:(id)a3 edges:(id)a4 identifiers:(id)a5 alignments:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = USOSerializedGraph;
  v15 = [(USOSerializedGraph *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_nodes, a3);
    objc_storeStrong(&v16->_edges, a4);
    objc_storeStrong(&v16->_identifiers, a5);
    objc_storeStrong(&v16->_alignments, a6);
  }

  return v16;
}

- (USOSerializedGraph)initWithNodes:(id)a3 edges:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = USOSerializedGraph;
  v9 = [(USOSerializedGraph *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nodes, a3);
    objc_storeStrong(&v10->_edges, a4);
    v11 = [MEMORY[0x1E695DEC8] array];
    identifiers = v10->_identifiers;
    v10->_identifiers = v11;

    v13 = [MEMORY[0x1E695DEC8] array];
    alignments = v10->_alignments;
    v10->_alignments = v13;
  }

  return v10;
}

@end