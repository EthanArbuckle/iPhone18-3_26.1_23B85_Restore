void sub_1C0840024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = *v20;
  if (*v20)
  {
    *(v20 + 8) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::ontology::UsoGraph::getSuccessor(siri::ontology::UsoGraph *this, const UsoGraphNode *a2, const siri::ontology::UsoGraphEdge *a3)
{
  v3 = *(*this + 24);
  v4 = v3 + 56 * a2->var2;
  v5 = *v4;
  v6 = *(v4 + 8);
  if (*v4 == v6)
  {
    return 0;
  }

  while (!siri::ontology::UsoGraphEdge::operator==(v5[1] + 32, a3))
  {
    v5 += 2;
    if (v5 == v6)
    {
      return 0;
    }
  }

  return *(v3 + 56 * *v5 + 48);
}

BOOL siri::ontology::UsoGraphEdge::operator==(uint64_t a1, uint64_t a2)
{
  result = siri::ontology::operator==(a1 + 24, a2 + 24);
  if (result)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

uint64_t siri::ontology::UsoGraph::getPredecessor(siri::ontology::UsoGraph *this, const UsoGraphNode *a2, const siri::ontology::UsoGraphEdge *a3)
{
  v3 = *(*this + 24);
  v4 = v3 + 56 * a2->var2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (v5 == v6)
  {
    return 0;
  }

  while (!siri::ontology::UsoGraphEdge::operator==(v5[1] + 32, a3))
  {
    v5 += 2;
    if (v5 == v6)
    {
      return 0;
    }
  }

  return *(v3 + 56 * *v5 + 48);
}

void siri::ontology::UsoGraph::getSuccessorsWithEdges(siri::ontology::UsoGraph *this@<X0>, const UsoGraphNode *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *this;
  v5 = *(*this + 24) + 56 * a2->var2;
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 != v7)
  {
    do
    {
      v8 = v6[1] + 32;
      *&v9 = *(*(v4 + 24) + 56 * *v6 + 48);
      *(&v9 + 1) = v8;
      std::vector<std::pair<std::reference_wrapper<siri::ontology::UsoGraphNode>,std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>::push_back[abi:ne200100](a3, &v9);
      v6 += 2;
    }

    while (v6 != v7);
  }
}

void sub_1C084026C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::UsoGraph::getSuccessors(siri::ontology::UsoGraph *this@<X0>, const UsoGraphNode *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *this;
  v5 = *(*this + 24) + 56 * a2->var2;
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 != v7)
  {
    do
    {
      v8 = *(*(v4 + 24) + 56 * *v6 + 48);
      std::vector<std::reference_wrapper<siri::ontology::UsoGraphNode>>::push_back[abi:ne200100](a3, &v8);
      v6 += 2;
    }

    while (v6 != v7);
  }
}

void sub_1C0840318(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::UsoGraph::getRepeatedSuccessorEdgeGroupsAsMap(siri::ontology::UsoGraph *this@<X0>, const UsoGraphNode *a2@<X1>, uint64_t a3@<X8>)
{
  siri::ontology::UsoGraph::getSuccessorsWithEdges(this, a2, &v40);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = v40;
  v5 = v41;
  if (v40 == v41)
  {
    goto LABEL_63;
  }

  v6 = (a3 + 16);
  v39 = v40;
  do
  {
    v7 = v4[1];
    v8 = *(v7 + 60);
    v9 = *(a3 + 8);
    if (!v9)
    {
      goto LABEL_19;
    }

    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = v8;
      if (v9 <= v8)
      {
        v11 = v8 % v9;
      }
    }

    else
    {
      v11 = (v9 - 1) & v8;
    }

    v12 = *(*a3 + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_19:
      operator new();
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v8)
      {
        break;
      }

      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= v9)
        {
          v14 %= v9;
        }
      }

      else
      {
        v14 &= v9 - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_19;
      }

LABEL_18:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    if (*(v13 + 4) != v8)
    {
      goto LABEL_18;
    }

    v16 = v13[4];
    v15 = v13[5];
    if (v16 >= v15)
    {
      v18 = v13[3];
      v19 = (v16 - v18) >> 3;
      if ((v19 + 1) >> 61)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v20 = v15 - v18;
      v21 = v20 >> 2;
      if (v20 >> 2 <= (v19 + 1))
      {
        v21 = v19 + 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>(v22);
      }

      v23 = (8 * v19);
      *v23 = v7;
      v17 = 8 * v19 + 8;
      v24 = v13[3];
      v25 = v13[4] - v24;
      v26 = v23 - v25;
      memcpy(v23 - v25, v24, v25);
      v27 = v13[3];
      v13[3] = v26;
      v13[4] = v17;
      v13[5] = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v16 = v7;
      v17 = (v16 + 1);
    }

    v13[4] = v17;
    v4 += 2;
  }

  while (v4 != v5);
  v28 = *v6;
  v4 = v39;
  if (*v6)
  {
    while (1)
    {
      v29 = *v28;
      if (v28[4] - v28[3] <= 8uLL)
      {
        break;
      }

LABEL_62:
      v28 = v29;
      if (!v29)
      {
        goto LABEL_63;
      }
    }

    v30 = *(a3 + 8);
    v31 = v28[1];
    v32 = vcnt_s8(v30);
    v32.i16[0] = vaddlv_u8(v32);
    if (v32.u32[0] > 1uLL)
    {
      if (v31 >= *&v30)
      {
        v31 %= *&v30;
      }
    }

    else
    {
      v31 &= *&v30 - 1;
    }

    v33 = *(*a3 + 8 * v31);
    do
    {
      v34 = v33;
      v33 = *v33;
    }

    while (v33 != v28);
    if (v34 == v6)
    {
      goto LABEL_71;
    }

    v35 = v34[1];
    if (v32.u32[0] > 1uLL)
    {
      if (v35 >= *&v30)
      {
        v35 %= *&v30;
      }
    }

    else
    {
      v35 &= *&v30 - 1;
    }

    v36 = *v28;
    if (v35 == v31)
    {
LABEL_54:
      if (v36)
      {
        goto LABEL_55;
      }
    }

    else
    {
LABEL_71:
      if (!v29)
      {
        goto LABEL_53;
      }

      v37 = v29[1];
      if (v32.u32[0] > 1uLL)
      {
        if (v37 >= *&v30)
        {
          v37 %= *&v30;
        }
      }

      else
      {
        v37 &= *&v30 - 1;
      }

      v36 = *v28;
      if (v37 != v31)
      {
LABEL_53:
        *(*a3 + 8 * v31) = 0;
        v36 = *v28;
        goto LABEL_54;
      }

LABEL_55:
      v38 = v36[1];
      if (v32.u32[0] > 1uLL)
      {
        if (v38 >= *&v30)
        {
          v38 %= *&v30;
        }
      }

      else
      {
        v38 &= *&v30 - 1;
      }

      if (v38 != v31)
      {
        *(*a3 + 8 * v38) = v34;
        v36 = *v28;
      }
    }

    *v34 = v36;
    *v28 = 0;
    --*(a3 + 24);
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,void *>>>::operator()[abi:ne200100](1, v28);
    goto LABEL_62;
  }

LABEL_63:
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_1C084099C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,void *>>>::operator()[abi:ne200100](1, v10);
  std::__hash_table<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>>>::~__hash_table(v9);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void siri::ontology::UsoGraph::getPredecessors(siri::ontology::UsoGraph *this@<X0>, const UsoGraphNode *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *this;
  v5 = *(*this + 24) + 56 * a2->var2;
  v6 = *(v5 + 24);
  for (i = *(v5 + 32); v6 != i; v6 += 2)
  {
    v8 = *(*(v4 + 24) + 56 * *v6 + 48);
    std::vector<std::reference_wrapper<siri::ontology::UsoGraphNode>>::push_back[abi:ne200100](a3, &v8);
  }
}

void sub_1C0840B7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::UsoGraph::setSuccessor(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::find<siri::ontology::UsoGraphNode const*>(a1 + 6, a3))
  {
    if (std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::find<siri::ontology::UsoGraphNode const*>(a1 + 6, a4))
    {
      if ((*(*a3 + 24))(a3, a4, a2))
      {
        v8 = *a1;
        v9 = a3[2];
        v10 = *(*a1 + 24);
        v11 = (v10 + 56 * v9);
        v12 = *v11;
        v13 = v11[1];
        if (*v11 != v13)
        {
          do
          {
            v14 = *(v12 + 8);
            v39 = *(v14 + 32);
            v40 = *(v14 + 48);
            v41 = &unk_1F3FA5348;
            if (*(v14 + 87) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(v14 + 64), *(v14 + 72));
            }

            else
            {
              __p = *(v14 + 64);
            }

            v43 = *(v14 + 88);
            v41 = &unk_1F3FA5380;
            if (siri::ontology::UsoGraphEdge::operator==(&v39, a2))
            {
              std::string::basic_string[abi:ne200100]<0>(&v54, "OntologyException");
              (*(*a4 + 48))(&v49, a4);
              v17 = std::string::insert(&v49, 0, "Can't add a successor with the same edge ");
              v18 = *&v17->__r_.__value_.__l.__data_;
              v38 = v17->__r_.__value_.__r.__words[2];
              v37 = v18;
              v17->__r_.__value_.__l.__size_ = 0;
              v17->__r_.__value_.__r.__words[2] = 0;
              v17->__r_.__value_.__r.__words[0] = 0;
              siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(&v54, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 0x188u, "setSuccessor", &v37);
            }

            v41 = &unk_1F3FA5348;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v12 += 16;
          }

          while (v12 != v13);
          v9 = a3[2];
          v8 = *a1;
          v10 = *(*a1 + 24);
        }

        v15 = a4[2];
        if (v9 <= v15)
        {
          v16 = a4[2];
        }

        else
        {
          v16 = v9;
        }

        if (v16 >= 0x6DB6DB6DB6DB6DB7 * ((*(v8 + 32) - v10) >> 3))
        {
          std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>>::resize((v8 + 24), v16 + 1);
        }

        boost::add_edge<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config>(&v39, v9, v15, a2);
      }

      std::string::basic_string[abi:ne200100]<0>(&v39, "OntologyException");
      (*(*a3 + 48))(&v46, a3);
      v23 = std::string::insert(&v46, 0, "Grammatically invalid (source, edge, sucessor) tuple: ");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v47.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      v25 = std::string::append(&v47, ", ");
      v26 = *&v25->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      if (*(a2 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v45, *(a2 + 32), *(a2 + 40));
      }

      else
      {
        v45 = *(a2 + 32);
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v45;
      }

      else
      {
        v27 = v45.__r_.__value_.__r.__words[0];
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v45.__r_.__value_.__l.__size_;
      }

      v29 = std::string::append(&v48, v27, size);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v31 = std::string::append(&v49, ", ");
      v32 = *&v31->__r_.__value_.__l.__data_;
      v54.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v54.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      (*(*a4 + 48))(&v44, a4);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v44;
      }

      else
      {
        v33 = v44.__r_.__value_.__r.__words[0];
      }

      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v44.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v54, v33, v34);
      v36 = *&v35->__r_.__value_.__l.__data_;
      v51 = v35->__r_.__value_.__r.__words[2];
      v50 = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(&v39, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 0x17Eu, "setSuccessor", &v50);
    }

    std::string::basic_string[abi:ne200100]<0>(&v39, "OntologyException");
    (*(*a4 + 48))(&v54, a4);
    v21 = std::string::insert(&v54, 0, "Attempting to process a node not owned by this graph: ");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v53 = v21->__r_.__value_.__r.__words[2];
    v52 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(&v39, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 0x179u, "setSuccessor", &v52);
  }

  std::string::basic_string[abi:ne200100]<0>(&v39, "OntologyException");
  (*(*a3 + 48))(&v54, a3);
  v19 = std::string::insert(&v54, 0, "Attempting to process a node not owned by this graph: ");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v56 = v19->__r_.__value_.__r.__words[2];
  v55 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(&v39, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 0x174u, "setSuccessor", &v55);
}

void sub_1C084149C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (*(v82 - 233) < 0)
  {
    operator delete(*(v82 - 256));
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a81 < 0)
  {
    operator delete(a80);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v82 - 137) < 0)
  {
    operator delete(*(v82 - 160));
  }

  if (v81)
  {
    operator delete(v81);
  }

  _Unwind_Resume(a1);
}

void siri::ontology::UsoGraph::getNodes(siri::ontology::UsoGraph *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 3);
  for (i = *(this + 4); v2 != i; ++v2)
  {
    v5 = *v2;
    std::vector<std::reference_wrapper<siri::ontology::UsoGraphNode>>::push_back[abi:ne200100](a2, &v5);
  }
}

void sub_1C084181C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::UsoGraph::getEdges(siri::ontology::UsoGraph *this@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *this;
  v3 = *(*this + 8);
  if (v3 != *this)
  {
    v5 = 0;
    do
    {
      v6 = v3 + 32;
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = (v9 >> 3) + 1;
        if (v10 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - v8;
        if (v11 >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>(v12);
        }

        v13 = (8 * (v9 >> 3));
        *v13 = v6;
        v5 = (v13 + 1);
        memcpy(0, v8, v9);
        *a2 = 0;
        a2[2] = 0;
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 8;
      }

      a2[1] = v5;
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }
}

void sub_1C0841944(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::UsoGraph::findNode(siri::ontology::UsoGraph *this, const siri::ontology::UsoGraphNode *a2, const siri::ontology::OntologyUnitName *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 2);
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(*this + 32) - *(*this + 24)) >> 3);
  operator new[]();
}

void sub_1C0841D14(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, atomic_uint *a20, uint64_t a21, uint64_t a22, uint64_t a23, atomic_uint *a24)
{
  boost::detail::shared_count::~shared_count((v26 + 24));
  boost::detail::shared_count::~shared_count(v25);
  boost::detail::shared_count::~shared_count(&a24);
  std::deque<unsigned long>::~deque[abi:ne200100](&a9);
  boost::detail::shared_count::~shared_count(&a20);
  if (a2 == 1)
  {
    v29 = *(*(v24 + 24) + 56 * *__cxa_begin_catch(a1) + 48);
    __cxa_end_catch();
    JUMPOUT(0x1C0841C80);
  }

  _Unwind_Resume(a1);
}

void sub_1C0841E18(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    MEMORY[0x1C68DE1E0](v1, 0x1000C8077774924);
  }

  __cxa_rethrow();
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

uint64_t std::deque<unsigned long>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *siri::ontology::FindTargetVisitor::discover_vertex(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) + 56 * a2 + 48);
  if (v3)
  {
    v4 = result;
    v5 = *v3;
    v6 = **v3;
    if (v7)
    {
      v8 = v7;
      result = siri::ontology::operator==(v7[13], v4[1]);
      if (result)
      {
        exception = __cxa_allocate_exception(8uLL);
        v10 = v8[2];
        goto LABEL_9;
      }
    }

    else
    {
      v11 = *v5;
      if (result)
      {
        v12 = result;
        result = siri::ontology::operator==(*(result + 3), v4[1]);
        if (result)
        {
          exception = __cxa_allocate_exception(8uLL);
          v10 = v12[2];
LABEL_9:
          *exception = v10;
        }
      }
    }
  }

  return result;
}

