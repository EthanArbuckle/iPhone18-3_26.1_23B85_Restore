void sub_2702EC3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, std::__shared_weak_count *a23)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  a22 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(&a16);
  _Unwind_Resume(a1);
}

void UC::SUE::UCSegmentedURLCoderProvider::getTLDFixedLengthCoder(UC::SUE::UCSegmentedURLCoderProvider *this@<X0>, void *a2@<X8>)
{
  *(&v128 + 1) = *MEMORY[0x277D85DE8];
  v4 = *(this + 11);
  if (v4)
  {
    v5 = *(this + 12);
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, ".co");
    std::string::basic_string[abi:ne200100]<0>(v15, ".es");
    std::string::basic_string[abi:ne200100]<0>(v16, ".ch");
    std::string::basic_string[abi:ne200100]<0>(v17, ".eu");
    std::string::basic_string[abi:ne200100]<0>(v18, ".io");
    std::string::basic_string[abi:ne200100]<0>(v19, ".vn");
    std::string::basic_string[abi:ne200100]<0>(v20, ".be");
    std::string::basic_string[abi:ne200100]<0>(v21, ".at");
    std::string::basic_string[abi:ne200100]<0>(v22, ".ua");
    std::string::basic_string[abi:ne200100]<0>(v23, ".cz");
    std::string::basic_string[abi:ne200100]<0>(v24, ".gov");
    std::string::basic_string[abi:ne200100]<0>(v25, ".tv");
    std::string::basic_string[abi:ne200100]<0>(v26, ".gr");
    std::string::basic_string[abi:ne200100]<0>(v27, ".cf");
    std::string::basic_string[abi:ne200100]<0>(v28, ".kr");
    std::string::basic_string[abi:ne200100]<0>(v29, ".tw");
    std::string::basic_string[abi:ne200100]<0>(v30, ".me");
    std::string::basic_string[abi:ne200100]<0>(v31, ".biz");
    std::string::basic_string[abi:ne200100]<0>(v32, ".site");
    std::string::basic_string[abi:ne200100]<0>(v33, ".se");
    std::string::basic_string[abi:ne200100]<0>(v34, ".tr");
    std::string::basic_string[abi:ne200100]<0>(v35, ".id");
    std::string::basic_string[abi:ne200100]<0>(v36, ".mx");
    std::string::basic_string[abi:ne200100]<0>(v37, ".wang");
    std::string::basic_string[abi:ne200100]<0>(v38, ".hu");
    std::string::basic_string[abi:ne200100]<0>(v39, ".nz");
    std::string::basic_string[abi:ne200100]<0>(v40, ".ro");
    std::string::basic_string[abi:ne200100]<0>(v41, ".cc");
    std::string::basic_string[abi:ne200100]<0>(v42, ".top");
    std::string::basic_string[abi:ne200100]<0>(v43, ".club");
    std::string::basic_string[abi:ne200100]<0>(v44, ".dk");
    std::string::basic_string[abi:ne200100]<0>(v45, ".ie");
    std::string::basic_string[abi:ne200100]<0>(v46, ".za");
    std::string::basic_string[abi:ne200100]<0>(v47, ".ar");
    std::string::basic_string[abi:ne200100]<0>(v48, ".no");
    std::string::basic_string[abi:ne200100]<0>(v49, ".online");
    std::string::basic_string[abi:ne200100]<0>(v50, ".cl");
    std::string::basic_string[abi:ne200100]<0>(v51, ".tk");
    std::string::basic_string[abi:ne200100]<0>(v52, ".fi");
    std::string::basic_string[abi:ne200100]<0>(v53, ".my");
    std::string::basic_string[abi:ne200100]<0>(v54, ".hk");
    std::string::basic_string[abi:ne200100]<0>(v55, ".sk");
    std::string::basic_string[abi:ne200100]<0>(v56, ".il");
    std::string::basic_string[abi:ne200100]<0>(v57, ".pt");
    std::string::basic_string[abi:ne200100]<0>(v58, ".th");
    std::string::basic_string[abi:ne200100]<0>(v59, ".nu");
    std::string::basic_string[abi:ne200100]<0>(v60, ".sg");
    std::string::basic_string[abi:ne200100]<0>(v61, ".kz");
    std::string::basic_string[abi:ne200100]<0>(v62, ".by");
    std::string::basic_string[abi:ne200100]<0>(v63, ".pk");
    std::string::basic_string[abi:ne200100]<0>(v64, ".su");
    std::string::basic_string[abi:ne200100]<0>(v65, ".to");
    std::string::basic_string[abi:ne200100]<0>(v66, ".ph");
    std::string::basic_string[abi:ne200100]<0>(v67, ".live");
    std::string::basic_string[abi:ne200100]<0>(v68, ".ae");
    std::string::basic_string[abi:ne200100]<0>(v69, ".space");
    std::string::basic_string[abi:ne200100]<0>(v70, ".mobi");
    std::string::basic_string[abi:ne200100]<0>(v71, ".ai");
    std::string::basic_string[abi:ne200100]<0>(v72, ".app");
    std::string::basic_string[abi:ne200100]<0>(v73, ".is");
    std::string::basic_string[abi:ne200100]<0>(v74, ".news");
    std::string::basic_string[abi:ne200100]<0>(v75, ".name");
    std::string::basic_string[abi:ne200100]<0>(v76, ".tech");
    std::string::basic_string[abi:ne200100]<0>(v77, ".vip");
    std::string::basic_string[abi:ne200100]<0>(v78, ".fun");
    std::string::basic_string[abi:ne200100]<0>(v79, ".network");
    std::string::basic_string[abi:ne200100]<0>(v80, ".cloud");
    std::string::basic_string[abi:ne200100]<0>(v81, ".lu");
    std::string::basic_string[abi:ne200100]<0>(v82, ".am");
    std::string::basic_string[abi:ne200100]<0>(v83, ".website");
    std::string::basic_string[abi:ne200100]<0>(v84, ".jobs");
    std::string::basic_string[abi:ne200100]<0>(v85, ".life");
    std::string::basic_string[abi:ne200100]<0>(v86, ".win");
    std::string::basic_string[abi:ne200100]<0>(v87, ".ly");
    std::string::basic_string[abi:ne200100]<0>(v88, ".do");
    std::string::basic_string[abi:ne200100]<0>(v89, ".tn");
    std::string::basic_string[abi:ne200100]<0>(v90, ".md");
    std::string::basic_string[abi:ne200100]<0>(v91, ".shop");
    std::string::basic_string[abi:ne200100]<0>(v92, ".store");
    std::string::basic_string[abi:ne200100]<0>(v93, ".media");
    std::string::basic_string[abi:ne200100]<0>(v94, ".world");
    std::string::basic_string[abi:ne200100]<0>(v95, ".travel");
    std::string::basic_string[abi:ne200100]<0>(v96, ".work");
    std::string::basic_string[abi:ne200100]<0>(v97, ".int");
    std::string::basic_string[abi:ne200100]<0>(v98, ".qa");
    std::string::basic_string[abi:ne200100]<0>(v99, ".global");
    std::string::basic_string[abi:ne200100]<0>(v100, ".company");
    std::string::basic_string[abi:ne200100]<0>(v101, ".host");
    std::string::basic_string[abi:ne200100]<0>(v102, ".wiki");
    std::string::basic_string[abi:ne200100]<0>(v103, ".stream");
    std::string::basic_string[abi:ne200100]<0>(v104, ".gt");
    std::string::basic_string[abi:ne200100]<0>(v105, ".py");
    std::string::basic_string[abi:ne200100]<0>(v106, ".video");
    std::string::basic_string[abi:ne200100]<0>(v107, ".bid");
    std::string::basic_string[abi:ne200100]<0>(v108, ".cm");
    std::string::basic_string[abi:ne200100]<0>(v109, ".mo");
    std::string::basic_string[abi:ne200100]<0>(v110, ".tel");
    std::string::basic_string[abi:ne200100]<0>(v111, ".digital");
    std::string::basic_string[abi:ne200100]<0>(v112, ".center");
    std::string::basic_string[abi:ne200100]<0>(v113, ".plus");
    std::string::basic_string[abi:ne200100]<0>(v114, ".ltd");
    std::string::basic_string[abi:ne200100]<0>(v115, ".services");
    std::string::basic_string[abi:ne200100]<0>(v116, ".so");
    std::string::basic_string[abi:ne200100]<0>(v117, ".tt");
    std::string::basic_string[abi:ne200100]<0>(v118, ".support");
    std::string::basic_string[abi:ne200100]<0>(v119, ".pub");
    std::string::basic_string[abi:ne200100]<0>(v120, ".help");
    std::string::basic_string[abi:ne200100]<0>(v121, ".gl");
    std::string::basic_string[abi:ne200100]<0>(v122, ".museum");
    std::string::basic_string[abi:ne200100]<0>(v123, ".pm");
    std::string::basic_string[abi:ne200100]<0>(v124, ".business");
    std::string::basic_string[abi:ne200100]<0>(v125, ".bike");
    std::string::basic_string[abi:ne200100]<0>(v126, ".loan");
    std::string::basic_string[abi:ne200100]<0>(v127, ".estate");
    memset(&v13, 0, sizeof(v13));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v13, &v14, &v128, 0x72uLL);
    v6 = 342;
    do
    {
      if (*(&v15[v6 - 1] - 1) < 0)
      {
        operator delete(v13.__r_.__value_.__r.__words[v6 + 1]);
      }

      v6 -= 3;
    }

    while (v6 * 8);
    v12 = 8;
    std::allocate_shared[abi:ne200100]<std::vector<std::string>,std::allocator<std::vector<std::string>>,std::vector<std::string>&,0>(&v13, &v11);
    std::allocate_shared[abi:ne200100]<UC::UCFixedLengthCoder,std::allocator<UC::UCFixedLengthCoder>,int,std::shared_ptr<std::vector<std::string>>,0>(&v12, &v11, &v14);
    v7 = v14;
    v14 = 0uLL;
    v8 = *(this + 12);
    *(this + 88) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if (*(&v14 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
      }
    }

    if (*(&v11 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
    }

    v9 = *(this + 12);
    *a2 = *(this + 11);
    a2[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *&v14 = &v13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2702ED050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  a17 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void UC::SUE::UCSegmentedURLCoderProvider::getHostCoder(UC::SUE::UCSegmentedURLCoderProvider *this@<X0>, void *a2@<X8>)
{
  *&v55 = *MEMORY[0x277D85DE8];
  v4 = *(this + 13);
  if (v4)
  {
    v5 = *(this + 14);
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v16, "-");
    std::string::basic_string[abi:ne200100]<0>(v17, ".");
    std::string::basic_string[abi:ne200100]<0>(v18, "0");
    std::string::basic_string[abi:ne200100]<0>(v19, "1");
    std::string::basic_string[abi:ne200100]<0>(v20, "2");
    std::string::basic_string[abi:ne200100]<0>(v21, "3");
    std::string::basic_string[abi:ne200100]<0>(v22, "4");
    std::string::basic_string[abi:ne200100]<0>(v23, "5");
    std::string::basic_string[abi:ne200100]<0>(v24, "6");
    std::string::basic_string[abi:ne200100]<0>(v25, "7");
    std::string::basic_string[abi:ne200100]<0>(v26, "8");
    std::string::basic_string[abi:ne200100]<0>(v27, "9");
    std::string::basic_string[abi:ne200100]<0>(v28, "a");
    std::string::basic_string[abi:ne200100]<0>(v29, "b");
    std::string::basic_string[abi:ne200100]<0>(v30, "c");
    std::string::basic_string[abi:ne200100]<0>(v31, "d");
    std::string::basic_string[abi:ne200100]<0>(v32, "e");
    std::string::basic_string[abi:ne200100]<0>(v33, "f");
    std::string::basic_string[abi:ne200100]<0>(v34, "g");
    std::string::basic_string[abi:ne200100]<0>(v35, "h");
    std::string::basic_string[abi:ne200100]<0>(v36, "i");
    std::string::basic_string[abi:ne200100]<0>(v37, "j");
    std::string::basic_string[abi:ne200100]<0>(v38, "k");
    std::string::basic_string[abi:ne200100]<0>(v39, "l");
    std::string::basic_string[abi:ne200100]<0>(v40, "m");
    std::string::basic_string[abi:ne200100]<0>(v41, "n");
    std::string::basic_string[abi:ne200100]<0>(v42, "o");
    std::string::basic_string[abi:ne200100]<0>(v43, "p");
    std::string::basic_string[abi:ne200100]<0>(v44, "q");
    std::string::basic_string[abi:ne200100]<0>(v45, "r");
    std::string::basic_string[abi:ne200100]<0>(v46, "s");
    std::string::basic_string[abi:ne200100]<0>(v47, "t");
    std::string::basic_string[abi:ne200100]<0>(v48, "u");
    std::string::basic_string[abi:ne200100]<0>(v49, "v");
    std::string::basic_string[abi:ne200100]<0>(v50, "w");
    std::string::basic_string[abi:ne200100]<0>(v51, "x");
    std::string::basic_string[abi:ne200100]<0>(v52, "y");
    std::string::basic_string[abi:ne200100]<0>(v53, "z");
    std::string::basic_string[abi:ne200100]<0>(v54, "|");
    memset(&v15, 0, sizeof(v15));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v15, &v16, &v55, 0x27uLL);
    v6 = 117;
    do
    {
      if (*(&v17[v6 - 1] - 1) < 0)
      {
        operator delete(v15.__r_.__value_.__r.__words[v6 + 1]);
      }

      v6 -= 3;
    }

    while (v6 * 8);
    std::allocate_shared[abi:ne200100]<std::vector<std::string>,std::allocator<std::vector<std::string>>,std::vector<std::string>&,0>(&v15, &v16);
    LODWORD(v13) = 2;
    std::make_unique[abi:ne200100]<UC::UCMultiContextHuffmanSymbolFrequencyReader,int,std::shared_ptr<std::vector<std::string>> &,std::string const&,0>(&v13, &v16, this, &v14);
    UC::UCMultiContextHuffmanSymbolFrequencyReader::readData(v14);
    UC::UCMultiContextHuffmanSymbolFrequencyReader::getContextSymbolFrequency(v14, &v12);
    v11 = 2;
    std::allocate_shared[abi:ne200100]<UC::UCMultiContextHuffmanCoder,std::allocator<UC::UCMultiContextHuffmanCoder>,std::shared_ptr<UC::UCMultiContextSymbolFrequencyTrie>,int,0>(&v12, &v11, &v13);
    v7 = v13;
    v13 = 0uLL;
    v8 = *(this + 14);
    *(this + 104) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }
    }

    if (*(&v12 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
    }

    v9 = *(this + 14);
    *a2 = *(this + 13);
    a2[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    std::unique_ptr<UC::UCMultiContextHuffmanSymbolFrequencyReader>::reset[abi:ne200100](&v14, 0);
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }

    *&v16 = &v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2702ED5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, std::__shared_weak_count *a22)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::unique_ptr<UC::UCMultiContextHuffmanSymbolFrequencyReader>::reset[abi:ne200100](&a16, 0);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  a21 = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void std::make_unique[abi:ne200100]<UC::UCMultiContextHuffmanSymbolFrequencyReader,int,std::shared_ptr<std::vector<std::string>> &,std::string const&,0>(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  v9 = *a1;
  v10 = a2[1];
  v12 = *a2;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  UC::UCMultiContextHuffmanSymbolFrequencyReader::UCMultiContextHuffmanSymbolFrequencyReader(v8, v9, &v12, &__p);
  *a4 = v8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_2702ED758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  operator delete(v17);
  _Unwind_Resume(a1);
}

