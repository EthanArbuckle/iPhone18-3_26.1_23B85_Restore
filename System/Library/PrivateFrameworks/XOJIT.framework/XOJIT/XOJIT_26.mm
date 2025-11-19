const void *llvm::MCContext::getXCOFFSection(uint64_t a1, void *a2, size_t a3, uint64_t a4, char a5, int a6, uint64_t a7, uint64_t a8)
{
  if ((a8 & 0x100000000) == 0)
  {
    if (a2)
    {
      std::string::basic_string[abi:nn200100](&v26, a2, a3);
      v12 = HIBYTE(v28);
      v14 = v26;
      v13 = v27;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v12 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    if ((v12 & 0x80u) == 0)
    {
      v18 = &v26;
    }

    else
    {
      v18 = v14;
    }

    if ((v12 & 0x80u) == 0)
    {
      v19 = v12;
    }

    else
    {
      v19 = v13;
    }

    if (v19 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v19 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v30) = v19;
      if (v19)
      {
        memmove(&__dst, v18, v19);
      }

      *(&__dst + v19) = 0;
      LOBYTE(v31) = a5;
      v20 = 1;
      goto LABEL_34;
    }

LABEL_55:
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (a2)
  {
    std::string::basic_string[abi:nn200100](&v33, a2, a3);
    v15 = HIBYTE(v35);
    v17 = v33;
    v16 = v34;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  if ((v15 & 0x80u) == 0)
  {
    v21 = &v33;
  }

  else
  {
    v21 = v17;
  }

  if ((v15 & 0x80u) == 0)
  {
    v22 = v15;
  }

  else
  {
    v22 = v16;
  }

  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_55;
  }

  if (v22 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v30) = v22;
  if (v22)
  {
    memmove(&__dst, v21, v22);
  }

  v20 = 0;
  *(&__dst + v22) = 0;
  v31 = a8;
LABEL_34:
  v32 = v20;
  *__p = __dst;
  v37 = v30;
  __dst = 0uLL;
  v30 = 0;
  v38 = v31;
  v39 = v20;
  v40 = 0;
  v23 = *(a1 + 1880);
  if (!v23)
  {
LABEL_40:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v24 = v23;
      if (!llvm::MCContext::XCOFFSectionKey::operator<(__p, v23 + 4))
      {
        break;
      }

      v23 = *v24;
      if (!*v24)
      {
        goto LABEL_40;
      }
    }

    if (!llvm::MCContext::XCOFFSectionKey::operator<(v24 + 4, __p))
    {
      break;
    }

    v23 = v24[1];
    if (!v23)
    {
      goto LABEL_40;
    }
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__dst);
    if ((a8 & 0x100000000) == 0)
    {
LABEL_45:
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v26);
      }

      goto LABEL_52;
    }
  }

  else if ((a8 & 0x100000000) == 0)
  {
    goto LABEL_45;
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

LABEL_52:
  if (*(v24[8] + 264) != a6)
  {
    llvm::report_fatal_error("section's multiply symbols policy does not match", 1);
  }

  return v24[8];
}

void llvm::MCContext::getSPIRVSection(llvm::MCContext *this)
{
  v1 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(this + 760, 224, 3);
  llvm::MCSection::MCSection(v1, 6, &str_25, 0, 2, 0);
  *v2 = &unk_2883F02B8;
  operator new();
}

uint64_t llvm::MCContext::getDXContainerSection(uint64_t a1, uint64_t *a2, unint64_t a3, int a4)
{
  v6 = llvm::StringMap<llvm::MCSectionMachO *,llvm::MallocAllocator>::try_emplace<>((a1 + 1896), a2, a3);
  v7 = *v6;
  if (v8)
  {
    v9 = v6;
    v10 = *v7;
    v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1 + 376, 224, 3);
    llvm::MCSection::MCSection(v11, 7, (v7 + 2), v10, a4, 0);
    *v12 = &unk_2883F0400;
    (*v9)[1] = v12;
    operator new();
  }

  return v7[1];
}

void llvm::MCContext::getDwarfFile(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned int a10)
{
  v23 = *MEMORY[0x277D85DE8];
  v18[0] = a2;
  v18[1] = a3;
  v17[0] = a4;
  v17[1] = a5;
  *&v19 = &a10;
  v15 = std::__tree<std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::MCDwarfLineTable>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 1560, &a10);
  v21 = *a7;
  v22 = *(a7 + 16);
  v19 = *a8;
  v20 = *(a8 + 16);
  llvm::MCDwarfLineTableHeader::tryGetFile((v15 + 5), v18, v17, &v21, &v19, *(a1 + 1712), a6, a9);
  v16 = *MEMORY[0x277D85DE8];
}

BOOL llvm::MCContext::isValidDwarfFileNumber(llvm::MCContext *this, unsigned int a2, unsigned int a3)
{
  v9 = a3;
  v10 = &v9;
  v5 = std::__tree<std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::MCDwarfLineTable>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 1560, &v9);
  if (!a2)
  {
    return *(this + 856) > 4u;
  }

  if (*(v5 + 36) <= a2)
  {
    return 0;
  }

  v6 = v5[17] + 72 * a2;
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    v7 = *(v6 + 8);
  }

  return v7 != 0;
}

uint64_t llvm::MCContext::getCVContext(llvm::MCContext *this)
{
  result = *(this + 22);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t std::function<void ()(llvm::SMDiagnostic const&,BOOL,llvm::SourceMgr const&,std::vector<llvm::MDNode const*> &)>::operator()(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::MCContext::reportCommon(v5);
}

void llvm::MCContext::reportCommon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[21] = *MEMORY[0x277D85DE8];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if (a2)
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v4 = *(a1 + 80);
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
    v4 = v7;
  }

  v12 = 0;
  *v10 = 0uLL;
  v11 = 0uLL;
  v9 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  __p = 0uLL;
  v17 = 0;
  v18[0] = v19;
  v18[1] = 0x400000000;
  std::function<void ()(llvm::SMDiagnostic &,llvm::SourceMgr const*)>::operator()(a3, &v9, v4);
  std::function<void ()(llvm::SMDiagnostic const&,BOOL,llvm::SourceMgr const&,std::vector<llvm::MDNode const*> &)>::operator()(a1 + 112, &v9, v5);
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(v18);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(*(&v14 + 1));
  }

  if (SBYTE7(v14) < 0)
  {
    operator delete(v13);
  }

  if (SBYTE7(v11) < 0)
  {
    operator delete(v10[0]);
  }

  llvm::SourceMgr::~SourceMgr(v7);
  v6 = *MEMORY[0x277D85DE8];
}

_DWORD *std::function<void ()(llvm::SMDiagnostic &,llvm::SourceMgr const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2, &v7);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::init(v5, v6);
}

_DWORD *llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::init(_DWORD *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    result[4] = v4;
    result = operator new(16 * v4, 8uLL);
    *v2 = result;
    *(v2 + 1) = 0;
    v5 = v2[4];
    if (v5)
    {
      v6 = 16 * v5;
      do
      {
        *result = xmmword_2750C1220;
        result += 4;
        v6 -= 16;
      }

      while (v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    result[4] = 0;
  }

  return result;
}

void std::__tree<std::__value_type<llvm::MCSymbol *,llvm::MCPseudoProbeInlineTree>,std::__map_value_compare<llvm::MCSymbol *,std::__value_type<llvm::MCSymbol *,llvm::MCPseudoProbeInlineTree>,std::less<llvm::MCSymbol *>,true>,std::allocator<std::__value_type<llvm::MCSymbol *,llvm::MCPseudoProbeInlineTree>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<llvm::MCSymbol *,llvm::MCPseudoProbeInlineTree>,std::__map_value_compare<llvm::MCSymbol *,std::__value_type<llvm::MCSymbol *,llvm::MCPseudoProbeInlineTree>,std::less<llvm::MCSymbol *>,true>,std::allocator<std::__value_type<llvm::MCSymbol *,llvm::MCPseudoProbeInlineTree>>>::destroy(*a1);
    std::__tree<std::__value_type<llvm::MCSymbol *,llvm::MCPseudoProbeInlineTree>,std::__map_value_compare<llvm::MCSymbol *,std::__value_type<llvm::MCSymbol *,llvm::MCPseudoProbeInlineTree>,std::less<llvm::MCSymbol *>,true>,std::allocator<std::__value_type<llvm::MCSymbol *,llvm::MCPseudoProbeInlineTree>>>::destroy(a1[1]);
    v2 = a1[10];
    if (v2)
    {
      a1[11] = v2;
      operator delete(v2);
    }

    std::__hash_table<std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,std::__unordered_map_hasher<std::tuple<unsigned long long,unsigned int>,std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,llvm::MCPseudoProbeInlineTreeBase<llvm::MCPseudoProbe,llvm::MCPseudoProbeInlineTree>::InlineSiteHash,std::equal_to<std::tuple<unsigned long long,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<unsigned long long,unsigned int>,std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,std::equal_to<std::tuple<unsigned long long,unsigned int>>,llvm::MCPseudoProbeInlineTreeBase<llvm::MCPseudoProbe,llvm::MCPseudoProbeInlineTree>::InlineSiteHash,true>,std::allocator<std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>>>::~__hash_table((a1 + 5));

    operator delete(a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,std::__unordered_map_hasher<std::tuple<unsigned long long,unsigned int>,std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,llvm::MCPseudoProbeInlineTreeBase<llvm::MCPseudoProbe,llvm::MCPseudoProbeInlineTree>::InlineSiteHash,std::equal_to<std::tuple<unsigned long long,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<unsigned long long,unsigned int>,std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,std::equal_to<std::tuple<unsigned long long,unsigned int>>,llvm::MCPseudoProbeInlineTreeBase<llvm::MCPseudoProbe,llvm::MCPseudoProbeInlineTree>::InlineSiteHash,true>,std::allocator<std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,std::__unordered_map_hasher<std::tuple<unsigned long long,unsigned int>,std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,llvm::MCPseudoProbeInlineTreeBase<llvm::MCPseudoProbe,llvm::MCPseudoProbeInlineTree>::InlineSiteHash,std::equal_to<std::tuple<unsigned long long,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<unsigned long long,unsigned int>,std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,std::equal_to<std::tuple<unsigned long long,unsigned int>>,llvm::MCPseudoProbeInlineTreeBase<llvm::MCPseudoProbe,llvm::MCPseudoProbeInlineTree>::InlineSiteHash,true>,std::allocator<std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,std::__unordered_map_hasher<std::tuple<unsigned long long,unsigned int>,std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,llvm::MCPseudoProbeInlineTreeBase<llvm::MCPseudoProbe,llvm::MCPseudoProbeInlineTree>::InlineSiteHash,std::equal_to<std::tuple<unsigned long long,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<unsigned long long,unsigned int>,std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,std::equal_to<std::tuple<unsigned long long,unsigned int>>,llvm::MCPseudoProbeInlineTreeBase<llvm::MCPseudoProbe,llvm::MCPseudoProbeInlineTree>::InlineSiteHash,true>,std::allocator<std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      v2[4] = 0;
      if (v4)
      {
        v5 = *(v4 + 40);
        if (v5)
        {
          *(v4 + 48) = v5;
          operator delete(v5);
        }

        v6 = std::__hash_table<std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,std::__unordered_map_hasher<std::tuple<unsigned long long,unsigned int>,std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,llvm::MCPseudoProbeInlineTreeBase<llvm::MCPseudoProbe,llvm::MCPseudoProbeInlineTree>::InlineSiteHash,std::equal_to<std::tuple<unsigned long long,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<unsigned long long,unsigned int>,std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,std::equal_to<std::tuple<unsigned long long,unsigned int>>,llvm::MCPseudoProbeInlineTreeBase<llvm::MCPseudoProbe,llvm::MCPseudoProbeInlineTree>::InlineSiteHash,true>,std::allocator<std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>>>::~__hash_table(v4);
        MEMORY[0x277C69E40](v6, 0x10A0C40C01AB3A7);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

llvm::raw_ostream *llvm::MCSectionGOFF::printSwitchToSection(uint64_t a1, int a2, int a3, llvm::raw_ostream *this)
{
  v6 = *(this + 4);
  if ((*(this + 3) - v6) > 0xA)
  {
    *(v6 + 7) = 571043439;
    *v6 = *"\t.section\t";
    *(this + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(this, "\t.section\t", 0xBuLL);
  }

  result = llvm::raw_ostream::operator<<(this, *(a1 + 200), *(a1 + 208));
  v8 = *(result + 4);
  if (*(result + 3) - v8 > 1uLL)
  {
    *v8 = 2594;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "\n", 2uLL);
  }

  return result;
}

uint64_t std::__function::__func<void (*)(llvm::SMDiagnostic const&,BOOL,llvm::SourceMgr const&,std::vector<llvm::MDNode const*> &),std::allocator<void (*)(llvm::SMDiagnostic const&,BOOL,llvm::SourceMgr const&,std::vector<llvm::MDNode const*> &)>,void ()(llvm::SMDiagnostic const&,BOOL,llvm::SourceMgr const&,std::vector<llvm::MDNode const*> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883F02E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::SMDiagnostic const&,BOOL,llvm::SourceMgr const&,std::vector<llvm::MDNode const*> &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::string const>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string const>,std::greater<void>,true>,std::allocator<std::__value_type<std::string,std::string const>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string const>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string const>,std::greater<void>,true>,std::allocator<std::__value_type<std::string,std::string const>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string const>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string const>,std::greater<void>,true>,std::allocator<std::__value_type<std::string,std::string const>>>::destroy(*(a1 + 1));
    if (a1[79] < 0)
    {
      operator delete(*(a1 + 7));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::MCDwarfLineTable>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::MCDwarfLineTable>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::MCDwarfLineTable>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 65);
    if (v2)
    {
      v3 = *(a1 + 66);
      v4 = *(a1 + 65);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 24);
          if (v5)
          {
            *(v3 - 16) = v5;
            operator delete(v5);
          }

          v3 -= 32;
        }

        while (v3 != v2);
        v4 = *(a1 + 65);
      }

      *(a1 + 66) = v2;
      operator delete(v4);
    }

    MEMORY[0x277C69E30](*(a1 + 62), 8);
    if (a1[439] < 0)
    {
      operator delete(*(a1 + 52));
    }

    if (a1[415] < 0)
    {
      operator delete(*(a1 + 49));
    }

    llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap((a1 + 368));
    v6 = *(a1 + 17);
    v7 = *(a1 + 36);
    if (v7)
    {
      v8 = &v6[72 * v7 - 72];
      v9 = -72 * v7;
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        v8 -= 72;
        v9 += 72;
      }

      while (v9);
      v6 = *(a1 + 17);
    }

    if (v6 != a1 + 152)
    {
      free(v6);
    }

    v10 = *(a1 + 6);
    v11 = *(a1 + 14);
    if (v11)
    {
      v12 = &v10[24 * v11 - 1];
      v13 = -24 * v11;
      v14 = v12;
      do
      {
        v15 = *v14;
        v14 -= 24;
        if (v15 < 0)
        {
          operator delete(*(v12 - 23));
        }

        v12 = v14;
        v13 += 24;
      }

      while (v13);
      v10 = *(a1 + 6);
    }

    if (v10 != a1 + 64)
    {
      free(v10);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*a1);
    std::__tree<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::__map_value_compare<llvm::MCContext::ELFSectionKey,std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>,std::less<llvm::MCContext::ELFSectionKey>,true>,std::allocator<std::__value_type<llvm::MCContext::ELFSectionKey,llvm::MCSectionELF *>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::clear(_DWORD *result)
{
  if (*(result + 1))
  {
    v1 = result[4];
    if (v1 <= 4 * result[2] || v1 < 0x41)
    {
      if (v1)
      {
        v2 = *result;
        v3 = 16 * v1;
        do
        {
          *v2++ = xmmword_2750C1220;
          v3 -= 16;
        }

        while (v3);
      }

      *(result + 1) = 0;
    }

    else
    {
      return llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::shrink_and_clear(result);
    }
  }

  return result;
}

_DWORD *llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::shrink_and_clear(_DWORD *result)
{
  v1 = result;
  v2 = result[4];
  v3 = result[2];
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    *(result + 1) = 0;
    if (v2)
    {
      v6 = *result;
      v7 = 16 * v2;
      do
      {
        *v6++ = xmmword_2750C1220;
        v7 -= 16;
      }

      while (v7);
    }
  }

  else
  {
    MEMORY[0x277C69E30](*result, 8);

    return llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::init(v1, v5);
  }

  return result;
}

uint64_t *llvm::StringMap<llvm::MCSymbol *,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul> &>::try_emplace<>(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v6 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v6);
  v8 = *i;
  if (*i == -8)
  {
    --*(a1 + 16);
  }

  else if (v8)
  {
    while (!v8 || v8 == -8)
    {
      v9 = i[1];
      ++i;
      v8 = v9;
    }

    return i;
  }

  v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*(a1 + 24), a3 + 17, 3);
  v11 = v10;
  v12 = v10 + 16;
  if (a3)
  {
    memcpy((v10 + 16), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  v11[1] = 0;
  *i = v11;
  ++*(a1 + 12);
    ;
  }

  return i;
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3)
{
  v6 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v6);
  v8 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v8)
  {
    while (!v8 || v8 == -8)
    {
      v9 = i[1];
      ++i;
      v8 = v9;
    }

    return i;
  }

  v10 = operator new(a3 + 17, 8uLL);
  v11 = v10;
  v12 = v10 + 16;
  if (a3)
  {
    memcpy(v10 + 16, a2, a3);
  }

  v12[a3] = 0;
  *v11 = a3;
  *(v11 + 2) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

unint64_t *llvm::StringMap<BOOL,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul> &>::try_emplace<BOOL>(uint64_t a1, uint64_t *a2, unint64_t a3, _BYTE *a4)
{
  v8 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v8);
  v10 = *i;
  if (*i == -8)
  {
    --*(a1 + 16);
  }

  else if (v10)
  {
    while (!v10 || v10 == -8)
    {
      v11 = i[1];
      ++i;
      v10 = v11;
    }

    return i;
  }

  v12 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*(a1 + 24), a3 + 17, 3);
  v13 = v12;
  v14 = v12 + 16;
  if (a3)
  {
    memcpy((v12 + 16), a2, a3);
  }

  *(v14 + a3) = 0;
  *v13 = a3;
  *(v13 + 8) = *a4;
  *i = v13;
  ++*(a1 + 12);
    ;
  }

  return i;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>,unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>::FindAndConstruct(uint64_t *a1, _DWORD *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>,unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v7);
    *inserted = *a2;
    *(inserted + 1) = 0;
  }

  return inserted;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>,unsigned int,llvm::MCLabel *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::MCLabel *>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>,std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>::FindAndConstruct(uint64_t *a1, _DWORD *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>,std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>,std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>::InsertIntoBucketImpl<std::pair<unsigned int,unsigned int>>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = a2[1];
    *(v5 + 1) = 0;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>,std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = a2[1];
    v6 = ((37 * v5) | ((37 * *a2) << 32)) + ~((37 * v5) << 32);
    v7 = (v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13);
    v8 = (9 * (v7 ^ (v7 >> 8))) ^ ((9 * (v7 ^ (v7 >> 8))) >> 15);
    v9 = ((v8 + ~(v8 << 27)) >> 31) ^ (v8 + ~(v8 << 27));
    v10 = v3 - 1;
    v11 = (v3 - 1) & v9;
    v12 = (*a1 + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    if (*a2 == *v12 && v5 == v14)
    {
      result = 1;
    }

    else
    {
      v16 = 0;
      v17 = 1;
      result = 1;
      while (v13 != -1 || v14 != -1)
      {
        if (v16)
        {
          v19 = 0;
        }

        else
        {
          v19 = v14 == -2;
        }

        if (v19 && v13 == -2)
        {
          v16 = v12;
        }

        v21 = v11 + v17++;
        v11 = v21 & v10;
        v12 = (v4 + 16 * (v21 & v10));
        v13 = *v12;
        v14 = v12[1];
        if (*a2 == *v12 && v5 == v14)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v16)
      {
        v12 = v16;
      }
    }
  }

  else
  {
    v12 = 0;
    result = 0;
  }

LABEL_9:
  *a3 = v12;
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>,std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>::InsertIntoBucketImpl<std::pair<unsigned int,unsigned int>>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>,std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>(a1, a3, &v10);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1 || a4[1] != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -1;
        }

        if (v17.i8[4])
        {
          *v16 = -1;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *(v19 + 4);
        if ((*v19 != -1 || v20 != -1) && (*v19 != -2 || v20 != -2))
        {
          v32 = 0;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>,std::pair<unsigned int,unsigned int>,llvm::MCSymbol *,llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,llvm::MCSymbol *>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>(a1, v19, &v32);
          v23 = v32;
          *v32 = *v19;
          v23[1] = *(v19 + 4);
          *(v23 + 1) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = v24 + 0xFFFFFFFFFFFFFFFLL;
    v27 = v26 & 0xFFFFFFFFFFFFFFFLL;
    v28 = (v26 & 0xFFFFFFFFFFFFFFFLL) - (v26 & 1) + 2;
    v29 = vdupq_n_s64(v27);
    v30 = result + 16;
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v25), xmmword_2750C1210)));
      if (v31.i8[0])
      {
        *(v30 - 2) = -1;
      }

      if (v31.i8[4])
      {
        *v30 = -1;
      }

      v25 += 2;
      v30 += 4;
    }

    while (v28 != v25);
  }

  return result;
}

BOOL llvm::MCContext::ELFSectionKey::operator<(const void **a1, const void **a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  if (v2 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v3 == v6 && !memcmp(v5, v7, v3))
  {
    v14 = a1[3];
    v13 = a1[4];
    v16 = a2[3];
    v15 = a2[4];
    if (v13 == v15 && (!v13 || !memcmp(a1[3], a2[3], a1[4])))
    {
      v17 = llvm::StringRef::compare((a1 + 5), a2[5], a2[6]);
      if (!v17)
      {
        return *(a1 + 14) < *(a2 + 14);
      }
    }

    else
    {
      v18[0] = v14;
      v18[1] = v13;
      v17 = llvm::StringRef::compare(v18, v16, v15);
    }

    return v17 >> 31;
  }

  if (v6 >= v3)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  v11 = memcmp(v5, v7, v10);
  if (v11)
  {
    return v11 < 0;
  }

  else
  {
    return v3 < v6;
  }
}