void *std::deque<unsigned long>::push_back(void *result, void *a2)
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

  v8 = result[4];
  v9 = result[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x200)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v5 - v6 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(v13);
    }

    result[4] = v8 - 512;
    v14 = *v6;
    result[1] = v6 + 8;
    result = std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(result, &v14);
    v6 = v3[1];
    v9 = v3[5] + v3[4];
  }

  *(*&v6[(v9 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v9 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void sub_1C0842594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t boost::detail::sp_counted_impl_pd<unsigned char *,boost::checked_array_deleter<unsigned char>>::get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001C09AA189))
  {
    return a1 + 24;
  }

  else
  {
    return 0;
  }
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t boost::detail::sp_counted_impl_pd<unsigned char *,boost::checked_array_deleter<unsigned char>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    JUMPOUT(0x1C68DE1E0);
  }

  return result;
}

void siri::ontology::UsoGraph::deepCopyToGraph(siri::ontology::UsoGraph *this, const siri::ontology::UsoGraphNode *a2, siri::ontology::UsoGraph *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  v5 = (*(*a2 + 40))(a2, a3);
  v9 = *(a2 + 2);
  v10 = v5;
  std::__hash_table<std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,siri::ontology::UsoGraphNode &>>(v7, v9);
  v6 = *(a2 + 2);
  v11 = 0x6DB6DB6DB6DB6DB7 * ((*(*this + 32) - *(*this + 24)) >> 3);
  operator new[]();
}

void sub_1C0842CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint **a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, atomic_uint *a31, uint64_t a32, uint64_t a33, uint64_t a34, atomic_uint *a35)
{
  boost::detail::shared_count::~shared_count((v35 - 128));
  boost::detail::shared_count::~shared_count(a10);
  boost::detail::shared_count::~shared_count(&a35);
  std::deque<unsigned long>::~deque[abi:ne200100](&a17);
  boost::detail::shared_count::~shared_count(&a31);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,siri::ontology::UsoGraphNode &>>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>>>::find<unsigned long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void siri::ontology::CopyGraphVisitor::tree_edge(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>>>::find<unsigned long long>(*(a1 + 16), *a2);
  if (v6)
  {
    v7 = v6;
    v8 = *(*(a3 + 24) + 56 * a2[1] + 48);
    if (v8)
    {
      v9 = (*(*v8 + 40))(v8, *(a1 + 8));
      std::__hash_table<std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,siri::ontology::UsoGraphNode &>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,siri::ontology::UsoGraphNode &>>(*(a1 + 16), a2[1]);
      v10 = a2[2];
      v12 = *v10;
      v13 = *(v10 + 16);
      v14 = &unk_1F3FA5348;
      if (*(v10 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v10 + 32), *(v10 + 40));
      }

      else
      {
        v11 = *(v10 + 32);
        __p.__r_.__value_.__r.__words[2] = *(v10 + 48);
        *&__p.__r_.__value_.__l.__data_ = v11;
      }

      v16 = *(v10 + 56);
      v14 = &unk_1F3FA5380;
      siri::ontology::UsoGraphNode::setSuccessor(v7[3], &v14, v9, 0);
    }

    __assert_rtn("tree_edge", "UsoGraph.cpp", 1399, "targetNode");
  }

  __assert_rtn("tree_edge", "UsoGraph.cpp", 1395, "edgeSourceNodeInTargetGraph != mSourceToCopiedNodeMap.end()");
}

void sub_1C0843364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::UsoGraphNode::setSuccessor(siri::ontology::UsoGraphNode *this, const siri::ontology::OntologyEdgeName *a2, UsoGraphNode *a3, int a4)
{
  v6 = *(this + 1);
  siri::ontology::UsoGraphEdge::UsoGraphEdge(v7, a2, *(this + 2), a3->var2, a4);
  siri::ontology::UsoGraph::setSuccessor(v6, v7, this, a3);
}

void sub_1C0843414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::UsoGraph::prettyPrint(uint64_t *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Root\n", 5);
  v4 = *a1;
  *(&__p + 1) = a2;
  v12 = 4;
  v13 = v9;
  v14 = v7;
  v15 = v5;
  boost::graph::detail::depth_first_search_impl<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>>::operator()<boost::parameter::aux::arg_list<boost::parameter::aux::tagged_argument<boost::graph::keywords::tag::visitor,siri::ontology::PrintGraphVisitor const>,boost::parameter::aux::empty_arg_list,std::integral_constant<BOOL,true>>>(v4, &__p);
}

void sub_1C0843820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  std::__hash_table<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>>>::~__hash_table(&a9);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a15);
  std::__hash_table<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>>>::~__hash_table(&a21);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1C68DE040](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1C68DE050](v20);
  return a1;
}

void sub_1C0843B28(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE050](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1C0843AFCLL);
}

void boost::graph::detail::depth_first_search_impl<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>>::operator()<boost::parameter::aux::arg_list<boost::parameter::aux::tagged_argument<boost::graph::keywords::tag::visitor,siri::ontology::PrintGraphVisitor const>,boost::parameter::aux::empty_arg_list,std::integral_constant<BOOL,true>>>(uint64_t a1, __int128 *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  v4 = *a2;
  v5 = v2;
  v6 = a2[2];
  if (!((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - *(a1 + 24)) >> 3)) >> 62))
  {
    v3 = 0xB6DB6DB6DB6DB6DCLL * ((*(a1 + 32) - *(a1 + 24)) >> 3);
  }

  operator new[]();
}

void sub_1C0843DB4(_Unwind_Exception *a1)
{
  boost::detail::shared_count::~shared_count(v1);
  boost::detail::shared_count::~shared_count((v2 + 8));
  _Unwind_Resume(a1);
}

void sub_1C0844270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  (*(*v21 + 8))(v21);
  _Unwind_Resume(a1);
}

void sub_1C0844D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  (*(*v28 + 8))(v28);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1C0844F88(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1C68DE150](v1);
  _Unwind_Resume(a1);
}

void siri::ontology::MatchInfo::toString(siri::ontology::MatchInfo *this)
{
  v8 = *MEMORY[0x1E69E9840];
  {
    {
      LODWORD(__p[0]) = 1;
      std::string::basic_string[abi:ne200100]<0>(&__p[1], "ExactMatch");
      v2 = 2;
      std::string::basic_string[abi:ne200100]<0>(v3, "PartialMatch");
      v4 = 4;
      std::string::basic_string[abi:ne200100]<0>(v5, "ApproximateMatch");
      v6 = 8;
      std::string::basic_string[abi:ne200100]<0>(v7, "AliasMatch");
      siri::ontology::MatchInfo::toString(void)const::MATCH_SIGNAL_BITSET_PAIRS = 0;
      qword_1EBE21818 = 0;
      qword_1EBE21820 = 0;
      std::vector<std::pair<siri::ontology::MatchInfo::MatchSignalBitFlags,std::string>>::__init_with_size[abi:ne200100]<std::pair<siri::ontology::MatchInfo::MatchSignalBitFlags,std::string> const*,std::pair<siri::ontology::MatchInfo::MatchSignalBitFlags,std::string> const*>();
    }
  }

  operator new();
}

void sub_1C08458C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v23 = v21 + 104;
  v24 = -128;
  while (1)
  {
    if (*(v23 + 23) < 0)
    {
      operator delete(*v23);
    }

    v23 -= 32;
    v24 += 32;
    if (!v24)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_1C0845C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  (*(*v15 + 8))(v15);
  _Unwind_Resume(a1);
}

void sub_1C0845DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  (*(*v21 + 8))(v21);
  _Unwind_Resume(a1);
}

void **std::vector<std::pair<siri::ontology::MatchInfo::MatchSignalBitFlags,std::string>>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<std::pair<siri::ontology::MatchInfo::MatchSignalBitFlags,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void std::vector<std::pair<siri::ontology::MatchInfo::MatchSignalBitFlags,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 4;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<siri::ontology::MatchInfo::MatchSignalBitFlags,std::string>>,std::pair<siri::ontology::MatchInfo::MatchSignalBitFlags,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 32;
    }
  }

  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1C68DE100](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0;
  v4 = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = a2;
  if ((a2 & 8) != 0)
  {
    *(a1 + 88) = v4;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4;
  }

  if ((a2 & 0x10) != 0)
  {
    *(a1 + 88) = v4;
    std::string::resize((a1 + 64), 0x16uLL, 0);
    v5 = *(a1 + 87);
    if (v5 < 0)
    {
      v5 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v5;
  }

  return a1;
}

void sub_1C0846168(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1C0846464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  (*(*v15 + 8))(v15);
  _Unwind_Resume(a1);
}

uint64_t boost::shared_array<boost::default_color_type>::operator[](uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = "px != 0";
    v4 = 199;
    goto LABEL_6;
  }

  if (a2 < 0)
  {
    v3 = "i >= 0";
    v4 = 200;
LABEL_6:
    __assert_rtn("operator[]", "shared_array.hpp", v4, v3);
  }

  return a1 + 4 * a2;
}

void boost::detail::depth_first_visit_impl<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,siri::ontology::PrintGraphVisitor,boost::shared_array_property_map<boost::default_color_type,boost::vec_adj_list_vertex_id_map<siri::ontology::UsoGraphNode *,unsigned long>>,boost::detail::nontruth2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  *boost::shared_array<boost::default_color_type>::operator[](*a4, a2) = 1;
  v8 = (*(a1 + 24) + 56 * a2);
  v10 = *v8;
  v9 = v8[1];
  v31 = a2;
  LOBYTE(v32) = 0;
  v36 = v10;
  v37 = a2;
  v38 = v9;
  v39 = a2;
  std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::push_back[abi:ne200100](&v28, &v31);
  v12 = v28;
  v11 = v29;
  if (v28 != v29)
  {
    v13 = v29;
    do
    {
      v14 = v12;
      v16 = *(v13 - 9);
      v13 -= 72;
      v15 = v16;
      if (v13[8] == 1)
      {
        *(v11 - 64) = 0;
      }

      v17 = *(v13 + 5);
      v18 = *(v13 + 6);
      v20 = *(v13 + 7);
      v19 = *(v13 + 8);
      v29 = v13;
      if (v17 == v20)
      {
        v12 = v14;
      }

      else
      {
        do
        {
          v21 = *v17;
          if (*boost::shared_array<boost::default_color_type>::operator[](*a4, *v17))
          {
            v17 += 2;
          }

          else
          {
            v22 = *v17;
            v23 = v17[1] + 32;
            v31 = v18;
            v32 = v22;
            v33 = v23;
            siri::ontology::PrintGraphVisitor::tree_edge(a3, &v31, a1);
            v24 = *v17;
            v25 = v17[1] + 32;
            v31 = v15;
            v33 = v18;
            v34 = v24;
            LOBYTE(v32) = 1;
            v35 = v25;
            v36 = v17 + 2;
            v37 = v18;
            v38 = v20;
            v39 = v19;
            std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::push_back[abi:ne200100](&v28, &v31);
            *boost::shared_array<boost::default_color_type>::operator[](*a4, v21) = 1;
            v26 = *(a1 + 24) + 56 * v21;
            v17 = *v26;
            v20 = *(v26 + 8);
            v18 = v21;
            v19 = v21;
            v15 = v21;
          }
        }

        while (v17 != v20);
        v12 = v28;
        v13 = v29;
      }

      *boost::shared_array<boost::default_color_type>::operator[](*a4, v15) = 4;
      *(a3 + 16) -= 4;
      v11 = v13;
    }

    while (v12 != v13);
  }

  std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::__destroy_vector::operator()[abi:ne200100](&v28);
  v27 = *MEMORY[0x1E69E9840];
}

void sub_1C0846730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x1C71C71C71C71C7)
    {
      v11 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 72 * v8;
    *v12 = *a2;
    *(v12 + 8) = 0;
    if (*(a2 + 8) == 1)
    {
      *(72 * v8 + 0x10) = *(a2 + 16);
      *(72 * v8 + 0x20) = *(a2 + 32);
      *(72 * v8 + 8) = 1;
    }

    *(72 * v8 + 0x28) = *(a2 + 40);
    *(72 * v8 + 0x38) = *(a2 + 56);
    v7 = v12 + 72;
    v13 = *a1;
    v14 = a1[1];
    v15 = v12 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = v13 + 16;
      v17 = v15;
      do
      {
        v18 = v16 - 16;
        *v17 = *(v16 - 2);
        *(v17 + 8) = 0;
        if (*(v16 - 8) == 1)
        {
          v19 = *v16;
          *(v17 + 32) = *(v16 + 2);
          *(v17 + 16) = v19;
          *(v17 + 8) = 1;
        }

        v20 = *(v16 + 24);
        *(v17 + 56) = *(v16 + 40);
        *(v17 + 40) = v20;
        v17 += 72;
        v16 += 72;
      }

      while (v18 + 72 != v14);
      do
      {
        if (v13[8] == 1)
        {
          v13[8] = 0;
        }

        v13 += 72;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v7;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = 0;
    if (*(a2 + 8) == 1)
    {
      v5 = *(a2 + 16);
      *(v3 + 32) = *(a2 + 32);
      *(v3 + 16) = v5;
      *(v3 + 8) = 1;
    }

    v6 = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 40) = v6;
    v7 = v3 + 72;
  }

  a1[1] = v7;
}