void UC::SUE::UCSegmentedURLCoderProvider::getCombinedPathAndQueryCoder(UC::SUE::UCSegmentedURLCoderProvider *this@<X0>, void *a2@<X8>)
{
  *&v91 = *MEMORY[0x277D85DE8];
  v4 = *(this + 15);
  if (v4)
  {
    v5 = *(this + 16);
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v16, "#");
    std::string::basic_string[abi:ne200100]<0>(v17, "%");
    std::string::basic_string[abi:ne200100]<0>(v18, "&");
    std::string::basic_string[abi:ne200100]<0>(v19, "+");
    std::string::basic_string[abi:ne200100]<0>(v20, ",");
    std::string::basic_string[abi:ne200100]<0>(v21, "-");
    std::string::basic_string[abi:ne200100]<0>(v22, ".");
    std::string::basic_string[abi:ne200100]<0>(v23, "/");
    std::string::basic_string[abi:ne200100]<0>(v24, "0");
    std::string::basic_string[abi:ne200100]<0>(v25, "1");
    std::string::basic_string[abi:ne200100]<0>(v26, "2");
    std::string::basic_string[abi:ne200100]<0>(v27, "3");
    std::string::basic_string[abi:ne200100]<0>(v28, "4");
    std::string::basic_string[abi:ne200100]<0>(v29, "5");
    std::string::basic_string[abi:ne200100]<0>(v30, "6");
    std::string::basic_string[abi:ne200100]<0>(v31, "7");
    std::string::basic_string[abi:ne200100]<0>(v32, "8");
    std::string::basic_string[abi:ne200100]<0>(v33, "9");
    std::string::basic_string[abi:ne200100]<0>(v34, ":");
    std::string::basic_string[abi:ne200100]<0>(v35, ";");
    std::string::basic_string[abi:ne200100]<0>(v36, "=");
    std::string::basic_string[abi:ne200100]<0>(v37, "?");
    std::string::basic_string[abi:ne200100]<0>(v38, "A");
    std::string::basic_string[abi:ne200100]<0>(v39, "B");
    std::string::basic_string[abi:ne200100]<0>(v40, "C");
    std::string::basic_string[abi:ne200100]<0>(v41, "D");
    std::string::basic_string[abi:ne200100]<0>(v42, "E");
    std::string::basic_string[abi:ne200100]<0>(v43, "F");
    std::string::basic_string[abi:ne200100]<0>(v44, "G");
    std::string::basic_string[abi:ne200100]<0>(v45, "H");
    std::string::basic_string[abi:ne200100]<0>(v46, "I");
    std::string::basic_string[abi:ne200100]<0>(v47, "J");
    std::string::basic_string[abi:ne200100]<0>(v48, "K");
    std::string::basic_string[abi:ne200100]<0>(v49, "L");
    std::string::basic_string[abi:ne200100]<0>(v50, "M");
    std::string::basic_string[abi:ne200100]<0>(v51, "N");
    std::string::basic_string[abi:ne200100]<0>(v52, "O");
    std::string::basic_string[abi:ne200100]<0>(v53, "P");
    std::string::basic_string[abi:ne200100]<0>(v54, "Q");
    std::string::basic_string[abi:ne200100]<0>(v55, "R");
    std::string::basic_string[abi:ne200100]<0>(v56, "S");
    std::string::basic_string[abi:ne200100]<0>(v57, "T");
    std::string::basic_string[abi:ne200100]<0>(v58, "U");
    std::string::basic_string[abi:ne200100]<0>(v59, "V");
    std::string::basic_string[abi:ne200100]<0>(v60, "W");
    std::string::basic_string[abi:ne200100]<0>(v61, "X");
    std::string::basic_string[abi:ne200100]<0>(v62, "Y");
    std::string::basic_string[abi:ne200100]<0>(v63, "Z");
    std::string::basic_string[abi:ne200100]<0>(v64, "_");
    std::string::basic_string[abi:ne200100]<0>(v65, "a");
    std::string::basic_string[abi:ne200100]<0>(v66, "b");
    std::string::basic_string[abi:ne200100]<0>(v67, "c");
    std::string::basic_string[abi:ne200100]<0>(v68, "d");
    std::string::basic_string[abi:ne200100]<0>(v69, "e");
    std::string::basic_string[abi:ne200100]<0>(v70, "f");
    std::string::basic_string[abi:ne200100]<0>(v71, "g");
    std::string::basic_string[abi:ne200100]<0>(v72, "h");
    std::string::basic_string[abi:ne200100]<0>(v73, "i");
    std::string::basic_string[abi:ne200100]<0>(v74, "j");
    std::string::basic_string[abi:ne200100]<0>(v75, "k");
    std::string::basic_string[abi:ne200100]<0>(v76, "l");
    std::string::basic_string[abi:ne200100]<0>(v77, "m");
    std::string::basic_string[abi:ne200100]<0>(v78, "n");
    std::string::basic_string[abi:ne200100]<0>(v79, "o");
    std::string::basic_string[abi:ne200100]<0>(v80, "p");
    std::string::basic_string[abi:ne200100]<0>(v81, "q");
    std::string::basic_string[abi:ne200100]<0>(v82, "r");
    std::string::basic_string[abi:ne200100]<0>(v83, "s");
    std::string::basic_string[abi:ne200100]<0>(v84, "t");
    std::string::basic_string[abi:ne200100]<0>(v85, "u");
    std::string::basic_string[abi:ne200100]<0>(v86, "v");
    std::string::basic_string[abi:ne200100]<0>(v87, "w");
    std::string::basic_string[abi:ne200100]<0>(v88, "x");
    std::string::basic_string[abi:ne200100]<0>(v89, "y");
    std::string::basic_string[abi:ne200100]<0>(v90, "z");
    memset(&v15, 0, sizeof(v15));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v15, &v16, &v91, 0x4BuLL);
    v6 = 225;
    do
    {
      if (*(&v17[v6 - 1] - 1) < 0)
      {
        operator delete(v15.__r_.__value_.__r.__words[v6 + 1]);
      }

      v6 -= 3;
    }

    while (v6 * 8);
    std::allocate_shared[abi:ne200100]<std::vector<std::string>,std::allocator<std::vector<std::string>>,std::vector<std::string>&,0>(&v15, &v16);
    LODWORD(v13) = 2;
    std::make_unique[abi:ne200100]<UC::UCMultiContextHuffmanSymbolFrequencyReader,int,std::shared_ptr<std::vector<std::string>> &,std::string const&,0>(&v13, &v16, this + 24, &v14);
    UC::UCMultiContextHuffmanSymbolFrequencyReader::readData(v14);
    UC::UCMultiContextHuffmanSymbolFrequencyReader::getContextSymbolFrequency(v14, &v12);
    v11 = 2;
    std::allocate_shared[abi:ne200100]<UC::UCMultiContextHuffmanCoder,std::allocator<UC::UCMultiContextHuffmanCoder>,std::shared_ptr<UC::UCMultiContextSymbolFrequencyTrie>,int,0>(&v12, &v11, &v13);
    v7 = v13;
    v13 = 0uLL;
    v8 = *(this + 16);
    *(this + 120) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }
    }

    if (*(&v12 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
    }

    v9 = *(this + 16);
    *a2 = *(this + 15);
    a2[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    std::unique_ptr<UC::UCMultiContextHuffmanSymbolFrequencyReader>::reset[abi:ne200100](&v14, 0);
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }

    *&v16 = &v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2702EDF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, std::__shared_weak_count *a22)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::unique_ptr<UC::UCMultiContextHuffmanSymbolFrequencyReader>::reset[abi:ne200100](&a16, 0);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  a21 = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQueryCoder(UC::SUE::UCSegmentedURLCoderProvider *this@<X0>, void *a2@<X8>)
{
  *&v87 = *MEMORY[0x277D85DE8];
  v4 = *(this + 17);
  if (v4)
  {
    v5 = *(this + 18);
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v16, "&");
    std::string::basic_string[abi:ne200100]<0>(v17, "+");
    std::string::basic_string[abi:ne200100]<0>(v18, "-");
    std::string::basic_string[abi:ne200100]<0>(v19, ".");
    std::string::basic_string[abi:ne200100]<0>(v20, "/");
    std::string::basic_string[abi:ne200100]<0>(v21, "0");
    std::string::basic_string[abi:ne200100]<0>(v22, "1");
    std::string::basic_string[abi:ne200100]<0>(v23, "2");
    std::string::basic_string[abi:ne200100]<0>(v24, "3");
    std::string::basic_string[abi:ne200100]<0>(v25, "4");
    std::string::basic_string[abi:ne200100]<0>(v26, "5");
    std::string::basic_string[abi:ne200100]<0>(v27, "6");
    std::string::basic_string[abi:ne200100]<0>(v28, "7");
    std::string::basic_string[abi:ne200100]<0>(v29, "8");
    std::string::basic_string[abi:ne200100]<0>(v30, "9");
    std::string::basic_string[abi:ne200100]<0>(v31, "=");
    std::string::basic_string[abi:ne200100]<0>(v32, "?");
    std::string::basic_string[abi:ne200100]<0>(v33, "A");
    std::string::basic_string[abi:ne200100]<0>(v34, "B");
    std::string::basic_string[abi:ne200100]<0>(v35, "C");
    std::string::basic_string[abi:ne200100]<0>(v36, "D");
    std::string::basic_string[abi:ne200100]<0>(v37, "E");
    std::string::basic_string[abi:ne200100]<0>(v38, "F");
    std::string::basic_string[abi:ne200100]<0>(v39, "G");
    std::string::basic_string[abi:ne200100]<0>(v40, "H");
    std::string::basic_string[abi:ne200100]<0>(v41, "I");
    std::string::basic_string[abi:ne200100]<0>(v42, "J");
    std::string::basic_string[abi:ne200100]<0>(v43, "K");
    std::string::basic_string[abi:ne200100]<0>(v44, "L");
    std::string::basic_string[abi:ne200100]<0>(v45, "M");
    std::string::basic_string[abi:ne200100]<0>(v46, "N");
    std::string::basic_string[abi:ne200100]<0>(v47, "O");
    std::string::basic_string[abi:ne200100]<0>(v48, "P");
    std::string::basic_string[abi:ne200100]<0>(v49, "Q");
    std::string::basic_string[abi:ne200100]<0>(v50, "R");
    std::string::basic_string[abi:ne200100]<0>(v51, "S");
    std::string::basic_string[abi:ne200100]<0>(v52, "T");
    std::string::basic_string[abi:ne200100]<0>(v53, "U");
    std::string::basic_string[abi:ne200100]<0>(v54, "V");
    std::string::basic_string[abi:ne200100]<0>(v55, "W");
    std::string::basic_string[abi:ne200100]<0>(v56, "X");
    std::string::basic_string[abi:ne200100]<0>(v57, "Y");
    std::string::basic_string[abi:ne200100]<0>(v58, "Z");
    std::string::basic_string[abi:ne200100]<0>(v59, "_");
    std::string::basic_string[abi:ne200100]<0>(v60, "a");
    std::string::basic_string[abi:ne200100]<0>(v61, "b");
    std::string::basic_string[abi:ne200100]<0>(v62, "c");
    std::string::basic_string[abi:ne200100]<0>(v63, "d");
    std::string::basic_string[abi:ne200100]<0>(v64, "e");
    std::string::basic_string[abi:ne200100]<0>(v65, "f");
    std::string::basic_string[abi:ne200100]<0>(v66, "g");
    std::string::basic_string[abi:ne200100]<0>(v67, "h");
    std::string::basic_string[abi:ne200100]<0>(v68, "i");
    std::string::basic_string[abi:ne200100]<0>(v69, "j");
    std::string::basic_string[abi:ne200100]<0>(v70, "k");
    std::string::basic_string[abi:ne200100]<0>(v71, "l");
    std::string::basic_string[abi:ne200100]<0>(v72, "m");
    std::string::basic_string[abi:ne200100]<0>(v73, "n");
    std::string::basic_string[abi:ne200100]<0>(v74, "o");
    std::string::basic_string[abi:ne200100]<0>(v75, "p");
    std::string::basic_string[abi:ne200100]<0>(v76, "q");
    std::string::basic_string[abi:ne200100]<0>(v77, "r");
    std::string::basic_string[abi:ne200100]<0>(v78, "s");
    std::string::basic_string[abi:ne200100]<0>(v79, "t");
    std::string::basic_string[abi:ne200100]<0>(v80, "u");
    std::string::basic_string[abi:ne200100]<0>(v81, "v");
    std::string::basic_string[abi:ne200100]<0>(v82, "w");
    std::string::basic_string[abi:ne200100]<0>(v83, "x");
    std::string::basic_string[abi:ne200100]<0>(v84, "y");
    std::string::basic_string[abi:ne200100]<0>(v85, "z");
    std::string::basic_string[abi:ne200100]<0>(v86, "|");
    memset(&v15, 0, sizeof(v15));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v15, &v16, &v87, 0x47uLL);
    v6 = 213;
    do
    {
      if (*(&v17[v6 - 1] - 1) < 0)
      {
        operator delete(v15.__r_.__value_.__r.__words[v6 + 1]);
      }

      v6 -= 3;
    }

    while (v6 * 8);
    std::allocate_shared[abi:ne200100]<std::vector<std::string>,std::allocator<std::vector<std::string>>,std::vector<std::string>&,0>(&v15, &v16);
    LODWORD(v13) = 2;
    std::make_unique[abi:ne200100]<UC::UCMultiContextHuffmanSymbolFrequencyReader,int,std::shared_ptr<std::vector<std::string>> &,std::string const&,0>(&v13, &v16, this + 48, &v14);
    UC::UCMultiContextHuffmanSymbolFrequencyReader::readData(v14);
    UC::UCMultiContextHuffmanSymbolFrequencyReader::getContextSymbolFrequency(v14, &v12);
    v11 = 2;
    std::allocate_shared[abi:ne200100]<UC::UCMultiContextHuffmanCoder,std::allocator<UC::UCMultiContextHuffmanCoder>,std::shared_ptr<UC::UCMultiContextSymbolFrequencyTrie>,int,0>(&v12, &v11, &v13);
    v7 = v13;
    v13 = 0uLL;
    v8 = *(this + 18);
    *(this + 136) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }
    }

    if (*(&v12 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
    }

    v9 = *(this + 18);
    *a2 = *(this + 17);
    a2[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    std::unique_ptr<UC::UCMultiContextHuffmanSymbolFrequencyReader>::reset[abi:ne200100](&v14, 0);
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }

    *&v16 = &v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2702EE808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, std::__shared_weak_count *a22)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::unique_ptr<UC::UCMultiContextHuffmanSymbolFrequencyReader>::reset[abi:ne200100](&a16, 0);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  a21 = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void UC::SUE::UCSegmentedURLCoderProvider::getKnownWordFixedLengthCoder(UC::SUE::UCSegmentedURLCoderProvider *this@<X0>, void *a2@<X8>)
{
  *(&v170 + 1) = *MEMORY[0x277D85DE8];
  v4 = *(this + 19);
  if (v4)
  {
    v5 = *(this + 20);
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "about");
    std::string::basic_string[abi:ne200100]<0>(v15, "access");
    std::string::basic_string[abi:ne200100]<0>(v16, "account");
    std::string::basic_string[abi:ne200100]<0>(v17, "add");
    std::string::basic_string[abi:ne200100]<0>(v18, "app");
    std::string::basic_string[abi:ne200100]<0>(v19, "archives");
    std::string::basic_string[abi:ne200100]<0>(v20, "article");
    std::string::basic_string[abi:ne200100]<0>(v21, "attraction");
    std::string::basic_string[abi:ne200100]<0>(v22, "author");
    std::string::basic_string[abi:ne200100]<0>(v23, "bag");
    std::string::basic_string[abi:ne200100]<0>(v24, "biz");
    std::string::basic_string[abi:ne200100]<0>(v25, "book");
    std::string::basic_string[abi:ne200100]<0>(v26, "brand");
    std::string::basic_string[abi:ne200100]<0>(v27, "brands");
    std::string::basic_string[abi:ne200100]<0>(v28, "browse");
    std::string::basic_string[abi:ne200100]<0>(v29, "buy");
    std::string::basic_string[abi:ne200100]<0>(v30, "cancel");
    std::string::basic_string[abi:ne200100]<0>(v31, "cart");
    std::string::basic_string[abi:ne200100]<0>(v32, "cat");
    std::string::basic_string[abi:ne200100]<0>(v33, "catalog");
    std::string::basic_string[abi:ne200100]<0>(v34, "category");
    std::string::basic_string[abi:ne200100]<0>(v35, "categories");
    std::string::basic_string[abi:ne200100]<0>(v36, "channel");
    std::string::basic_string[abi:ne200100]<0>(v37, "charts");
    std::string::basic_string[abi:ne200100]<0>(v38, "checkin");
    std::string::basic_string[abi:ne200100]<0>(v39, "checkout");
    std::string::basic_string[abi:ne200100]<0>(v40, "collection");
    std::string::basic_string[abi:ne200100]<0>(v41, "collections");
    std::string::basic_string[abi:ne200100]<0>(v42, "company");
    std::string::basic_string[abi:ne200100]<0>(v43, "compare");
    std::string::basic_string[abi:ne200100]<0>(v44, "connect");
    std::string::basic_string[abi:ne200100]<0>(v45, "contact");
    std::string::basic_string[abi:ne200100]<0>(v46, "content");
    std::string::basic_string[abi:ne200100]<0>(v47, "contents");
    std::string::basic_string[abi:ne200100]<0>(v48, "cost");
    std::string::basic_string[abi:ne200100]<0>(v49, "coupons");
    std::string::basic_string[abi:ne200100]<0>(v50, "create");
    std::string::basic_string[abi:ne200100]<0>(v51, "data");
    std::string::basic_string[abi:ne200100]<0>(v52, "demo");
    std::string::basic_string[abi:ne200100]<0>(v53, "destinations");
    std::string::basic_string[abi:ne200100]<0>(v54, "detail");
    std::string::basic_string[abi:ne200100]<0>(v55, "discover");
    std::string::basic_string[abi:ne200100]<0>(v56, "download");
    std::string::basic_string[abi:ne200100]<0>(v57, "entry");
    std::string::basic_string[abi:ne200100]<0>(v58, "event");
    std::string::basic_string[abi:ne200100]<0>(v59, "events");
    std::string::basic_string[abi:ne200100]<0>(v60, "explore");
    std::string::basic_string[abi:ne200100]<0>(v61, "faq");
    std::string::basic_string[abi:ne200100]<0>(v62, "fetch");
    std::string::basic_string[abi:ne200100]<0>(v63, "finance");
    std::string::basic_string[abi:ne200100]<0>(v64, "find");
    std::string::basic_string[abi:ne200100]<0>(v65, "food");
    std::string::basic_string[abi:ne200100]<0>(v66, "fund");
    std::string::basic_string[abi:ne200100]<0>(v67, "game");
    std::string::basic_string[abi:ne200100]<0>(v68, "gift");
    std::string::basic_string[abi:ne200100]<0>(v69, "goods");
    std::string::basic_string[abi:ne200100]<0>(v70, "guide");
    std::string::basic_string[abi:ne200100]<0>(v71, "health");
    std::string::basic_string[abi:ne200100]<0>(v72, "help");
    std::string::basic_string[abi:ne200100]<0>(v73, "home");
    std::string::basic_string[abi:ne200100]<0>(v74, "hotel");
    std::string::basic_string[abi:ne200100]<0>(v75, "hotels");
    std::string::basic_string[abi:ne200100]<0>(v76, "id");
    std::string::basic_string[abi:ne200100]<0>(v77, "index");
    std::string::basic_string[abi:ne200100]<0>(v78, "info");
    std::string::basic_string[abi:ne200100]<0>(v79, "item");
    std::string::basic_string[abi:ne200100]<0>(v80, "item_id");
    std::string::basic_string[abi:ne200100]<0>(v81, "join");
    std::string::basic_string[abi:ne200100]<0>(v82, "lifestyle");
    std::string::basic_string[abi:ne200100]<0>(v83, "list");
    std::string::basic_string[abi:ne200100]<0>(v84, "listen");
    std::string::basic_string[abi:ne200100]<0>(v85, "live");
    std::string::basic_string[abi:ne200100]<0>(v86, "local");
    std::string::basic_string[abi:ne200100]<0>(v87, "location");
    std::string::basic_string[abi:ne200100]<0>(v88, "locations");
    std::string::basic_string[abi:ne200100]<0>(v89, "locator");
    std::string::basic_string[abi:ne200100]<0>(v90, "login");
    std::string::basic_string[abi:ne200100]<0>(v91, "manage");
    std::string::basic_string[abi:ne200100]<0>(v92, "menu");
    std::string::basic_string[abi:ne200100]<0>(v93, "more");
    std::string::basic_string[abi:ne200100]<0>(v94, "music");
    std::string::basic_string[abi:ne200100]<0>(v95, "name");
    std::string::basic_string[abi:ne200100]<0>(v96, "news");
    std::string::basic_string[abi:ne200100]<0>(v97, "note");
    std::string::basic_string[abi:ne200100]<0>(v98, "open");
    std::string::basic_string[abi:ne200100]<0>(v99, "order");
    std::string::basic_string[abi:ne200100]<0>(v100, "overview");
    std::string::basic_string[abi:ne200100]<0>(v101, "park");
    std::string::basic_string[abi:ne200100]<0>(v102, "part");
    std::string::basic_string[abi:ne200100]<0>(v103, "pay");
    std::string::basic_string[abi:ne200100]<0>(v104, "payment");
    std::string::basic_string[abi:ne200100]<0>(v105, "payments");
    std::string::basic_string[abi:ne200100]<0>(v106, "play");
    std::string::basic_string[abi:ne200100]<0>(v107, "post");
    std::string::basic_string[abi:ne200100]<0>(v108, "posts");
    std::string::basic_string[abi:ne200100]<0>(v109, "preview");
    std::string::basic_string[abi:ne200100]<0>(v110, "product");
    std::string::basic_string[abi:ne200100]<0>(v111, "product_id");
    std::string::basic_string[abi:ne200100]<0>(v112, "products");
    std::string::basic_string[abi:ne200100]<0>(v113, "profile");
    std::string::basic_string[abi:ne200100]<0>(v114, "promotion");
    std::string::basic_string[abi:ne200100]<0>(v115, "purchase");
    std::string::basic_string[abi:ne200100]<0>(v116, "rate");
    std::string::basic_string[abi:ne200100]<0>(v117, "recipe");
    std::string::basic_string[abi:ne200100]<0>(v118, "recipes");
    std::string::basic_string[abi:ne200100]<0>(v119, "reservation");
    std::string::basic_string[abi:ne200100]<0>(v120, "reservations");
    std::string::basic_string[abi:ne200100]<0>(v121, "reserve");
    std::string::basic_string[abi:ne200100]<0>(v122, "retail");
    std::string::basic_string[abi:ne200100]<0>(v123, "review");
    std::string::basic_string[abi:ne200100]<0>(v124, "rewards");
    std::string::basic_string[abi:ne200100]<0>(v125, "sale");
    std::string::basic_string[abi:ne200100]<0>(v126, "scan");
    std::string::basic_string[abi:ne200100]<0>(v127, "schedule");
    std::string::basic_string[abi:ne200100]<0>(v128, "search");
    std::string::basic_string[abi:ne200100]<0>(v129, "sell");
    std::string::basic_string[abi:ne200100]<0>(v130, "send");
    std::string::basic_string[abi:ne200100]<0>(v131, "service");
    std::string::basic_string[abi:ne200100]<0>(v132, "share");
    std::string::basic_string[abi:ne200100]<0>(v133, "shop");
    std::string::basic_string[abi:ne200100]<0>(v134, "show");
    std::string::basic_string[abi:ne200100]<0>(v135, "showtime");
    std::string::basic_string[abi:ne200100]<0>(v136, "site");
    std::string::basic_string[abi:ne200100]<0>(v137, "song");
    std::string::basic_string[abi:ne200100]<0>(v138, "special");
    std::string::basic_string[abi:ne200100]<0>(v139, "stations");
    std::string::basic_string[abi:ne200100]<0>(v140, "status");
    std::string::basic_string[abi:ne200100]<0>(v141, "store");
    std::string::basic_string[abi:ne200100]<0>(v142, "store-locator");
    std::string::basic_string[abi:ne200100]<0>(v143, "stores");
    std::string::basic_string[abi:ne200100]<0>(v144, "stories");
    std::string::basic_string[abi:ne200100]<0>(v145, "story");
    std::string::basic_string[abi:ne200100]<0>(v146, "tag");
    std::string::basic_string[abi:ne200100]<0>(v147, "tags");
    std::string::basic_string[abi:ne200100]<0>(v148, "terms");
    std::string::basic_string[abi:ne200100]<0>(v149, "tickets");
    std::string::basic_string[abi:ne200100]<0>(v150, "tips");
    std::string::basic_string[abi:ne200100]<0>(v151, "title");
    std::string::basic_string[abi:ne200100]<0>(v152, "today");
    std::string::basic_string[abi:ne200100]<0>(v153, "top");
    std::string::basic_string[abi:ne200100]<0>(v154, "topic");
    std::string::basic_string[abi:ne200100]<0>(v155, "tours");
    std::string::basic_string[abi:ne200100]<0>(v156, "track");
    std::string::basic_string[abi:ne200100]<0>(v157, "transaction");
    std::string::basic_string[abi:ne200100]<0>(v158, "travel");
    std::string::basic_string[abi:ne200100]<0>(v159, "try");
    std::string::basic_string[abi:ne200100]<0>(v160, "update");
    std::string::basic_string[abi:ne200100]<0>(v161, "upload");
    std::string::basic_string[abi:ne200100]<0>(v162, "use");
    std::string::basic_string[abi:ne200100]<0>(v163, "user");
    std::string::basic_string[abi:ne200100]<0>(v164, "vehicles");
    std::string::basic_string[abi:ne200100]<0>(v165, "video");
    std::string::basic_string[abi:ne200100]<0>(v166, "view");
    std::string::basic_string[abi:ne200100]<0>(v167, "visit");
    std::string::basic_string[abi:ne200100]<0>(v168, "watch");
    std::string::basic_string[abi:ne200100]<0>(v169, "wiki");
    memset(&v13, 0, sizeof(v13));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v13, &v14, &v170, 0x9CuLL);
    v6 = 468;
    do
    {
      if (*(&v15[v6 - 1] - 1) < 0)
      {
        operator delete(v13.__r_.__value_.__r.__words[v6 + 1]);
      }

      v6 -= 3;
    }

    while (v6 * 8);
    v12 = 8;
    std::allocate_shared[abi:ne200100]<std::vector<std::string>,std::allocator<std::vector<std::string>>,std::vector<std::string>&,0>(&v13, &v11);
    std::allocate_shared[abi:ne200100]<UC::UCFixedLengthCoder,std::allocator<UC::UCFixedLengthCoder>,int,std::shared_ptr<std::vector<std::string>>,0>(&v12, &v11, &v14);
    v7 = v14;
    v14 = 0uLL;
    v8 = *(this + 20);
    *(this + 152) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if (*(&v14 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
      }
    }

    if (*(&v11 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
    }

    v9 = *(this + 20);
    *a2 = *(this + 19);
    a2[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *&v14 = &v13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2702EF77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  a17 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void UC::SUE::UCSegmentedURLCoderProvider::getSegmentedPathAndQuery6BitAlphabetCoder(UC::SUE::UCSegmentedURLCoderProvider *this@<X0>, void *a2@<X8>)
{
  *(&v78 + 1) = *MEMORY[0x277D85DE8];
  v4 = *(this + 21);
  if (v4)
  {
    v5 = *(this + 22);
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, ".");
    std::string::basic_string[abi:ne200100]<0>(v15, "0");
    std::string::basic_string[abi:ne200100]<0>(v16, "1");
    std::string::basic_string[abi:ne200100]<0>(v17, "2");
    std::string::basic_string[abi:ne200100]<0>(v18, "3");
    std::string::basic_string[abi:ne200100]<0>(v19, "4");
    std::string::basic_string[abi:ne200100]<0>(v20, "5");
    std::string::basic_string[abi:ne200100]<0>(v21, "6");
    std::string::basic_string[abi:ne200100]<0>(v22, "7");
    std::string::basic_string[abi:ne200100]<0>(v23, "8");
    std::string::basic_string[abi:ne200100]<0>(v24, "9");
    std::string::basic_string[abi:ne200100]<0>(v25, "A");
    std::string::basic_string[abi:ne200100]<0>(v26, "B");
    std::string::basic_string[abi:ne200100]<0>(v27, "C");
    std::string::basic_string[abi:ne200100]<0>(v28, "D");
    std::string::basic_string[abi:ne200100]<0>(v29, "E");
    std::string::basic_string[abi:ne200100]<0>(v30, "F");
    std::string::basic_string[abi:ne200100]<0>(v31, "G");
    std::string::basic_string[abi:ne200100]<0>(v32, "H");
    std::string::basic_string[abi:ne200100]<0>(v33, "I");
    std::string::basic_string[abi:ne200100]<0>(v34, "J");
    std::string::basic_string[abi:ne200100]<0>(v35, "K");
    std::string::basic_string[abi:ne200100]<0>(v36, "L");
    std::string::basic_string[abi:ne200100]<0>(v37, "M");
    std::string::basic_string[abi:ne200100]<0>(v38, "N");
    std::string::basic_string[abi:ne200100]<0>(v39, "O");
    std::string::basic_string[abi:ne200100]<0>(v40, "P");
    std::string::basic_string[abi:ne200100]<0>(v41, "Q");
    std::string::basic_string[abi:ne200100]<0>(v42, "R");
    std::string::basic_string[abi:ne200100]<0>(v43, "S");
    std::string::basic_string[abi:ne200100]<0>(v44, "T");
    std::string::basic_string[abi:ne200100]<0>(v45, "U");
    std::string::basic_string[abi:ne200100]<0>(v46, "V");
    std::string::basic_string[abi:ne200100]<0>(v47, "W");
    std::string::basic_string[abi:ne200100]<0>(v48, "X");
    std::string::basic_string[abi:ne200100]<0>(v49, "Y");
    std::string::basic_string[abi:ne200100]<0>(v50, "Z");
    std::string::basic_string[abi:ne200100]<0>(v51, "a");
    std::string::basic_string[abi:ne200100]<0>(v52, "b");
    std::string::basic_string[abi:ne200100]<0>(v53, "c");
    std::string::basic_string[abi:ne200100]<0>(v54, "d");
    std::string::basic_string[abi:ne200100]<0>(v55, "e");
    std::string::basic_string[abi:ne200100]<0>(v56, "f");
    std::string::basic_string[abi:ne200100]<0>(v57, "g");
    std::string::basic_string[abi:ne200100]<0>(v58, "h");
    std::string::basic_string[abi:ne200100]<0>(v59, "i");
    std::string::basic_string[abi:ne200100]<0>(v60, "j");
    std::string::basic_string[abi:ne200100]<0>(v61, "k");
    std::string::basic_string[abi:ne200100]<0>(v62, "l");
    std::string::basic_string[abi:ne200100]<0>(v63, "m");
    std::string::basic_string[abi:ne200100]<0>(v64, "n");
    std::string::basic_string[abi:ne200100]<0>(v65, "o");
    std::string::basic_string[abi:ne200100]<0>(v66, "p");
    std::string::basic_string[abi:ne200100]<0>(v67, "q");
    std::string::basic_string[abi:ne200100]<0>(v68, "r");
    std::string::basic_string[abi:ne200100]<0>(v69, "s");
    std::string::basic_string[abi:ne200100]<0>(v70, "t");
    std::string::basic_string[abi:ne200100]<0>(v71, "u");
    std::string::basic_string[abi:ne200100]<0>(v72, "v");
    std::string::basic_string[abi:ne200100]<0>(v73, "w");
    std::string::basic_string[abi:ne200100]<0>(v74, "x");
    std::string::basic_string[abi:ne200100]<0>(v75, "y");
    std::string::basic_string[abi:ne200100]<0>(v76, "z");
    std::string::basic_string[abi:ne200100]<0>(v77, "|");
    memset(&v13, 0, sizeof(v13));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v13, &v14, &v78, 0x40uLL);
    v6 = 192;
    do
    {
      if (*(&v15[v6 - 1] - 1) < 0)
      {
        operator delete(v13.__r_.__value_.__r.__words[v6 + 1]);
      }

      v6 -= 3;
    }

    while (v6 * 8);
    v12 = 6;
    std::allocate_shared[abi:ne200100]<std::vector<std::string>,std::allocator<std::vector<std::string>>,std::vector<std::string>&,0>(&v13, &v11);
    std::allocate_shared[abi:ne200100]<UC::UCFixedLengthCoder,std::allocator<UC::UCFixedLengthCoder>,int,std::shared_ptr<std::vector<std::string>>,0>(&v12, &v11, &v14);
    v7 = v14;
    v14 = 0uLL;
    v8 = *(this + 22);
    *(this + 168) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if (*(&v14 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
      }
    }

    if (*(&v11 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
    }

    v9 = *(this + 22);
    *a2 = *(this + 21);
    a2[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *&v14 = &v13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2702EFED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  a17 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,unsigned short>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned short> const&>(a1, a2, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned short> const&>(uint64_t a1, const void **a2, uint64_t a3)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
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

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__construct_node_hash<std::pair<std::string const,unsigned short> const&>(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(a1, v20);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_2702F021C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__construct_node_hash<std::pair<std::string const,unsigned short> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  v9 = v8;
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v8 + 16), *a3, *(a3 + 8));
  }

  else
  {
    *(v8 + 1) = *a3;
    *(v8 + 4) = *(a3 + 16);
  }

  *(v9 + 20) = *(a3 + 24);
  *(a4 + 16) = 1;
}

void sub_2702F02D4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::allocate_shared[abi:ne200100]<std::unordered_map<std::string,unsigned short>,std::allocator<std::unordered_map<std::string,unsigned short>>,std::unordered_map<std::string,unsigned short>&,0>@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x40uLL);
  result = std::__shared_ptr_emplace<std::unordered_map<std::string,unsigned short>>::__shared_ptr_emplace[abi:ne200100]<std::unordered_map<std::string,unsigned short>&,std::allocator<std::unordered_map<std::string,unsigned short>>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<std::unordered_map<std::string,unsigned short>>::__shared_ptr_emplace[abi:ne200100]<std::unordered_map<std::string,unsigned short>&,std::allocator<std::unordered_map<std::string,unsigned short>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28803D4E8;
  std::unordered_map<std::string,unsigned short>::unordered_map((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<std::unordered_map<std::string,unsigned short>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28803D4E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::unordered_map<std::string,unsigned short>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned short> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

uint64_t std::allocate_shared[abi:ne200100]<std::vector<std::string>,std::allocator<std::vector<std::string>>,std::vector<std::string>&,0>@<X0>(__int128 **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  result = std::__shared_ptr_emplace<std::vector<std::string>>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::string>&,std::allocator<std::vector<std::string>>,0>(v4, a1);
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t std::__shared_ptr_emplace<std::vector<std::string>>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::string>&,std::allocator<std::vector<std::string>>,0>(uint64_t a1, __int128 **a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_28803D520;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 24), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

void std::__shared_ptr_emplace<std::vector<std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28803D520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

std::string *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_2702F0758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void *std::allocate_shared[abi:ne200100]<UC::UCSymbolFrequencyTable,std::allocator<UC::UCSymbolFrequencyTable>,std::shared_ptr<std::unordered_map<std::string,unsigned short>> &,std::shared_ptr<std::vector<std::string>>,0>@<X0>(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  result = std::__shared_ptr_emplace<UC::UCSymbolFrequencyTable>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<std::unordered_map<std::string,unsigned short>> &,std::shared_ptr<std::vector<std::string>>,std::allocator<UC::UCSymbolFrequencyTable>,0>(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *std::__shared_ptr_emplace<UC::UCSymbolFrequencyTable>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<std::unordered_map<std::string,unsigned short>> &,std::shared_ptr<std::vector<std::string>>,std::allocator<UC::UCSymbolFrequencyTable>,0>(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28803D558;
  std::allocator<UC::UCSymbolFrequencyTable>::construct[abi:ne200100]<UC::UCSymbolFrequencyTable,std::shared_ptr<std::unordered_map<std::string,unsigned short>> &,std::shared_ptr<std::vector<std::string>>>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<UC::UCSymbolFrequencyTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28803D558;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocator<UC::UCSymbolFrequencyTable>::construct[abi:ne200100]<UC::UCSymbolFrequencyTable,std::shared_ptr<std::unordered_map<std::string,unsigned short>> &,std::shared_ptr<std::vector<std::string>>>(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  UC::UCSymbolFrequencyTable::UCSymbolFrequencyTable(a2, &v6, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_2702F0A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<UC::UCSymbolFrequencyTable>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a2 + 8);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *std::allocate_shared[abi:ne200100]<UC::UCHuffmanCoder,std::allocator<UC::UCHuffmanCoder>,std::shared_ptr<UC::UCSymbolFrequencyTable> &,0>@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  result = std::__shared_ptr_emplace<UC::UCHuffmanCoder>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<UC::UCSymbolFrequencyTable> &,std::allocator<UC::UCHuffmanCoder>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<UC::UCHuffmanCoder>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<UC::UCSymbolFrequencyTable> &,std::allocator<UC::UCHuffmanCoder>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28803D590;
  std::allocator<UC::UCHuffmanCoder>::construct[abi:ne200100]<UC::UCHuffmanCoder,std::shared_ptr<UC::UCSymbolFrequencyTable> &>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<UC::UCHuffmanCoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28803D590;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocator<UC::UCHuffmanCoder>::construct[abi:ne200100]<UC::UCHuffmanCoder,std::shared_ptr<UC::UCSymbolFrequencyTable> &>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  UC::UCHuffmanCoder::UCHuffmanCoder(a2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_2702F0C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::allocate_shared[abi:ne200100]<UC::UCFixedLengthCoder,std::allocator<UC::UCFixedLengthCoder>,int,std::shared_ptr<std::vector<std::string>>,0>@<X0>(char *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  result = std::__shared_ptr_emplace<UC::UCFixedLengthCoder>::__shared_ptr_emplace[abi:ne200100]<int,std::shared_ptr<std::vector<std::string>>,std::allocator<UC::UCFixedLengthCoder>,0>(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *std::__shared_ptr_emplace<UC::UCFixedLengthCoder>::__shared_ptr_emplace[abi:ne200100]<int,std::shared_ptr<std::vector<std::string>>,std::allocator<UC::UCFixedLengthCoder>,0>(void *a1, char *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28803D5C8;
  std::allocator<UC::UCFixedLengthCoder>::construct[abi:ne200100]<UC::UCFixedLengthCoder,int,std::shared_ptr<std::vector<std::string>>>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<UC::UCFixedLengthCoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28803D5C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocator<UC::UCFixedLengthCoder>::construct[abi:ne200100]<UC::UCFixedLengthCoder,int,std::shared_ptr<std::vector<std::string>>>(uint64_t a1, uint64_t a2, char *a3, __int128 *a4)
{
  v5 = *a3;
  v6 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  UC::UCFixedLengthCoder::UCFixedLengthCoder(a2, v5, &v6);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }
}

void sub_2702F0DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::unique_ptr<UC::UCMultiContextHuffmanSymbolFrequencyReader>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = *(v2 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(v2);
  }
}

void *std::allocate_shared[abi:ne200100]<UC::UCMultiContextHuffmanCoder,std::allocator<UC::UCMultiContextHuffmanCoder>,std::shared_ptr<UC::UCMultiContextSymbolFrequencyTrie>,int,0>@<X0>(__int128 *a1@<X1>, int *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x68uLL);
  result = std::__shared_ptr_emplace<UC::UCMultiContextHuffmanCoder>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<UC::UCMultiContextSymbolFrequencyTrie>,int,std::allocator<UC::UCMultiContextHuffmanCoder>,0>(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *std::__shared_ptr_emplace<UC::UCMultiContextHuffmanCoder>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<UC::UCMultiContextSymbolFrequencyTrie>,int,std::allocator<UC::UCMultiContextHuffmanCoder>,0>(void *a1, __int128 *a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28803D600;
  std::allocator<UC::UCMultiContextHuffmanCoder>::construct[abi:ne200100]<UC::UCMultiContextHuffmanCoder,std::shared_ptr<UC::UCMultiContextSymbolFrequencyTrie>,int>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<UC::UCMultiContextHuffmanCoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28803D600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocator<UC::UCMultiContextHuffmanCoder>::construct[abi:ne200100]<UC::UCMultiContextHuffmanCoder,std::shared_ptr<UC::UCMultiContextSymbolFrequencyTrie>,int>(uint64_t a1, uint64_t a2, __int128 *a3, int *a4)
{
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  UC::UCMultiContextHuffmanCoder::UCMultiContextHuffmanCoder(a2, &v4, *a4);
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }
}

void sub_2702F1034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **UC::UCMultiContextSymbolFrequencyTrie::UCMultiContextSymbolFrequencyTrie(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t *a4)
{
  v5 = *a2;
  *a1 = *a2;
  v6 = a2[1];
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    v5 = *a2;
  }

  v7 = -85 * ((*(v5 + 2) - *v5) >> 3);
  a1[4] = 0;
  v8 = (a1 + 4);
  *(a1 + 16) = v7;
  v9 = *a3;
  *a3 = 0;
  a1[3] = v9;
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = a4;
  v10 = operator new(0x28uLL);
  *v10 = 0u;
  v10[1] = 0u;
  *(v10 + 8) = 1065353216;
  std::unique_ptr<std::unordered_map<std::string,unsigned char>>::reset[abi:ne200100](a1 + 4, v10);
  v11 = (*a1)[1];
  if (-85 * ((v11 - **a1) >> 3))
  {
    v12 = 0;
    v13 = (-85 * ((v11 - **a1) >> 3));
    do
    {
      v14 = **a1;
      if (0xAAAAAAAAAAAAAAABLL * (((*a1)[1] - v14) >> 3) <= v12)
      {
        std::vector<std::string>::__throw_out_of_range[abi:ne200100]();
      }

      v15 = *v8;
      *&v21 = v14 + 24 * v12;
      *(std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v15, v21, &std::piecewise_construct, &v21) + 40) = v12++;
    }

    while (v12 < v13);
  }

  v20 = 0;
  v19 = 0;
  std::allocate_shared[abi:ne200100]<UC::UCMultiContextSymbolFrequencyTrie::Node,std::allocator<UC::UCMultiContextSymbolFrequencyTrie::Node>,UC::UCMultiContextSymbolFrequencyTrie&,int,int,int,0>(a1, &v20 + 4, &v20, &v19, &v21);
  v16 = v21;
  v21 = 0uLL;
  v17 = a1[7];
  *(a1 + 3) = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
    }
  }

  return a1;
}

void sub_2702F11E4(_Unwind_Exception *a1)
{
  v4 = v1[7];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<std::unordered_map<std::string,unsigned char>>::reset[abi:ne200100](v2, 0);
  v5 = v1[3];
  v1[3] = 0;
  if (v5)
  {
    operator delete[](v5);
  }

  v6 = v1[1];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void *UC::UCMultiContextSymbolFrequencyTrie::getOrderedSymbols@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[1];
  *a2 = *this;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

UC::UCMultiContextSymbolFrequencyTrie::Node *UC::UCMultiContextSymbolFrequencyTrie::Node::childNodeForSymbol(unsigned __int8 *a1, const void **a2)
{
  if (*(*a1 + 40) == a1[8])
  {
    return 0;
  }

  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(*(*a1 + 32), a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v22 = *(v4 + 40);
  v5 = std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>>>::find<unsigned char>(*(a1 + 2), &v22);
  if (v5)
  {
    return v5[3];
  }

  v6 = a1[8];
  v7 = *a1;
  if (a1[8])
  {
    v8 = *(a1 + 3);
    v9 = v7[16];
    v10 = a1[9];
    v11 = v7[40];
    if (v6 >= v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = a1[8];
      do
      {
        v12 += pow(v9, v13++);
      }

      while (v11 > v13);
    }

    v14 = v8 + v9 - v10 + v12 * v10;
  }

  else
  {
    v14 = 1;
  }

  v15 = v22;
  v16 = v6 + 1;
  v2 = operator new(0x18uLL);
  UC::UCMultiContextSymbolFrequencyTrie::Node::Node(v2, v7, v16, v15, v14 + v15);
  v21 = v2;
  v17 = *(a1 + 2);
  v23 = &v22;
  v18 = std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v17, &v22, &std::piecewise_construct, &v23);
  v21 = 0;
  v19 = v18[3];
  v18[3] = v2;
  if (v19)
  {
    std::unique_ptr<std::unordered_map<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>>::reset[abi:ne200100](v19 + 2, 0);
    operator delete(v19);
  }

  std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>::~unique_ptr[abi:ne200100](&v21);
  return v2;
}

void sub_2702F13E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

UC::UCMultiContextSymbolFrequencyTrie::Node *UC::UCMultiContextSymbolFrequencyTrie::Node::Node(UC::UCMultiContextSymbolFrequencyTrie::Node *this, const UC::UCMultiContextSymbolFrequencyTrie *a2, char a3, char a4, int a5)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 9) = a4;
  *(this + 3) = a5;
  *(this + 2) = 0;
  v6 = (this + 16);
  v7 = operator new(0x28uLL);
  *v7 = 0u;
  v7[1] = 0u;
  *(v7 + 8) = 1065353216;
  std::unique_ptr<std::unordered_map<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>>::reset[abi:ne200100](v6, v7);
  return this;
}

uint64_t UC::UCMultiContextSymbolFrequencyTrie::Node::getFrequencyForSymbol(_DWORD *a1, const void **a2)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(*(*a1 + 32), a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return _byteswap_ushort(*(*(v2 + 24) + 2 * (*(v4 + 40) + v3 * *(v2 + 16))));
}

void std::unique_ptr<std::unordered_map<std::string,unsigned char>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(v3);

    operator delete(v4);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v9, a4, v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_2702F17FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  v9 = v8;
  a4[1] = a1;
  *a4 = v8;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v8 + 16), *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    *(v8 + 4) = *(v10 + 2);
    *(v8 + 1) = v11;
  }

  v9[40] = 0;
  *(a4 + 16) = 1;
}

void sub_2702F18B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned short>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::allocate_shared[abi:ne200100]<UC::UCMultiContextSymbolFrequencyTrie::Node,std::allocator<UC::UCMultiContextSymbolFrequencyTrie::Node>,UC::UCMultiContextSymbolFrequencyTrie&,int,int,int,0>@<X0>(const UC::UCMultiContextSymbolFrequencyTrie *a1@<X1>, char *a2@<X2>, char *a3@<X3>, int *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x30uLL);
  result = std::__shared_ptr_emplace<UC::UCMultiContextSymbolFrequencyTrie::Node>::__shared_ptr_emplace[abi:ne200100]<UC::UCMultiContextSymbolFrequencyTrie&,int,int,int,std::allocator<UC::UCMultiContextSymbolFrequencyTrie::Node>,0>(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;
  return result;
}

void *std::__shared_ptr_emplace<UC::UCMultiContextSymbolFrequencyTrie::Node>::__shared_ptr_emplace[abi:ne200100]<UC::UCMultiContextSymbolFrequencyTrie&,int,int,int,std::allocator<UC::UCMultiContextSymbolFrequencyTrie::Node>,0>(void *a1, const UC::UCMultiContextSymbolFrequencyTrie *a2, char *a3, char *a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28803D638;
  UC::UCMultiContextSymbolFrequencyTrie::Node::Node((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<UC::UCMultiContextSymbolFrequencyTrie::Node>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28803D638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::unique_ptr<std::unordered_map<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>>>::~__hash_table(v3);

    operator delete(v4);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>::~unique_ptr[abi:ne200100](v2 + 3);
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

void std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>::~unique_ptr[abi:ne200100](v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>>>::find<unsigned char>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void **std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<std::unordered_map<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>>::reset[abi:ne200100](v2 + 16, 0);
    operator delete(v2);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
{
  v7 = *a2;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = *a2;
      if (v8 <= v7)
      {
        v4 = v7 % *(a1 + 8);
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }

    v10 = *(*a1 + 8 * v4);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v7)
        {
          if (*(i + 16) == v7)
          {
            return i;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v4)
          {
            break;
          }
        }
      }
    }
  }

  v13 = operator new(0x20uLL);
  v25[0] = v13;
  v25[1] = a1;
  v25[2] = 1;
  *v13 = 0;
  v13[1] = v7;
  *(v13 + 16) = **a4;
  v13[3] = 0;
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v8 || (v15 * v8) < v14)
  {
    v16 = 1;
    if (v8 >= 3)
    {
      v16 = (v8 & (v8 - 1)) != 0;
    }

    v17 = v16 | (2 * v8);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(a1, v19);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v8 <= v7)
      {
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    i = v25[0];
    *v25[0] = *v21;
    *v21 = i;
  }

  else
  {
    v22 = v25[0];
    *v25[0] = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v4) = a1 + 16;
    i = v25[0];
    if (*v25[0])
    {
      v23 = *(*v25[0] + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v23 >= v8)
        {
          v23 %= v8;
        }
      }

      else
      {
        v23 &= v8 - 1;
      }

      *(*a1 + 8 * v23) = v25[0];
      i = v25[0];
    }
  }

  v25[0] = 0;
  ++*(a1 + 24);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,void *>>>>::~unique_ptr[abi:ne200100](v25);
  return i;
}

