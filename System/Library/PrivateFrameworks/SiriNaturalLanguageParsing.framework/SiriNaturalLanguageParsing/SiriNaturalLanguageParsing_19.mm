void sub_22299AE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
    if ((v15 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v14);
  goto LABEL_8;
}

void nlv4_inference_orchestrator::trees::UsoGraphBuilder::addPayloadNode(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(*(a4 + 8) + 8 * (*(a4 + 32) / 0x1AuLL)) - 3952 * (*(a4 + 32) / 0x1AuLL) + 152 * *(a4 + 32);
  v8 = *a3;
  NodeName = siri::ontology::UsoVocabManager::getNodeName();
  if ((v10 & 1) == 0)
  {
    if ((*(**(v7 + 144) + 16))(*(v7 + 144)) == 2)
    {
      v11 = *(a1 + 176);
      v12 = *(v7 + 144);
      v13 = **v12;
      if (!v14)
      {
        __cxa_bad_cast();
      }

      v15 = std::__find[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::string,std::__identity>(v11, (v14[3] + 8)) != 0;
    }

    else
    {
      v15 = 0;
    }

    v16 = std::__find[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::string,std::__identity>(*(a1 + 216), (v7 + 48));
    if (!v15 && !v16)
    {
      nlv4_inference_orchestrator::trees::UsoGraphBuilder::addStringPayloadNode(0, a2, a4);
    }

    nlv4_inference_orchestrator::trees::UsoGraphBuilder::addIntegerPayloadNode(v16, a2, a4);
  }

  nlv4_inference_orchestrator::trees::UsoGraphBuilder::addDefinedValuePayloadNode(NodeName, a2, NodeName, a4);
}

void sub_22299B034(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v9 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      a9 = 0;
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "Failed to cast entity node to entity node; SiriOntology reports a non-entity node as an entity node.", &a9, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x22299B014);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::trees::UsoGraphBuilder::addDefinedValuePayloadNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*(a4 + 8) + 8 * (*(a4 + 32) / 0x1AuLL)) - 3952 * (*(a4 + 32) / 0x1AuLL) + 152 * *(a4 + 32));
  EntityNode = siri::ontology::UsoGraph::createEntityNode();
  v7 = v5[18];
  siri::ontology::UsoGraphNode::setSuccessor();
  v8 = v5[11];
  for (i = v5[12]; v8 != i; v8 = (v8 + 144))
  {
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v10, v8);
    v15[7] = EntityNode;
    std::deque<std::tuple<nlv4_inference_orchestrator::trees::TreeNode,siri::ontology::UsoGraphNode *>>::emplace_back<std::tuple<nlv4_inference_orchestrator::trees::TreeNode,siri::ontology::UsoEntityNode *>>(a4, &v10);
    v16 = v15;
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v16);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }
}

void nlv4_inference_orchestrator::trees::UsoGraphBuilder::addIntegerPayloadNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = (*(*(a3 + 8) + 8 * (*(a3 + 32) / 0x1AuLL)) - 3952 * (*(a3 + 32) / 0x1AuLL) + 152 * *(a3 + 32));
  std::stoi(v7 + 1, 0, 10);
  siri::ontology::UsoGraph::createIntNode();
  v3 = v7[4].__r_.__value_.__r.__words[2];
  data = v7[5].__r_.__value_.__l.__data_;
  size = v7[5].__r_.__value_.__l.__size_;
  v6 = v7[5].__r_.__value_.__r.__words[2];
  operator new();
}

void sub_22299B468(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  std::unique_ptr<siri::ontology::UsoUtteranceAlignment>::~unique_ptr[abi:ne200100](&a11);
  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    v15 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      if (*(a10 + 47) < 0)
      {
        a9 = *a9;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = a9;
      v16 = "Warning: Failed to convert string %s to integer.";
LABEL_11:
      _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEBUG, v16, &buf, 0xCu);
    }
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    __cxa_begin_catch(a1);
    v15 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      if (*(a10 + 47) < 0)
      {
        a9 = *a9;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = a9;
      v16 = "Warning: Integer %s out of range for USO integer nodes.";
      goto LABEL_11;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x22299B42CLL);
}

void nlv4_inference_orchestrator::trees::UsoGraphBuilder::addStringPayloadNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 8) + 8 * (*(a3 + 32) / 0x1AuLL)) - 3952 * (*(a3 + 32) / 0x1AuLL) + 152 * *(a3 + 32);
  if (*(v3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v3 + 24), *(v3 + 32));
  }

  else
  {
    v4 = *(v3 + 24);
    __p.__r_.__value_.__r.__words[2] = *(v3 + 40);
    *&__p.__r_.__value_.__l.__data_ = v4;
  }

  LOBYTE(v10) = 1;
  siri::ontology::UsoGraph::createStringNode();
  if (v10 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = *(v3 + 112);
  v6 = *(v3 + 120);
  v7 = *(v3 + 128);
  v8 = *(v3 + 136);
  operator new();
}

void *std::deque<std::tuple<nlv4_inference_orchestrator::trees::TreeNode,siri::ontology::UsoGraphNode *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1A;
  v3 = v1 - 26;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v10);
}

void sub_22299BD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

__n128 std::deque<std::tuple<nlv4_inference_orchestrator::trees::TreeNode,siri::ontology::UsoGraphNode *>>::emplace_back<std::tuple<nlv4_inference_orchestrator::trees::TreeNode,siri::ontology::UsoEntityNode *>>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 26 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<std::tuple<nlv4_inference_orchestrator::trees::TreeNode,siri::ontology::UsoGraphNode *>>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x1A)) - 3952 * (v8 / 0x1A) + 152 * v8;
  v10 = *a2;
  *(v9 + 16) = *(a2 + 2);
  *v9 = v10;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v11 = *(a2 + 24);
  *(v9 + 40) = *(a2 + 5);
  *(v9 + 24) = v11;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v12 = a2[3];
  *(v9 + 64) = *(a2 + 8);
  *(v9 + 48) = v12;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(v9 + 72) = *(a2 + 72);
  *(v9 + 96) = 0;
  *(v9 + 104) = 0;
  *(v9 + 88) = 0;
  *(v9 + 88) = *(a2 + 88);
  *(v9 + 104) = *(a2 + 13);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  result = a2[7];
  v14 = a2[8];
  *(v9 + 112) = result;
  *(v9 + 128) = v14;
  *(v9 + 144) = *(a2 + 18);
  ++*(a1 + 40);
  return result;
}

void sub_22299C288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_22299C774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(a1);
}

void sub_22299CEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  MEMORY[0x223DC4D00](v51, 0x10B2C40ABA1E16ELL);
  snlp::common::selflogging::NLXSchemaNLXClientEventMetadata::~NLXSchemaNLXClientEventMetadata(&a21);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a2 == 3)
  {
    v55 = __cxa_begin_catch(a1);
    v56 = MEMORY[0x277CCACA8];
    (*(*v55 + 16))(v55);
    v57 = [v56 stringWithFormat:@"Hit SNLP exception while constructing C++ orchestrator with asset directory %@: %s"];
    v58 = v57;
    if (v50)
    {
      v59 = MEMORY[0x277CCA9B8];
      v60 = *MEMORY[0x277CCA470];
      *(v52 - 200) = *MEMORY[0x277CCA450];
      *(v52 - 192) = v60;
      *(v52 - 184) = v57;
      *(v52 - 176) = v57;
      v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 - 184 forKeys:v52 - 200 count:2];
      *v50 = [v59 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:2 userInfo:v61];
    }
  }

  else
  {
    if (a2 != 2)
    {

      _Unwind_Resume(a1);
    }

    v62 = __cxa_begin_catch(a1);
    v63 = MEMORY[0x277CCACA8];
    (*(*v62 + 16))(v62);
    v64 = [v63 stringWithFormat:@"NLv4 Asset Error when creating the C++ NLv4 orchestrator: %s"];
    v58 = v64;
    if (v50)
    {
      v65 = MEMORY[0x277CCA9B8];
      v66 = *MEMORY[0x277CCA470];
      *(v52 - 168) = *MEMORY[0x277CCA450];
      *(v52 - 160) = v66;
      *(v52 - 152) = v64;
      *(v52 - 144) = v64;
      v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 - 152 forKeys:v52 - 168 count:2];
      *v50 = [v65 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:3 userInfo:v67];
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x22299CC8CLL);
}

void sub_22299E1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22299E7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  MEMORY[0x223DC4D00](v27, 0x80C40D6874129);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::SetNumberVerbReplacer::~SetNumberVerbReplacer(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::~MinimumMaximumLabeller(void **this)
{
  if (*(this + 152) == 1 && *(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::~ContactAddressDowncaster(void **this)
{
  v2 = this + 16;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 13;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 10;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::GroupNameTransform::~GroupNameTransform(void **this)
{
  v2 = this + 16;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 13;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 10;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::PersonNameSplitHack::~PersonNameSplitHack(void **this)
{
  v2 = this + 7;
  std::vector<sirinluinternal::MatchingSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 4;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::~ContactTypeSplit(void **this)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::~__hash_table((this + 18));
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::~__hash_table((this + 13));
  v2 = this + 10;
  std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t nlv4_inference_orchestrator::trees::printTree(uint64_t a1, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v21, a2);
  v27 = 0;
  std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::push_back(v28, &v21);
  v35.__locale_ = v26;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v35);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v3 = *(&v29 + 1);
  if (*(&v29 + 1))
  {
    v4 = MEMORY[0x277D82680];
    do
    {
      v5 = (*(v28[1] + 8 * ((v3 + v29 - 1) / 0x1AuLL)) - 3952 * ((v3 + v29 - 1) / 0x1AuLL) + 152 * (v3 + v29 - 1));
      nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v21, v5);
      v27 = *(v5 + 36);
      std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::pop_back(v28);
      for (i = v26[1]; i != v26[0]; std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::emplace_back<nlv4_inference_orchestrator::trees::TreeNode const&,unsigned int>(v28, i, &v35))
      {
        i = (i - 144);
        LODWORD(v35.__locale_) = v27 + 1;
      }

      v7 = (4 * v27);
      if (v7)
      {
        do
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " ", 1);
          --v7;
        }

        while (v7);
      }

      if ((v25 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v25 & 0x80u) == 0)
      {
        v9 = v25;
      }

      else
      {
        v9 = __p[1];
      }

      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, v8, v9);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v21;
      }

      else
      {
        v12 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, size);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ".", 1);
      if ((v23 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v22[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v17 = v23;
      }

      else
      {
        v17 = v22[1];
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
      std::ios_base::getloc((v18 + *(*v18 - 24)));
      v19 = std::locale::use_facet(&v35, v4);
      (v19->__vftable[2].~facet_0)(v19, 10);
      std::locale::~locale(&v35);
      std::ostream::put();
      std::ostream::flush();
      v35.__locale_ = v26;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v35);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      v3 = *(&v29 + 1);
    }

    while (*(&v29 + 1));
  }

  std::stringbuf::str();
  std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::~deque[abi:ne200100](v28);
  v30 = *MEMORY[0x277D82828];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
  v31 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  return MEMORY[0x223DC4C10](&v34);
}

void sub_22299EF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::~deque[abi:ne200100](&a29);
  std::ostringstream::~ostringstream(&a35, MEMORY[0x277D82828]);
  MEMORY[0x223DC4C10](&a49);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void uaap::AbstractDateTimeHandler::addIfPopulated(uint64_t *a1, uint64_t a2)
{
  siri::ontology::UsoGraph::getSuccessors(&v17, *(*(*a1 + 88) + 8), *(*a1 + 88));
  v4 = v17;
  v5 = v18;
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v4 != v5)
  {
    v7 = *(a2 + 8);
    v6 = *(a2 + 16);
    if (v7 >= v6)
    {
      v10 = *a2;
      v11 = v7 - *a2;
      v12 = (v11 >> 3) + 1;
      if (v12 >> 61)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v13 = v6 - v10;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (!(v14 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = (8 * (v11 >> 3));
      v16 = *a1;
      *a1 = 0;
      *v15 = v16;
      v9 = v15 + 1;
      memcpy(0, v10, v11);
      *a2 = 0;
      *(a2 + 8) = v9;
      *(a2 + 16) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      v8 = *a1;
      *a1 = 0;
      *v7 = v8;
      v9 = v7 + 1;
    }

    *(a2 + 8) = v9;
  }
}

uint64_t uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(uint64_t result, char **a2)
{
  if (result)
  {
    v2 = *a2;
    v3 = a2[1];
    if (*a2 != v3)
    {
      if (v3 - v2 == 8)
      {
        v4 = *v2;
        if (!v4)
        {
          return result;
        }

        v5 = *(v4 + 40);
        v6 = *(v4 + 44);
        return MEMORY[0x2821C3878]();
      }

      v7 = 0;
      v8 = 0x7FFFFFFF;
      do
      {
        v9 = *v2;
        if (*v2)
        {
          v11 = *(v9 + 40);
          v10 = *(v9 + 44);
          if (v11 < v8)
          {
            v8 = v11;
          }

          if (v10 > v7)
          {
            v7 = v10;
          }
        }

        v2 += 8;
      }

      while (v2 != v3);
      if (v8 < 0x7FFFFFFF)
      {
        return MEMORY[0x2821C3878]();
      }
    }
  }

  return result;
}

void snlp::common::utilities::getAlignmentUtf16StartEndIndexes(snlp::common::utilities *this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 7) == *(this + 8))
  {
    *a2 = 0;
    a2[16] = 0;
    return;
  }

  UtteranceAlignment = siri::ontology::UsoEntityNode::getUtteranceAlignment(this);
  siri::ontology::UsoUtteranceAlignment::getSpans(&v8, UtteranceAlignment);
  v5 = v8;
  if (v8 == v9)
  {
    *a2 = 0;
    a2[16] = 0;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v6 = **v8;
    *&v7 = v6;
    *(&v7 + 1) = HIDWORD(v6);
    *a2 = v7;
    a2[16] = 1;
  }

  v9 = v5;
  operator delete(v5);
}

void snlp::common::utilities::getAlignmentUtf8StartEndIndexes(snlp::common::utilities *a1@<X0>, uint64_t *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  if (v7 >= 8)
  {
    v9 = SNLPOSLoggerForCategory(4);
    v8 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "<UNDEFINED_COMPONENT>";
      *&buf[12] = 2048;
      *&buf[14] = v7;
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v8 = off_2784B6F30[v7];
  }

  v10 = strlen(v8);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v19 = v10;
  if (v10)
  {
    memcpy(&__dst, v8, v10);
  }

  *(&__dst + v11) = 0;
  snlp::common::utilities::getAlignmentUtf16StartEndIndexes(a1, buf);
  if (buf[16])
  {
    v12 = *&buf[8];
    snlp::common::utilities::getUnicodeScalarAndUtf8Offsets(a2, *buf);
    v14 = v13;
    snlp::common::utilities::getUnicodeScalarAndUtf8Offsets(a2, v12);
    *a4 = v14;
    *(a4 + 8) = v15;
    v16 = 1;
  }

  else
  {
    v16 = 0;
    *a4 = 0;
  }

  *(a4 + 16) = v16;
  if (v19 < 0)
  {
    operator delete(__dst);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2229A0244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a9);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::span_matching::SpanEncoder::~SpanEncoder(nlv4_inference_orchestrator::span_matching::SpanEncoder *this)
{
  MEMORY[0x223DC3180](this + 48);
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::pair<snlp::common::tensor::InferenceTensor,std::vector<std::string>>::~pair(uint64_t a1)
{
  v5 = (a1 + 48);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_2229A0604(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v3 + 8))(v3);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::makeNLv4SpanFeaturizerResponse@<X0>(uint64_t *a1@<X0>, sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse *a2@<X8>)
{
  sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::NLv4SpanFeaturizerResponse(a2);
  sirinluinternalsnlp_intermediate::NLv4SpanFeaturizerResponse::makeResponse(a2);
  v4 = *a1;
  *a1 = 0;
  result = *(a2 + 1);
  *(a2 + 1) = v4;
  if (result)
  {
    v6 = *(*result + 8);

    return v6();
  }

  return result;
}

void nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::makeITFMSpanFeaturizerResponse(uint64_t *a1@<X0>, sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::ITFMSpanFeaturizerResponse(a2);
  sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::makeResponse(v4);
  v5 = *a1;
  *a1 = 0;
  v6 = *(a2 + 2);
  *(a2 + 2) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (!*(a2 + 1))
  {
    operator new();
  }

  operator new();
}

void sub_2229A08B8(_Unwind_Exception *a1)
{
  MEMORY[0x223DC4D00](v2, 0x1012C40EC159624);
  MEMORY[0x223DC34A0](v1);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::appendExpandedSpanLabelsAndNumericalisedIndexes(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v37 = *MEMORY[0x277D85DE8];
  nlv4_inference_orchestrator::span_matching::SpanVocabLabelUtilities::getExpandedSpanLabels(a1 + 66, a5, a1 + 1, a1, &v26);
  v14 = v26;
  v15 = v27;
  if (v26 == v27)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v17 = nlv4_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken((a1 + 12), v14);
      if ((a1[38] & 1) == 0 || v17 != *(a1 + 18))
      {
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &v14->__r_.__value_.__l.__data_);
        *buf = nlv4_inference_orchestrator::vocabulary::Vocabulary::numericalizeToken((a1 + 12), v14);
        v16 += std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(a2, *buf) & 1;
      }

      if (v16 + a6 >= a7)
      {
        break;
      }

      if (++v14 == v15)
      {
        goto LABEL_24;
      }
    }

    v18 = *(a4 + 8);
    if (v18)
    {
      if (v18[23] < 0)
      {
        v18 = *v18;
      }
    }

    else
    {
      v18 = "nullptr";
    }

    v19 = *(*(a5 + 24) + 48);
    if (v19)
    {
      if (v19[23] < 0)
      {
        v19 = *v19;
      }
    }

    else
    {
      v19 = "nullptr";
    }

    v20 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = *a1;
      if (v21 >= 8)
      {
        v23 = SNLPOSLoggerForCategory(4);
        v22 = "<UNDEFINED_COMPONENT>";
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "<UNDEFINED_COMPONENT>";
          v29 = 2048;
          v30 = v21;
          _os_log_impl(&dword_22284A000, v23, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
        }
      }

      else
      {
        v22 = off_2784B6F30[v21];
      }

      *buf = 136316162;
      *&buf[4] = v22;
      v29 = 2080;
      v30 = v18;
      v31 = 2080;
      v32 = v19;
      v33 = 2048;
      v34 = v16;
      v35 = 2048;
      v36 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3);
      _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_DEBUG, "[%s] Truncating the number of span labels for token='%s', span label='%s'. Using the first %lu out of %lu expanded label(s).", buf, 0x34u);
    }
  }

LABEL_24:
  *buf = &v26;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](buf);
  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t nlv4_inference_orchestrator::span_matching::MatchedSpansFeaturizer::logSpanCoverage(int *a1, uint64_t *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      if (*(v4 + 48))
      {
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "span '", 6);
        v7 = MEMORY[0x223DC48E0](v6, *(v4 + 48));
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "' covers tokens [", 17);
        v9 = MEMORY[0x223DC4930](v8, *(v4 + 76));
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
        v11 = MEMORY[0x223DC4930](v10, *(v4 + 72));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ")\n", 2);
      }

      v4 += 88;
    }

    while (v4 != v5);
  }

  v12 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = *a1;
    if (v13 >= 8)
    {
      v15 = SNLPOSLoggerForCategory(4);
      v14 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "<UNDEFINED_COMPONENT>";
        v27 = 2048;
        v28 = v13;
        _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v14 = off_2784B6F30[v13];
    }

    std::stringbuf::str();
    if (v29 >= 0)
    {
      v16 = buf;
    }

    else
    {
      v16 = *buf;
    }

    *v30 = 136315394;
    v31 = v14;
    v32 = 2080;
    v33 = v16;
    _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "[%s] %s", v30, 0x16u);
    if (v29 < 0)
    {
      operator delete(*buf);
    }
  }

  v20[0] = *MEMORY[0x277D82818];
  v17 = *(MEMORY[0x277D82818] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v21 = v17;
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  result = MEMORY[0x223DC4C10](&v25);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2229A0EEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::vector<unsigned long>>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::vector<unsigned long>>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_instance(void)::t);
}