void siri::ontology::PrintGraphVisitor::tree_edge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(*(a3 + 24) + 56 * *(a2 + 8) + 48);
  v6 = *(v4 + 4);
  v54 = *v4;
  v55 = v6;
  v56 = &unk_1F3FA5348;
  if (*(v4 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, *(v4 + 4), *(v4 + 5));
  }

  else
  {
    v7 = v4[2];
    v57.__r_.__value_.__r.__words[2] = *(v4 + 6);
    *&v57.__r_.__value_.__l.__data_ = v7;
  }

  v58 = *(v4 + 7);
  v56 = &unk_1F3FA5380;
  if (*(a1 + 16))
  {
    v8 = 0;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), " ", 1);
      ++v8;
    }

    while (v8 < *(a1 + 16));
  }

  v9 = *(a1 + 8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ".", 1);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v49 = v57;
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v49;
  }

  else
  {
    v10 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v49.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ".", 1);
  (*(*v5 + 6))(&__p, v5);
  if ((v53 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v53 & 0x80u) == 0)
  {
    v13 = v53;
  }

  else
  {
    v13 = v52;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, p_p, v13);
  if (v53 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  v14 = v5[2];
  v15 = **v5;
  if (!v16)
  {
    goto LABEL_101;
  }

  v17 = v16;
  siri::ontology::UsoEntityNode::getIdentifiers(v16, &__p);
  v18 = __p;
  v19 = __p != v52;
  v46 = __p;
  if (__p == v52)
  {
    goto LABEL_49;
  }

  v20 = *(a1 + 24);
  *&v49.__r_.__value_.__l.__data_ = v14;
  v49.__r_.__value_.__r.__words[2] = 0;
  v50 = 0;
  std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>::__init_with_size[abi:ne200100]<std::reference_wrapper<siri::ontology::UsoIdentifier>*,std::reference_wrapper<siri::ontology::UsoIdentifier>*>(&v49.__r_.__value_.__l.__size_, __p, v52, (v52 - __p) >> 3);
  v21 = v20[1];
  if (!*&v21)
  {
    goto LABEL_45;
  }

  v22 = vcnt_s8(v21);
  v22.i16[0] = vaddlv_u8(v22);
  if (v22.u32[0] > 1uLL)
  {
    v23 = v49.__r_.__value_.__r.__words[0];
    if (v49.__r_.__value_.__r.__words[0] >= *&v21)
    {
      v23 = v49.__r_.__value_.__r.__words[0] % *&v21;
    }
  }

  else
  {
    v23 = (*&v21 - 1) & v49.__r_.__value_.__r.__words[0];
  }

  v24 = *(*v20 + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_45:
    operator new();
  }

  while (1)
  {
    v26 = v25[1];
    if (v26 == v49.__r_.__value_.__r.__words[0])
    {
      break;
    }

    if (v22.u32[0] > 1uLL)
    {
      if (v26 >= *&v21)
      {
        v26 %= *&v21;
      }
    }

    else
    {
      v26 &= *&v21 - 1;
    }

    if (v26 != v23)
    {
      goto LABEL_45;
    }

LABEL_44:
    v25 = *v25;
    if (!v25)
    {
      goto LABEL_45;
    }
  }

  if (v25[2] != v49.__r_.__value_.__r.__words[0])
  {
    goto LABEL_44;
  }

  if (v49.__r_.__value_.__l.__size_)
  {
    operator delete(v49.__r_.__value_.__l.__size_);
  }

  v18 = v46;
  v19 = 1;
LABEL_49:
  v27 = *(v17 + 7);
  if (v27 != *(v17 + 8))
  {
    v28 = *(a1 + 32);
    v29 = *v27;
    v30 = v28[1];
    if (!*&v30)
    {
      goto LABEL_67;
    }

    v31 = vcnt_s8(v30);
    v31.i16[0] = vaddlv_u8(v31);
    if (v31.u32[0] > 1uLL)
    {
      v32 = v14;
      if (v14 >= *&v30)
      {
        v32 = v14 % *&v30;
      }
    }

    else
    {
      v32 = (*&v30 - 1) & v14;
    }

    v33 = *(*v28 + 8 * v32);
    if (!v33 || (v34 = *v33) == 0)
    {
LABEL_67:
      operator new();
    }

    while (1)
    {
      v35 = v34[1];
      if (v35 == v14)
      {
        if (v34[2] == v14)
        {
          v19 = 1;
          v18 = v46;
          break;
        }
      }

      else
      {
        if (v31.u32[0] > 1uLL)
        {
          if (v35 >= *&v30)
          {
            v35 %= *&v30;
          }
        }

        else
        {
          v35 &= *&v30 - 1;
        }

        if (v35 != v32)
        {
          goto LABEL_67;
        }
      }

      v34 = *v34;
      if (!v34)
      {
        goto LABEL_67;
      }
    }
  }

  siri::ontology::UsoEntityNode::getEntitySpans(v17, &v47);
  v36 = *(a1 + 40);
  v37 = v47;
  if (v36 && v47 != v48)
  {
    *&v49.__r_.__value_.__l.__data_ = v14;
    v49.__r_.__value_.__r.__words[2] = 0;
    v50 = 0;
    std::vector<std::reference_wrapper<siri::ontology::UsoEntitySpan>>::__init_with_size[abi:ne200100]<std::reference_wrapper<siri::ontology::UsoEntitySpan>*,std::reference_wrapper<siri::ontology::UsoEntitySpan>*>(&v49.__r_.__value_.__l.__size_, v47, v48, (v48 - v47) >> 3);
    v38 = v36[1];
    if (!*&v38)
    {
      goto LABEL_93;
    }

    v39 = vcnt_s8(v38);
    v39.i16[0] = vaddlv_u8(v39);
    if (v39.u32[0] > 1uLL)
    {
      v40 = v49.__r_.__value_.__r.__words[0];
      if (v49.__r_.__value_.__r.__words[0] >= *&v38)
      {
        v40 = v49.__r_.__value_.__r.__words[0] % *&v38;
      }
    }

    else
    {
      v40 = (*&v38 - 1) & v49.__r_.__value_.__r.__words[0];
    }

    v41 = *(*v36 + 8 * v40);
    if (!v41 || (v42 = *v41) == 0)
    {
LABEL_93:
      operator new();
    }

    while (1)
    {
      v43 = v42[1];
      if (v43 == v49.__r_.__value_.__r.__words[0])
      {
        if (v42[2] == v49.__r_.__value_.__r.__words[0])
        {
          if (v49.__r_.__value_.__l.__size_)
          {
            operator delete(v49.__r_.__value_.__l.__size_);
          }

          if (v37)
          {
            operator delete(v37);
          }

          if (__p)
          {
            operator delete(__p);
          }

          goto LABEL_100;
        }
      }

      else
      {
        if (v39.u32[0] > 1uLL)
        {
          if (v43 >= *&v38)
          {
            v43 %= *&v38;
          }
        }

        else
        {
          v43 &= *&v38 - 1;
        }

        if (v43 != v40)
        {
          goto LABEL_93;
        }
      }

      v42 = *v42;
      if (!v42)
      {
        goto LABEL_93;
      }
    }
  }

  if (v47)
  {
    operator delete(v47);
  }

  if (v18)
  {
    operator delete(v18);
  }

  if (v19)
  {
LABEL_100:
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), "(nodexIndex=", 12);
    v45 = MEMORY[0x1C68DE090](v44, v5[2]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ")", 1);
  }

LABEL_101:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a1 + 8), "\n", 1);
  *(a1 + 16) += 4;
  v56 = &unk_1F3FA5348;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }
}

void sub_1C0847858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,void *>>>::operator()[abi:ne200100](1, v38);
  if (v39)
  {
    operator delete(v39);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::__destroy_vector::operator()[abi:ne200100](char **a1)
{
  v2 = *a1;
  if (v2)
  {
    for (i = a1[1]; i != v2; i -= 72)
    {
      if (*(i - 64) == 1)
      {
        *(i - 64) = 0;
      }
    }

    a1[1] = v2;
    operator delete(v2);
  }
}

void siri::ontology::UsoEntityNode::getIdentifiers(siri::ontology::UsoEntityNode *this@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v2 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = (v9 >> 3) + 1;
        if (v10 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - v8;
        if (v11 >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<siri::ontology::SpanProperty>>>(v12);
        }

        v13 = (8 * (v9 >> 3));
        *v13 = v6;
        v5 = (v13 + 1);
        memcpy(0, v8, v9);
        *a2 = 0;
        a2[2] = 0;
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 8;
      }

      a2[1] = v5;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1C0847AC0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>::__init_with_size[abi:ne200100]<std::reference_wrapper<siri::ontology::UsoIdentifier>*,std::reference_wrapper<siri::ontology::UsoIdentifier>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<siri::ontology::SpanProperty>>>(a4);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1C0847B5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::UsoEntityNode::getEntitySpans(siri::ontology::UsoEntityNode *this@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 10);
  v3 = *(this + 11);
  if (v2 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = (v9 >> 3) + 1;
        if (v10 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - v8;
        if (v11 >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<siri::ontology::SpanProperty>>>(v12);
        }

        v13 = (8 * (v9 >> 3));
        *v13 = v6;
        v5 = (v13 + 1);
        memcpy(0, v8, v9);
        *a2 = 0;
        a2[2] = 0;
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 8;
      }

      a2[1] = v5;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1C0847C80(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::reference_wrapper<siri::ontology::UsoEntitySpan>>::__init_with_size[abi:ne200100]<std::reference_wrapper<siri::ontology::UsoEntitySpan>*,std::reference_wrapper<siri::ontology::UsoEntitySpan>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<siri::ontology::SpanProperty>>>(a4);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1C0847D1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::detail::sp_counted_impl_pd<boost::default_color_type *,boost::checked_array_deleter<boost::default_color_type>>::get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001C09AA20BLL))
  {
    return a1 + 24;
  }

  else
  {
    return 0;
  }
}

uint64_t boost::detail::sp_counted_impl_pd<boost::default_color_type *,boost::checked_array_deleter<boost::default_color_type>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    JUMPOUT(0x1C68DE1E0);
  }

  return result;
}

void siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(siri::ontology::UsoGraph *this)
{
  v11[44] = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:ne200100](v11);
  v8 = 0u;
  v9 = 0u;
  v10 = 1065353216;
  v5 = 0u;
  v6 = 0u;
  v7 = 1065353216;
  v2 = 0u;
  v3 = 0u;
  v4 = 1065353216;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Root\n", 5);
  boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::adjacency_list(&v1);
}