void sub_2702F1EA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<UC::UCMultiContextSymbolFrequencyTrie::Node>::~unique_ptr[abi:ne200100](v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2702F20EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2702F21C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2702F233C(_Unwind_Exception *a1)
{
  operator delete(v1);

  _Unwind_Resume(a1);
}

id nsStringFromString(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_2702F28B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_2702F3128(_Unwind_Exception *a1)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void sub_2702F3148(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10, int a11, __int16 a12, char a13, unsigned __int8 a14)
{
  v21 = *(v18 - 176);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  operator delete(v17);
  v22 = *(v18 - 120);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (a2 == 1)
  {
    v23 = __cxa_begin_catch(a1);
    if (v15)
    {
      v24 = v23;
      std::string::basic_string[abi:ne200100]<0>(&__p, "Encountered an internal error while initializing the URL encoder. ");
      v25 = (*(*v24 + 16))(v24);
      std::string::append(&__p, v25);
      if ((a14 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((a14 & 0x80u) == 0)
      {
        v27 = a14;
      }

      else
      {
        v27 = a10;
      }

      v28 = nsStringFromString(p_p, v27);
      *v15 = [v16 _errorWithCoderErrorCode:-1 codingErrorSymbol:0 message:v28];

      if (a14 < 0)
      {
        operator delete(__p);
      }
    }

    *v14 = 0;
    v14[1] = 0;
    __cxa_end_catch();
    JUMPOUT(0x2702F3100);
  }

  JUMPOUT(0x2702F3138);
}

void sub_2702F34F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2702F3138);
}

void UC::UCURLComponents::~UCURLComponents(void **this)
{
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::allocate_shared[abi:ne200100]<UC::SUE::UCSegmentedURLCoderProvider,std::allocator<UC::SUE::UCSegmentedURLCoderProvider>,std::string &,std::string &,std::string &,0>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0xD0uLL);
  result = std::__shared_ptr_emplace<UC::SUE::UCSegmentedURLCoderProvider>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::string &,std::string &,std::allocator<UC::SUE::UCSegmentedURLCoderProvider>,0>(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *std::__shared_ptr_emplace<UC::SUE::UCSegmentedURLCoderProvider>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::string &,std::string &,std::allocator<UC::SUE::UCSegmentedURLCoderProvider>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28803D670;
  std::allocator<UC::SUE::UCSegmentedURLCoderProvider>::construct[abi:ne200100]<UC::SUE::UCSegmentedURLCoderProvider,std::string &,std::string &,std::string &>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<UC::SUE::UCSegmentedURLCoderProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28803D670;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocator<UC::SUE::UCSegmentedURLCoderProvider>::construct[abi:ne200100]<UC::SUE::UCSegmentedURLCoderProvider,std::string &,std::string &,std::string &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a3, *(a3 + 8));
  }

  else
  {
    v10 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a4, *(a4 + 8));
  }

  else
  {
    v9 = *a4;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  UC::SUE::UCSegmentedURLCoderProvider::UCSegmentedURLCoderProvider(a2, &v10, &v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_2702F3880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void UC::SUE::UCSegmentedURLCoderProvider::~UCSegmentedURLCoderProvider(UC::SUE::UCSegmentedURLCoderProvider *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
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

void std::unique_ptr<UC::SUE::SegmentedURLEncoderImpl>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[2];
    v2[2] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(v2);
  }
}

void std::unique_ptr<UC::SUE::PrefixedURLEncoderImpl>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[1];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<UC::SUE::UCSegmentedURLEncodingResult>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28803D6A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocator<UC::SUE::UCSegmentedURLEncodingResult>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v4 = *(a2 + 40);
  *v3 = 0;
  if (v4)
  {
    std::default_delete<UC::SUE::UCSegmentedURLEncodingResult::HostResult>::operator()[abi:ne200100](v3, v4);
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

void UCURLComponentsFromNSURL(NSURL *a1@<X0>, std::string *a2@<X8>)
{
  v3 = a1;
  v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:0];
  memset(&v35, 0, sizeof(v35));
  v5 = [(NSURL *)v3 absoluteString];
  v6 = [(NSString *)v5 length];

  if (v6)
  {
    v7 = [(NSURL *)v3 absoluteString];
    std::string::append(&v35, [(NSString *)v7 UTF8String]);
  }

  memset(&v34, 0, sizeof(v34));
  v8 = [v4 scheme];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [v4 scheme];
    std::string::append(&v34, [v10 UTF8String]);
  }

  memset(&v33, 0, sizeof(v33));
  v11 = [v4 percentEncodedHost];
  if ([v11 length])
  {
    std::string::append(&v33, [v11 UTF8String]);
  }

  memset(&v32, 0, sizeof(v32));
  v12 = [v4 percentEncodedPath];
  if ([v12 length])
  {
    std::string::append(&v32, [v12 UTF8String]);
  }

  memset(&v31, 0, sizeof(v31));
  v13 = [v4 percentEncodedQuery];
  if ([v13 length])
  {
    std::string::append(&v31, [v13 UTF8String]);
  }

  memset(&v30, 0, sizeof(v30));
  v14 = [v4 percentEncodedFragment];
  if ([v14 length])
  {
    std::string::append(&v30, [v14 UTF8String]);
  }

  v15 = [v4 port];

  if (v15)
  {
    v16 = [v4 port];
    v17 = [v16 unsignedLongLongValue];
  }

  else
  {
    v17 = 0;
  }

  memset(&v29, 0, sizeof(v29));
  v18 = [v4 percentEncodedUser];
  if ([v18 length])
  {
    std::string::append(&v29, [v18 UTF8String]);
  }

  memset(&v28, 0, sizeof(v28));
  v19 = [v4 percentEncodedPassword];
  if ([v19 length])
  {
    std::string::append(&v28, [v19 UTF8String]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v35;
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v34;
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = v33;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v32;
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = v31;
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = v30;
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v29;
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v28;
  }

  UC::UCURLComponents::UCURLComponents(a2, &v27, &v26, &v25, &v24, &v23, &v22, v17, &v21, &v20);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }
}