void *boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t *a3)
{
  (*(*a1 + 40))(v11);
  v6 = *a3;
  v5 = a3[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a3) >> 3);
  v12 = v7;
  v8 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(a2, &v12);
  v13 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v8, &v13);
  if (v5 != v6)
  {
    v10 = *a3;
    do
    {
      --v7;
      boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
      result = boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(a2, v10);
      v10 += 24;
    }

    while (v7);
  }

  return result;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(boost::archive::detail::basic_iserializer *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  if ((*(*(a1 + 6) + *(**(a1 + 6) - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v7, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v7);
  }

  v4 = *a2;
  MEMORY[0x223DC4940]();
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(boost::archive::detail::basic_iserializer *a1, unsigned int *a2)
{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  v5 = *a2;
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<unsigned int>(a1 + 6, &v5);
  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E86C0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E86C0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::vector<unsigned long>>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, unint64_t *a3)
{
  (*(*a1 + 40))(v11);
  v6 = *a3;
  v5 = a3[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a3) >> 3);
  v12 = v7;
  v8 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(a2, &v12);
  v13 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v8, &v13);
  if (v5 != v6)
  {
    v10 = *a3;
    do
    {
      --v7;
      boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance();
      result = boost::archive::detail::basic_oarchive::save_object(a2, v10, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
      v10 += 24;
    }

    while (v7);
  }

  return result;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t **a3)
{
  (*(*a1 + 40))(v12);
  v6 = *a3;
  v5 = a3[1];
  v7 = v5 - *a3;
  v13 = v7;
  v8 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(a2, &v13);
  v14 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v8, &v14);
  if (v5 != v6)
  {
    v10 = *a3;
    do
    {
      --v7;
      v11 = v10 + 1;
      result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<unsigned long>(a2, v10);
      v10 = v11;
    }

    while (v7);
  }

  return result;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<unsigned long>(boost::archive::detail::basic_iserializer *a1, uint64_t *a2)
{
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a1);
  boost::archive::basic_text_oprimitive<std::ostream>::save_impl<unsigned long>(a1 + 6, a2);
  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7CE0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7CE0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::vector<unsigned long>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E8648;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E8648;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E8738;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E8738;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E87B0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E87B0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::vector<unsigned long>>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::vector<unsigned long>>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::string>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::string>>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::string>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t **a3)
{
  (*(*a1 + 40))(v10);
  v11 = 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3);
  v5 = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(a2, &v11);
  v12 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v5, &v12);
  v7 = *a3;
  if (v11--)
  {
    do
    {
      boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
      result = boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save(a2 + 5, v7);
      v9 = v11--;
      v7 += 3;
    }

    while (v9);
  }

  return result;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(boost::archive::detail::basic_iserializer *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  if ((*(**(a1 + 5) + 96))(*(a1 + 5), a2, 8) != 8)
  {
    boost::archive::archive_exception::archive_exception(v6, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v6);
  }

  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(boost::archive::detail::basic_iserializer *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  if ((*(**(a1 + 5) + 96))(*(a1 + 5), a2, 4) != 4)
  {
    boost::archive::archive_exception::archive_exception(v6, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v6);
  }

  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::string>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E84E0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E84E0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::vector<unsigned long>>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, unint64_t *a3)
{
  (*(*a1 + 40))(v10);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  v5 = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(a2, &v11);
  v12 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v5, &v12);
  v7 = *a3;
  if (v11--)
  {
    do
    {
      boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance();
      result = boost::archive::detail::basic_oarchive::save_object(a2, v7, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
      v9 = v11--;
      v7 += 24;
    }

    while (v9);
  }

  return result;
}

boost::archive::detail::basic_iserializer *boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  (*(*a1 + 40))(v9);
  v10 = (a3[1] - *a3) >> 3;
  result = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(a2, &v10);
  v6 = *a3;
  if (*a3 != a3[1])
  {
    v7 = 8 * v10;
    result = (*(**(a2 + 5) + 96))(*(a2 + 5), v6, 8 * v10);
    if (result != v7)
    {
      boost::archive::archive_exception::archive_exception(v11, 13, 0, 0);
      boost::serialization::throw_exception<boost::archive::archive_exception>(v11);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7A78;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7A78;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<std::vector<unsigned long>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E8368;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E8368;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectPlaintextPositiveExamples>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E8558;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E8558;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E85D0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E85D0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<float>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<float>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3 + 48, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<float>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, int **a3)
{
  v19 = *MEMORY[0x277D85DE8];
  (*(*a1 + 40))(v15);
  v6 = *a3;
  v5 = a3[1];
  v7 = v5 - *a3;
  v16 = v7;
  boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(a2, &v16);
  v17 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(a2, &v17);
  if (v5 != v6)
  {
    v9 = *a3;
    do
    {
      boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
      boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken(a2);
      v10 = *(a2 + 6);
      v11 = *v10;
      v12 = v10 + *(*v10 - 24);
      if ((v12[32] & 5) != 0)
      {
        boost::archive::archive_exception::archive_exception(v18, 13, 0, 0);
        boost::serialization::throw_exception<boost::archive::archive_exception>(v18);
      }

      v13 = *v9++;
      *(v12 + 2) = 9;
      *(v10 + *(v11 - 24) + 8) = *(v10 + *(v11 - 24) + 8) & 0xFFFFFEFB | 0x100;
      result = std::ostream::operator<<();
      --v7;
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<float>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7D58;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7D58;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7FE0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7FE0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<float>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<float>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3 + 48, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
}

boost::archive::detail::basic_iserializer *boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<float>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  (*(*a1 + 40))(v9);
  v10 = (a3[1] - *a3) >> 2;
  result = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(a2, &v10);
  v6 = *a3;
  if (*a3 != a3[1])
  {
    v7 = 4 * v10;
    result = (*(**(a2 + 5) + 96))(*(a2 + 5), v6, 4 * v10);
    if (result != v7)
    {
      boost::archive::archive_exception::archive_exception(v11, 13, 0, 0);
      boost::serialization::throw_exception<boost::archive::archive_exception>(v11);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<float>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7BF0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7BF0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7F68;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7F68;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<float>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<float>>>::get_instance(void)::t);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7DD0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7DD0;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance();
  boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<unsigned long>>>::get_instance(void)::t);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<float>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<float>>>::get_instance(void)::t);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7C68;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7C68;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, unint64_t *a3)
{
  (*(*a1 + 40))(v11);
  v6 = *a3;
  v5 = a3[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a3) >> 4);
  v12 = v7;
  v8 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(a2, &v12);
  v13 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v8, &v13);
  if (v5 != v6)
  {
    v10 = *a3;
    do
    {
      --v7;
      boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance();
      result = boost::archive::detail::basic_oarchive::save_object(a2, v10, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance(void)::t);
      v10 += 48;
    }

    while (v7);
  }

  return result;
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(a2, a3);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3 + 24, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, unint64_t *a3)
{
  (*(*a1 + 40))(v11);
  v6 = *a3;
  v5 = a3[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a3) >> 4);
  v12 = v7;
  v8 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::collection_size_type>>(a2, &v12);
  v13 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v8, &v13);
  if (v5 != v6)
  {
    v10 = *a3;
    do
    {
      --v7;
      boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance();
      result = boost::archive::detail::basic_oarchive::save_object(a2, v10, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance(void)::t);
      v10 += 48;
    }

    while (v7);
  }

  return result;
}

void *boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(a2, a3);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
  return boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::save(a2, a3 + 24);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7620;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7620;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7698;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7698;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7710;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7710;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7788;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7788;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7800;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7800;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>::save_object_data(uint64_t a1, boost::archive::detail::basic_oarchive_impl **a2, unint64_t a3)
{
  (*(*a1 + 40))(&v6);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, a3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, unint64_t *a3)
{
  (*(*a1 + 40))(v10);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4);
  v5 = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(a2, &v11);
  v12 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v5, &v12);
  v7 = *a3;
  if (v11--)
  {
    do
    {
      boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance();
      result = boost::archive::detail::basic_oarchive::save_object(a2, v7, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::get_instance(void)::t);
      v9 = v11--;
      v7 += 48;
    }

    while (v9);
  }

  return result;
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t *a3)
{
  (*(*a1 + 40))(&v6);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
  boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save(a2 + 5, a3);
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance();
  return boost::archive::detail::basic_oarchive::save_object(a2, (a3 + 3), boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::get_instance(void)::t);
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, unint64_t *a3)
{
  (*(*a1 + 40))(v10);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4);
  v5 = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::collection_size_type>(a2, &v11);
  v12 = 0;
  result = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<boost::serialization::nvp<boost::serialization::item_version_type const>>(v5, &v12);
  v7 = *a3;
  if (v11--)
  {
    do
    {
      boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance();
      result = boost::archive::detail::basic_oarchive::save_object(a2, v7, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::get_instance(void)::t);
      v9 = v11--;
      v7 += 48;
    }

    while (v9);
  }

  return result;
}

uint64_t boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t *a3)
{
  (*(*a1 + 40))(&v6);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
  boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save(a2 + 5, a3);
  boost::archive::detail::basic_iserializer::~basic_iserializer(a2);
  return boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::save(a2 + 5, a3 + 3);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectParameter>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E73C8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E73C8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectParameter>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7440;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7440;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntent>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E74B8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E74B8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,std::vector<snlp::ssu::cache::SSUCacheObjectIntent>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E7530;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E7530;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E75A8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E75A8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

boost::archive::detail::basic_iserializer *boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t *a3)
{
  (*(*a1 + 40))(&v8);
  v5 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<unsigned long>(a2, a3);
  v6 = boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<unsigned long>(v5, a3 + 1);
  return boost::archive::detail::interface_oarchive<boost::archive::text_oarchive>::operator<<<unsigned long>(v6, a3 + 2);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E6E40;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6E40;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

boost::archive::detail::basic_iserializer *boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>::save_object_data(uint64_t a1, boost::archive::detail::basic_iserializer *a2, uint64_t a3)
{
  (*(*a1 + 40))(&v8);
  v5 = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<unsigned long>(a2, a3);
  v6 = boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<unsigned long>(v5, a3 + 8);
  return boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<unsigned long>(v6, a3 + 16);
}

boost::archive::detail::basic_iserializer *boost::archive::detail::interface_oarchive<boost::archive::binary_oarchive>::operator<<<unsigned long>(boost::archive::detail::basic_iserializer *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
  if ((*(**(a1 + 5) + 96))(*(a1 + 5), a2, 8) != 8)
  {
    boost::archive::archive_exception::archive_exception(v6, 13, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v6);
  }

  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_2835E6DC8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x223DC4D00);
}

{
  *a1 = &unk_2835E6DC8;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

std::string *snlp::ssu::cache::SSUCacheFileWriteStream::SSUCacheFileWriteStream(std::string *this, __int128 *a2, __int128 *a3, void **a4, void **a5, int a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v12 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v12;
  }

  if (*(a2 + 23) < 0)
  {
    v13 = *a2;
  }

  std::ofstream::basic_ofstream(&this[1]);
  snlp::ssu::cache::SSUCacheFileWriteStream::buildArchive(&this[1], a6, &this[24].__r_.__value_.__r.__words[2]);
  this[30].__r_.__value_.__l.__size_ = a4;
  this[30].__r_.__value_.__r.__words[2] = a5;
  this[31].__r_.__value_.__s.__data_[16] = 0;
  *&this[31].__r_.__value_.__l.__data_ = 0u;
  v19[0] = 1;
  v19[1] = a4;
  v19[2] = a5;
  v20 = v19;
  data_low = LODWORD(this[30].__r_.__value_.__l.__data_);
  if (data_low == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v21 = &v20;
  (off_2835E6CA8[data_low])(&v21, &this[24].__r_.__value_.__r.__words[2]);
  v17 = *a3;
  v18 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v21 = &v17;
  v15 = LODWORD(this[30].__r_.__value_.__l.__data_);
  if (v15 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v19[0] = &v21;
  (off_2835E6EA8[v15])(v19, &this[24].__r_.__value_.__r.__words[2]);
  v19[0] = &v17;
  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](v19);
  return this;
}

void sub_2229A3CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::string *a10, std::string *a11, uint64_t a12, __int128 a13, std::string::size_type a14)
{
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&a10, "I/O stream exception: ");
    v16 = (*(*v14 + 16))(v14);
    v17 = std::string::append(&a10, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    a14 = v17->__r_.__value_.__r.__words[2];
    a13 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &a13);
    exception->__vftable = &unk_2835E6BA0;
  }

  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(exception_object);
    v20 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&a10, "Boost serialization exception: ");
    v21 = (*(*v19 + 16))(v19);
    v22 = std::string::append(&a10, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    a14 = v22->__r_.__value_.__r.__words[2];
    a13 = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v20, &a13);
    v20->__vftable = &unk_2835E6BA0;
  }

  _Unwind_Resume(exception_object);
}

void sub_2229A3EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_2229A3F8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v15);
  __cxa_end_catch();
  JUMPOUT(0x2229A3FB4);
}

void snlp::ssu::cache::SSUCacheFileWriteStream::buildArchive(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::text_oarchive_impl(a3, a1, 0);
    *a3 = &unk_2835E6BC8;
    boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::init(v4);
    v5 = 1;
  }

  else
  {
    v6 = boost::archive::binary_oarchive_impl<boost::archive::binary_oarchive,char,std::char_traits<char>>::binary_oarchive_impl(a3, a1, 0);
    *a3 = &unk_2835E6C40;
    boost::archive::basic_binary_oarchive<boost::archive::binary_oarchive>::init(v6);
    boost::archive::basic_binary_oprimitive<boost::archive::binary_oarchive,char,std::char_traits<char>>::init((a3 + 40));
    v5 = 0;
  }

  *(a3 + 128) = v5;
}

void sub_2229A405C(_Unwind_Exception *a1)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(v1);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v1 + 48);
  _Unwind_Resume(a1);
}

uint64_t std::ofstream::~ofstream(void *a1)
{
  v1 = MEMORY[0x277D82810];
  v2 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x223DC47C0](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectIntentList>(snlp::ssu::cache::SSUCacheObjectIntentList)::{lambda(snlp::ssu::cache::SSUCacheObjectIntentList&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(unint64_t **a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectIntentList>(snlp::ssu::cache::SSUCacheObjectIntentList)::{lambda(snlp::ssu::cache::SSUCacheObjectIntentList&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(unint64_t **a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectIntentList>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectHeader>(snlp::ssu::cache::SSUCacheObjectHeader)::{lambda(snlp::ssu::cache::SSUCacheObjectHeader&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(unint64_t **a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectHeader>(snlp::ssu::cache::SSUCacheObjectHeader)::{lambda(snlp::ssu::cache::SSUCacheObjectHeader&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(unint64_t **a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectHeader>>::get_instance(void)::t);
}

void boost::archive::binary_oarchive::~binary_oarchive(boost::archive::binary_oarchive *this)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(this);
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::~basic_binary_iprimitive(v1 + 5);

  JUMPOUT(0x223DC4D00);
}

{
  boost::archive::detail::basic_oarchive::~basic_oarchive(this);
  boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::~basic_binary_iprimitive(v1 + 5);
}

void boost::archive::text_oarchive::~text_oarchive(boost::archive::text_oarchive *this)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(this);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v1 + 48);

  JUMPOUT(0x223DC4D00);
}

{
  boost::archive::detail::basic_oarchive::~basic_oarchive(this);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v1 + 48);
}

void snlp::ssu::cache::SSUCacheFileWriteStream::path(snlp::ssu::cache::SSUCacheFileWriteStream *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

uint64_t snlp::ssu::cache::SSUCacheFileWriteStream::isAtEnd(snlp::ssu::cache::SSUCacheFileWriteStream *this)
{
  if (*(this + 93) == *(this + 91) && *(this + 94) == *(this + 92))
  {
    v1 = *(this + 760);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL snlp::ssu::cache::SSUCacheFileWriteStream::writeBatchNegative(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 744);
  v3 = *(a1 + 728);
  if (v2 == v3)
  {
    v7 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_ERROR, "Client tried to write the next negative cached encodings batch when there are none remaining to be written", buf, 2u);
    }
  }

  else
  {
    *buf = *a2;
    v10 = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *__p = *(a2 + 24);
    v12 = *(a2 + 40);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v13 = buf;
    v5 = *(a1 + 720);
    if (v5 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v14 = &v13;
    (off_2835E7E38[v5])(&v14, a1 + 592);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    v6 = *(a1 + 744) + 1;
    *(a1 + 744) = v6;
    if (v6 == *(a1 + 728))
    {
      snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<unsigned long>(a1, 4660);
    }
  }

  return v2 != v3;
}

void sub_2229A46E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_2229A4774(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v15);
  __cxa_end_catch();
  JUMPOUT(0x2229A479CLL);
}

uint64_t snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<unsigned long>(uint64_t a1, uint64_t a2)
{
  v4 = &v5;
  v5 = a2;
  v2 = *(a1 + 720);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = &v4;
  return (off_2835E7E48[v2])(&v6, a1 + 592);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>(snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(unint64_t **a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>(snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(unint64_t **a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchNegative>>::get_instance(void)::t);
}

BOOL snlp::ssu::cache::SSUCacheFileWriteStream::writeBatchPositive(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 744) >= *(a1 + 728))
  {
    if (*(a1 + 752) == *(a1 + 736))
    {
      v2 = SNLPOSLoggerForCategory(8);
      result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        v4 = "Client tried to write the next positive cached encodings batch when there are none remaining to be written";
        goto LABEL_7;
      }
    }

    else
    {
      *buf = *a2;
      v9 = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *v10 = *(a2 + 24);
      v11 = *(a2 + 40);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *__p = *(a2 + 48);
      v13 = *(a2 + 64);
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      v14 = buf;
      v6 = *(a1 + 720);
      if (v6 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v15 = &v14;
      (off_2835E8048[v6])(&v15, a1 + 592);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v10[0])
      {
        v10[1] = v10[0];
        operator delete(v10[0]);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v7 = *(a1 + 752) + 1;
      *(a1 + 752) = v7;
      if (v7 == *(a1 + 736))
      {
        snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<unsigned long>(a1, 22136);
      }

      return 1;
    }
  }

  else
  {
    v2 = SNLPOSLoggerForCategory(8);
    result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v4 = "Client tried to write a positive cached encodings batch when there are still negative batches remaining to be written";
LABEL_7:
      _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_ERROR, v4, buf, 2u);
      return 0;
    }
  }

  return result;
}

void sub_2229A4C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_2229A4C7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v22)
  {
LABEL_8:
    __cxa_end_catch();
    JUMPOUT(0x2229A4CD8);
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(unint64_t **a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive)::{lambda(snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(unint64_t **a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>>::get_instance(void)::t);
}

BOOL snlp::ssu::cache::SSUCacheFileWriteStream::writeDebugInformation(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 744) >= *(a1 + 728))
  {
    if (*(a1 + 752) >= *(a1 + 736))
    {
      if (*(a1 + 760) == 1)
      {
        v2 = SNLPOSLoggerForCategory(8);
        result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 0;
          v4 = "Client tried to write debug information when this have already been written";
          goto LABEL_10;
        }
      }

      else
      {
        *buf = *a2;
        v9 = *(a2 + 16);
        *a2 = 0;
        *(a2 + 8) = 0;
        v10 = *(a2 + 24);
        v11 = *(a2 + 40);
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        v12 = buf;
        v6 = *(a1 + 720);
        if (v6 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v13 = &v12;
        (off_2835E8818[v6])(&v13, a1 + 592);
        v7[0] = &v10;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v7);
        v7[0] = buf;
        std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](v7);
        result = 1;
        *(a1 + 760) = 1;
      }
    }

    else
    {
      v2 = SNLPOSLoggerForCategory(8);
      result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        v4 = "Client tried to write positive plaintext examples when there are still positive batches remaining to be written";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v2 = SNLPOSLoggerForCategory(8);
    result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v4 = "Client tried to write positive plaintext examples when there are still negative batches remaining to be written";
LABEL_10:
      _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_ERROR, v4, buf, 2u);
      return 0;
    }
  }

  return result;
}

void sub_2229A50C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_2229A5120(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v22)
  {
LABEL_8:
    __cxa_end_catch();
    JUMPOUT(0x2229A517CLL);
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectDebugInformation>(snlp::ssu::cache::SSUCacheObjectDebugInformation)::{lambda(snlp::ssu::cache::SSUCacheObjectDebugInformation&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(unint64_t **a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance(void)::t);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void snlp::ssu::cache::SSUCacheFileWriteStream::writeObjectToStream<snlp::ssu::cache::SSUCacheObjectDebugInformation>(snlp::ssu::cache::SSUCacheObjectDebugInformation)::{lambda(snlp::ssu::cache::SSUCacheObjectDebugInformation&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,boost::archive::binary_oarchive,std::__variant_detail::_Trait::text_oarchive> &>(unint64_t **a1, boost::archive::detail::basic_oarchive_impl **a2)
{
  v3 = **a1;
  boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance();

  return boost::archive::detail::basic_oarchive::save_object(a2, v3, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::binary_oarchive,snlp::ssu::cache::SSUCacheObjectDebugInformation>>::get_instance(void)::t);
}

unint64_t snlp::ssu::trigger::SSUTriggerAppName::isTriggered(snlp::ssu::trigger::SSUTriggerAppName *this, const snlp::ssu::proto::SSUValidatedRequest *a2)
{
  snlp::ssu::proto::SSUValidatedRequest::getAppNameMatchingSpanBundleIds(a2, a2, &v14);
  v3 = v14;
  v4 = v15;
  if (v14 != v15)
  {
    v7 = *(this + 1);
    v6 = this + 8;
    v5 = v7;
    v8 = v6[23];
    if (v8 >= 0)
    {
      v9 = v6[23];
    }

    else
    {
      v9 = *(v6 + 1);
    }

    if (v8 < 0)
    {
      v6 = v5;
    }

    while (1)
    {
      v10 = *(v3 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v3 + 8);
      }

      if (v10 == v9)
      {
        v12 = v11 >= 0 ? v3 : *v3;
        if (!memcmp(v12, v6, v9))
        {
          break;
        }
      }

      v3 += 24;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }
  }

  v16 = &v14;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v16);
  return (v4 != v3) | ((v4 != v3) << 32);
}

void snlp::ssu::trigger::SSUTriggerAppName::~SSUTriggerAppName(void **this)
{
  *this = &unk_2835E8838;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x223DC4D00);
}

{
  *this = &unk_2835E8838;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

__n128 snlp::ssu::trigger::SSUTriggerAppName::SSUTriggerAppName(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_2835E8838;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2835E8838;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

void snlp::ssu::espresso::SSUNessieModule::forward(snlp::ssu::espresso::SSUNessieModule *this, uint64_t **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 432));
  if (a2[1] != *a2)
  {
    v4 = **a2;
    v5 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v7 = v4;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "Reshaping input descriptors to use batch size %lu", buf, 0xCu);
    }

    snlp::ssu::espresso::SSUNessieModule::reshapeInputDescriptors(this, v4);
  }

  std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
}

void sub_2229A6084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(v11);
  std::mutex::unlock((v10 + 432));
  _Unwind_Resume(a1);
}

double snlp::ssu::espresso::SSUNessieModule::getOutputs@<D0>(snlp::ssu::espresso::SSUNessieModule *this@<X0>, _OWORD *a2@<X8>)
{
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::getOutput(this, this + 50, &v12);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*(this + 22));
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(OutputPorts, this + 50);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  E5RT::IOPort::GetPortDescriptor(&v10, v5[5]);
  v6 = E5RT::OperandDescriptor::TensorDescriptor(v10);
  NumElements = E5RT::TensorDescriptor::GetNumElements(v6);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::vector<float>::resize(&v13 + 8, NumElements);
  v8 = v13;
  *a2 = v12;
  a2[1] = v8;
  result = *&v14;
  a2[2] = v14;
  return result;
}