void sub_1C08489C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, char **a5, uint64_t a6, int a7, __int16 a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, ...)
{
  va_start(va, a55);
  a5 = &a15;
  std::vector<std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>>>::__destroy_vector::operator()[abi:ne200100](&a5);
  if (__p)
  {
    operator delete(__p);
  }

  a15 = &a11;
  std::vector<std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>>>::__destroy_vector::operator()[abi:ne200100](&a15);
  boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::~adjacency_list(&a18);
  std::__hash_table<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>>>::~__hash_table(&a25);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a31);
  std::__hash_table<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>>>::~__hash_table(&a37);
  std::ostringstream::~ostringstream(&a42);
  MEMORY[0x1C68DE150](va);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v137 = (a2 - 32);
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 5;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>(v7, (v7 + 32), v137);
          return;
        case 4:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>(v7, (v7 + 32), (v7 + 64));
          v58 = *(v7 + 64);
          if (*v137 < v58)
          {
            *(v7 + 64) = *v137;
            *(a2 - 32) = v58;
            v59 = *(v7 + 64);
            v60 = *(v7 + 72);
            *(v7 + 72) = *(a2 - 24);
            *(a2 - 24) = v60;
            v61 = *(v7 + 80);
            *(v7 + 80) = *(a2 - 16);
            *(a2 - 16) = v61;
            v62 = *(v7 + 88);
            *(v7 + 88) = *(a2 - 8);
            *(a2 - 8) = v62;
            v63 = *(v7 + 32);
            if (v59 < v63)
            {
              *(v7 + 64) = v63;
              v65 = *(v7 + 72);
              v64 = *(v7 + 80);
              v66 = *(v7 + 40);
              *(v7 + 32) = v59;
              *(v7 + 40) = v65;
              *(v7 + 72) = v66;
              v67 = *(v7 + 56);
              v68 = *(v7 + 88);
              *(v7 + 48) = v64;
              *(v7 + 56) = v68;
              *(v7 + 88) = v67;
              v69 = *v7;
              if (v59 < *v7)
              {
                v70 = *(v7 + 8);
                *v7 = v59;
                *(v7 + 8) = v65;
                *(v7 + 40) = v70;
                v71 = *(v7 + 24);
                *(v7 + 16) = v64;
                *(v7 + 24) = v68;
                *(v7 + 32) = v69;
                *(v7 + 56) = v71;
              }
            }
          }

          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>(v7, (v7 + 32), (v7 + 64), (v7 + 96), v137);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v53 = *v7;
        if (*v137 < *v7)
        {
          v54 = *(v7 + 8);
          v55 = *(a2 - 24);
          *v7 = *v137;
          *(v7 + 8) = v55;
          *(a2 - 32) = v53;
          *(a2 - 24) = v54;
          v56 = *(v7 + 16);
          *(v7 + 16) = *(a2 - 16);
          *(a2 - 16) = v56;
          v57 = *(v7 + 24);
          *(v7 + 24) = *(a2 - 8);
          *(a2 - 8) = v57;
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return;
      }

      v87 = (v8 - 2) >> 1;
      v88 = v87;
      do
      {
        v89 = v88;
        if (v87 >= v88)
        {
          v90 = (2 * v88) | 1;
          v91 = v7 + 32 * v90;
          if (2 * v89 + 2 >= v8)
          {
            v92 = *v91;
          }

          else
          {
            v92 = *(v91 + 32);
            v93 = *v91 >= v92;
            if (*v91 > v92)
            {
              v92 = *v91;
            }

            if (!v93)
            {
              v91 += 32;
              v90 = 2 * v89 + 2;
            }
          }

          v94 = v7 + 32 * v89;
          v95 = *v94;
          if (v92 >= *v94)
          {
            v96 = *(v94 + 8);
            v97 = *(v94 + 24);
            *(v94 + 16) = 0;
            *(v94 + 24) = 0;
            *(v94 + 8) = 0;
            v98 = *v91;
            do
            {
              v99 = v94;
              v94 = v91;
              *v99 = v98;
              *(v99 + 8) = *(v91 + 8);
              *(v99 + 24) = *(v91 + 24);
              *(v91 + 8) = 0;
              *(v91 + 16) = 0;
              *(v91 + 24) = 0;
              if (v87 < v90)
              {
                break;
              }

              v100 = (2 * v90) | 1;
              v91 = v7 + 32 * v100;
              v90 = 2 * v90 + 2;
              if (v90 >= v8)
              {
                v98 = *v91;
                v90 = v100;
              }

              else
              {
                v98 = *v91;
                v101 = *(v91 + 32);
                if (*v91 <= v101)
                {
                  v98 = *(v91 + 32);
                }

                if (*v91 >= v101)
                {
                  v90 = v100;
                }

                else
                {
                  v91 += 32;
                }
              }
            }

            while (v98 >= v95);
            *v94 = v95;
            *(v94 + 8) = v96;
            *(v94 + 24) = v97;
          }
        }

        v88 = v89 - 1;
      }

      while (v89);
      while (2)
      {
        v102 = 0;
        v103 = *v7;
        v104 = *(v7 + 8);
        v105 = *(v7 + 16);
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        v106 = v7;
        *(v7 + 8) = 0;
        do
        {
          v107 = v106 + 32 * v102;
          v108 = v107 + 32;
          v109 = (2 * v102) | 1;
          v102 = 2 * v102 + 2;
          if (v102 >= v8)
          {
            v110 = *v108;
            v102 = v109;
          }

          else
          {
            v112 = *(v107 + 64);
            v111 = v107 + 64;
            v110 = v112;
            v113 = *(v111 - 32);
            v114 = v113 >= v112;
            if (v113 > v112)
            {
              v110 = *(v111 - 32);
            }

            if (v114)
            {
              v102 = v109;
            }

            else
            {
              v108 = v111;
            }
          }

          *v106 = v110;
          *(v106 + 8) = *(v108 + 8);
          *(v106 + 24) = *(v108 + 24);
          *(v108 + 8) = 0;
          *(v108 + 16) = 0;
          *(v108 + 24) = 0;
          v106 = v108;
        }

        while (v102 <= ((v8 - 2) >> 1));
        if (v108 != a2 - 32)
        {
          *v108 = *(a2 - 32);
          *(v108 + 8) = *(a2 - 24);
          *(v108 + 24) = *(a2 - 8);
          *(a2 - 32) = v103;
          *(a2 - 24) = v104;
          *(a2 - 16) = v105;
          v115 = (v108 - v7 + 32) >> 5;
          v116 = v115 < 2;
          v117 = v115 - 2;
          if (!v116)
          {
            v118 = v117 >> 1;
            v119 = v7 + 32 * v118;
            v120 = *v108;
            if (*v119 < *v108)
            {
              v121 = *(v108 + 8);
              v105 = *(v108 + 16);
              *(v108 + 8) = 0;
              *(v108 + 16) = 0;
              *(v108 + 24) = 0;
              v122 = *v119;
              do
              {
                v123 = v108;
                v108 = v119;
                *v123 = v122;
                *(v123 + 8) = *(v119 + 8);
                *(v123 + 24) = *(v119 + 24);
                *(v119 + 8) = 0;
                *(v119 + 16) = 0;
                *(v119 + 24) = 0;
                if (!v118)
                {
                  break;
                }

                v118 = (v118 - 1) >> 1;
                v119 = v7 + 32 * v118;
                v122 = *v119;
              }

              while (*v119 < v120);
              *v108 = v120;
              *(v108 + 8) = v121;
LABEL_139:
              *(v108 + 16) = v105;
            }
          }

          a2 -= 32;
          v116 = v8-- <= 2;
          if (v116)
          {
            return;
          }

          continue;
        }

        break;
      }

      *v108 = v103;
      *(v108 + 8) = v104;
      goto LABEL_139;
    }

    v9 = v8 >> 1;
    v10 = v7 + 32 * (v8 >> 1);
    if (v8 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>((a1 + 32 * (v8 >> 1)), a1, v137);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>(a1, (a1 + 32 * (v8 >> 1)), v137);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>((a1 + 32), (v10 - 32), (a2 - 64));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>((a1 + 64), (a1 + 32 + 32 * v9), (a2 - 96));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>((v10 - 32), v10, (a1 + 32 + 32 * v9));
      v11 = *a1;
      *a1 = *v10;
      *v10 = v11;
      v12 = *(a1 + 8);
      *(a1 + 8) = *(v10 + 8);
      *(v10 + 8) = v12;
      v13 = *(a1 + 24);
      *(a1 + 24) = *(v10 + 24);
      *(v10 + 24) = v13;
    }

    --a3;
    v14 = *a1;
    if ((a4 & 1) != 0 || *(a1 - 32) < v14)
    {
      v15 = *(a1 + 8);
      v16 = *(a1 + 24);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v17 = a1;
      do
      {
        v18 = v17;
        v20 = *(v17 + 32);
        v17 += 32;
        v19 = v20;
      }

      while (v20 < v14);
      v21 = a2;
      if (v18 == a1)
      {
        v21 = a2;
        do
        {
          if (v17 >= v21)
          {
            break;
          }

          v23 = *(v21 - 4);
          v21 -= 4;
        }

        while (v23 >= v14);
      }

      else
      {
        do
        {
          v22 = *(v21 - 4);
          v21 -= 4;
        }

        while (v22 >= v14);
      }

      if (v17 >= v21)
      {
        v7 = v17;
      }

      else
      {
        v24 = *v21;
        v7 = v17;
        v25 = v21;
        do
        {
          v26 = *(v7 + 8);
          v27 = v25[1];
          *v7 = v24;
          *(v7 + 8) = v27;
          *v25 = v19;
          v25[1] = v26;
          v28 = *(v7 + 16);
          *(v7 + 16) = v25[2];
          v25[2] = v28;
          v29 = *(v7 + 24);
          *(v7 + 24) = v25[3];
          v25[3] = v29;
          do
          {
            v30 = *(v7 + 32);
            v7 += 32;
            v19 = v30;
          }

          while (v30 < v14);
          do
          {
            v31 = *(v25 - 4);
            v25 -= 4;
            v24 = v31;
          }

          while (v31 >= v14);
        }

        while (v7 < v25);
      }

      if (v7 - 32 == a1)
      {
        v34 = *(v7 - 24);
        *(v7 - 32) = v14;
        if (v34)
        {
          *(v7 - 16) = v34;
          v133 = v15;
          operator delete(v34);
          v15 = v133;
        }
      }

      else
      {
        *a1 = *(v7 - 32);
        v32 = *(a1 + 8);
        if (v32)
        {
          *(a1 + 16) = v32;
          v132 = v15;
          operator delete(v32);
          v15 = v132;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
        }

        v33 = (v7 - 24);
        *(a1 + 8) = *(v7 - 24);
        *(a1 + 24) = *(v7 - 8);
        *v33 = 0;
        v33[1] = 0;
        v33[2] = 0;
        *(v7 - 32) = v14;
      }

      *(v7 - 24) = v15;
      *(v7 - 8) = v16;
      if (v17 < v21)
      {
        goto LABEL_41;
      }

      v35 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *>(a1, v7 - 32);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *>(v7, a2))
      {
        a2 = v7 - 32;
        if (v35)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v35)
      {
LABEL_41:
        std::__introsort<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,false>(a1, v7 - 32, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v36 = *(a1 + 8);
      v37 = *(a1 + 24);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      if (v14 >= *v137)
      {
        v39 = a1 + 32;
        do
        {
          v7 = v39;
          if (v39 >= a2)
          {
            break;
          }

          v39 += 32;
        }

        while (v14 >= *v7);
      }

      else
      {
        v7 = a1;
        do
        {
          v38 = *(v7 + 32);
          v7 += 32;
        }

        while (v14 >= v38);
      }

      v40 = a2;
      if (v7 < a2)
      {
        v40 = a2;
        do
        {
          v41 = *(v40 - 4);
          v40 -= 4;
        }

        while (v14 < v41);
      }

      if (v7 < v40)
      {
        v42 = *v7;
        v43 = *v40;
        do
        {
          v44 = *(v7 + 8);
          v45 = v40[1];
          *v7 = v43;
          *(v7 + 8) = v45;
          *v40 = v42;
          v40[1] = v44;
          v46 = *(v7 + 16);
          *(v7 + 16) = v40[2];
          v40[2] = v46;
          v47 = *(v7 + 24);
          *(v7 + 24) = v40[3];
          v40[3] = v47;
          do
          {
            v48 = *(v7 + 32);
            v7 += 32;
            v42 = v48;
          }

          while (v14 >= v48);
          do
          {
            v49 = *(v40 - 4);
            v40 -= 4;
            v43 = v49;
          }

          while (v14 < v49);
        }

        while (v7 < v40);
      }

      if (v7 - 32 == a1)
      {
        v52 = *(v7 - 24);
        *(v7 - 32) = v14;
        if (v52)
        {
          *(v7 - 16) = v52;
          v136 = v36;
          operator delete(v52);
          v36 = v136;
        }
      }

      else
      {
        *a1 = *(v7 - 32);
        v50 = *(a1 + 8);
        if (v50)
        {
          *(a1 + 16) = v50;
          v135 = v36;
          operator delete(v50);
          v36 = v135;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
        }

        v51 = (v7 - 24);
        *(a1 + 8) = *(v7 - 24);
        *(a1 + 24) = *(v7 - 8);
        *v51 = 0;
        v51[1] = 0;
        v51[2] = 0;
        *(v7 - 32) = v14;
      }

      a4 = 0;
      *(v7 - 24) = v36;
      *(v7 - 8) = v37;
    }
  }

  v72 = v7 + 32;
  v74 = v7 == a2 || v72 == a2;
  if (a4)
  {
    if (!v74)
    {
      v75 = 0;
      v76 = v7;
      do
      {
        v77 = v72;
        v78 = *(v76 + 32);
        v79 = *v76;
        if (v78 < *v76)
        {
          v80 = *(v76 + 40);
          v138 = *(v76 + 48);
          *(v76 + 48) = 0;
          *(v76 + 56) = 0;
          *(v76 + 40) = 0;
          v81 = v75;
          v82 = *(v77 + 8);
          while (1)
          {
            v83 = a1 + v81;
            *(a1 + v81 + 32) = v79;
            if (v82)
            {
              *(v83 + 48) = v82;
              operator delete(v82);
              *(v83 + 56) = 0;
            }

            *(v83 + 40) = *(v83 + 8);
            *(v83 + 56) = *(v83 + 24);
            *(v83 + 8) = 0;
            *(v83 + 16) = 0;
            *(v83 + 24) = 0;
            if (!v81)
            {
              break;
            }

            v82 = 0;
            v84 = a1 + v81;
            v79 = *(a1 + v81 - 32);
            v81 -= 32;
            if (v78 >= v79)
            {
              v85 = a1 + v81 + 32;
              v86 = (v84 + 8);
              goto LABEL_96;
            }
          }

          v86 = (a1 + 8);
          v85 = a1;
LABEL_96:
          *v85 = v78;
          *v86 = v80;
          *(v85 + 16) = v138;
        }

        v72 = v77 + 32;
        v75 += 32;
        v76 = v77;
      }

      while (v77 + 32 != a2);
    }
  }

  else if (!v74)
  {
    v124 = v7 + 24;
    do
    {
      v125 = v72;
      v126 = *(a1 + 32);
      v127 = *a1;
      if (v126 < *a1)
      {
        v139 = *(a1 + 40);
        v128 = *(a1 + 56);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        v129 = v124;
        v130 = *(v125 + 8);
        do
        {
          *(v129 + 8) = v127;
          if (v130)
          {
            *(v129 + 24) = v130;
            operator delete(v130);
            *(v129 + 32) = 0;
          }

          v130 = 0;
          v131 = (v129 - 16);
          *(v129 + 16) = *(v129 - 16);
          *(v129 + 32) = *v129;
          v131[1] = 0;
          *v129 = 0;
          *v131 = 0;
          v127 = *(v129 - 56);
          v129 -= 32;
        }

        while (v126 < v127);
        *(v129 + 8) = v126;
        *(v129 + 16) = v139;
        *(v129 + 32) = v128;
      }

      v72 = v125 + 32;
      v124 += 32;
      a1 = v125;
    }

    while (v125 + 32 != a2);
  }
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_1 &,std::pair<unsigned long long,std::reference_wrapper<siri::ontology::UsoUtteranceAlignment>> *,false>(uint64_t *result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = (a2 - 16);
    v9 = a2 - 8;
    v10 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v10;
          v11 = (a2 - v10) >> 4;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v94 = v10[2];
                v95 = *v10;
                v96 = *v8;
                if (v94 >= *v10)
                {
                  if (v96 >= v94)
                  {
                    return result;
                  }

                  v10[2] = v96;
                  *v8 = v94;
                  v148 = v10[3];
                  v10[3] = *v9;
                  *v9 = v148;
                  v149 = v10[2];
                  v150 = *v10;
                  if (v149 >= *v10)
                  {
                    return result;
                  }

                  *v10 = v149;
                  v10[2] = v150;
                  v97 = (v10 + 1);
                  v9 = (v10 + 3);
                }

                else
                {
                  if (v96 >= v94)
                  {
                    v97 = (v10 + 3);
                    v162 = v10[3];
                    v163 = v10[1];
                    *v10 = v94;
                    v10[1] = v162;
                    v10[2] = v95;
                    v10[3] = v163;
                    if (*v8 >= v95)
                    {
                      return result;
                    }

                    v10[2] = *v8;
                  }

                  else
                  {
                    v97 = (v10 + 1);
                    *v10 = v96;
                  }

                  *v8 = v95;
                }

                v164 = *v97;
                *v97 = *v9;
                *v9 = v164;
                return result;
              case 4:
                v98 = v10[2];
                v99 = *v10;
                v100 = v10[4];
                if (v98 >= *v10)
                {
                  if (v100 < v98)
                  {
                    v151 = (v10 + 3);
                    v152 = v10[3];
                    v153 = v10[5];
                    v10[2] = v100;
                    v10[3] = v153;
                    v10[4] = v98;
                    v10[5] = v152;
                    if (v100 < v99)
                    {
                      *v10 = v100;
                      v10[2] = v99;
                      v101 = (v10 + 1);
                      goto LABEL_205;
                    }

LABEL_207:
                    if (*v8 < v98)
                    {
                      v10[4] = *v8;
                      *v8 = v98;
                      v168 = v10[5];
                      v10[5] = *v9;
                      *v9 = v168;
                      v169 = v10[4];
                      v170 = v10[2];
                      if (v169 < v170)
                      {
                        v171 = v10[3];
                        v172 = v10[5];
                        v10[2] = v169;
                        v10[3] = v172;
                        v10[4] = v170;
                        v10[5] = v171;
                        v173 = *v10;
                        if (v169 < *v10)
                        {
                          v174 = v10[1];
                          *v10 = v169;
                          v10[1] = v172;
                          v10[2] = v173;
                          v10[3] = v174;
                        }
                      }
                    }

                    return result;
                  }
                }

                else
                {
                  if (v100 < v98)
                  {
                    v101 = (v10 + 1);
                    *v10 = v100;
                    goto LABEL_204;
                  }

                  v101 = (v10 + 3);
                  v165 = v10[3];
                  v166 = v10[1];
                  *v10 = v98;
                  v10[1] = v165;
                  v10[2] = v99;
                  v10[3] = v166;
                  if (v100 < v99)
                  {
                    v10[2] = v100;
LABEL_204:
                    v10[4] = v99;
                    v151 = (v10 + 5);
LABEL_205:
                    v167 = *v101;
                    *v101 = *v151;
                    *v151 = v167;
                    v98 = v10[4];
                    goto LABEL_207;
                  }
                }

                v98 = v100;
                goto LABEL_207;
              case 5:

                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_1 &,std::pair<unsigned long long,std::reference_wrapper<siri::ontology::UsoUtteranceAlignment>> *,0>(v10, v10 + 2, v10 + 4, v10 + 6, a2 - 2);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v92 = *v10;
              if (*v8 < *v10)
              {
                *v10 = *v8;
                *v8 = v92;
                v93 = v10[1];
                v10[1] = *v9;
                *v9 = v93;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            v102 = (v10 + 2);
            v104 = v10 == a2 || v102 == a2;
            if (a4)
            {
              if (!v104)
              {
                v105 = 0;
                v106 = v10;
                do
                {
                  v107 = v102;
                  v108 = v106[2];
                  v109 = *v106;
                  if (v108 < *v106)
                  {
                    v110 = v106[3];
                    v111 = v105;
                    while (1)
                    {
                      v112 = v10 + v111;
                      v113 = *(v10 + v111 + 8);
                      *(v112 + 2) = v109;
                      *(v112 + 3) = v113;
                      if (!v111)
                      {
                        break;
                      }

                      v109 = *(v112 - 2);
                      v111 -= 16;
                      if (v108 >= v109)
                      {
                        v114 = (v10 + v111 + 16);
                        goto LABEL_138;
                      }
                    }

                    v114 = v10;
LABEL_138:
                    *v114 = v108;
                    v114[1] = v110;
                  }

                  v102 = v107 + 16;
                  v105 += 16;
                  v106 = v107;
                }

                while (v107 + 16 != a2);
              }
            }

            else if (!v104)
            {
              v154 = v10 + 3;
              do
              {
                v155 = v102;
                v156 = v7[2];
                v157 = *v7;
                if (v156 < *v7)
                {
                  v158 = v7[3];
                  v159 = v154;
                  do
                  {
                    v160 = v159;
                    v161 = *(v159 - 2);
                    v159 -= 2;
                    *(v160 - 1) = v157;
                    *v160 = v161;
                    v157 = *(v160 - 5);
                  }

                  while (v156 < v157);
                  *(v159 - 1) = v156;
                  *v159 = v158;
                }

                v102 = v155 + 16;
                v154 += 2;
                v7 = v155;
              }

              while (v155 + 16 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v10 != a2)
            {
              v115 = (v11 - 2) >> 1;
              v116 = v115;
              do
              {
                v117 = v116;
                if (v115 >= v116)
                {
                  v118 = (2 * v116) | 1;
                  v119 = &v10[2 * v118];
                  if (2 * v117 + 2 >= v11)
                  {
                    v120 = *v119;
                  }

                  else
                  {
                    v120 = v119[2];
                    v121 = *v119 >= v120;
                    if (*v119 > v120)
                    {
                      v120 = *v119;
                    }

                    if (!v121)
                    {
                      v119 += 2;
                      v118 = 2 * v117 + 2;
                    }
                  }

                  v122 = &v10[2 * v117];
                  v123 = *v122;
                  if (v120 >= *v122)
                  {
                    v124 = v122[1];
                    do
                    {
                      v125 = v122;
                      v122 = v119;
                      *v125 = v120;
                      v125[1] = v119[1];
                      if (v115 < v118)
                      {
                        break;
                      }

                      v126 = (2 * v118) | 1;
                      v119 = &v10[2 * v126];
                      v118 = 2 * v118 + 2;
                      if (v118 >= v11)
                      {
                        v120 = *v119;
                        v118 = v126;
                      }

                      else
                      {
                        v120 = *v119;
                        result = (v119 + 2);
                        v127 = v119[2];
                        if (*v119 <= v127)
                        {
                          v120 = v119[2];
                        }

                        if (*v119 >= v127)
                        {
                          v118 = v126;
                        }

                        else
                        {
                          v119 += 2;
                        }
                      }
                    }

                    while (v120 >= v123);
                    *v122 = v123;
                    v122[1] = v124;
                  }
                }

                v116 = v117 - 1;
              }

              while (v117);
              do
              {
                v128 = 0;
                v129 = *v10;
                v130 = v10[1];
                v131 = v10;
                do
                {
                  v132 = &v131[2 * v128];
                  v133 = v132 + 2;
                  v134 = (2 * v128) | 1;
                  v128 = 2 * v128 + 2;
                  if (v128 >= v11)
                  {
                    v135 = *v133;
                    v128 = v134;
                  }

                  else
                  {
                    v137 = v132[4];
                    v136 = v132 + 4;
                    v135 = v137;
                    result = *(v136 - 2);
                    v138 = result >= v137;
                    if (result > v137)
                    {
                      v135 = *(v136 - 2);
                    }

                    if (v138)
                    {
                      v128 = v134;
                    }

                    else
                    {
                      v133 = v136;
                    }
                  }

                  *v131 = v135;
                  v131[1] = v133[1];
                  v131 = v133;
                }

                while (v128 <= ((v11 - 2) >> 1));
                if (v133 == (a2 - 16))
                {
                  *v133 = v129;
                  v133[1] = v130;
                }

                else
                {
                  *v133 = *(a2 - 2);
                  v133[1] = *(a2 - 1);
                  *(a2 - 2) = v129;
                  *(a2 - 1) = v130;
                  v139 = (v133 - v10 + 16) >> 4;
                  v140 = v139 < 2;
                  v141 = v139 - 2;
                  if (!v140)
                  {
                    v142 = v141 >> 1;
                    v143 = &v10[2 * v142];
                    v144 = *v143;
                    v145 = *v133;
                    if (*v143 < *v133)
                    {
                      v146 = v133[1];
                      do
                      {
                        v147 = v133;
                        v133 = v143;
                        *v147 = v144;
                        v147[1] = v143[1];
                        if (!v142)
                        {
                          break;
                        }

                        v142 = (v142 - 1) >> 1;
                        v143 = &v10[2 * v142];
                        v144 = *v143;
                      }

                      while (*v143 < v145);
                      *v133 = v145;
                      v133[1] = v146;
                    }
                  }
                }

                a2 -= 16;
                v140 = v11-- <= 2;
              }

              while (!v140);
            }

            return result;
          }

          v12 = &v10[2 * (v11 >> 1)];
          v13 = v12;
          v14 = *v8;
          if (v11 >= 0x81)
          {
            v15 = *v12;
            v16 = *v10;
            if (*v12 >= *v10)
            {
              if (v14 >= v15 || (*v12 = v14, *v8 = v15, v22 = (v12 + 1), v21 = v12[1], v12[1] = *v9, *v9 = v21, v23 = *v10, *v12 >= *v10))
              {
LABEL_29:
                v30 = v12 - 2;
                v31 = *(v12 - 2);
                v32 = v10[2];
                v33 = *(a2 - 4);
                if (v31 >= v32)
                {
                  if (v33 >= v31 || (*v30 = v33, *(a2 - 4) = v31, v36 = (v12 - 1), v35 = *(v12 - 1), *(v12 - 1) = *(a2 - 3), *(a2 - 3) = v35, v37 = v10[2], *v30 >= v37))
                  {
LABEL_42:
                    v46 = v12[2];
                    v44 = v12 + 2;
                    v45 = v46;
                    v47 = v10[4];
                    v48 = *(a2 - 6);
                    if (v46 >= v47)
                    {
                      if (v48 < v45)
                      {
                        *v44 = v48;
                        *(a2 - 6) = v45;
                        v51 = (v44 + 1);
                        v50 = v44[1];
                        v44[1] = *(a2 - 5);
                        *(a2 - 5) = v50;
                        v45 = *v44;
                        v52 = v10[4];
                        if (*v44 < v52)
                        {
                          v10[4] = v45;
                          *v44 = v52;
                          v49 = (v10 + 5);
LABEL_51:
                          v56 = *v49;
                          *v49 = *v51;
                          *v51 = v56;
                          v45 = *v44;
                        }
                      }
                    }

                    else
                    {
                      if (v48 < v45)
                      {
                        v49 = (v10 + 5);
                        v10[4] = v48;
LABEL_50:
                        *(a2 - 6) = v47;
                        v51 = a2 - 40;
                        goto LABEL_51;
                      }

                      v49 = (v44 + 1);
                      v53 = v44[1];
                      v54 = v10[5];
                      v10[4] = v45;
                      v10[5] = v53;
                      *v44 = v47;
                      v44[1] = v54;
                      v55 = *(a2 - 6);
                      if (v55 < v47)
                      {
                        *v44 = v55;
                        goto LABEL_50;
                      }

                      v45 = v47;
                    }

                    v57 = *v13;
                    v58 = *v30;
                    if (*v13 >= *v30)
                    {
                      if (v45 >= v57)
                      {
LABEL_62:
                        v66 = *v10;
                        *v10 = v57;
                        v20 = (v10 + 1);
                        *v13 = v66;
                        v26 = (v13 + 1);
                        goto LABEL_63;
                      }

                      v61 = (v13 + 1);
                      v62 = v13[1];
                      *v13 = v45;
                      v13[1] = v44[1];
                      *v44 = v57;
                      v44[1] = v62;
                      if (v45 >= v58)
                      {
                        v57 = v45;
                        goto LABEL_62;
                      }

                      *v30 = v45;
                      v59 = (v30 + 1);
                      *v13 = v58;
                    }

                    else
                    {
                      if (v45 >= v57)
                      {
                        v63 = v13[1];
                        *v13 = v58;
                        v64 = v30[1];
                        *v30 = v57;
                        v30[1] = v63;
                        v13[1] = v64;
                        if (v45 >= v58)
                        {
                          v57 = v58;
                          goto LABEL_62;
                        }

                        *v13 = v45;
                        *v44 = v58;
                        v60 = (v44 + 1);
                        v59 = (v13 + 1);
                      }

                      else
                      {
                        *v30 = v45;
                        v59 = (v30 + 1);
                        *v44 = v58;
                        v60 = (v44 + 1);
                      }

                      v61 = v60;
                    }

                    v65 = *v59;
                    *v59 = *v61;
                    *v61 = v65;
                    v57 = *v13;
                    goto LABEL_62;
                  }

                  v10[2] = *v30;
                  *v30 = v37;
                  v34 = v10 + 3;
                }

                else
                {
                  if (v33 >= v31)
                  {
                    v34 = v12 - 1;
                    v40 = *(v12 - 1);
                    v41 = v10[3];
                    v10[2] = v31;
                    v10[3] = v40;
                    *v30 = v32;
                    *(v12 - 1) = v41;
                    v42 = *(a2 - 4);
                    if (v42 >= v32)
                    {
                      goto LABEL_42;
                    }

                    *v30 = v42;
                  }

                  else
                  {
                    v34 = v10 + 3;
                    v10[2] = v33;
                  }

                  *(a2 - 4) = v32;
                  v36 = a2 - 24;
                }

                v43 = *v34;
                *v34 = *v36;
                *v36 = v43;
                goto LABEL_42;
              }

              *v10 = *v12;
              v17 = (v10 + 1);
              *v12 = v23;
            }

            else
            {
              if (v14 >= v15)
              {
                v17 = (v12 + 1);
                v27 = v12[1];
                v28 = v10[1];
                *v10 = v15;
                v10[1] = v27;
                *v12 = v16;
                v12[1] = v28;
                if (*v8 >= v16)
                {
                  goto LABEL_29;
                }

                *v12 = *v8;
              }

              else
              {
                v17 = (v10 + 1);
                *v10 = v14;
              }

              *v8 = v16;
              v22 = a2 - 8;
            }

            v29 = *v17;
            *v17 = *v22;
            *v22 = v29;
            goto LABEL_29;
          }

          v18 = *v10;
          v19 = *v12;
          if (*v10 < *v12)
          {
            if (v14 >= v18)
            {
              v20 = (v10 + 1);
              v38 = v10[1];
              v39 = v13[1];
              *v13 = v18;
              v13[1] = v38;
              *v10 = v19;
              v10[1] = v39;
              if (*v8 >= v19)
              {
                v18 = v19;
                goto LABEL_64;
              }

              *v10 = *v8;
            }

            else
            {
              v20 = (v12 + 1);
              *v13 = v14;
            }

            *v8 = v19;
            v26 = a2 - 8;
            goto LABEL_63;
          }

          if (v14 < v18)
          {
            *v10 = v14;
            *v8 = v18;
            v24 = v10[1];
            v10[1] = *v9;
            *v9 = v24;
            v18 = *v10;
            v25 = *v13;
            if (*v10 < *v13)
            {
              *v13 = v18;
              *v10 = v25;
              v20 = (v13 + 1);
              v26 = (v10 + 1);
LABEL_63:
              v67 = *v20;
              *v20 = *v26;
              *v26 = v67;
              v18 = *v10;
            }
          }

LABEL_64:
          --a3;
          if ((a4 & 1) != 0 || *(v10 - 2) < v18)
          {
            break;
          }

          if (v18 >= *v8)
          {
            v83 = v10 + 2;
            do
            {
              v10 = v83;
              if (v83 >= a2)
              {
                break;
              }

              v83 += 2;
            }

            while (v18 >= *v10);
          }

          else
          {
            do
            {
              v82 = v10[2];
              v10 += 2;
            }

            while (v18 >= v82);
          }

          v84 = a2;
          if (v10 < a2)
          {
            v84 = a2;
            do
            {
              v85 = *(v84 - 2);
              v84 -= 2;
            }

            while (v18 < v85);
          }

          v86 = v7[1];
          if (v10 < v84)
          {
            v87 = *v10;
            v88 = *v84;
            do
            {
              *v10 = v88;
              *v84 = v87;
              v89 = v10[1];
              v10[1] = v84[1];
              v84[1] = v89;
              do
              {
                v90 = v10[2];
                v10 += 2;
                v87 = v90;
              }

              while (v18 >= v90);
              do
              {
                v91 = *(v84 - 2);
                v84 -= 2;
                v88 = v91;
              }

              while (v18 < v91);
            }

            while (v10 < v84);
          }

          if (v10 - 2 != v7)
          {
            *v7 = *(v10 - 2);
            v7[1] = *(v10 - 1);
          }

          a4 = 0;
          *(v10 - 2) = v18;
          *(v10 - 1) = v86;
        }

        v68 = v10[1];
        v69 = v10;
        do
        {
          v70 = v69;
          v72 = v69[2];
          v69 += 2;
          v71 = v72;
        }

        while (v72 < v18);
        v73 = a2;
        if (v70 == v10)
        {
          v73 = a2;
          do
          {
            if (v69 >= v73)
            {
              break;
            }

            v75 = *(v73 - 2);
            v73 -= 16;
          }

          while (v75 >= v18);
        }

        else
        {
          do
          {
            v74 = *(v73 - 2);
            v73 -= 16;
          }

          while (v74 >= v18);
        }

        if (v69 >= v73)
        {
          v10 = v69;
        }

        else
        {
          v76 = *v73;
          v10 = v69;
          v77 = v73;
          do
          {
            *v10 = v76;
            *v77 = v71;
            v78 = v10[1];
            v10[1] = v77[1];
            v77[1] = v78;
            do
            {
              v79 = v10[2];
              v10 += 2;
              v71 = v79;
            }

            while (v79 < v18);
            do
            {
              v80 = *(v77 - 2);
              v77 -= 2;
              v76 = v80;
            }

            while (v80 >= v18);
          }

          while (v10 < v77);
        }

        if (v10 - 2 != v7)
        {
          *v7 = *(v10 - 2);
          v7[1] = *(v10 - 1);
        }

        *(v10 - 2) = v18;
        *(v10 - 1) = v68;
        if (v69 >= v73)
        {
          break;
        }

LABEL_87:
        result = std::__introsort<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_1 &,std::pair<unsigned long long,std::reference_wrapper<siri::ontology::UsoUtteranceAlignment>> *,false>(v7, v10 - 2, a3, a4 & 1);
        a4 = 0;
      }

      v81 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_1 &,std::pair<unsigned long long,std::reference_wrapper<siri::ontology::UsoUtteranceAlignment>> *>(v7, v10 - 16);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_1 &,std::pair<unsigned long long,std::reference_wrapper<siri::ontology::UsoUtteranceAlignment>> *>(v10, a2);
      if (result)
      {
        break;
      }

      if (!v81)
      {
        goto LABEL_87;
      }
    }

    a2 = (v10 - 2);
    if (!v81)
    {
      continue;
    }

    return result;
  }
}