void sub_2702F40E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (*(v80 - 217) < 0)
  {
    operator delete(*(v80 - 240));
  }

  if (*(v80 - 193) < 0)
  {
    operator delete(*(v80 - 216));
  }

  if (*(v80 - 169) < 0)
  {
    operator delete(*(v80 - 192));
  }

  if (*(v80 - 145) < 0)
  {
    operator delete(*(v80 - 168));
  }

  if (*(v80 - 121) < 0)
  {
    operator delete(*(v80 - 144));
  }

  if (*(v80 - 97) < 0)
  {
    operator delete(*(v80 - 120));
  }

  _Unwind_Resume(a1);
}

std::string *UC::UCMultiContextHuffmanSymbolFrequencyReader::UCMultiContextHuffmanSymbolFrequencyReader(std::string *a1, std::string::size_type a2, std::string::size_type *a3, __int128 *a4)
{
  v6 = *a3;
  v5 = a3[1];
  a1->__r_.__value_.__r.__words[0] = a2;
  a1->__r_.__value_.__l.__size_ = v6;
  a1->__r_.__value_.__r.__words[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    a1[1].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v7;
  }

  a1[2].__r_.__value_.__r.__words[0] = 0;
  a1[2].__r_.__value_.__l.__size_ = 0;
  return a1;
}