BOOL llvm::MCContext::ELFEntrySizeKey::operator<(const void **a1, const void **a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  if (v2 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v3 == v6 && !memcmp(v5, v7, v3))
  {
    v13 = *(a1 + 6);
    v14 = *(a2 + 6);
    v15 = v13 >= v14;
    if (v13 == v14)
    {
      v15 = *(a1 + 7) >= *(a2 + 7);
    }

    return !v15;
  }

  else
  {
    if (v6 >= v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = v6;
    }

    v11 = memcmp(v5, v7, v10);
    if (v11)
    {
      return v11 < 0;
    }

    else
    {
      return v3 < v6;
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,llvm::MCSectionGOFF *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::MCSectionGOFF *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::MCSectionGOFF *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

BOOL llvm::MCContext::COFFSectionKey::operator<(const void **a1, const void **a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  if (v2 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v3 == v6 && !memcmp(v5, v7, v3))
  {
    v14 = a1[3];
    v13 = a1[4];
    v16 = a2[3];
    v15 = a2[4];
    if (v13 == v15 && (!v13 || !memcmp(a1[3], a2[3], a1[4])))
    {
      v17 = *(a1 + 10);
      v18 = *(a2 + 10);
      if (v17 == v18)
      {
        return *(a1 + 11) < *(a2 + 11);
      }

      else
      {
        return v17 < v18;
      }
    }

    else
    {
      v19[0] = v14;
      v19[1] = v13;
      return llvm::StringRef::compare(v19, v16, v15) >> 31;
    }
  }

  else
  {
    if (v6 >= v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = v6;
    }

    v11 = memcmp(v5, v7, v10);
    if (v11)
    {
      return v11 < 0;
    }

    else
    {
      return v3 < v6;
    }
  }
}

BOOL llvm::MCContext::WasmSectionKey::operator<(const void **a1, const void **a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  if (v2 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v3 == v6 && !memcmp(v5, v7, v3))
  {
    v14 = a1[3];
    v13 = a1[4];
    v16 = a2[3];
    v15 = a2[4];
    if (v13 == v15 && (!v13 || !memcmp(a1[3], a2[3], a1[4])))
    {
      return *(a1 + 10) < *(a2 + 10);
    }

    else
    {
      v17[0] = v14;
      v17[1] = v13;
      return llvm::StringRef::compare(v17, v16, v15) >> 31;
    }
  }

  else
  {
    if (v6 >= v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = v6;
    }

    v11 = memcmp(v5, v7, v10);
    if (v11)
    {
      return v11 < 0;
    }

    else
    {
      return v3 < v6;
    }
  }
}

uint64_t llvm::MCContext::XCOFFSectionKey::operator<(const void **a1, const void **a2)
{
  result = *(a1 + 28);
  v5 = *(a2 + 28);
  if (result == 1 && (v5 & 1) != 0)
  {
    v6 = *(a2 + 23);
    v7 = *(a1 + 23);
    if (v7 >= 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = a1[1];
    }

    if (v7 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (v6 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = a2[1];
    }

    if (v6 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v10 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v10;
    }

    v13 = memcmp(v9, v11, v12);
    v14 = v8 < v10;
    if (v13)
    {
      v14 = v13 < 0;
    }

    if (!v14)
    {
      v15 = memcmp(v11, v9, v12);
      v16 = v10 < v8;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        return *(a1 + 24) < *(a2 + 24);
      }

      return 0;
    }

    return 1;
  }

  if (result != v5)
  {
    return result;
  }

  v17 = *(a2 + 23);
  v18 = *(a1 + 23);
  if (v18 >= 0)
  {
    v19 = *(a1 + 23);
  }

  else
  {
    v19 = a1[1];
  }

  if (v18 >= 0)
  {
    v20 = a1;
  }

  else
  {
    v20 = *a1;
  }

  if (v17 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = a2[1];
  }

  if (v17 >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = *a2;
  }

  if (v21 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  v24 = memcmp(v20, v22, v23);
  v25 = v19 < v21;
  if (v24)
  {
    v25 = v24 < 0;
  }

  if (v25)
  {
    return 1;
  }

  v26 = memcmp(v22, v20, v23);
  v27 = v21 < v19;
  if (v26)
  {
    v27 = v26 < 0;
  }

  if (v27)
  {
    return 0;
  }

  return *(a1 + 6) < *(a2 + 6);
}

__n128 std::__function::__func<llvm::MCContext::reportError(llvm::SMLoc,llvm::Twine const&)::$_0,std::allocator<llvm::MCContext::reportError(llvm::SMLoc,llvm::Twine const&)::$_0>,void ()(llvm::SMDiagnostic &,llvm::SourceMgr const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2883F0330;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::MCContext::reportError(llvm::SMLoc,llvm::Twine const&)::$_0,std::allocator<llvm::MCContext::reportError(llvm::SMLoc,llvm::Twine const&)::$_0>,void ()(llvm::SMDiagnostic &,llvm::SourceMgr const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v19[22] = *MEMORY[0x277D85DE8];
  llvm::SourceMgr::GetMessage(*a3, **(a1 + 8), 0, *(a1 + 16), 0, 0, 0, 0, &v8);
  *a2 = v8;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }

  *(a2 + 16) = v9;
  v4 = v10;
  HIBYTE(v10) = 0;
  LOBYTE(v9) = 0;
  v5 = v11;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v12;
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  *(a2 + 56) = v13;
  *(a2 + 72) = v14;
  HIBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  *(a2 + 80) = *v15;
  *(a2 + 96) = v16;
  HIBYTE(v16) = 0;
  LOBYTE(v15[0]) = 0;
  v6 = *(a2 + 104);
  if (v6)
  {
    *(a2 + 112) = v6;
    operator delete(v6);
  }

  *(a2 + 104) = *__p;
  *(a2 + 120) = v18;
  __p[1] = 0;
  v18 = 0;
  __p[0] = 0;
  llvm::SmallVectorImpl<llvm::SMFixIt>::operator=(a2 + 128, v19);
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(v19);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::SmallVectorImpl<llvm::SMFixIt>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2 + 16;
  v4 = *a2;
  if (*a2 == a2 + 16)
  {
    v10 = *(a2 + 8);
    v11 = *(a1 + 8);
    if (v11 >= v10)
    {
      v12 = *a1;
      if (v10)
      {
        v13 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::SMFixIt *,llvm::SMFixIt *,llvm::SMFixIt *>(v4, v4 + 40 * v10, v12);
        v12 = *a1;
        LODWORD(v11) = *(a1 + 8);
      }

      else
      {
        v13 = *a1;
      }

      for (i = v12 + 40 * v11; i != v13; i -= 40)
      {
        if (*(i - 1) < 0)
        {
          operator delete(*(i - 24));
        }
      }

      goto LABEL_23;
    }

    if (*(a1 + 12) >= v10)
    {
      if (v11)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::SMFixIt *,llvm::SMFixIt *,llvm::SMFixIt *>(v4, v4 + 40 * v11, *a1);
        goto LABEL_20;
      }
    }

    else
    {
      llvm::SmallVectorImpl<llvm::SMFixIt>::clear(a1);
      llvm::SmallVectorTemplateBase<llvm::SMFixIt,false>::grow(a1, v10);
    }

    v11 = 0;
LABEL_20:
    v14 = *(a2 + 8);
    if (v11 != v14)
    {
      v15 = *a2 + 40 * v14;
      v16 = *a1 + 40 * v11;
      v17 = *a2 + 40 * v11;
      do
      {
        *v16 = *v17;
        v18 = *(v17 + 16);
        *(v16 + 32) = *(v17 + 32);
        *(v16 + 16) = v18;
        *(v17 + 24) = 0;
        *(v17 + 32) = 0;
        *(v17 + 16) = 0;
        v16 += 40;
        v17 += 40;
      }

      while (v17 != v15);
    }

LABEL_23:
    *(a1 + 8) = v10;
    llvm::SmallVectorImpl<llvm::SMFixIt>::clear(a2);
    return a1;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v6 + 40 * v7 - 24;
    v9 = -40 * v7;
    do
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v8 -= 40;
      v9 += 40;
    }

    while (v9);
    v6 = *a1;
  }

  if (v6 != (a1 + 16))
  {
    free(v6);
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a2 = v5;
  *(a2 + 8) = 0;
  return a1;
}

void llvm::SmallVectorImpl<llvm::SMFixIt>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 40 * v2 - 24;
    v4 = -40 * v2;
    do
    {
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

      v3 -= 40;
      v4 += 40;
    }

    while (v4);
  }

  *(a1 + 8) = 0;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::SMFixIt *,llvm::SMFixIt *,llvm::SMFixIt *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      if (*(a3 + 39) < 0)
      {
        operator delete(*(a3 + 16));
      }

      v6 = *(v5 + 16);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 16) = v6;
      *(v5 + 39) = 0;
      *(v5 + 16) = 0;
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t std::__function::__value_func<void ()(llvm::SMDiagnostic &,llvm::SourceMgr const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void llvm::MCDwarfLineTableHeader::tryGetFile(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, unsigned int a6@<W5>, unsigned int a7@<W6>, uint64_t a8@<X8>)
{
  v89 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 375);
  if (v15 >= 0)
  {
    v16 = (a1 + 352);
  }

  else
  {
    v16 = *(a1 + 352);
  }

  v18 = *a2;
  v17 = *(a2 + 8);
  if (v15 >= 0)
  {
    v19 = *(a1 + 375);
  }

  else
  {
    v19 = *(a1 + 360);
  }

  if (v17 == v19 && (!v17 || !memcmp(*a2, v16, *(a2 + 8))))
  {
    v17 = 0;
    v18 = "";
    *a2 = "";
    *(a2 + 8) = 0;
  }

  if (!*(a3 + 8))
  {
    v17 = 0;
    *a3 = "<stdin>";
    *(a3 + 8) = 7;
    v18 = "";
    *a2 = "";
    *(a2 + 8) = 0;
  }

  v20 = *(a1 + 104);
  if (!v20)
  {
    v21 = *(a4 + 16);
    v22 = *(a1 + 449);
    if (!v21)
    {
      v22 = 0;
    }

    *(a1 + 449) = v22;
    *(a1 + 450) |= v21;
    *(a1 + 448) = *(a5 + 16);
  }

  if (a6 >= 5)
  {
    *__dst = *a4;
    __dst[16] = *(a4 + 16);
    v23 = *(a1 + 399);
    v24 = v23 >= 0 ? *(a1 + 399) : *(a1 + 384);
    if (v24 && v24 == *(a3 + 8))
    {
      v25 = v23 >= 0 ? (a1 + 376) : *(a1 + 376);
      if (!memcmp(v25, *a3, v24))
      {
        v51 = *(a1 + 420);
        if (v51 == __dst[16] && *(a1 + 420))
        {
          if (*(a1 + 404) != *__dst || *(a1 + 412) != *&__dst[8])
          {
            goto LABEL_27;
          }
        }

        else if (v51 != __dst[16])
        {
          goto LABEL_27;
        }

        *(a8 + 8) &= ~1u;
        *a8 = 0;
        goto LABEL_92;
      }
    }
  }

LABEL_27:
  v77 = a5;
  if (a7)
  {
LABEL_37:
    if (v20 <= a7)
    {
      v33 = a7 + 1;
      if (v20 != v33)
      {
        v34 = v20;
        if (v20 <= v33)
        {
          if (*(a1 + 108) >= v33)
          {
            v39 = *(a1 + 96);
          }

          else
          {
            *__dst = 0;
            v38 = (a1 + 112);
            v39 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1 + 96, (a1 + 112), a7 + 1, 72, __dst);
            v40 = *(a1 + 96);
            v41 = *(a1 + 104);
            if (v41)
            {
              v42 = &v40[72 * v41];
              v43 = v39;
              do
              {
                v44 = *v40;
                *(v43 + 2) = *(v40 + 2);
                *v43 = v44;
                *(v40 + 1) = 0;
                *(v40 + 2) = 0;
                *v40 = 0;
                v45 = *(v40 + 24);
                v46 = *(v40 + 40);
                *(v43 + 49) = *(v40 + 49);
                *(v43 + 40) = v46;
                *(v43 + 24) = v45;
                v43 += 72;
                v40 += 72;
              }

              while (v40 != v42);
              v40 = *(a1 + 96);
              v47 = *(a1 + 104);
              if (v47)
              {
                v48 = &v40[72 * v47 - 72];
                v49 = -72 * v47;
                do
                {
                  if (*(v48 + 23) < 0)
                  {
                    operator delete(*v48);
                  }

                  v48 -= 72;
                  v49 += 72;
                }

                while (v49);
                v40 = *(a1 + 96);
                v38 = (a1 + 112);
              }
            }

            v50 = *__dst;
            if (v40 != v38)
            {
              free(v40);
            }

            *(a1 + 96) = v39;
            *(a1 + 108) = v50;
            v34 = *(a1 + 104);
          }

          if (v33 != v34)
          {
            bzero(&v39[72 * v34], 72 * ((72 * (v33 - v34) - 72) / 0x48uLL) + 72);
          }
        }

        else
        {
          v35 = 9 * v20;
          v36 = *(a1 + 96) + 72 * v20 - 72;
          v37 = 72 * v33 - 8 * v35;
          do
          {
            if (*(v36 + 23) < 0)
            {
              operator delete(*v36);
            }

            v36 -= 72;
            v37 += 72;
          }

          while (v37);
        }

        *(a1 + 104) = v33;
      }
    }

    v53 = *(a1 + 96) + 72 * a7;
    if ((*(v53 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v53 + 8))
      {
LABEL_72:
        getErrorErrorCat();
        *__dst = 3;
        *&__dst[8] = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }
    }

    else if (*(v53 + 23))
    {
      goto LABEL_72;
    }

    if (*(a1 + 448) != *(v77 + 16))
    {
      getErrorErrorCat();
      *__dst = 3;
      *&__dst[8] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
    }

    if (!*(a2 + 8))
    {
      v54 = *a3;
      v55 = *(a3 + 8);
      *&__dst[16] = 0;
      v87[0] = 0;
      *__dst = v54;
      *&__dst[8] = v55;
      v87[1] = v55;
      v88 = 0;
      llvm::sys::path::reverse_iterator::operator++(__dst);
      v56 = v87[0];
      if (v87[0])
      {
        v57 = *&__dst[16];
        v58 = *a3;
        v59 = *(a3 + 8);
        if (v59 >= v60)
        {
          v61 = v60;
        }

        else
        {
          v61 = v59;
        }

        if (v60 == -1)
        {
          v61 = 0;
          v62 = 0;
        }

        else
        {
          v62 = v58;
        }

        *a2 = v62;
        *(a2 + 8) = v61;
        if (!v61)
        {
          v70 = 0;
          goto LABEL_100;
        }

        *a3 = v57;
        *(a3 + 8) = v56;
      }

      if (!*(a2 + 8))
      {
        v70 = 0;
        goto LABEL_100;
      }
    }

    v63 = 0xAAAAAAAAAAAAAAABLL * ((std::__find[abi:nn200100]<std::string *,std::string *,llvm::StringRef,std::__identity>(*(a1 + 8), (*(a1 + 8) + 24 * *(a1 + 16)), a2) - *(a1 + 8)) >> 3);
    if (*(a1 + 16) <= v63)
    {
      v64 = *(a2 + 8);
      if (v64 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_115;
      }

      v65 = *a2;
      if (v64 >= 0x17)
      {
        operator new();
      }

      __dst[23] = *(a2 + 8);
      if (v64)
      {
        memmove(__dst, v65, v64);
      }

      __dst[v64] = 0;
      v67 = llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(a1 + 8, __dst, 1);
      v68 = *(a1 + 8) + 24 * *(a1 + 16);
      v69 = *v67;
      *(v68 + 16) = *(v67 + 16);
      *v68 = v69;
      *(v67 + 8) = 0;
      *(v67 + 16) = 0;
      *v67 = 0;
      ++*(a1 + 16);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }
    }

    v70 = v63 + 1;
LABEL_100:
    v71 = *(a3 + 8);
    if (v71 <= 0x7FFFFFFFFFFFFFF7)
    {
      v72 = *a3;
      if (v71 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v71;
      if (v71)
      {
        memmove(__dst, v72, v71);
      }

      __dst[v71] = 0;
      if (*(v53 + 23) < 0)
      {
        operator delete(*v53);
      }

      *v53 = *__dst;
      *(v53 + 16) = *&__dst[16];
      *(v53 + 24) = v70;
      v73 = *a4;
      *(v53 + 44) = *(a4 + 16);
      *(v53 + 28) = v73;
      v74 = *(a4 + 16);
      v75 = *(a1 + 449);
      if (!v74)
      {
        v75 = 0;
      }

      *(a1 + 449) = v75;
      *(a1 + 450) |= v74;
      v76 = *v77;
      *(v53 + 64) = *(v77 + 16);
      *(v53 + 48) = v76;
      if (*(v77 + 16) == 1)
      {
        *(a1 + 448) = 1;
      }

      *(a8 + 8) &= ~1u;
      *a8 = a7;
      goto LABEL_92;
    }

LABEL_115:
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  *__dst = v87;
  if (v20 <= 1)
  {
    a7 = 1;
  }

  else
  {
    a7 = v20;
  }

  *&__dst[8] = xmmword_2750C12F0;
  v79[0] = v18;
  v79[1] = v17;
  v79[2] = 0;
  v80 = 1797;
  v27 = *a3;
  v26 = *(a3 + 8);
  v81[0] = v79;
  v81[2] = v27;
  v81[3] = v26;
  v82 = 1282;
  v83 = llvm::Twine::toStringRef(v81, __dst);
  v84 = v28;
  v85 = a7;
  v29 = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int>((a1 + 328), v83, v28, &v85);
  v31 = v30;
  if ((v30 & 1) == 0)
  {
    v32 = *v29;
    *(a8 + 8) &= ~1u;
    *a8 = *(v32 + 8);
  }

  if (*__dst != v87)
  {
    free(*__dst);
  }

  if (v31)
  {
    v20 = *(a1 + 104);
    goto LABEL_37;
  }

LABEL_92:
  v66 = *MEMORY[0x277D85DE8];
}

void llvm::MCGenDwarfLabelEntry::Make(_BYTE *a1, uint64_t a2, uint64_t *a3, char **a4)
{
  if (a1[8])
  {
    return;
  }

  v8 = *(a2 + 8);
  v9 = *(a2 + 152);
  v10 = v9 ? *(*(a2 + 144) + 32 * v9 - 32) : 0;
  v32 = 0;
  v33[0] = v10;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>((v8 + 1608), v33, &v32))
  {
    return;
  }

  if ((*a1 & 4) != 0)
  {
    v12 = *(a1 - 1);
    v11 = v12 + 2;
    v13 = *v12;
    if (*v12)
    {
      v14 = v12 + 17;
      if (*v11 == 95)
      {
        v11 = v14;
        v15 = v13 - 1;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = 0;
LABEL_13:
  v16 = *(v8 + 1604);
  v17 = *a4;
  BufferContainingLoc = llvm::SourceMgr::FindBufferContainingLoc(a3, v17);
  LineAndColumn = llvm::SourceMgr::getLineAndColumn(a3, v17, BufferContainingLoc);
  v33[0] = "tmp";
  v34 = 259;
  TempSymbol = llvm::MCContext::createTempSymbol(v8, v33, 1);
  (*(*a2 + 192))(a2, TempSymbol, 0);
  v21 = *(a2 + 8);
  v22 = v21[208];
  v23 = v21[209];
  if (v22 >= v23)
  {
    v25 = v21[207];
    v26 = v22 - v25;
    v27 = (v22 - v25) >> 5;
    v28 = v27 + 1;
    if ((v27 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v29 = v23 - v25;
    if (v29 >> 4 > v28)
    {
      v28 = v29 >> 4;
    }

    if (v29 >= 0x7FFFFFFFFFFFFFE0)
    {
      v30 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = v28;
    }

    if (v30)
    {
      if (!(v30 >> 59))
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v31 = 32 * v27;
    *v31 = v11;
    *(v31 + 8) = v15;
    *(v31 + 16) = v16;
    *(v31 + 20) = LineAndColumn;
    *(v31 + 24) = TempSymbol;
    v24 = 32 * v27 + 32;
    memcpy(0, v25, v26);
    v21[207] = 0;
    v21[208] = v24;
    v21[209] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v22 = v11;
    *(v22 + 8) = v15;
    *(v22 + 16) = v16;
    *(v22 + 20) = LineAndColumn;
    v24 = v22 + 32;
    *(v22 + 24) = TempSymbol;
  }

  v21[208] = v24;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MCDwarfFrameInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<llvm::MCCFIInstruction>::__init_with_size[abi:nn200100]<llvm::MCCFIInstruction*,llvm::MCCFIInstruction*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<llvm::MCCFIInstruction>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<llvm::MCCFIInstruction>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MCCFIInstruction>>(a1, a2);
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MCCFIInstruction>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

std::string::value_type *std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<llvm::MCCFIInstruction>,llvm::MCCFIInstruction*,llvm::MCCFIInstruction*,llvm::MCCFIInstruction*>(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = a4;
  if (a2 != a3)
  {
    v6 = (a2 + 56);
    v7 = (a4 + 32);
    do
    {
      v8 = *(v6 - 56);
      *(v7[-1].__r_.__value_.__r.__words + 4) = *(v6 - 44);
      *&v7[-2].__r_.__value_.__r.__words[2] = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v10 = *(v6 - 3);
      v9 = *(v6 - 2);
      if (v9 != v10)
      {
        std::vector<char>::__vallocate[abi:nn200100](v7, v9 - v10);
      }

      v11 = v6 - 56;
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v7 + 1, *v6, *(v6 + 1));
      }

      else
      {
        v12 = *v6;
        v7[1].__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v7[1].__r_.__value_.__l.__data_ = v12;
      }

      v6 += 5;
      v7 = (v7 + 80);
    }

    while (v11 + 80 != a3);
    return &v7[-2].__r_.__value_.__s.__data_[16];
  }

  return result;
}

void std::vector<char>::__vallocate[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::vector<llvm::MCDwarfFrameInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 88;
        v7 = (v4 - 56);
        std::vector<llvm::MCCFIInstruction>::__destroy_vector::operator()[abi:nn200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<llvm::MCCFIInstruction>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 80;
        std::allocator<llvm::MCCFIInstruction>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<llvm::MCCFIInstruction>::destroy[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  v3 = *(a2 + 32);
  if (v3)
  {
    *(a2 + 40) = v3;

    operator delete(v3);
  }
}

void llvm::MCExpr::print(unsigned __int8 *a1, llvm::raw_ostream *a2, _BYTE *a3, char a4)
{
  v6 = *a1;
  while (1)
  {
    v7 = a1;
    if (v6 <= 1)
    {
      if (!v6)
      {
        v10 = *(a1 + 2);
        if (*v10 - 1 > 1)
        {
          v12 = *(a2 + 4);
          if (v12 >= *(a2 + 3))
          {
            llvm::raw_ostream::write(a2, 40);
          }

          else
          {
            *(a2 + 4) = v12 + 1;
            *v12 = 40;
          }

          llvm::MCExpr::print(*(v7 + 2), a2, a3, 0);
          v13 = *(a2 + 4);
          if (v13 >= *(a2 + 3))
          {
            llvm::raw_ostream::write(a2, 41);
          }

          else
          {
            *(a2 + 4) = v13 + 1;
            *v13 = 41;
          }
        }

        else
        {
          llvm::MCExpr::print(v10, a2, a3, 0);
        }

        switch(*(v7 + 1) & 0xFFFFFF)
        {
          case 0:
            v24 = *(v7 + 3);
            if (*v24 == 1)
            {
              v25 = *(v24 + 16);
              if ((v25 & 0x8000000000000000) != 0)
              {
                v36 = a2;
                goto LABEL_113;
              }
            }

            v26 = *(a2 + 4);
            if (v26 < *(a2 + 3))
            {
              *(a2 + 4) = v26 + 1;
              *v26 = 43;
              goto LABEL_97;
            }

            v29 = a2;
            v30 = 43;
            goto LABEL_96;
          case 1:
            v22 = *(a2 + 4);
            if (v22 < *(a2 + 3))
            {
              *(a2 + 4) = v22 + 1;
              v23 = 38;
              goto LABEL_76;
            }

            v29 = a2;
            v30 = 38;
            goto LABEL_96;
          case 2:
            v22 = *(a2 + 4);
            if (v22 < *(a2 + 3))
            {
              *(a2 + 4) = v22 + 1;
              v23 = 47;
              goto LABEL_76;
            }

            v29 = a2;
            v30 = 47;
            goto LABEL_96;
          case 3:
            v14 = *(a2 + 4);
            if (*(a2 + 3) - v14 <= 1uLL)
            {
              v15 = a2;
              v16 = "==";
              goto LABEL_67;
            }

            v27 = 15677;
            goto LABEL_90;
          case 4:
            v22 = *(a2 + 4);
            if (v22 < *(a2 + 3))
            {
              *(a2 + 4) = v22 + 1;
              v23 = 62;
              goto LABEL_76;
            }

            v29 = a2;
            v30 = 62;
            goto LABEL_96;
          case 5:
            v14 = *(a2 + 4);
            if (*(a2 + 3) - v14 <= 1uLL)
            {
              v15 = a2;
              v16 = ">=";
              goto LABEL_67;
            }

            v27 = 15678;
            goto LABEL_90;
          case 6:
            v14 = *(a2 + 4);
            if (*(a2 + 3) - v14 <= 1uLL)
            {
              v15 = a2;
              v16 = "&&";
              goto LABEL_67;
            }

            v27 = 9766;
            goto LABEL_90;
          case 7:
            v14 = *(a2 + 4);
            if (*(a2 + 3) - v14 <= 1uLL)
            {
              v15 = a2;
              v16 = "||";
              goto LABEL_67;
            }

            v27 = 31868;
            goto LABEL_90;
          case 8:
            v22 = *(a2 + 4);
            if (v22 < *(a2 + 3))
            {
              *(a2 + 4) = v22 + 1;
              v23 = 60;
              goto LABEL_76;
            }

            v29 = a2;
            v30 = 60;
            goto LABEL_96;
          case 9:
            v14 = *(a2 + 4);
            if (*(a2 + 3) - v14 <= 1uLL)
            {
              v15 = a2;
              v16 = "<=";
              goto LABEL_67;
            }

            v27 = 15676;
            goto LABEL_90;
          case 0xA:
            v22 = *(a2 + 4);
            if (v22 < *(a2 + 3))
            {
              *(a2 + 4) = v22 + 1;
              v23 = 37;
              goto LABEL_76;
            }

            v29 = a2;
            v30 = 37;
            goto LABEL_96;
          case 0xB:
            v22 = *(a2 + 4);
            if (v22 < *(a2 + 3))
            {
              *(a2 + 4) = v22 + 1;
              v23 = 42;
              goto LABEL_76;
            }

            v29 = a2;
            v30 = 42;
            goto LABEL_96;
          case 0xC:
            v14 = *(a2 + 4);
            if (*(a2 + 3) - v14 <= 1uLL)
            {
              v15 = a2;
              v16 = "!=";
              goto LABEL_67;
            }

            v27 = 15649;
            goto LABEL_90;
          case 0xD:
            v22 = *(a2 + 4);
            if (v22 < *(a2 + 3))
            {
              *(a2 + 4) = v22 + 1;
              v23 = 124;
              goto LABEL_76;
            }

            v29 = a2;
            v30 = 124;
            goto LABEL_96;
          case 0xE:
            v21 = *(a2 + 4);
            if (v21 < *(a2 + 3))
            {
              *(a2 + 4) = v21 + 1;
              *v21 = 33;
              goto LABEL_97;
            }

            v29 = a2;
            v30 = 33;
            goto LABEL_96;
          case 0xF:
            v14 = *(a2 + 4);
            if (*(a2 + 3) - v14 <= 1uLL)
            {
              v15 = a2;
              v16 = "<<";
              goto LABEL_67;
            }

            v27 = 15420;
            goto LABEL_90;
          case 0x10:
          case 0x11:
            v14 = *(a2 + 4);
            if (*(a2 + 3) - v14 > 1uLL)
            {
              v27 = 15934;
LABEL_90:
              *v14 = v27;
              *(a2 + 4) += 2;
            }

            else
            {
              v15 = a2;
              v16 = ">>";
LABEL_67:
              llvm::raw_ostream::write(v15, v16, 2uLL);
            }

            goto LABEL_97;
          case 0x12:
            v28 = *(a2 + 4);
            if (v28 < *(a2 + 3))
            {
              *(a2 + 4) = v28 + 1;
              *v28 = 45;
              goto LABEL_97;
            }

            v29 = a2;
            v30 = 45;
            goto LABEL_96;
          case 0x13:
            v22 = *(a2 + 4);
            if (v22 >= *(a2 + 3))
            {
              v29 = a2;
              v30 = 94;
LABEL_96:
              llvm::raw_ostream::write(v29, v30);
            }

            else
            {
              *(a2 + 4) = v22 + 1;
              v23 = 94;
LABEL_76:
              *v22 = v23;
            }

LABEL_97:
            a4 = 0;
            a1 = *(v7 + 3);
            v6 = *a1;
            if ((v6 - 1) < 2)
            {
              continue;
            }

            v31 = *(a2 + 4);
            if (v31 >= *(a2 + 3))
            {
              llvm::raw_ostream::write(a2, 40);
            }

            else
            {
              *(a2 + 4) = v31 + 1;
              *v31 = 40;
            }

            llvm::MCExpr::print(*(v7 + 3), a2, a3, 0);
            v44 = *(a2 + 4);
            if (v44 < *(a2 + 3))
            {
              *(a2 + 4) = v44 + 1;
              goto LABEL_134;
            }

            v45 = a2;
            break;
          default:
            goto LABEL_97;
        }

        goto LABEL_136;
      }

      v35 = *(a1 + 2);
      if ((!a3 || (v35 & 0x8000000000000000) == 0 || a3[280] == 1) && (*(a1 + 1) & 0x100) == 0)
      {
        v36 = a2;
        v25 = *(v7 + 2);
LABEL_113:

        llvm::write_integer(v36, v25, 0, 0);
        return;
      }

      v42 = *(a1 + 1);
      if (v42 > 3)
      {
        if (v42 == 4)
        {
          v43 = "0x%08llx";
          goto LABEL_158;
        }

        if (v42 == 8)
        {
          v43 = "0x%016llx";
          goto LABEL_158;
        }
      }

      else
      {
        if (v42 == 1)
        {
          v43 = "0x%02llx";
          goto LABEL_158;
        }

        if (v42 == 2)
        {
          v43 = "0x%04llx";
LABEL_158:
          v55[1] = v43;
          v56 = v35;
          v55[0] = &unk_2883EB398;
          llvm::raw_ostream::operator<<(a2, v55);
          return;
        }
      }

      v50 = *(a2 + 4);
      if (*(a2 + 3) - v50 > 1uLL)
      {
        *v50 = 30768;
        *(a2 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(a2, "0x", 2uLL);
      }

      v54 = v35;
      v55[0] = &v54;
      v56 = 0;
      v57 = 270;
      llvm::Twine::print(v55, a2);
      return;
    }

    if (v6 != 3)
    {
      break;
    }

    v8 = *(a1 + 1) & 0xFFFFFF;
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v18 = *(a2 + 4);
        if (v18 >= *(a2 + 3))
        {
          v19 = a2;
          v20 = 126;
          goto LABEL_33;
        }

        *(a2 + 4) = v18 + 1;
        *v18 = 126;
      }

      else if (v8 == 3)
      {
        v11 = *(a2 + 4);
        if (v11 >= *(a2 + 3))
        {
          v19 = a2;
          v20 = 43;
          goto LABEL_33;
        }

        *(a2 + 4) = v11 + 1;
        *v11 = 43;
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v9 = *(a2 + 4);
        if (v9 >= *(a2 + 3))
        {
          v19 = a2;
          v20 = 45;
LABEL_33:
          llvm::raw_ostream::write(v19, v20);
          goto LABEL_34;
        }

        *(a2 + 4) = v9 + 1;
        *v9 = 45;
      }
    }

    else
    {
      v17 = *(a2 + 4);
      if (v17 >= *(a2 + 3))
      {
        v19 = a2;
        v20 = 33;
        goto LABEL_33;
      }

      *(a2 + 4) = v17 + 1;
      *v17 = 33;
    }

LABEL_34:
    a4 = 0;
    a1 = *(v7 + 2);
    v6 = *a1;
    if (!*a1)
    {
      v39 = *(a2 + 4);
      if (*(a2 + 3) == v39)
      {
        llvm::raw_ostream::write(a2, "(", 1uLL);
      }

      else
      {
        *v39 = 40;
        ++*(a2 + 4);
      }

      llvm::MCExpr::print(*(v7 + 2), a2, a3, 0);
      v47 = *(a2 + 4);
      if (*(a2 + 3) == v47)
      {

        llvm::raw_ostream::write(a2, ")", 1uLL);
      }

      else
      {
        *v47 = 41;
        ++*(a2 + 4);
      }

      return;
    }
  }

  if (v6 != 2)
  {
    v37 = *(*(a1 - 1) + 24);
    v38 = a1 - 8;

    v37(v38, a2, a3);
    return;
  }

  v32 = *(a1 + 2);
  if (a3 && !(a4 & 1 | ((a3[439] & 1) == 0)) && (*v32 & 4) != 0 && (v33 = *(v32 - 1), *v33) && *(v33 + 16) == 36)
  {
    v34 = *(a2 + 4);
    if (v34 >= *(a2 + 3))
    {
      llvm::raw_ostream::write(a2, 40);
    }

    else
    {
      *(a2 + 4) = v34 + 1;
      *v34 = 40;
    }

    llvm::MCSymbol::print(v32, a2, a3);
    v53 = *(a2 + 4);
    if (v53 >= *(a2 + 3))
    {
      llvm::raw_ostream::write(a2, 41);
    }

    else
    {
      *(a2 + 4) = v53 + 1;
      *v53 = 41;
    }
  }

  else
  {
    llvm::MCSymbol::print(*(a1 + 2), a2, a3);
  }

  v40 = *(v7 + 1);
  if (!v40)
  {
    return;
  }

  if (!a3 || a3[438] != 1)
  {
    v46 = *(a2 + 4);
    if (v46 >= *(a2 + 3))
    {
      llvm::raw_ostream::write(a2, 64);
    }

    else
    {
      *(a2 + 4) = v46 + 1;
      *v46 = 64;
    }

    VariantKindName = llvm::MCSymbolRefExpr::getVariantKindName(v40);

    llvm::raw_ostream::operator<<(a2, VariantKindName, v48);
    return;
  }

  v41 = *(a2 + 4);
  if (v41 >= *(a2 + 3))
  {
    llvm::raw_ostream::write(a2, 40);
  }

  else
  {
    *(a2 + 4) = v41 + 1;
    *v41 = 40;
  }

  v51 = llvm::MCSymbolRefExpr::getVariantKindName(v40);
  v45 = llvm::raw_ostream::operator<<(a2, v51, v52);
  v44 = *(v45 + 4);
  if (v44 >= *(v45 + 3))
  {
LABEL_136:

    llvm::raw_ostream::write(v45, 41);
    return;
  }

  *(v45 + 4) = v44 + 1;
LABEL_134:
  *v44 = 41;
}

char *llvm::MCSymbolRefExpr::getVariantKindName(__int16 a1)
{
  v1 = a1 - 1;
  v2 = qword_2750C8200[v1];
  return off_279EFF320[v1];
}

unint64_t llvm::MCSymbolRefExpr::create(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a3 + 184, 24, 3);
  if (*(*(a3 + 144) + 18))
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  *result = 2;
  *(result + 1) = v9 | a2 | (*(result + 4) << 24);
  *(result + 8) = a4;
  *(result + 16) = a1;
  return result;
}

uint64_t llvm::MCSymbolRefExpr::getVariantKindForName(uint64_t a1, uint64_t a2)
{
  v139[0] = a1;
  v139[1] = a2;
  llvm::StringRef::lower(v139, v137);
  v2 = v137[1];
  if (v138 >= 0)
  {
    v3 = v137;
  }

  else
  {
    v3 = v137[0];
  }

  if (v138 >= 0)
  {
    v2 = v138;
  }

  switch(v2)
  {
    case 1uLL:
      v4 = *v3;
      switch(v4)
      {
        case 'h':
          v5 = 49;
          break;
        case 'l':
          v5 = 48;
          break;
        case 'u':
          v5 = 65;
          break;
        default:
          goto LABEL_345;
      }

      break;
    case 2uLL:
      switch(*v3)
      {
        case 0x6168:
          v5 = 50;
          break;
        case 0x6569:
          v5 = 123;
          break;
        case 0x6968:
          v5 = 137;
          break;
        case 0x6F6C:
          v5 = 138;
          break;
        default:
          goto LABEL_345;
      }

      break;
    case 3uLL:
      if (*v3 == 28519 && *(v3 + 2) == 116)
      {
        v5 = 2;
      }

      else if (*v3 == 27760 && *(v3 + 2) == 116)
      {
        v5 = 12;
      }

      else if (*v3 == 28532 && *(v3 + 2) == 99)
      {
        v5 = 61;
      }

      else if (*v3 == 27764 && *(v3 + 2) == 115)
      {
        v5 = 94;
      }

      else if (*v3 == 28524 && *(v3 + 2) == 56)
      {
        v5 = 41;
      }

      else
      {
        v64 = *v3;
        v65 = *(v3 + 2);
        if (v64 != 26984 || v65 != 56)
        {
          goto LABEL_345;
        }

        v5 = 42;
      }

      break;
    case 4uLL:
      switch(*v3)
      {
        case 0x70766C74:
          v5 = 20;
          break;
        case 0x65676170:
          v5 = 23;
          break;
        case 0x657A6973:
          v5 = 28;
          break;
        case 0x38736261:
          v5 = 30;
          break;
        case 0x68676968:
          v5 = 51;
          break;
        case 0x656E6F6E:
          v5 = 32;
          break;
        case 0x386F6C68:
          v5 = 43;
          break;
        default:
          goto LABEL_345;
      }

      break;
    case 5uLL:
      if (*v3 == 1701995376 && *(v3 + 4) == 108)
      {
        v5 = 5;
      }

      else if (*v3 == 1735617652 && *(v3 + 4) == 100)
      {
        v5 = 13;
      }

      else if (*v3 == 1819503732 && *(v3 + 4) == 100)
      {
        v5 = 14;
      }

      else if (*v3 == 1718579316 && *(v3 + 4) == 102)
      {
        v5 = 16;
      }

      else if (*v3 == 1701998708 && *(v3 + 4) == 108)
      {
        v5 = 151;
      }

      else if (*v3 == 1751607656 && *(v3 + 4) == 97)
      {
        v5 = 52;
      }

      else if (*v3 == 1081372519 && *(v3 + 4) == 108)
      {
        v5 = 57;
      }

      else if (*v3 == 1081372519 && *(v3 + 4) == 104)
      {
        v5 = 58;
      }

      else if (*v3 == 1633906540 && *(v3 + 4) == 108)
      {
        v5 = 112;
      }

      else if (*v3 == 1080258420 && *(v3 + 4) == 108)
      {
        v5 = 62;
      }

      else if (*v3 == 1080258420 && *(v3 + 4) == 104)
      {
        v5 = 63;
      }

      else if (*v3 == 1869901678 && *(v3 + 4) == 99)
      {
        v5 = 113;
      }

      else if (*v3 == 1869046887 && *(v3 + 4) == 116)
      {
        v5 = 119;
      }

      else if (*v3 == 1819305063 && *(v3 + 4) == 116)
      {
        v5 = 121;
      }

      else if (*v3 == 1869047145 && *(v3 + 4) == 116)
      {
        v5 = 124;
      }

      else if (*v3 == 1869046892 && *(v3 + 4) == 116)
      {
        v5 = 120;
      }

      else if (*v3 == 1819305068 && *(v3 + 4) == 116)
      {
        v5 = 122;
      }

      else if (*v3 == 1701995123 && *(v3 + 4) == 108)
      {
        v5 = 37;
      }

      else if (*v3 == 1701995124 && *(v3 + 4) == 108)
      {
        v5 = 128;
      }

      else if (*v3 == 1701995117 && *(v3 + 4) == 108)
      {
        v5 = 127;
      }

      else if (*v3 == 913073522 && *(v3 + 4) == 52)
      {
        v5 = 134;
      }

      else if (*v3 == 1751081840 && *(v3 + 4) == 105)
      {
        v5 = 139;
      }

      else
      {
        v43 = *v3;
        v44 = *(v3 + 4);
        if (v43 != 1818190704 || v44 != 111)
        {
          goto LABEL_345;
        }

        v5 = 140;
      }

      break;
    case 6uLL:
      if (*v3 == 1919972452 && *(v3 + 2) == 27749)
      {
        v5 = 152;
      }

      else if (*v3 == 1869640804 && *(v3 + 2) == 26214)
      {
        v5 = 17;
      }

      else if (*v3 == 1869901671 && *(v3 + 2) == 26214)
      {
        v5 = 3;
      }

      else if (*v3 == 1920233319 && *(v3 + 2) == 27749)
      {
        v5 = 4;
      }

      else if (*v3 == 1869640814 && *(v3 + 2) == 26214)
      {
        v5 = 10;
      }

      else if (*v3 == 1819503732 && *(v3 + 2) == 28004)
      {
        v5 = 15;
      }

      else if (*v3 == 1919380841 && *(v3 + 2) == 27749)
      {
        v5 = 115;
      }

      else if (*v3 == 1869900912 && *(v3 + 2) == 26214)
      {
        v5 = 31;
      }

      else if (*v3 == 1751607656 && *(v3 + 2) == 29285)
      {
        v5 = 53;
      }

      else if (*v3 == 1081372519 && *(v3 + 2) == 24936)
      {
        v5 = 59;
      }

      else if (*v3 == 1080258420 && *(v3 + 2) == 24936)
      {
        v5 = 64;
      }

      else if (*v3 == 1836086372 && *(v3 + 2) == 25711)
      {
        v5 = 67;
      }

      else if (*v3 == 1818587760 && *(v3 + 2) == 12595)
      {
        v5 = 36;
      }

      else if (*v3 == 1819503732 && *(v3 + 2) == 28516)
      {
        v5 = 38;
      }

      else if (*v3 == 1920167028 && *(v3 + 2) == 27749)
      {
        v5 = 126;
      }

      else if (*v3 == 1601466215 && *(v3 + 2) == 26984)
      {
        v5 = 141;
      }

      else if (*v3 == 1601466215 && *(v3 + 2) == 28524)
      {
        v5 = 142;
      }

      else if (*v3 == 1601465456 && *(v3 + 2) == 26984)
      {
        v5 = 145;
      }

      else
      {
        v88 = *v3;
        v89 = *(v3 + 2);
        if (v88 != 1601465456 || v89 != 28524)
        {
          goto LABEL_345;
        }

        v5 = 146;
      }

      break;
    case 7uLL:
      if (*v3 == 1668508788 && *(v3 + 3) == 1819042147)
      {
        v5 = 18;
      }

      else if (*v3 == 1685286004 && *(v3 + 3) == 1668506980)
      {
        v5 = 19;
      }

      else if (*v3 == 1701273968 && *(v3 + 3) == 1717989221)
      {
        v5 = 24;
      }

      else if (*v3 == 1886678887 && *(v3 + 3) == 1701273968)
      {
        v5 = 25;
      }

      else if (*v3 == 1751607656 && *(v3 + 3) == 1634887016)
      {
        v5 = 54;
      }

      else if (*v3 == 1751607656 && *(v3 + 3) == 1953719656)
      {
        v5 = 55;
      }

      else if (*v3 == 1650683764 && *(v3 + 3) == 1702060386)
      {
        v5 = 60;
      }

      else if (*v3 == 1701998708 && *(v3 + 3) == 1816161381)
      {
        v5 = 68;
      }

      else if (*v3 == 1701998708 && *(v3 + 3) == 1749052517)
      {
        v5 = 69;
      }

      else if (*v3 == 1735549300 && *(v3 + 3) == 829711719)
      {
        v5 = 34;
      }

      else if (*v3 == 1735549300 && *(v3 + 3) == 846488935)
      {
        v5 = 35;
      }

      else
      {
        v108 = *v3;
        v109 = *(v3 + 3);
        if (v108 != 1081372519 || v109 != 1936487488)
        {
          goto LABEL_345;
        }

        v5 = 129;
      }

      break;
    case 8uLL:
      if (*v3 == 0x6C65726370746F67)
      {
        v5 = 6;
      }

      else if (*v3 == 0x66666F7074746F67)
      {
        v5 = 8;
      }

      else if (*v3 == 0x6567617070766C74)
      {
        v5 = 21;
      }

      else if (*v3 == 0x32336C6572636573)
      {
        v5 = 27;
      }

      else if (*v3 == 0x6174736568676968)
      {
        v5 = 56;
      }

      else if (*v3 == 0x6168406C65727074)
      {
        v5 = 70;
      }

      else if (*v3 == 0x6C406C6572707464)
      {
        v5 = 77;
      }

      else if (*v3 == 0x68406C6572707464)
      {
        v5 = 78;
      }

      else if (*v3 == 0x6C6572705F746F67)
      {
        v5 = 33;
      }

      else if (*v3 == 0x6F6C4032336C6572)
      {
        v5 = 132;
      }

      else if (*v3 == 0x69684032336C6572)
      {
        v5 = 133;
      }

      else if (*v3 == 0x6F6C403233736261)
      {
        v5 = 135;
      }

      else if (*v3 == 0x6968403233736261)
      {
        v5 = 136;
      }

      else if (*v3 == 0x69685F66666F7074)
      {
        v5 = 149;
      }

      else if (*v3 == 0x6F6C5F66666F7074)
      {
        v5 = 150;
      }

      else
      {
        v5 = 1;
      }

      break;
    case 9uLL:
      if (*v3 == 0x666F70746E646E69 && *(v3 + 8) == 102)
      {
        v5 = 9;
      }

      else if (*v3 == 0x666F70746E746F67 && *(v3 + 8) == 102)
      {
        v5 = 11;
      }

      else if (*v3 == 0x68406C6572707464 && *(v3 + 8) == 97)
      {
        v5 = 79;
      }

      else if (*v3 == 0x6572707440746F67 && *(v3 + 8) == 108)
      {
        v5 = 86;
      }

      else if (*v3 == 0x67736C7440746F67 && *(v3 + 8) == 100)
      {
        v5 = 95;
      }

      else if (*v3 == 0x6C736C7440746F67 && *(v3 + 8) == 100)
      {
        v5 = 102;
      }

      else if (*v3 == 0x6572637040746F67 && *(v3 + 8) == 108)
      {
        v5 = 106;
      }

      else if (*v3 == 0x6572637040736C74 && *(v3 + 8) == 108)
      {
        v5 = 110;
      }

      else if (*v3 == 0x65646E6965707974 && *(v3 + 8) == 120)
      {
        v5 = 125;
      }

      else if (*v3 == 0x685F66666F746F67 && *(v3 + 8) == 105)
      {
        v5 = 143;
      }

      else if (*v3 == 0x6C5F66666F746F67 && *(v3 + 8) == 111)
      {
        v5 = 144;
      }

      else if (*v3 == 0x685F64675F736C74 && *(v3 + 8) == 105)
      {
        v5 = 147;
      }

      else
      {
        v134 = *v3;
        v135 = *(v3 + 8);
        if (v134 != 0x6C5F64675F736C74 || v135 != 111)
        {
          goto LABEL_345;
        }

        v5 = 148;
      }

      break;
    case 0xAuLL:
      if (*v3 == 0x6F65676170746F67 && *(v3 + 4) == 26214)
      {
        v5 = 26;
      }

      else if (*v3 == 0x6968406C65727074 && *(v3 + 4) == 26727)
      {
        v5 = 71;
      }

      else
      {
        v56 = *v3;
        v57 = *(v3 + 4);
        if (v56 != 0x7270746440746F67 || v57 != 27749)
        {
          goto LABEL_345;
        }

        v5 = 90;
      }

      break;
    case 0xBuLL:
      if (*v3 == 0x6567617070766C74 && *(v3 + 3) == 0x66666F6567617070)
      {
        v5 = 22;
      }

      else if (*v3 == 0x6968406C65727074 && *(v3 + 3) == 0x6168676968406C65)
      {
        v5 = 72;
      }

      else if (*v3 == 0x68406C6572707464 && *(v3 + 3) == 0x68676968406C6572)
      {
        v5 = 80;
      }

      else if (*v3 == 0x6572707440746F67 && *(v3 + 3) == 0x6C406C6572707440)
      {
        v5 = 87;
      }

      else if (*v3 == 0x6572707440746F67 && *(v3 + 3) == 0x68406C6572707440)
      {
        v5 = 88;
      }

      else if (*v3 == 0x67736C7440746F67 && *(v3 + 3) == 0x6C406467736C7440)
      {
        v5 = 96;
      }

      else if (*v3 == 0x67736C7440746F67 && *(v3 + 3) == 0x68406467736C7440)
      {
        v5 = 97;
      }

      else if (*v3 == 0x6C736C7440746F67 && *(v3 + 3) == 0x6C40646C736C7440)
      {
        v5 = 103;
      }

      else
      {
        v119 = *v3;
        v120 = *(v3 + 3);
        if (v119 != 0x6C736C7440746F67 || v120 != 0x6840646C736C7440)
        {
          goto LABEL_345;
        }

        v5 = 104;
      }

      break;
    case 0xCuLL:
      if (*v3 == 0x6968406C65727074 && *(v3 + 2) == 1919248487)
      {
        v5 = 73;
      }

      else if (*v3 == 0x68406C6572707464 && *(v3 + 2) == 1634232169)
      {
        v5 = 81;
      }

      else if (*v3 == 0x6572707440746F67 && *(v3 + 2) == 1634222188)
      {
        v5 = 89;
      }

      else if (*v3 == 0x7270746440746F67 && *(v3 + 2) == 1816161381)
      {
        v5 = 91;
      }

      else if (*v3 == 0x7270746440746F67 && *(v3 + 2) == 1749052517)
      {
        v5 = 92;
      }

      else if (*v3 == 0x67736C7440746F67 && *(v3 + 2) == 1634222180)
      {
        v5 = 98;
      }

      else
      {
        v18 = *v3;
        v19 = *(v3 + 2);
        if (v18 != 0x6C736C7440746F67 || v19 != 1634222180)
        {
          goto LABEL_345;
        }

        v5 = 105;
      }

      break;
    case 0xDuLL:
      if (*v3 == 0x6968406C65727074 && *(v3 + 5) == 0x6172656867696840)
      {
        v5 = 74;
      }

      else if (*v3 == 0x6968406C65727074 && *(v3 + 5) == 0x7473656867696840)
      {
        v5 = 75;
      }

      else if (*v3 == 0x68406C6572707464 && *(v3 + 5) == 0x726568676968406CLL)
      {
        v5 = 82;
      }

      else if (*v3 == 0x7270746440746F67 && *(v3 + 5) == 0x6168406C65727074)
      {
        v5 = 93;
      }

      else if (*v3 == 0x6C65726370746F67 && *(v3 + 5) == 0x6F6C4032336C6572)
      {
        v5 = 130;
      }

      else
      {
        v51 = *v3;
        v52 = *(v3 + 5);
        if (v51 != 0x6C65726370746F67 || v52 != 0x69684032336C6572)
        {
          goto LABEL_345;
        }

        v5 = 131;
      }

      break;
    case 0xEuLL:
      if (*v3 == 0x6968406C65727074 && *(v3 + 6) == 0x6174736568676968)
      {
        v5 = 76;
      }

      else if (*v3 == 0x68406C6572707464 && *(v3 + 6) == 0x6172656867696840)
      {
        v5 = 83;
      }

      else
      {
        v93 = *v3;
        v94 = *(v3 + 6);
        if (v93 != 0x68406C6572707464 || v94 != 0x7473656867696840)
        {
          goto LABEL_345;
        }

        v5 = 84;
      }

      break;
    case 0xFuLL:
      if (*v3 == 0x68406C6572707464 && *(v3 + 7) == 0x6174736568676968)
      {
        v5 = 85;
      }

      else if (*v3 == 0x67736C7440746F67 && *(v3 + 7) == 0x6C65726370406467)
      {
        v5 = 107;
      }

      else if (*v3 == 0x6C736C7440746F67 && *(v3 + 7) == 0x6C6572637040646CLL)
      {
        v5 = 108;
      }

      else
      {
        v9 = *v3;
        v10 = *(v3 + 7);
        if (v9 != 0x6572707440746F67 || v10 != 0x6C65726370406C65)
        {
          goto LABEL_345;
        }

        v5 = 109;
      }

      break;
    case 0x10uLL:
      v68 = *v3;
      v67 = v3[1];
      if (v68 != 0x6C65726370746F67 || v67 != 0x78616C65726F6E5FLL)
      {
        goto LABEL_345;
      }

      v5 = 7;
      break;
    default:
LABEL_345:
      v5 = 1;
      break;
  }

  if (v138 < 0)
  {
    operator delete(v137[0]);
  }

  return v5;
}

BOOL llvm::MCExpr::evaluateAsAbsolute(uint64_t a1, void *a2, uint64_t *a3, llvm::MCAsmLayout *a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  if (*a1 == 1)
  {
    *a2 = *(a1 + 16);
    return 1;
  }

  else
  {
    v8 = llvm::MCExpr::evaluateAsRelocatableImpl(a1, &v9, a3, a4, 0, a5, a6);
    result = 0;
    *a2 = v11;
    if (v8)
    {
      if (!v9)
      {
        return v10 == 0;
      }
    }
  }

  return result;
}

uint64_t llvm::MCExpr::evaluateAsRelocatableImpl(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, llvm::MCAsmLayout *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a1;
  if (v14 <= 1)
  {
    if (*a1)
    {
      v32 = *(a1 + 2);
    }

    else
    {
      memset(v53, 0, 28);
      v50 = 0uLL;
      v52 = 0;
      v51 = 0;
      if (llvm::MCExpr::evaluateAsRelocatableImpl(*(a1 + 2), v53, a3, a4, a5, a6, a7) && (llvm::MCExpr::evaluateAsRelocatableImpl(*(a1 + 3), &v50, a3, a4, a5, a6, a7) & 1) != 0)
      {
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v53[0]), vceqzq_s64(v50))))))
        {
          if ((*(a1 + 1) & 0xFFFFFF) != 0)
          {
            if ((*(a1 + 1) & 0xFFFFFF) != 0x12)
            {
              return 0;
            }

            v19 = -v51;
            v20 = v50.i64[1];
            v21 = v50.i64[0];
          }

          else
          {
            v19 = v51;
            v21 = v50.i64[1];
            v20 = v50.i64[0];
          }

          return EvaluateSymbolicAdd(a3, a4, a6, a7, v53[0].i64, v20, v21, v19, a2);
        }

        v47 = *(a1 + 1) & 0xFFFFFF;
        switch(v47)
        {
          case 0u:
            v48 = v51 + v53[1].i64[0];
            goto LABEL_116;
          case 1u:
            v48 = v51 & v53[1].i64[0];
            goto LABEL_116;
          case 2u:
          case 0xAu:
            if (!v51)
            {
              return 0;
            }

            if (v47 == 2)
            {
              v48 = v53[1].i64[0] / v51;
LABEL_116:
              *a2 = 0;
              *(a2 + 8) = 0;
              *(a2 + 16) = v48;
              goto LABEL_71;
            }

            v48 = v53[1].i64[0] % v51;
LABEL_118:
            if (v47 > 0xC || ((1 << a1[1]) & 0x1338) == 0)
            {
              goto LABEL_116;
            }

LABEL_120:
            if (v48)
            {
              v32 = -1;
            }

            else
            {
              v32 = 0;
            }

            break;
          case 3u:
            v48 = v53[1].i64[0] == v51;
            goto LABEL_120;
          case 4u:
            v48 = v53[1].i64[0] > v51;
            goto LABEL_120;
          case 5u:
            v48 = v53[1].i64[0] >= v51;
            goto LABEL_120;
          case 6u:
            if (v53[1].i64[0])
            {
              v49 = v51 == 0;
            }

            else
            {
              v49 = 1;
            }

            goto LABEL_104;
          case 7u:
            v49 = (v53[1].i64[0] | v51) == 0;
LABEL_104:
            v48 = !v49;
            goto LABEL_116;
          case 8u:
            v48 = v53[1].i64[0] < v51;
            goto LABEL_120;
          case 9u:
            v48 = v53[1].i64[0] <= v51;
            goto LABEL_120;
          case 0xBu:
            v48 = v51 * v53[1].i64[0];
            goto LABEL_116;
          case 0xCu:
            v48 = v53[1].i64[0] != v51;
            goto LABEL_120;
          case 0xDu:
            v48 = v51 | v53[1].i64[0];
            goto LABEL_116;
          case 0xEu:
            v48 = v53[1].i64[0] | ~v51;
            goto LABEL_116;
          case 0xFu:
            v48 = v53[1].i64[0] << v51;
            goto LABEL_116;
          case 0x10u:
            v48 = v53[1].i64[0] >> v51;
            goto LABEL_116;
          case 0x11u:
            v48 = v53[1].i64[0] >> v51;
            goto LABEL_116;
          case 0x12u:
            v48 = v53[1].i64[0] - v51;
            goto LABEL_116;
          case 0x13u:
            v48 = v51 ^ v53[1].i64[0];
            goto LABEL_116;
          default:
            v48 = 0;
            goto LABEL_118;
        }
      }

      else
      {
        v33 = *(a1 + 2);
        v35 = *v33;
        v34 = v33 - 8;
        if (v35 != 4)
        {
          return 0;
        }

        v36 = *(a1 + 3);
        v37 = v36 - 8;
        if (!v36)
        {
          v37 = 0;
        }

        v38 = *(a1 + 1) & 0xFFFFFF;
        if (v38 == 12)
        {
          if (v36)
          {
            v44 = v37 + 8;
          }

          else
          {
            v44 = 0;
          }

          v45 = (*(*v37 + 40))(v37, v44);
          *a2 = 0;
          *(a2 + 8) = 0;
          v32 = v45 - 1;
          goto LABEL_36;
        }

        if (v38 != 3)
        {
          return 0;
        }

        v39 = v37 + 8;
        if (v36)
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        v32 = (*(*v34 + 40))(v34, v40) << 63 >> 63;
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
LABEL_36:
    *(a2 + 16) = v32;
    *(a2 + 24) = 0;
    return 1;
  }

  if (v14 == 2)
  {
    v22 = *(a1 + 2);
    v23 = *(v22 + 1);
    if ((v23 & 0x3800) != 0x1000)
    {
      goto LABEL_70;
    }

    v24 = *(a1 + 1);
    v25 = v24 && a4 == 0;
    if (v25 || (v23 & 0x40) != 0)
    {
      goto LABEL_70;
    }

    v27 = v23 | 4;
    *(v22 + 1) = v27;
    v28 = *(v22 + 3);
    if (*v28 == 2)
    {
      v29 = *(v28 + 1);
      if (v29 == 29 || (a7 & 1) != 0)
      {
        if (v29 == 29)
        {
          goto LABEL_70;
        }

LABEL_53:
        v41 = *(a1 + 1);
        *(v22 + 1) = v27;
        if (!llvm::MCExpr::evaluateAsRelocatableImpl(v28, a2, a3, a4, a5, a6, a7 | ((v41 & 0x10000u) >> 16)))
        {
          goto LABEL_70;
        }

        if (v24)
        {
          if (!*a2)
          {
            if (!*(a2 + 8))
            {
              *a2 = a1;
              *(a2 + 8) = 0;
              *(a2 + 16) = 0;
              result = 1;
              *(a2 + 24) = 0;
              return result;
            }

            return 0;
          }

          result = 0;
          if (*(a2 + 24) || *(a2 + 8) || *(a2 + 16))
          {
            return result;
          }

          *a2 = llvm::MCSymbolRefExpr::create(*(*a2 + 16), v24, *a3, 0);
        }

        if ((v41 & 0x10000) != 0 && *a2 != 0)
        {
          v42 = !*a2 || *(a2 + 8) == 0;
          v43 = !v42;
          if (*(a2 + 16) || v43)
          {
LABEL_70:
            *(a2 + 8) = 0;
            *(a2 + 16) = 0;
            *a2 = a1;
LABEL_71:
            result = 1;
            goto LABEL_72;
          }
        }

        return 1;
      }
    }

    else if (a7)
    {
      goto LABEL_53;
    }

    if (llvm::MCSymbol::isInSection(v22))
    {
      goto LABEL_70;
    }

    v28 = *(v22 + 3);
    v27 = *(v22 + 1) | 4;
    goto LABEL_53;
  }

  if (v14 == 3)
  {
    memset(v53, 0, 28);
    result = llvm::MCExpr::evaluateAsRelocatableImpl(*(a1 + 2), v53, a3, a4, a5, a6, a7);
    if (!result)
    {
      return result;
    }

    v16 = *(a1 + 1) & 0xFFFFFF;
    result = 1;
    if (v16 <= 1)
    {
      if (v16)
      {
        v17 = v53[0].i64[0];
        if (!v53[0].i64[0] || v53[0].i64[1])
        {
          v18 = -v53[1].i64[0];
          *a2 = v53[0].i64[1];
          *(a2 + 8) = v17;
          *(a2 + 16) = v18;
LABEL_72:
          *(a2 + 24) = 0;
          return result;
        }

        return 0;
      }

      if (*v53 == 0)
      {
        v46 = v53[1].i64[0] == 0;
LABEL_81:
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = v46;
        goto LABEL_72;
      }

      return 0;
    }

    if (v16 == 2)
    {
      if (*v53 == 0)
      {
        v46 = ~v53[1].i64[0];
        goto LABEL_81;
      }

      return 0;
    }

    if (v16 == 3)
    {
      *a2 = v53[0];
      *(a2 + 12) = *(v53 + 12);
    }
  }

  else
  {
    v30 = *(*(a1 - 1) + 32);
    v31 = a1 - 8;

    return v30(v31, a2, a4, a5);
  }

  return result;
}

uint64_t EvaluateSymbolicAdd(uint64_t a1, llvm::MCAsmLayout *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a7;
  v21 = a6;
  v9 = *a5;
  v18 = a5[1];
  v19 = v9;
  v17 = a5[2] + a8;
  if (a1)
  {
    AttemptToFoldSymbolOffsetDifference(a1, a2, a3, a4, &v19, &v18, &v17);
    AttemptToFoldSymbolOffsetDifference(a1, a2, a3, a4, &v19, &v20, &v17);
    AttemptToFoldSymbolOffsetDifference(a1, a2, a3, a4, &v21, &v18, &v17);
    AttemptToFoldSymbolOffsetDifference(a1, a2, a3, a4, &v21, &v20, &v17);
    v9 = v19;
    a6 = v21;
  }

  if (v9 && a6)
  {
    return 0;
  }

  v14 = v18;
  if (v18)
  {
    if (v20)
    {
      return 0;
    }
  }

  if (!v9)
  {
    v9 = a6;
  }

  v16 = v17;
  if (!v18)
  {
    v14 = v20;
  }

  *a9 = v9;
  *(a9 + 8) = v14;
  *(a9 + 16) = v16;
  *(a9 + 24) = 0;
  return 1;
}

uint64_t llvm::MCExpr::findAssociatedFragment(llvm::MCExpr *this)
{
  while (1)
  {
    v2 = *this;
    if (v2 != 3)
    {
      break;
    }

    this = *(this + 2);
  }

  if (*this > 1u)
  {
    if (v2 == 2)
    {
      v6 = *(this + 2);
      if ((*(v6 + 8) & 0x40) != 0)
      {
        return 0;
      }

      else
      {

        return llvm::MCSymbol::getFragment(v6, 1);
      }
    }

    else
    {
      v7 = *(*(this - 1) + 64);

      return v7(this - 8);
    }
  }

  else if (*this)
  {
    return llvm::MCSymbol::AbsolutePseudoFragment;
  }

  else
  {
    AssociatedFragment = llvm::MCExpr::findAssociatedFragment(*(this + 2));
    result = llvm::MCExpr::findAssociatedFragment(*(this + 3));
    if (AssociatedFragment != llvm::MCSymbol::AbsolutePseudoFragment)
    {
      if (result == llvm::MCSymbol::AbsolutePseudoFragment)
      {
        return AssociatedFragment;
      }

      else
      {
        if (AssociatedFragment)
        {
          v5 = AssociatedFragment;
        }

        else
        {
          v5 = result;
        }

        if ((*(this + 1) & 0xFFFFFF) == 0x12)
        {
          return llvm::MCSymbol::AbsolutePseudoFragment;
        }

        else
        {
          return v5;
        }
      }
    }
  }

  return result;
}

uint64_t AttemptToFoldSymbolOffsetDifference(uint64_t result, llvm::MCAsmLayout *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v32 = result;
  v7 = *a6;
  if (*a5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v15 = result;
    v16 = *(*a5 + 16);
    v17 = *(v7 + 16);
    result = llvm::MCSymbol::getFragment(v16, 1u);
    if (result)
    {
      result = llvm::MCSymbol::getFragment(v17, 1u);
      if (result)
      {
        result = llvm::MCObjectWriter::isSymbolRefDifferenceFullyResolved(*(v15 + 24), v15, *a5, *a6, a4);
        if (result)
        {
          v31[0] = &v32;
          v31[1] = v16;
          v31[2] = a7;
          v31[3] = a5;
          v31[4] = a6;
          Fragment = llvm::MCSymbol::getFragment(v16, 1u);
          result = llvm::MCSymbol::getFragment(v17, 1u);
          v19 = result;
          if (Fragment == result && (*(v16 + 8) & 0x2800 | 0x1000) != 0x1000 && (*(v17 + 8) & 0x2800 | 0x1000) != 0x1000)
          {
            v29 = *(v16 + 24) - *(v17 + 24);
LABEL_35:
            v30 = *a7;
LABEL_36:
            *a7 = v29 + v30;
            return AttemptToFoldSymbolOffsetDifference(llvm::MCAssembler const*,llvm::MCAsmLayout const*,llvm::DenseMap<llvm::MCSection const*,unsigned long long,llvm::DenseMapInfo<llvm::MCSection const*,void>,llvm::detail::DenseMapPair<llvm::MCSection const*,unsigned long long>> const*,BOOL,llvm::MCSymbolRefExpr const*&,llvm::MCSymbolRefExpr const*&,long long &)::$_0::operator()(v31);
          }

          v20 = *(Fragment + 16);
          v21 = *(result + 16);
          if (a3 || v20 == v21)
          {
            if (a2)
            {
              v22 = *(Fragment + 16);
              result = llvm::MCAsmLayout::canGetFragmentOffset(a2, Fragment);
              if (result)
              {
                result = llvm::MCAsmLayout::canGetFragmentOffset(a2, v19);
                if (result)
                {
                  v23 = *(*a5 + 16);
                  v33 = 0;
                  getSymbolOffsetImpl(a2, v23, 1, &v33);
                  v24 = v33;
                  v25 = *(*a6 + 16);
                  v33 = 0;
                  getSymbolOffsetImpl(a2, v25, 1, &v33);
                  *a7 += v24 - v33;
                  if (v22 == v21 || !a3)
                  {
                    return AttemptToFoldSymbolOffsetDifference(llvm::MCAssembler const*,llvm::MCAsmLayout const*,llvm::DenseMap<llvm::MCSection const*,unsigned long long,llvm::DenseMapInfo<llvm::MCSection const*,void>,llvm::detail::DenseMapPair<llvm::MCSection const*,unsigned long long>> const*,BOOL,llvm::MCSymbolRefExpr const*&,llvm::MCSymbolRefExpr const*&,long long &)::$_0::operator()(v31);
                  }

                  v33 = 0;
                  v26 = 0;
                  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a3, *(a3 + 16), v22, &v33))
                  {
                    v26 = *(v33 + 8);
                  }

                  v33 = 0;
                  v27 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a3, *(a3 + 16), v21, &v33);
                  v28 = 0;
                  if (v27)
                  {
                    v28 = *(v33 + 8);
                  }

                  v29 = v26 - v28;
                  goto LABEL_35;
                }
              }
            }

            else if ((*(v16 + 8) & 0x2800 | 0x1000) != 0x1000 && (*(v17 + 8) & 0x2800 | 0x1000) != 0x1000 && *(Fragment + 48) == 1 && *(result + 48) == 1 && *(Fragment + 44) == *(result + 44) && result != v20 + 104)
            {
              v30 = *(v16 + 24) - *(v17 + 24);
              while (v19 != Fragment)
              {
                if (*(v19 + 48) == 1)
                {
                  v30 += *(v19 + 72);
                  v19 = *(v19 + 8);
                  if (v19 != v20 + 104)
                  {
                    continue;
                  }
                }

                return result;
              }

              v29 = *a7;
              goto LABEL_36;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AttemptToFoldSymbolOffsetDifference(llvm::MCAssembler const*,llvm::MCAsmLayout const*,llvm::DenseMap<llvm::MCSection const*,unsigned long long,llvm::DenseMapInfo<llvm::MCSection const*,void>,llvm::detail::DenseMapPair<llvm::MCSection const*,unsigned long long>> const*,BOOL,llvm::MCSymbolRefExpr const*&,llvm::MCSymbolRefExpr const*&,long long &)::$_0::operator()(uint64_t a1)
{
  if (llvm::MCAssembler::isThumbFunc(**a1, *(a1 + 8)))
  {
    **(a1 + 16) |= 1uLL;
  }

  result = (*(**(**a1 + 8) + 224))(*(**a1 + 8), *(a1 + 8));
  if (result)
  {
    **(a1 + 16) |= 1uLL;
  }

  **(a1 + 32) = 0;
  **(a1 + 24) = 0;
  return result;
}

BOOL llvm::MCAsmLayout::isFragmentValid(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = 0;
  v7 = v3;
  return (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>((a1 + 152), &v7, &v6) & 1) != 0 && (v4 = *(v6 + 8)) != 0 && *(a2 + 40) <= *(v4 + 40);
}

uint64_t llvm::MCAsmLayout::canGetFragmentOffset(llvm::MCAsmLayout *this, const llvm::MCFragment *a2)
{
  v7 = *(a2 + 2);
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 19, &v7)[1];
  if (v3)
  {
    if (*(a2 + 10) <= *(v3 + 40))
    {
      v5 = 1;
      return v5 & 1;
    }

    v4 = v3 + 8;
  }

  else
  {
    v4 = v7 + 112;
  }

  v5 = *(*v4 + 49) ^ 1;
  return v5 & 1;
}

BOOL llvm::MCAsmLayout::ensureValid(llvm::MCAsmLayout *this, const llvm::MCFragment *a2)
{
  v8 = *(a2 + 2);
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 19, &v8)[1];
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = (v8 + 112);
  }

  v6 = *v5;
  for (result = llvm::MCAsmLayout::isFragmentValid(this, a2); !result; result = llvm::MCAsmLayout::isFragmentValid(this, a2))
  {
    llvm::MCAsmLayout::layoutFragment(this, v6);
    v6 = *(v6 + 1);
  }

  return result;
}

BOOL getSymbolOffsetImpl(const llvm::MCAsmLayout *a1, const llvm::MCSymbol *a2, _BOOL8 a3, unint64_t *a4)
{
  v8 = *(a2 + 1);
  if ((v8 & 0x3800) != 0x1000)
  {
    if (llvm::MCSymbol::getFragment(a2, 1u))
    {
      a3 = 1;
      Fragment = llvm::MCSymbol::getFragment(a2, 1u);
      llvm::MCAsmLayout::ensureValid(a1, Fragment);
      *a4 = *(a2 + 3) + *(Fragment + 4);
      return a3;
    }

    if (!a3)
    {
      return a3;
    }

    Name = llvm::MCSymbol::getName(a2);
    v22 = 1283;
    v14 = "unable to evaluate offset to undefined symbol '";
LABEL_17:
    v21[0] = v14;
    v21[2] = Name;
    v21[3] = v13;
    v19 = "'";
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  v15 = 0;
  v16 = 0;
  v18 = 0;
  v17 = 0;
  *(a2 + 1) = v8 | 4;
  if ((llvm::MCExpr::evaluateAsRelocatableImpl(*(a2 + 3), &v15, *a1, a1, 0, 0, 1) & 1) == 0)
  {
    Name = llvm::MCSymbol::getName(a2);
    v22 = 1283;
    v14 = "unable to evaluate offset for variable '";
    goto LABEL_17;
  }

  v9 = v17;
  if (v15)
  {
    v23[0] = 0;
    if (!getSymbolOffsetImpl(a1, *(v15 + 16), a3, v23))
    {
      return 0;
    }

    v9 += v23[0];
  }

  if (v16)
  {
    v23[0] = 0;
    if (getSymbolOffsetImpl(a1, *(v16 + 16), a3, v23))
    {
      v9 -= v23[0];
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  *a4 = v9;
  return 1;
}

uint64_t *llvm::MCSymbol::getName(llvm::MCSymbol *this)
{
  if ((*this & 4) == 0)
  {
    return 0;
  }

  v2 = *(this - 1);
  v3 = *v2;
  return v2 + 2;
}

uint64_t llvm::MCFragment::destroy(uint64_t this)
{
  v1 = this;
  switch(*(this + 48))
  {
    case 0:
    case 3:
    case 4:
    case 6:
    case 0xA:
    case 0xB:
    case 0xF:
      goto LABEL_28;
    case 1:
      v5 = *(this + 120);
      if (v5 != v1 + 17)
      {
        free(v5);
      }

      goto LABEL_25;
    case 2:
    case 9:
      goto LABEL_25;
    case 5:
      v9 = *(this + 152);
      if (v9 != v1 + 21)
      {
        free(v9);
      }

      v10 = v1[12];
      if (v10 != v1 + 14)
      {
        free(v10);
      }

      goto LABEL_25;
    case 7:
      v11 = *(this + 96);
      if (v11 != v1 + 14)
      {
        free(v11);
      }

      goto LABEL_25;
    case 8:
    case 0xE:
      v2 = *(this + 96);
      if (v2 != v1 + 14)
      {
        free(v2);
      }

      goto LABEL_25;
    case 0xC:
      v3 = *(this + 80);
      v4 = v1 + 13;
      goto LABEL_26;
    case 0xD:
      v6 = *(this + 280);
      if (v6 != v1 + 38)
      {
        free(v6);
      }

      v7 = v1[29];
      if (v7 != v1 + 31)
      {
        free(v7);
      }

      v8 = v1[15];
      if (v8 != v1 + 17)
      {
        free(v8);
      }

LABEL_25:
      v3 = v1[8];
      v4 = v1 + 11;
LABEL_26:
      if (v3 != v4)
      {
        free(v3);
      }

      goto LABEL_28;
    default:
      if (*(this + 48) == 255)
      {
LABEL_28:

        JUMPOUT(0x277C69E40);
      }

      return this;
  }
}

unint64_t llvm::MCObjectFileInfo::initMachOMCObjectFileInfo(llvm::MCObjectFileInfo *this, const llvm::Triple *a2)
{
  *(this + 8) = 0;
  *(this + 57) = llvm::MCContext::getMachOSection(*(this + 108), "__TEXT", 6uLL, "__eh_frame", 0xA, 1744830475, 0, 4, 0);
  v4 = *(a2 + 9);
  v5 = v4 > 0x21;
  v6 = (1 << v4) & 0x3F0000888;
  if (!v5 && v6 != 0)
  {
    v8 = *(a2 + 6);
    if (v8 == 5 || v8 == 3)
    {
      *(this + 9) = 1;
    }
  }

  v9 = *(this + 108);
  v10 = *(v9 + 2048);
  if (!v10 || (v11 = *(v10 + 4), v11 == 2))
  {
    if (*(a2 + 7) == 24)
    {
      v12 = 1;
    }

    else
    {
      v12 = *(this + 9);
    }

    LOBYTE(v11) = v12 & 1;
    goto LABEL_17;
  }

  if (v11 == 1)
  {
LABEL_17:
    *(this + 10) = v11;
    goto LABEL_18;
  }

  if (!v11)
  {
    *(this + 10) = 0;
  }

LABEL_18:
  *(this + 3) = 16;
  *(this + 3) = llvm::MCContext::getMachOSection(v9, "__TEXT", 6uLL, "__text", 6, 0x80000000, 0, 2, 0);
  *(this + 4) = llvm::MCContext::getMachOSection(*(this + 108), "__DATA", 6uLL, "__data", 6, 0, 0, 19, 0);
  *(this + 5) = 0;
  *(this + 52) = llvm::MCContext::getMachOSection(*(this + 108), "__DATA", 6uLL, "__thread_data", 0xD, 17, 0, 19, 0);
  *(this + 53) = llvm::MCContext::getMachOSection(*(this + 108), "__DATA", 6uLL, "__thread_bss", 0xC, 18, 0, 12, 0);
  *(this + 67) = llvm::MCContext::getMachOSection(*(this + 108), "__DATA", 6uLL, "__thread_vars", 0xD, 19, 0, 19, 0);
  *(this + 68) = llvm::MCContext::getMachOSection(*(this + 108), "__DATA", 6uLL, "__thread_init", 0xD, 21, 0, 19, 0);
  *(this + 69) = llvm::MCContext::getMachOSection(*(this + 108), "__TEXT", 6uLL, "__cstring", 9, 2, 0, 5, 0);
  *(this + 70) = llvm::MCContext::getMachOSection(*(this + 108), "__TEXT", 6uLL, "__ustring", 9, 0, 0, 6, 0);
  *(this + 78) = llvm::MCContext::getMachOSection(*(this + 108), "__TEXT", 6uLL, "__literal4", 0xA, 3, 0, 8, 0);
  *(this + 79) = llvm::MCContext::getMachOSection(*(this + 108), "__TEXT", 6uLL, "__literal8", 0xA, 4, 0, 9, 0);
  *(this + 80) = llvm::MCContext::getMachOSection(*(this + 108), "__TEXT", 6uLL, "__literal16", 0xB, 14, 0, 10, 0);
  *(this + 6) = llvm::MCContext::getMachOSection(*(this + 108), "__TEXT", 6uLL, "__const", 7, 0, 0, 4, 0);
  v13 = *(a2 + 6);
  MachOSection = llvm::MCContext::getMachOSection(*(this + 108), "__DATA", 6uLL, "__const", 7, 0, 0, 20, 0);
  *(this + 73) = MachOSection;
  if ((v13 & 0xFFFFFFFD) == 0x15)
  {
    *(this + 71) = llvm::MCContext::getMachOSection(*(this + 108), "__TEXT", 6uLL, "__textcoal_nt", 0xD, -2147483637, 0, 2, 0);
    *(this + 72) = llvm::MCContext::getMachOSection(*(this + 108), "__TEXT", 6uLL, "__const_coal", 0xC, 11, 0, 4, 0);
    MachOSection = llvm::MCContext::getMachOSection(*(this + 108), "__DATA", 6uLL, "__datacoal_nt", 0xD, 11, 0, 19, 0);
    v15 = MachOSection;
  }

  else
  {
    v15 = *(this + 4);
    *(this + 71) = *(this + 3);
    *(this + 72) = *(this + 6);
  }

  *(this + 74) = v15;
  *(this + 75) = MachOSection;
  *(this + 76) = llvm::MCContext::getMachOSection(*(this + 108), "__DATA", 6uLL, "__common", 8, 1, 0, 15, 0);
  *(this + 77) = llvm::MCContext::getMachOSection(*(this + 108), "__DATA", 6uLL, "__bss", 5, 1, 0, 15, 0);
  *(this + 81) = llvm::MCContext::getMachOSection(*(this + 108), "__DATA", 6uLL, "__la_symbol_ptr", 0xF, 7, 0, 0, 0);
  *(this + 82) = llvm::MCContext::getMachOSection(*(this + 108), "__DATA", 6uLL, "__nl_symbol_ptr", 0xF, 6, 0, 0, 0);
  *(this + 83) = llvm::MCContext::getMachOSection(*(this + 108), "__DATA", 6uLL, "__thread_ptr", 0xC, 20, 0, 0, 0);
  *(this + 84) = llvm::MCContext::getMachOSection(*(this + 108), "__DATA", 6uLL, "__llvm_addrsig", 0xE, 0, 0, 19, 0);
  *(this + 7) = llvm::MCContext::getMachOSection(*(this + 108), "__TEXT", 6uLL, "__gcc_except_tab", 0x10, 0, 0, 20, 0);
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 48) = 0;
  v16 = *(a2 + 9);
  if (v16 > 0x21 || ((1 << v16) & 0x3F0000888) == 0)
  {
    goto LABEL_29;
  }

  v17 = *(a2 + 6);
  if (v17 != 3 && v17 != 5 && *(a2 + 7) != 24)
  {
    if ((v16 & 0xFFFFFFF7) == 3)
    {
      if (!llvm::Triple::isMacOSXVersionLT(a2, 0xAu, 6, 0))
      {
        goto LABEL_26;
      }

      v16 = *(a2 + 9);
    }

    if (v16 != 28 && v16 != 7 || (*(a2 + 6) - 37) > 1)
    {
      goto LABEL_29;
    }
  }

LABEL_26:
  *(this + 8) = llvm::MCContext::getMachOSection(*(this + 108), "__LD", 4uLL, "__compact_unwind", 0x10, 0x2000000, 0, 4, 0);
  v18 = *(a2 + 6);
  if ((v18 - 37) < 2)
  {
LABEL_27:
    v19 = 0x4000000;
LABEL_28:
    *(this + 4) = v19;
    goto LABEL_29;
  }

  v19 = 50331648;
  if (v18 > 4)
  {
    if (v18 == 5)
    {
      goto LABEL_28;
    }

    if (v18 == 35)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v18 == 1)
    {
      goto LABEL_27;
    }

    if (v18 == 3)
    {
      goto LABEL_28;
    }
  }

LABEL_29:
  *(this + 23) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_names", 0xD, 0x2000000, 0, 0, "debug_names_begin");
  *(this + 24) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__apple_names", 0xD, 0x2000000, 0, 0, "names_begin");
  *(this + 25) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__apple_objc", 0xC, 0x2000000, 0, 0, "objc_begin");
  *(this + 26) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__apple_namespac", 0x10, 0x2000000, 0, 0, "namespac_begin");
  *(this + 27) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__apple_types", 0xD, 0x2000000, 0, 0, "types_begin");
  *(this + 47) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__swift_ast", 0xB, 0x2000000, 0, 0, 0);
  *(this + 9) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_abbrev", 0xE, 0x2000000, 0, 0, "section_abbrev");
  *(this + 10) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_info", 0xC, 0x2000000, 0, 0, "section_info");
  *(this + 11) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_line", 0xC, 0x2000000, 0, 0, "section_line");
  *(this + 12) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_line_str", 0x10, 0x2000000, 0, 0, "section_line_str");
  *(this + 13) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_frame", 0xD, 0x2000000, 0, 0, 0);
  *(this + 22) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_pubnames", 0x10, 0x2000000, 0, 0, 0);
  *(this + 14) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_pubtypes", 0x10, 0x2000000, 0, 0, 0);
  *(this + 45) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_gnu_pubn", 0x10, 0x2000000, 0, 0, 0);
  *(this + 46) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_gnu_pubt", 0x10, 0x2000000, 0, 0, 0);
  *(this + 16) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_str", 0xB, 0x2000000, 0, 0, "info_string");
  *(this + 37) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_str_offs", 0x10, 0x2000000, 0, 0, "section_str_off");
  *(this + 38) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_addr", 0xC, 0x2000000, 0, 0, "section_info");
  *(this + 17) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_loc", 0xB, 0x2000000, 0, 0, "section_debug_loc");
  *(this + 40) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_loclists", 0x10, 0x2000000, 0, 0, "section_debug_loc");
  *(this + 18) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_aranges", 0xF, 0x2000000, 0, 0, 0);
  *(this + 19) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_ranges", 0xE, 0x2000000, 0, 0, "debug_range");
  *(this + 39) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_rnglists", 0x10, 0x2000000, 0, 0, "debug_range");
  *(this + 20) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_macinfo", 0xF, 0x2000000, 0, 0, "debug_macinfo");
  *(this + 21) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_macro", 0xD, 0x2000000, 0, 0, "debug_macro");
  *(this + 15) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_inlined", 0xF, 0x2000000, 0, 0, 0);
  *(this + 43) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_cu_index", 0x10, 0x2000000, 0, 0, 0);
  *(this + 44) = llvm::MCContext::getMachOSection(*(this + 108), "__DWARF", 7uLL, "__debug_tu_index", 0x10, 0x2000000, 0, 0, 0);
  *(this + 54) = llvm::MCContext::getMachOSection(*(this + 108), "__LLVM_STACKMAPS", 0x10uLL, "__llvm_stackmaps", 0x10, 0, 0, 0, 0);
  *(this + 55) = llvm::MCContext::getMachOSection(*(this + 108), "__LLVM_FAULTMAPS", 0x10uLL, "__llvm_faultmaps", 0x10, 0, 0, 0, 0);
  result = llvm::MCContext::getMachOSection(*(this + 108), "__LLVM", 6uLL, "__remarks", 9, 0x2000000, 0, 0, 0);
  *(this + 56) = result;
  v21 = *(this + 108);
  if (*(v21 + 16))
  {
    v22 = *(v21 + 8);
    if (v22)
    {
      v23 = strlen(*(v21 + 8));
    }

    else
    {
      v23 = 0;
    }

    *(this + 97) = llvm::MCContext::getMachOSection(v21, v22, v23, "__swift5_fieldmd", 0x10, 0, 0, 0, 0);
    v24 = *(this + 108);
    v25 = *(v24 + 8);
    if (v25)
    {
      v26 = strlen(*(v24 + 8));
    }

    else
    {
      v26 = 0;
    }

    *(this + 98) = llvm::MCContext::getMachOSection(v24, v25, v26, "__swift5_assocty", 0x10, 0, 0, 0, 0);
    v27 = *(this + 108);
    v28 = *(v27 + 8);
    if (v28)
    {
      v29 = strlen(*(v27 + 8));
    }

    else
    {
      v29 = 0;
    }

    *(this + 99) = llvm::MCContext::getMachOSection(v27, v28, v29, "__swift5_builtin", 0x10, 0, 0, 0, 0);
    v30 = *(this + 108);
    v31 = *(v30 + 8);
    if (v31)
    {
      v32 = strlen(*(v30 + 8));
    }

    else
    {
      v32 = 0;
    }

    *(this + 100) = llvm::MCContext::getMachOSection(v30, v31, v32, "__swift5_capture", 0x10, 0, 0, 0, 0);
    v33 = *(this + 108);
    v34 = *(v33 + 8);
    if (v34)
    {
      v35 = strlen(*(v33 + 8));
    }

    else
    {
      v35 = 0;
    }

    *(this + 101) = llvm::MCContext::getMachOSection(v33, v34, v35, "__swift5_typeref", 0x10, 0, 0, 0, 0);
    v36 = *(this + 108);
    v37 = *(v36 + 8);
    if (v37)
    {
      v38 = strlen(*(v36 + 8));
    }

    else
    {
      v38 = 0;
    }

    *(this + 102) = llvm::MCContext::getMachOSection(v36, v37, v38, "__swift5_reflstr", 0x10, 0, 0, 0, 0);
    v39 = *(this + 108);
    v40 = *(v39 + 8);
    if (v40)
    {
      v41 = strlen(*(v39 + 8));
    }

    else
    {
      v41 = 0;
    }

    *(this + 103) = llvm::MCContext::getMachOSection(v39, v40, v41, "__swift5_proto", 0xE, 0, 0, 0, 0);
    v42 = *(this + 108);
    v43 = *(v42 + 8);
    if (v43)
    {
      v44 = strlen(*(v42 + 8));
    }

    else
    {
      v44 = 0;
    }

    *(this + 104) = llvm::MCContext::getMachOSection(v42, v43, v44, "__swift5_protos", 0xF, 0, 0, 0, 0);
    v45 = *(this + 108);
    v46 = *(v45 + 8);
    if (v46)
    {
      v47 = strlen(*(v45 + 8));
    }

    else
    {
      v47 = 0;
    }

    *(this + 105) = llvm::MCContext::getMachOSection(v45, v46, v47, "__swift5_acfuncs", 0x10, 0, 0, 0, 0);
    v48 = *(this + 108);
    v49 = *(v48 + 8);
    if (v49)
    {
      v50 = strlen(*(v48 + 8));
    }

    else
    {
      v50 = 0;
    }

    result = llvm::MCContext::getMachOSection(v48, v49, v50, "__swift5_mpenum", 0xF, 0, 0, 0, 0);
    *(this + 106) = result;
  }

  *(this + 51) = *(this + 67);
  return result;
}

uint64_t llvm::MCObjectFileInfo::initELFMCObjectFileInfo(llvm::MCObjectFileInfo *this, const llvm::Triple *a2, int a3)
{
  v5 = *(a2 + 6);
  if (v5 <= 15)
  {
    if ((v5 - 3) >= 2)
    {
      if ((v5 - 8) < 2)
      {
        v6 = 12;
        goto LABEL_24;
      }

      if (v5 == 12)
      {
        if (*(this + 856))
        {
          v6 = 16;
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_10:
    v7 = a3 == 0;
    v6 = 27;
    goto LABEL_16;
  }

  if (v5 > 0x28)
  {
    goto LABEL_23;
  }

  if (((1 << v5) & 0xF0000) == 0)
  {
    if (((1 << v5) & 0x4001800000) == 0)
    {
      if (v5 == 40)
      {
        v6 = 11;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (*(this + 856) == 1 && a3 == 0)
  {
LABEL_23:
    v6 = 27;
    goto LABEL_24;
  }

  v7 = *(*(*(this + 108) + 144) + 8) == 4;
  v6 = 11;
LABEL_16:
  if (!v7)
  {
    ++v6;
  }

LABEL_24:
  *(this + 3) = v6;
  v9 = *(a2 + 9);
  if (v5 == 38)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  if (v5 == 38)
  {
    v11 = 1879048193;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(this + 108);
  v71[0] = ".bss";
  v72 = 259;
  v74 = 257;
  if (v9 == 14)
  {
    v13 = v10;
  }

  else
  {
    v13 = 2;
  }

  *(this + 5) = llvm::MCContext::getELFSection(v12, v71, 8, 3, 0, v73, 0, -1, 0);
  v14 = *(this + 108);
  v71[0] = ".text";
  v72 = 259;
  v74 = 257;
  *(this + 3) = llvm::MCContext::getELFSection(v14, v71, 1, 6, 0, v73, 0, -1, 0);
  v15 = *(this + 108);
  v71[0] = ".data";
  v72 = 259;
  v74 = 257;
  *(this + 4) = llvm::MCContext::getELFSection(v15, v71, 1, 3, 0, v73, 0, -1, 0);
  v16 = *(this + 108);
  v71[0] = ".rodata";
  v72 = 259;
  v74 = 257;
  *(this + 6) = llvm::MCContext::getELFSection(v16, v71, 1, 2, 0, v73, 0, -1, 0);
  v17 = *(this + 108);
  v71[0] = ".tdata";
  v72 = 259;
  v74 = 257;
  *(this + 52) = llvm::MCContext::getELFSection(v17, v71, 1, 1027, 0, v73, 0, -1, 0);
  v18 = *(this + 108);
  v71[0] = ".tbss";
  v72 = 259;
  v74 = 257;
  *(this + 53) = llvm::MCContext::getELFSection(v18, v71, 8, 1027, 0, v73, 0, -1, 0);
  v19 = *(this + 108);
  v71[0] = ".data.rel.ro";
  v72 = 259;
  v74 = 257;
  *(this + 62) = llvm::MCContext::getELFSection(v19, v71, 1, 3, 0, v73, 0, -1, 0);
  v20 = *(this + 108);
  v71[0] = ".rodata.cst4";
  v72 = 259;
  v74 = 257;
  *(this + 63) = llvm::MCContext::getELFSection(v20, v71, 1, 18, 4, v73, 0, -1, 0);
  v21 = *(this + 108);
  v71[0] = ".rodata.cst8";
  v72 = 259;
  v74 = 257;
  *(this + 64) = llvm::MCContext::getELFSection(v21, v71, 1, 18, 8, v73, 0, -1, 0);
  v22 = *(this + 108);
  v71[0] = ".rodata.cst16";
  v72 = 259;
  v74 = 257;
  *(this + 65) = llvm::MCContext::getELFSection(v22, v71, 1, 18, 16, v73, 0, -1, 0);
  v23 = *(this + 108);
  v71[0] = ".rodata.cst32";
  v72 = 259;
  v74 = 257;
  *(this + 66) = llvm::MCContext::getELFSection(v23, v71, 1, 18, 32, v73, 0, -1, 0);
  v24 = *(this + 108);
  v71[0] = ".gcc_except_table";
  v72 = 259;
  v74 = 257;
  *(this + 7) = llvm::MCContext::getELFSection(v24, v71, 1, 2, 0, v73, 0, -1, 0);
  *(this + 48) = 0;
  *(this + 49) = 0;
  if ((*(a2 + 6) & 0xFFFFFFFC) == 0x10)
  {
    v25 = 1879048222;
  }

  else
  {
    v25 = 1;
  }

  v26 = *(this + 108);
  v71[0] = ".debug_abbrev";
  v72 = 259;
  v74 = 257;
  *(this + 9) = llvm::MCContext::getELFSection(v26, v71, v25, 0, 0, v73, 0, -1, 0);
  v27 = *(this + 108);
  v71[0] = ".debug_info";
  v72 = 259;
  v74 = 257;
  *(this + 10) = llvm::MCContext::getELFSection(v27, v71, v25, 0, 0, v73, 0, -1, 0);
  v28 = *(this + 108);
  v71[0] = ".debug_line";
  v72 = 259;
  v74 = 257;
  *(this + 11) = llvm::MCContext::getELFSection(v28, v71, v25, 0, 0, v73, 0, -1, 0);
  v29 = *(this + 108);
  v71[0] = ".debug_line_str";
  v72 = 259;
  v74 = 257;
  *(this + 12) = llvm::MCContext::getELFSection(v29, v71, v25, 48, 1, v73, 0, -1, 0);
  v30 = *(this + 108);
  v71[0] = ".debug_frame";
  v72 = 259;
  v74 = 257;
  *(this + 13) = llvm::MCContext::getELFSection(v30, v71, v25, 0, 0, v73, 0, -1, 0);
  v31 = *(this + 108);
  v71[0] = ".debug_pubnames";
  v72 = 259;
  v74 = 257;
  *(this + 22) = llvm::MCContext::getELFSection(v31, v71, v25, 0, 0, v73, 0, -1, 0);
  v32 = *(this + 108);
  v71[0] = ".debug_pubtypes";
  v72 = 259;
  v74 = 257;
  *(this + 14) = llvm::MCContext::getELFSection(v32, v71, v25, 0, 0, v73, 0, -1, 0);
  v33 = *(this + 108);
  v71[0] = ".debug_gnu_pubnames";
  v72 = 259;
  v74 = 257;
  *(this + 45) = llvm::MCContext::getELFSection(v33, v71, v25, 0, 0, v73, 0, -1, 0);
  v34 = *(this + 108);
  v71[0] = ".debug_gnu_pubtypes";
  v72 = 259;
  v74 = 257;
  *(this + 46) = llvm::MCContext::getELFSection(v34, v71, v25, 0, 0, v73, 0, -1, 0);
  v35 = *(this + 108);
  v71[0] = ".debug_str";
  v72 = 259;
  v74 = 257;
  *(this + 16) = llvm::MCContext::getELFSection(v35, v71, v25, 48, 1, v73, 0, -1, 0);
  v36 = *(this + 108);
  v71[0] = ".debug_loc";
  v72 = 259;
  v74 = 257;
  *(this + 17) = llvm::MCContext::getELFSection(v36, v71, v25, 0, 0, v73, 0, -1, 0);
  v37 = *(this + 108);
  v71[0] = ".debug_aranges";
  v72 = 259;
  v74 = 257;
  *(this + 18) = llvm::MCContext::getELFSection(v37, v71, v25, 0, 0, v73, 0, -1, 0);
  v38 = *(this + 108);
  v71[0] = ".debug_ranges";
  v72 = 259;
  v74 = 257;
  *(this + 19) = llvm::MCContext::getELFSection(v38, v71, v25, 0, 0, v73, 0, -1, 0);
  v39 = *(this + 108);
  v71[0] = ".debug_macinfo";
  v72 = 259;
  v74 = 257;
  *(this + 20) = llvm::MCContext::getELFSection(v39, v71, v25, 0, 0, v73, 0, -1, 0);
  v40 = *(this + 108);
  v71[0] = ".debug_macro";
  v72 = 259;
  v74 = 257;
  *(this + 21) = llvm::MCContext::getELFSection(v40, v71, v25, 0, 0, v73, 0, -1, 0);
  v41 = *(this + 108);
  v71[0] = ".debug_names";
  v72 = 259;
  v74 = 257;
  *(this + 23) = llvm::MCContext::getELFSection(v41, v71, 1, 0, 0, v73, 0, -1, 0);
  v42 = *(this + 108);
  v71[0] = ".apple_names";
  v72 = 259;
  v74 = 257;
  *(this + 24) = llvm::MCContext::getELFSection(v42, v71, 1, 0, 0, v73, 0, -1, 0);
  v43 = *(this + 108);
  v71[0] = ".apple_objc";
  v72 = 259;
  v74 = 257;
  *(this + 25) = llvm::MCContext::getELFSection(v43, v71, 1, 0, 0, v73, 0, -1, 0);
  v44 = *(this + 108);
  v71[0] = ".apple_namespaces";
  v72 = 259;
  v74 = 257;
  *(this + 26) = llvm::MCContext::getELFSection(v44, v71, 1, 0, 0, v73, 0, -1, 0);
  v45 = *(this + 108);
  v71[0] = ".apple_types";
  v72 = 259;
  v74 = 257;
  *(this + 27) = llvm::MCContext::getELFSection(v45, v71, 1, 0, 0, v73, 0, -1, 0);
  v46 = *(this + 108);
  v71[0] = ".debug_str_offsets";
  v72 = 259;
  v74 = 257;
  *(this + 37) = llvm::MCContext::getELFSection(v46, v71, v25, 0, 0, v73, 0, -1, 0);
  v47 = *(this + 108);
  v71[0] = ".debug_addr";
  v72 = 259;
  v74 = 257;
  *(this + 38) = llvm::MCContext::getELFSection(v47, v71, v25, 0, 0, v73, 0, -1, 0);
  v48 = *(this + 108);
  v71[0] = ".debug_rnglists";
  v72 = 259;
  v74 = 257;
  *(this + 39) = llvm::MCContext::getELFSection(v48, v71, v25, 0, 0, v73, 0, -1, 0);
  v49 = *(this + 108);
  v71[0] = ".debug_loclists";
  v72 = 259;
  v74 = 257;
  *(this + 40) = llvm::MCContext::getELFSection(v49, v71, v25, 0, 0, v73, 0, -1, 0);
  v50 = *(this + 108);
  v71[0] = ".debug_info.dwo";
  v72 = 259;
  v74 = 257;
  *(this + 28) = llvm::MCContext::getELFSection(v50, v71, v25, 0x80000000, 0, v73, 0, -1, 0);
  v51 = *(this + 108);
  v71[0] = ".debug_types.dwo";
  v72 = 259;
  v74 = 257;
  *(this + 29) = llvm::MCContext::getELFSection(v51, v71, v25, 0x80000000, 0, v73, 0, -1, 0);
  v52 = *(this + 108);
  v71[0] = ".debug_abbrev.dwo";
  v72 = 259;
  v74 = 257;
  *(this + 30) = llvm::MCContext::getELFSection(v52, v71, v25, 0x80000000, 0, v73, 0, -1, 0);
  v53 = *(this + 108);
  v71[0] = ".debug_str.dwo";
  v72 = 259;
  v74 = 257;
  *(this + 31) = llvm::MCContext::getELFSection(v53, v71, v25, -2147483600, 1, v73, 0, -1, 0);
  v54 = *(this + 108);
  v71[0] = ".debug_line.dwo";
  v72 = 259;
  v74 = 257;
  *(this + 32) = llvm::MCContext::getELFSection(v54, v71, v25, 0x80000000, 0, v73, 0, -1, 0);
  v55 = *(this + 108);
  v71[0] = ".debug_loc.dwo";
  v72 = 259;
  v74 = 257;
  *(this + 33) = llvm::MCContext::getELFSection(v55, v71, v25, 0x80000000, 0, v73, 0, -1, 0);
  v56 = *(this + 108);
  v71[0] = ".debug_str_offsets.dwo";
  v72 = 259;
  v74 = 257;
  *(this + 34) = llvm::MCContext::getELFSection(v56, v71, v25, 0x80000000, 0, v73, 0, -1, 0);
  v57 = *(this + 108);
  v71[0] = ".debug_rnglists.dwo";
  v72 = 259;
  v74 = 257;
  *(this + 41) = llvm::MCContext::getELFSection(v57, v71, v25, 0x80000000, 0, v73, 0, -1, 0);
  v58 = *(this + 108);
  v71[0] = ".debug_macinfo.dwo";
  v72 = 259;
  v74 = 257;
  *(this + 35) = llvm::MCContext::getELFSection(v58, v71, v25, 0x80000000, 0, v73, 0, -1, 0);
  v59 = *(this + 108);
  v71[0] = ".debug_macro.dwo";
  v72 = 259;
  v74 = 257;
  *(this + 36) = llvm::MCContext::getELFSection(v59, v71, v25, 0x80000000, 0, v73, 0, -1, 0);
  v60 = *(this + 108);
  v71[0] = ".debug_loclists.dwo";
  v72 = 259;
  v74 = 257;
  *(this + 42) = llvm::MCContext::getELFSection(v60, v71, v25, 0x80000000, 0, v73, 0, -1, 0);
  v61 = *(this + 108);
  v71[0] = ".debug_cu_index";
  v72 = 259;
  v74 = 257;
  *(this + 43) = llvm::MCContext::getELFSection(v61, v71, v25, 0, 0, v73, 0, -1, 0);
  v62 = *(this + 108);
  v71[0] = ".debug_tu_index";
  v72 = 259;
  v74 = 257;
  *(this + 44) = llvm::MCContext::getELFSection(v62, v71, v25, 0, 0, v73, 0, -1, 0);
  v63 = *(this + 108);
  v71[0] = ".llvm_stackmaps";
  v72 = 259;
  v74 = 257;
  *(this + 54) = llvm::MCContext::getELFSection(v63, v71, 1, 2, 0, v73, 0, -1, 0);
  v64 = *(this + 108);
  v71[0] = ".llvm_faultmaps";
  v72 = 259;
  v74 = 257;
  *(this + 55) = llvm::MCContext::getELFSection(v64, v71, 1, 2, 0, v73, 0, -1, 0);
  v65 = *(this + 108);
  v71[0] = ".eh_frame";
  v72 = 259;
  v74 = 257;
  *(this + 57) = llvm::MCContext::getELFSection(v65, v71, v11, v13, 0, v73, 0, -1, 0);
  v66 = *(this + 108);
  v71[0] = ".stack_sizes";
  v72 = 259;
  v74 = 257;
  *(this + 58) = llvm::MCContext::getELFSection(v66, v71, 1, 0, 0, v73, 0, -1, 0);
  v67 = *(this + 108);
  v71[0] = ".pseudo_probe";
  v72 = 259;
  v74 = 257;
  *(this + 59) = llvm::MCContext::getELFSection(v67, v71, v25, 0, 0, v73, 0, -1, 0);
  v68 = *(this + 108);
  v71[0] = ".pseudo_probe_desc";
  v72 = 259;
  v74 = 257;
  *(this + 60) = llvm::MCContext::getELFSection(v68, v71, v25, 0, 0, v73, 0, -1, 0);
  v69 = *(this + 108);
  v71[0] = ".llvm_stats";
  v72 = 259;
  v74 = 257;
  result = llvm::MCContext::getELFSection(v69, v71, 1, 0, 0, v73, 0, -1, 0);
  *(this + 61) = result;
  return result;
}

void llvm::MCObjectFileInfo::initGOFFMCObjectFileInfo(llvm::MCObjectFileInfo *this, const llvm::Triple *a2)
{
  llvm::MCContext::getGOFFSection(*(this + 108), ".text", 5uLL, 2, 0, 0);
  *(this + 3) = v3;
  llvm::MCContext::getGOFFSection(*(this + 108), ".bss", 4uLL, 15, 0, 0);
  *(this + 5) = v4;
  v5 = *(this + 108);
  v6 = *(this + 3);
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v5 + 184, 24, 3);
  *v7 = 1;
  *(v7 + 1) = *(v7 + 4) << 24;
  *(v7 + 8) = 0;
  *(v7 + 16) = 2;
  llvm::MCContext::getGOFFSection(v5, ".ppa1", 5uLL, 0, v6, v7);
  *(this + 93) = v8;
}

uint64_t llvm::MCObjectFileInfo::initCOFFMCObjectFileInfo(llvm::MCObjectFileInfo *this, const llvm::Triple *a2)
{
  *(this + 57) = llvm::MCContext::getCOFFSection(*(this + 108), ".eh_frame", 9uLL, 1073741888, 19, &str_25, 0, 0, 0xFFFFFFFF, 0);
  v4 = *(a2 + 6);
  *(this + 5) = llvm::MCContext::getCOFFSection(*(this + 108), ".bss", 4uLL, -1073741696, 15, &str_25, 0, 0, 0xFFFFFFFF, 0);
  if (v4 == 35)
  {
    v5 = 1610743840;
  }

  else
  {
    v5 = 1610612768;
  }

  *(this + 3) = llvm::MCContext::getCOFFSection(*(this + 108), ".text", 5uLL, v5, 2, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 4) = llvm::MCContext::getCOFFSection(*(this + 108), ".data", 5uLL, -1073741760, 19, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 6) = llvm::MCContext::getCOFFSection(*(this + 108), ".rdata", 6uLL, 1073741888, 4, &str_25, 0, 0, 0xFFFFFFFF, 0);
  v6 = *(a2 + 6);
  if (v6 > 0x26 || (COFFSection = 0, ((1 << v6) & 0x480000000ALL) == 0))
  {
    COFFSection = llvm::MCContext::getCOFFSection(*(this + 108), ".gcc_except_table", 0x11uLL, 1073741888, 4, &str_25, 0, 0, 0xFFFFFFFF, 0);
  }

  *(this + 7) = COFFSection;
  *(this + 48) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug$S", 8uLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 49) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug$T", 8uLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 50) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug$H", 8uLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 9) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_abbrev", 0xDuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "section_abbrev");
  *(this + 10) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_info", 0xBuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "section_info");
  *(this + 11) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_line", 0xBuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "section_line");
  *(this + 12) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_line_str", 0xFuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "section_line_str");
  *(this + 13) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_frame", 0xCuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 22) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_pubnames", 0xFuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 14) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_pubtypes", 0xFuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 45) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_gnu_pubnames", 0x13uLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 46) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_gnu_pubtypes", 0x13uLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 16) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_str", 0xAuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "info_string");
  *(this + 37) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_str_offsets", 0x12uLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "section_str_off");
  *(this + 17) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_loc", 0xAuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "section_debug_loc");
  *(this + 40) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_loclists", 0xFuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "section_debug_loclists");
  *(this + 18) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_aranges", 0xEuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 19) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_ranges", 0xDuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "debug_range");
  *(this + 39) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_rnglists", 0xFuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "debug_rnglists");
  *(this + 20) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_macinfo", 0xEuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "debug_macinfo");
  *(this + 21) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_macro", 0xCuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "debug_macro");
  *(this + 35) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_macinfo.dwo", 0x12uLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "debug_macinfo.dwo");
  *(this + 36) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_macro.dwo", 0x10uLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "debug_macro.dwo");
  *(this + 28) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_info.dwo", 0xFuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "section_info_dwo");
  *(this + 29) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_types.dwo", 0x10uLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "section_types_dwo");
  *(this + 30) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_abbrev.dwo", 0x11uLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "section_abbrev_dwo");
  *(this + 31) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_str.dwo", 0xEuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "skel_string");
  *(this + 32) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_line.dwo", 0xFuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 33) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_loc.dwo", 0xEuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "skel_loc");
  *(this + 34) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_str_offsets.dwo", 0x16uLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "section_str_off_dwo");
  *(this + 38) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_addr", 0xBuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "addr_sec");
  *(this + 43) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_cu_index", 0xFuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 44) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_tu_index", 0xFuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 23) = llvm::MCContext::getCOFFSection(*(this + 108), ".debug_names", 0xCuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "debug_names_begin");
  *(this + 24) = llvm::MCContext::getCOFFSection(*(this + 108), ".apple_names", 0xCuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "names_begin");
  *(this + 26) = llvm::MCContext::getCOFFSection(*(this + 108), ".apple_namespaces", 0x11uLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "namespac_begin");
  *(this + 27) = llvm::MCContext::getCOFFSection(*(this + 108), ".apple_types", 0xCuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "types_begin");
  *(this + 25) = llvm::MCContext::getCOFFSection(*(this + 108), ".apple_objc", 0xBuLL, 1107296320, 0, &str_25, 0, 0, 0xFFFFFFFF, "objc_begin");
  *(this + 85) = llvm::MCContext::getCOFFSection(*(this + 108), ".drectve", 8uLL, 2560, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 86) = llvm::MCContext::getCOFFSection(*(this + 108), ".pdata", 6uLL, 1073741888, 19, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 87) = llvm::MCContext::getCOFFSection(*(this + 108), ".xdata", 6uLL, 1073741888, 19, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 88) = llvm::MCContext::getCOFFSection(*(this + 108), ".sxdata", 7uLL, 512, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 89) = llvm::MCContext::getCOFFSection(*(this + 108), ".gehcont$y", 0xAuLL, 1073741888, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 90) = llvm::MCContext::getCOFFSection(*(this + 108), ".gfids$y", 8uLL, 1073741888, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 91) = llvm::MCContext::getCOFFSection(*(this + 108), ".giats$y", 8uLL, 1073741888, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 92) = llvm::MCContext::getCOFFSection(*(this + 108), ".gljmp$y", 8uLL, 1073741888, 0, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 52) = llvm::MCContext::getCOFFSection(*(this + 108), ".tls$", 5uLL, -1073741760, 19, &str_25, 0, 0, 0xFFFFFFFF, 0);
  result = llvm::MCContext::getCOFFSection(*(this + 108), ".llvm_stackmaps", 0xFuLL, 1073741888, 4, &str_25, 0, 0, 0xFFFFFFFF, 0);
  *(this + 54) = result;
  return result;
}

uint64_t llvm::MCObjectFileInfo::initWasmMCObjectFileInfo(llvm::MCObjectFileInfo *this, const llvm::Triple *a2)
{
  v3 = *(this + 108);
  v42[0] = ".text";
  v43 = 259;
  v45 = 257;
  *(this + 3) = llvm::MCContext::getWasmSection(v3, v42, 2u, 0, v44, -1);
  v4 = *(this + 108);
  v42[0] = ".data";
  v43 = 259;
  v45 = 257;
  *(this + 4) = llvm::MCContext::getWasmSection(v4, v42, 0x13u, 0, v44, -1);
  v5 = *(this + 108);
  v42[0] = ".debug_line";
  v43 = 259;
  v45 = 257;
  *(this + 11) = llvm::MCContext::getWasmSection(v5, v42, 0, 0, v44, -1);
  v6 = *(this + 108);
  v42[0] = ".debug_line_str";
  v43 = 259;
  v45 = 257;
  *(this + 12) = llvm::MCContext::getWasmSection(v6, v42, 0, 1, v44, -1);
  v7 = *(this + 108);
  v42[0] = ".debug_str";
  v43 = 259;
  v45 = 257;
  *(this + 16) = llvm::MCContext::getWasmSection(v7, v42, 0, 1, v44, -1);
  v8 = *(this + 108);
  v42[0] = ".debug_loc";
  v43 = 259;
  v45 = 257;
  *(this + 17) = llvm::MCContext::getWasmSection(v8, v42, 0, 0, v44, -1);
  v9 = *(this + 108);
  v42[0] = ".debug_abbrev";
  v43 = 259;
  v45 = 257;
  *(this + 9) = llvm::MCContext::getWasmSection(v9, v42, 0, 0, v44, -1);
  v10 = *(this + 108);
  v42[0] = ".debug_aranges";
  v43 = 259;
  v45 = 257;
  *(this + 18) = llvm::MCContext::getWasmSection(v10, v42, 0, 0, v44, -1);
  v11 = *(this + 108);
  v42[0] = ".debug_ranges";
  v43 = 259;
  v45 = 257;
  *(this + 19) = llvm::MCContext::getWasmSection(v11, v42, 0, 0, v44, -1);
  v12 = *(this + 108);
  v42[0] = ".debug_macinfo";
  v43 = 259;
  v45 = 257;
  *(this + 20) = llvm::MCContext::getWasmSection(v12, v42, 0, 0, v44, -1);
  v13 = *(this + 108);
  v42[0] = ".debug_macro";
  v43 = 259;
  v45 = 257;
  *(this + 21) = llvm::MCContext::getWasmSection(v13, v42, 0, 0, v44, -1);
  v14 = *(this + 108);
  v42[0] = ".debug_cu_index";
  v43 = 259;
  v45 = 257;
  *(this + 43) = llvm::MCContext::getWasmSection(v14, v42, 0, 0, v44, -1);
  v15 = *(this + 108);
  v42[0] = ".debug_tu_index";
  v43 = 259;
  v45 = 257;
  *(this + 44) = llvm::MCContext::getWasmSection(v15, v42, 0, 0, v44, -1);
  v16 = *(this + 108);
  v42[0] = ".debug_info";
  v43 = 259;
  v45 = 257;
  *(this + 10) = llvm::MCContext::getWasmSection(v16, v42, 0, 0, v44, -1);
  v17 = *(this + 108);
  v42[0] = ".debug_frame";
  v43 = 259;
  v45 = 257;
  *(this + 13) = llvm::MCContext::getWasmSection(v17, v42, 0, 0, v44, -1);
  v18 = *(this + 108);
  v42[0] = ".debug_pubnames";
  v43 = 259;
  v45 = 257;
  *(this + 22) = llvm::MCContext::getWasmSection(v18, v42, 0, 0, v44, -1);
  v19 = *(this + 108);
  v42[0] = ".debug_pubtypes";
  v43 = 259;
  v45 = 257;
  *(this + 14) = llvm::MCContext::getWasmSection(v19, v42, 0, 0, v44, -1);
  v20 = *(this + 108);
  v42[0] = ".debug_gnu_pubnames";
  v43 = 259;
  v45 = 257;
  *(this + 45) = llvm::MCContext::getWasmSection(v20, v42, 0, 0, v44, -1);
  v21 = *(this + 108);
  v42[0] = ".debug_gnu_pubtypes";
  v43 = 259;
  v45 = 257;
  *(this + 46) = llvm::MCContext::getWasmSection(v21, v42, 0, 0, v44, -1);
  v22 = *(this + 108);
  v42[0] = ".debug_names";
  v43 = 259;
  v45 = 257;
  *(this + 23) = llvm::MCContext::getWasmSection(v22, v42, 0, 0, v44, -1);
  v23 = *(this + 108);
  v42[0] = ".debug_str_offsets";
  v43 = 259;
  v45 = 257;
  *(this + 37) = llvm::MCContext::getWasmSection(v23, v42, 0, 0, v44, -1);
  v24 = *(this + 108);
  v42[0] = ".debug_addr";
  v43 = 259;
  v45 = 257;
  *(this + 38) = llvm::MCContext::getWasmSection(v24, v42, 0, 0, v44, -1);
  v25 = *(this + 108);
  v42[0] = ".debug_rnglists";
  v43 = 259;
  v45 = 257;
  *(this + 39) = llvm::MCContext::getWasmSection(v25, v42, 0, 0, v44, -1);
  v26 = *(this + 108);
  v42[0] = ".debug_loclists";
  v43 = 259;
  v45 = 257;
  *(this + 40) = llvm::MCContext::getWasmSection(v26, v42, 0, 0, v44, -1);
  v27 = *(this + 108);
  v42[0] = ".debug_info.dwo";
  v43 = 259;
  v45 = 257;
  *(this + 28) = llvm::MCContext::getWasmSection(v27, v42, 0, 0, v44, -1);
  v28 = *(this + 108);
  v42[0] = ".debug_types.dwo";
  v43 = 259;
  v45 = 257;
  *(this + 29) = llvm::MCContext::getWasmSection(v28, v42, 0, 0, v44, -1);
  v29 = *(this + 108);
  v42[0] = ".debug_abbrev.dwo";
  v43 = 259;
  v45 = 257;
  *(this + 30) = llvm::MCContext::getWasmSection(v29, v42, 0, 0, v44, -1);
  v30 = *(this + 108);
  v42[0] = ".debug_str.dwo";
  v43 = 259;
  v45 = 257;
  *(this + 31) = llvm::MCContext::getWasmSection(v30, v42, 0, 1, v44, -1);
  v31 = *(this + 108);
  v42[0] = ".debug_line.dwo";
  v43 = 259;
  v45 = 257;
  *(this + 32) = llvm::MCContext::getWasmSection(v31, v42, 0, 0, v44, -1);
  v32 = *(this + 108);
  v42[0] = ".debug_loc.dwo";
  v43 = 259;
  v45 = 257;
  *(this + 33) = llvm::MCContext::getWasmSection(v32, v42, 0, 0, v44, -1);
  v33 = *(this + 108);
  v42[0] = ".debug_str_offsets.dwo";
  v43 = 259;
  v45 = 257;
  *(this + 34) = llvm::MCContext::getWasmSection(v33, v42, 0, 0, v44, -1);
  v34 = *(this + 108);
  v42[0] = ".debug_rnglists.dwo";
  v43 = 259;
  v45 = 257;
  *(this + 41) = llvm::MCContext::getWasmSection(v34, v42, 0, 0, v44, -1);
  v35 = *(this + 108);
  v42[0] = ".debug_macinfo.dwo";
  v43 = 259;
  v45 = 257;
  *(this + 35) = llvm::MCContext::getWasmSection(v35, v42, 0, 0, v44, -1);
  v36 = *(this + 108);
  v42[0] = ".debug_macro.dwo";
  v43 = 259;
  v45 = 257;
  *(this + 36) = llvm::MCContext::getWasmSection(v36, v42, 0, 0, v44, -1);
  v37 = *(this + 108);
  v42[0] = ".debug_loclists.dwo";
  v43 = 259;
  v45 = 257;
  *(this + 42) = llvm::MCContext::getWasmSection(v37, v42, 0, 0, v44, -1);
  v38 = *(this + 108);
  v42[0] = ".debug_cu_index";
  v43 = 259;
  v45 = 257;
  *(this + 43) = llvm::MCContext::getWasmSection(v38, v42, 0, 0, v44, -1);
  v39 = *(this + 108);
  v42[0] = ".debug_tu_index";
  v43 = 259;
  v45 = 257;
  *(this + 44) = llvm::MCContext::getWasmSection(v39, v42, 0, 0, v44, -1);
  v40 = *(this + 108);
  v42[0] = ".rodata.gcc_except_table";
  v43 = 259;
  v45 = 257;
  result = llvm::MCContext::getWasmSection(v40, v42, 0x14u, 0, v44, -1);
  *(this + 7) = result;
  return result;
}

const void *llvm::MCObjectFileInfo::initXCOFFMCObjectFileInfo(llvm::MCObjectFileInfo *this, const llvm::Triple *a2)
{
  *(this + 3) = llvm::MCContext::getXCOFFSection(*(this + 108), ".text", 5uLL, 2, 0, 1, 0, 0);
  *(this + 4) = llvm::MCContext::getXCOFFSection(*(this + 108), ".data", 5uLL, 19, 5, 1, 0, 0);
  XCOFFSection = llvm::MCContext::getXCOFFSection(*(this + 108), ".rodata", 7uLL, 4, 1, 1, 0, 0);
  *(this + 6) = XCOFFSection;
  XCOFFSection[24] = 2;
  v4 = llvm::MCContext::getXCOFFSection(*(this + 108), ".rodata.8", 9uLL, 4, 1, 1, 0, 0);
  *(this + 95) = v4;
  v4[24] = 3;
  v5 = llvm::MCContext::getXCOFFSection(*(this + 108), ".rodata.16", 0xAuLL, 4, 1, 1, 0, 0);
  *(this + 96) = v5;
  v5[24] = 4;
  *(this + 52) = llvm::MCContext::getXCOFFSection(*(this + 108), ".tdata", 6uLL, 13, 20, 1, 0, 0);
  v6 = llvm::MCContext::getXCOFFSection(*(this + 108), "TOC", 3uLL, 19, 15, 0, 0, 0);
  *(this + 94) = v6;
  v6[24] = 2;
  *(this + 7) = llvm::MCContext::getXCOFFSection(*(this + 108), ".gcc_except_table", 0x11uLL, 4, 1, 0, 0, 0);
  *(this + 8) = llvm::MCContext::getXCOFFSection(*(this + 108), ".eh_info_table", 0xEuLL, 19, 5, 0, 0, 0);
  *(this + 9) = llvm::MCContext::getXCOFFSection(*(this + 108), ".dwabrev", 8uLL, 0, 0, 1, ".dwabrev", 0x100060000);
  *(this + 10) = llvm::MCContext::getXCOFFSection(*(this + 108), ".dwinfo", 7uLL, 0, 0, 1, ".dwinfo", 0x100010000);
  *(this + 11) = llvm::MCContext::getXCOFFSection(*(this + 108), ".dwline", 7uLL, 0, 0, 1, ".dwline", 0x100020000);
  *(this + 13) = llvm::MCContext::getXCOFFSection(*(this + 108), ".dwframe", 8uLL, 0, 0, 1, ".dwframe", 0x1000A0000);
  *(this + 22) = llvm::MCContext::getXCOFFSection(*(this + 108), ".dwpbnms", 8uLL, 0, 0, 1, ".dwpbnms", 0x100030000);
  *(this + 14) = llvm::MCContext::getXCOFFSection(*(this + 108), ".dwpbtyp", 8uLL, 0, 0, 1, ".dwpbtyp", 0x100040000);
  *(this + 16) = llvm::MCContext::getXCOFFSection(*(this + 108), ".dwstr", 6uLL, 0, 0, 1, ".dwstr", 0x100070000);
  *(this + 17) = llvm::MCContext::getXCOFFSection(*(this + 108), ".dwloc", 6uLL, 0, 0, 1, ".dwloc", 0x100090000);
  *(this + 18) = llvm::MCContext::getXCOFFSection(*(this + 108), ".dwarnge", 8uLL, 0, 0, 1, ".dwarnge", 0x100050000);
  *(this + 19) = llvm::MCContext::getXCOFFSection(*(this + 108), ".dwrnges", 8uLL, 0, 0, 1, ".dwrnges", 0x100080000);
  result = llvm::MCContext::getXCOFFSection(*(this + 108), ".dwmac", 6uLL, 0, 0, 1, ".dwmac", 0x1000B0000);
  *(this + 20) = result;
  return result;
}

void llvm::MCObjectFileInfo::~MCObjectFileInfo(void **this)
{
  *this = &unk_2883F0378;
  if (*(this + 936) == 1 && *(this + 911) < 0)
  {
    operator delete(this[111]);
  }
}

{
  *this = &unk_2883F0378;
  if (*(this + 936) == 1 && *(this + 911) < 0)
  {
    operator delete(this[111]);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::MCObjectFileInfo::initMCObjectFileInfo(llvm::MCObjectFileInfo *this, llvm::MCContext *a2, char a3, int a4)
{
  *(this + 856) = a3;
  *(this + 108) = a2;
  *(this + 4) = 1;
  *(this + 10) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 57) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 3), *(a2 + 4));
    v7 = *(this + 108);
  }

  else
  {
    __p = *(a2 + 1);
    v7 = a2;
  }

  v10 = *(a2 + 3);
  v11 = *(a2 + 8);
  v8 = *v7;
  if (*v7 > 3)
  {
    if (v8 > 5)
    {
      if (v8 == 6)
      {
        llvm::MCObjectFileInfo::initXCOFFMCObjectFileInfo(this, a2);
      }

      else if (v8 == 7)
      {
        *(this + 3) = llvm::MCContext::getDXContainerSection(v7, "DXBC", 4uLL, 2);
      }
    }

    else
    {
      if (v8 == 4)
      {
        llvm::MCContext::getSPIRVSection(v7);
      }

      if (v8 == 5)
      {
        llvm::MCObjectFileInfo::initWasmMCObjectFileInfo(this, a2);
      }
    }
  }

  else if (v8 > 1)
  {
    if (v8 == 2)
    {
      llvm::MCObjectFileInfo::initGOFFMCObjectFileInfo(this, a2);
    }

    else if (v8 == 3)
    {
      llvm::MCObjectFileInfo::initCOFFMCObjectFileInfo(this, &__p);
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      llvm::MCObjectFileInfo::initELFMCObjectFileInfo(this, &__p, a4);
    }
  }

  else
  {
    llvm::MCObjectFileInfo::initMachOMCObjectFileInfo(this, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t llvm::MCObjectWriter::isSymbolRefDifferenceFullyResolved(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 1))
  {
    return 0;
  }

  if (*(a4 + 1))
  {
    return 0;
  }

  v9 = *(a3 + 16);
  v10 = *(a4 + 16);
  if (!llvm::MCSymbol::getFragment(v9, 1u) || !llvm::MCSymbol::getFragment(v10, 1u) || !llvm::MCSymbol::getFragment(v9, 1u) || !llvm::MCSymbol::getFragment(v10, 1u))
  {
    return 0;
  }

  v11 = *(*a1 + 40);

  return v11(a1, a2, v9, v10, a5);
}