void siri::ontology::UsoEntityNode::getUtteranceAlignments(siri::ontology::UsoEntityNode *this@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 7);
  v3 = *(this + 8);
  if (v2 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = (v9 >> 3) + 1;
        if (v10 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - v8;
        if (v11 >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          if (!(v12 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v13 = (8 * (v9 >> 3));
        *v13 = v6;
        v5 = (v13 + 1);
        memcpy(0, v8, v9);
        *a2 = 0;
        a2[2] = 0;
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 8;
      }

      a2[1] = v5;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1C084A18C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::~adjacency_list(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    MEMORY[0x1C68DE200](v2, 0xC400A2AC0F1);
  }

  v4 = (a1 + 24);
  std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__list_imp<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>>::clear(a1);
  return a1;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1C68DE150](a1 + 112);
  return a1;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_1 &,std::pair<unsigned long long,std::reference_wrapper<siri::ontology::UsoUtteranceAlignment>> *,0>(uint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = (a2 + 1);
      v9 = a2[1];
      a2[1] = a3[1];
      a3[1] = v9;
      v11 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        v8 = result + 1;
        *a2 = v11;
LABEL_10:
        v13 = *v8;
        *v8 = *v10;
        *v10 = v13;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v10 = (a3 + 1);
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = (a2 + 1);
    v12 = result[1];
    result[1] = a2[1];
    a2[1] = v12;
    v6 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v14 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v18;
        v19 = result[1];
        result[1] = a2[1];
        a2[1] = v19;
      }
    }
  }

  v20 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v26;
          v27 = result[1];
          result[1] = a2[1];
          a2[1] = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_1 &,std::pair<unsigned long long,std::reference_wrapper<siri::ontology::UsoUtteranceAlignment>> *>(unint64_t *a1, char *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 >= *a1)
      {
        if (v8 >= v6)
        {
          return 1;
        }

        a1[2] = v8;
        *(a2 - 2) = v6;
        v20 = (a1 + 3);
        v19 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v19;
        v21 = a1[2];
        v22 = *a1;
        if (v21 >= *a1)
        {
          return 1;
        }

        *a1 = v21;
        a1[2] = v22;
        v9 = (a1 + 1);
      }

      else
      {
        if (v8 >= v6)
        {
          v9 = (a1 + 3);
          v29 = a1[3];
          v30 = a1[1];
          *a1 = v6;
          a1[1] = v29;
          a1[2] = v7;
          a1[3] = v30;
          v31 = *(a2 - 2);
          if (v31 >= v7)
          {
            return 1;
          }

          a1[2] = v31;
        }

        else
        {
          v9 = (a1 + 1);
          *a1 = v8;
        }

        *(a2 - 2) = v7;
        v20 = a2 - 8;
      }

      v32 = *v9;
      *v9 = *v20;
      *v20 = v32;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_1 &,std::pair<unsigned long long,std::reference_wrapper<siri::ontology::UsoUtteranceAlignment>> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v15 = a1[2];
    v16 = *a1;
    v17 = a1[4];
    if (v15 >= *a1)
    {
      if (v17 < v15)
      {
        v27 = (a1 + 3);
        v26 = a1[3];
        v28 = a1[5];
        a1[2] = v17;
        a1[3] = v28;
        a1[4] = v15;
        a1[5] = v26;
        if (v17 >= v16)
        {
LABEL_51:
          v17 = v15;
          goto LABEL_52;
        }

        *a1 = v17;
        a1[2] = v16;
        v18 = (a1 + 1);
LABEL_50:
        v48 = *v18;
        *v18 = *v27;
        *v27 = v48;
        goto LABEL_51;
      }
    }

    else
    {
      if (v17 < v15)
      {
        v18 = (a1 + 1);
        *a1 = v17;
LABEL_49:
        a1[4] = v16;
        v27 = (a1 + 5);
        v15 = v16;
        goto LABEL_50;
      }

      v18 = (a1 + 3);
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v15;
      a1[1] = v46;
      a1[2] = v16;
      a1[3] = v47;
      if (v17 < v16)
      {
        a1[2] = v17;
        goto LABEL_49;
      }
    }

LABEL_52:
    v49 = *(a2 - 2);
    if (v49 < v17)
    {
      a1[4] = v49;
      *(a2 - 2) = v17;
      v50 = a1[5];
      a1[5] = *(a2 - 1);
      *(a2 - 1) = v50;
      v51 = a1[4];
      v52 = a1[2];
      if (v51 < v52)
      {
        v53 = a1[3];
        v54 = a1[5];
        a1[2] = v51;
        a1[3] = v54;
        a1[4] = v52;
        a1[5] = v53;
        v55 = *a1;
        if (v51 < *a1)
        {
          v56 = a1[1];
          *a1 = v51;
          a1[1] = v54;
          a1[2] = v55;
          a1[3] = v56;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 < *a1)
    {
      *a1 = v3;
      *(a2 - 2) = v4;
      v5 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v10 = (a1 + 4);
  v11 = a1[4];
  v12 = a1[2];
  v13 = *a1;
  if (v12 < *a1)
  {
    if (v11 >= v12)
    {
      v14 = (a1 + 3);
      v33 = a1[3];
      v34 = a1[1];
      *a1 = v12;
      a1[1] = v33;
      a1[2] = v13;
      a1[3] = v34;
      if (v11 >= v13)
      {
        goto LABEL_36;
      }

      a1[2] = v11;
    }

    else
    {
      v14 = (a1 + 1);
      *a1 = v11;
    }

    a1[4] = v13;
    v24 = (a1 + 5);
    goto LABEL_35;
  }

  if (v11 < v12)
  {
    v24 = (a1 + 3);
    v23 = a1[3];
    v25 = a1[5];
    a1[2] = v11;
    a1[3] = v25;
    a1[4] = v12;
    a1[5] = v23;
    if (v11 < v13)
    {
      *a1 = v11;
      a1[2] = v13;
      v14 = (a1 + 1);
LABEL_35:
      v35 = *v14;
      *v14 = *v24;
      *v24 = v35;
    }
  }

LABEL_36:
  v36 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = *v36;
    v40 = *v10;
    if (*v36 < *v10)
    {
      v41 = *(v36 + 1);
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 40);
        v43[6] = v40;
        v43[7] = v44;
        if (v42 == -32)
        {
          break;
        }

        v40 = v43[2];
        v42 -= 16;
        if (v39 >= v40)
        {
          v45 = (a1 + v42 + 48);
          goto LABEL_44;
        }
      }

      v45 = a1;
LABEL_44:
      *v45 = v39;
      v45[1] = v41;
      if (++v38 == 8)
      {
        return v36 + 16 == a2;
      }
    }

    v10 = v36;
    v37 += 16;
    v36 += 16;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

unint64_t *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *a3;
  if (*a2 < *result)
  {
    if (v5 >= v3)
    {
      v19 = result[1];
      v20 = a2[1];
      *result = v3;
      result[1] = v20;
      *a2 = v4;
      a2[1] = v19;
      v21 = result[2];
      result[2] = a2[2];
      v6 = (a2 + 3);
      v22 = a2[3];
      a2[2] = v21;
      v23 = result[3];
      result[3] = v22;
      a2[3] = v23;
      if (*a3 >= v4)
      {
        return result;
      }

      v24 = a2[1];
      v25 = a3[1];
      *a2 = *a3;
      a2[1] = v25;
      *a3 = v4;
      a3[1] = v24;
      v9 = a2[2];
      a2[2] = a3[2];
    }

    else
    {
      v6 = (result + 3);
      v7 = result[1];
      v8 = a3[1];
      *result = v5;
      result[1] = v8;
      *a3 = v4;
      a3[1] = v7;
      v9 = result[2];
      result[2] = a3[2];
    }

    a3[2] = v9;
    v13 = (a3 + 3);
    goto LABEL_10;
  }

  if (v5 < v3)
  {
    *a2 = v5;
    *a3 = v3;
    v10 = *a2;
    v11 = a2[1];
    a2[1] = a3[1];
    a3[1] = v11;
    v12 = a2[2];
    a2[2] = a3[2];
    a3[2] = v12;
    v13 = (a2 + 3);
    v14 = a2[3];
    a2[3] = a3[3];
    a3[3] = v14;
    v15 = *result;
    if (v10 < *result)
    {
      v16 = result[1];
      v17 = a2[1];
      *result = v10;
      result[1] = v17;
      *a2 = v15;
      a2[1] = v16;
      v18 = result[2];
      result[2] = a2[2];
      a2[2] = v18;
      v6 = (result + 3);
LABEL_10:
      v26 = *v6;
      *v6 = *v13;
      *v13 = v26;
    }
  }

  return result;
}

unint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>(a1, a2, a3);
  v11 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v11;
    v12 = *a3;
    v13 = a3[1];
    a3[1] = a4[1];
    a4[1] = v13;
    v14 = a3[2];
    a3[2] = a4[2];
    a4[2] = v14;
    v15 = a3[3];
    a3[3] = a4[3];
    a4[3] = v15;
    v16 = *a2;
    if (v12 < *a2)
    {
      *a2 = v12;
      *a3 = v16;
      v17 = *a2;
      v18 = a2[1];
      a2[1] = a3[1];
      a3[1] = v18;
      v19 = a2[2];
      a2[2] = a3[2];
      a3[2] = v19;
      v20 = a2[3];
      a2[3] = a3[3];
      a3[3] = v20;
      v21 = *a1;
      if (v17 < *a1)
      {
        v22 = a1[1];
        v23 = a2[1];
        *a1 = v17;
        a1[1] = v23;
        *a2 = v21;
        a2[1] = v22;
        v24 = a1[2];
        a1[2] = a2[2];
        a2[2] = v24;
        v25 = a1[3];
        a1[3] = a2[3];
        a2[3] = v25;
      }
    }
  }

  v26 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v26;
    v27 = *a4;
    v28 = a4[1];
    a4[1] = a5[1];
    a5[1] = v28;
    v29 = a4[2];
    a4[2] = a5[2];
    a5[2] = v29;
    v30 = a4[3];
    a4[3] = a5[3];
    a5[3] = v30;
    v31 = *a3;
    if (v27 < *a3)
    {
      *a3 = v27;
      *a4 = v31;
      v32 = *a3;
      v33 = a3[1];
      a3[1] = a4[1];
      a4[1] = v33;
      v34 = a3[2];
      a3[2] = a4[2];
      a4[2] = v34;
      v35 = a3[3];
      a3[3] = a4[3];
      a4[3] = v35;
      v36 = *a2;
      if (v32 < *a2)
      {
        *a2 = v32;
        *a3 = v36;
        v37 = *a2;
        v38 = a2[1];
        a2[1] = a3[1];
        a3[1] = v38;
        v39 = a2[2];
        a2[2] = a3[2];
        a3[2] = v39;
        v40 = a2[3];
        a2[3] = a3[3];
        a3[3] = v40;
        v41 = *a1;
        if (v37 < *a1)
        {
          v42 = a1[1];
          v43 = a2[1];
          *a1 = v37;
          a1[1] = v43;
          *a2 = v41;
          a2[1] = v42;
          v44 = a1[2];
          a1[2] = a2[2];
          a2[2] = v44;
          v45 = a1[3];
          a1[3] = a2[3];
          a2[3] = v45;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>(a1, (a1 + 32), (a2 - 32));
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>(a1, (a1 + 32), (a1 + 64));
        v24 = *(a2 - 32);
        v25 = *(a1 + 64);
        if (v24 < v25)
        {
          *(a1 + 64) = v24;
          *(a2 - 32) = v25;
          v26 = *(a1 + 64);
          v27 = *(a1 + 72);
          *(a1 + 72) = *(a2 - 24);
          *(a2 - 24) = v27;
          v28 = *(a1 + 80);
          *(a1 + 80) = *(a2 - 16);
          *(a2 - 16) = v28;
          v29 = *(a1 + 88);
          *(a1 + 88) = *(a2 - 8);
          *(a2 - 8) = v29;
          v30 = *(a1 + 32);
          if (v26 < v30)
          {
            *(a1 + 64) = v30;
            v32 = *(a1 + 72);
            v31 = *(a1 + 80);
            v33 = *(a1 + 40);
            *(a1 + 32) = v26;
            *(a1 + 40) = v32;
            *(a1 + 72) = v33;
            v34 = *(a1 + 56);
            v35 = *(a1 + 88);
            *(a1 + 48) = v31;
            *(a1 + 56) = v35;
            *(a1 + 88) = v34;
            v36 = *a1;
            if (v26 < *a1)
            {
              v37 = *(a1 + 8);
              *a1 = v26;
              *(a1 + 8) = v32;
              *(a1 + 40) = v37;
              v38 = *(a1 + 24);
              *(a1 + 16) = v31;
              *(a1 + 24) = v35;
              *(a1 + 32) = v36;
              *(a1 + 56) = v38;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32));
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 32);
    v6 = *a1;
    if (v5 < *a1)
    {
      v7 = *(a1 + 8);
      v8 = *(a2 - 24);
      *a1 = v5;
      *(a1 + 8) = v8;
      *(a2 - 32) = v6;
      *(a2 - 24) = v7;
      v9 = *(a1 + 16);
      *(a1 + 16) = *(a2 - 16);
      *(a2 - 16) = v9;
      v10 = *(a1 + 24);
      *(a1 + 24) = *(a2 - 8);
      *(a2 - 8) = v10;
    }

    return 1;
  }

LABEL_11:
  v11 = (a1 + 64);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::ontology::UsoGraph::prettyPrintSortedUsoGraphAlignments(void)::$_0 &,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>> *,0>(a1, (a1 + 32), (a1 + 64));
  v12 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *v12;
    if (*v12 < *v11)
    {
      v16 = *(v12 + 8);
      v17 = *(v12 + 16);
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v18 = v13;
      v19 = *v11;
      while (1)
      {
        v20 = v18;
        v21 = a1 + v18;
        *(v21 + 104) = *(v21 + 72);
        *(v21 + 120) = *(v21 + 88);
        *(v21 + 72) = 0;
        *(v21 + 80) = 0;
        *(v21 + 88) = 0;
        *(v21 + 96) = v19;
        if (v20 == -64)
        {
          break;
        }

        v19 = *(v21 + 32);
        v18 = v20 - 32;
        if (v15 >= v19)
        {
          v22 = a1 + v18 + 96;
          v23 = (a1 + v20 + 72);
          goto LABEL_19;
        }
      }

      v23 = (v21 + 72);
      v22 = a1;
LABEL_19:
      *v22 = v15;
      *v23 = v16;
      *(v22 + 16) = v17;
      if (++v14 == 8)
      {
        return v12 + 32 == a2;
      }
    }

    v11 = v12;
    v13 += 32;
    v12 += 32;
    if (v12 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>>>,std::pair<unsigned long long,std::vector<std::reference_wrapper<siri::ontology::UsoIdentifier>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 32;
    }
  }

  return a1;
}