void sub_2702F438C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t UC::UCMultiContextHuffmanSymbolFrequencyReader::readData(std::string *this)
{
  v12[19] = *MEMORY[0x277D85DE8];
  std::fstream::basic_fstream(&v11, this + 1, 0xEu);
  if (*(&v11.__sb_.__st_._mbstateL + 9))
  {
    std::istream::tellg();
    std::istream::seekg();
    v2 = operator new[](v10);
    bzero(v2, v10);
    __p = v2;
    std::istream::read();
    if (!std::filebuf::close())
    {
      std::ios_base::clear((&v11 + *(v11.__sb_.__extbuf_ - 3)), *&v11.__sb_.__extbuf_min_[*(v11.__sb_.__extbuf_ - 3) + 8] | 4);
    }

    std::allocate_shared[abi:ne200100]<UC::UCMultiContextSymbolFrequencyTrie,std::allocator<UC::UCMultiContextSymbolFrequencyTrie>,std::shared_ptr<std::vector<std::string>> &,std::unique_ptr<unsigned char []>,unsigned long const&,0>(&this->__r_.__value_.__l.__size_, &__p, this, &v9);
    v3 = v9;
    v9 = 0uLL;
    size = this[2].__r_.__value_.__l.__size_;
    *&this[2].__r_.__value_.__l.__data_ = v3;
    if (size)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](size);
      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }
    }

    v5 = __p;
    __p = 0;
    if (v5)
    {
      operator delete[](v5);
    }
  }

  MEMORY[0x27439D740](v11.__sb_.__extbuf_min_);
  std::iostream::~basic_iostream();
  result = MEMORY[0x27439D8A0](v12);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2702F4574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    operator delete[](__p);
  }

  MEMORY[0x27439D8A0](&STACK[0x250]);
  _Unwind_Resume(a1);
}