void llvm::MCPseudoProbeInlineTree::addPseudoProbe(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    a2 = *a3;
  }

  v4 = *a2;
  llvm::MCPseudoProbeInlineTreeBase<llvm::MCPseudoProbe,llvm::MCPseudoProbeInlineTree>::getOrAddNode();
}

void std::default_delete<llvm::MCPseudoProbeInlineTree>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,std::__unordered_map_hasher<std::tuple<unsigned long long,unsigned int>,std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,llvm::MCPseudoProbeInlineTreeBase<llvm::MCPseudoProbe,llvm::MCPseudoProbeInlineTree>::InlineSiteHash,std::equal_to<std::tuple<unsigned long long,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<unsigned long long,unsigned int>,std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>,std::equal_to<std::tuple<unsigned long long,unsigned int>>,llvm::MCPseudoProbeInlineTreeBase<llvm::MCPseudoProbe,llvm::MCPseudoProbeInlineTree>::InlineSiteHash,true>,std::allocator<std::__hash_value_type<std::tuple<unsigned long long,unsigned int>,std::unique_ptr<llvm::MCPseudoProbeInlineTree>>>>::__deallocate_node(a1, *(a1 + 16));
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::MCRegisterInfo::getDwarfRegNum(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 128;
  if (a3)
  {
    v3 = 136;
  }

  v4 = *(a1 + v3);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 112;
  if (a3)
  {
    v5 = 116;
  }

  v6 = *(a1 + v5);
  v7 = &v4[2 * v6];
  if (v6)
  {
    do
    {
      v8 = v6 >> 1;
      v9 = &v4[2 * (v6 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v6 += ~(v6 >> 1);
      if (v11 < a2)
      {
        v4 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
  }

  if (v4 != v7 && *v4 == a2)
  {
    return v4[1];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::MCRegister,int,llvm::DenseMapInfo<llvm::MCRegister,void>,llvm::detail::DenseMapPair<llvm::MCRegister,int>>,llvm::MCRegister,int,llvm::DenseMapInfo<llvm::MCRegister,void>,llvm::detail::DenseMapPair<llvm::MCRegister,int>>::find(uint64_t a1, _DWORD *a2)
{
  v7 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(a1, a2, &v7))
  {
    result = v7;
    v4 = *a1;
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a1 + 16);
    result = *a1 + 8 * v5;
  }

  v6 = *a1 + 8 * v5;
  return result;
}

double llvm::MCSection::MCSection(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *a1 = &unk_2883F03A0;
  *(a1 + 8) = a6;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 44) &= 0xF8u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a1;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 15;
  *(a1 + 98) = 0;
  *(a1 + 104) = a1 + 104;
  *(a1 + 112) = a1 + 104;
  *(a1 + 120) = a1 + 136;
  *(a1 + 128) = 0x100000000;
  *(a1 + 152) = a1 + 168;
  *&result = 0x200000000;
  *(a1 + 160) = 0x200000000;
  *(a1 + 200) = a3;
  *(a1 + 208) = a4;
  *(a1 + 216) = a2;
  *(a1 + 220) = a5;
  return result;
}

void llvm::MCSection::~MCSection(llvm::MCSection *this)
{
  *this = &unk_2883F03A0;
  v2 = *(this + 19);
  if (v2 != this + 168)
  {
    free(v2);
  }

  v3 = *(this + 15);
  if (v3 != this + 136)
  {
    free(v3);
  }

  llvm::iplist_impl<llvm::simple_ilist<llvm::MCFragment>,llvm::ilist_traits<llvm::MCFragment>>::clear(this + 13);
}

uint64_t *llvm::iplist_impl<llvm::simple_ilist<llvm::MCFragment>,llvm::ilist_traits<llvm::MCFragment>>::clear(uint64_t *a1)
{
  result = a1[1];
  if (result != a1)
  {
    do
    {
      v3 = *result;
      v4 = result[1];
      *v4 = *result;
      *(v3 + 8) = v4;
      *result = 0;
      result[1] = 0;
      llvm::MCFragment::destroy(result);
      result = v4;
    }

    while (v4 != a1);
  }

  return result;
}

llvm::raw_ostream *llvm::MCSectionCOFF::printSwitchToSection(uint64_t a1, _BYTE *a2, int a3, llvm::raw_ostream *this)
{
  if (*(a1 + 232))
  {
    goto LABEL_2;
  }

  v11 = *(a1 + 200);
  v12 = *(a1 + 208);
  if (v12 == 4)
  {
    if (*v11 != 1936941614)
    {
      goto LABEL_2;
    }
  }

  else if (v12 != 5 || (*v11 == 2019914798 ? (v13 = *(v11 + 4) == 116) : (v13 = 0), !v13 && ((v14 = *v11, v15 = *(v11 + 4), v14 == 1952539694) ? (v16 = v15 == 97) : (v16 = 0), !v16)))
  {
LABEL_2:
    v7 = *(this + 4);
    if ((*(this + 3) - v7) > 9)
    {
      *(v7 + 8) = 2414;
      *v7 = *"\t.section\t";
      *(this + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(this, "\t.section\t", 0xAuLL);
    }

    result = llvm::raw_ostream::operator<<(this, *(a1 + 200), *(a1 + 208));
    v9 = *(result + 4);
    if (*(result + 3) - v9 > 1uLL)
    {
      *v9 = 8748;
      *(result + 4) += 2;
    }

    else
    {
      result = llvm::raw_ostream::write(result, ",", 2uLL);
    }

    if ((*(a1 + 224) & 0x40) != 0)
    {
      v10 = *(this + 4);
      if (v10 >= *(this + 3))
      {
        result = llvm::raw_ostream::write(this, 100);
      }

      else
      {
        *(this + 4) = v10 + 1;
        *v10 = 100;
      }
    }

    if ((*(a1 + 224) & 0x80) != 0)
    {
      v17 = *(this + 4);
      if (v17 >= *(this + 3))
      {
        result = llvm::raw_ostream::write(this, 98);
      }

      else
      {
        *(this + 4) = v17 + 1;
        *v17 = 98;
      }
    }

    v18 = *(a1 + 224);
    if ((v18 & 0x20000000) != 0)
    {
      v19 = *(this + 4);
      if (v19 >= *(this + 3))
      {
        result = llvm::raw_ostream::write(this, 120);
      }

      else
      {
        *(this + 4) = v19 + 1;
        *v19 = 120;
      }

      v18 = *(a1 + 224);
    }

    if ((v18 & 0x80000000) != 0)
    {
      v20 = *(this + 4);
      if (v20 < *(this + 3))
      {
        *(this + 4) = v20 + 1;
        v22 = 119;
        goto LABEL_41;
      }

      v23 = this;
      v24 = 119;
    }

    else
    {
      v21 = *(this + 3);
      v20 = *(this + 4);
      if (v18 >> 30)
      {
        if (v20 < v21)
        {
          *(this + 4) = v20 + 1;
          v22 = 114;
          goto LABEL_41;
        }

        v23 = this;
        v24 = 114;
      }

      else
      {
        if (v20 < v21)
        {
          *(this + 4) = v20 + 1;
          v22 = 121;
LABEL_41:
          *v20 = v22;
          goto LABEL_46;
        }

        v23 = this;
        v24 = 121;
      }
    }

    result = llvm::raw_ostream::write(v23, v24);
LABEL_46:
    if ((*(a1 + 225) & 8) != 0)
    {
      v25 = *(this + 4);
      if (v25 >= *(this + 3))
      {
        result = llvm::raw_ostream::write(this, 110);
      }

      else
      {
        *(this + 4) = v25 + 1;
        *v25 = 110;
      }
    }

    if ((*(a1 + 227) & 0x10) != 0)
    {
      v26 = *(this + 4);
      if (v26 >= *(this + 3))
      {
        result = llvm::raw_ostream::write(this, 115);
      }

      else
      {
        *(this + 4) = v26 + 1;
        *v26 = 115;
      }
    }

    if ((*(a1 + 227) & 2) != 0)
    {
      if (*(a1 + 208) < 6uLL || ((v27 = *(a1 + 200), v28 = *v27, v29 = *(v27 + 2), v28 == 1650811950) ? (v30 = v29 == 26485) : (v30 = 0), !v30))
      {
        v31 = *(this + 4);
        if (v31 >= *(this + 3))
        {
          result = llvm::raw_ostream::write(this, 68);
        }

        else
        {
          *(this + 4) = v31 + 1;
          *v31 = 68;
        }
      }
    }

    if ((*(a1 + 225) & 2) != 0)
    {
      v32 = *(this + 4);
      if (v32 >= *(this + 3))
      {
        result = llvm::raw_ostream::write(this, 105);
      }

      else
      {
        *(this + 4) = v32 + 1;
        *v32 = 105;
      }
    }

    v33 = *(this + 4);
    if (v33 >= *(this + 3))
    {
      result = llvm::raw_ostream::write(this, 34);
    }

    else
    {
      *(this + 4) = v33 + 1;
      *v33 = 34;
    }

    if ((*(a1 + 225) & 0x10) == 0)
    {
      goto LABEL_105;
    }

    v34 = *(a1 + 232);
    if (v34)
    {
      v35 = ",";
    }

    else
    {
      v35 = "\n\t.linkonce\t";
    }

    if (v34)
    {
      v36 = 1;
    }

    else
    {
      v36 = 12;
    }

    result = llvm::raw_ostream::operator<<(this, v35, v36);
    v37 = *(a1 + 240);
    if (v37 <= 3)
    {
      if (v37 == 1)
      {
        v38 = "one_only";
        v39 = 8;
        goto LABEL_99;
      }

      if (v37 != 2)
      {
        if (v37 != 3)
        {
          goto LABEL_100;
        }

        v38 = "same_size";
        v39 = 9;
        goto LABEL_99;
      }

      v38 = "discard";
    }

    else
    {
      if (v37 <= 5)
      {
        if (v37 == 4)
        {
          v38 = "same_contents";
          v39 = 13;
        }

        else
        {
          v38 = "associative";
          v39 = 11;
        }

        goto LABEL_99;
      }

      if (v37 != 6)
      {
        if (v37 != 7)
        {
          goto LABEL_100;
        }

        v38 = "newest";
        v39 = 6;
LABEL_99:
        result = llvm::raw_ostream::operator<<(this, v38, v39);
LABEL_100:
        if (*(a1 + 232))
        {
          v42 = *(this + 4);
          if (*(this + 3) == v42)
          {
            llvm::raw_ostream::write(this, ",", 1uLL);
          }

          else
          {
            *v42 = 44;
            ++*(this + 4);
          }

          result = llvm::MCSymbol::print(*(a1 + 232), this, a2);
        }

LABEL_105:
        v41 = *(this + 4);
        if (v41 < *(this + 3))
        {
          *(this + 4) = v41 + 1;
          goto LABEL_107;
        }

        result = this;
        goto LABEL_109;
      }

      v38 = "largest";
    }

    v39 = 7;
    goto LABEL_99;
  }

  v40 = *(this + 4);
  if (v40 >= *(this + 3))
  {
    llvm::raw_ostream::write(this, 9);
  }

  else
  {
    *(this + 4) = v40 + 1;
    *v40 = 9;
  }

  result = llvm::raw_ostream::operator<<(this, *(a1 + 200), *(a1 + 208));
  v41 = *(result + 4);
  if (v41 < *(result + 3))
  {
    *(result + 4) = v41 + 1;
LABEL_107:
    *v41 = 10;
    return result;
  }

LABEL_109:

  return llvm::raw_ostream::write(result, 10);
}

void llvm::MCSectionELF::printSwitchToSection(uint64_t a1, uint64_t a2, uint64_t a3, llvm::raw_ostream *this, unsigned __int8 *a5)
{
  if (*(a1 + 232) == -1 && (*(*a2 + 64))(a2, *(a1 + 200), *(a1 + 208)))
  {
    v10 = *(this + 4);
    if (v10 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 9);
    }

    else
    {
      *(this + 4) = v10 + 1;
      *v10 = 9;
    }

    llvm::raw_ostream::operator<<(this, *(a1 + 200), *(a1 + 208));
    if (!a5)
    {
      goto LABEL_206;
    }

    v27 = *(this + 4);
    if (v27 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 9);
    }

    else
    {
      *(this + 4) = v27 + 1;
      *v27 = 9;
    }

LABEL_205:
    llvm::MCExpr::print(a5, this, a2, 0);
LABEL_206:
    v13 = *(this + 4);
    goto LABEL_207;
  }

  v11 = *(this + 4);
  if ((*(this + 3) - v11) > 9)
  {
    *(v11 + 8) = 2414;
    *v11 = *"\t.section\t";
    *(this + 4) += 10;
  }

  else
  {
    llvm::raw_ostream::write(this, "\t.section\t", 0xAuLL);
  }

  printName(this, *(a1 + 200), *(a1 + 208));
  if (*(a2 + 336) != 1 || (v12 = *(a1 + 228), (v12 & 0x10) != 0))
  {
    v14 = *(this + 4);
    if (*(this + 3) - v14 > 1uLL)
    {
      *v14 = 8748;
      *(this + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(this, ",", 2uLL);
    }

    v15 = *(a1 + 228);
    if ((v15 & 2) != 0)
    {
      v16 = *(this + 4);
      if (v16 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 97);
      }

      else
      {
        *(this + 4) = v16 + 1;
        *v16 = 97;
      }

      v15 = *(a1 + 228);
    }

    if (v15 < 0)
    {
      v17 = *(this + 4);
      if (v17 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 101);
      }

      else
      {
        *(this + 4) = v17 + 1;
        *v17 = 101;
      }
    }

    if ((*(a1 + 228) & 4) != 0)
    {
      v18 = *(this + 4);
      if (v18 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 120);
      }

      else
      {
        *(this + 4) = v18 + 1;
        *v18 = 120;
      }
    }

    if ((*(a1 + 229) & 2) != 0)
    {
      v19 = *(this + 4);
      if (v19 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 71);
      }

      else
      {
        *(this + 4) = v19 + 1;
        *v19 = 71;
      }
    }

    if (*(a1 + 228))
    {
      v20 = *(this + 4);
      if (v20 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 119);
      }

      else
      {
        *(this + 4) = v20 + 1;
        *v20 = 119;
      }
    }

    if ((*(a1 + 228) & 0x10) != 0)
    {
      v21 = *(this + 4);
      if (v21 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 77);
      }

      else
      {
        *(this + 4) = v21 + 1;
        *v21 = 77;
      }
    }

    if ((*(a1 + 228) & 0x20) != 0)
    {
      v22 = *(this + 4);
      if (v22 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 83);
      }

      else
      {
        *(this + 4) = v22 + 1;
        *v22 = 83;
      }
    }

    if ((*(a1 + 229) & 4) != 0)
    {
      v23 = *(this + 4);
      if (v23 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 84);
      }

      else
      {
        *(this + 4) = v23 + 1;
        *v23 = 84;
      }
    }

    if ((*(a1 + 228) & 0x80) != 0)
    {
      v24 = *(this + 4);
      if (v24 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 111);
      }

      else
      {
        *(this + 4) = v24 + 1;
        *v24 = 111;
      }
    }

    if ((*(a1 + 230) & 0x20) != 0)
    {
      v25 = *(this + 4);
      if (v25 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 82);
      }

      else
      {
        *(this + 4) = v25 + 1;
        *v25 = 82;
      }
    }

    if (*(a3 + 36) == 14 && (*(a1 + 230) & 0x10) != 0)
    {
      v26 = *(this + 4);
      if (v26 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 82);
      }

      else
      {
        *(this + 4) = v26 + 1;
        *v26 = 82;
      }
    }

    v28 = *(a3 + 24);
    if (v28 <= 0x27)
    {
      if (((1 << v28) & 0x1800000006) != 0)
      {
        if ((*(a1 + 231) & 0x20) == 0)
        {
          goto LABEL_107;
        }

        v29 = *(this + 4);
        if (v29 < *(this + 3))
        {
          *(this + 4) = v29 + 1;
          v30 = 121;
LABEL_76:
          *v29 = v30;
          goto LABEL_107;
        }

        v32 = this;
        v33 = 121;
        goto LABEL_83;
      }

      if (v28 == 12)
      {
        if ((*(a1 + 231) & 0x10) != 0)
        {
          v29 = *(this + 4);
          if (v29 < *(this + 3))
          {
            *(this + 4) = v29 + 1;
            v30 = 115;
            goto LABEL_76;
          }

          v32 = this;
          v33 = 115;
          goto LABEL_83;
        }
      }

      else if (v28 == 39)
      {
        if ((*(a1 + 231) & 0x20) != 0)
        {
          v31 = *(this + 4);
          if (v31 >= *(this + 3))
          {
            llvm::raw_ostream::write(this, 99);
          }

          else
          {
            *(this + 4) = v31 + 1;
            *v31 = 99;
          }
        }

        if ((*(a1 + 231) & 0x10) != 0)
        {
          v29 = *(this + 4);
          if (v29 < *(this + 3))
          {
            *(this + 4) = v29 + 1;
            v30 = 100;
            goto LABEL_76;
          }

          v32 = this;
          v33 = 100;
LABEL_83:
          llvm::raw_ostream::write(v32, v33);
        }
      }
    }