uint64_t siri::ontology::UsoGraph::isValidSuccessorNameForNode(siri::ontology::UsoGraph *a1, uint64_t a2, siri::ontology::OntologyEdgeName *a3, const siri::ontology::OntologyNodeName *a4, int a5)
{
  siri::ontology::UsoGraphEdge::UsoGraphEdge(v21, a3, 0, 0, 0);
  v9 = 0;
  if (a5 <= 3)
  {
    if (a5 != 2)
    {
      if (a5 != 3)
      {
        goto LABEL_15;
      }

      LOBYTE(v12) = 0;
      v13 = 0;
      siri::ontology::UsoStringNode::UsoStringNode(v14, a1, &v12);
      v9 = (*(*a2 + 24))(a2, v14, v21);
      v14[0] = &unk_1F3FA4EF0;
      if (v20 == 1 && v19 < 0)
      {
        operator delete(__p);
      }

      v14[0] = &unk_1F3FA4D58;
      v25 = v17;
      std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v25);
      v25 = v16;
      std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](&v25);
      goto LABEL_14;
    }

    siri::ontology::UsoEntityNode::UsoEntityNode(v14, a1, a4);
    v10 = (*(*a2 + 24))(a2, v14, v21);
LABEL_13:
    v9 = v10;
    v14[0] = &unk_1F3FA4D58;
    v25 = v17;
    std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v25 = v16;
    std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](&v25);