std::fstream *__cdecl std::fstream::basic_fstream(std::fstream *this, const std::string *__s, std::ios_base::openmode __mode)
{
  *(&this[1].__sb_.__st_._mbstateL + 8) = 0;
  this->__sb_.__extbufnext_ = 0;
  this->__sb_.__extbuf_ = &unk_28803D828;
  *(&this[1].__sb_.__st_._mbstateL + 2) = &unk_28803D850;
  std::ios_base::init((&this[1].__sb_.__st_._mbstateL + 2), this->__sb_.__extbuf_min_);
  *(&this[1].__sb_.__st_last_._mbstateL + 3) = 0;
  *(&this[1].__sb_.__st_last_._mbstateL + 8) = -1;
  MEMORY[0x27439D730](this->__sb_.__extbuf_min_);
  if ((__s->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = __s->__r_.__value_.__r.__words[0];
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((this + *(this->__sb_.__extbuf_ - 3)), *&this->__sb_.__extbuf_min_[*(this->__sb_.__extbuf_ - 3) + 8] | 4);
  }

  return this;
}

void sub_2702F4718(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x27439D8A0](v1);
  _Unwind_Resume(a1);
}

uint64_t *std::fstream::~fstream(uint64_t *a1)
{
  MEMORY[0x27439D8A0](v2 + 432);
  return a1;
}

uint64_t UC::UCMultiContextHuffmanSymbolFrequencyReader::getContextSymbolFrequency@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 56);
  *a2 = *(this + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t std::fstream::~fstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[8];
  a1[2] = a2[9];
  MEMORY[0x27439D740](a1 + 3);

  return std::iostream::~basic_iostream();
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x27439D740](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x27439D8A0);
}

{
  v1 = a1 - 2;
  v2 = a1 + 52;
  MEMORY[0x27439D740](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x27439D8A0](v2);

  operator delete(v1);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x27439D740](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x27439D8A0);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x27439D740](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x27439D8A0](v1 + 54);

  operator delete(v1);
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v2 = a1 + 54;
  MEMORY[0x27439D740](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x27439D8A0](v2);

  operator delete(a1);
}

void *std::allocate_shared[abi:ne200100]<UC::UCMultiContextSymbolFrequencyTrie,std::allocator<UC::UCMultiContextSymbolFrequencyTrie>,std::shared_ptr<std::vector<std::string>> &,std::unique_ptr<unsigned char []>,unsigned long const&,0>@<X0>(uint64_t *a1@<X1>, void **a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x58uLL);
  result = std::__shared_ptr_emplace<UC::UCMultiContextSymbolFrequencyTrie>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<std::vector<std::string>> &,std::unique_ptr<unsigned char []>,unsigned long const&,std::allocator<UC::UCMultiContextSymbolFrequencyTrie>,0>(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;
  return result;
}

void *std::__shared_ptr_emplace<UC::UCMultiContextSymbolFrequencyTrie>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<std::vector<std::string>> &,std::unique_ptr<unsigned char []>,unsigned long const&,std::allocator<UC::UCMultiContextSymbolFrequencyTrie>,0>(void *a1, uint64_t *a2, void **a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28803D8C0;
  std::allocator<UC::UCMultiContextSymbolFrequencyTrie>::construct[abi:ne200100]<UC::UCMultiContextSymbolFrequencyTrie,std::shared_ptr<std::vector<std::string>> &,std::unique_ptr<unsigned char []>,unsigned long const&>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<UC::UCMultiContextSymbolFrequencyTrie>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28803D8C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<UC::UCMultiContextSymbolFrequencyTrie>::__on_zero_shared(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<std::unordered_map<std::string,unsigned char>>::reset[abi:ne200100](a1 + 7, 0);
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    operator delete[](v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::allocator<UC::UCMultiContextSymbolFrequencyTrie>::construct[abi:ne200100]<UC::UCMultiContextSymbolFrequencyTrie,std::shared_ptr<std::vector<std::string>> &,std::unique_ptr<unsigned char []>,unsigned long const&>(uint64_t a1, uint64_t a2, uint64_t *a3, void **a4, void *a5)
{
  v5 = a3[1];
  v9 = *a3;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a4;
  *a4 = 0;
  __p = v6;
  UC::UCMultiContextSymbolFrequencyTrie::UCMultiContextSymbolFrequencyTrie(a2, &v9, &__p, *a5);
  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete[](v7);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_2702F4E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, std::__shared_weak_count *a12)
{
  if (__p)
  {
    operator delete[](__p);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

double UC::UCMultiContextHuffmanCoder::UCMultiContextHuffmanCoder(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = &unk_28803D8F8;
  *(a1 + 8) = a3;
  v3 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0;
  return result;
}

uint64_t UC::UCMultiContextHuffmanCoder::encode(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v4 = UC::UCMultiContextHuffmanCoder::_huffmanCoderForContext(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*v4 + 32))(v4, a2);
}

void sub_2702F4F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *UC::UCMultiContextHuffmanCoder::_huffmanCoderForContext(uint64_t a1, std::string::size_type a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 32), a2);
    if (v5)
    {
      return v5[5];
    }
  }

  else
  {
    result = *(a1 + 72);
    if (result)
    {
      return result;
    }
  }

  RootNode = UC::UCMultiContextSymbolFrequencyTrie::getRootNode(*(a1 + 16));
  v26 = RootNode;
  v8 = *(a2 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    v10 = RootNode;
    v11 = *a2;
    if (v9 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    do
    {
      memset(&v25, 0, sizeof(v25));
      std::string::push_back(&v25, *v12);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
      }

      else
      {
        v24 = v25;
      }

      v10 = UC::UCMultiContextSymbolFrequencyTrie::Node::childNodeForSymbol(v10, &v24.__r_.__value_.__l.__data_);
      v26 = v10;
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      ++v12;
      v13 = *(a2 + 23);
      if ((v13 & 0x80u) == 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      if ((v13 & 0x80u) != 0)
      {
        v13 = *(a2 + 8);
      }
    }

    while (v12 != &v14[v13]);
  }

  UC::UCMultiContextSymbolFrequencyTrie::getOrderedSymbols(*(a1 + 16), &v22);
  std::allocate_shared[abi:ne200100]<UC::UCSymbolFrequencyTable,std::allocator<UC::UCSymbolFrequencyTable>,UC::UCMultiContextSymbolFrequencyTrie::Node *&,std::shared_ptr<std::vector<std::string>>,0>(&v26, &v22, &v23);
  v15 = operator new(0x18uLL);
  *&v25.__r_.__value_.__l.__data_ = v23;
  v23 = 0uLL;
  UC::UCHuffmanCoder::UCHuffmanCoder(v15, &v25);
  if (v25.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25.__r_.__value_.__l.__size_);
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
  }

  if (*(&v22 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
  }

  v16 = *(a2 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 8);
  }

  if (v16)
  {
    v25.__r_.__value_.__r.__words[0] = a2;
    v17 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 32, a2, &std::piecewise_construct, &v25);
    v18 = v17[5];
    v17[5] = v15;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v25.__r_.__value_.__r.__words[0] = a2;
    v19 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 32, a2, &std::piecewise_construct, &v25) + 5;
  }

  else
  {
    v21 = *(a1 + 72);
    v19 = (a1 + 72);
    v20 = v21;
    *v19 = v15;
    if (v21)
    {
      (*(*v20 + 8))(v20);
    }
  }

  return *v19;
}

void UC::UCMultiContextHuffmanCoder::encode(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  (*(*a1 + 56))(a1, a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2702F5328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void UC::UCMultiContextHuffmanCoder::encodeWithStartContext(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  if (v5 >= 1)
  {
    v9 = 0;
    v10 = v5 & 0x7FFFFFFF;
    do
    {
      if (*(a1 + 8) <= v9)
      {
        std::string::basic_string[abi:ne200100]<0>(&v24, "");
      }

      else if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *a3, *(a3 + 8));
      }

      else
      {
        v24 = *a3;
      }

      v11 = *(a1 + 8);
      v12 = (v9 - v11) & ~((v9 - v11) >> 31);
      if (v9 > v12)
      {
        v13 = 24 * ((v9 - v11) & ~((v9 - v11) >> 31));
        do
        {
          v14 = *a2 + v13;
          v15 = *(v14 + 23);
          if (v15 >= 0)
          {
            v16 = (*a2 + v13);
          }

          else
          {
            v16 = *v14;
          }

          if (v15 >= 0)
          {
            v17 = *(v14 + 23);
          }

          else
          {
            v17 = *(v14 + 8);
          }

          std::string::append(&v24, v16, v17);
          ++v12;
          v13 += 24;
        }

        while (v12 < v9);
      }

      v18 = UC::UCMultiContextHuffmanCoder::_huffmanCoderForContext(a1, &v24);
      v19 = *a2 + 24 * v9;
      (*(*v18 + 32))(__p);
      if ((v23 & 0x80u) == 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v21 = v23;
      }

      else
      {
        v21 = __p[1];
      }

      std::string::append(a4, v20, v21);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      ++v9;
    }

    while (v9 != v10);
  }
}

void sub_2702F54F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void UC::UCMultiContextHuffmanCoder::decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "");
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  (*(*a1 + 64))(a1, a2, v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_2702F5618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void UC::UCMultiContextHuffmanCoder::decodeWithStartContext(UC::UCBitStream *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v10 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  while (UC::UCBitStream::hasMore(this))
  {
    if (*(a2 + 8) <= v10)
    {
      std::string::basic_string[abi:ne200100]<0>(&v32, "");
    }

    else if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *a3, *(a3 + 8));
    }

    else
    {
      v32 = *a3;
    }

    v11 = (v10 - *(a2 + 8)) & ~((v10 - *(a2 + 8)) >> 31);
    if (v11 < v10)
    {
      v12 = v10 - v11;
      v13 = 24 * v11;
      do
      {
        v14 = *(v33 + v13 + 23);
        if (v14 >= 0)
        {
          v15 = v33 + v13;
        }

        else
        {
          v15 = *(v33 + v13);
        }

        if (v14 >= 0)
        {
          v16 = *(v33 + v13 + 23);
        }

        else
        {
          v16 = *(v33 + v13 + 8);
        }

        std::string::append(&v32, v15, v16);
        v13 += 24;
        --v12;
      }

      while (v12);
    }

    v17 = UC::UCMultiContextHuffmanCoder::_huffmanCoderForContext(a2, &v32);
    (*(*v17 + 56))(__p);
    v18 = v31;
    if ((v31 & 0x80u) == 0)
    {
      v19 = v31;
    }

    else
    {
      v19 = __p[1];
    }

    v20 = *(a4 + 23);
    v21 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a4 + 8);
    }

    if (v19 == v20)
    {
      v22 = (v31 & 0x80u) == 0 ? __p : __p[0];
      v23 = v21 >= 0 ? a4 : *a4;
      if (!memcmp(v22, v23, v19))
      {
        v24 = 0;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_32;
        }

LABEL_31:
        operator delete(__p[0]);
        goto LABEL_32;
      }
    }

    std::vector<std::string>::push_back[abi:ne200100](&v33, __p);
    ++v10;
    v24 = 1;
    if ((v31 & 0x80) != 0)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
      if ((v24 & 1) == 0)
      {
        break;
      }
    }

    else if ((v24 & 1) == 0)
    {
      break;
    }
  }

  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  v25 = v33;
  for (i = v34; v25 != i; v25 = (v25 + 24))
  {
    if (*(v25 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *v25, *(v25 + 1));
    }

    else
    {
      v27 = *v25;
      v32.__r_.__value_.__r.__words[2] = *(v25 + 2);
      *&v32.__r_.__value_.__l.__data_ = v27;
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v32;
    }

    else
    {
      v28 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    std::string::append(a5, v28, size);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  v32.__r_.__value_.__r.__words[0] = &v33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
}

void sub_2702F58CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  a16 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t UC::UCMultiContextHuffmanCoder::canEncode(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v4 = UC::UCMultiContextHuffmanCoder::_huffmanCoderForContext(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*v4 + 16))(v4, a2);
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v4 = UC::UCMultiContextHuffmanCoder::_huffmanCoderForContext(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*v4 + 24))(v4, a2);
}

void sub_2702F59D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2702F5A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void UC::UCMultiContextHuffmanCoder::clearCaches(UC::UCMultiContextHuffmanCoder *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>>>::clear(this + 32);
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);

  UC::UCMultiContextSymbolFrequencyTrie::clearCaches(v3);
}