LABEL_107:
    v34 = *(this + 4);
    if (v34 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 34);
    }

    else
    {
      *(this + 4) = v34 + 1;
      *v34 = 34;
    }

    v35 = *(this + 4);
    if (v35 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 44);
    }

    else
    {
      *(this + 4) = v35 + 1;
      *v35 = 44;
    }

    v37 = *(this + 3);
    v36 = *(this + 4);
    if (**(a2 + 48) == 64)
    {
      if (v36 < v37)
      {
        *(this + 4) = v36 + 1;
        v38 = 37;
LABEL_118:
        *v36 = v38;
        goto LABEL_122;
      }

      v39 = this;
      v40 = 37;
    }

    else
    {
      if (v36 < v37)
      {
        *(this + 4) = v36 + 1;
        v38 = 64;
        goto LABEL_118;
      }

      v39 = this;
      v40 = 64;
    }

    llvm::raw_ostream::write(v39, v40);
LABEL_122:
    v41 = *(a1 + 224);
    if (v41 > 1879002115)
    {
      if (v41 > 1879002121)
      {
        if (v41 <= 1879048192)
        {
          if (v41 == 1879002122)
          {
            v42 = "llvm_bb_addr_map";
            v43 = 16;
            goto LABEL_165;
          }

          if (v41 == 1879002123)
          {
            v42 = "llvm_offloading";
            v43 = 15;
            goto LABEL_165;
          }

          goto LABEL_215;
        }

        if (v41 == 1879048193)
        {
          v42 = "unwind";
          goto LABEL_164;
        }

        if (v41 != 1879048222)
        {
          goto LABEL_215;
        }

        v42 = "0x7000001e";
LABEL_157:
        v43 = 10;
        goto LABEL_165;
      }

      if (v41 <= 1879002119)
      {
        if (v41 == 1879002116)
        {
          v42 = "llvm_dependent_libraries";
          v43 = 24;
          goto LABEL_165;
        }

        if (v41 == 1879002117)
        {
          v42 = "llvm_sympart";
          v43 = 12;
          goto LABEL_165;
        }

LABEL_215:
        v70 = "unsupported type 0x";
        v71 = 259;
        v67 = v41;
        v68[0] = &v67;
        v68[2] = 0;
        v69 = 270;
        llvm::operator+(&v70, v68, v72);
        v65 = " for section ";
        v66 = 259;
        llvm::operator+(v72, &v65, v73);
        v61 = *(a1 + 200);
        v62 = *(a1 + 208);
        v64 = 261;
        v63[0] = v61;
        v63[1] = v62;
        llvm::operator+(v73, v63, v74);
        llvm::report_fatal_error(v74, 1);
      }

      if (v41 != 1879002120)
      {
        v42 = "llvm_call_graph_profile";
        v43 = 23;
        goto LABEL_165;
      }

      v42 = "llvm_bb_addr_map_v0";
    }

    else
    {
      if (v41 <= 14)
      {
        if (v41 <= 7)
        {
          if (v41 == 1)
          {
            v42 = "progbits";
            v43 = 8;
            goto LABEL_165;
          }

          if (v41 == 7)
          {
            v42 = "note";
            v43 = 4;
LABEL_165:
            llvm::raw_ostream::operator<<(this, v42, v43);
            if (*(a1 + 236))
            {
              v44 = *(this + 4);
              if (*(this + 3) == v44)
              {
                llvm::raw_ostream::write(this, ",", 1uLL);
              }

              else
              {
                *v44 = 44;
                ++*(this + 4);
              }

              write_unsigned<unsigned long>(this, *(a1 + 236), 0, 0, 0);
            }

            if ((*(a1 + 229) & 2) != 0)
            {
              v45 = *(this + 4);
              if (*(this + 3) == v45)
              {
                llvm::raw_ostream::write(this, ",", 1uLL);
              }

              else
              {
                *v45 = 44;
                ++*(this + 4);
              }

              v46 = (*(a1 + 240) & 0xFFFFFFFFFFFFFFF8);
              if ((*v46 & 4) != 0)
              {
                v49 = *(v46 - 1);
                v50 = *v49;
                v47 = (v49 + 2);
                v48 = v50;
              }

              else
              {
                v47 = 0;
                v48 = 0;
              }

              printName(this, v47, v48);
              if ((*(a1 + 240) & 4) != 0)
              {
                v51 = *(this + 4);
                if (*(this + 3) - v51 > 6uLL)
                {
                  *(v51 + 3) = 1952539757;
                  *v51 = 1836016428;
                  *(this + 4) += 7;
                }

                else
                {
                  llvm::raw_ostream::write(this, ",comdat", 7uLL);
                }
              }
            }

            if ((*(a1 + 228) & 0x80) != 0)
            {
              v52 = *(this + 4);
              if (*(this + 3) == v52)
              {
                llvm::raw_ostream::write(this, ",", 1uLL);
              }

              else
              {
                *v52 = 44;
                ++*(this + 4);
              }

              v53 = *(a1 + 248);
              if (v53)
              {
                if ((*v53 & 4) != 0)
                {
                  v57 = *(v53 - 1);
                  v58 = *v57;
                  v54 = (v57 + 2);
                  v55 = v58;
                }

                else
                {
                  v54 = 0;
                  v55 = 0;
                }

                printName(this, v54, v55);
              }

              else
              {
                v56 = *(this + 4);
                if (v56 >= *(this + 3))
                {
                  llvm::raw_ostream::write(this, 48);
                }

                else
                {
                  *(this + 4) = v56 + 1;
                  *v56 = 48;
                }
              }
            }

            v59 = *(this + 4);
            if (*(a1 + 232) != -1)
            {
              if (*(this + 3) - v59 > 7uLL)
              {
                *v59 = 0x2C657571696E752CLL;
                *(this + 4) += 8;
              }

              else
              {
                llvm::raw_ostream::write(this, ",unique,", 8uLL);
              }

              write_unsigned<unsigned long>(this, *(a1 + 232), 0, 0, 0);
              v59 = *(this + 4);
            }

            if (v59 >= *(this + 3))
            {
              llvm::raw_ostream::write(this, 10);
              if (!a5)
              {
                return;
              }
            }

            else
            {
              *(this + 4) = v59 + 1;
              *v59 = 10;
              if (!a5)
              {
                return;
              }
            }

            v60 = *(this + 4);
            if (*(this + 3) - v60 > 0xCuLL)
            {
              qmemcpy(v60, "\t.subsection\t", 13);
              *(this + 4) += 13;
            }

            else
            {
              llvm::raw_ostream::write(this, "\t.subsection\t", 0xDuLL);
            }

            goto LABEL_205;
          }

          goto LABEL_215;
        }

        if (v41 != 8)
        {
          if (v41 != 14)
          {
            goto LABEL_215;
          }

          v42 = "init_array";
          goto LABEL_157;
        }

        v42 = "nobits";
LABEL_164:
        v43 = 6;
        goto LABEL_165;
      }

      if (v41 <= 1879002111)
      {
        if (v41 != 15)
        {
          if (v41 == 16)
          {
            v42 = "preinit_array";
            v43 = 13;
            goto LABEL_165;
          }

          goto LABEL_215;
        }

        v42 = "fini_array";
        goto LABEL_157;
      }

      if (v41 == 1879002112)
      {
        v42 = "llvm_odrtab";
        v43 = 11;
        goto LABEL_165;
      }

      if (v41 != 1879002113)
      {
        goto LABEL_215;
      }

      v42 = "llvm_linker_options";
    }

    v43 = 19;
    goto LABEL_165;
  }

  v13 = *(this + 4);
  if ((v12 & 2) != 0)
  {
    if (*(this + 3) - v13 > 6)
    {
      *(v13 + 3) = 1668246636;
      *v13 = 1818305324;
      v13 = *(this + 4) + 7;
      *(this + 4) = v13;
    }

    else
    {
      llvm::raw_ostream::write(this, ",#alloc", 7uLL);
      v13 = *(this + 4);
    }

    v12 = *(a1 + 228);
    if ((v12 & 4) == 0)
    {
LABEL_12:
      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_94;
    }
  }

  else if ((v12 & 4) == 0)
  {
    goto LABEL_12;
  }

  if (*(this + 3) - v13 > 0xA)
  {
    *(v13 + 7) = 1920234350;
    *v13 = *",#execinstr";
    v13 = *(this + 4) + 11;
    *(this + 4) = v13;
  }

  else
  {
    llvm::raw_ostream::write(this, ",#execinstr", 0xBuLL);
    v13 = *(this + 4);
  }

  v12 = *(a1 + 228);
  if ((v12 & 1) == 0)
  {
LABEL_13:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_98:
    if (*(this + 3) - v13 > 8)
    {
      *(v13 + 8) = 101;
      *v13 = *",#exclude";
      v13 = *(this + 4) + 9;
      *(this + 4) = v13;
    }

    else
    {
      llvm::raw_ostream::write(this, ",#exclude", 9uLL);
      v13 = *(this + 4);
    }

    if ((*(a1 + 228) & 0x400) == 0)
    {
      goto LABEL_207;
    }

    goto LABEL_102;
  }