void sub_2229A6160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  itfm_inference_orchestrator::inference_engine::ITFMModuleOutputType::~ITFMModuleOutputType(va);
  _Unwind_Resume(a1);
}

void snlp::ssu::espresso::SSUNessieModule::setInputs(const void **this, const snlp::ssu::espresso::SSUNessieModuleInputs *a2)
{
  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 47, a2 + 48);

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::setInput(this, this + 44, a2);
}

void nlv4_inference_orchestrator::placeholder::VerbExtractor::extractVerbFromUsoGraph(const siri::ontology::UsoGraph *a1@<X1>, std::string *a2@<X8>)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 1065353216;
  v4 = *(a1 + 11);
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17 = v4;
  std::deque<siri::ontology::UsoGraphNode const*>::push_back(&v19, &v17);
  v5 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    v6 = MEMORY[0x277D5F620];
    do
    {
      v7 = *(*(*(&v19 + 1) + (((v5 + v21 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v5 + v21 - 1) & 0x1FF));
      if (!v7)
      {
        break;
      }

      if ((*(v7->var0 + 2))(v7) == 1)
      {
        v8 = *v7->var0;
        if (v9)
        {
          v14 = v9[13];
          if (*(v14 + 63) < 0)
          {
            std::string::__init_copy_ctor_external(a2, *(v14 + 40), *(v14 + 48));
          }

          else
          {
            v15 = *(v14 + 40);
            a2->__r_.__value_.__r.__words[2] = *(v14 + 56);
            *&a2->__r_.__value_.__l.__data_ = v15;
          }

          v13 = 1;
          goto LABEL_18;
        }
      }

      if (v20 == *(&v19 + 1))
      {
        v10 = 0;
      }

      else
      {
        v10 = ((v20 - *(&v19 + 1)) << 6) - 1;
      }

      if ((v10 - (--*(&v21 + 1) + v21)) >= 0x400)
      {
        operator delete(*(v20 - 8));
        *&v20 = v20 - 8;
      }

      siri::ontology::UsoGraph::getSuccessorsWithEdges(&v17, v7->var1, v7);
      v11 = v17;
      v12 = v18;
      if (v17 != v18)
      {
        do
        {
          v16 = *v11;
          std::deque<siri::ontology::UsoGraphNode const*>::push_back(&v19, &v16);
          v11 += 2;
        }

        while (v11 != v12);
        v11 = v17;
      }

      if (v11)
      {
        v18 = v11;
        operator delete(v11);
      }

      v5 = *(&v21 + 1);
    }

    while (*(&v21 + 1));
  }

  v13 = 0;
  a2->__r_.__value_.__s.__data_[0] = 0;
LABEL_18:
  a2[1].__r_.__value_.__s.__data_[0] = v13;
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](&v19);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(0);
}

void nlv4_inference_orchestrator::placeholder::VerbExtractor::getVerbFromUserDialogAct(nlv4_inference_orchestrator::placeholder::VerbExtractor *this@<X0>, const sirinluexternal::UserDialogAct *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *this;
  v5 = *(this + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v15 = 0;
  }

  v7 = *(a2 + 1);
  if (v7 && *(v7 + 16))
  {
    operator new();
  }

  v8 = *(a2 + 6);
  if (v8 && *(v8 + 16))
  {
    operator new();
  }

  v9 = *(a2 + 4);
  if (v9 && *(v9 + 8))
  {
    operator new();
  }

  v10 = *(a2 + 10);
  if (v10 && *(v10 + 8))
  {
    operator new();
  }

  v11 = *(a2 + 2);
  if (v11 && *(v11 + 8))
  {
    operator new();
  }

  v12 = *(a2 + 9);
  if (v12 && *(v12 + 8))
  {
    operator new();
  }

  v13 = *(a2 + 8);
  if (v13 && *(v13 + 8))
  {
    operator new();
  }

  v14 = *(a2 + 7);
  if (v14 && *(v14 + 8))
  {
    operator new();
  }

  *a3 = 0;
  a3[24] = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_2229A67C8(void *a1)
{
  MEMORY[0x223DC4D00](v2, 0x10A0C403D23BABBLL);
  __cxa_begin_catch(a1);
  *v1 = 0;
  v1[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x2229A679CLL);
}

void sub_2229A6868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<siri::ontology::UsoGraphNode const*>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v9 = result[4];
  v8 = result[5];
  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (v9 < 0x200)
    {
      v11 = result[3];
      v12 = v11 - *result;
      if (v5 - v6 < v12)
      {
        operator new();
      }

      v13 = v12 >> 2;
      if (v11 == *result)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode **>>(v14);
    }

    result[4] = v9 - 512;
    v15 = *v6;
    result[1] = v6 + 8;
    result = std::__split_buffer<nlv4_inference_orchestrator::trees::TreeNode **>::emplace_back<nlv4_inference_orchestrator::trees::TreeNode **&>(result, &v15);
    v6 = v3[1];
    v8 = v3[5];
    v10 = v3[4] + v8;
  }

  *(*&v6[(v10 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v10 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void sub_2229A6DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *nlv4_inference_orchestrator::trees::operator<<(void *a1, uint64_t a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "TreeNode[", 9);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "label:'", 7);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "', ", 3);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "value:'", 7);
  v11 = *(a2 + 47);
  if (v11 >= 0)
  {
    v12 = a2 + 24;
  }

  else
  {
    v12 = *(a2 + 24);
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 47);
  }

  else
  {
    v13 = *(a2 + 32);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "', ", 3);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "parentArgument:'", 16);
  v19 = *(a2 + 48);
  v18 = a2 + 48;
  v17 = v19;
  v20 = *(v18 + 23);
  if (v20 >= 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  if (v20 >= 0)
  {
    v22 = *(v18 + 23);
  }

  else
  {
    v22 = *(v18 + 8);
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v21, v22);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "', ", 3);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "UTF-8 code unit indices:[", 25);
  v26 = MEMORY[0x223DC4940](v25, *(v18 + 24));
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", ", 2);
  v28 = MEMORY[0x223DC4940](v27, *(v18 + 32));
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "), ", 3);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "UTF-16 code unit indices:[", 26);
  v31 = MEMORY[0x223DC4940](v30, *(v18 + 64));
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", ", 2);
  v33 = MEMORY[0x223DC4940](v32, *(v18 + 72));
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "), ", 3);
  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Unicode code point indices:[", 28);
  v36 = MEMORY[0x223DC4940](v35, *(v18 + 80));
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ", ", 2);
  v38 = MEMORY[0x223DC4940](v37, *(v18 + 88));
  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ")", 1);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "]", 1);
}

uint64_t snlp::common::text_uso_graph::SpacedTextTreeLexer::lex(uint64_t a1, const std::string *a2, uint64_t a3)
{
  nlv4_inference_orchestrator::trees::trimWhitespace(&v85, a2);
  do
  {
    size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v85.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_217;
    }

    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    *v75 = 0u;
    memset(v76, 0, 25);
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    __p = 0u;
    v87[0] = 0u;
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v85;
    }

    else
    {
      v6 = v85.__r_.__value_.__r.__words[0];
    }

    *(v87 + 9) = 0uLL;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 32, v6, (v6 + size), &__p, 0);
    v8 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v85;
    }

    else
    {
      v9 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v85.__r_.__value_.__l.__size_;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v9, v9 + v8, &__p, 0);
    if (__p)
    {
      operator delete(__p);
    }

    if (v7)
    {
      v10 = v75[0];
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
      if (v11 <= 1)
      {
        v12 = v75;
      }

      else
      {
        v12 = v75[0];
      }

      if (*(v12 + 40) == 1)
      {
        if (v11 <= 1)
        {
          v10 = v75;
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v10[3], v10[4], v10[4] - v10[3]);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      (*(*a3 + 16))(a3, &__p);
    }

    else
    {
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      __p = 0u;
      memset(v87, 0, 25);
      v13 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v85;
      }

      else
      {
        v14 = v85.__r_.__value_.__r.__words[0];
      }

      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = v85.__r_.__value_.__l.__size_;
      }

      v15 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 96, v14, (v14 + v13), &__p, 0);
      v16 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v85;
      }

      else
      {
        v17 = v85.__r_.__value_.__r.__words[0];
      }

      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = v85.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v17, v17 + v16, &__p, 0);
      if (__p)
      {
        operator delete(__p);
      }

      if (v15)
      {
        v18 = v75[0];
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
        if (v19 <= 1)
        {
          v20 = v75;
        }

        else
        {
          v20 = v75[0];
        }

        if (*(v20 + 40) == 1)
        {
          if (v19 <= 1)
          {
            v18 = v75;
          }

          std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v18[3], v18[4], v18[4] - v18[3]);
        }

        else
        {
          __p = 0uLL;
          *&v87[0] = 0;
        }

        v29 = std::stoi(&__p, 0, 10);
        (*(*a3 + 24))(a3, v29);
      }

      else
      {
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v95 = 0;
        __p = 0u;
        memset(v87, 0, 25);
        v21 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v85;
        }

        else
        {
          v22 = v85.__r_.__value_.__r.__words[0];
        }

        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v21 = v85.__r_.__value_.__l.__size_;
        }

        v23 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 160, v22, (v22 + v21), &__p, 0);
        v24 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v85;
        }

        else
        {
          v25 = v85.__r_.__value_.__r.__words[0];
        }

        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = v85.__r_.__value_.__l.__size_;
        }

        std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v25, v25 + v24, &__p, 0);
        if (__p)
        {
          operator delete(__p);
        }

        if (!v23)
        {
          goto LABEL_201;
        }

        v26 = v75[0];
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
        if (v27 <= 1)
        {
          v28 = v75;
        }

        else
        {
          v28 = v75[0];
        }

        if (*(v28 + 40) == 1)
        {
          if (v27 <= 1)
          {
            v26 = v75;
          }

          std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v26[3], v26[4], v26[4] - v26[3]);
        }

        else
        {
          __p = 0uLL;
          *&v87[0] = 0;
        }

        (**a3)(a3, &__p);
      }
    }

    if (SBYTE7(v87[0]) < 0)
    {
      operator delete(__p);
    }

    if (v82 == 1)
    {
      std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v80, v81, v81 - v80);
    }

    else
    {
      __p = 0uLL;
      *&v87[0] = 0;
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    v85.__r_.__value_.__r.__words[2] = *&v87[0];
    *&v85.__r_.__value_.__l.__data_ = __p;
    v30 = BYTE7(v87[0]);
    v31 = SBYTE7(v87[0]);
    if (SBYTE7(v87[0]) < 0)
    {
      v30 = v85.__r_.__value_.__l.__size_;
    }

    if (!v30)
    {
      goto LABEL_200;
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    __p = 0u;
    v87[0] = 0u;
    if (v31 >= 0)
    {
      v32 = &v85;
    }

    else
    {
      v32 = v85.__r_.__value_.__r.__words[0];
    }

    *(v87 + 9) = 0uLL;
    v33 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 352, v32, (v32 + v30), &__p, 0);
    v34 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v85;
    }

    else
    {
      v35 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = v85.__r_.__value_.__l.__size_;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v35, v35 + v34, &__p, 0);
    if (__p)
    {
      operator delete(__p);
    }

    if (v33)
    {
      v36 = v75[0];
      v37 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
      if (v37 <= 1)
      {
        v38 = v75;
      }

      else
      {
        v38 = v75[0];
      }

      if (*(v38 + 40) == 1)
      {
        if (v37 <= 1)
        {
          v36 = v75;
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v36[3], v36[4], v36[4] - v36[3]);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      (*(*a3 + 40))(a3, &__p);
      if (SBYTE7(v87[0]) < 0)
      {
        operator delete(__p);
      }

      if (v82 == 1)
      {
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v80, v81, v81 - v80);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      *&v85.__r_.__value_.__l.__data_ = __p;
      v85.__r_.__value_.__r.__words[2] = *&v87[0];
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    __p = 0u;
    memset(v87, 0, 25);
    v39 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v85;
    }

    else
    {
      v40 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v39 = v85.__r_.__value_.__l.__size_;
    }

    v41 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 416, v40, (v40 + v39), &__p, 0);
    v42 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v85;
    }

    else
    {
      v43 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v42 = v85.__r_.__value_.__l.__size_;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v43, v43 + v42, &__p, 0);
    if (__p)
    {
      operator delete(__p);
    }

    if (v41)
    {
      v44 = v75[0];
      v45 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
      if (v45 <= 1)
      {
        v46 = v75;
      }

      else
      {
        v46 = v75[0];
      }

      if (*(v46 + 40) == 1)
      {
        if (v45 <= 1)
        {
          v44 = v75;
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v44[3], v44[4], v44[4] - v44[3]);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      v47 = std::stoi(&__p, 0, 10);
      v48 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
      v49 = v75[0] + 64;
      if (v48 <= 2)
      {
        v49 = &v76[1] + 8;
      }

      if (*v49 == 1)
      {
        v50 = v48 > 2;
        if (v48 <= 2)
        {
          v51 = v76 + 8;
        }

        else
        {
          v51 = v75[0] + 48;
        }

        v52 = (v75[0] + 56);
        if (!v50)
        {
          v52 = &v76[1];
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__str, *v51, *v52, &(*v52)[-*v51]);
      }

      else
      {
        memset(&__str, 0, sizeof(__str));
      }

      v53 = std::stoi(&__str, 0, 10);
      (*(*a3 + 48))(a3, v47, v53);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v87[0]) < 0)
      {
        operator delete(__p);
      }

      if (v82 == 1)
      {
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v80, v81, v81 - v80);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      *&v85.__r_.__value_.__l.__data_ = __p;
      v85.__r_.__value_.__r.__words[2] = *&v87[0];
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    __p = 0u;
    memset(v87, 0, 25);
    v54 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v85;
    }

    else
    {
      v55 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v54 = v85.__r_.__value_.__l.__size_;
    }

    v56 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 288, v55, (v55 + v54), &__p, 0);
    v57 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v85;
    }

    else
    {
      v58 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v57 = v85.__r_.__value_.__l.__size_;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v58, v58 + v57, &__p, 0);
    if (__p)
    {
      operator delete(__p);
    }

    if (v56)
    {
      v59 = v75[0];
      v60 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
      if (v60 <= 1)
      {
        v61 = v75;
      }

      else
      {
        v61 = v75[0];
      }

      if (*(v61 + 40) == 1)
      {
        if (v60 <= 1)
        {
          v59 = v75;
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v59[3], v59[4], v59[4] - v59[3]);
        if ((SBYTE7(v87[0]) & 0x80u) == 0)
        {
          v62 = BYTE7(v87[0]);
        }

        else
        {
          v62 = DWORD2(__p);
        }
      }

      else
      {
        v62 = 0;
        __p = 0uLL;
        *&v87[0] = 0;
      }

      (*(*a3 + 32))(a3, v62);
      if (SBYTE7(v87[0]) < 0)
      {
        operator delete(__p);
      }

      if (v82 == 1)
      {
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v80, v81, v81 - v80);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      *&v85.__r_.__value_.__l.__data_ = __p;
      v85.__r_.__value_.__r.__words[2] = *&v87[0];
    }

    v63 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v63 = v85.__r_.__value_.__l.__size_;
    }

    if (!v63)
    {
LABEL_200:
      v71 = 3;
      goto LABEL_213;
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    __p = 0u;
    v87[0] = 0u;
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v85;
    }

    else
    {
      v64 = v85.__r_.__value_.__r.__words[0];
    }

    *(v87 + 9) = 0uLL;
    v65 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 224, v64, (v64 + v63), &__p, 0);
    v66 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v85;
    }

    else
    {
      v67 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v66 = v85.__r_.__value_.__l.__size_;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v75, v67, v67 + v66, &__p, 0);
    if (__p)
    {
      operator delete(__p);
    }

    if (v65)
    {
      v68 = v75[0];
      v69 = 0xAAAAAAAAAAAAAAABLL * ((v75[1] - v75[0]) >> 3);
      if (v69 <= 1)
      {
        v70 = v75;
      }

      else
      {
        v70 = v75[0];
      }

      if (*(v70 + 40) == 1)
      {
        if (v69 <= 1)
        {
          v68 = v75;
        }

        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v68[3], v68[4], v68[4] - v68[3]);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      (*(*a3 + 8))(a3, &__p);
      if (SBYTE7(v87[0]) < 0)
      {
        operator delete(__p);
      }

      if (v82 == 1)
      {
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v80, v81, v81 - v80);
      }

      else
      {
        __p = 0uLL;
        *&v87[0] = 0;
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      v71 = 0;
      *&v85.__r_.__value_.__l.__data_ = __p;
      v85.__r_.__value_.__r.__words[2] = *&v87[0];
      goto LABEL_213;
    }

LABEL_201:
    std::operator+<char>();
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = __p;
    *(a1 + 24) = *&v87[0];
    v71 = 1;
LABEL_213:
    if (v75[0])
    {
      v75[1] = v75[0];
      operator delete(v75[0]);
    }
  }

  while (!v71);
  if (v71 == 3)
  {
LABEL_217:
    v72 = 1;
    goto LABEL_219;
  }

  v72 = 0;
LABEL_219:
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  return v72;
}

void sub_2229A7C18()
{
  if (v1)
  {
    operator delete(v1);
  }

  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(v0);
}

uint64_t nlv4_inference_orchestrator::span_matching::SpanTruncator::truncateSpans(char *a1, uint64_t *a2, unsigned int a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = 126 - 2 * __clz((v7 - v6) >> 5);
  __s = a1;
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,false>(v6, v7, &__s, v9, 1);
  v10 = 0;
  v11 = 0;
  while ((a2[1] - *a2) >> 5 > v10)
  {
    v12 = *(*a2 + 32 * v10 + 24);
    v11 += (v12[2] - v12[1]) >> 2 << (v12[7] != 0);
    ++v10;
    if (v11 >= a3)
    {
      goto LABEL_9;
    }
  }

  v10 = a3;
LABEL_9:
  nlv4_inference_orchestrator::span_matching::SpanTruncator::logSpans(a1, a2, v10);
  __s = "";
  MEMORY[0x223DC3160](v30, a1 + 48);
  v13 = strlen(__s);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v32) = v13;
  if (v13)
  {
    memmove(&__dst, __s, v13);
  }

  *(&__dst + v14) = 0;
  v33 = v30;
  v15 = v10;
  v17 = *a2;
  v16 = a2[1];
  v18 = (v16 - *a2) >> 5;
  if (v15 <= v18)
  {
    if (v15 < v18)
    {
      v22 = (v17 + 32 * v15);
      while (v16 != v22)
      {
        v23 = v16[-1].__r_.__value_.__s.__data_[15];
        v16 = (v16 - 32);
        if (v23 < 0)
        {
          operator delete(v16->__r_.__value_.__l.__data_);
        }
      }

      a2[1] = v22;
    }
  }

  else
  {
    v19 = a2[2];
    if (v15 - v18 > (v19 - v16) >> 5)
    {
      v34 = a2;
      v20 = (v19 - v17) >> 4;
      if (v20 <= v15)
      {
        v20 = v15;
      }

      if ((v19 - v17) >= 0x7FFFFFFFFFFFFFE0)
      {
        v21 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>(v21);
    }

    v24 = v16 + 32 * (v15 - v18);
    v25 = SHIBYTE(v32);
    v26 = __dst;
    v27 = 32 * v15 - 32 * v18;
    do
    {
      if (v25 < 0)
      {
        std::string::__init_copy_ctor_external(v16, v26, *(&v26 + 1));
      }

      else
      {
        *&v16->__r_.__value_.__l.__data_ = __dst;
        v16->__r_.__value_.__r.__words[2] = v32;
      }

      v16[1].__r_.__value_.__r.__words[0] = v30;
      v16 = (v16 + 32);
      v27 -= 32;
    }

    while (v27);
    a2[1] = v24;
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst);
  }

  return MEMORY[0x223DC3180](v30);
}