LABEL_14:
    v25 = &v15;
    std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v25);
    goto LABEL_15;
  }

  if (a5 == 4)
  {
    siri::ontology::UsoIntNode::UsoIntNode(v14, a1, 0, 0);
    v10 = (*(*a2 + 24))(a2, v14, v21);
    goto LABEL_13;
  }

  if (a5 == 5)
  {
    v14[1] = a1;
    v14[2] = 0;
    v14[0] = &unk_1F3FA4CD8;
    v14[3] = a4;
    siri::ontology::UsoOperatorNode::checkValidOntologyNameType(v14);
    v9 = (*(*a2 + 24))(a2, v14, v21);
  }

LABEL_15:
  v22 = &unk_1F3FA5348;
  if (v24 < 0)
  {
    operator delete(v23);
  }

  return v9;
}

void sub_1C084B1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  siri::ontology::UsoEntityNode::~UsoEntityNode(va);
  *(v5 - 96) = &unk_1F3FA5348;
  if (*(v5 - 65) < 0)
  {
    operator delete(*(v5 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_1C084B334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1C68DE200](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C084B3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1C68DE200](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::UsoUtteranceAlignment::addSpan(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    __assert_rtn("addSpan", "UsoGraph.cpp", 692, "span");
  }

  v3 = a1 + 8;

  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceSpan>>::push_back[abi:ne200100](v3, a2);
}

uint64_t siri::ontology::UsoUtteranceAlignment::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v3 - v2 != *(a2 + 16) - v4)
  {
    return 0;
  }

  if (v3 != v2)
  {
    v5 = (v3 - v2) >> 3;
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = (v3 - v2) >> 3;
    }

    result = 1;
    while (1)
    {
      if (!v5)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = *v2;
      v9 = *v4;
      if (**v4 != **v2 || v9[1] != v8[1] || v9[2] != v8[2] || v9[3] != v8[3])
      {
        break;
      }

      v10 = *(v9 + 20);
      v11 = *(v8 + 20);
      if (v10 == v11 && v10 != 0)
      {
        v10 = v9[4];
        v11 = v8[4];
      }

      if (v10 != v11)
      {
        break;
      }

      v13 = *(v9 + 28);
      v14 = *(v8 + 28);
      if (v13 != v14 || v13 == 0)
      {
        if (v13 != v14)
        {
          return 0;
        }
      }

      else if (v9[6] != v8[6])
      {
        return 0;
      }

      --v5;
      v2 += 8;
      ++v4;
      if (!--v6)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

siri::ontology::UsoEntityNode *siri::ontology::UsoEntityNode::copyIdentifiers(siri::ontology::UsoEntityNode *this, uint64_t a2)
{
  if (*a2 != *(a2 + 8))
  {
    siri::ontology::UsoEntityNode::addIdentifier(this, **a2);
  }

  return this;
}

siri::ontology::UsoEntityNode *siri::ontology::UsoEntityNode::copyUtteranceAlignments(siri::ontology::UsoEntityNode *this, uint64_t a2)
{
  if (*a2 != *(a2 + 8))
  {
    siri::ontology::UsoEntityNode::addUtteranceAlignment(this, **a2);
  }

  return this;
}

siri::ontology::UsoEntityNode *siri::ontology::UsoEntityNode::copyEntitySpans(siri::ontology::UsoEntityNode *this, uint64_t a2)
{
  if (*a2 != *(a2 + 8))
  {
    siri::ontology::UsoEntityNode::addEntitySpan(this, **a2);
  }

  return this;
}

void siri::ontology::UsoEntityNode::addIdentifier()
{
  siri::ontology::UsoEntityNode::addIdentifier();
}

{
  operator new();
}

{
  siri::ontology::UsoEntityNode::addIdentifier();
}

void sub_1C084B834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v27, v28);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::UsoEntityNode::addIdentifier(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    __assert_rtn("addIdentifier", "UsoGraph.cpp", 985, "identifier");
  }

  v3 = a1 + 32;

  return std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::push_back[abi:ne200100](v3, a2);
}

void siri::ontology::UsoEntityNode::addEntitySpan(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    __assert_rtn("addEntitySpan", "UsoGraph.cpp", 1009, "entitySpan");
  }

  v3 = a1 + 80;

  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceSpan>>::push_back[abi:ne200100](v3, a2);
}

void *siri::ontology::UsoEntityNode::addUtteranceAlignment(void *result, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    __assert_rtn("addUtteranceAlignment", "UsoGraph.cpp", 1051, "utteranceAlignment");
  }

  v4 = result;
  v6 = result[8];
  v5 = result[9];
  if (v6 >= v5)
  {
    v8 = result[7];
    v9 = v6 - v8;
    v10 = (v6 - v8) >> 3;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v19[4] = v4 + 7;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<siri::ontology::SpanProperty>>>(v13);
    }

    v14 = v10;
    v15 = (8 * v10);
    *a2 = 0;
    v16 = &v15[-v14];
    *v15 = v2;
    v7 = v15 + 1;
    memcpy(v16, v8, v9);
    v17 = v4[7];
    v4[7] = v16;
    v4[8] = v7;
    v18 = v4[9];
    v4[9] = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::~__split_buffer(v19);
  }

  else
  {
    *a2 = 0;
    *v6 = v2;
    v7 = v6 + 8;
  }

  v4[8] = v7;
  return result;
}

BOOL siri::ontology::MatchInfo::hasMatchSignals(int *a1, void *a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    return 1;
  }

  v3 = *a1;
  v4 = *a2 + 4;
  do
  {
    result = (v3 & *(v4 - 4)) != 0;
    v6 = (v3 & *(v4 - 4)) == 0 || v4 == v2;
    v4 += 4;
  }

  while (!v6);
  return result;
}

void siri::ontology::UsoEntitySpan::addSpanProperty()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_1C084BFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v20, v21);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::UsoEntitySpan::addSpanProperty(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    __assert_rtn("addSpanProperty", "UsoGraph.cpp", 1653, "spanProperty");
  }

  v3 = a1 + 88;

  return std::vector<std::unique_ptr<siri::ontology::SpanProperty>>::push_back[abi:ne200100](v3, a2);
}

uint64_t siri::ontology::UsoEntitySpan::addAlternative(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    __assert_rtn("addAlternative", "UsoGraph.cpp", 1675, "alternative");
  }

  v3 = a1 + 128;

  return std::vector<std::unique_ptr<siri::ontology::AsrAlternative>>::push_back[abi:ne200100](v3, a2);
}