LABEL_94:
  if (*(this + 3) - v13 > 6)
  {
    *(v13 + 3) = 1702127986;
    *v13 = 1920410412;
    v13 = *(this + 4) + 7;
    *(this + 4) = v13;
  }

  else
  {
    llvm::raw_ostream::write(this, ",#write", 7uLL);
    v13 = *(this + 4);
  }

  v12 = *(a1 + 228);
  if (v12 < 0)
  {
    goto LABEL_98;
  }

LABEL_14:
  if ((v12 & 0x400) != 0)
  {
LABEL_102:
    if (*(this + 3) - v13 > 4)
    {
      *(v13 + 4) = 115;
      *v13 = 1819550508;
      v13 = *(this + 4) + 5;
      *(this + 4) = v13;
      goto LABEL_207;
    }

    llvm::raw_ostream::write(this, ",#tls", 5uLL);
    goto LABEL_206;
  }

LABEL_207:
  if (v13 >= *(this + 3))
  {

    llvm::raw_ostream::write(this, 10);
  }

  else
  {
    *(this + 4) = v13 + 1;
    *v13 = 10;
  }
}

llvm::raw_ostream *printName(llvm::raw_ostream *a1, unsigned __int8 *a2, int64_t a3)
{
  v4 = a2;
  v19[0] = a2;
  v19[1] = a3;
  result = llvm::StringRef::find_first_not_of(v19, "0123456789_.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", 64, 0);
  if (result == -1)
  {

    return llvm::raw_ostream::operator<<(a1, v4, a3);
  }

  else
  {
    v7 = *(a1 + 4);
    if (v7 >= *(a1 + 3))
    {
      result = llvm::raw_ostream::write(a1, 34);
    }

    else
    {
      *(a1 + 4) = v7 + 1;
      *v7 = 34;
    }

    if (a3 >= 1)
    {
      v8 = &v4[a3];
      do
      {
        v9 = *v4;
        if (v9 == 92)
        {
          if (v4 + 1 != v8)
          {
            v13 = *(a1 + 4);
            if (v13 >= *(a1 + 3))
            {
              result = llvm::raw_ostream::write(a1, 92);
            }

            else
            {
              *(a1 + 4) = v13 + 1;
              *v13 = 92;
            }

            v16 = v4[1];
            v17 = *(a1 + 4);
            if (v17 >= *(a1 + 3))
            {
              result = llvm::raw_ostream::write(a1, v16);
            }

            else
            {
              *(a1 + 4) = v17 + 1;
              *v17 = v16;
            }

            ++v4;
            goto LABEL_31;
          }

          v15 = *(a1 + 4);
          if (*(a1 + 3) - v15 > 1uLL)
          {
            *v15 = 23644;
            goto LABEL_30;
          }

          v11 = a1;
          v12 = "\\\";
        }

        else
        {
          if (v9 != 34)
          {
            v14 = *(a1 + 4);
            if (v14 >= *(a1 + 3))
            {
              result = llvm::raw_ostream::write(a1, v9);
            }

            else
            {
              *(a1 + 4) = v14 + 1;
              *v14 = v9;
            }

            goto LABEL_31;
          }

          v10 = *(a1 + 4);
          if (*(a1 + 3) - v10 > 1uLL)
          {
            *v10 = 8796;
LABEL_30:
            *(a1 + 4) += 2;
            goto LABEL_31;
          }

          v11 = a1;
          v12 = "\\"";
        }

        result = llvm::raw_ostream::write(v11, v12, 2uLL);
LABEL_31:
        ++v4;
      }

      while (v4 < v8);
    }

    v18 = *(a1 + 4);
    if (v18 >= *(a1 + 3))
    {

      return llvm::raw_ostream::write(a1, 34);
    }

    else
    {
      *(a1 + 4) = v18 + 1;
      *v18 = 34;
    }
  }

  return result;
}