void sub_2229A7FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x223DC3180](v30);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,false>(uint64_t a1, unint64_t a2, nlv4_inference_orchestrator::span_matching::SpanTruncator **a3, uint64_t a4, char a5)
{
  v278 = *MEMORY[0x277D85DE8];
LABEL_2:
  v215 = (a2 - 8);
  v218 = a2;
  v211 = (a2 - 40);
  v206 = a2 - 96;
  v207 = a2 - 64;
  v209 = a2 - 32;
  v210 = (a2 - 72);
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = (a2 - v9) >> 5;
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        goto LABEL_222;
      }

      if (v10 == 2)
      {
        if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v215, *(a1 + 24)))
        {
          v274 = *(a1 + 16);
          v245 = *a1;
          v126 = *v209;
          *(a1 + 16) = *(v209 + 16);
          *a1 = v126;
          *(v209 + 16) = v274;
          *v209 = v245;
          v127 = *(a1 + 24);
          *(a1 + 24) = *v215;
          *v215 = v127;
        }

        goto LABEL_222;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      v129 = (a1 + 56);
      v130 = (a1 + 32);
      v131 = (a1 + 24);
      v132 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 + 56), *(a1 + 24));
      v133 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v215, *(a1 + 56));
      if (v132)
      {
        if (v133)
        {
          v275 = *(a1 + 16);
          v246 = *a1;
          v134 = *v209;
          *(a1 + 16) = *(v209 + 16);
          *a1 = v134;
          *(v209 + 16) = v275;
          *v209 = v246;
        }

        else
        {
          v277 = *(a1 + 16);
          v252 = *a1;
          *a1 = *v130;
          *(a1 + 16) = *(a1 + 48);
          *v130 = v252;
          *(a1 + 48) = v277;
          v200 = *(a1 + 24);
          *(a1 + 24) = *(a1 + 56);
          *(a1 + 56) = v200;
          if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v215, v200))
          {
LABEL_222:
            v205 = *MEMORY[0x277D85DE8];
            return;
          }

          v201 = *v130;
          v202 = *(a1 + 48);
          v203 = *(v209 + 16);
          *v130 = *v209;
          *(a1 + 48) = v203;
          *(v209 + 16) = v202;
          *v209 = v201;
          v131 = (a1 + 56);
        }

        v129 = v215;
      }

      else
      {
        if (!v133)
        {
          goto LABEL_222;
        }

        v186 = *v130;
        v187 = *(a1 + 48);
        v188 = *(v209 + 16);
        *v130 = *v209;
        *(a1 + 48) = v188;
        *(v209 + 16) = v187;
        *v209 = v186;
        v189 = *v129;
        *v129 = *v215;
        *v215 = v189;
        if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v129, *v131))
        {
          goto LABEL_222;
        }

        v276 = *(a1 + 16);
        v250 = *a1;
        *a1 = *v130;
        *(a1 + 16) = *(a1 + 48);
        *v130 = v250;
        *(a1 + 48) = v276;
      }

      v204 = *v131;
      *v131 = *v129;
      *v129 = v204;
      goto LABEL_222;
    }

    if (v10 == 4)
    {
      break;
    }

    if (v10 == 5)
    {
      v128 = *MEMORY[0x277D85DE8];

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), v209, a3);
      return;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v135 = a1 + 32;
      v137 = a1 == a2 || v135 == a2;
      if (a5)
      {
        if (!v137)
        {
          v138 = 0;
          v139 = a1;
          do
          {
            v140 = v135;
            if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v135 + 24), *(v139 + 24)))
            {
              v141 = *v140;
              *v247 = *(v140 + 8);
              *&v247[7] = *(v140 + 15);
              v142 = *(v140 + 23);
              *(v140 + 8) = 0;
              *(v140 + 16) = 0;
              *v140 = 0;
              v143 = *(v139 + 56);
              v144 = v138;
              while (1)
              {
                v145 = a1 + v144;
                if (*(a1 + v144 + 55) < 0)
                {
                  operator delete(*(v145 + 32));
                }

                *(v145 + 32) = *v145;
                v146 = *(v145 + 16);
                v147 = *(v145 + 24);
                *(v145 + 23) = 0;
                *v145 = 0;
                *(v145 + 48) = v146;
                *(v145 + 56) = v147;
                if (!v144)
                {
                  break;
                }

                v148 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v143, *(a1 + v144 - 8));
                v144 -= 32;
                if (!v148)
                {
                  v149 = a1 + v144 + 32;
                  goto LABEL_142;
                }
              }

              v149 = a1;
LABEL_142:
              a2 = v218;
              if (*(v149 + 23) < 0)
              {
                operator delete(*v149);
              }

              *v149 = v141;
              *(v149 + 8) = *v247;
              *(v149 + 15) = *&v247[7];
              *(v149 + 23) = v142;
              *(v149 + 24) = v143;
            }

            v135 = v140 + 32;
            v138 += 32;
            v139 = v140;
          }

          while (v140 + 32 != a2);
        }
      }

      else if (!v137)
      {
        v190 = a1 - 8;
        do
        {
          v191 = v135;
          if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v135 + 24), *(a1 + 24)))
          {
            v192 = *v191;
            *v251 = *(v191 + 8);
            *&v251[7] = *(v191 + 15);
            v193 = *(v191 + 23);
            *(v191 + 8) = 0;
            *(v191 + 16) = 0;
            *v191 = 0;
            v194 = *(a1 + 56);
            v195 = v190;
            do
            {
              v196 = v195;
              if (*(v195 + 63) < 0)
              {
                operator delete(*(v195 + 40));
              }

              *(v196 + 40) = *(v196 + 8);
              v197 = *(v196 + 24);
              v198 = *(v196 + 32);
              *(v196 + 31) = 0;
              *(v196 + 8) = 0;
              *(v196 + 56) = v197;
              *(v196 + 64) = v198;
              v199 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v194, *v196);
              v195 = v196 - 32;
            }

            while (v199);
            if (*(v196 + 31) < 0)
            {
              operator delete(*(v196 + 8));
            }

            *(v196 + 8) = v192;
            *(v196 + 23) = *&v251[7];
            *(v196 + 16) = *v251;
            *(v196 + 31) = v193;
            *(v196 + 32) = v194;
          }

          v135 = v191 + 32;
          v190 += 32;
          a1 = v191;
        }

        while (v191 + 32 != a2);
      }

      goto LABEL_222;
    }

    if (!a4)
    {
      if (a1 != a2)
      {
        v150 = v11 >> 1;
        v151 = v11 >> 1;
        do
        {
          v152 = v151;
          if (v150 >= v151)
          {
            v153 = (2 * v151) | 1;
            v154 = a1 + 32 * v153;
            v155 = *a3;
            if (2 * v151 + 2 < v10)
            {
              v156 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(v155, *(v154 + 24), *(v154 + 56));
              v157 = 32;
              if (!v156)
              {
                v157 = 0;
              }

              v154 += v157;
              if (v156)
              {
                v153 = 2 * v152 + 2;
              }

              v155 = *a3;
            }

            v158 = a1 + 32 * v152;
            if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(v155, *(v154 + 24), *(v158 + 24)))
            {
              v213 = *v158;
              *&v248[7] = *(v158 + 15);
              *v248 = *(v158 + 8);
              v216 = *(v158 + 23);
              *v158 = 0;
              *(v158 + 8) = 0;
              *(v158 + 16) = 0;
              v159 = *(v158 + 24);
              do
              {
                v160 = v154;
                if (*(v158 + 23) < 0)
                {
                  operator delete(*v158);
                }

                v161 = *v154;
                *(v158 + 16) = *(v154 + 16);
                *v158 = v161;
                *(v154 + 23) = 0;
                *v154 = 0;
                *(v158 + 24) = *(v154 + 24);
                if (v150 < v153)
                {
                  break;
                }

                v162 = (2 * v153) | 1;
                v154 = a1 + 32 * v162;
                v153 = 2 * v153 + 2;
                if (v153 >= v10)
                {
                  v153 = v162;
                }

                else
                {
                  v163 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v154 + 24), *(v154 + 56));
                  v164 = 32;
                  if (!v163)
                  {
                    v164 = 0;
                  }

                  v154 += v164;
                  if (!v163)
                  {
                    v153 = v162;
                  }
                }

                v158 = v160;
              }

              while (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v154 + 24), v159));
              if (*(v160 + 23) < 0)
              {
                operator delete(*v160);
              }

              *v160 = v213;
              *(v160 + 8) = *v248;
              *(v160 + 15) = *&v248[7];
              *(v160 + 23) = v216;
              *(v160 + 24) = v159;
            }
          }

          v151 = v152 - 1;
        }

        while (v152);
        v165 = v218;
        do
        {
          v166 = 0;
          v167 = v165;
          v168 = *a1;
          *v223 = *(a1 + 8);
          *&v223[7] = *(a1 + 15);
          v219 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v214 = *(a1 + 24);
          v217 = v168;
          v169 = a1;
          do
          {
            v170 = v169 + 32 * v166;
            v171 = v170 + 32;
            v172 = (2 * v166) | 1;
            v166 = 2 * v166 + 2;
            if (v166 >= v10)
            {
              v166 = v172;
            }

            else if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v170 + 56), *(v170 + 88)))
            {
              v171 = v170 + 64;
            }

            else
            {
              v166 = v172;
            }

            if (*(v169 + 23) < 0)
            {
              operator delete(*v169);
            }

            v173 = *v171;
            *(v169 + 16) = *(v171 + 16);
            *v169 = v173;
            *(v171 + 23) = 0;
            *v171 = 0;
            *(v169 + 24) = *(v171 + 24);
            v169 = v171;
          }

          while (v166 <= ((v10 - 2) >> 1));
          v165 = v167 - 4;
          v174 = *(v171 + 23);
          if (v171 == v167 - 4)
          {
            if (v174 < 0)
            {
              operator delete(*v171);
            }

            *v171 = v217;
            *(v171 + 8) = *v223;
            *(v171 + 15) = *&v223[7];
            *(v171 + 23) = v219;
            *(v171 + 24) = v214;
          }

          else
          {
            if (v174 < 0)
            {
              operator delete(*v171);
            }

            v175 = *v165;
            *(v171 + 16) = *(v167 - 2);
            *v171 = v175;
            *(v167 - 9) = 0;
            *(v167 - 32) = 0;
            *(v171 + 24) = *(v167 - 1);
            if (*(v167 - 9) < 0)
            {
              operator delete(*v165);
            }

            *(v167 - 4) = v217;
            *(v167 - 17) = *&v223[7];
            *(v167 - 3) = *v223;
            *(v167 - 9) = v219;
            *(v167 - 1) = v214;
            v176 = (v171 + 32 - a1) >> 5;
            v177 = v176 < 2;
            v178 = v176 - 2;
            if (!v177)
            {
              v179 = v178 >> 1;
              v180 = a1 + 32 * (v178 >> 1);
              if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v180 + 24), *(v171 + 24)))
              {
                v220 = v167 - 4;
                v181 = *v171;
                *v249 = *(v171 + 8);
                *&v249[7] = *(v171 + 15);
                v182 = *(v171 + 23);
                *(v171 + 8) = 0;
                *(v171 + 16) = 0;
                *v171 = 0;
                v183 = *(v171 + 24);
                do
                {
                  v184 = v180;
                  if (*(v171 + 23) < 0)
                  {
                    operator delete(*v171);
                  }

                  v185 = *v180;
                  *(v171 + 16) = *(v180 + 16);
                  *v171 = v185;
                  *(v180 + 23) = 0;
                  *v180 = 0;
                  *(v171 + 24) = *(v180 + 24);
                  if (!v179)
                  {
                    break;
                  }

                  v179 = (v179 - 1) >> 1;
                  v180 = a1 + 32 * v179;
                  v171 = v184;
                }

                while (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v180 + 24), v183));
                if (*(v184 + 23) < 0)
                {
                  operator delete(*v184);
                }

                *v184 = v181;
                *(v184 + 8) = *v249;
                *(v184 + 15) = *&v249[7];
                *(v184 + 23) = v182;
                *(v184 + 24) = v183;
                v165 = v220;
              }
            }
          }

          v177 = v10-- <= 2;
        }

        while (!v177);
      }

      goto LABEL_222;
    }

    v12 = a1 + 32 * (v10 >> 1);
    v13 = *a3;
    if (v10 >= 0x81)
    {
      v14 = (v12 + 24);
      v15 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(v13, *(v12 + 24), *(a1 + 24));
      v16 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v215, *(v12 + 24));
      v208 = a4;
      if (v15)
      {
        if (v16)
        {
          v253 = *(a1 + 16);
          v224 = *a1;
          v17 = *v209;
          *(a1 + 16) = *(v209 + 16);
          *a1 = v17;
          *(v209 + 16) = v253;
          *v209 = v224;
          v18 = (a1 + 24);
          goto LABEL_27;
        }

        v259 = *(a1 + 16);
        v230 = *a1;
        v30 = *v12;
        v31 = *(v12 + 24);
        *(a1 + 16) = *(v12 + 16);
        *a1 = v30;
        *v12 = v230;
        v32 = *(a1 + 24);
        *(a1 + 24) = v31;
        *(v12 + 16) = v259;
        *(v12 + 24) = v32;
        if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v215, v32))
        {
          v260 = *(v12 + 16);
          v231 = *v12;
          v33 = *v209;
          *(v12 + 16) = *(v209 + 16);
          *v12 = v33;
          *(v209 + 16) = v260;
          *v209 = v231;
          v18 = (v12 + 24);
LABEL_27:
          v26 = v215;
LABEL_28:
          v34 = *v18;
          *v18 = *v26;
          *v26 = v34;
        }
      }

      else if (v16)
      {
        v255 = *(v12 + 16);
        v226 = *v12;
        v23 = *v209;
        *(v12 + 16) = *(v209 + 16);
        *v12 = v23;
        *(v209 + 16) = v255;
        *v209 = v226;
        v24 = *(v12 + 24);
        *(v12 + 24) = *v215;
        *v215 = v24;
        if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v12 + 24), *(a1 + 24)))
        {
          v256 = *(a1 + 16);
          v227 = *a1;
          v25 = *v12;
          *(a1 + 16) = *(v12 + 16);
          *a1 = v25;
          *(v12 + 16) = v256;
          *v12 = v227;
          v18 = (a1 + 24);
          v26 = (v12 + 24);
          goto LABEL_28;
        }
      }

      v35 = (v12 - 8);
      v36 = (v12 - 32);
      v37 = (a1 + 56);
      v38 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v12 - 8), *(a1 + 56));
      v39 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v211, *(v12 - 8));
      if (v38)
      {
        if (v39)
        {
          v40 = *(a1 + 32);
          v41 = *(a1 + 48);
          v42 = *(v207 + 16);
          *(a1 + 32) = *v207;
          *(a1 + 48) = v42;
          *(v207 + 16) = v41;
          *v207 = v40;
          goto LABEL_40;
        }

        v53 = *(a1 + 32);
        v54 = *(a1 + 48);
        v55 = *v37;
        v56 = *(v12 - 16);
        *v37 = *(v12 - 8);
        *(a1 + 32) = *v36;
        *(a1 + 48) = v56;
        *v36 = v53;
        *(v12 - 16) = v54;
        *(v12 - 8) = v55;
        if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v211, v55))
        {
          v264 = *(v12 - 16);
          v235 = *v36;
          v57 = *v207;
          *(v12 - 16) = *(v207 + 16);
          *v36 = v57;
          *(v207 + 16) = v264;
          *v207 = v235;
          v37 = (v12 - 8);
LABEL_40:
          v48 = v211;
LABEL_41:
          v58 = *v37;
          *v37 = *v48;
          *v48 = v58;
        }
      }

      else if (v39)
      {
        v261 = *(v12 - 16);
        v232 = *v36;
        v43 = *v207;
        *(v12 - 16) = *(v207 + 16);
        *v36 = v43;
        *(v207 + 16) = v261;
        *v207 = v232;
        v44 = *(v12 - 8);
        *(v12 - 8) = *v211;
        *v211 = v44;
        if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v12 - 8), *v37))
        {
          v45 = *(a1 + 32);
          v46 = *(a1 + 48);
          v47 = *(v12 - 16);
          *(a1 + 32) = *v36;
          *(a1 + 48) = v47;
          *(v12 - 16) = v46;
          *v36 = v45;
          v48 = (v12 - 8);
          goto LABEL_41;
        }
      }

      v59 = (v12 + 56);
      v60 = (v12 + 32);
      v61 = (a1 + 88);
      v62 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v12 + 56), *(a1 + 88));
      v63 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v210, *(v12 + 56));
      if (v62)
      {
        if (v63)
        {
          v64 = *(a1 + 64);
          v65 = *(a1 + 80);
          v66 = *(v206 + 16);
          *(a1 + 64) = *v206;
          *(a1 + 80) = v66;
          *(v206 + 16) = v65;
          *v206 = v64;
          goto LABEL_50;
        }

        v73 = *(a1 + 64);
        v74 = *(a1 + 80);
        v75 = *v61;
        v76 = *(v12 + 48);
        *v61 = *(v12 + 56);
        *(a1 + 64) = *v60;
        *(a1 + 80) = v76;
        *v60 = v73;
        *(v12 + 48) = v74;
        *(v12 + 56) = v75;
        if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v210, v75))
        {
          v266 = *(v12 + 48);
          v237 = *v60;
          v77 = *v206;
          *(v12 + 48) = *(v206 + 16);
          *v60 = v77;
          *(v206 + 16) = v266;
          *v206 = v237;
          v61 = (v12 + 56);
LABEL_50:
          v72 = v210;
LABEL_51:
          v78 = *v61;
          *v61 = *v72;
          *v72 = v78;
        }
      }

      else if (v63)
      {
        v265 = *(v12 + 48);
        v236 = *v60;
        v67 = *v206;
        *(v12 + 48) = *(v206 + 16);
        *v60 = v67;
        *(v206 + 16) = v265;
        *v206 = v236;
        v68 = *(v12 + 56);
        *(v12 + 56) = *v210;
        *v210 = v68;
        if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v12 + 56), *v61))
        {
          v69 = *(a1 + 64);
          v70 = *(a1 + 80);
          v71 = *(v12 + 48);
          *(a1 + 64) = *v60;
          *(a1 + 80) = v71;
          *(v12 + 48) = v70;
          *v60 = v69;
          v72 = (v12 + 56);
          goto LABEL_51;
        }
      }

      v79 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v14, *v35);
      v80 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v59, *v14);
      if (v79)
      {
        if (v80)
        {
          v267 = *(v12 - 16);
          v238 = *v36;
          *v36 = *v60;
          *(v12 - 16) = *(v12 + 48);
          *(v12 + 48) = v267;
          *v60 = v238;
          goto LABEL_60;
        }

        v270 = *(v12 - 16);
        v241 = *v36;
        *v36 = *v12;
        v83 = *(v12 + 24);
        *(v12 - 16) = *(v12 + 16);
        v84 = *(v12 - 8);
        *(v12 - 8) = v83;
        *v12 = v241;
        *(v12 + 16) = v270;
        *(v12 + 24) = v84;
        if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v59, v84))
        {
          v271 = *(v12 + 16);
          v242 = *v12;
          *v12 = *v60;
          *(v12 + 16) = *(v12 + 48);
          *(v12 + 48) = v271;
          *v60 = v242;
          v35 = (v12 + 24);
LABEL_60:
          v85 = *v35;
          *v35 = *v59;
          *v59 = v85;
        }
      }

      else if (v80)
      {
        v268 = *(v12 + 16);
        v239 = *v12;
        *v12 = *v60;
        v81 = *(v12 + 56);
        *(v12 + 16) = *(v12 + 48);
        *v60 = v239;
        v82 = *(v12 + 24);
        *(v12 + 24) = v81;
        *(v12 + 48) = v268;
        *(v12 + 56) = v82;
        if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v81, *v35))
        {
          v269 = *(v12 - 16);
          v240 = *v36;
          *v36 = *v12;
          *(v12 - 16) = *(v12 + 16);
          *(v12 + 16) = v269;
          *v12 = v240;
          v59 = (v12 + 24);
          goto LABEL_60;
        }
      }

      v272 = *(a1 + 16);
      v243 = *a1;
      v86 = *v12;
      *(a1 + 16) = *(v12 + 16);
      *a1 = v86;
      *(v12 + 16) = v272;
      *v12 = v243;
      v19 = (a1 + 24);
      a4 = v208;
      goto LABEL_62;
    }

    v14 = (a1 + 24);
    v19 = (v12 + 24);
    v20 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(v13, *(a1 + 24), *(v12 + 24));
    v21 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v215, *(a1 + 24));
    if (v20)
    {
      if (v21)
      {
        v254 = *(v12 + 16);
        v225 = *v12;
        v22 = *v209;
        *(v12 + 16) = *(v209 + 16);
        *v12 = v22;
        *(v209 + 16) = v254;
        *v209 = v225;
      }

      else
      {
        v262 = *(v12 + 16);
        v233 = *v12;
        v49 = *a1;
        v50 = *(a1 + 24);
        *(v12 + 16) = *(a1 + 16);
        *v12 = v49;
        v51 = *(v12 + 24);
        *(v12 + 24) = v50;
        *a1 = v233;
        *(a1 + 16) = v262;
        *(a1 + 24) = v51;
        if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v215, v51))
        {
          goto LABEL_63;
        }

        v263 = *(a1 + 16);
        v234 = *a1;
        v52 = *v209;
        *(a1 + 16) = *(v209 + 16);
        *a1 = v52;
        *(v209 + 16) = v263;
        *v209 = v234;
        v19 = (a1 + 24);
      }

      v14 = v215;
    }

    else
    {
      if (!v21)
      {
        goto LABEL_63;
      }

      v257 = *(a1 + 16);
      v228 = *a1;
      v27 = *v209;
      *(a1 + 16) = *(v209 + 16);
      *a1 = v27;
      *(v209 + 16) = v257;
      *v209 = v228;
      v28 = *(a1 + 24);
      *(a1 + 24) = *v215;
      *v215 = v28;
      if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 + 24), *v19))
      {
        goto LABEL_63;
      }

      v258 = *(v12 + 16);
      v229 = *v12;
      v29 = *a1;
      *(v12 + 16) = *(a1 + 16);
      *v12 = v29;
      *(a1 + 16) = v258;
      *a1 = v229;
    }