uint64_t siri::ontology::oname::graph::ontology_init::apple_PhotoMemory(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::apple_PhotoMemory(void)::apple_PhotoMemory;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084CC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v49, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(int *result, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = result + 1;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = a2 + 1;
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = a3 + 1;
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = a2 + 1;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = result + 1;
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(int *a1, int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = a1 + 1;
LABEL_64:
      v37 = a1 + 5;
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = a1 + 3;
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = a1 + 3;
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = a1 + 1;
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v25;
    if (*v45 >= *v25 && (v48 < *v45 || v45[1] >= v25[1]))
    {
      goto LABEL_81;
    }

    v49 = *v45;
    v50 = v45[1];
    *v45 = v48;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 8);
      if (v53 <= v49)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_74:
      v25 -= 2;
      *(v52 + 4) = v53;
      *(a1 + v51 + 20) = v54;
      v51 -= 8;
      if (v51 == -16)
      {
        v25 = a1;
        goto LABEL_80;
      }
    }

    if (v53 >= v49)
    {
      v54 = *(a1 + v51 + 12);
      if (v54 <= v50)
      {
        goto LABEL_80;
      }

      goto LABEL_74;
    }

    v25 = (a1 + v51 + 16);
LABEL_80:
    *v25 = v49;
    v25[1] = v50;
    if (++v47 != 8)
    {
LABEL_81:
      v25 = v45;
      v46 += 8;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

uint64_t siri::ontology::oname::graph::ontology_init::appleAlarm_AlarmAttribute(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::appleAlarm_AlarmAttribute(void)::appleAlarm_AlarmAttribute;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084D5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 208);
  if (*(v35 - 145) < 0)
  {
    operator delete(*(v35 - 168));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::appleArithmetic_ArithmeticAttribute(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::appleArithmetic_ArithmeticAttribute(void)::appleArithmetic_ArithmeticAttribute;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084D834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a24);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a30);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::appleContact_ContactAttribute(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::appleContact_ContactAttribute(void)::appleContact_ContactAttribute;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084DAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 224);
  if (*(v35 - 161) < 0)
  {
    operator delete(*(v35 - 184));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::appleEmail_EmailAttribute(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::appleEmail_EmailAttribute(void)::appleEmail_EmailAttribute;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084DD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a28);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 224);
  if (*(v35 - 161) < 0)
  {
    operator delete(*(v35 - 184));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::appleMessage_MessageAttribute(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::appleMessage_MessageAttribute(void)::appleMessage_MessageAttribute;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084DF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v49, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::appleNotebook_NotebookAttribute(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::appleNotebook_NotebookAttribute(void)::appleNotebook_NotebookAttribute;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084E210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a28);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v49, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::appleNotification_NotificationAttribute(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::appleNotification_NotificationAttribute(void)::appleNotification_NotificationAttribute;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084E468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a24);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a30);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::applePhoneCall_PhoneCallAttribute(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::applePhoneCall_PhoneCallAttribute(void)::applePhoneCall_PhoneCallAttribute;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084E6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 193) < 0)
  {
    operator delete(*(v40 - 216));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::appleTimer_TimerAttribute(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::appleTimer_TimerAttribute(void)::appleTimer_TimerAttribute;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084E944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 208);
  if (*(v35 - 145) < 0)
  {
    operator delete(*(v35 - 168));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::appleWriting_WritingAttribute(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::appleWriting_WritingAttribute(void)::appleWriting_WritingAttribute;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084EBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a28);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 208);
  if (*(v35 - 145) < 0)
  {
    operator delete(*(v35 - 168));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_SpatialPosition(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_SpatialPosition(void)::common_SpatialPosition;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084EE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a28);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 224);
  if (*(v35 - 161) < 0)
  {
    operator delete(*(v35 - 184));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_WorkoutClass(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_WorkoutClass(void)::common_WorkoutClass;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084F060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 224);
  if (*(v37 - 161) < 0)
  {
    operator delete(*(v37 - 184));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_MediaItemRelationshipType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_MediaItemRelationshipType(void)::common_MediaItemRelationshipType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084F2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a33);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v34 - 184);
  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
  }

  MEMORY[0x1C68DE200](v33, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_AppIntent(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_AppIntent(void)::common_AppIntent;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084F4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_RequiredStatus(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_RequiredStatus(void)::common_RequiredStatus;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084F71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a33);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v34 - 184);
  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
  }

  MEMORY[0x1C68DE200](v33, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_SiriContent(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_SiriContent(void)::common_SiriContent;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084F974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a40);
  if (*(v41 - 185) < 0)
  {
    operator delete(*(v41 - 208));
  }

  MEMORY[0x1C68DE200](v40, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_CompletionStatus(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_CompletionStatus(void)::common_CompletionStatus;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084FBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 192);
  if (*(v35 - 129) < 0)
  {
    operator delete(*(v35 - 152));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_SpatialDirection(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_SpatialDirection(void)::common_SpatialDirection;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C084FE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a28);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 208);
  if (*(v35 - 145) < 0)
  {
    operator delete(*(v35 - 168));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Workout(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Workout(void)::common_Workout;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0850074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 193) < 0)
  {
    operator delete(*(v40 - 216));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_AppListing(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_AppListing(void)::common_AppListing;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08502E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 177) < 0)
  {
    operator delete(*(v40 - 200));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_ReferenceType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_ReferenceType(void)::common_ReferenceType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0850530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v33 - 192);
  if (*(v33 - 129) < 0)
  {
    operator delete(*(v33 - 152));
  }

  MEMORY[0x1C68DE200](v32, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_AppAction(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_AppAction(void)::common_AppAction;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0850778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 224);
  if (*(v35 - 161) < 0)
  {
    operator delete(*(v35 - 184));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_SpendingCategory(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_SpendingCategory(void)::common_SpendingCategory;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08509B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 184);
  if (*(v36 - 121) < 0)
  {
    operator delete(*(v36 - 144));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_FindMyStatus(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_FindMyStatus(void)::common_FindMyStatus;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0850BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 208);
  if (*(v35 - 145) < 0)
  {
    operator delete(*(v35 - 168));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PersonRole(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PersonRole(void)::common_PersonRole;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0850E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_DurationComponent(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_DurationComponent(void)::common_DurationComponent;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0851064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a30);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 200);
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_NavigationMenu(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_NavigationMenu(void)::common_NavigationMenu;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08512A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 208);
  if (*(v35 - 145) < 0)
  {
    operator delete(*(v35 - 168));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PaymentType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PaymentType(void)::common_PaymentType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0851500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v33 - 208);
  if (*(v33 - 145) < 0)
  {
    operator delete(*(v33 - 168));
  }

  MEMORY[0x1C68DE200](v32, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_ScheduleType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_ScheduleType(void)::common_ScheduleType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0851748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a33);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v34 - 184);
  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
  }

  MEMORY[0x1C68DE200](v33, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Number(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Number(void)::common_Number;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08519DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a37);
  if (*(v38 - 225) < 0)
  {
    operator delete(*(v38 - 248));
  }

  MEMORY[0x1C68DE200](v37, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_SearchObjectType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_SearchObjectType(void)::common_SearchObjectType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0851C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_SizeDirection(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_SizeDirection(void)::common_SizeDirection;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0851E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a28);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 208);
  if (*(v35 - 145) < 0)
  {
    operator delete(*(v35 - 168));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Time12HourClock(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Time12HourClock(void)::common_Time12HourClock;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0852104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 193) < 0)
  {
    operator delete(*(v40 - 216));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_AppGenre(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_AppGenre(void)::common_AppGenre;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0852348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Language(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Language(void)::common_Language;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085257C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 200);
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Agent(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Agent(void)::common_Agent;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08527E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a24);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a40);
  if (*(v41 - 185) < 0)
  {
    operator delete(*(v41 - 208));
  }

  MEMORY[0x1C68DE200](v40, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_AttachmentType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_AttachmentType(void)::common_AttachmentType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0852A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a37);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v47, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Geolocation(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Geolocation(void)::common_Geolocation;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0852CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a24);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 200);
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Measurement(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Measurement(void)::common_Measurement;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0852F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a16);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a21);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a33);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a38);
  if (*(v39 - 169) < 0)
  {
    operator delete(*(v39 - 192));
  }

  MEMORY[0x1C68DE200](v38, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_RecurringDateTimeRange(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_RecurringDateTimeRange(void)::common_RecurringDateTimeRange;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08531E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v49, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_MedicationEvent(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_MedicationEvent(void)::common_MedicationEvent;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0853444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 224);
  if (*(v35 - 161) < 0)
  {
    operator delete(*(v35 - 184));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PersonSocialAction(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PersonSocialAction(void)::common_PersonSocialAction;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0853678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 208);
  if (*(v35 - 145) < 0)
  {
    operator delete(*(v35 - 168));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Currency(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Currency(void)::common_Currency;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08538B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 184);
  if (*(v36 - 121) < 0)
  {
    operator delete(*(v36 - 144));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_CommunicationTrigger(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_CommunicationTrigger(void)::common_CommunicationTrigger;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0853B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 224);
  if (*(v35 - 161) < 0)
  {
    operator delete(*(v35 - 184));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_CurrencyAmount(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_CurrencyAmount(void)::common_CurrencyAmount;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0853D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a33);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a38);
  if (*(v39 - 201) < 0)
  {
    operator delete(*(v39 - 224));
  }

  MEMORY[0x1C68DE200](v38, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_OffsetDateTime(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_OffsetDateTime(void)::common_OffsetDateTime;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0854028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 193) < 0)
  {
    operator delete(*(v40 - 216));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_UserProfile(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_UserProfile(void)::common_UserProfile;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0854278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 224);
  if (*(v35 - 161) < 0)
  {
    operator delete(*(v35 - 184));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_AppSection(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_AppSection(void)::common_AppSection;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08544B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 184);
  if (*(v36 - 121) < 0)
  {
    operator delete(*(v36 - 144));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_EventTrigger(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_EventTrigger(void)::common_EventTrigger;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085470C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 225) < 0)
  {
    operator delete(*(v40 - 248));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PhotoCollection(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PhotoCollection(void)::common_PhotoCollection;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08549A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v49, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Reminder(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Reminder(void)::common_Reminder;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0854C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v49, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_ReactionType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_ReactionType(void)::common_ReactionType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0854E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 224);
  if (*(v35 - 161) < 0)
  {
    operator delete(*(v35 - 184));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_DigitalFace(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_DigitalFace(void)::common_DigitalFace;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08550E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 208);
  if (*(v35 - 145) < 0)
  {
    operator delete(*(v35 - 168));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_RadioStation(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_RadioStation(void)::common_RadioStation;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085532C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 193) < 0)
  {
    operator delete(*(v40 - 216));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Religion(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Religion(void)::common_Religion;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0855564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 184);
  if (*(v36 - 121) < 0)
  {
    operator delete(*(v36 - 144));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_TimeZone(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_TimeZone(void)::common_TimeZone;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08557A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 200);
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Decimal(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Decimal(void)::common_Decimal;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0855A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a16);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a21);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a37);
  if (*(v38 - 193) < 0)
  {
    operator delete(*(v38 - 216));
  }

  MEMORY[0x1C68DE200](v37, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_SortDirection(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_SortDirection(void)::common_SortDirection;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0855C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 177) < 0)
  {
    operator delete(*(v40 - 200));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_MessageType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_MessageType(void)::common_MessageType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0855EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a33);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v34 - 184);
  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
  }

  MEMORY[0x1C68DE200](v33, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_SortValue(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_SortValue(void)::common_SortValue;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0856118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PhoneCallMode(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PhoneCallMode(void)::common_PhoneCallMode;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0856368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v33 - 208);
  if (*(v33 - 145) < 0)
  {
    operator delete(*(v33 - 168));
  }

  MEMORY[0x1C68DE200](v32, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_SportsItem(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_SportsItem(void)::common_SportsItem;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08565BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 208);
  if (*(v35 - 145) < 0)
  {
    operator delete(*(v35 - 168));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_ReminderType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_ReminderType(void)::common_ReminderType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0856800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a24);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_KnowledgeQuestionAttribute(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_KnowledgeQuestionAttribute(void)::common_KnowledgeQuestionAttribute;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0856A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 184);
  if (*(v36 - 121) < 0)
  {
    operator delete(*(v36 - 144));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_MediaItemVersion(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_MediaItemVersion(void)::common_MediaItemVersion;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0856C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 177) < 0)
  {
    operator delete(*(v40 - 200));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_MediaCapture(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_MediaCapture(void)::common_MediaCapture;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0856EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 216);
  if (*(v36 - 153) < 0)
  {
    operator delete(*(v36 - 176));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Reaction(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Reaction(void)::common_Reaction;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0857134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 177) < 0)
  {
    operator delete(*(v40 - 200));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_DailyBriefing(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_DailyBriefing(void)::common_DailyBriefing;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0857388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 216);
  if (*(v36 - 153) < 0)
  {
    operator delete(*(v36 - 176));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Meridiem(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Meridiem(void)::common_Meridiem;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08575D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v33 - 192);
  if (*(v33 - 129) < 0)
  {
    operator delete(*(v33 - 152));
  }

  MEMORY[0x1C68DE200](v32, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Tag(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Tag(void)::common_Tag;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0857810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PaymentSortKey(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PaymentSortKey(void)::common_PaymentSortKey;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0857A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v33 - 208);
  if (*(v33 - 145) < 0)
  {
    operator delete(*(v33 - 168));
  }

  MEMORY[0x1C68DE200](v32, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_MixedFraction(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_MixedFraction(void)::common_MixedFraction;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0857CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a16);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a21);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a37);
  if (*(v38 - 193) < 0)
  {
    operator delete(*(v38 - 216));
  }

  MEMORY[0x1C68DE200](v37, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Voicemail(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Voicemail(void)::common_Voicemail;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0857F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 225) < 0)
  {
    operator delete(*(v40 - 248));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_ContactAddress(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_ContactAddress(void)::common_ContactAddress;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08581C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 200);
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PointOfInterest(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PointOfInterest(void)::common_PointOfInterest;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0858428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a40);
  if (*(v41 - 201) < 0)
  {
    operator delete(*(v41 - 224));
  }

  MEMORY[0x1C68DE200](v40, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_MeasurementQualifier(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_MeasurementQualifier(void)::common_MeasurementQualifier;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0858674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 208);
  if (*(v35 - 145) < 0)
  {
    operator delete(*(v35 - 168));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Quantifier(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Quantifier(void)::common_Quantifier;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08588D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a37);
  if (*(v38 - 161) < 0)
  {
    operator delete(*(v38 - 184));
  }

  MEMORY[0x1C68DE200](v37, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_AdjustmentType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_AdjustmentType(void)::common_AdjustmentType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0858B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 192);
  if (*(v35 - 129) < 0)
  {
    operator delete(*(v35 - 152));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_EmailState(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_EmailState(void)::common_EmailState;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0858D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 208);
  if (*(v35 - 145) < 0)
  {
    operator delete(*(v35 - 168));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_NotificationType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_NotificationType(void)::common_NotificationType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0858FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PhotoTag(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PhotoTag(void)::common_PhotoTag;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08591E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 184);
  if (*(v36 - 121) < 0)
  {
    operator delete(*(v36 - 144));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PointOfInterestType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PointOfInterestType(void)::common_PointOfInterestType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0859414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_RecipeStep(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_RecipeStep(void)::common_RecipeStep;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0859680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v49, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_TemperatureComponent(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_TemperatureComponent(void)::common_TemperatureComponent;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C08598CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a30);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 200);
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_MonthOfYear(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_MonthOfYear(void)::common_MonthOfYear;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0859B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a37);
  if (*(v38 - 177) < 0)
  {
    operator delete(*(v38 - 200));
  }

  MEMORY[0x1C68DE200](v37, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_DateTimeRange(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_DateTimeRange(void)::common_DateTimeRange;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0859DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a37);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v47, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_VoiceCommandConfirmation(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_VoiceCommandConfirmation(void)::common_VoiceCommandConfirmation;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0859FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 192);
  if (*(v35 - 129) < 0)
  {
    operator delete(*(v35 - 152));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_TemperatureUnit(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_TemperatureUnit(void)::common_TemperatureUnit;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085A2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v49, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_SafetySession(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_SafetySession(void)::common_SafetySession;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085A51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a40);
  if (*(v41 - 185) < 0)
  {
    operator delete(*(v41 - 208));
  }

  MEMORY[0x1C68DE200](v40, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_DailyBriefingItem(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_DailyBriefingItem(void)::common_DailyBriefingItem;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085A758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_QRCodeType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_QRCodeType(void)::common_QRCodeType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085A98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PaymentAccountType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PaymentAccountType(void)::common_PaymentAccountType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085ABC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 184);
  if (*(v36 - 121) < 0)
  {
    operator delete(*(v36 - 144));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PersonContact(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PersonContact(void)::common_PersonContact;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085AE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 232);
  if (*(v36 - 169) < 0)
  {
    operator delete(*(v36 - 192));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_ListPosition(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_ListPosition(void)::common_ListPosition;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085B0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a37);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v47, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_ProductCategory(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_ProductCategory(void)::common_ProductCategory;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085B2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 184);
  if (*(v36 - 121) < 0)
  {
    operator delete(*(v36 - 144));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_CalendarSystem(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_CalendarSystem(void)::common_CalendarSystem;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085B520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 184);
  if (*(v36 - 121) < 0)
  {
    operator delete(*(v36 - 144));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PersonProperty(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PersonProperty(void)::common_PersonProperty;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085B760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 224);
  if (*(v35 - 161) < 0)
  {
    operator delete(*(v35 - 184));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Color(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Color(void)::common_Color;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085B998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 184);
  if (*(v36 - 121) < 0)
  {
    operator delete(*(v36 - 144));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Note(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Note(void)::common_Note;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085BC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 225) < 0)
  {
    operator delete(*(v40 - 248));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_VoiceTrigger(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_VoiceTrigger(void)::common_VoiceTrigger;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085BE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a32);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v33 - 208);
  if (*(v33 - 145) < 0)
  {
    operator delete(*(v33 - 168));
  }

  MEMORY[0x1C68DE200](v32, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_ReactionCategory(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_ReactionCategory(void)::common_ReactionCategory;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085C0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 192);
  if (*(v35 - 129) < 0)
  {
    operator delete(*(v35 - 152));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Time24HourClock(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Time24HourClock(void)::common_Time24HourClock;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085C320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 193) < 0)
  {
    operator delete(*(v40 - 216));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Size(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Size(void)::common_Size;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085C568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 184);
  if (*(v36 - 121) < 0)
  {
    operator delete(*(v36 - 144));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Compass(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Compass(void)::common_Compass;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085C7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 224);
  if (*(v35 - 161) < 0)
  {
    operator delete(*(v35 - 184));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Locale(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Locale(void)::common_Locale;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085C9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 200);
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_MeasurementUnitType(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_MeasurementUnitType(void)::common_MeasurementUnitType;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085CC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 192);
  if (*(v35 - 129) < 0)
  {
    operator delete(*(v35 - 152));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_FormattedString(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_FormattedString(void)::common_FormattedString;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085CE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_WorkoutEquipment(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_WorkoutEquipment(void)::common_WorkoutEquipment;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085D08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a36);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v37 - 176);
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  MEMORY[0x1C68DE200](v36, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PersonName(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PersonName(void)::common_PersonName;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085D2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 232);
  if (*(v36 - 169) < 0)
  {
    operator delete(*(v36 - 192));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_PhotoMemory(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_PhotoMemory(void)::common_PhotoMemory;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085D51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 224);
  if (*(v35 - 161) < 0)
  {
    operator delete(*(v35 - 184));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_TimeUnit(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_TimeUnit(void)::common_TimeUnit;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085D788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a28);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a33);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a38);
  if (a48 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1C68DE200](v48, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Politeness(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Politeness(void)::common_Politeness;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085D9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a22);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a27);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a33);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v34 - 184);
  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
  }

  MEMORY[0x1C68DE200](v33, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Arithmetic(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Arithmetic(void)::common_Arithmetic;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085DC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a12);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a35);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v36 - 200);
  if (*(v36 - 137) < 0)
  {
    operator delete(*(v36 - 160));
  }

  MEMORY[0x1C68DE200](v35, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_CarSetting(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_CarSetting(void)::common_CarSetting;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085DE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a39);
  if (*(v40 - 225) < 0)
  {
    operator delete(*(v40 - 248));
  }

  MEMORY[0x1C68DE200](v39, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}

uint64_t siri::ontology::oname::graph::ontology_init::common_Age(siri::ontology::oname::graph::ontology_init *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = siri::ontology::oname::graph::ontology_init::common_Age(void)::common_Age;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C085E104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a11);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a17);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a23);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a29);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(&a34);
  std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::~__hash_table(v35 - 208);
  if (*(v35 - 145) < 0)
  {
    operator delete(*(v35 - 168));
  }

  MEMORY[0x1C68DE200](v34, 0x10B3C405DBA31E4);
  _Unwind_Resume(a1);
}