void llvm::MCSectionMachO::MCSectionMachO(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9)
{
  llvm::MCSection::MCSection(a1, 3, a4, a5, a8, a9);
  v14 = 0;
  *v13 = &unk_2883F0460;
  *(v13 + 240) = a6;
  *(v13 + 244) = a7;
  do
  {
    if (a3 <= v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + v14);
    }

    *(v13 + v14++ + 224) = v15;
  }

  while (v14 != 16);
}

llvm::raw_ostream *llvm::MCSectionMachO::printSwitchToSection(uint64_t a1, int a2, int a3, llvm::raw_ostream *this)
{
  v6 = *(this + 4);
  if ((*(this + 3) - v6) > 9)
  {
    *(v6 + 8) = 2414;
    *v6 = *"\t.section\t";
    *(this + 4) += 10;
  }

  else
  {
    llvm::raw_ostream::write(this, "\t.section\t", 0xAuLL);
  }

  if (*(a1 + 239))
  {
    v7 = 16;
  }

  else
  {
    v7 = strlen((a1 + 224));
  }

  v8 = llvm::raw_ostream::operator<<(this, (a1 + 224), v7);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    v8 = llvm::raw_ostream::write(v8, 44);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 44;
  }

  result = llvm::raw_ostream::operator<<(v8, *(a1 + 200), *(a1 + 208));
  v11 = *(a1 + 240);
  if (!v11)
  {
    goto LABEL_41;
  }

  v12 = &(&SectionTypeDescriptors)[4 * *(a1 + 240)];
  v13 = v12[1];
  v15 = *(this + 3);
  v14 = *(this + 4);
  v16 = v14 >= v15;
  if (!v13)
  {
    goto LABEL_42;
  }

  if (v14 >= v15)
  {
    llvm::raw_ostream::write(this, 44);
  }

  else
  {
    *(this + 4) = v14 + 1;
    *v14 = 44;
  }

  result = llvm::raw_ostream::operator<<(this, *v12, v13);
  v17 = v11 & 0xFFFFFF00;
  if ((v11 & 0xFFFFFF00) != 0)
  {
    v18 = 44;
    v19 = &qword_279EFFAD0;
    v20 = 11;
    do
    {
      if (!--v20)
      {
        break;
      }

      v21 = *(v19 - 4);
      if ((v21 & v17) != 0)
      {
        v22 = *(this + 4);
        if (v22 >= *(this + 3))
        {
          llvm::raw_ostream::write(this, v18);
        }

        else
        {
          *(this + 4) = v22 + 1;
          *v22 = v18;
        }

        v17 &= ~v21;
        if (*v19)
        {
          result = llvm::raw_ostream::operator<<(this, *(v19 - 1), *v19);
        }

        else
        {
          v23 = *(this + 4);
          if (*(this + 3) - v23 > 1uLL)
          {
            *v23 = 15420;
            *(this + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(this, "<<", 2uLL);
          }

          result = llvm::raw_ostream::operator<<(this, v19[1], v19[2]);
          v24 = *(result + 4);
          if (*(result + 3) - v24 > 1uLL)
          {
            *v24 = 15934;
            *(result + 4) += 2;
          }

          else
          {
            result = llvm::raw_ostream::write(result, ">>", 2uLL);
          }
        }

        v18 = 43;
      }

      v19 += 5;
    }

    while (v17);
    if (!*(a1 + 244))
    {
      goto LABEL_41;
    }

    v25 = *(this + 4);
    if (v25 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 44);
    }

    else
    {
      *(this + 4) = v25 + 1;
      *v25 = 44;
    }

    goto LABEL_40;
  }

  if (*(a1 + 244))
  {
    v26 = *(this + 4);
    if ((*(this + 3) - v26) > 5)
    {
      *(v26 + 4) = 11365;
      *v26 = 1852796460;
      *(this + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(this, ",none,", 6uLL);
    }

LABEL_40:
    result = write_unsigned<unsigned long>(this, *(a1 + 244), 0, 0, 0);
  }

LABEL_41:
  v14 = *(this + 4);
  v16 = v14 >= *(this + 3);
LABEL_42:
  if (v16)
  {

    return llvm::raw_ostream::write(this, 10);
  }

  else
  {
    *(this + 4) = v14 + 1;
    *v14 = 10;
  }

  return result;
}