LABEL_62:
    v87 = *v19;
    *v19 = *v14;
    *v14 = v87;
LABEL_63:
    --a4;
    if ((a5 & 1) != 0 || nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 - 8), *(a1 + 24)))
    {
      v88 = *a1;
      *v221 = *(a1 + 8);
      *&v221[7] = *(a1 + 15);
      v89 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v90 = *(a1 + 24);
      v91 = a1;
      do
      {
        v92 = v91;
        v93 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v91 + 56), v90);
        v91 += 32;
      }

      while (v93);
      v94 = a4;
      v95 = v218;
      if (v92 == a1)
      {
        v95 = v218;
        do
        {
          if (v91 >= v95)
          {
            break;
          }

          v97 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v95 - 8), v90);
          v95 -= 32;
        }

        while (!v97);
      }

      else
      {
        do
        {
          v96 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v95 - 8), v90);
          v95 -= 32;
        }

        while (!v96);
      }

      v9 = v92 + 32;
      if (v91 < v95)
      {
        v98 = v95;
        do
        {
          v99 = *v9;
          v100 = *(v9 + 16);
          v101 = *(v98 + 16);
          *v9 = *v98;
          *(v9 + 16) = v101;
          *(v98 + 16) = v100;
          *v98 = v99;
          v102 = *(v9 + 24);
          *(v9 + 24) = *(v98 + 24);
          *(v98 + 24) = v102;
          do
          {
            v103 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v9 + 56), v90);
            v9 += 32;
          }

          while (v103);
          do
          {
            v104 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v98 - 8), v90);
            v98 -= 32;
          }

          while (!v104);
        }

        while (v9 < v98);
      }

      v105 = v88;
      v106 = (v9 - 32);
      if (v9 - 32 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v107 = *v106;
        *(a1 + 16) = *(v9 - 16);
        *a1 = v107;
        *(v9 - 9) = 0;
        *(v9 - 32) = 0;
        *(a1 + 24) = *(v9 - 8);
      }

      if (*(v9 - 9) < 0)
      {
        operator delete(*v106);
      }

      *(v9 - 32) = v105;
      *(v9 - 17) = *&v221[7];
      *(v9 - 24) = *v221;
      *(v9 - 9) = v89;
      *(v9 - 8) = v90;
      v108 = v91 >= v95;
      a2 = v218;
      a4 = v94;
      if (!v108)
      {
        goto LABEL_89;
      }

      v109 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*>(a1, v9 - 32, a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*>(v9, v218, a3))
      {
        a2 = v9 - 32;
        if (!v109)
        {
          goto LABEL_2;
        }

        goto LABEL_222;
      }

      if (!v109)
      {
LABEL_89:
        std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,false>(a1, v9 - 32, a3, a4, a5 & 1);
        a5 = 0;
      }
    }

    else
    {
      v110 = *a1;
      *v222 = *(a1 + 8);
      *&v222[7] = *(a1 + 15);
      v111 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v112 = *(a1 + 24);
      if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v112, *v215))
      {
        v9 = a1;
        do
        {
          v113 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v112, *(v9 + 56));
          v9 += 32;
        }

        while (!v113);
      }

      else
      {
        v114 = a1 + 32;
        do
        {
          v9 = v114;
          if (v114 >= v218)
          {
            break;
          }

          v115 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v112, *(v114 + 24));
          v114 = v9 + 32;
        }

        while (!v115);
      }

      v116 = v218;
      if (v9 < v218)
      {
        v116 = v218;
        do
        {
          v117 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v112, *(v116 - 8));
          v116 -= 32;
        }

        while (v117);
      }

      while (v9 < v116)
      {
        v273 = *(v9 + 16);
        v244 = *v9;
        v118 = *v116;
        *(v9 + 16) = *(v116 + 16);
        *v9 = v118;
        *(v116 + 16) = v273;
        *v116 = v244;
        v119 = *(v9 + 24);
        *(v9 + 24) = *(v116 + 24);
        *(v116 + 24) = v119;
        do
        {
          v120 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v112, *(v9 + 56));
          v9 += 32;
        }

        while (!v120);
        do
        {
          v121 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v112, *(v116 - 8));
          v116 -= 32;
        }

        while (v121);
      }

      v122 = (v9 - 32);
      if (v9 - 32 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v123 = *v122;
        *(a1 + 16) = *(v9 - 16);
        *a1 = v123;
        *(v9 - 9) = 0;
        *(v9 - 32) = 0;
        *(a1 + 24) = *(v9 - 8);
      }

      if (*(v9 - 9) < 0)
      {
        operator delete(*v122);
      }

      a5 = 0;
      *(v9 - 32) = v110;
      *(v9 - 17) = *&v222[7];
      *(v9 - 24) = *v222;
      *(v9 - 9) = v111;
      *(v9 - 8) = v112;
      a2 = v218;
    }
  }

  v124 = *MEMORY[0x277D85DE8];

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(a1, (a1 + 32), (a1 + 64), v209, a3);
}

void sub_2229A9508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18)
{
  if (v18 < 0)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::span_matching::SpanTruncator::logSpans(unsigned int *a1, uint64_t *a2, unsigned int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a1[10];
  if (v6 > 6)
  {
    v7 = 4;
  }

  else
  {
    v7 = dword_2229DA4F4[v6];
  }

  v8 = SNLPOSLoggerForCategory(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[10];
    if (v9 > 3)
    {
      if (v9 <= 5)
      {
        if (v9 == 4)
        {
          v10 = "PSC";
LABEL_25:
          v11 = "[insights-snlp-psc]: ";
          goto LABEL_30;
        }

        v10 = "LVC";
        goto LABEL_14;
      }

      if (v9 == 6)
      {
        v10 = "SSU";
        goto LABEL_29;
      }

      if (v9 == 7)
      {
        v10 = "UNKNOWN";
        goto LABEL_21;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          v10 = "UaaP";
          goto LABEL_17;
        }

        v10 = "OWL";
        goto LABEL_27;
      }

      if (!v9)
      {
        v11 = "[insights-snlp-nlv4]: ";
        v10 = "NLv4";
        goto LABEL_30;
      }

      if (v9 == 1)
      {
        v10 = "SNLC";
LABEL_10:
        v11 = "[insights-snlp-snlc]: ";
LABEL_30:
        v28 = 136315394;
        v29 = v10;
        v30 = 2080;
        v31 = v11;
        _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "[%s] %sThe following spans were kept after truncation:\n", &v28, 0x16u);
        goto LABEL_31;
      }
    }

    v23 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "<UNDEFINED_COMPONENT>";
      v30 = 2048;
      v31 = v9;
      _os_log_impl(&dword_22284A000, v23, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v28, 0x16u);
    }

    v9 = a1[10];
    v10 = "<UNDEFINED_COMPONENT>";
    if (v9 > 2)
    {
      if (v9 <= 4)
      {
        if (v9 != 3)
        {
          goto LABEL_25;
        }

LABEL_17:
        v11 = "[insights-snlp-uaap]: ";
        goto LABEL_30;
      }

      if (v9 != 5)
      {
        if (v9 != 6)
        {
          goto LABEL_21;
        }

LABEL_29:
        v11 = "[insights-snlp-ssu]: ";
        goto LABEL_30;
      }

LABEL_14:
      v11 = "[insights-snlp-lvc]: ";
      goto LABEL_30;
    }

    if (!v9)
    {
      v11 = "[insights-snlp-nlv4]: ";
      goto LABEL_30;
    }

    if (v9 == 1)
    {
      goto LABEL_10;
    }

    if (v9 != 2)
    {
LABEL_21:
      v12 = SNLPOSLoggerForCategory(4);
      v11 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v28 = 136315394;
        v29 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
        v30 = 2048;
        v31 = v9;
        _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v28, 0x16u);
      }

      goto LABEL_30;
    }

LABEL_27:
    v11 = "[insights-snlp-owl]: ";
    goto LABEL_30;
  }

LABEL_31:
  v13 = a3;
  if (a3)
  {
    v14 = 0;
    v15 = 24;
    do
    {
      if (v14 >= (a2[1] - *a2) >> 5)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      nlv4_inference_orchestrator::span_matching::SpanTruncator::logSpan(a1, *(*a2 + v15));
      ++v14;
      v15 += 32;
    }

    while (v13 != v14);
  }

  v16 = a1[10];
  if (v16 > 6)
  {
    v17 = 4;
  }

  else
  {
    v17 = dword_2229DA4F4[v16];
  }

  v18 = SNLPOSLoggerForCategory(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = a1[10];
    if (v19 > 3)
    {
      if (v19 <= 5)
      {
        if (v19 == 4)
        {
          v20 = "PSC";
LABEL_65:
          v21 = "[insights-snlp-psc]: ";
          goto LABEL_70;
        }

        v20 = "LVC";
        goto LABEL_48;
      }

      if (v19 == 6)
      {
        v20 = "SSU";
        goto LABEL_69;
      }

      if (v19 == 7)
      {
        v20 = "UNKNOWN";
        goto LABEL_55;
      }
    }

    else
    {
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          v20 = "UaaP";
          goto LABEL_51;
        }

        v20 = "OWL";
        goto LABEL_67;
      }

      if (!v19)
      {
        v21 = "[insights-snlp-nlv4]: ";
        v20 = "NLv4";
        goto LABEL_70;
      }

      if (v19 == 1)
      {
        v20 = "SNLC";
LABEL_44:
        v21 = "[insights-snlp-snlc]: ";
LABEL_70:
        v28 = 136315394;
        v29 = v20;
        v30 = 2080;
        v31 = v21;
        _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEBUG, "[%s] %sThe following spans were removed during truncation:\n", &v28, 0x16u);
        goto LABEL_71;
      }
    }

    v27 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "<UNDEFINED_COMPONENT>";
      v30 = 2048;
      v31 = v19;
      _os_log_impl(&dword_22284A000, v27, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v28, 0x16u);
    }

    v19 = a1[10];
    v20 = "<UNDEFINED_COMPONENT>";
    if (v19 > 2)
    {
      if (v19 <= 4)
      {
        if (v19 != 3)
        {
          goto LABEL_65;
        }

LABEL_51:
        v21 = "[insights-snlp-uaap]: ";
        goto LABEL_70;
      }

      if (v19 != 5)
      {
        if (v19 != 6)
        {
          goto LABEL_55;
        }

LABEL_69:
        v21 = "[insights-snlp-ssu]: ";
        goto LABEL_70;
      }

LABEL_48:
      v21 = "[insights-snlp-lvc]: ";
      goto LABEL_70;
    }

    if (!v19)
    {
      v21 = "[insights-snlp-nlv4]: ";
      goto LABEL_70;
    }

    if (v19 == 1)
    {
      goto LABEL_44;
    }

    if (v19 != 2)
    {
LABEL_55:
      v22 = SNLPOSLoggerForCategory(4);
      v21 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v28 = 136315394;
        v29 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
        v30 = 2048;
        v31 = v19;
        _os_log_impl(&dword_22284A000, v22, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v28, 0x16u);
      }

      goto LABEL_70;
    }

LABEL_67:
    v21 = "[insights-snlp-owl]: ";
    goto LABEL_70;
  }

LABEL_71:
  v24 = *a2;
  if (v13 < (a2[1] - *a2) >> 5)
  {
    v25 = (32 * v13) | 0x18;
    do
    {
      nlv4_inference_orchestrator::span_matching::SpanTruncator::logSpan(a1, *(v24 + v25));
      ++v13;
      v24 = *a2;
      v25 += 32;
    }

    while (v13 < (a2[1] - *a2) >> 5);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void nlv4_inference_orchestrator::span_matching::SpanTruncator::logSpan(nlv4_inference_orchestrator::span_matching::SpanTruncator *this, const sirinluinternal::MatchingSpan *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = *(this + 10);
  if ((~*(a2 + 80) & 3) != 0)
  {
    if (v4 > 6)
    {
      v6 = 4;
    }

    else
    {
      v6 = dword_2229DA4F4[v4];
    }

    v11 = SNLPOSLoggerForCategory(v6);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_67;
    }

    v12 = *(this + 10);
    if (v12 > 3)
    {
      if (v12 <= 5)
      {
        if (v12 == 4)
        {
          v13 = "PSC";
LABEL_51:
          v14 = "[insights-snlp-psc]: ";
          goto LABEL_63;
        }

        v13 = "LVC";
        goto LABEL_29;
      }

      if (v12 == 6)
      {
        v13 = "SSU";
        goto LABEL_62;
      }

      if (v12 == 7)
      {
        v13 = "UNKNOWN";
        goto LABEL_44;
      }
    }

    else
    {
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          v13 = "UaaP";
          goto LABEL_35;
        }

        v13 = "OWL";
        goto LABEL_55;
      }

      if (!v12)
      {
        v14 = "[insights-snlp-nlv4]: ";
        v13 = "NLv4";
        goto LABEL_63;
      }

      if (v12 == 1)
      {
        v13 = "SNLC";
LABEL_21:
        v14 = "[insights-snlp-snlc]: ";
LABEL_63:
        v23 = *(a2 + 6);
        if (*(v23 + 23) < 0)
        {
          v23 = *v23;
        }

        v27 = 136315650;
        v28 = v13;
        v29 = 2080;
        v30 = v14;
        v31 = 2080;
        v32 = v23;
        v20 = "[%s] %s  Span with label %s.\n";
        v21 = v11;
        v22 = 32;
        goto LABEL_66;
      }
    }

    v26 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315394;
      v28 = "<UNDEFINED_COMPONENT>";
      v29 = 2048;
      v30 = v12;
      _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v27, 0x16u);
    }

    v12 = *(this + 10);
    v13 = "<UNDEFINED_COMPONENT>";
    if (v12 > 2)
    {
      if (v12 <= 4)
      {
        if (v12 != 3)
        {
          goto LABEL_51;
        }

LABEL_35:
        v14 = "[insights-snlp-uaap]: ";
        goto LABEL_63;
      }

      if (v12 != 5)
      {
        if (v12 != 6)
        {
          goto LABEL_44;
        }

LABEL_62:
        v14 = "[insights-snlp-ssu]: ";
        goto LABEL_63;
      }

LABEL_29:
      v14 = "[insights-snlp-lvc]: ";
      goto LABEL_63;
    }

    if (!v12)
    {
      v14 = "[insights-snlp-nlv4]: ";
      goto LABEL_63;
    }

    if (v12 == 1)
    {
      goto LABEL_21;
    }

    if (v12 != 2)
    {
LABEL_44:
      v16 = SNLPOSLoggerForCategory(4);
      v14 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v27 = 136315394;
        v28 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
        v29 = 2048;
        v30 = v12;
        _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v27, 0x16u);
      }

      goto LABEL_63;
    }

LABEL_55:
    v14 = "[insights-snlp-owl]: ";
    goto LABEL_63;
  }

  if (v4 > 6)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_2229DA4F4[v4];
  }

  v7 = SNLPOSLoggerForCategory(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(this + 10);
    if (v8 > 3)
    {
      if (v8 <= 5)
      {
        if (v8 == 4)
        {
          v9 = "PSC";
LABEL_49:
          v10 = "[insights-snlp-psc]: ";
          goto LABEL_58;
        }

        v9 = "LVC";
        goto LABEL_25;
      }

      if (v8 == 6)
      {
        v9 = "SSU";
        goto LABEL_57;
      }

      if (v8 == 7)
      {
        v9 = "UNKNOWN";
        goto LABEL_39;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v8 != 2)
        {
          v9 = "UaaP";
          goto LABEL_32;
        }

        v9 = "OWL";
        goto LABEL_53;
      }

      if (!v8)
      {
        v10 = "[insights-snlp-nlv4]: ";
        v9 = "NLv4";
        goto LABEL_58;
      }

      if (v8 == 1)
      {
        v9 = "SNLC";
LABEL_13:
        v10 = "[insights-snlp-snlc]: ";
LABEL_58:
        v17 = *(a2 + 6);
        if (*(v17 + 23) < 0)
        {
          v17 = *v17;
        }

        v19 = *(a2 + 18);
        v18 = *(a2 + 19);
        v27 = 136316162;
        v28 = v9;
        v29 = 2080;
        v30 = v10;
        v31 = 2080;
        v32 = v17;
        v33 = 1024;
        v34 = v18;
        v35 = 1024;
        v36 = v19;
        v20 = "[%s] %s  Span with label %s across indices (%u, %u).\n";
        v21 = v7;
        v22 = 44;
LABEL_66:
        _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEBUG, v20, &v27, v22);
        goto LABEL_67;
      }
    }

    v25 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315394;
      v28 = "<UNDEFINED_COMPONENT>";
      v29 = 2048;
      v30 = v8;
      _os_log_impl(&dword_22284A000, v25, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v27, 0x16u);
    }

    v8 = *(this + 10);
    v9 = "<UNDEFINED_COMPONENT>";
    if (v8 > 2)
    {
      if (v8 <= 4)
      {
        if (v8 != 3)
        {
          goto LABEL_49;
        }

LABEL_32:
        v10 = "[insights-snlp-uaap]: ";
        goto LABEL_58;
      }

      if (v8 != 5)
      {
        if (v8 != 6)
        {
          goto LABEL_39;
        }

LABEL_57:
        v10 = "[insights-snlp-ssu]: ";
        goto LABEL_58;
      }

LABEL_25:
      v10 = "[insights-snlp-lvc]: ";
      goto LABEL_58;
    }

    if (!v8)
    {
      v10 = "[insights-snlp-nlv4]: ";
      goto LABEL_58;
    }

    if (v8 == 1)
    {
      goto LABEL_13;
    }

    if (v8 != 2)
    {
LABEL_39:
      v15 = SNLPOSLoggerForCategory(4);
      v10 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v27 = 136315394;
        v28 = "[insights-snlp-<UNDEFINED_COMPONENT>]: ";
        v29 = 2048;
        v30 = v8;
        _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v27, 0x16u);
      }

      goto LABEL_58;
    }

LABEL_53:
    v10 = "[insights-snlp-owl]: ";
    goto LABEL_58;
  }

LABEL_67:
  v24 = *MEMORY[0x277D85DE8];
}

BOOL nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(nlv4_inference_orchestrator::span_matching::SpanTruncator *this, sirinluinternal::MatchingSpan *a2, const sirinluinternal::MatchingSpan *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  if (v6 != v7)
  {
    while (*v6 != 2)
    {
      if (++v6 == v7)
      {
        v6 = *(a2 + 2);
        break;
      }
    }
  }

  v8 = v6 == v7;
  isReinsertionDataDetectorSpan = nlv4_inference_orchestrator::span_matching::SpanTruncator::isReinsertionDataDetectorSpan(this, a2);
  v10 = *(a2 + 6);
  v28 = v8;
  v29 = !isReinsertionDataDetectorSpan;
  if (*(v10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    v30.__r_.__value_.__r.__words[2] = *(v10 + 2);
    *&v30.__r_.__value_.__l.__data_ = v11;
  }

  v12 = *(a3 + 1);
  v13 = *(a3 + 2);
  if (v12 != v13)
  {
    while (*v12 != 2)
    {
      if (++v12 == v13)
      {
        v12 = *(a3 + 2);
        break;
      }
    }
  }

  v14 = nlv4_inference_orchestrator::span_matching::SpanTruncator::isReinsertionDataDetectorSpan(this, a3);
  v15 = v12 == v13;
  v16 = *(a3 + 6);
  v26 = !v14;
  if (*(v16 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v16, *(v16 + 1));
    v15 = v12 == v13;
  }

  else
  {
    v17 = *v16;
    __p.__r_.__value_.__r.__words[2] = *(v16 + 2);
    *&__p.__r_.__value_.__l.__data_ = v17;
  }

  if (v28 < v15)
  {
    goto LABEL_16;
  }

  if (v15 < v28)
  {
    goto LABEL_18;
  }

  if (v29 < v26)
  {
LABEL_16:
    v18 = 1;
    goto LABEL_19;
  }

  if (v26 < v29)
  {
LABEL_18:
    v18 = 0;
  }

  else
  {
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v30;
    }

    else
    {
      v21 = v30.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v22 >= size)
    {
      v24 = size;
    }

    else
    {
      v24 = v22;
    }

    v25 = memcmp(v21, p_p, v24);
    if (v25)
    {
      v18 = v25 < 0;
    }

    else
    {
      v18 = size < v22;
    }
  }

LABEL_19:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  return v18;
}