void UC::UCMultiContextHuffmanCoder::~UCMultiContextHuffmanCoder(UC::UCMultiContextHuffmanCoder *this)
{
  *this = &unk_28803D8F8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>>>::~__hash_table(this + 32);
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_28803D8F8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>>>::~__hash_table(this + 32);
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(this);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<UC::UCHuffmanCoder>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<UC::UCHuffmanCoder>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void *std::allocate_shared[abi:ne200100]<UC::UCSymbolFrequencyTable,std::allocator<UC::UCSymbolFrequencyTable>,UC::UCMultiContextSymbolFrequencyTrie::Node *&,std::shared_ptr<std::vector<std::string>>,0>@<X0>(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  result = std::__shared_ptr_emplace<UC::UCSymbolFrequencyTable>::__shared_ptr_emplace[abi:ne200100]<UC::UCMultiContextSymbolFrequencyTrie::Node *&,std::shared_ptr<std::vector<std::string>>,std::allocator<UC::UCSymbolFrequencyTable>,0>(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *std::__shared_ptr_emplace<UC::UCSymbolFrequencyTable>::__shared_ptr_emplace[abi:ne200100]<UC::UCMultiContextSymbolFrequencyTrie::Node *&,std::shared_ptr<std::vector<std::string>>,std::allocator<UC::UCSymbolFrequencyTable>,0>(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28803D558;
  std::allocator<UC::UCSymbolFrequencyTable>::construct[abi:ne200100]<UC::UCSymbolFrequencyTable,UC::UCMultiContextSymbolFrequencyTrie::Node *&,std::shared_ptr<std::vector<std::string>>>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::allocator<UC::UCSymbolFrequencyTable>::construct[abi:ne200100]<UC::UCSymbolFrequencyTable,UC::UCMultiContextSymbolFrequencyTrie::Node *&,std::shared_ptr<std::vector<std::string>>>(uint64_t a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a3;
  v6 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  UC::UCSymbolFrequencyTable::UCSymbolFrequencyTable(a2, v5, &v6);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }
}

void sub_2702F5E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v9, a4, v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  v27[0] = 0;
  ++*(a1 + 24);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,void *>>>>::~unique_ptr[abi:ne200100](v27);
  return i;
}

void sub_2702F60B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  v9 = v8;
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v8 + 16), *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    *(v8 + 4) = *(v10 + 2);
    *(v8 + 1) = v11;
  }

  *(v9 + 5) = 0;
  *(a4 + 16) = 1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<UC::UCHuffmanCoder>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<UC::UCHuffmanCoder>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *UC::UCSymbolFrequencyTable::UCSymbolFrequencyTable(void *result, void *a2, void *a3)
{
  v3 = a3[1];
  *result = *a3;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[1];
  result[2] = *a2;
  result[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *UC::UCSymbolFrequencyTable::UCSymbolFrequencyTable(void *result, uint64_t a2, void *a3)
{
  v3 = a3[1];
  *result = *a3;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result[2] = 0;
  result[3] = 0;
  result[4] = a2;
  return result;
}

uint64_t UC::UCSymbolFrequencyTable::getFrequencyForSymbol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v3, a2);
    if (!v4)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    return *(v4 + 20);
  }

  else
  {
    v6 = *(a1 + 32);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    FrequencyForSymbol = UC::UCMultiContextSymbolFrequencyTrie::Node::getFrequencyForSymbol(v6, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return FrequencyForSymbol;
}

void sub_2702F6304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *UC::SUE::UCSegmentedURLEncodingResult::HostResult::HostResult(std::string *this, __int128 *a2, std::string::value_type a3, int a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  this[1].__r_.__value_.__s.__data_[0] = a3;
  HIDWORD(this[1].__r_.__value_.__r.__words[0]) = a4;
  return this;
}

void UC::SUE::UCSegmentedURLEncodingResult::setHostEncodingResult(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v5 = *(a1 + 40);
  v3 = (a1 + 40);
  v4 = v5;
  *v3 = v2;
  if (v5)
  {
    std::default_delete<UC::SUE::UCSegmentedURLEncodingResult::HostResult>::operator()[abi:ne200100](v3, v4);
  }
}

void sub_2702F6A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void **a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  v36 = a12;
  a12 = 0;
  if (v36)
  {
    std::default_delete<UC::UCBitVector>::operator()[abi:ne200100](&a12, v36);
  }

  v37 = a18;
  a18 = 0;
  if (v37)
  {
    std::default_delete<UC::UCBitVector>::operator()[abi:ne200100](&a18, v37);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (v31)
    {
      *v31 = [v32 _errorWithCoderErrorCode:1002 message:@"Decoding of the data failed. The data is malformed"];
    }

    __cxa_end_catch();
    JUMPOUT(0x2702F6A4CLL);
  }

  _Unwind_Resume(a1);
}

void sub_2702F6F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **__p, void **a17)
{
  operator delete(v20);
  v23 = __p;
  __p = 0;
  if (v23)
  {
    std::default_delete<UC::UCBitVector>::operator()[abi:ne200100](&__p, v23);
  }

  v24 = a17;
  a17 = 0;
  if (v24)
  {
    std::default_delete<UC::UCBitVector>::operator()[abi:ne200100](&a17, v24);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (v18)
    {
      *v18 = [v19 _errorWithCoderErrorCode:1002 message:@"Decoding of the data failed. The data is malformed"];
    }

    __cxa_end_catch();
    JUMPOUT(0x2702F6F08);
  }

  _Unwind_Resume(a1);
}

UC::SUE::PrefixedURLDecoderImpl *UC::SUE::PrefixedURLDecoderImpl::PrefixedURLDecoderImpl(UC::SUE::PrefixedURLDecoderImpl *this, uint64_t a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  createHexDecimalCoder(&v8);
  v4 = v8;
  v8 = 0uLL;
  v5 = *(this + 1);
  *this = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
    }
  }

  createAllowedPrefixes(a2, &v8);
  v6 = *(this + 3);
  *(this + 1) = v8;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return this;
}

void sub_2702F71AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void createHexDecimalCoder(void *a1@<X8>)
{
  *&v22 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "0");
  std::string::basic_string[abi:ne200100]<0>(v7, "1");
  std::string::basic_string[abi:ne200100]<0>(v8, "2");
  std::string::basic_string[abi:ne200100]<0>(v9, "3");
  std::string::basic_string[abi:ne200100]<0>(v10, "4");
  std::string::basic_string[abi:ne200100]<0>(v11, "5");
  std::string::basic_string[abi:ne200100]<0>(v12, "6");
  std::string::basic_string[abi:ne200100]<0>(v13, "7");
  std::string::basic_string[abi:ne200100]<0>(v14, "8");
  std::string::basic_string[abi:ne200100]<0>(v15, "9");
  std::string::basic_string[abi:ne200100]<0>(v16, "a");
  std::string::basic_string[abi:ne200100]<0>(v17, "b");
  std::string::basic_string[abi:ne200100]<0>(v18, "c");
  std::string::basic_string[abi:ne200100]<0>(v19, "d");
  std::string::basic_string[abi:ne200100]<0>(v20, "e");
  std::string::basic_string[abi:ne200100]<0>(v21, "f");
  memset(&v5, 0, sizeof(v5));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v5, &v6, &v22, 0x10uLL);
  v2 = 48;
  do
  {
    if (*(&v7[v2 - 1] - 1) < 0)
    {
      operator delete(v5.__r_.__value_.__r.__words[v2 + 1]);
    }

    v2 -= 3;
  }

  while (v2 * 8);
  v4 = 4;
  std::allocate_shared[abi:ne200100]<std::vector<std::string>,std::allocator<std::vector<std::string>>,std::vector<std::string> const&,0>(&v5, &v6);
  std::allocate_shared[abi:ne200100]<UC::UCFixedLengthCoder,std::allocator<UC::UCFixedLengthCoder>,int,std::shared_ptr<std::vector<std::string>>,0>(&v4, &v6, a1);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }

  *&v6 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_2702F7414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  a14 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void createAllowedPrefixes(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x40uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = &unk_28803D950;
  *(v4 + 24) = 0u;
  v5 = (v4 + 24);
  *(v4 + 40) = 0u;
  *(v4 + 14) = 1065353216;
  *a2 = v4 + 24;
  a2[1] = v4;
  switch(a1)
  {
    case 3:
      v6 = 0;
      std::string::basic_string[abi:ne200100]<0>(__p, "https://appclip.apple.com/rx?p=");
      std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,std::pair<int const,std::string>>(v5, &v6, &v6);
      break;
    case 2:
      v6 = 0;
      std::string::basic_string[abi:ne200100]<0>(__p, "https://appclip.apple.com/pair?p=");
      std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,std::pair<int const,std::string>>(v5, &v6, &v6);
      break;
    case 1:
      v6 = 0;
      std::string::basic_string[abi:ne200100]<0>(__p, "https://appclip.apple.com/rx?p=");
      std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,std::pair<int const,std::string>>(v5, &v6, &v6);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = 1;
      std::string::basic_string[abi:ne200100]<0>(__p, "https://apple.com/shop/mnf?s=");
      std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,std::pair<int const,std::string>>(v5, &v6, &v6);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = 2;
      std::string::basic_string[abi:ne200100]<0>(__p, "https://wallet.apple.com/remoteRequest/?t=");
      std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,std::pair<int const,std::string>>(v5, &v6, &v6);
      break;
    default:
      return;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2702F7640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void UC::SUE::PrefixedURLDecoderImpl::decodeURL(UC::SUE::PrefixedURLDecoderImpl *this@<X0>, UC::UCBitStream *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  v7 = 10;
  do
  {
    v6 = UC::UCBitStream::readNextBit(a2) & 1 | (2 * v6);
    --v7;
  }

  while (v7);
  v17 = v6;
  v8 = std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::find<int>(*(this + 2), &v17);
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x58uLL);
    UC::Exception::CoderError::CoderError(exception, "UCPrefixedURLCoderErrorDomain", 29, 7, "", 0, "Unsupported header format in encoded data", 41);
  }

  v9 = v8;
  v10 = 6;
  do
  {
    UC::UCBitStream::readNextBit(a2);
    --v10;
  }

  while (v10);
  v11 = *this;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  (*(*v11 + 48))(v15, v11, a2, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9 + 3, v15, a3);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }
}

UC::SUE::PrefixedURLEncoderImpl *UC::SUE::PrefixedURLEncoderImpl::PrefixedURLEncoderImpl(UC::SUE::PrefixedURLEncoderImpl *this, uint64_t a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  createHexDecimalCoder(&v8);
  v4 = v8;
  v8 = 0uLL;
  v5 = *(this + 1);
  *this = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
    }
  }

  createAllowedPrefixes(a2, &v8);
  v6 = *(this + 3);
  *(this + 1) = v8;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return this;
}

void sub_2702F78B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void UC::SUE::PrefixedURLEncoderImpl::encodeURL(UC::SUE::PrefixedURLEncoderImpl *this@<X0>, const UC::UCURLComponents *a2@<X1>, std::string *a3@<X8>)
{
  v6 = a2 + 24;
  v7 = *(a2 + 47);
  if (v7 < 0)
  {
    if (*(a2 + 4) != 5)
    {
LABEL_109:
      exception = __cxa_allocate_exception(0x58uLL);
      UC::Exception::CoderError::CoderError(exception, "UCPrefixedURLCoderErrorDomain", 29, 1, "", 0, "Only encoding of the scheme https is supported", 46);
      goto LABEL_114;
    }

    v6 = *v6;
  }

  else if (v7 != 5)
  {
    goto LABEL_109;
  }

  v8 = *v6;
  v9 = v6[4];
  if (v8 != 1886680168 || v9 != 115)
  {
    goto LABEL_109;
  }

  if (*(a2 + 18))
  {
    exception = __cxa_allocate_exception(0x58uLL);
    UC::Exception::CoderError::CoderError(exception, "UCPrefixedURLCoderErrorDomain", 29, 2, "", 0, "Encoding of URLs with port is not supported", 43);
    goto LABEL_114;
  }

  v11 = *(a2 + 175);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 20);
  }

  if (v11)
  {
    exception = __cxa_allocate_exception(0x58uLL);
    UC::Exception::CoderError::CoderError(exception, "UCPrefixedURLCoderErrorDomain", 29, 3, "", 0, "Encoding of URLs with user is not supported", 43);
    goto LABEL_114;
  }

  v12 = *(a2 + 199);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 23);
  }

  if (v12)
  {
    exception = __cxa_allocate_exception(0x58uLL);
    UC::Exception::CoderError::CoderError(exception, "UCPrefixedURLCoderErrorDomain", 29, 4, "", 0, "Encoding of URLs with password is not supported", 47);
LABEL_114:
  }

  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v55 = *(a2 + 2);
  }

  tokenizeString(a2 + 96, 61, v54);
  size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v55.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v50 = __cxa_allocate_exception(0x58uLL);
    UC::Exception::CoderError::CoderError(v50, "UCPrefixedURLCoderErrorDomain", 0x1DuLL, 5, "", 0, "The URL must have a host component", 0x22uLL);
    goto LABEL_118;
  }

  v14 = *(a2 + 143);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 16);
  }

  if (v14)
  {
    v50 = __cxa_allocate_exception(0x58uLL);
    UC::Exception::CoderError::CoderError(v50, "UCPrefixedURLCoderErrorDomain", 0x1DuLL, 8, "", 0, "Prefixed URL must not have fragment", 0x23uLL);
    goto LABEL_118;
  }

  if (v54[1] - v54[0] != 48)
  {
    v50 = __cxa_allocate_exception(0x58uLL);
    UC::Exception::CoderError::CoderError(v50, "UCPrefixedURLCoderErrorDomain", 0x1DuLL, 8, "", 0, "Prefixed URL must have exactly one query parameter", 0x32uLL);
LABEL_118:
  }

  std::operator+<char>();
  v15 = *(a2 + 95);
  if (v15 >= 0)
  {
    v16 = a2 + 72;
  }

  else
  {
    v16 = *(a2 + 9);
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 95);
  }

  else
  {
    v17 = *(a2 + 10);
  }

  v18 = std::string::append(&v51, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v52, "?");
  v21 = *&v20->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = *(v54[0] + 23);
  if (v22 >= 0)
  {
    v23 = v54[0];
  }

  else
  {
    v23 = *v54[0];
  }

  if (v22 >= 0)
  {
    v24 = *(v54[0] + 23);
  }

  else
  {
    v24 = *(v54[0] + 8);
  }

  v25 = std::string::append(&__str, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v61, "=");
  __p = *v27;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v28 = *(*(this + 2) + 16);
  if (!v28)
  {
    goto LABEL_110;
  }

  v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
  v30 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
  v31 = -1;
  do
  {
    v32 = *(v28 + 47);
    v33 = v32;
    if ((v32 & 0x80u) != 0)
    {
      v32 = v28[4];
    }

    if (v32 == v29)
    {
      v34 = v33 >= 0 ? v28 + 3 : v28[3];
      if (!memcmp(v34, v30, v29))
      {
        v31 = *(v28 + 4);
      }
    }

    v28 = *v28;
  }

  while (v28);
  if (v31 == -1)
  {
LABEL_110:
    v49 = __cxa_allocate_exception(0x58uLL);
    UC::Exception::CoderError::CoderError(v49, "UCPrefixedURLCoderErrorDomain", 0x1DuLL, 8, "", 0, "Encoding of URL with unsupported URL prefix", 0x2BuLL);
  }

  v35 = 0;
  memset(&v52, 0, sizeof(v52));
  do
  {
    if (v31)
    {
      v36 = "1";
    }

    else
    {
      v36 = "0";
    }

    v37 = std::string::basic_string[abi:ne200100]<0>(&v61, v36);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v37, &v52.__r_.__value_.__l.__data_, &__str);
    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    v52 = __str;
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v31 >>= 1;
  }

  while (v35++ < 9);
  v39 = *this;
  tokenizeString(v54[0] + 24, 0, &__str);
  (*(*v39 + 40))(&v61, v39, &__str);
  v51.__r_.__value_.__r.__words[0] = &__str;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v51);
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3[1].__r_.__value_.__r.__words[2] = 0;
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v52.__r_.__value_.__l.__size_;
  }

  v41 = &v51;
  std::string::basic_string[abi:ne200100](&v51, v40 + 6);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v41 = v51.__r_.__value_.__r.__words[0];
  }

  if (v40)
  {
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v52;
    }

    else
    {
      v42 = v52.__r_.__value_.__r.__words[0];
    }

    memmove(v41, v42, v40);
  }

  memset(v41 + v40, 48, 6);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v61;
  }

  else
  {
    v43 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v61.__r_.__value_.__l.__size_;
  }

  v45 = std::string::append(&v51, v43, v44);
  v46 = *&v45->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  UC::SUE::UCSegmentedURLEncodingResult::setEncodingBits(a3, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v61.__r_.__value_.__r.__words[0] = v54;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v47 = v59;
  v59 = 0;
  if (v47)
  {
    std::default_delete<UC::SUE::UCSegmentedURLEncodingResult::HostResult>::operator()[abi:ne200100](&v59, v47);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v56);
  }
}