void llvm::MCSectionMachO::ParseSectionSpecifier(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int *a5@<X4>, _BYTE *a6@<X5>, _DWORD *a7@<X6>, void *a8@<X8>)
{
  v62[10] = *MEMORY[0x277D85DE8];
  v53[0] = a1;
  v53[1] = a2;
  *a6 = 0;
  v60 = v62;
  v61 = 0x500000000;
  llvm::StringRef::split(v53, &v60, 44, -1, 1);
  if (!v61)
  {
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_8;
  }

  v14 = llvm::StringRef::trim(v60, " \t\n\v\f\r", 6);
  v15 = v61;
  *a3 = v14;
  a3[1] = v16;
  if (v15 <= 1)
  {
LABEL_8:
    a4[1] = 0;
    v20 = a4 + 1;
    *a4 = 0;
    goto LABEL_9;
  }

  v17 = llvm::StringRef::trim(v60 + 2, " \t\n\v\f\r", 6);
  v18 = v61;
  *a4 = v17;
  a4[1] = v19;
  v20 = a4 + 1;
  if (v18 <= 2)
  {
LABEL_9:
    v21 = 0;
    v23 = 0;
    goto LABEL_10;
  }

  v21 = llvm::StringRef::trim(v60 + 4, " \t\n\v\f\r", 6);
  v23 = v22;
  if (v61 <= 3)
  {
LABEL_10:
    v26 = 0;
    v29 = 0;
    v27 = 0;
    v51 = 0;
    v52 = 0;
    goto LABEL_11;
  }

  v24 = llvm::StringRef::trim(v60 + 6, " \t\n\v\f\r", 6);
  v26 = v25;
  v51 = v24;
  v52 = v25;
  if (v61 < 5)
  {
    v29 = 0;
    v27 = 0;
  }

  else
  {
    v27 = llvm::StringRef::trim(v60 + 8, " \t\n\v\f\r", 6);
    v29 = v28;
  }

LABEL_11:
  *&v50 = v27;
  *(&v50 + 1) = v29;
  if (!*v20)
  {
    getErrorErrorCat();
    v57 = 3;
    v58 = &getErrorErrorCat(void)::ErrorErrorCat;
    v30 = "mach-o section specifier requires a segment and section separated by a comma";
    goto LABEL_15;
  }

  if (*v20 >= 0x11uLL)
  {
    getErrorErrorCat();
    v57 = 3;
    v58 = &getErrorErrorCat(void)::ErrorErrorCat;
    v30 = "mach-o section specifier requires a section whose length is between 1 and 16 characters";
LABEL_15:
    v55 = v30;
    goto LABEL_16;
  }

  *a5 = 0;
  *a7 = 0;
  if (!v23)
  {
    *a8 = 0;
    goto LABEL_17;
  }

  v48 = a7;
  v49 = a8;
  v32 = 0;
  v33 = &qword_279EFF7E8;
  v34 = 23552;
  while (v23 != *v33 || memcmp(v21, *(v33 - 1), v23))
  {
    ++v32;
    v33 += 4;
    v34 -= 1024;
    if (!v34)
    {
      getErrorErrorCat();
      v57 = 3;
      v58 = &getErrorErrorCat(void)::ErrorErrorCat;
      v35 = "mach-o section specifier uses an unknown section type";
      goto LABEL_26;
    }
  }

  *a5 = v32;
  *a6 = 1;
  if (v26)
  {
    v57 = v59;
    v58 = 0x100000000;
    llvm::StringRef::split(&v51, &v57, 43, -1, 0);
    if (v58)
    {
      v37 = v57;
      v38 = (v57 + 16 * v58);
      v39 = &qword_279EFFAD0;
      v40 = v49;
      do
      {
        v41 = v39;
        v42 = 440;
        while (1)
        {
          v43 = llvm::StringRef::trim(v37, " \t\n\v\f\r", 6);
          v44 = *v39;
          if (v45 == *v39 && (!v44 || !memcmp(v43, *(v39 - 1), v44)))
          {
            break;
          }

          v39 += 5;
          v42 -= 40;
          if (!v42)
          {
            getErrorErrorCat();
            v55 = 3;
            v56 = &getErrorErrorCat(void)::ErrorErrorCat;
            v54 = "mach-o section specifier has invalid attribute";
            llvm::make_error<llvm::StringError,char const*&,std::error_code>();
          }
        }

        v46 = *a5 | *(v39 - 4);
        *a5 = v46;
        v37 += 2;
        v39 = v41;
      }

      while (v37 != v38);
    }

    else
    {
      v46 = *a5;
      v40 = v49;
    }

    if (v29)
    {
      if (v46 == 8)
      {
        if (llvm::StringRef::getAsInteger<unsigned int>(&v50, 0, v48, v36))
        {
          getErrorErrorCat();
          v55 = 3;
          v56 = &getErrorErrorCat(void)::ErrorErrorCat;
          v47 = "mach-o section specifier has a malformed stub size";
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      getErrorErrorCat();
      v55 = 3;
      v56 = &getErrorErrorCat(void)::ErrorErrorCat;
      v47 = "mach-o section specifier cannot have a stub size specified because it does not have type 'symbol_stubs'";
    }

    else
    {
      if (v46 != 8)
      {
LABEL_50:
        *v40 = 0;
        if (v57 != v59)
        {
          free(v57);
        }

        goto LABEL_17;
      }

      getErrorErrorCat();
      v55 = 3;
      v56 = &getErrorErrorCat(void)::ErrorErrorCat;
      v47 = "mach-o section specifier of type 'symbol_stubs' requires a size specifier";
    }

LABEL_52:
    v54 = v47;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  if (v32 == 8)
  {
    getErrorErrorCat();
    v57 = 3;
    v58 = &getErrorErrorCat(void)::ErrorErrorCat;
    v35 = "mach-o section specifier of type 'symbol_stubs' requires a size specifier";
LABEL_26:
    v55 = v35;
LABEL_16:
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  *v49 = 0;
LABEL_17:
  if (v60 != v62)
  {
    free(v60);
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::StringRef::getAsInteger<unsigned int>(__int128 *a1, llvm::StringRef *a2, _DWORD *a3, unint64_t *a4)
{
  v7 = 0;
  v8 = *a1;
  v5 = llvm::consumeUnsignedInteger(&v8, a2, &v7, a4);
  result = 1;
  if ((v5 & 1) == 0 && !*(&v8 + 1) && !HIDWORD(v7))
  {
    result = 0;
    *a3 = v7;
  }

  return result;
}

void llvm::MCSectionWasm::printSwitchToSection(uint64_t a1, _BYTE **a2, uint64_t a3, llvm::raw_ostream *a4, unsigned __int8 *a5)
{
  if (!(*(*a2 + 8))(a2, *(a1 + 200), *(a1 + 208)))
  {
    v10 = *(a4 + 4);
    if ((*(a4 + 3) - v10) > 9)
    {
      *(v10 + 8) = 2414;
      *v10 = *"\t.section\t";
      *(a4 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(a4, "\t.section\t", 0xAuLL);
    }

    printName(a4, *(a1 + 200), *(a1 + 208));
    v12 = *(a4 + 4);
    if (*(a4 + 3) - v12 > 1uLL)
    {
      *v12 = 8748;
      *(a4 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(a4, ",", 2uLL);
    }

    if (*(a1 + 252) == 1)
    {
      v13 = *(a4 + 4);
      if (v13 >= *(a4 + 3))
      {
        llvm::raw_ostream::write(a4, 112);
      }

      else
      {
        *(a4 + 4) = v13 + 1;
        *v13 = 112;
      }
    }

    if (*(a1 + 232))
    {
      v14 = *(a4 + 4);
      if (v14 >= *(a4 + 3))
      {
        llvm::raw_ostream::write(a4, 71);
      }

      else
      {
        *(a4 + 4) = v14 + 1;
        *v14 = 71;
      }
    }

    if (*(a1 + 256))
    {
      v15 = *(a4 + 4);
      if (v15 >= *(a4 + 3))
      {
        llvm::raw_ostream::write(a4, 83);
      }

      else
      {
        *(a4 + 4) = v15 + 1;
        *v15 = 83;
      }
    }

    if ((*(a1 + 256) & 2) != 0)
    {
      v16 = *(a4 + 4);
      if (v16 >= *(a4 + 3))
      {
        llvm::raw_ostream::write(a4, 84);
      }

      else
      {
        *(a4 + 4) = v16 + 1;
        *v16 = 84;
      }
    }

    v17 = *(a4 + 4);
    if (v17 >= *(a4 + 3))
    {
      llvm::raw_ostream::write(a4, 34);
    }

    else
    {
      *(a4 + 4) = v17 + 1;
      *v17 = 34;
    }

    v18 = *(a4 + 4);
    if (v18 >= *(a4 + 3))
    {
      llvm::raw_ostream::write(a4, 44);
    }

    else
    {
      *(a4 + 4) = v18 + 1;
      *v18 = 44;
    }

    v20 = *(a4 + 3);
    v19 = *(a4 + 4);
    if (*a2[6] == 64)
    {
      if (v19 < v20)
      {
        *(a4 + 4) = v19 + 1;
        v21 = 37;
LABEL_42:
        *v19 = v21;
LABEL_46:
        v24 = *(a4 + 4);
        if (*(a1 + 232))
        {
          if (*(a4 + 3) == v24)
          {
            llvm::raw_ostream::write(a4, ",", 1uLL);
          }

          else
          {
            *v24 = 44;
            ++*(a4 + 4);
          }

          v25 = *(a1 + 232);
          if ((*v25 & 4) != 0)
          {
            v28 = *(v25 - 1);
            v29 = *v28;
            v26 = (v28 + 2);
            v27 = v29;
          }

          else
          {
            v26 = 0;
            v27 = 0;
          }

          printName(a4, v26, v27);
          v30 = *(a4 + 4);
          if (*(a4 + 3) - v30 > 6uLL)
          {
            *(v30 + 3) = 1952539757;
            *v30 = 1836016428;
            v24 = (*(a4 + 4) + 7);
            *(a4 + 4) = v24;
          }

          else
          {
            llvm::raw_ostream::write(a4, ",comdat", 7uLL);
            v24 = *(a4 + 4);
          }
        }

        if (*(a1 + 224) != -1)
        {
          if (*(a4 + 3) - v24 > 7uLL)
          {
            *v24 = 0x2C657571696E752CLL;
            *(a4 + 4) += 8;
          }

          else
          {
            llvm::raw_ostream::write(a4, ",unique,", 8uLL);
          }

          write_unsigned<unsigned long>(a4, *(a1 + 224), 0, 0, 0);
          v24 = *(a4 + 4);
        }

        if (v24 >= *(a4 + 3))
        {
          llvm::raw_ostream::write(a4, 10);
          if (!a5)
          {
            return;
          }
        }

        else
        {
          *(a4 + 4) = v24 + 1;
          *v24 = 10;
          if (!a5)
          {
            return;
          }
        }

        v31 = *(a4 + 4);
        if (*(a4 + 3) - v31 > 0xCuLL)
        {
          qmemcpy(v31, "\t.subsection\t", 13);
          *(a4 + 4) += 13;
        }

        else
        {
          llvm::raw_ostream::write(a4, "\t.subsection\t", 0xDuLL);
        }

        goto LABEL_68;
      }

      v22 = a4;
      v23 = 37;
    }

    else
    {
      if (v19 < v20)
      {
        *(a4 + 4) = v19 + 1;
        v21 = 64;
        goto LABEL_42;
      }

      v22 = a4;
      v23 = 64;
    }

    llvm::raw_ostream::write(v22, v23);
    goto LABEL_46;
  }

  v9 = *(a4 + 4);
  if (v9 >= *(a4 + 3))
  {
    llvm::raw_ostream::write(a4, 9);
  }

  else
  {
    *(a4 + 4) = v9 + 1;
    *v9 = 9;
  }

  llvm::raw_ostream::operator<<(a4, *(a1 + 200), *(a1 + 208));
  if (!a5)
  {
    goto LABEL_69;
  }

  v11 = *(a4 + 4);
  if (v11 >= *(a4 + 3))
  {
    llvm::raw_ostream::write(a4, 9);
  }

  else
  {
    *(a4 + 4) = v11 + 1;
    *v11 = 9;
  }

LABEL_68:
  llvm::MCExpr::print(a5, a4, a2, 0);
LABEL_69:
  v32 = *(a4 + 4);
  if (v32 >= *(a4 + 3))
  {

    llvm::raw_ostream::write(a4, 10);
  }

  else
  {
    *(a4 + 4) = v32 + 1;
    *v32 = 10;
  }
}

llvm::raw_ostream *llvm::MCSectionXCOFF::printCsectDirective(llvm::MCSectionXCOFF *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 7uLL)
  {
    *v4 = 0x2074636573632E09;
    *(a2 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(a2, "\t.csect ", 8uLL);
  }

  v5 = *(this + 29);
  if ((*v5 & 4) != 0)
  {
    v8 = *(v5 - 1);
    v9 = *v8;
    v6 = v8 + 2;
    v7 = v9;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v10 = llvm::raw_ostream::operator<<(a2, v6, v7);
  v11 = v10;
  v12 = *(v10 + 4);
  if (*(v10 + 3) == v12)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v12 = 44;
    ++*(v10 + 4);
  }

  result = write_unsigned<unsigned long>(v11, *(this + 24), 0, 0, 0);
  v14 = *(v11 + 4);
  if (v14 >= *(v11 + 3))
  {

    return llvm::raw_ostream::write(v11, 10);
  }

  else
  {
    *(v11 + 4) = v14 + 1;
    *v14 = 10;
  }

  return result;
}

llvm::raw_ostream *llvm::MCSectionXCOFF::printSwitchToSection(llvm::raw_ostream *this, uint64_t a2, int a3, llvm::raw_ostream *a4)
{
  v5 = this;
  v6 = *(this + 220);
  if ((v6 & 0xFE) == 2)
  {
    if (*(this + 224))
    {
      v7 = "Unhandled storage-mapping class for .text csect";
      goto LABEL_44;
    }

    goto LABEL_14;
  }

  if ((v6 & 0xFC) == 8 || (v6 & 0xFC) == 4)
  {
    v9 = *(this + 224);
    if (v9 != 1 && v9 != 16)
    {
      v7 = "Unhandled storage-mapping class for .rodata csect.";
      goto LABEL_44;
    }

    goto LABEL_14;
  }

  if (v6 != 19)
  {
    if (v6 == 13)
    {
      if (*(this + 224) != 20)
      {
        v7 = "Unhandled storage-mapping class for .tdata csect.";
        goto LABEL_44;
      }

LABEL_14:

      return llvm::MCSectionXCOFF::printCsectDirective(this, a4);
    }

    if (*(this + 226) == 1)
    {
      if (*(this + 224) == 16)
      {
        goto LABEL_14;
      }

      if (*(this + 225) == 3)
      {
        return this;
      }
    }

    if ((v6 & 0xFFFFFFFD) == 0xC)
    {
      goto LABEL_14;
    }

    if (!*(this + 220) && *(this + 260) == 1)
    {
      v13 = llvm::raw_ostream::operator<<(a4, "\n\t.dwsect ", 0xAuLL);
      v14 = *(v5 + 32);
      v20[0] = &unk_2883F04F0;
      v20[1] = "0x%x";
      v21 = v14;
      v15 = llvm::raw_ostream::operator<<(v13, v20);
      v16 = *(v15 + 4);
      if (v16 >= *(v15 + 3))
      {
        llvm::raw_ostream::write(v15, 10);
      }

      else
      {
        *(v15 + 4) = v16 + 1;
        *v16 = 10;
      }

      v17 = llvm::raw_ostream::operator<<(a4, *(a2 + 104), *(a2 + 112));
      this = llvm::raw_ostream::operator<<(v17, *(v5 + 25), *(v5 + 26));
      v18 = *(this + 4);
      if (v18 >= *(this + 3))
      {
        this = llvm::raw_ostream::write(this, 58);
      }

      else
      {
        *(this + 4) = v18 + 1;
        *v18 = 58;
      }

      v19 = *(this + 4);
      if (v19 >= *(this + 3))
      {
        return llvm::raw_ostream::write(this, 10);
      }

      *(this + 4) = v19 + 1;
      *v19 = 10;
      return this;
    }

    v7 = "Printing for this SectionKind is unimplemented.";
LABEL_44:
    llvm::report_fatal_error(v7, 1);
  }

  v11 = *(this + 224);
  if (v11 > 0x16)
  {
    goto LABEL_46;
  }

  if (((1 << v11) & 0x10420) != 0)
  {
    goto LABEL_14;
  }

  if (((1 << v11) & 0x400008) != 0)
  {
    return this;
  }

  if (v11 != 15)
  {
LABEL_46:
    v7 = "Unhandled storage-mapping class for .data csect.";
    goto LABEL_44;
  }

  return llvm::raw_ostream::operator<<(a4, "\t.toc\n", 6uLL);
}

llvm::MCStreamer *llvm::MCStreamer::MCStreamer(llvm::MCStreamer *this, llvm::MCContext *a2)
{
  *this = &unk_2883F0510;
  *(this + 1) = a2;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = this + 64;
  *(this + 7) = 0x100000000;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 124) = 0u;
  *(this + 18) = this + 160;
  v3 = (this + 144);
  *(this + 19) = 0x400000000;
  *(this + 36) = 0;
  *(this + 294) = 0;
  memset(v8, 0, sizeof(v8));
  v4 = llvm::SmallVectorTemplateCommon<std::pair<std::pair<llvm::MCSection *,llvm::MCExpr const*>,std::pair<llvm::MCSection *,llvm::MCExpr const*>>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<std::pair<llvm::MCSection *,llvm::MCExpr const*>,std::pair<llvm::MCSection *,llvm::MCExpr const*>>,true>>(this + 144, v8, 1);
  v5 = (*v3 + 32 * *(this + 38));
  v6 = v4[1];
  *v5 = *v4;
  v5[1] = v6;
  ++*(this + 38);
  return this;
}

void llvm::MCStreamer::~MCStreamer(llvm::MCStreamer *this)
{
  *this = &unk_2883F0510;
  v2 = *(this + 18);
  if (v2 != this + 160)
  {
    free(v2);
  }

  MEMORY[0x277C69E30](*(this + 15), 8);
  v5 = (this + 80);
  std::vector<std::unique_ptr<llvm::WinEH::FrameInfo>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(this + 6);
  if (v3 != this + 64)
  {
    free(v3);
  }

  v5 = (this + 24);
  std::vector<llvm::MCDwarfFrameInfo>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

__n128 llvm::MCStreamer::reset(llvm::MCStreamer *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 88;
      *&v40[0] = v2 - 56;
      std::vector<llvm::MCCFIInstruction>::__destroy_vector::operator()[abi:nn200100](v40);
      v2 = v4;
    }

    while (v4 != v3);
  }

  *(this + 4) = v3;
  *(this + 13) = 0;
  v6 = *(this + 10);
    ;
  }

  *(this + 11) = v6;
  v7 = *(this + 32);
  if (v7)
  {
    v8 = *(this + 34);
    if (v8 > 4 * v7 && v8 >= 0x41)
    {
      v9 = 1 << (33 - __clz(v7 - 1));
      if (v9 <= 64)
      {
        v10 = 64;
      }

      else
      {
        v10 = v9;
      }

LABEL_15:
      if (v10 == v8)
      {
        v11 = 0;
        *(this + 16) = 0;
        v12 = v8 + 0xFFFFFFFFFFFFFFFLL;
        v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
        v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
        v15 = vdupq_n_s64(v13);
        v16 = (*(this + 15) + 16);
        do
        {
          v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
          if (v17.i8[0])
          {
            *(v16 - 2) = -4096;
          }

          if (v17.i8[4])
          {
            *v16 = -4096;
          }

          v11 += 2;
          v16 += 4;
        }

        while (v14 != v11);
      }

      else
      {
        MEMORY[0x277C69E30](*(this + 15), 8);
        if (v10)
        {
          v29 = (4 * v10 / 3u + 1) | ((4 * v10 / 3u + 1) >> 1);
          v30 = v29 | (v29 >> 2) | ((v29 | (v29 >> 2)) >> 4);
          LODWORD(v30) = (((v30 | (v30 >> 8)) >> 16) | v30 | (v30 >> 8)) + 1;
          *(this + 34) = v30;
          v31 = operator new(16 * v30, 8uLL);
          *(this + 15) = v31;
          *(this + 16) = 0;
          v32 = *(this + 34);
          if (v32)
          {
            v33 = 0;
            v34 = v32 + 0xFFFFFFFFFFFFFFFLL;
            v35 = v34 & 0xFFFFFFFFFFFFFFFLL;
            v36 = (v34 & 0xFFFFFFFFFFFFFFFLL) - (v34 & 1) + 2;
            v37 = vdupq_n_s64(v35);
            v38 = v31 + 16;
            do
            {
              v39 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(vdupq_n_s64(v33), xmmword_2750C1210)));
              if (v39.i8[0])
              {
                *(v38 - 2) = -4096;
              }

              if (v39.i8[4])
              {
                *v38 = -4096;
              }

              v33 += 2;
              v38 += 4;
            }

            while (v36 != v33);
          }
        }

        else
        {
          *(this + 15) = 0;
          *(this + 16) = 0;
          *(this + 34) = 0;
        }
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (!*(this + 33))
    {
      goto LABEL_31;
    }

    v8 = *(this + 34);
    if (v8 > 0x40)
    {
      v10 = 0;
      goto LABEL_15;
    }
  }

  if (v8)
  {
    v18 = 0;
    v19 = v8 + 0xFFFFFFFFFFFFFFFLL;
    v20 = v19 & 0xFFFFFFFFFFFFFFFLL;
    v21 = (v19 & 0xFFFFFFFFFFFFFFFLL) - (v19 & 1) + 2;
    v22 = vdupq_n_s64(v20);
    v23 = (*(this + 15) + 16);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v18), xmmword_2750C1210)));
      if (v24.i8[0])
      {
        *(v23 - 2) = -4096;
      }

      if (v24.i8[4])
      {
        *v23 = -4096;
      }

      v18 += 2;
      v23 += 4;
    }

    while (v21 != v18);
  }

  *(this + 16) = 0;
LABEL_31:
  *(this + 38) = 0;
  memset(v40, 0, sizeof(v40));
  v25 = llvm::SmallVectorTemplateCommon<std::pair<std::pair<llvm::MCSection *,llvm::MCExpr const*>,std::pair<llvm::MCSection *,llvm::MCExpr const*>>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<std::pair<llvm::MCSection *,llvm::MCExpr const*>,std::pair<llvm::MCSection *,llvm::MCExpr const*>>,true>>(this + 144, v40, 1);
  v26 = (*(this + 18) + 32 * *(this + 38));
  result = *v25;
  v28 = *(v25 + 16);
  *v26 = *v25;
  v26[1] = v28;
  ++*(this + 38);
  return result;
}