void sub_2229AA37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(uint64_t a1, sirinluinternal::MatchingSpan **a2, sirinluinternal::MatchingSpan **a3, __int128 *a4, nlv4_inference_orchestrator::span_matching::SpanTruncator **a5)
{
  v10 = a2 + 3;
  v11 = (a1 + 24);
  v12 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, a2[3], *(a1 + 24));
  v13 = a3 + 3;
  v14 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, a3[3], *v10);
  if (v12)
  {
    if (v14)
    {
      v15 = *(a1 + 16);
      v16 = *a1;
      v17 = a3[2];
      *a1 = *a3;
      *(a1 + 16) = v17;
      *a3 = v16;
      a3[2] = v15;
      v18 = (a1 + 24);
LABEL_9:
      v26 = a3 + 3;
      goto LABEL_10;
    }

    v27 = *(a1 + 16);
    v28 = *a1;
    v29 = a2[2];
    *a1 = *a2;
    *(a1 + 16) = v29;
    *a2 = v28;
    a2[2] = v27;
    v30 = *(a1 + 24);
    *(a1 + 24) = a2[3];
    a2[3] = v30;
    if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, *v13, v30))
    {
      v31 = a2[2];
      v32 = *a2;
      v33 = a3[2];
      *a2 = *a3;
      a2[2] = v33;
      *a3 = v32;
      a3[2] = v31;
      v18 = v10;
      goto LABEL_9;
    }
  }

  else if (v14)
  {
    v19 = a2[2];
    v20 = *a2;
    v21 = a3[2];
    *a2 = *a3;
    a2[2] = v21;
    *a3 = v20;
    a3[2] = v19;
    v22 = a2[3];
    a2[3] = a3[3];
    a3[3] = v22;
    if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, a2[3], *v11))
    {
      v23 = *(a1 + 16);
      v24 = *a1;
      v25 = a2[2];
      *a1 = *a2;
      *(a1 + 16) = v25;
      *a2 = v24;
      a2[2] = v23;
      v18 = (a1 + 24);
      v26 = v10;
LABEL_10:
      v34 = *v18;
      *v18 = *v26;
      *v26 = v34;
    }
  }

  if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, *(a4 + 3), *v13))
  {
    v36 = a3[2];
    v37 = *a3;
    v38 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v38;
    *a4 = v37;
    *(a4 + 2) = v36;
    v39 = a3[3];
    a3[3] = *(a4 + 3);
    *(a4 + 3) = v39;
    if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, a3[3], *v10))
    {
      v40 = a2[2];
      v41 = *a2;
      v42 = a3[2];
      *a2 = *a3;
      a2[2] = v42;
      *a3 = v41;
      a3[2] = v40;
      v43 = a2[3];
      a2[3] = a3[3];
      a3[3] = v43;
      if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a5, a2[3], *v11))
      {
        v44 = *(a1 + 16);
        result = *a1;
        v45 = a2[2];
        *a1 = *a2;
        *(a1 + 16) = v45;
        *a2 = result;
        a2[2] = v44;
        v46 = *(a1 + 24);
        *(a1 + 24) = a2[3];
        a2[3] = v46;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(uint64_t a1, sirinluinternal::MatchingSpan **a2, sirinluinternal::MatchingSpan **a3, __int128 *a4, __int128 *a5, nlv4_inference_orchestrator::span_matching::SpanTruncator **a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(a1, a2, a3, a4, a6);
  if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a6, *(a5 + 3), *(a4 + 3)))
  {
    v13 = *(a4 + 2);
    v14 = *a4;
    v15 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v15;
    *a5 = v14;
    *(a5 + 2) = v13;
    v16 = *(a4 + 3);
    *(a4 + 3) = *(a5 + 3);
    *(a5 + 3) = v16;
    if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a6, *(a4 + 3), a3[3]))
    {
      v17 = a3[2];
      v18 = *a3;
      v19 = *(a4 + 2);
      *a3 = *a4;
      a3[2] = v19;
      *a4 = v18;
      *(a4 + 2) = v17;
      v20 = a3[3];
      a3[3] = *(a4 + 3);
      *(a4 + 3) = v20;
      if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a6, a3[3], a2[3]))
      {
        v21 = a2[2];
        v22 = *a2;
        v23 = a3[2];
        *a2 = *a3;
        a2[2] = v23;
        *a3 = v22;
        a3[2] = v21;
        v24 = a2[3];
        a2[3] = a3[3];
        a3[3] = v24;
        if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a6, a2[3], *(a1 + 24)))
        {
          v25 = *(a1 + 16);
          result = *a1;
          v26 = a2[2];
          *a1 = *a2;
          *(a1 + 16) = v26;
          *a2 = result;
          a2[2] = v25;
          v27 = *(a1 + 24);
          *(a1 + 24) = a2[3];
          a2[3] = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*>(uint64_t a1, uint64_t a2, nlv4_inference_orchestrator::span_matching::SpanTruncator **a3)
{
  v4 = a2;
  v74 = *MEMORY[0x277D85DE8];
  v6 = (a2 - a1) >> 5;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v11 = (a1 + 56);
        v12 = (a1 + 32);
        v13 = (a1 + 24);
        v14 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 + 56), *(a1 + 24));
        v16 = *(v4 - 8);
        v15 = (v4 - 8);
        v17 = v15 - 3;
        v18 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v16, *v11);
        if (v14)
        {
          if (v18)
          {
            v19 = *(a1 + 16);
            v20 = *a1;
            v21 = *(v15 - 1);
            *a1 = *v17;
            *(a1 + 16) = v21;
            *v17 = v20;
            *(v15 - 1) = v19;
          }

          else
          {
            v43 = *a1;
            *a1 = *v12;
            v44 = *(a1 + 48);
            *v12 = v43;
            v45 = *(a1 + 24);
            *(a1 + 48) = *(a1 + 16);
            v46 = *(a1 + 56);
            *(a1 + 16) = v44;
            *(a1 + 24) = v46;
            *(a1 + 56) = v45;
            if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v15, v45))
            {
              goto LABEL_46;
            }

            v47 = *(a1 + 48);
            v48 = *v12;
            v49 = *(v15 - 1);
            *v12 = *v17;
            *(a1 + 48) = v49;
            *v17 = v48;
            *(v15 - 1) = v47;
            v13 = (a1 + 56);
          }

          v11 = v15;
        }

        else
        {
          if (!v18)
          {
            goto LABEL_46;
          }

          v31 = *(a1 + 48);
          v32 = *v12;
          v33 = *(v15 - 1);
          *v12 = *v17;
          *(a1 + 48) = v33;
          *v17 = v32;
          *(v15 - 1) = v31;
          v34 = *v11;
          *v11 = *v15;
          *v15 = v34;
          if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *v11, *v13))
          {
            goto LABEL_46;
          }

          v35 = *(a1 + 16);
          v36 = *a1;
          *a1 = *v12;
          *(a1 + 16) = *(a1 + 48);
          *v12 = v36;
          *(a1 + 48) = v35;
        }

        v50 = *v13;
        *v13 = *v11;
        *v11 = v50;
        goto LABEL_46;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(a1, (a1 + 32), (a1 + 64), (a2 - 32), a3);
        goto LABEL_46;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32), a3);
        goto LABEL_46;
    }
  }

  else
  {
    if (v6 < 2)
    {
      goto LABEL_46;
    }

    if (v6 == 2)
    {
      if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a2 - 8), *(a1 + 24)))
      {
        v7 = *(a1 + 16);
        v8 = *a1;
        v9 = *(v4 - 16);
        *a1 = *(v4 - 32);
        *(a1 + 16) = v9;
        *(v4 - 32) = v8;
        *(v4 - 16) = v7;
        v10 = *(a1 + 24);
        *(a1 + 24) = *(v4 - 8);
        *(v4 - 8) = v10;
      }

      goto LABEL_46;
    }
  }

  v22 = (a1 + 56);
  v23 = (a1 + 24);
  v24 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 + 56), *(a1 + 24));
  v25 = (a1 + 88);
  v26 = a1 + 64;
  v27 = (a1 + 32);
  v28 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 + 88), *(a1 + 56));
  if (v24)
  {
    if (v28)
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *v26;
      *(a1 + 16) = *(a1 + 80);
      *v26 = v30;
      *(a1 + 80) = v29;
    }

    else
    {
      v51 = *a1;
      *a1 = *v27;
      v52 = *(a1 + 48);
      *v27 = v51;
      v53 = *(a1 + 24);
      *(a1 + 48) = *(a1 + 16);
      v54 = *(a1 + 56);
      *(a1 + 16) = v52;
      *(a1 + 24) = v54;
      *(a1 + 56) = v53;
      if (!nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(a1 + 88), v53))
      {
        goto LABEL_31;
      }

      v55 = *(a1 + 48);
      v56 = *v27;
      *v27 = *v26;
      *(a1 + 48) = *(a1 + 80);
      *v26 = v56;
      *(a1 + 80) = v55;
      v23 = (a1 + 56);
    }

    v22 = (a1 + 88);
    goto LABEL_30;
  }

  if (v28)
  {
    v37 = *(a1 + 48);
    v38 = *v27;
    *v27 = *v26;
    *(a1 + 48) = *(a1 + 80);
    *v26 = v38;
    *(a1 + 80) = v37;
    v39 = *v22;
    v40 = *v25;
    *v22 = *v25;
    *v25 = v39;
    if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v40, *v23))
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *v27;
      *(a1 + 16) = *(a1 + 48);
      *v27 = v42;
      *(a1 + 48) = v41;
LABEL_30:
      v57 = *v23;
      *v23 = *v22;
      *v22 = v57;
    }
  }

LABEL_31:
  v58 = a1 + 96;
  if (a1 + 96 != v4)
  {
    v59 = 0;
    v60 = 0;
    v72 = v4;
    do
    {
      if (nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, *(v58 + 24), *(v26 + 24)))
      {
        v61 = *v58;
        *v73 = *(v58 + 8);
        *&v73[7] = *(v58 + 15);
        v62 = *(v58 + 23);
        *(v58 + 8) = 0;
        *(v58 + 16) = 0;
        *v58 = 0;
        v63 = *(v58 + 24);
        v64 = v59;
        while (1)
        {
          v65 = a1 + v64;
          if (*(a1 + v64 + 119) < 0)
          {
            operator delete(*(v65 + 96));
          }

          *(v65 + 96) = *(v65 + 64);
          v66 = *(v65 + 80);
          v67 = *(v65 + 88);
          *(v65 + 87) = 0;
          *(v65 + 64) = 0;
          *(v65 + 112) = v66;
          *(v65 + 120) = v67;
          if (v64 == -64)
          {
            break;
          }

          v68 = nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)const::$_0::operator()(*a3, v63, *(a1 + v64 + 56));
          v64 -= 32;
          if (!v68)
          {
            v69 = a1 + v64 + 96;
            goto LABEL_41;
          }
        }

        v69 = a1;
LABEL_41:
        if (*(v69 + 23) < 0)
        {
          operator delete(*v69);
        }

        *v69 = v61;
        *(v69 + 8) = *v73;
        *(v69 + 15) = *&v73[7];
        *(v69 + 23) = v62;
        *(v69 + 24) = v63;
        if (++v60 == 8)
        {
          result = v58 + 32 == v72;
          goto LABEL_47;
        }

        v4 = v72;
      }

      v26 = v58;
      v59 += 32;
      v58 += 32;
    }

    while (v58 != v4);
  }

LABEL_46:
  result = 1;
LABEL_47:
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2229AAC3C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL nlv4_inference_orchestrator::span_matching::SpanTruncator::isReinsertionDataDetectorSpan(nlv4_inference_orchestrator::span_matching::SpanTruncator *this, const sirinluinternal::MatchingSpan *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  if (v2 != v3)
  {
    while (*v2)
    {
      if (++v2 == v3)
      {
        return 0;
      }
    }
  }

  return v2 != v3 && std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this, *(a2 + 6)) != 0;
}

void nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(nlv4_inference_orchestrator::span_matching::SpanTruncator *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = 126 - 2 * __clz((v2 - v3) >> 5);
  v6 = a1;
  if (v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanTruncator::sortBySpanLabelAndSpanType(std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>> &)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>*,false>(v3, v2, &v6, v5, 1);
}

BOOL nlv4_inference_orchestrator::span_matching::SpanTruncator::isUserVocabSpan(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    while (*v2 != 2)
    {
      if (++v2 == v3)
      {
        v2 = *(a2 + 16);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::toTreeDebug@<X0>(snlp::common::text_uso_graph::UDATextTreeParser *this@<X0>, _BYTE *a2@<X8>)
{
  result = *(this + 12);
  if (result)
  {
    return (*(*result + 56))();
  }

  a2[23] = 0;
  *a2 = 0;
  return result;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::textAlignment(snlp::common::text_uso_graph::UDATextTreeParser *this)
{
  result = *(this + 12);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::alias(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::indentation(snlp::common::text_uso_graph::UDATextTreeParser *this)
{
  result = *(this + 12);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::integerValue(snlp::common::text_uso_graph::UDATextTreeParser *this)
{
  result = *(this + 12);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::stringValue(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::edge(uint64_t a1, const void **a2)
{
  if (*(a1 + 88) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    _ZN4snlp6common14text_uso_graph21UDATextTreeParseErrorCI1St13runtime_errorEPKc(exception, "User dialog act not yet specified");
  }

  v4 = siri::ontology::oname::graph::ontology_init::Argument_task(a1);
  v5 = *(v4 + 31);
  if (v5 >= 0)
  {
    v6 = *(v4 + 31);
  }

  else
  {
    v6 = *(v4 + 16);
  }

  v7 = *(a2 + 23);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = a2[1];
  }

  if (v6 == v7)
  {
    v11 = *(v4 + 8);
    v9 = (v4 + 8);
    v10 = v11;
    if (v5 < 0)
    {
      v9 = v10;
    }

    v12 = *a2;
    if (v8 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (!memcmp(v9, v13, v6))
    {
      operator new();
    }
  }

  v14 = *(**(a1 + 96) + 8);

  return v14();
}

void sub_2229AAFD8(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x223DC4D00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<snlp::common::text_uso_graph::UsoGraphTextTreeParser>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *v2 = &unk_2835E90A8;
    std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v2 + 112);
    v3 = *(v2 + 88);
    if (v3)
    {
      *(v2 + 96) = v3;
      operator delete(v3);
    }

    if (*(v2 + 72) == 1 && *(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100]((v2 + 40));
    v4 = *(v2 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

std::runtime_error *_ZN4snlp6common14text_uso_graph21UDATextTreeParseErrorCI1St13runtime_errorEPKc(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2835E8968;
  return result;
}

void snlp::common::text_uso_graph::UDATextTreeParser::node(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  *__p = 0u;
  memset(v23, 0, sizeof(v23));
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  memset(v32, 0, 32);
  v4 = *(a2 + 23);
  v5 = *(a2 + 8);
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
    v4 = v5;
  }

  *(&v32[1].__r_.__value_.__l.__data_ + 1) = 0uLL;
  v6 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a1 + 120, a2, (a2 + v4), v32, 0);
  v7 = *(v2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = *v2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v2 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(__p, v8, v8 + v7, v32, 0);
  if (v32[0].__r_.__value_.__r.__words[0])
  {
    operator delete(v32[0].__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    if (*(a1 + 88) == 1)
    {
      v10 = v2;
      exception = __cxa_allocate_exception(0x10uLL);
      if (*(a1 + 88))
      {
        std::operator+<char>();
        v12 = std::string::append(&v20, " but is being redefined as ");
        v13 = *&v12->__r_.__value_.__l.__data_;
        v21.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
        *&v21.__r_.__value_.__l.__data_ = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        v14 = *(v10 + 23);
        if (v14 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = *v10;
        }

        if (v14 >= 0)
        {
          v16 = *(v10 + 23);
        }

        else
        {
          v16 = *(v10 + 8);
        }

        v17 = std::string::append(&v21, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v32[0].__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v32[0].__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, v32);
        exception->__vftable = &unk_2835E8968;
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }

    std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>((a1 + 64), v2);
  }

  else
  {
    if (*(a1 + 88) != 1)
    {
      v19 = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      std::runtime_error::runtime_error(v19, v32);
      v19->__vftable = &unk_2835E8968;
    }

    (***(a1 + 96))(*(a1 + 96), v2);
  }

  v9 = __p[0];
  if (__p[0])
  {

    operator delete(v9);
  }
}

void sub_2229AB3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23)
{
  if (*(v25 - 137) < 0)
  {
    operator delete(*(v25 - 160));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_10:
      if (a23)
      {
        operator delete(a23);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v23);
  goto LABEL_10;
}

void snlp::common::text_uso_graph::UDATextTreeParser::UDATextTreeParser(uint64_t a1, void *a2)
{
  *a1 = &unk_2835E88D8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v2 = a2[1];
  *(a1 + 104) = *a2;
  *(a1 + 112) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]((a1 + 120), "^(accepted|acknowledged|cancelled|delegated|rejected|user_stated_task|wanted_to_pause|wanted_to_proceed|wanted_to_repeat|UserAccepted|UserAcknowledged|UserCancelled|DelegatedUserDialogAct|UserRejected|UserStatedTask|UserWantedToPause|UserWantedToProceed|UserWantedToRepeat)");
}

void sub_2229AB548(_Unwind_Exception *a1)
{
  v5 = *(v1 + 112);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::unique_ptr<snlp::common::text_uso_graph::UsoGraphTextTreeParser>::reset[abi:ne200100](v3, 0);
  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

uint64_t snlp::common::text_uso_graph::UDATextTreeParser::getAliasMap(snlp::common::text_uso_graph::UDATextTreeParser *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    return v1 + 112;
  }

  else
  {
    return this + 8;
  }
}

void snlp::common::text_uso_graph::UDATextTreeParser::releaseUserDialogAct(snlp::common::text_uso_graph::UDATextTreeParser *this)
{
  if (*(this + 88))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  _ZN4snlp6common14text_uso_graph21UDATextTreeParseErrorCI1St13runtime_errorEPKc(exception, "UDA not yet specified");
}

void sub_2229ABA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      *v18 = 0;
      (*(*v20 + 8))(v20);
      if (a16)
      {
        (*(*a16 + 8))(a16);
      }

      std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](&a17);
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

BOOL std::operator==[abi:ne200100]<std::string,char [9]>(uint64_t a1, char *__s)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a1;
  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

BOOL std::operator==[abi:ne200100]<std::string,char [13]>(uint64_t a1, char *__s)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a1;
  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

BOOL std::operator==[abi:ne200100]<std::string,char [17]>(uint64_t a1, char *__s)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a1;
  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

BOOL std::operator==[abi:ne200100]<std::string,char [10]>(uint64_t a1, char *__s)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a1;
  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

BOOL std::operator==[abi:ne200100]<std::string,char [19]>(uint64_t a1, char *__s)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a1;
  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

BOOL std::operator==[abi:ne200100]<std::string,char [18]>(uint64_t a1, char *__s)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a1;
  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

void snlp::ssu::matcher::SSURequestHandler::buildResponseForApps(uint64_t a1, void *a2, snlp::ssu::proto::SSUValidatedRequest *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 120);
  v14[0] = *(a1 + 112);
  v14[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  snlp::ssu::cache::SSUCacheFileReadStreamManager::SSUCacheFileReadStreamManager(&v15, (a1 + 48), v14, a1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  memset(v13, 0, sizeof(v13));
  v6 = a2[1];
  if (v6 != *a2)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a2) >> 3);
    if (v7 <= 0x666666666666666)
    {
      v17 = v13;
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::app::SSUAppCategory>>(v7);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  snlp::ssu::matcher::SSURequestHandler::generateAllAppCandidates(v13, v12);
  snlp::ssu::proto::SSUValidatedRequest::getRequestId(a3, &buf);
  (*(**(a1 + 144) + 16))(&v9);
  snlp::ssu::matcher::SSUCandidateEncoder::SSUCandidateEncoder(&v11, a1, &buf, &v9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  snlp::ssu::matcher::SSUCandidateEncoder::computeEncodedAppCandidates(&v11, *(*a3 + 80), v12);
}

void sub_2229AC9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int16 a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void **a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  *a12 = 0;
  (*(*v59 + 8))(v59);
  if (__p)
  {
    operator delete(__p);
  }

  std::optional<snlp::common::tensor::InferenceTensor>::~optional(&a30);
  *(v58 + 48) = &a37;
  std::vector<snlp::ssu::matcher::SSUCandidateEncoder::EncodedAppCandidates>::__destroy_vector::operator()[abi:ne200100]((v61 - 192));
  snlp::ssu::matcher::SSUCandidateEncoder::~SSUCandidateEncoder(&a42);
  *(v58 + 48) = &a50;
  std::vector<snlp::ssu::candidate::SSUAppCandidates>::__destroy_vector::operator()[abi:ne200100]((v61 - 192));
  *v60 = &a53;
  std::vector<snlp::ssu::app::SSUAppCategory>::__destroy_vector::operator()[abi:ne200100](&a42);
  snlp::ssu::cache::SSUCacheFileReadStreamManager::~SSUCacheFileReadStreamManager(&a58);
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSURequestHandler::generateAllAppCandidates(void *a1@<X1>, void *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v3 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a1) >> 3);
    if (!HIBYTE(v3))
    {
      v5 = a2;
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>(v3);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2229AD010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<snlp::ssu::candidate::SSUAppCandidates>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSURequestHandler::loadGlobalNegatives(snlp::ssu::matcher::SSURequestHandler *this)
{
  std::__fs::filesystem::operator/[abi:ne200100](&__p, this + 24, &v3);
  snlp::ssu::app::SSUFileWrapper::SSUFileWrapper(v4, &__p);
}

void sub_2229AD140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  snlp::ssu::app::SSUFileWrapper::~SSUFileWrapper((v23 - 24));
  _Unwind_Resume(a1);
}

void snlp::ssu::matcher::SSURequestHandler::buildParsesForApp(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a3 + 8;
    if (*(a3 + 31) < 0)
    {
      v9 = *(a3 + 8);
    }

    buf = 136315138;
    *buf_4 = v9;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "Building parses for app: %s", &buf, 0xCu);
  }

  v10 = *a4;
  *a4 = 0;
  v12 = v10;
  snlp::ssu::matcher::SSURequestHandler::buildSortedAppResults(a1, a2, a3, &v12, &v13);
  v11 = std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>::~unique_ptr[abi:ne200100](&v12);
  snlp::ssu::matcher::SSURequestHandler::buildParsesForAppResults(v11, a3);
}

void sub_2229AD6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 *a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  a15 = &a20;
  std::vector<snlp::ssu::similarity::SSUAppResult>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v6 = (v2 + 704);
    std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&v6);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<boost::archive::binary_iarchive,boost::archive::text_iarchive>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v2 + 576));
    v3 = MEMORY[0x277D82808];
    v4 = *MEMORY[0x277D82808];
    *v2 = *MEMORY[0x277D82808];
    *(v2 + *(v4 - 24)) = *(v3 + 24);
    MEMORY[0x223DC47C0](v2 + 16);
    std::istream::~istream();
    MEMORY[0x223DC4C10](v2 + 424);
    MEMORY[0x223DC4D00](v2, 0x10F2C40FAC52364);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::selflogging::SSUUserRequestCacheEntryInfo>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<snlp::ssu::similarity::SSUMatchInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 256;
        std::allocator<snlp::ssu::similarity::SSUMatchInfo>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<sirinluexternal::UserParse>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 96;
      v7 = v4 - 96;
      v8 = v4 - 96;
      do
      {
        v9 = *v8;
        v8 -= 96;
        (*v9)(v7);
        v6 -= 96;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void snlp::ssu::matcher::SSURequestHandler::BuildParsesResult::~BuildParsesResult(void **this)
{
  v2 = this + 3;
  std::vector<snlp::ssu::similarity::SSUMatchInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<sirinluexternal::UserParse>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<snlp::ssu::candidate::SSUAppCandidates>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>::destroy[abi:ne200100]<snlp::ssu::candidate::SSUAppCandidates,0>(i))
    {
      i -= 256;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::__unordered_map_hasher<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,snlp::ssu::app::SSUAppCategoryHash,std::equal_to<snlp::ssu::app::SSUAppCategory>,true>,std::__unordered_map_equal<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::equal_to<snlp::ssu::app::SSUAppCategory>,snlp::ssu::app::SSUAppCategoryHash,true>,std::allocator<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<snlp::ssu::app::SSUAppCategory const,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void snlp::ssu::matcher::SSUCandidateEncoder::~SSUCandidateEncoder(snlp::ssu::matcher::SSUCandidateEncoder *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void snlp::ssu::cache::SSUCacheFileReadStreamManager::~SSUCacheFileReadStreamManager(void **this)
{
  std::__hash_table<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::__unordered_map_hasher<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,snlp::ssu::app::SSUAppCategoryHash,std::equal_to<snlp::ssu::app::SSUAppCategory>,true>,std::__unordered_map_equal<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::equal_to<snlp::ssu::app::SSUAppCategory>,snlp::ssu::app::SSUAppCategoryHash,true>,std::allocator<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>>>::~__hash_table((this + 8));
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>::destroy[abi:ne200100]<snlp::ssu::candidate::SSUAppCandidates,0>(uint64_t a1)
{
  v3 = (a1 + 232);
  std::vector<snlp::ssu::candidate::SSUCandidate>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 224) == 1)
  {
    if (*(a1 + 223) < 0)
    {
      operator delete(*(a1 + 200));
    }

    v3 = (a1 + 176);
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }
  }

  if (*(a1 + 128) == 1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 88);
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void std::allocator<snlp::ssu::similarity::SSUMatchInfo>::destroy[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 248) == 1 && *(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 208) == 1)
  {
    if (*(a1 + 207) < 0)
    {
      operator delete(*(a1 + 184));
    }

    v3 = (a1 + 160);
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }
  }

  if (*(a1 + 112) == 1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 72);
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void snlp::ssu::matcher::SSURequestHandler::buildSortedAppResults(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v42[4] = *MEMORY[0x277D85DE8];
  v7 = a3 + 8;
  v8 = *(a1 + 80);
  if (v8)
  {
    v12 = *(a3 + 32);
    v13 = vcnt_s8(v8);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      v14 = *(a3 + 32);
      if (*&v8 <= v12)
      {
        v14 = v12 % *&v8;
      }
    }

    else
    {
      v14 = (*&v8 - 1) & v12;
    }

    v15 = *(*(a1 + 72) + 8 * v14);
    if (v15)
    {
      for (i = *v15; i; i = *i)
      {
        v17 = i[1];
        if (v17 == v12)
        {
          if (*(i + 16) == v12)
          {
            v31 = (a3 + 8);
            memset(v32, 0, sizeof(v32));
            v23 = *(*a4 + 704);
            v24 = *(*a4 + 712);
            *buf = v32;
            buf[8] = 0;
            if (v24 != v23)
            {
              v25 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 4);
              if (v25 < 0x555555555555556)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectIntent>>(v25);
              }

              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            v26 = SNLPOSLoggerForCategory(8);
            v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
            if (v27)
            {
              snlp::ssu::matcher::SSURequestHandler::logCacheFileInfo(v27, v31, *a4, v32);
            }

            snlp::ssu::similarity::SSUSimilaritySearchApp::SSUSimilaritySearchApp(buf, *(a3 + 4), (i + 3), v32);
            if (snlp::ssu::matcher::SSURequestHandler::processAllBatches(a1, a2, buf, *a4, v31, a3))
            {
              snlp::ssu::similarity::SSUSimilaritySearchApp::getSearchResult(buf, a5);
              if (*a5 != *(a5 + 8))
              {
                snlp::ssu::cache::SSUCacheFileReadStream::readDebugInformation(*a4, v34);
                if (v36 == 1)
                {
                  snlp::ssu::matcher::SSURequestHandler::attachDebugInformation(a5, v34);
                }

                else
                {
                  v30 = SNLPOSLoggerForCategory(8);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                  {
                    *v33 = 0;
                    _os_log_impl(&dword_22284A000, v30, OS_LOG_TYPE_DEBUG, "Debug information not available in cache file. Output parses will not have a plaintext positive example in identifiers.", v33, 2u);
                  }
                }

                if (v36 == 1)
                {
                  *v33 = &v35;
                  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](v33);
                  *v33 = v34;
                  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](v33);
                }
              }
            }

            else
            {
              v28 = SNLPOSLoggerForCategory(8);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                if (*(a3 + 31) >= 0)
                {
                  v29 = v31;
                }

                else
                {
                  v29 = *(a3 + 8);
                }

                *v34 = 136315138;
                *&v34[4] = v29;
                _os_log_impl(&dword_22284A000, v28, OS_LOG_TYPE_ERROR, "Error searching similarities for %s. Skipping entire app.", v34, 0xCu);
              }

              *(a5 + 32) = 0;
              *(a5 + 40) = 0;
              *(a5 + 8) = 0;
              *(a5 + 16) = 0;
              *a5 = 0;
              *(a5 + 24) = 0;
            }

            *v34 = v42;
            std::vector<std::optional<snlp::ssu::similarity::SSUMatchInfo>>::__destroy_vector::operator()[abi:ne200100](v34);
            std::optional<snlp::ssu::similarity::SSUMatchInfo>::~optional(&v41);
            *v34 = &v40;
            std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](v34);
            *buf = v32;
            std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](buf);
            goto LABEL_26;
          }
        }

        else
        {
          if (v13.u32[0] > 1uLL)
          {
            if (v17 >= *&v8)
            {
              v17 %= *&v8;
            }
          }

          else
          {
            v17 &= *&v8 - 1;
          }

          if (v17 != v14)
          {
            break;
          }
        }
      }
    }
  }

  v18 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 31) >= 0)
    {
      v19 = v7;
    }

    else
    {
      v19 = *(a3 + 8);
    }

    v20 = *(a3 + 32);
    if (v20 <= 3)
    {
      v21 = EnumNamesSSUCategoryType(void)::names[v20];
    }

    else
    {
      v21 = "";
    }

    *buf = 136315394;
    *&buf[4] = v19;
    v38 = 2080;
    v39 = v21;
    _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_ERROR, "Could not find similarity search configuration for app %s and category %s. Skipping entire app.", buf, 0x16u);
  }

  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  *(a5 + 24) = 0;
LABEL_26:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_2229AE7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::__split_buffer<sirinluexternal::UserParse>::~__split_buffer(va1);
  std::vector<sirinluexternal::UserParse>::__destroy_vector::operator()[abi:ne200100](va);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<snlp::ssu::similarity::SSUMatchInfo>>::construct[abi:ne200100]<snlp::ssu::similarity::SSUMatchInfo,snlp::ssu::similarity::SSUMatchInfo,0>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  result = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = result;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a1 + 72, a2 + 9);
    *(a1 + 112) = 1;
  }

  *(a1 + 120) = 0;
  *(a1 + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 120) = v7;
    *(a2 + 16) = 0;
    *(a2 + 17) = 0;
    *(a2 + 15) = 0;
    *(a1 + 144) = a2[9];
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 160) = 0;
    *(a1 + 160) = a2[10];
    *(a1 + 176) = *(a2 + 22);
    *(a2 + 20) = 0;
    *(a2 + 21) = 0;
    *(a2 + 22) = 0;
    result = *(a2 + 184);
    *(a1 + 200) = *(a2 + 25);
    *(a1 + 184) = result;
    *(a2 + 24) = 0;
    *(a2 + 25) = 0;
    *(a2 + 23) = 0;
    *(a1 + 208) = 1;
  }

  result.n128_u32[0] = *(a2 + 54);
  *(a1 + 224) = 0;
  *(a1 + 216) = result.n128_u32[0];
  *(a1 + 248) = 0;
  if (*(a2 + 248) == 1)
  {
    result = a2[14];
    *(a1 + 240) = *(a2 + 30);
    *(a1 + 224) = result;
    *(a2 + 29) = 0;
    *(a2 + 30) = 0;
    *(a2 + 28) = 0;
    *(a1 + 248) = 1;
  }

  return result;
}

void snlp::ssu::similarity::SSUMatchInfo::~SSUMatchInfo(void **this)
{
  if (*(this + 248) == 1 && *(this + 247) < 0)
  {
    operator delete(this[28]);
  }

  if (*(this + 208) == 1)
  {
    if (*(this + 207) < 0)
    {
      operator delete(this[23]);
    }

    v2 = this + 20;
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (*(this + 143) < 0)
    {
      operator delete(this[15]);
    }
  }

  if (*(this + 112) == 1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((this + 9));
    if (*(this + 71) < 0)
    {
      operator delete(this[6]);
    }
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

void std::vector<snlp::ssu::similarity::SSUAppResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 144;
      do
      {
        if (*(v6 + 128) == 1 && *(v6 + 127) < 0)
        {
          operator delete(*(v6 + 104));
        }

        if (*(v6 + 88) == 1)
        {
          if (*(v6 + 87) < 0)
          {
            operator delete(*(v6 + 64));
          }

          v8 = (v6 + 40);
          std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v8);
          if (*(v6 + 23) < 0)
          {
            operator delete(*v6);
          }
        }

        if (*(v6 - 8) == 1)
        {
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v6 - 48);
          if (*(v6 - 49) < 0)
          {
            operator delete(*(v6 - 72));
          }
        }

        if (*(v6 - 73) < 0)
        {
          operator delete(*(v6 - 96));
        }

        if (*(v6 - 121) < 0)
        {
          operator delete(*(v6 - 144));
        }

        v7 = (v6 - 144);
        v6 -= 288;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::similarity::SSUMatchInfo>>(unint64_t a1)
{
  if (!HIBYTE(a1))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<sirinluexternal::UserParse>>(unint64_t a1)
{
  if (a1 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::similarity::SSUMatchInfo>,snlp::ssu::similarity::SSUMatchInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<snlp::ssu::similarity::SSUMatchInfo>>::construct[abi:ne200100]<snlp::ssu::similarity::SSUMatchInfo,snlp::ssu::similarity::SSUMatchInfo,0>(a4, v7);
      v7 += 16;
      a4 += 256;
    }

    while (v7 != a3);
    do
    {
      std::allocator<snlp::ssu::similarity::SSUMatchInfo>::destroy[abi:ne200100](v6);
      v6 += 256;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<snlp::ssu::similarity::SSUMatchInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 256;
    std::allocator<snlp::ssu::similarity::SSUMatchInfo>::destroy[abi:ne200100](i - 256);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<sirinluexternal::UserParse>,sirinluexternal::UserParse*>(uint64_t result, uint64_t (***a2)(void), uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      MEMORY[0x223DC3120](a3, v6);
      v6 += 96;
      a3 += 96;
    }

    while (v6 != a2);
    v7 = v5;
    v8 = v5;
    do
    {
      v9 = *v8;
      v8 += 12;
      result = (*v9)(v5);
      v7 += 12;
      v5 = v8;
    }

    while (v8 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<sirinluexternal::UserParse>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 96);
    *(a1 + 16) = i - 96;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t snlp::ssu::matcher::SSURequestHandler::logCacheFileInfo(uint64_t a1, uint64_t **a2, uint64_t a3, snlp::ssu::cache::SSUCacheObjectIntentList *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v21);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a4 + 1) - *a4) >> 4))
  {
    snlp::ssu::cache::SSUCacheObjectIntentList::getIntentWithIndex(a4, 0, &buf);
    operator new();
  }

  v5 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a2 + 23);
    v7 = *a2;
    v9 = *a4;
    v8 = *(a4 + 1);
    v10 = *(a3 + 744);
    v11 = *(a3 + 736);
    std::stringbuf::str();
    v12 = (v6 >= 0 ? a2 : v7);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
    v13 = v20 >= 0 ? &__p : __p;
    *(buf.__r_.__value_.__r.__words + 4) = v12;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 4);
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
    v27 = v10;
    v28 = 2048;
    v29 = v11;
    v30 = 2080;
    v31 = v13;
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "App %s has numUniqueIntents=%lu, numPositiveBatches=%lu, numNegativeBatches=%lu, intent names: %s", &buf, 0x34u);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }
  }

  v21[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v21[2] = v14;
  v22 = MEMORY[0x277D82878] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  result = MEMORY[0x223DC4C10](&v25);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2229AF2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18, MEMORY[0x277D82818]);
  MEMORY[0x223DC4C10](va);
  _Unwind_Resume(a1);
}

BOOL snlp::ssu::matcher::SSURequestHandler::processAllBatches(uint64_t a1, void *a2, snlp::ssu::similarity::SSUSimilaritySearchApp *a3, snlp::ssu::cache::SSUCacheFileReadStream *this, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!snlp::ssu::matcher::SSURequestHandler::processCacheFileBatches(a1, a3, this, a5, a6))
  {
    v13 = SNLPOSLoggerForCategory(8);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }

    if (*(a5 + 23) >= 0)
    {
      v16 = a5;
    }

    else
    {
      v16 = *a5;
    }

    v20 = 136315138;
    v21 = v16;
    v17 = "Error processing cache file batches for app %s.";
LABEL_19:
    _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_ERROR, v17, &v20, 0xCu);
    result = 0;
    goto LABEL_20;
  }

  v11 = snlp::ssu::matcher::SSURequestHandler::processGlobalNegatives(a1, a3, a2, a5, a6);
  v12 = SNLPOSLoggerForCategory(8);
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }

    if (*(a5 + 23) >= 0)
    {
      v18 = a5;
    }

    else
    {
      v18 = *a5;
    }

    v20 = 136315138;
    v21 = v18;
    v17 = "Error processing global negatives for app %s.";
    goto LABEL_19;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (*(a5 + 23) >= 0)
    {
      v14 = a5;
    }

    else
    {
      v14 = *a5;
    }

    v20 = 136315138;
    v21 = v14;
    _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEBUG, "Successfully processed cache file batches and global negatives for app %s.", &v20, 0xCu);
  }

  result = 1;
LABEL_20:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void snlp::ssu::matcher::SSURequestHandler::attachDebugInformation(uint64_t **a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = v2[4];
      if (v5 >= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3))
      {
        v13 = SNLPOSLoggerForCategory(8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = v2;
          if (*(v2 + 23) < 0)
          {
            v14 = *v2;
          }

          v15 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
          *buf = 134218498;
          v27 = v5;
          v28 = 2048;
          v29 = v15;
          v30 = 2080;
          v31 = v14;
          v16 = v13;
          v17 = "App result batch provenance has batchIndex=%lu, but this is greater than indexes.size()=%lu. Skipping attaching debug information for intent %s.";
          v18 = 32;
          goto LABEL_22;
        }
      }

      else
      {
        v6 = v2[5];
        v7 = (*a2 + 24 * v5);
        if (v6 >= (v7[1] - *v7) >> 3)
        {
          v19 = SNLPOSLoggerForCategory(8);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = v2;
            if (*(v2 + 23) < 0)
            {
              v20 = *v2;
            }

            v21 = (v7[1] - *v7) >> 3;
            *buf = 134218754;
            v27 = v6;
            v28 = 2048;
            v29 = v5;
            v30 = 2048;
            v31 = v21;
            v32 = 2080;
            v33 = v20;
            v16 = v19;
            v17 = "App result batch provenance has encodingIndexWithinBatch=%lu for batchIndex=%lu, but this is greater than indexesForBatch.size()=%lu. Skipping attaching debug information for intent %s.";
            v18 = 42;
            goto LABEL_22;
          }
        }

        else
        {
          v8 = *(*v7 + 8 * v6);
          v9 = a2[3];
          if (v8 < 0xAAAAAAAAAAAAAAABLL * ((a2[4] - v9) >> 3))
          {
            v10 = v9 + 24 * v8;
            v11 = SNLPOSLoggerForCategory(8);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v12 = v10;
              if (*(v10 + 23) < 0)
              {
                v12 = *v10;
              }

              *buf = 136315138;
              v27 = v12;
              _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "Attaching plaintext example to match info: %s", buf, 0xCu);
            }

            std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>((v2 + 31), v10);
            goto LABEL_23;
          }

          v22 = SNLPOSLoggerForCategory(8);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = v2;
            if (*(v2 + 23) < 0)
            {
              v23 = *v2;
            }

            v24 = 0xAAAAAAAAAAAAAAABLL * ((a2[4] - a2[3]) >> 3);
            *buf = 134219010;
            v27 = v5;
            v28 = 2048;
            v29 = v6;
            v30 = 2048;
            v31 = v8;
            v32 = 2048;
            v33 = v24;
            v34 = 2080;
            v35 = v23;
            v16 = v22;
            v17 = "App result batch provenance has batchIndex=%lu, encodingIndexWithinBatch=%lu and exampleIndex=%lu, but this is greater than  debugInformation.plaintextPositiveExamples.examples.size()=%lu. Skipping attaching debug information for intent %s.";
            v18 = 52;
LABEL_22:
            _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_ERROR, v17, buf, v18);
          }
        }
      }

LABEL_23:
      v2 += 36;
    }

    while (v2 != v3);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t std::optional<snlp::ssu::cache::SSUCacheObjectDebugInformation>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = (a1 + 24);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = a1;
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

void std::vector<std::optional<snlp::ssu::similarity::SSUMatchInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::optional<snlp::ssu::similarity::SSUMatchInfo>::~optional(v4 - 264);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::optional<snlp::ssu::similarity::SSUMatchInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 256) == 1)
  {
    if (*(a1 + 248) == 1 && *(a1 + 247) < 0)
    {
      operator delete(*(a1 + 224));
    }

    if (*(a1 + 208) == 1)
    {
      if (*(a1 + 207) < 0)
      {
        operator delete(*(a1 + 184));
      }

      v3 = (a1 + 160);
      std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v3);
      if (*(a1 + 143) < 0)
      {
        operator delete(*(a1 + 120));
      }
    }

    if (*(a1 + 112) == 1)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 72);
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }
  }

  return a1;
}