void tokenizeString(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = a2;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v13, a1, 24);
    __p = 0uLL;
    v12 = 0;
    while (1)
    {
      v5 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v13, &__p, v3);
      if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
      {
        break;
      }

      std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    v13.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
    v6 = *(MEMORY[0x277D82818] + 72);
    *(v13.__r_.__value_.__r.__words + *(v13.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v13.__r_.__value_.__r.__words[2] = v6;
    v14 = MEMORY[0x277D82878] + 16;
    if (v16 < 0)
    {
      operator delete(v15[7].__locale_);
    }

    v14 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v15);
    std::iostream::~basic_iostream();
    MEMORY[0x27439D8A0](&v17);
  }

  else
  {
    v7 = *(a1 + 23);
    if (v7 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 23);
    }

    else
    {
      v9 = *(a1 + 8);
    }

    for (; v9; --v9)
    {
      v10 = *v8;
      memset(&v13, 0, sizeof(v13));
      std::string::push_back(&v13, v10);
      std::vector<std::string>::push_back[abi:ne200100](a3, &v13);
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      ++v8;
    }
  }
}

uint64_t std::allocate_shared[abi:ne200100]<std::vector<std::string>,std::allocator<std::vector<std::string>>,std::vector<std::string> const&,0>@<X0>(__int128 **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  result = std::__shared_ptr_emplace<std::vector<std::string>>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::string> const&,std::allocator<std::vector<std::string>>,0>(v4, a1);
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t std::__shared_ptr_emplace<std::vector<std::string>>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::string> const&,std::allocator<std::vector<std::string>>,0>(uint64_t a1, __int128 **a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_28803D520;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 24), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

void std::__shared_ptr_emplace<std::unordered_map<int,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28803D950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

char *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,std::pair<int const,std::string>>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = *a2;
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = *(v10 + 1);
          if (v11 == v6)
          {
            if (*(v10 + 4) == v6)
            {
              return v10;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v3)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  v10 = operator new(0x30uLL);
  *v10 = 0;
  *(v10 + 1) = v6;
  *(v10 + 4) = *a3;
  *(v10 + 24) = *(a3 + 8);
  *(v10 + 5) = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v3);
  if (v19)
  {
    *v10 = *v19;
LABEL_38:
    *v19 = v10;
    goto LABEL_39;
  }

  *v10 = *(a1 + 16);
  *(a1 + 16) = v10;
  *(v18 + 8 * v3) = a1 + 16;
  if (*v10)
  {
    v20 = *(*v10 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v20 >= v7)
      {
        v20 %= v7;
      }
    }

    else
    {
      v20 &= v7 - 1;
    }

    v19 = (*a1 + 8 * v20);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v10;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, a3);
  return a1;
}

void sub_2702F8B80(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x27439D8A0](v1);
  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x27439D780](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_2702F8D0C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2702F8CCCLL);
  }

  __cxa_rethrow();
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void UC::SplitString(unsigned __int8 *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  memset(&v9, 0, sizeof(v9));
  if (!a2)
  {
    goto LABEL_12;
  }

  v6 = a2;
  do
  {
    v8 = *a1;
    if (v8 == a3)
    {
      std::vector<std::string>::push_back[abi:ne200100](a4, &v9);
      MEMORY[0x27439D6B0](&v9, "");
    }

    else
    {
      std::string::push_back(&v9, v8);
    }

    ++a1;
    --v6;
  }

  while (v6);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v9.__r_.__value_.__l.__size_)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*(&v9.__r_.__value_.__s + 23))
  {
LABEL_11:
    std::vector<std::string>::push_back[abi:ne200100](a4, &v9);
  }

LABEL_12:
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_2702F958C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *UC::JoinString@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v2 = result->__r_.__value_.__r.__words[0];
  size = result->__r_.__value_.__l.__size_;
  if (result->__r_.__value_.__r.__words[0] != size)
  {
    do
    {
      v5 = *(v2 + 23);
      if (v5 >= 0)
      {
        v6 = v2;
      }

      else
      {
        v6 = *v2;
      }

      if (v5 >= 0)
      {
        v7 = *(v2 + 23);
      }

      else
      {
        v7 = *(v2 + 8);
      }

      result = std::string::append(a2, v6, v7);
      v2 += 24;
    }

    while (v2 != size);
  }

  return result;
}

void sub_2702F9614(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t UC::IsAllDigits(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - 1;
  do
  {
    v3 = *a1++;
    v4 = (v3 - 48) < 0xA;
  }

  while ((v3 - 48) <= 9 && v2-- != 0);
  return v4;
}

uint64_t UC::UCFixedLengthCoder::UCFixedLengthCoder(uint64_t result, char a2, void *a3)
{
  *result = &unk_28803D9C8;
  *(result + 8) = a2;
  v3 = a3[1];
  *(result + 16) = *a3;
  *(result + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 32) = 0;
  return result;
}

void UC::UCFixedLengthCoder::_initializeForEncoding(UC::UCFixedLengthCoder *this)
{
  v1 = (this + 32);
  if (!*(this + 4))
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    std::unique_ptr<std::unordered_map<std::string,std::string>>::reset[abi:ne200100](v1, v3);
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*(*(this + 2) + 8) - **(this + 2)) >> 3);
    if (v4)
    {
      v5 = 0;
      v6 = v4;
      do
      {
        v7 = *(this + 2);
        v8 = *v7;
        if (0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 3) <= v5)
        {
          std::vector<std::string>::__throw_out_of_range[abi:ne200100]();
        }

        v9 = *(this + 4);
        v10 = *(this + 8);
        __p[1] = 0;
        v15 = 0;
        __p[0] = 0;
        if (v10)
        {
          v11 = 0;
          v12 = v5;
          do
          {
            v19 = 1;
            if (v12)
            {
              v13 = 49;
            }

            else
            {
              v13 = 48;
            }

            LOWORD(v18) = v13;
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v18, __p, &v16);
            if (SHIBYTE(v15) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = v16;
            v15 = v17;
            if (v19 < 0)
            {
              operator delete(v18);
            }

            v12 >>= 1;
            ++v11;
          }

          while (v11 < v10);
        }

        std::unordered_map<std::string,std::string>::insert_or_assign[abi:ne200100]<std::string>(v9, (v8 + 24 * v5), __p);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }

        ++v5;
      }

      while (v5 != v6);
    }
  }
}

void sub_2702F9828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::unordered_map<std::string,std::string>::insert_or_assign[abi:ne200100]<std::string>(uint64_t a1, const void **a2, __n128 *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string const&,std::string>(a1, a2, a2, a3);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    if (*(v4 + 63) < 0)
    {
      operator delete(v4[5]);
    }

    v7 = *a3;
    v5[7] = a3[1].n128_u64[0];
    *(v5 + 5) = v7;
    a3[1].n128_u8[7] = 0;
    a3->n128_u8[0] = 0;
  }

  return v5;
}

void UC::UCFixedLengthCoder::encode(UC::UCFixedLengthCoder *a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  UC::UCFixedLengthCoder::_initializeForEncoding(a1);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(*(a1 + 4), a2);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (*(v6 + 63) < 0)
  {
    v8 = v6[5];
    v9 = v6[6];

    std::string::__init_copy_ctor_external(a3, v8, v9);
  }

  else
  {
    v7 = *(v6 + 5);
    a3->__r_.__value_.__r.__words[2] = v6[7];
    *&a3->__r_.__value_.__l.__data_ = v7;
  }
}

void UC::UCFixedLengthCoder::encode(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      (*(*a1 + 32))(__p, a1, v3);
      if ((v10 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if ((v10 & 0x80u) == 0)
      {
        v8 = v10;
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a3, v7, v8);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v3 += 24;
    }

    while (v3 != v4);
  }
}

void sub_2702F9A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void UC::UCFixedLengthCoder::decode(UC::UCBitStream *this@<X1>, uint64_t a2@<X0>, const void **a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  while (UC::UCBitStream::hasMore(this))
  {
    (*(*a2 + 56))(__p, a2, this);
    v8 = v16;
    v9 = *(a3 + 23);
    v10 = v9;
    if (v9 < 0)
    {
      v9 = a3[1];
    }

    if ((v16 & 0x80u) == 0)
    {
      v11 = v16;
    }

    else
    {
      v11 = __p[1];
    }

    if ((v16 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v11 == v9 && (v10 >= 0 ? (v13 = a3) : (v13 = *a3), !memcmp(v12, v13, v11)))
    {
      v14 = 0;
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_17;
      }

LABEL_20:
      operator delete(__p[0]);
      if ((v14 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      std::string::append(a4, v12, v11);
      v14 = 1;
      if ((v16 & 0x80) != 0)
      {
        goto LABEL_20;
      }

LABEL_17:
      if ((v14 & 1) == 0)
      {
        return;
      }
    }
  }
}

void sub_2702F9B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void UC::UCFixedLengthCoder::decodeNextSymbol(UC::UCFixedLengthCoder *this@<X0>, UC::UCBitStream *a2@<X1>, std::string *a3@<X8>)
{
  if (*(this + 8))
  {
    v6 = 0;
    LODWORD(v7) = 0;
    while (UC::UCBitStream::hasMore(a2))
    {
      v7 = UC::UCBitStream::readNextBit(a2) | (2 * v7);
      if (++v6 >= *(this + 8))
      {
        goto LABEL_7;
      }
    }

    goto LABEL_13;
  }

  v7 = 0;
LABEL_7:
  v8 = **(this + 2);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(this + 2) + 8) - v8) >> 3) <= v7)
  {
LABEL_13:
    exception = __cxa_allocate_exception(0x38uLL);
    UC::Exception::InvalidDecodingSymbolInstruction::InvalidDecodingSymbolInstruction(exception, "", 0, "Decoder encountered an invalid symbol instruction. The encoding bit stream is invalid", 85);
  }

  v9 = (v8 + 24 * v7);
  if (*(v9 + 23) < 0)
  {
    v11 = *v9;
    v12 = *(v9 + 1);

    std::string::__init_copy_ctor_external(a3, v11, v12);
  }

  else
  {
    v10 = *v9;
    a3->__r_.__value_.__r.__words[2] = *(v9 + 2);
    *&a3->__r_.__value_.__l.__data_ = v10;
  }
}

uint64_t UC::UCFixedLengthCoder::canEncode(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 1;
  }

  do
  {
    result = (*(*a1 + 24))(a1, v2);
    v2 += 24;
    if (result)
    {
      v6 = v2 == v3;
    }

    else
    {
      v6 = 1;
    }
  }

  while (!v6);
  return result;
}

void UC::UCFixedLengthCoder::~UCFixedLengthCoder(UC::UCFixedLengthCoder *this)
{
  *this = &unk_28803D9C8;
  std::unique_ptr<std::unordered_map<std::string,std::string>>::reset[abi:ne200100](this + 4, 0);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  *this = &unk_28803D9C8;
  std::unique_ptr<std::unordered_map<std::string,std::string>>::reset[abi:ne200100](this + 4, 0);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(this);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string const&,std::string>(uint64_t a1, const void **a2, uint64_t a3, __n128 *a4)
{
  v9 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v11)
      {
        v4 = v9 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v4)
          {
            break;
          }
        }
      }
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::string const&,std::string>(a1, v10, a3, a4, v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    i = v28[0];
    *v28[0] = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28[0];
    *v28[0] = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v4) = a1 + 16;
    i = v28[0];
    if (*v28[0])
    {
      v26 = *(*v28[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28[0];
      i = v28[0];
    }
  }

  v28[0] = 0;
  ++*(a1 + 24);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v28);
  return i;
}

void sub_2702FA0D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::string const&,std::string>@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x40uLL);
  v11 = v10;
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  *(v10 + 1) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v10 + 16), *a3, *(a3 + 8));
  }

  else
  {
    *(v10 + 1) = *a3;
    *(v10 + 4) = *(a3 + 16);
  }

  result = *a4;
  *(v11 + 40) = *a4;
  *(v11 + 7) = a4[1].n128_u64[0];
  a4->n128_u64[1] = 0;
  a4[1].n128_u64[0] = 0;
  a4->n128_u64[0] = 0;
  *(a5 + 16) = 1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}