void llvm::MCStreamer::emitIntValue(void *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (((v4 + 63) & 0x1FFFFFFC0) == 0x40)
  {
    LimitedValue = llvm::APInt::getLimitedValue(a2, 0xFFFFFFFFFFFFFFFFLL);
    v6 = *(*a1 + 512);
    v7 = *MEMORY[0x277D85DE8];
    v8 = *(a2 + 8) >> 3;

    v6(a1, LimitedValue, v8);
  }

  else
  {
    if (*(*(a1[1] + 144) + 16))
    {
      v13 = *(a2 + 8);
      if (v4 > 0x40)
      {
        operator new[]();
      }

      v12 = *a2;
    }

    else
    {
      llvm::APInt::byteSwap(a2, &v12);
    }

    v9 = *(a2 + 8) >> 3;
    __dst = v16;
    v15 = xmmword_2750C16E0;
    llvm::SmallVectorImpl<char>::resizeImpl<false>(&__dst, v9);
    if (v13 >= 0x41)
    {
      v10 = v12;
    }

    else
    {
      v10 = &v12;
    }

    memcpy(__dst, v10, v9);
    (*(*a1 + 488))(a1, __dst, v15);
    if (__dst != v16)
    {
      free(__dst);
    }

    if (v13 >= 0x41 && v12)
    {
      MEMORY[0x277C69E10](v12, 0x1000C8000313F17);
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

uint64_t llvm::MCStreamer::emitFill(llvm::MCStreamer *this, uint64_t a2, unsigned int a3)
{
  v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*(this + 1) + 184, 24, 3);
  *v6 = 1;
  *(v6 + 1) = *(v6 + 4) << 24;
  *(v6 + 8) = 0;
  *(v6 + 16) = a2;
  v7 = *(*this + 608);

  return v7(this, v6, a3, 0);
}

void llvm::MCStreamer::tryEmitDwarfFileDirective(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, unsigned int a10)
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 8);
  v14 = *a7;
  v15 = *(a7 + 16);
  v12 = *a8;
  v13 = *(a8 + 2);
  llvm::MCContext::getDwarfFile(v10, a3, a4, a5, a6, a2, &v14, &v12, a9, a10);
  v11 = *MEMORY[0x277D85DE8];
}

void llvm::MCStreamer::emitDwarfFile0Directive(uint64_t a1, void *a2, size_t a3, void *a4, size_t a5, __int128 *a6, uint64_t a7, int a8)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  v12 = *a6;
  v13 = *(a6 + 16);
  v10 = *a7;
  v11 = *(a7 + 16);
  llvm::MCContext::setMCLineTableRootFile(v8, a8, a2, a3, a4, a5, &v12, &v10);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::MCStreamer::emitCFIBKeyFrame(llvm::MCStreamer *this)
{
  result = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (result)
  {
    *(result + 80) = 1;
  }

  return result;
}

uint64_t llvm::MCStreamer::getCurrentDwarfFrameInfo(llvm::MCStreamer *this)
{
  v4 = *(this + 14);
  if (v4)
  {
    return *(this + 3) + 88 * *(*(this + 6) + 16 * v4 - 16);
  }

  v6 = *(this + 1);
  v7 = *(this + 36);
  if (v7)
  {
    v8 = *v7;
  }

  else
  {
    v8 = 0;
  }

  v11 = v1;
  v12 = v2;
  v9 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
  v10 = 259;
  llvm::MCContext::reportError(v6, v8, &v9);
  return 0;
}

uint64_t llvm::MCStreamer::emitCFIMTETaggedFrame(llvm::MCStreamer *this)
{
  result = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (result)
  {
    *(result + 81) = 1;
  }

  return result;
}

uint64_t llvm::MCStreamer::emitDwarfLocDirective(uint64_t result, int a2, int a3, __int16 a4, char a5, char a6, int a7)
{
  v7 = *(result + 8);
  *(v7 + 1584) = a2;
  *(v7 + 1588) = a3;
  *(v7 + 1592) = a4;
  *(v7 + 1594) = a5;
  *(v7 + 1595) = a6;
  *(v7 + 1596) = a7;
  *(v7 + 1600) = 1;
  return result;
}

unint64_t llvm::MCStreamer::getDwarfLineTableSymbol(llvm::MCStreamer *this, unsigned int a2)
{
  v4 = *(this + 1);
  LODWORD(v11[0]) = a2;
  v13[0] = v11;
  v5 = std::__tree<std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::MCDwarfLineTable>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::MCDwarfLineTable>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 + 1560, v11);
  result = v5[5];
  if (!result)
  {
    v7 = *(this + 1);
    v8 = *(v7 + 18);
    v10 = *(v8 + 88);
    v9 = *(v8 + 96);
    v12 = 773;
    v11[0] = v10;
    v11[1] = v9;
    v11[2] = "line_table_start";
    v13[0] = v11;
    v13[2] = a2;
    v14 = 2050;
    result = llvm::MCContext::getOrCreateSymbol(v7, v13);
    v5[5] = result;
  }

  return result;
}

uint64_t llvm::MCStreamer::emitCVFileDirective(uint64_t a1, unsigned int a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  CVContext = llvm::MCContext::getCVContext(*(a1 + 8));

  return llvm::CodeViewContext::addFile(CVContext, a1, a2, a3, a4, a5, a6, a7);
}

BOOL llvm::MCStreamer::emitCVFuncIdDirective(llvm::MCContext **this, unsigned int a2)
{
  CVContext = llvm::MCContext::getCVContext(this[1]);

  return llvm::CodeViewContext::recordFunctionId(CVContext, a2);
}

BOOL llvm::MCStreamer::emitCVInlineSiteIdDirective(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, int a6, uint64_t a7)
{
  CVContext = llvm::MCContext::getCVContext(*(a1 + 8));
  v15 = *(CVContext + 232);
  if (0xAAAAAAAAAAAAAAABLL * ((*(CVContext + 240) - v15) >> 4) > a3 && *(v15 + 48 * a3))
  {
    v16 = llvm::MCContext::getCVContext(*(a1 + 8));

    return llvm::CodeViewContext::recordInlinedCallSiteId(v16, a2, a3, a4, a5, a6);
  }

  else
  {
    v18 = *(a1 + 8);
    v19 = "parent function id not introduced by .cv_func_id or .cv_inline_site_id";
    v20 = 259;
    llvm::MCContext::reportError(v18, a7, &v19);
    return 1;
  }
}

void llvm::MCStreamer::emitCVDefRangeDirective(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_2750C86D0;
  llvm::SmallVectorImpl<char>::resizeImpl<false>(&v9, 0xAuLL);
  *v9 = 4421;
  *(v9 + 2) = a4;
  (*(*a1 + 768))(a1, a2, a3, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

{
  v11[3] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_2750C86D0;
  llvm::SmallVectorImpl<char>::resizeImpl<false>(&v9, 0xAuLL);
  *v9 = 4419;
  *(v9 + 2) = a4;
  (*(*a1 + 768))(a1, a2, a3, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void llvm::MCStreamer::emitCVDefRangeDirective(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_2750C86D0;
  llvm::SmallVectorImpl<char>::resizeImpl<false>(&v9, 6uLL);
  *v9 = 4417;
  *(v9 + 2) = a4;
  (*(*a1 + 768))(a1, a2, a3, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

{
  v11[3] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_2750C86D0;
  llvm::SmallVectorImpl<char>::resizeImpl<false>(&v9, 6uLL);
  *v9 = 4418;
  *(v9 + 2) = a4;
  (*(*a1 + 768))(a1, a2, a3, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::MCStreamer::emitLabel(uint64_t a1, llvm::MCSymbol *this, uint64_t a3)
{
  v6 = *(this + 1);
  if ((v6 & 2) != 0)
  {
    if ((*(this + 1) & 0x3800) == 0x1000)
    {
      *(this + 3) = 0;
      v6 &= 0xFFFFFFFFFFFFC7FFLL;
    }

    *this &= 7uLL;
    *(this + 1) = v6 & 0xFFFFFFFFFFFFFFFDLL;
  }

  if (llvm::MCSymbol::getFragment(this, 1u) || (*(this + 1) & 0x3800) == 0x1000)
  {
    v7 = *(a1 + 8);
    if ((*this & 4) != 0)
    {
      v10 = *(this - 1);
      v11 = *v10;
      v8 = v10 + 2;
      v9 = v11;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v16[0] = "symbol '";
    v16[2] = v8;
    v16[3] = v9;
    v17 = 1283;
    v18[0] = v16;
    v18[2] = "' is already defined";
    v19 = 770;
    return llvm::MCContext::reportError(v7, a3, v18);
  }

  else
  {
    v13 = *(a1 + 152);
    if (v13)
    {
      v14 = *(*(a1 + 144) + 32 * v13 - 32);
    }

    else
    {
      v14 = 0;
    }

    *this = *this & 7 | (v14 + 48);
    result = *(a1 + 16);
    if (result)
    {
      v15 = *(*result + 16);

      return v15();
    }
  }

  return result;
}

void llvm::MCStreamer::emitCFIStartProc(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  if (v4 && ((v5 = *(a1 + 152), !v5) ? (v6 = 0) : (v6 = *(*(a1 + 144) + 32 * v5 - 32)), v6 == *(*(a1 + 48) + 16 * v4 - 8)))
  {
    v26 = *(a1 + 8);
    *&v37 = "starting new .cfi frame before finishing the previous one";
    *v39 = 259;
    llvm::MCContext::reportError(v26, a3, &v37);
  }

  else
  {
    memset(v39, 0, 42);
    v37 = 0u;
    v38 = 0u;
    *&v39[44] = 0x7FFFFFFF;
    *&v39[48] = 0;
    v39[41] = a2;
    (**a1)(a1, &v37);
    v7 = *(*(a1 + 8) + 144);
    if (v7)
    {
      v8 = *(v7 + 448);
      for (i = *(v7 + 456); v8 != i; v8 += 20)
      {
        if (*v8 <= 7u && ((1 << *v8) & 0xB0) != 0)
        {
          *&v39[24] = v8[4];
        }
      }
    }

    v12 = *(a1 + 32);
    v11 = (a1 + 24);
    v13 = *(a1 + 152);
    if (v13)
    {
      v14 = *(*(a1 + 144) + 32 * v13 - 32);
    }

    else
    {
      v14 = 0;
    }

    v15 = 0x2E8BA2E8BA2E8BA3 * ((v12 - *(a1 + 24)) >> 3);
    v16 = *(a1 + 56);
    if (v16 >= *(a1 + 60))
    {
      llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back((a1 + 48), v15, v14);
      v12 = *(a1 + 32);
    }

    else
    {
      v17 = (*(a1 + 48) + 16 * v16);
      *v17 = v15;
      v17[1] = v14;
      *(a1 + 56) = v16 + 1;
    }

    v18 = *(a1 + 40);
    if (v12 >= v18)
    {
      v22 = 0x2E8BA2E8BA2E8BA3 * ((v12 - *v11) >> 3);
      v23 = v22 + 1;
      if ((v22 + 1) > 0x2E8BA2E8BA2E8BALL)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v24 = 0x2E8BA2E8BA2E8BA3 * ((v18 - *v11) >> 3);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x1745D1745D1745DLL)
      {
        v25 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MCDwarfFrameInfo>>(a1 + 24, v25);
      }

      v27 = 88 * v22;
      v28 = v38;
      *v27 = v37;
      *(v27 + 16) = v28;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(88 * v22 + 0x20) = 0;
      std::vector<llvm::MCCFIInstruction>::__init_with_size[abi:nn200100]<llvm::MCCFIInstruction*,llvm::MCCFIInstruction*>(88 * v22 + 32, *v39, *&v39[8], 0xCCCCCCCCCCCCCCCDLL * ((*&v39[8] - *v39) >> 4));
      v29 = *&v39[24];
      *(v27 + 66) = *&v39[34];
      *(v27 + 56) = v29;
      v21 = 88 * v22 + 88;
      v30 = *(a1 + 24);
      v31 = *(a1 + 32);
      v32 = (v27 + v30 - v31);
      if (v30 != v31)
      {
        v33 = *(a1 + 24);
        v34 = v32;
        do
        {
          v35 = *(v33 + 16);
          *v34 = *v33;
          *(v34 + 1) = v35;
          *(v34 + 5) = 0;
          *(v34 + 6) = 0;
          *(v34 + 4) = 0;
          *(v34 + 2) = *(v33 + 32);
          *(v34 + 6) = *(v33 + 48);
          *(v33 + 32) = 0;
          *(v33 + 40) = 0;
          *(v33 + 48) = 0;
          v36 = *(v33 + 56);
          *(v34 + 66) = *(v33 + 66);
          *(v34 + 56) = v36;
          v33 += 88;
          v34 += 88;
        }

        while (v33 != v31);
        do
        {
          v40 = v30 + 4;
          std::vector<llvm::MCCFIInstruction>::__destroy_vector::operator()[abi:nn200100](&v40);
          v30 += 11;
        }

        while (v30 != v31);
        v30 = *v11;
      }

      *(a1 + 24) = v32;
      *(a1 + 32) = v21;
      *(a1 + 40) = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      v19 = v38;
      *v12 = v37;
      *(v12 + 16) = v19;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 32) = 0;
      std::vector<llvm::MCCFIInstruction>::__init_with_size[abi:nn200100]<llvm::MCCFIInstruction*,llvm::MCCFIInstruction*>(v12 + 32, *v39, *&v39[8], 0xCCCCCCCCCCCCCCCDLL * ((*&v39[8] - *v39) >> 4));
      v20 = *&v39[24];
      *(v12 + 66) = *&v39[34];
      *(v12 + 56) = v20;
      v21 = v12 + 88;
    }

    *(a1 + 32) = v21;
    v40 = v39;
    std::vector<llvm::MCCFIInstruction>::__destroy_vector::operator()[abi:nn200100](&v40);
  }
}

uint64_t llvm::MCStreamer::emitCFIEndProc(llvm::MCStreamer *this)
{
  result = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (result)
  {
    result = (*(*this + 8))(this, result);
    --*(this + 14);
  }

  return result;
}

void llvm::MCStreamer::emitCFIDefCfa(llvm::MCStreamer *this, int a2, int a3)
{
  v6 = (*(*this + 80))(this);
  LODWORD(v9) = 7;
  *(&v9 + 1) = v6;
  v10 = a2;
  v11 = a3;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v15 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    v8 = CurrentDwarfFrameInfo;
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v9);
    *(v8 + 56) = a2;
  }
}

void std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100](uint64_t *a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    if (v10 + 1 > 0x333333333333333)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x199999999999999)
    {
      v13 = 0x333333333333333;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MCCFIInstruction>>(a1, v13);
    }

    v15 = 16 * ((v5 - *a1) >> 4);
    v16 = *a2;
    *(v15 + 12) = *(a2 + 12);
    *(80 * v10 + 0x20) = 0;
    *v15 = v16;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    v18 = *(a2 + 4);
    v17 = *(a2 + 5);
    if (v17 != v18)
    {
      std::vector<char>::__vallocate[abi:nn200100](80 * v10 + 32, v17 - v18);
    }

    if (*(a2 + 79) < 0)
    {
      std::string::__init_copy_ctor_external((v15 + 56), *(a2 + 7), *(a2 + 8));
    }

    else
    {
      v19 = *(a2 + 56);
      *(80 * v10 + 0x48) = *(a2 + 9);
      *(80 * v10 + 0x38) = v19;
    }

    v14 = v15 + 80;
    v20 = *a1;
    v21 = a1[1];
    v22 = v15 + *a1 - v21;
    if (v21 != *a1)
    {
      v23 = *a1;
      v24 = v15 + *a1 - v21;
      do
      {
        v25 = *v23;
        *(v24 + 12) = *(v23 + 12);
        *v24 = v25;
        *(v24 + 40) = 0;
        *(v24 + 48) = 0;
        *(v24 + 32) = 0;
        *(v24 + 32) = *(v23 + 2);
        *(v24 + 48) = *(v23 + 6);
        *(v23 + 4) = 0;
        *(v23 + 5) = 0;
        *(v23 + 6) = 0;
        v26 = *(v23 + 56);
        *(v24 + 72) = *(v23 + 9);
        *(v24 + 56) = v26;
        *(v23 + 8) = 0;
        *(v23 + 9) = 0;
        *(v23 + 7) = 0;
        v23 += 80;
        v24 += 80;
      }

      while (v23 != v21);
      do
      {
        std::allocator<llvm::MCCFIInstruction>::destroy[abi:nn200100](a1, v20);
        v20 += 80;
      }

      while (v20 != v21);
      v20 = *a1;
    }

    *a1 = v22;
    a1[1] = v14;
    a1[2] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 12) = *(a2 + 12);
    *(v5 + 32) = 0;
    *v5 = v6;
    *(v5 + 40) = 0;
    *(v5 + 48) = 0;
    v8 = *(a2 + 4);
    v7 = *(a2 + 5);
    if (v7 != v8)
    {
      std::vector<char>::__vallocate[abi:nn200100](v5 + 32, v7 - v8);
    }

    if (*(a2 + 79) < 0)
    {
      std::string::__init_copy_ctor_external((v5 + 56), *(a2 + 7), *(a2 + 8));
    }

    else
    {
      v9 = *(a2 + 56);
      *(v5 + 72) = *(a2 + 9);
      *(v5 + 56) = v9;
    }

    v14 = v5 + 80;
  }

  a1[1] = v14;
}

void llvm::MCStreamer::emitCFIDefCfaOffset(llvm::MCStreamer *this, int a2)
{
  v4 = (*(*this + 80))(this);
  LODWORD(v6) = 6;
  *(&v6 + 1) = v4;
  v7 = 0;
  v8 = a2;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v12 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v6);
  }
}

void llvm::MCStreamer::emitCFIAdjustCfaOffset(llvm::MCStreamer *this, int a2)
{
  v4 = (*(*this + 80))(this);
  LODWORD(v6) = 9;
  *(&v6 + 1) = v4;
  v7 = 0;
  v8 = a2;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v12 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v6);
  }
}

void llvm::MCStreamer::emitCFIDefCfaRegister(llvm::MCStreamer *this, int a2)
{
  v4 = (*(*this + 80))(this);
  LODWORD(v7) = 5;
  *(&v7 + 1) = v4;
  v8 = a2;
  v9 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v13 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    v6 = CurrentDwarfFrameInfo;
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v7);
    *(v6 + 56) = a2;
  }
}

void llvm::MCStreamer::emitCFILLVMDefAspaceCfa(llvm::MCStreamer *this, int a2, int a3, int a4)
{
  v8 = (*(*this + 80))(this);
  LODWORD(v11) = 4;
  *(&v11 + 1) = v8;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    v10 = CurrentDwarfFrameInfo;
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v11);
    *(v10 + 56) = a2;
  }
}

void llvm::MCStreamer::emitCFIOffset(llvm::MCStreamer *this, int a2, int a3)
{
  v6 = (*(*this + 80))(this);
  LODWORD(v8) = 3;
  *(&v8 + 1) = v6;
  v9 = a2;
  v10 = a3;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v14 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v8);
  }
}

void llvm::MCStreamer::emitCFIRelOffset(llvm::MCStreamer *this, int a2, int a3)
{
  v6 = (*(*this + 80))(this);
  LODWORD(v8) = 8;
  *(&v8 + 1) = v6;
  v9 = a2;
  v10 = a3;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v14 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v8);
  }
}

uint64_t llvm::MCStreamer::emitCFIPersonality(llvm::MCStreamer *this, const llvm::MCSymbol *a2, int a3)
{
  result = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 60) = a3;
  }

  return result;
}

uint64_t llvm::MCStreamer::emitCFILsda(llvm::MCStreamer *this, const llvm::MCSymbol *a2, int a3)
{
  result = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (result)
  {
    *(result + 24) = a2;
    *(result + 64) = a3;
  }

  return result;
}

void llvm::MCStreamer::emitCFIRememberState(llvm::MCStreamer *this)
{
  v2 = (*(*this + 80))(this);
  LODWORD(v4) = 1;
  *(&v4 + 1) = v2;
  v5 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v9 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v4);
  }
}

void llvm::MCStreamer::emitCFIRestoreState(llvm::MCStreamer *this)
{
  v2 = (*(*this + 80))(this);
  LODWORD(v4) = 2;
  *(&v4 + 1) = v2;
  v5 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v9 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v4);
  }
}

void llvm::MCStreamer::emitCFISameValue(llvm::MCStreamer *this, int a2)
{
  v4 = (*(*this + 80))(this);
  LODWORD(v6) = 0;
  *(&v6 + 1) = v4;
  v7 = a2;
  v8 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v12 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v6);
  }
}

void llvm::MCStreamer::emitCFIRestore(llvm::MCStreamer *this, int a2)
{
  v4 = (*(*this + 80))(this);
  LODWORD(v6) = 11;
  *(&v6 + 1) = v4;
  v7 = a2;
  v8 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v12 = 0;
  CurrentDwarfFrameInfo = llvm::MCStreamer::getCurrentDwarfFrameInfo(this);
  if (CurrentDwarfFrameInfo)
  {
    std::vector<llvm::MCCFIInstruction>::push_back[abi:nn200100]((CurrentDwarfFrameInfo + 32), &v6);
  }
}