void snlp::ssu::similarity::SSUSimilaritySearchApp::~SSUSimilaritySearchApp(snlp::ssu::similarity::SSUSimilaritySearchApp *this)
{
  v2 = (this + 336);
  std::vector<std::optional<snlp::ssu::similarity::SSUMatchInfo>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::optional<snlp::ssu::similarity::SSUMatchInfo>::~optional(this + 72);
  v2 = (this + 48);
  std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&v2);
}

BOOL snlp::ssu::matcher::SSURequestHandler::processCacheFileBatches(int a1, snlp::ssu::similarity::SSUSimilaritySearchApp *a2, snlp::ssu::cache::SSUCacheFileReadStream *this, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v21 = *MEMORY[0x277D85DE8];
  do
  {
    if (v10 >= *(this + 92))
    {
      v15 = 0;
      do
      {
        if (v15 >= *(this + 93))
        {
          result = 1;
          goto LABEL_19;
        }

        v16 = snlp::ssu::matcher::SSURequestHandler::processPositiveBatch(a1, a2, this, a4, v15++, a5);
      }

      while ((v16 & 1) != 0);
      v12 = SNLPOSLoggerForCategory(8);
      result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_19;
      }

      if (*(a4 + 23) >= 0)
      {
        v17 = a4;
      }

      else
      {
        v17 = *a4;
      }

      v19 = 136315138;
      v20 = v17;
      goto LABEL_17;
    }

    v11 = snlp::ssu::matcher::SSURequestHandler::processNegativeBatch(a1, a2, this, a4, v10++, a5);
  }

  while ((v11 & 1) != 0);
  v12 = SNLPOSLoggerForCategory(8);
  result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    goto LABEL_19;
  }

  if (*(a4 + 23) >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  v19 = 136315138;
  v20 = v14;
LABEL_17:
  _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_ERROR, "Error processing batch for %s. Skipping entire app.", &v19, 0xCu);
  result = 0;
LABEL_19:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t snlp::ssu::matcher::SSURequestHandler::processGlobalNegatives(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3[1] - *a3 != 16)
  {
    v11 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = (a3[1] - *a3) >> 3;
      *buf = 134217984;
      *&buf[4] = v12;
      _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_ERROR, "Unexpected global negatives tensor rank: %lu", buf, 0xCu);
    }

    v13 = 0;
    goto LABEL_23;
  }

  if (!**a3)
  {
    v14 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_DEBUG, "Skipping global negative processing since there are no global negative examples", buf, 2u);
    }

    goto LABEL_13;
  }

  __p = 0;
  v20 = 0;
  v21 = 0;
  v6 = *(a5 + 40);
  v7 = *(a5 + 48);
  if (v6 == v7)
  {
LABEL_13:
    v13 = 1;
    goto LABEL_23;
  }

  while (1)
  {
    snlp::ssu::similarity::SSUSimilarityScore::computeSimilarity(a3, buf);
    v10 = v26;
    if (v26 == 1)
    {
      break;
    }

    snlp::ssu::similarity::SSUSimilaritySearchApp::processNegativeBatch(a2, &xmmword_2229D2A50, &__p, v6);
    if ((v10 & 1) == 0)
    {
      v6 += 240;
      if (v6 != v7)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  v15 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if (*(a4 + 23) >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    *v22 = 136315138;
    v23 = v16;
    _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "Error computing global negatives similarity for app %s.", v22, 0xCu);
  }

  if (v25 < 0)
  {
    operator delete(*buf);
  }

LABEL_21:
  v13 = v10 ^ 1u;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

LABEL_23:
  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_2229AFD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::ssu::matcher::SSURequestHandler::processNegativeBatch(int a1, uint64_t a2, snlp::ssu::cache::SSUCacheFileReadStream *this, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x277D85DE8];
  snlp::ssu::cache::SSUCacheFileReadStream::readNextBatchNegative(this, v24);
  v10 = v26;
  if (v26)
  {
    __p = 0;
    v22 = 0;
    v23 = 0;
    v11 = *(a6 + 40);
    v12 = *(a6 + 48);
    if (v11 == v12)
    {
      v16 = 1;
LABEL_24:
      if (v25)
      {
        operator delete(v25);
      }

      if (v24[0])
      {
        operator delete(v24[0]);
      }

      goto LABEL_28;
    }

    while (1)
    {
      snlp::ssu::similarity::SSUSimilarityScore::computeSimilarity(v24, buf);
      v13 = v30;
      if (v30 == 1)
      {
        break;
      }

      *&v27 = 0;
      *(&v27 + 1) = a5;
      snlp::ssu::similarity::SSUSimilaritySearchApp::processNegativeBatch(a2, &v27, &__p, v11);
      if ((v13 & 1) == 0)
      {
        v11 += 240;
        if (v11 != v12)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    v17 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (*(a4 + 23) >= 0)
      {
        v18 = a4;
      }

      else
      {
        v18 = *a4;
      }

      LODWORD(v27) = 136315138;
      *(&v27 + 4) = v18;
      _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_ERROR, "Error computing similarity for app %s.", &v27, 0xCu);
    }

    if (v29 < 0)
    {
      operator delete(*buf);
    }

LABEL_21:
    v16 = v13 ^ 1u;
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }

    if (v10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v14 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      if (*(a4 + 23) >= 0)
      {
        v15 = a4;
      }

      else
      {
        v15 = *a4;
      }

      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_ERROR, "Error reading negative batch for app %s.", buf, 0xCu);
    }

    v16 = 0;
  }

LABEL_28:
  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t snlp::ssu::matcher::SSURequestHandler::processPositiveBatch(int a1, snlp::ssu::similarity::SSUSimilaritySearchApp *a2, snlp::ssu::cache::SSUCacheFileReadStream *this, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v33 = *MEMORY[0x277D85DE8];
  snlp::ssu::cache::SSUCacheFileReadStream::readNextBatchPositive(this, v25);
  v10 = v28;
  if (v28)
  {
    __p = 0;
    v23 = 0;
    v24 = 0;
    v11 = *(a6 + 40);
    v12 = *(a6 + 48);
    if (v11 == v12)
    {
      v17 = 1;
    }

    else
    {
      do
      {
        snlp::ssu::similarity::SSUSimilarityScore::computeSimilarity(v25, v30);
        v13 = v32;
        if (v32 == 1)
        {
          v14 = SNLPOSLoggerForCategory(8);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            if ((v32 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            if (*(a4 + 23) >= 0)
            {
              v15 = a4;
            }

            else
            {
              v15 = *a4;
            }

            v16 = v30;
            if (v31 < 0)
            {
              v16 = *v30;
            }

            *buf = 136315394;
            *&buf[4] = v15;
            *&buf[12] = 2080;
            *&buf[14] = v16;
            _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_ERROR, "Error computing similarity for app %s: %s", buf, 0x16u);
          }
        }

        else
        {
          *buf = 0;
          *&buf[8] = a5;
          snlp::ssu::similarity::SSUSimilaritySearchApp::processPositiveBatch(a2, buf, v25, &__p, v11);
        }

        if (v32 == 1 && v31 < 0)
        {
          operator delete(*v30);
        }

        if (v13)
        {
          break;
        }

        v11 = (v11 + 240);
      }

      while (v11 != v12);
      v17 = v13 ^ 1u;
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      if (!v10)
      {
        goto LABEL_35;
      }
    }

    if (v27)
    {
      operator delete(v27);
    }

    if (v26)
    {
      operator delete(v26);
    }

    if (v25[0])
    {
      operator delete(v25[0]);
    }

    goto LABEL_35;
  }

  v18 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    if (*(a4 + 23) >= 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = *a4;
    }

    *v30 = 136315138;
    *&v30[4] = v19;
    _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_ERROR, "Error reading positive batch for app %s.", v30, 0xCu);
  }

  v17 = 0;
LABEL_35:
  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t std::optional<snlp::ssu::cache::SSUCacheObjectEncodingsBatchPositive>::~optional(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      *(a1 + 56) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 32) = v3;
      operator delete(v3);
    }

    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

__n128 std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>::construct[abi:ne200100]<snlp::ssu::candidate::SSUAppCandidates,snlp::ssu::candidate::SSUAppCandidates,0>(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v4;
  v5 = *(a2 + 2);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 8) = v5;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 10);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 40) = v6;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 5) = 0;
  *(a1 + 64) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v7 = *(a2 + 4);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v7;
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 8) = 0;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a1 + 88, a2 + 11);
    *(a1 + 128) = 1;
  }

  *(a1 + 136) = 0;
  *(a1 + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    v8 = *(a2 + 34);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 136) = v8;
    *(a2 + 18) = 0;
    *(a2 + 19) = 0;
    *(a2 + 17) = 0;
    *(a1 + 160) = *(a2 + 10);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 176) = 0;
    *(a1 + 176) = *(a2 + 11);
    *(a1 + 192) = *(a2 + 24);
    *(a2 + 22) = 0;
    *(a2 + 23) = 0;
    *(a2 + 24) = 0;
    v9 = *(a2 + 50);
    *(a1 + 216) = *(a2 + 27);
    *(a1 + 200) = v9;
    *(a2 + 26) = 0;
    *(a2 + 27) = 0;
    *(a2 + 25) = 0;
    *(a1 + 224) = 1;
  }

  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  result = *(a2 + 58);
  *(a1 + 232) = result;
  *(a1 + 248) = *(a2 + 31);
  *(a2 + 29) = 0;
  *(a2 + 30) = 0;
  *(a2 + 31) = 0;
  return result;
}

void snlp::ssu::candidate::SSUAppCandidates::~SSUAppCandidates(void **this)
{
  v2 = this + 29;
  std::vector<snlp::ssu::candidate::SSUCandidate>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 224) == 1)
  {
    if (*(this + 223) < 0)
    {
      operator delete(this[25]);
    }

    v2 = this + 22;
    std::vector<siri::ontology::UsoIdentifier>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (*(this + 159) < 0)
    {
      operator delete(this[17]);
    }
  }

  if (*(this + 128) == 1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((this + 11));
    if (*(this + 87) < 0)
    {
      operator delete(this[8]);
    }
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>(unint64_t a1)
{
  if (!HIBYTE(a1))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::candidate::SSUAppCandidates>,snlp::ssu::candidate::SSUAppCandidates*>(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>::construct[abi:ne200100]<snlp::ssu::candidate::SSUAppCandidates,snlp::ssu::candidate::SSUAppCandidates,0>(a4, v7);
      v7 += 64;
      a4 += 256;
    }

    while (v7 != a3);
    do
    {
      std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>::destroy[abi:ne200100]<snlp::ssu::candidate::SSUAppCandidates,0>(v6);
      v6 += 256;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<snlp::ssu::candidate::SSUAppCandidates>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 256;
    std::allocator_traits<std::allocator<snlp::ssu::candidate::SSUAppCandidates>>::destroy[abi:ne200100]<snlp::ssu::candidate::SSUAppCandidates,0>(v3 - 256);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void nlv4_inference_orchestrator::trees::TreeDecompressor::decompressNode(nlv4_inference_orchestrator::trees::TreeDecompressor *this@<X0>, const nlv4_inference_orchestrator::trees::TreeNode *a2@<X1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3 + 6;
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this, a3 + 6))
  {
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this, v8);
    if (!v9)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v68 = this;
    v69 = v8;
    v67 = a3;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    std::vector<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry*,nlv4_inference_orchestrator::trees::TreeDecompressor::DecompressionEntry*>(&v93, v9[5], v9[6], 0xAAAAAAAAAAAAAAABLL * ((v9[6] - v9[5]) >> 4));
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(a4, a2);
    v10 = v93;
    v71 = a4;
    v75 = v94;
    if (v93 != v94)
    {
      v11 = a4;
      do
      {
        v12 = *(v11 + 88);
        v77 = (v11 + 88);
        v13 = *(v11 + 96);
        if (*(v10 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v91, *v10, *(v10 + 1));
        }

        else
        {
          v14 = *v10;
          v91.__r_.__value_.__r.__words[2] = *(v10 + 2);
          *&v91.__r_.__value_.__l.__data_ = v14;
        }

        v15 = (v10 + 24);
        if (*(v10 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v92, *(v10 + 3), *(v10 + 4));
        }

        else
        {
          v16 = *v15;
          v92.__r_.__value_.__r.__words[2] = *(v10 + 5);
          *&v92.__r_.__value_.__l.__data_ = v16;
        }

        v17 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
        if (v12 == v13)
        {
          v30 = 0;
          if ((*(&v92.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v92.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v92.__r_.__value_.__l.__size_;
          }

          if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v92;
          }

          else
          {
            v19 = v92.__r_.__value_.__r.__words[0];
          }

          if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v20 = v91.__r_.__value_.__l.__size_;
          }

          if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = &v91;
          }

          else
          {
            v21 = v91.__r_.__value_.__r.__words[0];
          }

          v22 = v12 + 48;
          while (1)
          {
            v23 = *(v22 - 25);
            v24 = v23;
            if ((v23 & 0x80u) != 0)
            {
              v23 = *(v22 - 40);
            }

            if (v23 == size)
            {
              v25 = v24 >= 0 ? (v22 - 48) : *(v22 - 48);
              if (!memcmp(v25, v19, size))
              {
                v26 = *(v22 + 23);
                v27 = v26;
                if ((v26 & 0x80u) != 0)
                {
                  v26 = *(v22 + 8);
                }

                if (v26 == v20)
                {
                  v28 = v27 >= 0 ? v22 : *v22;
                  if (!memcmp(v28, v21, v20))
                  {
                    break;
                  }
                }
              }
            }

            v29 = v22 + 96;
            v22 += 144;
            if (v29 == v13)
            {
              v30 = 0;
              goto LABEL_41;
            }
          }

          v30 = 1;
LABEL_41:
          if (v17 < 0)
          {
LABEL_42:
            operator delete(v92.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
          if ((v30 & 1) == 0)
          {
LABEL_65:
            if (*(v10 + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&v85, *(v10 + 3), *(v10 + 4));
            }

            else
            {
              *&v85.__r_.__value_.__l.__data_ = *v15;
              v85.__r_.__value_.__r.__words[2] = *(v10 + 5);
            }

            memset(&v86, 0, sizeof(v86));
            if (*(v10 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *v10, *(v10 + 1));
            }

            else
            {
              v39 = *v10;
              __p.__r_.__value_.__r.__words[2] = *(v10 + 2);
              *&__p.__r_.__value_.__l.__data_ = v39;
            }

            memset(v89, 0, sizeof(v89));
            v88 = 0u;
            std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100](v77, &v85);
            v40 = *(v11 + 96);
            __str.__r_.__value_.__r.__words[0] = v89;
            std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&__str);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v85.__r_.__value_.__l.__data_);
            }

            a4 = v40 - 144;
            goto LABEL_97;
          }
        }

        else if ((v30 & 1) == 0)
        {
          goto LABEL_65;
        }

        v85.__r_.__value_.__s.__data_[0] = 0;
        v90 = 0;
        a4 = *(v11 + 88);
        v31 = *(v11 + 96);
        v32 = *(v10 + 47);
        if (a4 == v31)
        {
LABEL_60:
          if (v32 < 0)
          {
            std::string::__init_copy_ctor_external(&__str, *(v10 + 3), *(v10 + 4));
          }

          else
          {
            *&__str.__r_.__value_.__l.__data_ = *v15;
            __str.__r_.__value_.__r.__words[2] = *(v10 + 5);
          }

          memset(&v81, 0, sizeof(v81));
          if (*(v10 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v82, *v10, *(v10 + 1));
          }

          else
          {
            v41 = *v10;
            v82.__r_.__value_.__r.__words[2] = *(v10 + 2);
            *&v82.__r_.__value_.__l.__data_ = v41;
          }

          memset(v84, 0, sizeof(v84));
          v83 = 0u;
          std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100](v77, &__str);
          v42 = *(v11 + 96);
          v79.__r_.__value_.__r.__words[0] = v84;
          std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v79);
          if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v82.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v81.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          a4 = v42 - 144;
          if ((v90 & 1) == 0)
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v32 >= 0)
          {
            v33 = *(v10 + 47);
          }

          else
          {
            v33 = *(v10 + 4);
          }

          while (1)
          {
            v34 = *(a4 + 23);
            v35 = v34;
            if ((v34 & 0x80u) != 0)
            {
              v34 = *(a4 + 8);
            }

            if (v34 == v33)
            {
              v36 = v35 >= 0 ? a4 : *a4;
              v37 = *v15;
              v38 = v32 >= 0 ? v10 + 24 : *v15;
              if (!memcmp(v36, v38, v33))
              {
                break;
              }
            }

            a4 += 144;
            if (a4 == v31)
            {
              goto LABEL_60;
            }
          }

          nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v85, a4);
          v90 = 1;
        }

        __str.__r_.__value_.__r.__words[0] = v89;
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&__str);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

LABEL_97:
        v10 += 3;
        v11 = a4;
      }

      while (v10 != v75);
    }

    v43 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(v68, v69);
    if (!v43)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v44 = v67;
    if (*(v43 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&v79, v43[8], v43[9]);
    }

    else
    {
      v79 = *(v43 + 8);
    }

    memset(&v85, 0, sizeof(v85));
    if (*(v67 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v86, v67[3], v67[4]);
    }

    else
    {
      v86 = *(v67 + 1);
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v79;
    }

    v88 = *(v67 + 9);
    memset(v89, 0, 24);
    v45 = *(v67 + 8);
    *&v89[3] = *(v67 + 7);
    *&v89[5] = v45;
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100]((a4 + 88), &v85);
    v46 = v71;
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&__str, (*(v71 + 96) - 144));
    v48 = *(v71 + 88);
    v47 = *(v71 + 96);
    if (v48 != v47)
    {
      v49 = *(v67 + 23);
      if (v49 >= 0)
      {
        v50 = *(v67 + 23);
      }

      else
      {
        v50 = v67[1];
      }

      if (v49 < 0)
      {
        v44 = *v67;
      }

      v51 = *(v67 + 47);
      if (v51 >= 0)
      {
        v52 = *(v67 + 47);
      }

      else
      {
        v52 = v67[4];
      }

      if (v51 >= 0)
      {
        v53 = v67 + 3;
      }

      else
      {
        v53 = v67[3];
      }

      v54 = *(v67 + 71);
      if (v54 >= 0)
      {
        v55 = *(v67 + 71);
      }

      else
      {
        v55 = v67[7];
      }

      if (v54 >= 0)
      {
        v56 = v69;
      }

      else
      {
        v56 = v67[6];
      }

      v76 = v67[10];
      v78 = v67[9];
      v73 = v67[15];
      v74 = v67[14];
      v72 = v67[16];
      v70 = v67[17];
      while (1)
      {
        v57 = *(v48 + 23);
        v58 = v57;
        if ((v57 & 0x80u) != 0)
        {
          v57 = *(v48 + 8);
        }

        if (v57 == v50)
        {
          v59 = v58 >= 0 ? v48 : *v48;
          if (!memcmp(v59, v44, v50))
          {
            v60 = *(v48 + 47);
            v61 = v60;
            if ((v60 & 0x80u) != 0)
            {
              v60 = *(v48 + 32);
            }

            if (v60 == v52)
            {
              v62 = v61 >= 0 ? (v48 + 24) : *(v48 + 24);
              if (!memcmp(v62, v53, v52))
              {
                v63 = *(v48 + 71);
                v64 = v63;
                if ((v63 & 0x80u) != 0)
                {
                  v63 = *(v48 + 56);
                }

                if (v63 == v55)
                {
                  v65 = v64 >= 0 ? (v48 + 48) : *(v48 + 48);
                  if (!memcmp(v65, v56, v55) && *(v48 + 72) == v78 && *(v48 + 80) == v76 && *(v48 + 112) == v74 && *(v48 + 120) == v73 && *(v48 + 128) == v72 && *(v48 + 136) == v70)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

        v48 += 144;
        if (v48 == v47)
        {
          v46 = v71;
          goto LABEL_161;
        }
      }

      std::string::operator=(v48, &__str);
      std::string::operator=((v48 + 24), &v81);
      std::string::operator=((v48 + 48), &v82);
      *(v48 + 72) = v83;
      if (v48 != &__str)
      {
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*>(v48 + 88, v84[0], v84[1], 0x8E38E38E38E38E39 * ((v84[1] - v84[0]) >> 4));
      }

      v66 = *&v84[5];
      *(v48 + 112) = *&v84[3];
      *(v48 + 128) = v66;
      v46 = v71;
      v47 = *(v71 + 96);
    }

LABEL_161:
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__base_destruct_at_end[abi:ne200100](v46 + 88, (v47 - 144));
    v96 = v84;
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v96);
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str.__r_.__value_.__r.__words[0] = v89;
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&__str);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    v85.__r_.__value_.__r.__words[0] = &v93;
    std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](&v85);
  }

  else
  {

    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(a4, a2);
  }
}