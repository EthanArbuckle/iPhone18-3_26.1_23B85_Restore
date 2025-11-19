_WORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    return llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr>(a1, v7, a2);
  }

  return v5;
}

_WORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr>(uint64_t a1, void *a2, void *a3)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  *result = 0;
  *result = *a3;
  *a3 = 0;
  result[4] = 0;
  return result;
}

double llvm::object::MachOUniversalBinary::objects(llvm::object::MachOUniversalBinary *this, uint64_t a2)
{
  llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(v6, a2, 0);
  llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(this + 64, 0, 0);
  v3 = v6[1];
  *this = v6[0];
  *(this + 1) = v3;
  result = *&v7;
  v5 = v8;
  *(this + 2) = v7;
  *(this + 3) = v5;
  return result;
}

uint64_t *llvm::orc::getDylibInterface@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v6 = llvm::identify_magic(a2, &v57);
  if (v6)
  {
    llvm::errorCodeToError(v6, v7, &v76);
    *&v80 = v76;
    llvm::FileError::build(a2, 0, 0, &v80);
  }

  v55[0] = 0;
  v55[1] = 0;
  v56 = 0;
  if (v57 != 14)
  {
    if (v57 == 32)
    {
      v10 = *(a2 + 16);
      v66[0] = *a2;
      v66[1] = v10;
      v67 = *(a2 + 32);
      v60[0] = 0;
      v60[1] = 0;
      v61 = 0;
      getFileAux<llvm::MemoryBuffer>(v66, 0xFFFFFFFFFFFFFFFFLL, 0, 0, 1, 0, 0, &v68);
      if (v69)
      {
        *&v11.__val_ = *(&v68 + 1);
        llvm::errorCodeToError(v68, v11, &v80);
        llvm::FileError::build(v66, 0, 0, &v80);
      }

      v16 = *(v68 + 8);
      v17 = *(v68 + 16) - v16;
      v18 = (*(*v68 + 16))(v68);
      *&v80 = v16;
      *(&v80 + 1) = v17;
      *&v81 = v18;
      *(&v81 + 1) = v19;
      llvm::object::TapiUniversal::create();
    }

    if (v57 != 20)
    {
      v13 = *(a2 + 32);
      if (v13 == 1)
      {
        v21 = "Cannot get interface for ";
        *&v76 = "Cannot get interface for ";
        LOWORD(v78) = 259;
        v14 = 3;
      }

      else
      {
        if (!*(a2 + 32))
        {
          v14 = 0;
          LOWORD(v78) = 256;
          v15 = 1;
          goto LABEL_23;
        }

        v22 = *a2;
        v23 = *(a2 + 8);
        v14 = 2;
        if (*(a2 + 33) != 1)
        {
          LOBYTE(v13) = 2;
          v22 = a2;
        }

        *&v76 = "Cannot get interface for ";
        *&v77 = v22;
        *(&v77 + 1) = v23;
        LOBYTE(v78) = 3;
        BYTE1(v78) = v13;
        v21 = &v76;
      }

      *&v80 = v21;
      *&v81 = " unrecognized file type";
      v15 = 3;
LABEL_23:
      LOBYTE(v82) = v14;
      BYTE1(v82) = v15;
      getErrorErrorCat();
      operator new();
    }
  }

  v8 = *(a2 + 16);
  v68 = *a2;
  v69 = v8;
  v70 = *(a2 + 32);
  llvm::MachO::getCPUType((*(a1 + 72) + 40), &v90);
  if (v91)
  {
    v9 = v90;
    *(a3 + 24) |= 1u;
    *a3 = v9;
    goto LABEL_65;
  }

  llvm::MachO::getCPUSubType((*(a1 + 72) + 40), &v88);
  if ((v89 & 1) == 0)
  {
    getFileAux<llvm::MemoryBuffer>(&v68, 0xFFFFFFFFFFFFFFFFLL, 0, 0, 1, 0, 0, v71);
    if (v72)
    {
      *&v20.__val_ = v71[1];
      llvm::errorCodeToError(v71[0], v20, &v80);
      llvm::FileError::build(&v68, 0, 0, &v80);
    }

    v24 = v71[0];
    v25 = *(v71[0] + 1);
    v26 = *(v71[0] + 2) - v25;
    v27 = (*(*v71[0] + 16))(v71[0]);
    *&v80 = v25;
    *(&v80 + 1) = v26;
    *&v81 = v27;
    *(&v81 + 1) = v28;
    llvm::object::createBinary(&v80, 0, 1, &v86);
    v29 = v86;
    if (v87)
    {
      v86 = 0;
      *(a3 + 24) |= 1u;
      *a3 = v29;
      llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v86);
    }

    else
    {
      v30 = v86[2];
      if ((v30 - 17) > 3)
      {
        if (v30 == 1)
        {
          llvm::object::MachOUniversalBinary::objects(&v80, v86);
          v76 = v80;
          v77 = v81;
          v78 = v82;
          v79 = v83;
          v38 = v84;
          v39 = v85;
          v40 = v80;
          v41 = DWORD2(v80);
          if (v80 != v84 || DWORD2(v80) != v85)
          {
            v42 = v90;
            v43 = v88;
            do
            {
              v44 = *(v40 + 48);
              v45 = 32;
              if (v44 == -889275714)
              {
                v45 = 12;
              }

              if (*(&v76 + v45) == v42)
              {
                v47 = v44 == -889275714;
                v46 = 36;
                if (v47)
                {
                  v46 = 16;
                }

                if ((*(&v76 + v46) & 0xFFFFFF) == v43)
                {
                  llvm::object::MachOUniversalBinary::ObjectForArch::getAsObjectFile(&v76);
                }
              }

              llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(&v76, v40, v41 + 1);
              v40 = v76;
              v41 = DWORD2(v76);
              v47 = v76 == v38 && DWORD2(v76) == v39;
            }

            while (!v47);
          }

          *&v66[0] = "MachO universal binary at ";
          LOWORD(v67) = 259;
          llvm::operator+(v66, &v68, v73);
          v63 = " does not contain a slice for ";
          v65 = 259;
          llvm::operator+(v73, &v63, &v76);
          v48 = *(a1 + 72) + 40;
          v62 = 260;
          v60[0] = v48;
          llvm::operator+(&v76, v60, &v80);
          getErrorErrorCat();
          v58 = 3;
          v59 = &getErrorErrorCat(void)::ErrorErrorCat;
          llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
        }

        v73[0] = "File at ";
        v75 = 259;
        llvm::operator+(v73, &v68, &v76);
        *&v66[0] = " is not a MachO";
        LOWORD(v67) = 259;
        llvm::operator+(&v76, v66, &v80);
        getErrorErrorCat();
        v63 = 3;
        v64 = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
      }

      v86 = 0;
      if (v29[15] != 6)
      {
        v73[0] = "MachO at ";
        v75 = 259;
        llvm::operator+(v73, &v68, &v76);
        *&v66[0] = " is not a dylib";
        LOWORD(v67) = 259;
        llvm::operator+(&v76, v66, &v80);
        getErrorErrorCat();
        v63 = 3;
        v64 = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
      }

      v76 = 0uLL;
      LODWORD(v77) = 0;
      v31 = (*(*v29 + 48))(v29);
      v33 = v32;
      v34 = (*(*v29 + 56))(v29);
      *&v66[0] = v31;
      *(&v66[0] + 1) = v33;
      if (v31 == v34)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
LABEL_64:
        *(a3 + 24) &= ~1u;
        *a3 = v36;
        v76 = 0uLL;
        *(a3 + 8) = v37;
        *(a3 + 16) = v35;
        LODWORD(v77) = 0;
      }

      else
      {
        v49 = v34;
        while (1)
        {
          (*(**(&v66[0] + 1) + 80))(v73);
          if (v74)
          {
            break;
          }

          llvm::orc::ExecutionSession::intern(a1, v73[0], v73[1], &v63);
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v76, &v63, &v80);
          if ((v63 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v63 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          if (v74)
          {
            v50 = v73[0];
            v73[0] = 0;
            if (v50)
            {
              (*(*v50 + 8))(v50);
            }
          }

          (*(**(&v66[0] + 1) + 24))(*(&v66[0] + 1), v66);
          if (*&v66[0] == v49)
          {
            v37 = *(&v76 + 1);
            v36 = v76;
            v35 = v77;
            goto LABEL_64;
          }
        }

        v53 = v73[0];
        *(a3 + 24) |= 1u;
        *a3 = v53;
      }

      llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(&v76);
      v54 = v72;
      (*(*v29 + 8))(v29);
      llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v86);
      if (v54)
      {
        goto LABEL_27;
      }

      v24 = v71[0];
      if (!v71[0])
      {
        goto LABEL_27;
      }
    }

    (*(*v24 + 8))(v24);
LABEL_27:
    if ((v89 & 1) != 0 && v88)
    {
      (*(*v88 + 8))(v88);
    }

    goto LABEL_30;
  }

  v12 = v88;
  *(a3 + 24) |= 1u;
  *a3 = v12;
LABEL_30:
  if ((v91 & 1) != 0 && v90)
  {
    (*(*v90 + 8))(v90);
  }

LABEL_65:
  result = llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(v55);
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::MachO::SymbolSet::exports@<X0>(llvm::MachO::SymbolSet *this@<X0>, uint64_t a2@<X8>)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v13[0] = &unk_2883EC380;
  v13[3] = v13;
  v3 = *(this + 12);
  v4 = *(this + 28);
  if (*(this + 26))
  {
    v9.i64[0] = *(this + 12);
    v9.i64[1] = v3 + 32 * v4;
    llvm::DenseMapIterator<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>,true>::AdvancePastEmptyBuckets(&v9);
    v6 = v9;
    v3 = *(this + 12);
    v4 = *(this + 28);
  }

  else
  {
    v6 = vdupq_n_s64(v3 + 32 * v4);
  }

  v9 = v6;
  v10 = v3 + 32 * v4;
  v11 = v10;
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](v12, v13);
  llvm::make_filter_range<llvm::iterator_range<llvm::MachO::SymbolSet::const_symbol_iterator>,std::function<BOOL ()(llvm::MachO::Symbol const*)>>(v9.i64, v12, a2);
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v12);
  result = std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v13);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::make_filter_range<llvm::iterator_range<llvm::MachO::SymbolSet::const_symbol_iterator>,std::function<BOOL ()(llvm::MachO::Symbol const*)>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](v17, a2);
  llvm::filter_iterator_impl<llvm::MachO::SymbolSet::const_symbol_iterator,std::function<BOOL ()(llvm::MachO::Symbol const*)>,std::forward_iterator_tag>::filter_iterator_impl(v18, v6, v7, v8, v9, v17);
  v11 = a1[2];
  v10 = a1[3];
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](v14, a2);
  llvm::filter_iterator_impl<llvm::MachO::SymbolSet::const_symbol_iterator,std::function<BOOL ()(llvm::MachO::Symbol const*)>,std::forward_iterator_tag>::filter_iterator_impl(v15, v11, v10, v11, v10, v14);
  llvm::make_range<llvm::filter_iterator_impl<llvm::MachO::SymbolSet::const_symbol_iterator,std::function<BOOL ()(llvm::MachO::Symbol const*)>,std::forward_iterator_tag>>(v18, v15, a3);
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](&v16);
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v14);
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v19);
  result = std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v17);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::make_range<llvm::filter_iterator_impl<llvm::MachO::SymbolSet::const_symbol_iterator,std::function<BOOL ()(llvm::MachO::Symbol const*)>,std::forward_iterator_tag>>@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v15 = *a1;
  v16 = v5;
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](v17, (a1 + 2));
  v11 = *a2;
  v12 = a2[1];
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](v13, (a2 + 2));
  v6 = v16;
  *a3 = v15;
  *(a3 + 16) = v6;
  v7 = v18;
  if (v18)
  {
    if (v18 == v17)
    {
      *(a3 + 56) = a3 + 32;
      (*(*v7 + 24))(v7);
    }

    else
    {
      *(a3 + 56) = v18;
      v18 = 0;
    }
  }

  else
  {
    *(a3 + 56) = 0;
  }

  *(a3 + 64) = v11;
  *(a3 + 80) = v12;
  v8 = v14;
  if (v14)
  {
    if (v14 == v13)
    {
      *(a3 + 120) = a3 + 96;
      (*(*v8 + 24))(v8);
    }

    else
    {
      *(a3 + 120) = v14;
      v14 = 0;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v13);
  result = std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v17);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *llvm::filter_iterator_impl<llvm::MachO::SymbolSet::const_symbol_iterator,std::function<BOOL ()(llvm::MachO::Symbol const*)>,std::forward_iterator_tag>::filter_iterator_impl(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](v13, a6);
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100]((a1 + 4), v13);
  llvm::filter_iterator_base<llvm::MachO::SymbolSet::const_symbol_iterator,std::function<BOOL ()(llvm::MachO::Symbol const*)>,std::forward_iterator_tag>::findNextValid(a1);
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v13);
  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t llvm::filter_iterator_base<llvm::MachO::SymbolSet::const_symbol_iterator,std::function<BOOL ()(llvm::MachO::Symbol const*)>,std::forward_iterator_tag>::findNextValid(uint64_t result)
{
  v1 = *result;
  if (*result != *(result + 16))
  {
    v2 = result;
    do
    {
      result = std::function<BOOL ()(llvm::MachO::Symbol const*)>::operator()((v2 + 4), *(v1 + 24));
      if (result)
      {
        break;
      }

      *v2 += 32;
      result = llvm::DenseMapIterator<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>,true>::AdvancePastEmptyBuckets(v2);
      v1 = *v2;
    }

    while (*v2 != v2[2]);
  }

  return result;
}

uint64_t std::function<BOOL ()(llvm::MachO::Symbol const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::DenseMapIterator<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>,true>::AdvancePastEmptyBuckets(v4);
}

uint64_t llvm::DenseMapIterator<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>,true>::AdvancePastEmptyBuckets(uint64_t result)
{
  v7 = 0;
  v8[0] = 0;
  v8[1] = 0;
  v5 = 3;
  v6[0] = 0;
  v6[1] = 0;
  v1 = *result;
  if (*result != *(result + 8))
  {
    v2 = result;
    do
    {
      v11 = v1;
      v12 = v1 + 8;
      v9 = &v7;
      v10 = v8;
      result = std::__tuple_equal<2ul>::operator()[abi:nn200100]<std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>,std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>>(&v13, &v11, &v9);
      if ((result & 1) == 0)
      {
        v3 = (*v2 + 8);
        v11 = *v2;
        v12 = v3;
        v9 = &v5;
        v10 = v6;
        result = std::__tuple_equal<2ul>::operator()[abi:nn200100]<std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>,std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>>(&v13, &v11, &v9);
        if (!result)
        {
          break;
        }
      }

      v4 = v2[1];
      v1 = *v2 + 32;
      *v2 = v1;
    }

    while (v1 != v4);
  }

  return result;
}

BOOL std::__tuple_equal<2ul>::operator()[abi:nn200100]<std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>,std::tuple<llvm::MachO::SymbolKind const&,llvm::StringRef const&>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (**a2 != **a3)
  {
    return 0;
  }

  v4 = a2[1];
  v5 = *(v4 + 1);
  v6 = a3[1];
  if (v5 != *(v6 + 1))
  {
    return 0;
  }

  if (v5)
  {
    return memcmp(*v4, *v6, v5) == 0;
  }

  return 1;
}

uint64_t std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::Expected<std::unique_ptr<llvm::MachO::InterfaceFile>>::~Expected(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (v3)
  {
    llvm::MachO::InterfaceFile::~InterfaceFile(v3);
    MEMORY[0x277C69E40]();
  }

  return a1;
}

void llvm::MachO::InterfaceFile::~InterfaceFile(llvm::MachO::InterfaceFile *this)
{
  v2 = *(this + 58);
  *(this + 58) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 56);
  *(this + 56) = 0;
  if (v3)
  {
    llvm::MachO::SymbolSet::~SymbolSet(v3);
    MEMORY[0x277C69E40]();
  }

  v5 = (this + 424);
  std::vector<llvm::MachO::InterfaceFileRef>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 400);
  std::vector<std::pair<llvm::MachO::Target,std::string>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 376);
  std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 352);
  std::vector<llvm::MachO::InterfaceFileRef>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 328);
  std::vector<llvm::MachO::InterfaceFileRef>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 304);
  std::vector<std::pair<llvm::MachO::Target,std::string>>::__destroy_vector::operator()[abi:nn200100](&v5);
  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  v4 = *(this + 12);
  if (v4 != this + 112)
  {
    free(v4);
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this);
}

void std::vector<llvm::MachO::InterfaceFileRef>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 160;
        std::allocator<llvm::MachO::InterfaceFileRef>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<llvm::MachO::InterfaceFileRef>::destroy[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 != (a2 + 40))
  {
    free(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

void std::vector<std::pair<llvm::MachO::Target,std::string>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<llvm::MachO::Target,std::string>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<llvm::MachO::Target,std::string>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t llvm::Function::args(llvm::Function *this)
{
  if (*(this + 9))
  {
    llvm::Function::BuildLazyArguments(this);
    v2 = *(this + 11);
    if (*(this + 9))
    {
      llvm::Function::BuildLazyArguments(this);
      v3 = *(this + 11);
      goto LABEL_6;
    }
  }

  else
  {
    v2 = *(this + 11);
  }

  v3 = v2;
LABEL_6:
  v4 = v3 + 40 * *(this + 12);
  return v2;
}

uint64_t *llvm::IRBuilderBase::CreateCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, llvm::MDNode *a7)
{
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v18 = 257;
  v13 = llvm::CallInst::Create(a2, a3, a4, a5, v11, v12, v17, 0);
  v14 = v13;
  if (*(a1 + 100) == 1)
  {
    *(v13 + 8) = llvm::AttributeList::addAttributeAtIndex(v13 + 8, **v13, -1, 62);
  }

  if (llvm::FPMathOperator::classof(v14))
  {
    v15 = *(a1 + 96);
    if (a7 || (a7 = *(a1 + 88)) != 0)
    {
      llvm::Value::setMetadata(v14, 3, a7);
    }

    *(v14 + 17) |= 2 * v15;
  }

  return llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, v14, a6);
}

void llvm::orc::addFunctionPointerRelocationsToCurrentSymbol(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v72[0] = *MEMORY[0x277D85DE8];
  if (*(a2 + 160) == 38)
  {
    v56 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 1;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v55 = &unk_2883EB870;
    v49 = a3[2];
    v7 = a1[1];
    v8 = *v7;
    v9 = a1[2] & 0x1FFFFFFFFFFFFFFLL;
    v10 = v7[3];
    if (a1[3])
    {
      v11 = a1[3];
    }

    else
    {
      v11 = v7[4] - v9;
    }

    v67 = 1;
    *&v12 = -1;
    *(&v12 + 1) = -1;
    v71 = v12;
    v70 = v12;
    v68 = v12;
    v69 = v12;
    v13 = v7[5];
    v45 = v7 + 5;
    v46 = v7;
    v14 = v7[6];
    if (v13 != v14)
    {
      while (1)
      {
        if (*(v13 + 24) >= 2u)
        {
          v15 = *(v13 + 8);
          *&v63 = 0;
          if ((llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::LookupBucketFor<unsigned long>(&v67, v15, &v63) & 1) == 0)
          {
            break;
          }
        }

LABEL_16:
        v13 += 32;
        if (v13 == v14)
        {
          goto LABEL_21;
        }
      }

      v16 = v67 >> 1;
      if (v67)
      {
        v17 = 8;
      }

      else
      {
        v17 = DWORD2(v68);
      }

      if (4 * v16 + 4 >= 3 * v17)
      {
        v17 *= 2;
      }

      else if (v17 + ~v16 - HIDWORD(v67) > v17 >> 3)
      {
LABEL_13:
        LODWORD(v67) = v67 + 2;
        if (*v63 != -1)
        {
          --HIDWORD(v67);
        }

        *v63 = v15;
        goto LABEL_16;
      }

      llvm::SmallDenseMap<unsigned long,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::grow(&v67, v17);
      *&v63 = 0;
      llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::LookupBucketFor<unsigned long>(&v67, v15, &v63);
      goto LABEL_13;
    }

LABEL_21:
    if (v11)
    {
      v18 = 0;
      v19 = v9 + v8;
      v20 = *a5;
      do
      {
        v63 = 0u;
        v64 = v66;
        v65 = 0xA00000000;
        v53 = v18 + v19;
        v54 = 0;
        if ((*(*a3 + 16))(a3, &v63, &v54, v10 + v9 + v18, v11 - v18) != 3)
        {
          v50[0] = "failed to disassemble at address {0:x16}";
          v50[1] = 40;
          v50[2] = &v52;
          v50[3] = 1;
          v51[0] = &unk_2883EC3C8;
          v51[1] = &v53;
          v52 = v51;
          getErrorErrorCat();
          operator new();
        }

        v18 += v54;
        v21 = (*(*a4 + 112))(a4, &v63, v49, v53);
        if ((v22 & 1) != 0 && v21 == v19)
        {
          v23 = (*(*a4 + 120))(a4, &v63, v54);
          if ((v24 & 1) != 0 && v54 - v23 == 4)
          {
            v25 = v23 - v19 + v53 + (a1[2] & 0x1FFFFFFFFFFFFFFLL);
            v50[0] = 0;
            v44 = v25;
            if (llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::LookupBucketFor<unsigned long>(&v67, v25, v50))
            {
              v26 = v50[0];
              v27 = v68;
              v28 = DWORD2(v68);
              v29 = v67 & 1;
            }

            else
            {
              v29 = v67 & 1;
              v27 = v68;
              v28 = DWORD2(v68);
              v26 = (v68 + 8 * DWORD2(v68));
              if (v67)
              {
                v26 = v72;
              }
            }

            v30 = (v27 + 8 * v28);
            if (v29)
            {
              v30 = v72;
            }

            if (v30 == v26)
            {
              v31 = v46[6];
              v32 = v46[7];
              if (v31 >= v32)
              {
                v34 = (v31 - *v45) >> 5;
                v35 = v34 + 1;
                if ((v34 + 1) >> 59)
                {
                  *a5 = v20;
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v36 = v32 - *v45;
                if (v36 >> 4 > v35)
                {
                  v35 = v36 >> 4;
                }

                if (v36 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v37 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v37 = v35;
                }

                if (v37)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>(v45, v37);
                }

                v38 = 32 * v34;
                *v38 = a1;
                *(v38 + 8) = v44;
                *(v38 + 16) = -4;
                *(v38 + 24) = 7;
                v39 = v46[5];
                v40 = v46[6] - v39;
                v43 = (32 * v34 - v40);
                memcpy(v43, v39, v40);
                v41 = v46[5];
                v46[5] = v43;
                v46[6] = 32 * v34 + 32;
                v46[7] = 0;
                if (v41)
                {
                  operator delete(v41);
                }

                v33 = 32 * v34 + 32;
              }

              else
              {
                *v31 = a1;
                *(v31 + 8) = v44;
                *(v31 + 16) = -4;
                v33 = v31 + 32;
                *(v31 + 24) = 7;
              }

              v46[6] = v33;
            }
          }
        }

        if (v64 != v66)
        {
          free(v64);
        }
      }

      while (v18 < v11);
    }

    *a5 = 0;
    if ((v67 & 1) == 0)
    {
      MEMORY[0x277C69E30](v68, 8);
    }

    llvm::raw_ostream::~raw_ostream(&v55);
  }

  else
  {
    *a5 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::IRBuilderBase::CreateAlignedLoad(uint64_t *a1, llvm::Type *a2, llvm::Value *a3, __int16 a4, __int16 a5, uint64_t a6)
{
  Alignment = a4;
  if ((a4 & 0x100) == 0)
  {
    Alignment = llvm::DataLayout::getAlignment((*(*(a1[6] + 56) + 40) + 256), a2, 1);
  }

  v12 = operator new(0x60uLL);
  *(v12 + 13) = *(v12 + 13) & 0x38000000 | 1;
  v13 = (v12 + 32);
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = v12 + 32;
  v16 = 257;
  llvm::LoadInst::LoadInst((v12 + 32), a2, a3, v15, a5, Alignment, 0);
  return llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, v13, a6);
}

uint64_t *llvm::IRBuilderBase::Insert<llvm::LoadInst>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  (*(*a1[10] + 16))(a1[10], a2, a3, a1[6], a1[7]);
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = *a1;
    v7 = v6 + 16 * v5;
    do
    {
      llvm::Instruction::setMetadata(a2, *v6, *(v6 + 8));
      v6 += 16;
    }

    while (v6 != v7);
  }

  return a2;
}

char *llvm::CallInst::Create(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, const llvm::Twine *a7, uint64_t *a8)
{
  v15 = 3 * a6;
  v16 = 0;
  if (a6)
  {
    v17 = 48 * a6;
    v18 = (a5 + 32);
    do
    {
      v16 += (*v18 - *(v18 - 1)) >> 3;
      v18 += 6;
      v17 -= 48;
    }

    while (v17);
  }

  v19 = a4 + 1;
  v20 = llvm::User::operator new(0x50, v16 + a4 + 1, 16 * a6);
  v21 = v20;
  if (a6)
  {
    v22 = 0;
    v23 = 16 * v15;
    v24 = (a5 + 32);
    v25 = 16 * v15;
    do
    {
      v22 += (*v24 - *(v24 - 1)) >> 3;
      v24 += 6;
      v25 -= 48;
    }

    while (v25);
    v26 = 0;
    v27 = (a5 + 32);
    do
    {
      v26 += (*v27 - *(v27 - 1)) >> 3;
      v27 += 6;
      v23 -= 48;
    }

    while (v23);
    v28 = a4 + v22;
  }

  else
  {
    v26 = 0;
    v28 = a4;
  }

  v29 = llvm::Instruction::Instruction(v20, **(a1 + 16), 56, &v20[32 * ~v28], v26 + v19, a8);
  *(v21 + 8) = 0;
  llvm::CallInst::init(v29, a1, a2, a3, a4, a5, a6, a7);
  return v21;
}

BOOL llvm::FPMathOperator::classof(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (a1)
  {
    v2 = v1 - 28;
    if (v1 >= 0x1C)
    {
LABEL_6:
      if (v2 <= 0x39)
      {
        if (((1 << v2) & 0x40000001255000) != 0)
        {
          return 1;
        }

        if (((1 << v2) & 0x380000000000000) != 0)
        {
          do
          {
            v4 = *a1;
            v5 = *(*a1 + 8);
            a1 = *a1 + 24;
            if (v4)
            {
              v6 = v5 == 17;
            }

            else
            {
              v6 = 0;
            }
          }

          while (v6);
          if ((v5 & 0xFE) == 0x12)
          {
            v5 = *(**(v4 + 16) + 8);
          }

          if (v5 >= 6u || ((0x2Fu >> v5) & 1) == 0)
          {
            return (v5 & 0xFD) == 4;
          }

          return 1;
        }
      }

      return 0;
    }
  }

  v3 = 0;
  if (a1 && v1 == 5)
  {
    v2 = *(a1 + 18);
    goto LABEL_6;
  }

  return v3;
}

uint64_t llvm::ValueHandleBase::operator=(llvm::ValueHandleBase *this, uint64_t a2)
{
  v3 = *(this + 2);
  if (v3 != a2)
  {
    if (v3 != -8192 && v3 != -4096 && v3 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(this);
    }

    *(this + 2) = a2;
    if (a2 != -8192 && a2 != -4096 && a2)
    {
      llvm::ValueHandleBase::AddToUseList(this);
    }
  }

  return a2;
}

char *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::DenseMap(char *a1, uint64_t a2, uint64_t a3)
{
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::init(a1, a3);
  if (a3)
  {
    v6 = a2 + 16 * a3;
    do
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::try_emplace<llvm::JITSymbolFlags const&>(a1, a2, (a2 + 8), v8);
      a2 += 16;
    }

    while (a2 != v6);
  }

  return a1;
}

uint64_t llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::increment<0ul,1ul,2ul,3ul>(uint64_t a1)
{
  v2 = 0;
  v9[8] = *MEMORY[0x277D85DE8];
  v9[1] = 0;
  v9[3] = 0;
  v9[5] = 0;
  v9[0] = llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::incrementHelper<0ul>;
  v9[2] = llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::incrementHelper<1ul>;
  v9[4] = llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::incrementHelper<2ul>;
  v9[6] = llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::incrementHelper<3ul>;
  v9[7] = 0;
  do
  {
    v3 = v9[v2];
    v4 = v9[v2 + 1];
    v5 = (a1 + (v4 >> 1));
    if (v4)
    {
      v3 = *(*v5 + v3);
    }

    result = v3(v5);
    if (result)
    {
      break;
    }

    v7 = v2 == 6;
    v2 += 2;
  }

  while (!v7);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  if (*a1 != v2)
  {
    *a1 = *(v1 + 8);
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 40);
  if (v1 != v2)
  {
    *(a1 + 8) = *(v1 + 8);
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::incrementHelper<2ul>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 48);
  if (v1 != v2)
  {
    *(a1 + 16) = *(v1 + 8);
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::incrementHelper<3ul>(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 56);
  if (v1 != v2)
  {
    *(a1 + 24) = *(v1 + 8);
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::get<0ul,1ul,2ul,3ul>(uint64_t a1)
{
  v2 = 0;
  v8[8] = *MEMORY[0x277D85DE8];
  v8[1] = 0;
  v8[3] = 0;
  v8[5] = 0;
  v8[0] = llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::getHelper<0ul>;
  v8[2] = llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::getHelper<1ul>;
  v8[4] = llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::getHelper<2ul>;
  v8[6] = llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::getHelper<3ul>;
  v8[7] = 0;
  do
  {
    v3 = v8[v2];
    v4 = v8[v2 + 1];
    v5 = (a1 + (v4 >> 1));
    if (v4)
    {
      v3 = *(*v5 + v3);
    }

    result = v3(v5);
    v2 += 2;
  }

  while (!result);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[4] || *a1 == 0)
  {
    return 0;
  }

  else
  {
    return *a1 - 56;
  }
}

uint64_t llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::getHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == *(a1 + 40) || v1 == 0)
  {
    return 0;
  }

  else
  {
    return v1 - 56;
  }
}

uint64_t llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::getHelper<2ul>(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == *(a1 + 48) || v1 == 0)
  {
    return 0;
  }

  else
  {
    return v1 - 48;
  }
}

uint64_t llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::getHelper<3ul>(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == *(a1 + 56) || v1 == 0)
  {
    return 0;
  }

  else
  {
    return v1 - 56;
  }
}

unint64_t *llvm::ValueHandleBase::ValueHandleBase(unint64_t *result, unsigned int a2, uint64_t *a3)
{
  *result = 2 * a2;
  result[1] = 0;
  v3 = a3[2];
  result[2] = v3;
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    v5 = *a3;
    v6 = (*a3 & 0xFFFFFFFFFFFFFFF8);
    result[1] = *v6;
    *v6 = result;
    v7 = result[1];
    *result = v5 & 0xFFFFFFFFFFFFFFF8 | *result & 7;
    if (v7)
    {
      *v7 = *v7 & 7 | (result + 1);
    }
  }

  return result;
}

uint64_t llvm::ValueHandleBase::operator=(llvm::ValueHandleBase *this, uint64_t *a2)
{
  v3 = *(this + 2);
  result = a2[2];
  if (v3 != result)
  {
    if (v3 != -8192 && v3 != -4096 && v3 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(this);
      result = a2[2];
    }

    *(this + 2) = result;
    if (result != -8192 && result != -4096 && result != 0)
    {
      v8 = *a2;
      v9 = (*a2 & 0xFFFFFFFFFFFFFFF8);
      *(this + 1) = *v9;
      *v9 = this;
      *this = v8 & 0xFFFFFFFFFFFFFFF8 | *this & 7;
      v10 = *(this + 1);
      if (v10)
      {
        *v10 = *v10 & 7 | (this + 8);
      }

      return *(this + 2);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::LookupBucketFor<unsigned long>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) & (37 * a2);
  v7 = (v3 + 8 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -1)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -2;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 8 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t llvm::SmallDenseMap<unsigned long,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::grow(uint64_t a1, unsigned int a2)
{
  v16[8] = *MEMORY[0x277D85DE8];
  if (a2 >= 9)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 8)
    {
      v14 = a2;
      *(a1 + 8) = operator new(8 * a2, 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::moveFromOldBuckets(a1, v6, &v6[v7]);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x277C69E30);
  }

  v8 = v16;
  for (i = 8; i != 72; i += 8)
  {
    v10 = *(a1 + i);
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      *v8++ = v10;
    }
  }

  if (a2 > 8)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = operator new(8 * a2, 8uLL);
    *(a1 + 16) = v11;
  }

  result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::moveFromOldBuckets(a1, v16, v8);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = (result + 8);
    v7 = 8;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *(result + 8);
  }

  result = memset(v8, 255, 8 * v7);
LABEL_9:
  while (a2 != a3)
  {
    v9 = *a2;
    if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned long,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::LookupBucketFor<unsigned long>(v5, v9, &v10);
      *v10 = *a2;
      *v5 += 2;
    }

    ++a2;
  }

  return result;
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::MemoryBuffer>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t **std::unique_ptr<llvm::orc::MaterializationResponsibility>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    llvm::orc::JITDylib::unlinkMaterializationResponsibility(*v2, v2);
    v3 = v2[5];
    if ((v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v2 + 2);
    v4 = v2[1];
    if (v4)
    {
      llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v4);
    }

    MEMORY[0x277C69E40](v2, 0x1020C40638429FCLL);
  }

  return a1;
}

uint64_t llvm::orc::ObjectLayer::add@<X0>(uint64_t a1@<X0>, llvm::orc::JITDylib *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  v9 = *(*a3 + 8);
  v10 = *(*a3 + 16) - v9;
  v11 = (*(**a3 + 16))();
  *&v22 = v9;
  *(&v22 + 1) = v10;
  v23 = v11;
  v24 = v12;
  llvm::orc::getObjectFileInterface(v8, &v22, &v25);
  if (v29)
  {
    v13 = v25;
    v25 = 0;
    *a4 = v13;
  }

  else
  {
    v14 = *a3;
    *a3 = 0;
    v18[0] = v25;
    v18[1] = v26;
    v25 = 0;
    v26 = 0;
    v19 = v27;
    v27 = 0;
    v20 = v28;
    v21 = v14;
    v28 = 0;
    llvm::orc::ObjectLayer::add(a1, a2, &v21, v18);
    if ((v20 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v20 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v18);
    v15 = v21;
    v21 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  result = llvm::Expected<llvm::orc::MaterializationUnit::Interface>::~Expected(&v25);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::orc::BasicObjectLayerMaterializationUnit::BasicObjectLayerMaterializationUnit(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, double a5, __n128 a6)
{
  v9 = *a4;
  a6.n128_u64[0] = 0;
  v10 = a4[1];
  *a4 = a6;
  v11 = *(a4 + 4);
  *(a4 + 4) = 0;
  v12 = a4[3];
  a4[3] = 0;
  *a1 = &unk_2883EBCD0;
  *(a1 + 8) = v9;
  v15 = 0u;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  v16 = 0;
  *(a1 + 32) = v12;
  v17 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v15);
  *a1 = &unk_2883EC428;
  *(a1 + 40) = a2;
  v13 = *a3;
  *a3 = 0;
  *(a1 + 48) = v13;
  return a1;
}

const char *llvm::orc::BasicObjectLayerMaterializationUnit::getName(llvm::orc::BasicObjectLayerMaterializationUnit *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return (*(*v1 + 16))(v1);
  }

  else
  {
    return "<null object>";
  }
}

uint64_t **llvm::orc::BasicObjectLayerMaterializationUnit::materialize(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  v7 = v4;
  v8 = v2;
  (*(*v3 + 48))(v3, &v8, &v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return std::unique_ptr<llvm::orc::MaterializationResponsibility>::~unique_ptr[abi:nn200100](&v8);
}

void llvm::orc::BasicObjectLayerMaterializationUnit::~BasicObjectLayerMaterializationUnit(llvm::orc::BasicObjectLayerMaterializationUnit *this)
{
  *this = &unk_2883EC428;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_2883EBCD0;
  v3 = *(this + 4);
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 1);
}

{
  *this = &unk_2883EC428;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_2883EBCD0;
  v3 = *(this + 4);
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 1);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::orc::loadLinkableFile@<X0>(uint64_t a1@<X0>, void (**a2)(_anonymous_namespace_::ErrorErrorCategory *__hidden this)@<X1>, llvm::Triple *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((*(a5 + 16) & 1) == 0)
  {
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = 1;
  }

  v37 = 261;
  v33 = a1;
  v34 = a2;
  llvm::sys::fs::openNativeFileForRead(&v33, 0, 0, &v38);
  if (v39)
  {
    v37 = 261;
    v33 = a1;
    v34 = a2;
    v12 = v38;
    v38 = 0;
    v25 = v12;
    llvm::FileError::build(&v33, 0, 0, &v25);
  }

  v13 = v38;
  v37 = 261;
  v14 = *(a5 + 8);
  v33 = *a5;
  v34 = v14;
  getOpenFileImpl<llvm::MemoryBuffer>(v38, &v33, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0, 1, 0, 0, &v31);
  if (v32)
  {
    v33 = "Could not load object at path ";
    v34 = 30;
    v35 = a1;
    v36 = a2;
    v37 = 1285;
    operator new();
  }

  v15 = *(a3 + 11);
  v16 = v31;
  v17 = llvm::identify_magic(*(v31 + 8), *(v31 + 16) - *(v31 + 8));
  if (v17 > 8)
  {
    switch(v17)
    {
      case 9:
        if (a4 != 2)
        {
          if (v15 != 5 && v15)
          {
            goto LABEL_33;
          }

          v30 = v16;
          llvm::orc::checkMachORelocatableObject(&v30, a3, 0, &v33);
          if (v30)
          {
            (*(*v30 + 8))(v30);
          }

          v20 = v33;
          v33 = 0;
          v21 = *(a6 + 16);
          if (v34)
          {
            v22 = v21 | 1;
          }

          else
          {
            v22 = v21 & 0xFE;
            *(a6 + 8) = 1;
          }

          *(a6 + 16) = v22;
          *a6 = v20;
          goto LABEL_39;
        }

        goto LABEL_21;
      case 20:
        if (v15 == 5 || !v15)
        {
          v29 = v16;
          v18 = *a5;
          v19 = *(a5 + 8);
          llvm::orc::loadLinkableSliceFromMachOUniversalBinary(v13, &v29);
        }

        goto LABEL_33;
      case 24:
        if (a4 != 2)
        {
          if (v15 > 1)
          {
            goto LABEL_33;
          }

          goto LABEL_19;
        }

        goto LABEL_21;
    }

    goto LABEL_33;
  }

  if (v17 != 2)
  {
    if (v17 == 4)
    {
      if (a4 != 2)
      {
        if (v15 != 3 && v15)
        {
          goto LABEL_33;
        }

LABEL_19:
        LOBYTE(v34) = 0;
        v33 = 0;
        *(a6 + 16) &= ~1u;
        *a6 = v16;
        *(a6 + 8) = 1;
LABEL_39:
        llvm::Expected<std::unique_ptr<llvm::MemoryBuffer>>::~Expected(&v33);
        goto LABEL_35;
      }

LABEL_21:
      v37 = 773;
      v33 = a1;
      v34 = a2;
      v35 = " does not contain an archive";
      goto LABEL_34;
    }

LABEL_33:
    v28 = 773;
    v25 = a1;
    v26 = a2;
    v27 = " does not contain a relocatable object file or archive compatible with ";
    v33 = &v25;
    v35 = a3;
    v37 = 1026;
LABEL_34:
    getErrorErrorCat();
    operator new();
  }

  if (!a4)
  {
    v37 = 773;
    v33 = a1;
    v34 = a2;
    v35 = " does not contain a relocatable object file";
    getErrorErrorCat();
    v25 = 3;
    v26 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
  }

  *(a6 + 16) &= ~1u;
  *a6 = v16;
  *(a6 + 8) = 0;
LABEL_35:
  result = llvm::sys::Process::SafelyCloseFileDescriptor(v13);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DataLayout::operator=(uint64_t a1, uint64_t a2)
{
  llvm::DataLayout::clear(a1);
  std::string::operator=((a1 + 216), (a2 + 216));
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 24) = *(a2 + 24);
  llvm::SmallVectorImpl<char>::operator=(a1 + 32, a2 + 32);
  llvm::SmallVectorImpl<llvm::LayoutAlignElem>::operator=(a1 + 64, a2 + 64);
  llvm::SmallVectorImpl<llvm::LayoutAlignElem>::operator=(a1 + 112, a2 + 112);
  llvm::SmallVectorImpl<llvm::LayoutAlignElem>::operator=(a1 + 160, a2 + 160);
  v4 = *(a2 + 212);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 212) = v4;
  llvm::SmallVectorImpl<llvm::PointerAlignElem>::operator=(a1 + 240, a2 + 240);
  llvm::SmallVectorImpl<unsigned int>::operator=(a1 + 392, a2 + 392);
  return a1;
}

llvm::raw_ostream *llvm::orc::linkComponents(llvm::orc *this)
{
  v1 = llvm::errs(this);
  llvm::write_hex(v1, llvm_orc_registerEHFrameSectionWrapper, 3, 0, 0);

  return llvm::write_hex(v1, llvm_orc_deregisterEHFrameSectionWrapper, 3, 0, 0);
}

uint64_t llvm::DataLayout::DataLayout(uint64_t a1, void *a2, size_t a3)
{
  *(a1 + 40) = xmmword_2750C12B0;
  *(a1 + 72) = 0x400000000;
  *(a1 + 120) = 0x400000000;
  *(a1 + 168) = 0x400000000;
  *(a1 + 8) = 0;
  *(a1 + 20) = 0;
  *(a1 + 32) = a1 + 56;
  *(a1 + 64) = a1 + 80;
  *(a1 + 112) = a1 + 128;
  *(a1 + 160) = a1 + 176;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = a1 + 256;
  *(a1 + 248) = 0x800000000;
  *(a1 + 384) = 0;
  *(a1 + 392) = a1 + 408;
  *(a1 + 400) = 0x800000000;
  llvm::DataLayout::reset(a1, a2, a3);
  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::LayoutAlignElem>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4 - 2);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5 - 2);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 8);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::PointerAlignElem>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 16 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 16 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 16);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 16 * v5), (*a2 + 16 * v5), 16 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

llvm::DataLayout *llvm::DataLayout::DataLayout(llvm::DataLayout *this, const llvm::DataLayout *a2)
{
  *(this + 40) = xmmword_2750C12B0;
  *(this + 9) = 0x400000000;
  *(this + 15) = 0x400000000;
  *(this + 21) = 0x400000000;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 4) = this + 56;
  *(this + 8) = this + 80;
  *(this + 14) = this + 128;
  *(this + 20) = this + 176;
  *(this + 106) = 0;
  *(this + 27) = 0;
  *(this + 14) = 0u;
  *(this + 30) = this + 256;
  *(this + 31) = 0x800000000;
  *(this + 48) = 0;
  *(this + 49) = this + 408;
  *(this + 50) = 0x800000000;
  llvm::DataLayout::operator=(this, a2);
  return this;
}

void llvm::orc::shared::WrapperFunction<int ()(llvm::orc::shared::SPSExecutorAddr)>::call<llvm::Error llvm::orc::ExecutorProcessControl::callSPSWrapper<int ()(llvm::orc::shared::SPSExecutorAddr),int &,llvm::orc::ExecutorAddr &>(llvm::orc::ExecutorAddr,int &,llvm::orc::ExecutorAddr &)::{lambda(char const*,unsigned long)#1},int,llvm::orc::ExecutorAddr>(uint64_t *a1, uint64_t a2, void **a3)
{
  v5 = *a3;
  v6 = 8;
  v4 = *a1;
  v3 = a1[1];
  llvm::orc::ExecutorProcessControl::callWrapper();
}

_DWORD *llvm::orc::shared::detail::ResultDeserializer<int,int>::deserialize@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3 <= 3)
  {
    getErrorErrorCat();
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

  *result = *a2;
  *a4 = 0;
  return result;
}

llvm::DataLayout *llvm::Expected<llvm::DataLayout>::~Expected(llvm::DataLayout *this)
{
  if (*(this + 440))
  {
    v2 = *this;
    *this = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    llvm::DataLayout::~DataLayout(this);
  }

  return this;
}

uint64_t llvm::orc::checkMachORelocatableObject@<X0>(uint64_t a1@<X0>, llvm::Triple *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if (*(a1 + 8) <= 3uLL)
  {
    llvm::orc::objDesc(&v36, a1, a2, a3);
    v7 = " is not a valid MachO relocatable object file (truncated header)";
    goto LABEL_25;
  }

  v8 = **a1;
  if (v8 > -17958195)
  {
    if (v8 == -17958193)
    {
      goto LABEL_15;
    }

    if (v8 != -17958194)
    {
LABEL_24:
      llvm::orc::objDesc(&v36, a1, a2, a3);
      v7 = " is not a valid MachO relocatable object (bad magic value)";
LABEL_25:
      v24 = std::string::append(&v36, v7);
      v25 = v24->__r_.__value_.__r.__words[2];
      v38 = *&v24->__r_.__value_.__l.__data_;
      v39 = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      getErrorErrorCat();
      v34[0] = 3;
      v34[1] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,std::string,std::error_code>();
    }
  }

  else if (v8 != -822415874)
  {
    if (v8 != -805638658)
    {
      goto LABEL_24;
    }

LABEL_15:
    v17 = *(a1 + 16);
    v29 = *a1;
    v30 = v17;
    v18 = *(v29 + 12);
    v19 = bswap32(v18);
    if (v8 == -805638658)
    {
      v18 = v19;
    }

    if (v18 == 1)
    {
      v21 = *(v29 + 4);
      v20 = *(v29 + 8);
      v22 = bswap32(v21);
      if (v8 == -805638658)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21;
      }

      goto LABEL_21;
    }

LABEL_23:
    llvm::orc::objDesc(&v36, &v29, a2, a3);
    v7 = " is not a MachO relocatable object";
    goto LABEL_25;
  }

  v9 = *(a1 + 16);
  v29 = *a1;
  v30 = v9;
  v10 = *(v29 + 12);
  v11 = bswap32(v10);
  if (v8 == -822415874)
  {
    v10 = v11;
  }

  if (v10 != 1)
  {
    goto LABEL_23;
  }

  v12 = *(v29 + 4);
  v13 = bswap32(*(v29 + 8));
  v14 = v8 == -822415874;
  v15 = bswap32(v12);
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

LABEL_21:
  result = llvm::object::MachOObjectFile::getArch(v16);
  if (result != *(a2 + 6))
  {
    v26 = result;
    llvm::orc::objDesc(&v31, &v29, a2, a3);
    ArchTypeName = llvm::Triple::getArchTypeName(v26);
    v32[0] = &v31;
    v32[2] = ArchTypeName;
    v32[3] = v28;
    v33 = 1284;
    v34[0] = v32;
    v34[2] = ", cannot be loaded into ";
    v35 = 770;
    v36.__r_.__value_.__r.__words[0] = v34;
    v36.__r_.__value_.__r.__words[2] = a2;
    v37 = 1026;
    *&v38 = &v36;
    v39 = " process";
    v40 = 770;
    getErrorErrorCat();
    operator new();
  }

  *a4 = 0;
  return result;
}

std::string *llvm::orc::objDesc(std::string *this, uint64_t a2, llvm::Triple *a3, int a4)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a4)
  {
    v11 = 773;
    v10[0] = llvm::Triple::getArchName(a3);
    v10[1] = v6;
    v10[2] = " slice of universal binary";
    llvm::Twine::str(v10, __p);
    if ((v13 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v8 = v13;
    }

    else
    {
      v8 = __p[1];
    }

    std::string::append(this, v7, v8);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return std::string::append(this, *(a2 + 16), *(a2 + 24));
}

uint64_t llvm::orc::checkMachORelocatableObject@<X0>(void **a1@<X0>, llvm::Triple *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = v8[1];
  v10 = v8[2] - v9;
  v11 = (*(*v8 + 16))(v8);
  v15[0] = v9;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  result = llvm::orc::checkMachORelocatableObject(v15, a2, a3, &v16);
  v14 = v16;
  if (v16)
  {
    *(a4 + 8) |= 1u;
  }

  else
  {
    *(a4 + 8) &= ~1u;
    v14 = *a1;
    *a1 = 0;
  }

  *a4 = v14;
  return result;
}

void llvm::orc::loadLinkableSliceFromMachOUniversalBinary(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 8);
  v3 = *(*a2 + 16) - v2;
  v4 = (*(**a2 + 16))();
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  llvm::object::MachOUniversalBinary::create();
}

void llvm::orc::getMachOSliceRangeForTriple(llvm::orc *this@<X0>, llvm::object::MachOUniversalBinary *a2@<X1>, int8x16_t *a3@<X8>)
{
  llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(&v34, this, 0);
  llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(&v32, 0, 0);
  v29 = v34;
  v30 = v35;
  *v31 = *v36;
  *&v31[16] = *&v36[16];
  v7 = v34;
  v8 = DWORD2(v34);
  v9 = v32;
  v10 = v33;
  if (v34 == v32 && DWORD2(v34) == v33)
  {
LABEL_17:
    v26 = "Universal binary ";
    v27 = *(this + 2);
    v28 = 1283;
    *&v34 = &v26;
    *&v35 = " does not contain a slice for ";
    *v36 = 770;
    *&v29 = &v34;
    *&v30 = a2;
    *v31 = 1026;
    getErrorErrorCat();
    operator new();
  }

  v12 = *v31;
  v11 = *&v31[4];
  v13 = *&v31[8];
  v14 = *(&v30 + 4);
  v16 = HIDWORD(v29);
  v15 = v30;
  while (1)
  {
    v25 = v13;
    v17 = *(v7 + 48);
    v18 = v17 == -889275714 ? v16 : v12;
    v19 = v17 == -889275714 ? v15 : v11;
    llvm::object::MachOObjectFile::getArchTriple(v18, 0, v19, 0, &v34);
    if (*(&v35 + 1) == *(a2 + 3))
    {
      v20 = *(a2 + 8);
      if (!v20 || *v36 == v20)
      {
        break;
      }
    }

    if (SBYTE7(v35) < 0)
    {
      operator delete(v34);
    }

    llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(&v34, v7, v8 + 1);
    v7 = v34;
    v8 = DWORD2(v34);
    v16 = HIDWORD(v34);
    v15 = v35;
    v12 = *v36;
    v11 = *&v36[4];
    v14 = *(&v35 + 4);
    v13 = *&v36[8];
    if (v34 == v9 && DWORD2(v34) == v10)
    {
      goto LABEL_17;
    }
  }

  v21 = *(v7 + 48) == -889275714;
  v22.i64[0] = v14;
  v22.i64[1] = HIDWORD(v14);
  v23 = v22;
  a3[1].i8[0] &= ~1u;
  v24 = vdup_n_s32(v21);
  v22.i64[0] = v24.u32[0];
  v22.i64[1] = v24.u32[1];
  *a3 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL)), v23, v25);
  if (SBYTE7(v35) < 0)
  {
    operator delete(v34);
  }
}

uint64_t *llvm::orc::ForceLoadMachOArchiveMembers::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 16) & 1) == 0)
  {
    v13 = *a1;
    v12 = *(a1 + 8);
    v14 = a3[1];
    v49 = *a3;
    v50 = v14;
    llvm::orc::StaticLibraryDefinitionGenerator::createMemberBuffer(a2, &v49, a4, &v48);
    llvm::orc::ObjectLayer::add(v13, v12, &v48, &v51);
    result = v48;
    v48 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v16 = v51;
    if (v51)
    {
      *(a5 + 8) |= 1u;
      *a5 = v16;
    }

    else
    {
      *(a5 + 8) &= ~1u;
      *a5 = 0;
    }

    goto LABEL_66;
  }

  v10 = a3[1];
  v49 = *a3;
  v50 = v10;
  llvm::object::ObjectFile::createObjectFile(&v49, 0, 1, &v54);
  v11 = v54;
  if (v55)
  {
    v54 = 0;
    *&v49 = v11;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v49);
    if (v49)
    {
      (*(*v49 + 8))(v49);
    }

    *(a5 + 8) &= ~1u;
    *a5 = 0;
    goto LABEL_64;
  }

  if (!v54 || (v54[2] - 21) < 0xFFFFFFFC)
  {
    goto LABEL_63;
  }

  v17 = (*(*v54 + 352))(v54);
  v19 = v18;
  v20 = (*(*v11 + 360))(v11);
  v46 = v17;
  v47 = v19;
  v42 = v20;
  v43 = v21;
  if (v19 == v21 && v17 == v20)
  {
LABEL_63:
    *(a5 + 8) &= ~1u;
    *a5 = 1;
    goto LABEL_64;
  }

  while (1)
  {
    v23 = *(v11[10] + 8 * v17);
    if (*(v23 + 31))
    {
      v24 = 0;
    }

    else
    {
      v24 = strlen((v23 + 16)) == 6;
    }

    (*(*v19 + 144))(&v51, v19, v17);
    if (v53)
    {
      v40 = v51;
      v51 = 0;
      goto LABEL_72;
    }

    if (v52 == 14)
    {
      break;
    }

    if (v52 == 15)
    {
      v29 = *(v51 + 7);
      v30 = *v51 == 0x635F636A626F5F5FLL;
      v31 = 0x327473696C746163;
      goto LABEL_43;
    }

    if (v52 == 16)
    {
      if (*v51 == 0x635F636A626F5F5FLL && *(v51 + 8) == 0x7473696C7373616CLL)
      {
        goto LABEL_67;
      }

      if (*v51 == 0x705F636A626F5F5FLL && *(v51 + 8) == 0x7473696C6F746F72)
      {
        goto LABEL_67;
      }

      if (*v51 == 0x635F636A626F5F5FLL && *(v51 + 8) == 0x7473696C6F72736CLL)
      {
        goto LABEL_67;
      }

      if (*v51 == 0x6E5F636A626F5F5FLL && *(v51 + 8) == 0x7473696C7461636CLL)
      {
        goto LABEL_67;
      }
    }

LABEL_47:
    if (v24 && v52 >= 7 && !(*(v23 + 16) ^ 0x45545F5F | *(v23 + 20) ^ 0x5458) && *v51 == 2004049759 && *(v51 + 3) == 1952868727)
    {
      if (v52 != 15)
      {
        goto LABEL_67;
      }

      if (*v51 != 0x5F74666977735F5FLL || *(v51 + 7) != 0x68736168646F6D5FLL)
      {
        goto LABEL_67;
      }
    }

    (*(*v47 + 136))(v47, &v46);
    v17 = v46;
    v19 = v47;
    if (v47 == v43 && v46 == v42)
    {
      goto LABEL_63;
    }
  }

  v29 = *(v51 + 6);
  v30 = *v51 == 0x635F636A626F5F5FLL;
  v31 = 0x7473696C7461635FLL;
LABEL_43:
  if (!v30 || v29 != v31)
  {
    goto LABEL_47;
  }

LABEL_67:
  v37 = *a1;
  v36 = *(a1 + 8);
  v38 = a3[1];
  v49 = *a3;
  v50 = v38;
  llvm::orc::StaticLibraryDefinitionGenerator::createMemberBuffer(a2, &v49, a4, &v44);
  llvm::orc::ObjectLayer::add(v37, v36, &v44, &v45);
  v39 = v44;
  v44 = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = v45;
  if (!v45)
  {
    *(a5 + 8) &= ~1u;
    *a5 = 0;
    goto LABEL_73;
  }

LABEL_72:
  *(a5 + 8) |= 1u;
  *a5 = v40;
LABEL_73:
  if (v53)
  {
    v41 = v51;
    v51 = 0;
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }
  }

LABEL_64:
  result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v54);
LABEL_66:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::orc::MachOFuncVariants::modifyPassConfig(uint64_t a1, uint64_t a2, uint64_t a3, __int128 **a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a4;
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v8 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::orc::MachOFuncVariants::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_0,llvm::orc::MachOFuncVariants::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_0,void>::Callbacks + 2;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::insert(a4, v4, &v7);
  result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

double llvm::jitlink::LinkGraph::blocks@<D0>(llvm::jitlink::LinkGraph *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 25);
  v4 = *(this + 54);
  v5 = &v3[3 * v4];
  if (*(this + 52))
  {
    if (v4)
    {
      v6 = 24 * v4;
      while (*v3 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v3 += 3;
        v6 -= 24;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
LABEL_6:
    v3 = v5;
  }

  v12 = v3;
  v13 = v5;
  v14 = 1;
  *&v10 = v5;
  *(&v10 + 1) = v5;
  v11 = 1;
  llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::nested_collection_iterator(v15, &v12, &v10);
  v12 = v5;
  v13 = v5;
  v14 = 1;
  *&v10 = v5;
  *(&v10 + 1) = v5;
  v11 = 1;
  llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::nested_collection_iterator((a2 + 4), &v12, &v10);
  v7 = v15[1];
  *a2 = v15[0];
  a2[1] = v7;
  result = *&v16;
  v9 = v17;
  a2[2] = v16;
  a2[3] = v9;
  return result;
}

__n128 llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = (*(a1 + 48) + 8);
  *(a1 + 48) = v5;
  while (v5 != v4 && (*v5 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    *(a1 + 48) = ++v5;
  }

  llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::moveToNonEmptyInnerOrEnd(a1);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  result = *(a1 + 32);
  v8 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v8;
  return result;
}

uint64_t llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::nested_collection_iterator(uint64_t a1, void *a2, __int128 *a3)
{
  v4 = *a2;
  *(a1 + 16) = a2[2];
  *a1 = v4;
  v5 = *a3;
  *(a1 + 40) = *(a3 + 2);
  *(a1 + 24) = v5;
  if (*a2 == *a3)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(*(*a2 + 16) + 32);
  }

  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::moveToNonEmptyInnerOrEnd(a1);
  return a1;
}

void *llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::moveToNonEmptyInnerOrEnd(void *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    v2 = result;
    do
    {
      v3 = v1[2];
      result = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v3 + 32);
      if (v2[6] != *(v3 + 32) + 8 * *(v3 + 48))
      {
        break;
      }

      v4 = *v2;
      v5 = v2[1];
      do
      {
        v4 += 3;
        *v2 = v4;
      }

      while (v4 != v5 && *v4 >= 0xFFFFFFFFFFFFFFFELL);
      if (v4 == v2[3])
      {
        v2[6] = 0;
        v2[7] = 0;
        return result;
      }

      result = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v4[2] + 32);
      v1 = *v2;
      v6 = v2[3];
      v2[6] = result;
      v2[7] = v7;
    }

    while (v1 != v6);
  }

  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::MachOFuncVariants::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_0>@<X0>(uint64_t a1@<X0>, llvm::jitlink::LinkGraph *a2@<X1>, unint64_t *a3@<X3>, void *a4@<X8>)
{
  v150 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  result = llvm::jitlink::LinkGraph::findSectionByName(a2, "__LD,__func_variants", 20, a3);
  if (result)
  {
    v8 = result;
    *(result + 20) = 2;
    v9 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(result + 32);
    v11 = *(v8 + 32) + 8 * *(v8 + 48);
    if (v11 != v9)
    {
      do
      {
        v13 = *(*v9 + 40);
        v12 = *(*v9 + 48);
        if (v13 != v12)
        {
          v14 = 0;
          v15 = (v12 - v13 - 32) >> 5;
          v16 = vdupq_n_s64(v15);
          v17 = (v13 + 280);
          do
          {
            v18 = vdupq_n_s64(v14);
            v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_2750C1210)));
            if (vuzp1_s8(vuzp1_s16(v19, 14), 14).u8[0])
            {
              *(v17 - 256) = 1;
            }

            if (vuzp1_s8(vuzp1_s16(v19, 14), 14).i8[1])
            {
              *(v17 - 224) = 1;
            }

            if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_2750C1830)))), 14).i8[2])
            {
              *(v17 - 192) = 1;
              *(v17 - 160) = 1;
            }

            v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_2750C4010)));
            if (vuzp1_s8(14, vuzp1_s16(v20, 14)).i32[1])
            {
              *(v17 - 128) = 1;
            }

            if (vuzp1_s8(14, vuzp1_s16(v20, 14)).i8[5])
            {
              *(v17 - 96) = 1;
            }

            if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_2750C4000))))).i8[6])
            {
              *(v17 - 64) = 1;
              *(v17 - 32) = 1;
            }

            v21 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_2750C3FF0)));
            if (vuzp1_s8(vuzp1_s16(v21, 14), 14).u8[0])
            {
              *v17 = 1;
            }

            if (vuzp1_s8(vuzp1_s16(v21, 14), 14).i8[1])
            {
              v17[32] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_2750C3FE0)))), 14).i8[2])
            {
              v17[64] = 1;
              v17[96] = 1;
            }

            v22 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_2750C3FD0)));
            if (vuzp1_s8(14, vuzp1_s16(v22, 14)).i32[1])
            {
              v17[128] = 1;
            }

            if (vuzp1_s8(14, vuzp1_s16(v22, 14)).i8[5])
            {
              v17[160] = 1;
            }

            if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_2750C3FC0))))).i8[6])
            {
              v17[192] = 1;
              v17[224] = 1;
            }

            v14 += 16;
            v17 += 512;
          }

          while (((v15 + 16) & 0xFFFFFFFFFFFFFF0) != v14);
        }

        do
        {
          ++v9;
        }

        while (v9 != v10 && (*v9 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v9 != v11);
    }

    v142[1] = 0;
    v142[0] = 0;
    v143 = 0;
    v140 = 0uLL;
    v141 = 0;
    v23 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v8 + 56);
    v25 = *(v8 + 56) + 8 * *(v8 + 72);
    if (v25 != v23)
    {
      v26 = v23;
      v27 = v24;
      do
      {
        v28 = *v26;
        v139 = v28;
        if (!*v28)
        {
          std::operator+<char>();
          v85 = std::string::append(&v132, ", anonymous function variant symbol at ");
          v86 = v85->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = *&v85->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v86;
          v85->__r_.__value_.__l.__size_ = 0;
          v85->__r_.__value_.__r.__words[2] = 0;
          v85->__r_.__value_.__r.__words[0] = 0;
          v107 = 260;
          v104[0] = &__p;
          v87 = (v139[2] & 0x1FFFFFFFFFFFFFFLL) + *v139[1];
          *&v144 = "{0:x}";
          *(&v144 + 1) = 5;
          *&v145 = &v147;
          *(&v145 + 1) = 1;
          *&v146 = &unk_2883EC4C0;
          *(&v146 + 1) = v87;
          *&v147 = &v146;
          v138 = 262;
          v136[0] = &v144;
          llvm::operator+(v104, v136, &v108);
          getErrorErrorCat();
          v129[0] = 3;
          v129[1] = &getErrorErrorCat(void)::ErrorErrorCat;
          llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
        }

        if ((v28[2] & 0x1FFFFFFFFFFFFFFLL) != 0)
        {
          std::operator+<char>();
          v88 = std::string::append(&v124, " function variant symbol ");
          v89 = v88->__r_.__value_.__r.__words[2];
          *v125 = *&v88->__r_.__value_.__l.__data_;
          v126 = v89;
          v88->__r_.__value_.__l.__size_ = 0;
          v88->__r_.__value_.__r.__words[2] = 0;
          v88->__r_.__value_.__r.__words[0] = 0;
          v128 = 260;
          v127.__r_.__value_.__r.__words[0] = v125;
          v90 = (*v139 + 2);
          v91 = **v139;
          v123 = 261;
          v122.__r_.__value_.__r.__words[0] = v90;
          v122.__r_.__value_.__l.__size_ = v91;
          llvm::operator+(&v127, &v122, v129);
          v120.__r_.__value_.__r.__words[0] = " is at non-zero offset ";
          v121 = 259;
          llvm::operator+(v129, &v120, &v132);
          v92 = v139[2] & 0x1FFFFFFFFFFFFFFLL;
          *&v144 = "{0:x}";
          *(&v144 + 1) = 5;
          *&v145 = &v147;
          *(&v145 + 1) = 1;
          *&v146 = &unk_2883EB9E8;
          *(&v146 + 1) = v92;
          *&v147 = &v146;
          v119 = 262;
          v118[0] = &v144;
          llvm::operator+(&v132, v118, &__p);
          v116 = " within __func_variant block ";
          v117 = 259;
          llvm::operator+(&__p, &v116, v136);
          v93 = *v139[1];
          *&v108 = "{0:x}";
          *(&v108 + 1) = 5;
          *&v109 = &v111;
          *(&v109 + 1) = 1;
          *&v110 = &unk_2883EC4C0;
          *(&v110 + 1) = v93;
          *&v111 = &v110;
          v115 = 262;
          v114 = &v108;
          llvm::operator+(v136, &v114, v104);
          getErrorErrorCat();
          v112 = 3;
          v113 = &getErrorErrorCat(void)::ErrorErrorCat;
          llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
        }

        v29 = v28[1];
        v30 = v29[4];
        if (!v30)
        {
          std::operator+<char>();
          v94 = std::string::append(&v120, " function variant symbol ");
          v95 = v94->__r_.__value_.__r.__words[2];
          *&v122.__r_.__value_.__l.__data_ = *&v94->__r_.__value_.__l.__data_;
          v122.__r_.__value_.__r.__words[2] = v95;
          v94->__r_.__value_.__l.__size_ = 0;
          v94->__r_.__value_.__r.__words[2] = 0;
          v94->__r_.__value_.__r.__words[0] = 0;
          v135 = 260;
          __p.__r_.__value_.__r.__words[0] = &v122;
          v96 = (*v139 + 2);
          v97 = **v139;
          v133 = 261;
          v132.__r_.__value_.__r.__words[0] = v96;
          v132.__r_.__value_.__l.__size_ = v97;
          llvm::operator+(&__p, &v132, v136);
          v129[0] = " points to empty variant table at ";
          v131 = 259;
          llvm::operator+(v136, v129, v104);
          v98 = *v139[1];
          *&v144 = "{0:x}";
          *(&v144 + 1) = 5;
          *&v145 = &v147;
          *(&v145 + 1) = 1;
          *&v146 = &unk_2883EC4C0;
          *(&v146 + 1) = v98;
          *&v147 = &v146;
          v128 = 262;
          v127.__r_.__value_.__r.__words[0] = &v144;
          llvm::operator+(v104, &v127, &v108);
          getErrorErrorCat();
          v118[0] = 3;
          v118[1] = &getErrorErrorCat(void)::ErrorErrorCat;
          llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
        }

        if ((v30 & 0x3F) != 0)
        {
          std::operator+<char>();
          v99 = std::string::append(&v127, " size of function variant table at ");
          v100 = v99->__r_.__value_.__r.__words[2];
          *v129 = *&v99->__r_.__value_.__l.__data_;
          v130 = v100;
          v99->__r_.__value_.__l.__size_ = 0;
          v99->__r_.__value_.__r.__words[2] = 0;
          v99->__r_.__value_.__r.__words[0] = 0;
          v138 = 260;
          v136[0] = v129;
          v101 = (v139[2] & 0x1FFFFFFFFFFFFFFLL) + *v139[1];
          *&v144 = "{0:x}";
          *(&v144 + 1) = 5;
          *&v145 = &v147;
          *(&v145 + 1) = 1;
          *&v146 = &unk_2883EC4C0;
          *(&v146 + 1) = v101;
          *&v147 = &v146;
          v135 = 262;
          __p.__r_.__value_.__r.__words[0] = &v144;
          llvm::operator+(v136, &__p, v104);
          v132.__r_.__value_.__r.__words[0] = " is not a multiple of 64 bytes";
          v133 = 259;
          llvm::operator+(v104, &v132, &v108);
          getErrorErrorCat();
          v122.__r_.__value_.__r.__words[0] = 3;
          v122.__r_.__value_.__l.__size_ = &getErrorErrorCat(void)::ErrorErrorCat;
          llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
        }

        v31 = v30 >> 6;
        *&v144 = &v145;
        *(&v144 + 1) = 0x1000000000;
        if (v30 >= 0x401)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, &v145, v30 >> 6, 8);
          v29 = v139[1];
        }

        v32 = v29[5];
        v33 = v29[6];
        while (v32 != v33)
        {
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v144, v32);
          v32 += 32;
        }

        v34 = 126 - 2 * __clz(DWORD2(v144));
        if (DWORD2(v144))
        {
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,llvm::orc::MachOFuncVariants::lowerFunctionVariants(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Edge **,false>(v144, (v144 + 8 * DWORD2(v144)), v35, 1);
        v36 = 0;
        v37 = 0;
        v38 = v139[1][3];
        v39 = v38 + 8;
        v40 = DWORD2(v144);
        v41 = DWORD2(v144) << 6;
        do
        {
          v42 = v37 << 6;
          v43 = 63;
          v44 = (v39 + (v37 << 6));
          do
          {
            if (v43 == 7)
            {
              v46 = -1;
              if (!v40)
              {
                goto LABEL_81;
              }

              goto LABEL_54;
            }
          }

          while (!*(v38 + v43--));
          v46 = v43 - 7;
          if (!v40)
          {
LABEL_81:
            v42 = v41;
LABEL_82:
            std::operator+<char>();
            v59 = std::string::append(&v132, " function variant record at ");
            v60 = v59->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = *&v59->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v60;
            v59->__r_.__value_.__l.__size_ = 0;
            v59->__r_.__value_.__r.__words[2] = 0;
            v59->__r_.__value_.__r.__words[0] = 0;
            v61 = *v139[1] + v42 + (v139[2] & 0x1FFFFFFFFFFFFFFLL);
            *&v108 = "{0:x}";
            *(&v108 + 1) = 5;
            *&v109 = &v111;
            *(&v109 + 1) = 1;
            *&v110 = &unk_2883EC4C0;
            *(&v110 + 1) = v61;
            *&v111 = &v110;
            v136[0] = &__p;
            v137 = &v108;
            v138 = 1540;
            v104[0] = v136;
            v62 = " is missing target edge";
LABEL_84:
            v105 = v62;
            v107 = 770;
            getErrorErrorCat();
            operator new();
          }

LABEL_54:
          v47 = *(v144 - 8 + 8 * v40);
          if (v42 != *(v47 + 8))
          {
            goto LABEL_82;
          }

          DWORD2(v144) = --v40;
          if (*(v47 + 16))
          {
            std::operator+<char>();
            v63 = std::string::append(&v132, " variant edge at ");
            v64 = v63->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = *&v63->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v64;
            v63->__r_.__value_.__l.__size_ = 0;
            v63->__r_.__value_.__r.__words[2] = 0;
            v63->__r_.__value_.__r.__words[0] = 0;
            v65 = *v139[1] + *(v47 + 8);
            *&v108 = "{0:x}";
            *(&v108 + 1) = 5;
            *&v109 = &v111;
            *(&v109 + 1) = 1;
            *&v110 = &unk_2883EC4C0;
            *(&v110 + 1) = v65;
            *&v111 = &v110;
            v136[0] = &__p;
            v137 = &v108;
            v138 = 1540;
            v104[0] = v136;
            v62 = " has non-zero addend";
            goto LABEL_84;
          }

          if (v46 == 6)
          {
            v48 = *v44;
            v49 = *(v44 + 3);
            if (v48 == 1634100580 && v49 == 1953264993)
            {
              v36 = v47;
              if (v40)
              {
                std::operator+<char>();
                v66 = std::string::append(&__p, " default variant for ");
                v67 = v66->__r_.__value_.__r.__words[2];
                *v136 = *&v66->__r_.__value_.__l.__data_;
                v137 = v67;
                v66->__r_.__value_.__l.__size_ = 0;
                v66->__r_.__value_.__r.__words[2] = 0;
                v66->__r_.__value_.__r.__words[0] = 0;
                v68 = (*v139 + 2);
                v69 = **v139;
                v104[0] = v136;
                v105 = v68;
                v106 = v69;
                v107 = 1284;
                *&v108 = v104;
                *&v109 = " should be the final entry in the variant table";
                LOWORD(v110) = 770;
                getErrorErrorCat();
                operator new();
              }
            }
          }

          ++v37;
          v38 += 64;
        }

        while (v37 != v31);
        if (!v36)
        {
          std::operator+<char>();
          v70 = std::string::append(&v127, " variant table for ");
          v71 = v70->__r_.__value_.__r.__words[2];
          *v129 = *&v70->__r_.__value_.__l.__data_;
          v130 = v71;
          v70->__r_.__value_.__l.__size_ = 0;
          v70->__r_.__value_.__r.__words[2] = 0;
          v70->__r_.__value_.__r.__words[0] = 0;
          v138 = 260;
          v136[0] = v129;
          v72 = (*v139 + 2);
          v73 = **v139;
          v135 = 261;
          __p.__r_.__value_.__r.__words[0] = v72;
          __p.__r_.__value_.__l.__size_ = v73;
          llvm::operator+(v136, &__p, v104);
          v132.__r_.__value_.__r.__words[0] = " does not contain a default entry";
          v133 = 259;
          llvm::operator+(v104, &v132, &v108);
          getErrorErrorCat();
          v122.__r_.__value_.__r.__words[0] = 3;
          v122.__r_.__value_.__l.__size_ = &getErrorErrorCat(void)::ErrorErrorCat;
          llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
        }

        if (v40)
        {
          std::operator+<char>();
          v74 = std::string::append(&v122, " function variant table at ");
          v75 = v74->__r_.__value_.__r.__words[2];
          *&v127.__r_.__value_.__l.__data_ = *&v74->__r_.__value_.__l.__data_;
          v127.__r_.__value_.__r.__words[2] = v75;
          v74->__r_.__value_.__l.__size_ = 0;
          v74->__r_.__value_.__r.__words[2] = 0;
          v74->__r_.__value_.__r.__words[0] = 0;
          v135 = 260;
          __p.__r_.__value_.__r.__words[0] = &v127;
          v76 = (v139[2] & 0x1FFFFFFFFFFFFFFLL) + *v139[1];
          *&v108 = "{0:x}";
          *(&v108 + 1) = 5;
          *&v109 = &v111;
          *(&v109 + 1) = 1;
          *&v110 = &unk_2883EC4C0;
          *(&v110 + 1) = v76;
          *&v111 = &v110;
          v133 = 262;
          v132.__r_.__value_.__r.__words[0] = &v108;
          llvm::operator+(&__p, &v132, v136);
          v129[0] = " contains extraneous edges in final record";
          v131 = 259;
          llvm::operator+(v136, v129, v104);
          getErrorErrorCat();
          v120.__r_.__value_.__r.__words[0] = 3;
          v120.__r_.__value_.__l.__size_ = &getErrorErrorCat(void)::ErrorErrorCat;
          llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
        }

        v51 = *v36;
        v52 = v139[2];
        v53 = (v52 >> 58) & 3;
        if (v53 == 3)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::FindAndConstruct(v142, &v139)[1] = v51;
        }

        else
        {
          v54 = v51[2];
          if ((~v54 & 0xC00000000000000) != 0)
          {
            v55 = v53 == 0;
            llvm::jitlink::LinkGraph::makeExternal(a2, v139);
            v56 = *v51;
            if ((v56 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v56 + 8), 1uLL);
            }

            v57 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::FindAndConstruct(&v140, v139);
            v58 = v57[1];
            if ((v58 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v58 + 8), 0xFFFFFFFFFFFFFFFFLL);
            }

            v57[1] = v56;
            *(v57 + 8) = (HIBYTE(v52) & 2 | (16 * v55)) << 8;
          }

          else
          {
            v4 &= 0xFFFFFFFFFFFFFF00;
            v102 &= 0xFFFFFFFFFFFFFF00;
            llvm::jitlink::LinkGraph::transferDefinedSymbol(a2, v139, v51[1], v54 & 0x1FFFFFFFFFFFFFFLL, v4, 0);
          }
        }

        if (v144 != &v145)
        {
          free(v144);
        }

        do
        {
          ++v26;
        }

        while (v26 != v27 && (*v26 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v26 != v25);
    }

    llvm::jitlink::LinkGraph::blocks(a2, &v144);
    v108 = v144;
    v109 = v145;
    v110 = v146;
    v111 = v147;
    v77 = v148;
    v78 = v149;
    v79 = v147;
    if (v144 != v148 || v147 != v149)
    {
      do
      {
        v80 = *v79;
        v81 = *(v80 + 40);
        v82 = *(v80 + 48);
        while (v81 != v82)
        {
          v136[0] = *v81;
          v104[0] = 0;
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v142, v136, v104))
          {
            if (v104[0] != v142[0] + 16 * v143)
            {
              *v81 = *(v104[0] + 8);
            }
          }

          v81 += 4;
        }

        llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(&v108, v104);
        v79 = v111;
      }

      while (v108 != v77 || v111 != v78);
    }

    v140 = 0u;
    v141 = 0;
    operator new();
  }

  *a4 = 0;
  v84 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::stream_operator_format_adapter<llvm::orc::ExecutorAddr>::format(uint64_t a1, llvm::raw_ostream *a2)
{
  v2 = *(a1 + 8);
  v3[0] = "{0:x}";
  v3[1] = 5;
  v3[2] = &v5;
  v3[3] = 1;
  v4[0] = &unk_2883EB9E8;
  v4[1] = v2;
  v5 = v4;
  llvm::formatv_object_base::format(v3, a2);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,llvm::orc::MachOFuncVariants::lowerFunctionVariants(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Edge **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*(v76 + 8) > *(*v8 + 8))
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = *(v85 + 2);
      v90 = *(*v8 + 8);
      v91 = *(v87 + 8);
      if (v89 <= v90)
      {
        if (v91 <= v89)
        {
          goto LABEL_177;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = (v8 + 1);
        result = v85;
        if (v91 > v90)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v92 = v8;
        v93 = (v8 + 2);
        result = *v8;
        if (v91 <= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = (v8 + 2);
          result = v88;
          if (v91 <= v90)
          {
LABEL_177:
            v85 = v87;
            goto LABEL_178;
          }
        }

LABEL_169:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_178:
      v141 = *(a2 - 1);
      if (*(v141 + 8) > *(v85 + 2))
      {
        *v86 = v141;
        *(a2 - 1) = v85;
        v142 = *v86;
        v143 = *v84;
        v144 = *(v142 + 8);
        if (v144 > *(v143 + 8))
        {
          v8[1] = v142;
          v8[2] = v143;
          v145 = *v8;
          if (v144 > *(*v8 + 8))
          {
            *v8 = v142;
            v8[1] = v145;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::orc::MachOFuncVariants::lowerFunctionVariants(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Edge **,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 8;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *(v99 + 8);
            if (v101 > *(v100 + 8))
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102) = v100;
                v103 = v102 - 8;
                if (v102 == 8)
                {
                  break;
                }

                v100 = *(v8 + v102 - 16);
                v102 -= 8;
                if (v101 <= *(v100 + 8))
                {
                  v104 = (v8 + v103);
                  goto LABEL_130;
                }
              }

              v104 = v8;
LABEL_130:
              *v104 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v138 = *v7;
          v137 = v7[1];
          v7 = v94;
          v139 = *(v137 + 8);
          if (v139 > *(v138 + 8))
          {
            v140 = v7;
            do
            {
              *v140 = v138;
              v138 = *(v140 - 2);
              --v140;
            }

            while (v139 > *(v138 + 8));
            *v140 = v137;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v105 = (v9 - 2) >> 1;
        v106 = v105;
        do
        {
          v107 = v106;
          if (v105 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = &v8[v108];
            v110 = *v109;
            if (2 * v107 + 2 < v9 && *(v110 + 8) > *(v109[1] + 8))
            {
              v110 = v109[1];
              ++v109;
              v108 = 2 * v107 + 2;
            }

            result = &v8[v107];
            v111 = *result;
            v112 = *(*result + 8);
            if (*(v110 + 8) <= v112)
            {
              do
              {
                v113 = v109;
                *result = v110;
                if (v105 < v108)
                {
                  break;
                }

                v114 = (2 * v108) | 1;
                v109 = &v8[v114];
                v115 = 2 * v108 + 2;
                v110 = *v109;
                if (v115 < v9 && *(v110 + 8) > *(v109[1] + 8))
                {
                  v110 = v109[1];
                  ++v109;
                  v114 = v115;
                }

                result = v113;
                v108 = v114;
              }

              while (*(v110 + 8) <= v112);
              *v113 = v111;
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v116 = 0;
          v117 = *v8;
          v118 = v8;
          do
          {
            v119 = &v118[v116];
            v120 = v119 + 1;
            v121 = v119[1];
            v122 = (2 * v116) | 1;
            v116 = 2 * v116 + 2;
            if (v116 >= v9)
            {
              v116 = v122;
            }

            else
            {
              v125 = v119[2];
              v123 = v119 + 2;
              v124 = v125;
              result = *(v121 + 8);
              if (result <= *(v125 + 8))
              {
                v116 = v122;
              }

              else
              {
                v121 = v124;
                v120 = v123;
              }
            }

            *v118 = v121;
            v118 = v120;
          }

          while (v116 <= ((v9 - 2) >> 1));
          if (v120 == --a2)
          {
            *v120 = v117;
          }

          else
          {
            *v120 = *a2;
            *a2 = v117;
            v126 = (v120 - v8 + 8) >> 3;
            v127 = v126 < 2;
            v128 = v126 - 2;
            if (!v127)
            {
              v129 = v128 >> 1;
              v130 = &v8[v129];
              v131 = *v130;
              v132 = *v120;
              v133 = *(*v120 + 8);
              if (*(*v130 + 8) > v133)
              {
                do
                {
                  v134 = v130;
                  *v120 = v131;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = &v8[v129];
                  v131 = *v130;
                  v120 = v134;
                }

                while (*(*v130 + 8) > v133);
                *v134 = v132;
              }
            }
          }

          v127 = v9-- <= 2;
        }

        while (!v127);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 8);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 8);
      v17 = *(*v8 + 8);
      if (v16 <= v17)
      {
        if (v13 > v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 8) > *(*v8 + 8))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 > v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 8) > v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 8);
      v29 = *(v27 + 8);
      v30 = *(a2 - 2);
      v31 = *(v30 + 8);
      if (v28 <= v29)
      {
        if (v31 > v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 8) > *(v32 + 8))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 > v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 8) > v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 8);
      v40 = *(v38 + 8);
      v41 = *(a2 - 3);
      v42 = *(v41 + 8);
      if (v39 <= v40)
      {
        if (v42 > v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 8) > *(v43 + 8))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 > v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 8) > v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 8);
      v48 = *(*v25 + 8);
      v49 = *v35;
      v50 = *(*v35 + 8);
      if (v47 <= v48)
      {
        if (v50 <= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 <= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 <= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 <= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 8);
    v21 = *(*v11 + 8);
    if (v20 <= v21)
    {
      if (v13 > v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 8) > *(*v11 + 8))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 > v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 8) > v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 8);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 8) > v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 8) <= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 8) <= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 8) > v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 8) <= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v66 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::orc::MachOFuncVariants::lowerFunctionVariants(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Edge **>(v8, v65);
      v8 = v65 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::orc::MachOFuncVariants::lowerFunctionVariants(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Edge **>(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::orc::MachOFuncVariants::lowerFunctionVariants(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Edge **,false>(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 8);
      if (*(*(v8 - 1) + 8) > v53)
      {
        goto LABEL_60;
      }

      if (v53 <= *(*(a2 - 1) + 8))
      {
        v68 = v8 + 1;
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          ++v68;
        }

        while (v53 <= *(*v8 + 8));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 <= *(v67 + 8));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 > *(v70 + 8));
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 <= *(v73 + 8));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 > *(v74 + 8));
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *(v79 + 8);
  v81 = *(*v8 + 8);
  v82 = *(a2 - 1);
  v83 = *(v82 + 8);
  if (v80 <= v81)
  {
    if (v83 > v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v136 = *v8;
      v135 = v8[1];
      if (*(v135 + 8) > *(*v8 + 8))
      {
        *v8 = v135;
        v8[1] = v136;
      }
    }
  }

  else
  {
    if (v83 <= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v146 = *(a2 - 1);
      if (*(v146 + 8) <= v81)
      {
        return result;
      }

      v8[1] = v146;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::orc::MachOFuncVariants::lowerFunctionVariants(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Edge **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 8);
  v8 = *(*result + 8);
  v9 = *a3;
  v10 = *(*a3 + 8);
  if (v7 <= v8)
  {
    if (v10 <= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 8) > *(*result + 8))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 > v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 8) > v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 8) > *(v5 + 8))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 8) > *(*a2 + 8))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 8) > *(*result + 8))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 8) > *(*a4 + 8))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 8) > *(*a3 + 8))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 8) > *(*a2 + 8))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 8) > *(*result + 8))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::orc::MachOFuncVariants::lowerFunctionVariants(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Edge **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 8);
      v8 = *(*a1 + 8);
      v9 = *(a2 - 1);
      v10 = *(v9 + 8);
      if (v7 <= v8)
      {
        if (v10 > v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 8) > *(*a1 + 8))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 <= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 8) <= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::orc::MachOFuncVariants::lowerFunctionVariants(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Edge **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 8);
    v26 = *(*a1 + 8);
    v27 = *(v23 + 8);
    if (v25 <= v26)
    {
      if (v27 <= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 <= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 8) > *(v21 + 8))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 8);
          if (v45 > *(v44 + 8))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 > *(*a1 + 8))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 <= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 <= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 8) > *(*a1 + 8))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 8);
  v16 = *(*a1 + 8);
  v17 = *(v11 + 8);
  if (v15 <= v16)
  {
    if (v17 <= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 <= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 <= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 8);
    if (v38 > *(v37 + 8))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 <= *(v37 + 8))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

uint64_t llvm::orc::MachOPlatform::HeaderOptions::BuildVersionOpts::fromTriple(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  if (v2 <= 27)
  {
    if (v2 != 7)
    {
      v3 = v2 == 11;
      return v3 | (a2 << 32);
    }

    v4 = *(a1 + 40) == 23;
    v5 = 2;
    v3 = 7;
  }

  else if (v2 == 28)
  {
    v4 = *(a1 + 40) == 23;
    v5 = 3;
    v3 = 8;
  }

  else
  {
    if (v2 != 29)
    {
      v3 = 0;
      if (v2 == 32)
      {
        if (*(a1 + 40) == 23)
        {
          v3 = 12;
        }

        else
        {
          v3 = 11;
        }
      }

      return v3 | (a2 << 32);
    }

    v4 = *(a1 + 40) == 23;
    v5 = 4;
    v3 = 9;
  }

  if (!v4)
  {
    v3 = v5;
  }

  return v3 | (a2 << 32);
}

void llvm::orc::MachOPlatform::Create(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = *(a1[9] + 64);
  if (v10 == 3 || v10 == 38)
  {
    if ((*(a8 + 24) & 1) == 0)
    {
      v14[1] = 0;
      v14[0] = 0;
      LODWORD(v15) = 0;
      llvm::orc::addAliases(a1, v14, &llvm::orc::MachOPlatform::requiredCXXAliases(void)::RequiredCXXAliases, 1);
      llvm::orc::addAliases(a1, v14, &llvm::orc::MachOPlatform::standardRuntimeUtilityAliases(void)::StandardRuntimeUtilityAliases, 6);
      llvm::orc::addAliases(a1, v14, &llvm::orc::MachOPlatform::standardLazyCompilationAliases(void)::StandardLazyCompilationAliases, 2);
      std::optional<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>>::operator=[abi:nn200100]<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,void>(a8, v14);
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::destroyAll(v14);
      a2 = MEMORY[0x277C69E30](v14[0], 8);
    }

    a2.n128_u64[0] = 0;
    v12 = *a8;
    v11 = *(a8 + 8);
    *a8 = a2;
    v13 = *(a8 + 16);
    *(a8 + 16) = 0;
    operator new();
  }

  std::operator+<char>();
  getErrorErrorCat();
  operator new();
}

void llvm::orc::MachOPlatform::setupJITDylib(llvm::orc::MachOPlatform *this@<X0>, llvm::orc::JITDylib *a2@<X1>, void *a3@<X8>)
{
  v8 = 0;
  *__p = 0u;
  memset(v6, 0, sizeof(v6));
  v4 = 0u;
  v5 = 0u;
  *v3 = 0u;
  llvm::orc::MachOPlatform::setupJITDylib(this, a2, v3, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v9 = &v6[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = v6;
  std::vector<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd>::__destroy_vector::operator()[abi:nn200100](&v9);
  if (BYTE8(v5) == 1 && SBYTE7(v4) < 0)
  {
    operator delete(v3[0]);
  }
}

void llvm::orc::MachOPlatform::setupJITDylib(void *a1@<X0>, llvm::orc::JITDylib *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v29[1] = *MEMORY[0x277D85DE8];
  LOBYTE(v17[0]) = 0;
  v21 = 0;
  if (*(a3 + 40) == 1)
  {
    *v17 = *a3;
    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    v18 = v7;
    v19 = v8;
    v20 = *(a3 + 32);
    v21 = 1;
  }

  v9 = a1 + 4;
  v22 = *(a3 + 48);
  v23 = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v24 = *(a3 + 72);
  v25 = *(a3 + 88);
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *__p = *(a3 + 96);
  v27 = *(a3 + 112);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 96) = 0;
  v10 = a1[7];
  if ((v10 & 2) == 0)
  {
    v9 = *v9;
  }

  (*(v10 & 0xFFFFFFFFFFFFFFF8))(v29, v9, a1, v17);
  v16 = 0;
  llvm::orc::JITDylib::define<llvm::orc::MaterializationUnit>(a4, a2, v29, &v16);
  if (v16)
  {
    llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v16);
  }

  v11 = v29[0];
  v29[0] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v28[0] = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v28);
  v28[0] = &v22;
  std::vector<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd>::__destroy_vector::operator()[abi:nn200100](v28);
  if (v21 == 1 && SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (!*a4)
  {
    v12 = a1[1];
    v29[0] = a2;
    v13 = a1[8];
    v15 = v13;
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v13 + 8), 1uLL);
    }

    llvm::orc::ExecutionSession::lookup(v12, v29, 1uLL, &v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void llvm::orc::JITDylib::define<llvm::orc::MaterializationUnit>(void *a1, llvm::orc::JITDylib *a2, llvm::orc::MaterializationUnit **a3, atomic_uint **a4)
{
  if (*(*a3 + 4))
  {
    v8 = *(a2 + 4);
    std::recursive_mutex::lock(v8);
    llvm::orc::JITDylib::defineImpl(a2, *a3, a1);
    if (!*a1)
    {
      v9 = *a4;
      if (!*a4)
      {
        llvm::orc::JITDylib::getDefaultResourceTracker(a2, &v14);
        v9 = v14;
        v14 = *a4;
        v10 = v14;
        *a4 = v9;
        if (v10)
        {
          llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v10);
          v9 = *a4;
        }
      }

      v11 = *(*(a2 + 4) + 80);
      if (!v11)
      {
LABEL_9:
        v12 = *a3;
        *a3 = 0;
        v13 = v12;
        llvm::orc::JITDylib::installMaterializationUnit(a2, &v13, v9);
      }

      (*(*v11 + 32))(v11, v9, *a3);
      if (!*a1)
      {
        v9 = *a4;
        goto LABEL_9;
      }
    }

    std::recursive_mutex::unlock(v8);
  }

  else
  {
    *a1 = 0;
  }
}

void llvm::orc::MachOPlatform::teardownJITDylib(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock((a1 + 320));
  v15 = a2;
  v16 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>((a1 + 392), &v15, &v16))
  {
    v6 = v16;
    if (v16 != (*(a1 + 392) + 16 * *(a1 + 408)))
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::erase(a1 + 416, v16 + 1);
      *v6 = -8192;
      *(a1 + 400) = vadd_s32(*(a1 + 400), 0x1FFFFFFFFLL);
    }
  }

  v7 = *(a1 + 456);
  if (v7)
  {
    v8 = *(a1 + 440);
    v9 = v7 - 1;
    LODWORD(v10) = v9 & ((a2 >> 4) ^ (a2 >> 9));
    v11 = (v8 + 16 * v10);
    v12 = *v11;
    if (*v11 == a2)
    {
LABEL_6:
      *v11 = -8192;
      *(a1 + 448) = vadd_s32(*(a1 + 448), 0x1FFFFFFFFLL);
    }

    else
    {
      v13 = 1;
      while (v12 != -4096)
      {
        v14 = v10 + v13++;
        v10 = v14 & v9;
        v12 = *(v8 + 16 * v10);
        if (v12 == a2)
        {
          v11 = (v8 + 16 * v10);
          goto LABEL_6;
        }
      }
    }
  }

  *a3 = 0;
  std::mutex::unlock((a1 + 320));
}

uint64_t *llvm::orc::MachOPlatform::notifyAdding@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = atomic_load((a2 + 8));
  if (*(a3 + 32))
  {
    v10 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::FindAndConstruct(result + 37, &v10);
    v8 = *(a3 + 32);
    v9 = v8;
    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v8 + 8), 1uLL);
    }

    result = llvm::orc::SymbolLookupSet::add(v7 + 1, &v9, 1);
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v9 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  *a4 = 0;
  return result;
}

void *llvm::orc::addAliases(void *result, uint64_t *a2, const char **a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a3;
    v6 = result;
    v7 = &a3[2 * a4];
    do
    {
      if (*v4)
      {
        v8 = strlen(*v4);
      }

      else
      {
        v8 = 0;
      }

      llvm::orc::ExecutionSession::intern(v6, *v4, v8, &v14);
      v9 = v4[1];
      if (v9)
      {
        v10 = strlen(v4[1]);
      }

      else
      {
        v10 = 0;
      }

      llvm::orc::ExecutionSession::intern(v6, v9, v10, &v13);
      v11 = v13;
      v13 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::FindAndConstruct(a2, &v14);
      v12 = result[1];
      if ((v12 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v12 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      result[1] = v11;
      *(result + 8) = 4096;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add(v13 + 1, 0xFFFFFFFFFFFFFFFFLL);
      }

      if (v14 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add(v14 + 1, 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 += 2;
    }

    while (v4 != v7);
  }

  return result;
}

void llvm::orc::MachOPlatform::setLoadableAtPathRegexMatcher(uint64_t a1, void *a2, const void *a3, size_t a4, void *a5, size_t a6)
{
  std::mutex::lock((a1 + 320));
  v27[0] = a2;
  v28 = 0;
  v12 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>((a1 + 392), v27, &v28);
  v13 = v28;
  if (!v12)
  {
    v13 = (*(a1 + 392) + 16 * *(a1 + 408));
  }

  v14 = v13[1];
  std::mutex::unlock((a1 + 320));
  v15 = *(a1 + 240);
  v16 = *(*(a1 + 8) + 72);
  v25 = 0;
  v17 = a4 + a6 + 24;
  if (v17 < 9)
  {
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", &v28);
  }

  else
  {
    __src = a5;
    v18 = malloc_type_malloc(a4 + a6 + 24, 0x100004077774924uLL);
    v19 = v18;
    *v18 = v14;
    if ((v17 & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      goto LABEL_12;
    }

    v18[1] = a4;
    v20 = v18 + 2;
    v21 = a4 + a6 + 8;
    if (a4)
    {
      v22 = v21 >= a4;
      v21 = a6 + 8;
      if (!v22)
      {
        goto LABEL_12;
      }

      memcpy(v18 + 2, a3, a4);
      v20 = (v20 + a4);
    }

    if (v21 < 8)
    {
LABEL_12:
      llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", &v28);
      free(v19);
      goto LABEL_14;
    }

    *v20 = a6;
    v23 = v20 + 1;
    if (a6)
    {
      if (v21 - 8 < a6)
      {
        goto LABEL_12;
      }

      memcpy(v23, __src, a6);
    }

    v28 = v19;
    v29 = a4 + a6 + 24;
  }

LABEL_14:
  if (!v29)
  {
    v26 = v28;
    if (v28)
    {
      getErrorErrorCat();
      v27[0] = 3;
      v27[1] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }
  }

  llvm::orc::ExecutorProcessControl::callWrapper();
}

atomic_uint *llvm::orc::MachOPlatform::rt_pushInitializers(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a3;
  std::mutex::lock((a1 + 320));
  v9[0] = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::LookupBucketFor<llvm::orc::ExecutorAddr>((a1 + 416), &v13, v9) || v9[0] == *(a1 + 416) + 16 * *(a1 + 432) || (v5 = *(v9[0] + 8)) == 0)
  {
    std::mutex::unlock((a1 + 320));
    v9[0] = "{0:x}";
    v9[1] = 5;
    v9[2] = v11;
    v9[3] = 1;
    v10[0] = &unk_2883EBA18;
    v10[1] = &v13;
    v11[0] = v10;
    v11[1] = "No JITDylib with header addr ";
    v11[3] = v9;
    v12 = 1539;
    getErrorErrorCat();
    operator new();
  }

  atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);
  std::mutex::unlock((a1 + 320));
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v14, a2);
  v8 = v5;
  atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);
  llvm::orc::MachOPlatform::pushInitializersLoop(a1, v14, &v8);
  llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v5);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v14);
  result = llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v5);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::orc::MachOPlatform::rt_pushSymbols(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v14 = a3;
  std::mutex::lock((a1 + 320));
  v15[0] = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::LookupBucketFor<llvm::orc::ExecutorAddr>((a1 + 416), &v14, v15) || v15[0] == *(a1 + 416) + 16 * *(a1 + 432))
  {
    std::mutex::unlock((a1 + 320));
  }

  else
  {
    v6 = *(v15[0] + 8);
    std::mutex::unlock((a1 + 320));
    if (v6)
    {
      v11 = 0uLL;
      v12 = 0;
      v8 = *a4;
      for (i = a4[1]; v8 != i; v8 += 24)
      {
        llvm::orc::ExecutionSession::intern(*(a1 + 8), *v8, *(v8 + 8), &v10);
        llvm::orc::SymbolLookupSet::add(&v11, &v10, *(v8 + 16) ^ 1);
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v10 + 1, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      v9 = *(a1 + 8);
      operator new();
    }
  }

  v15[0] = "{0:x}";
  v15[1] = 5;
  v15[2] = v17;
  v15[3] = 1;
  v16[0] = &unk_2883EBA18;
  v16[1] = &v14;
  v17[0] = v16;
  *&v11 = "No JITDylib associated with handle ";
  v12 = v15;
  v13 = 1539;
  getErrorErrorCat();
  operator new();
}

uint64_t llvm::orc::MachOPlatform::pushInitializersLoop(uint64_t a1, __int128 *a2, void ***a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v48 = *a3;
  v45 = v47;
  v46 = 0x1000000000;
  llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v45, &v48, &v49);
  v6 = *(a1 + 8);
  std::recursive_mutex::lock(v6);
  for (i = v46; v46; i = v46)
  {
    v29[0] = *(v45 + i - 1);
    LODWORD(v46) = i - 1;
    v48 = v29[0];
    v27 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>,llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::LookupBucketFor<llvm::orc::JITDylib *>(&v31, &v48, &v27) & 1) == 0)
    {
      v8 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>,llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::FindAndConstruct(&v31, v29);
      v9 = v29[0];
      v10 = *(v29[0] + 32);
      std::recursive_mutex::lock(v10);
      v11 = *(v9 + 208);
      v12 = *(v9 + 216);
      while (v11 != v12)
      {
        if (*v11 != v29[0])
        {
          llvm::SmallVectorTemplateBase<void *,true>::push_back(v8 + 2, *v11);
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v45, *v11);
        }

        v11 += 2;
      }

      std::recursive_mutex::unlock(v10);
      v27 = v29[0];
      v48 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>((a1 + 296), &v27, &v48))
      {
        v13 = v48;
        if (v48 != (*(a1 + 296) + 32 * *(a1 + 312)))
        {
          v14 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::FindAndConstruct(&v34, v29);
          std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__vdeallocate(v14 + 1);
          *(v14 + 1) = *(v13 + 1);
          v14[3] = v13[3];
          v13[1] = 0;
          v13[2] = 0;
          v13[3] = 0;
          v48 = v13 + 1;
          std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v48);
          *v13 = -8192;
          *(a1 + 304) = vadd_s32(*(a1 + 304), 0x1FFFFFFFFLL);
        }
      }
    }
  }

  std::recursive_mutex::unlock(v6);
  if (v35)
  {
    v37 = a1;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v38, a2);
    v15 = *a3;
    v39 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 1u, memory_order_relaxed);
    }

    v48 = v37;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v49, v38);
    v51 = v39;
    v39 = 0;
    v16 = operator new(0x30uLL, 8uLL);
    v40 = v16;
    v41 = xmmword_2750C3F40;
    *v16 = v48;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v16 + 1), &v49);
    v16[5] = v51;
    v51 = 0;
    v42 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallbacksHolder<llvm::orc::MachOPlatform::pushInitializersLoop(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>)::$_1,llvm::orc::MachOPlatform::pushInitializersLoop(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>)::$_1,void>::Callbacks + 4;
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v49);
    v17 = *(a1 + 8);
    llvm::orc::Platform::lookupInitSymbolsAsync();
  }

  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  if (v32)
  {
    v18 = (4 * v32 / 3u + 1) | ((4 * v32 / 3u + 1) >> 1);
    v19 = v18 | (v18 >> 2) | ((v18 | (v18 >> 2)) >> 4);
    llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>::grow(v29, (((v19 | (v19 >> 8)) >> 16) | v19 | (v19 >> 8)) + 1);
  }

  std::mutex::lock((a1 + 320));
  if (v32)
  {
    if (v33)
    {
      v20 = 72 * v33;
      v21 = v31;
      while ((*v21 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v21 += 9;
        v20 -= 72;
        if (!v20)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v21 = v31;
    }

    v22 = &v31[9 * v33];
LABEL_27:
    if (v21 != v22)
    {
      v27 = *v21;
      v48 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>((a1 + 392), &v27, &v48))
      {
        v23 = v48;
        if (v48 != (*(a1 + 392) + 16 * *(a1 + 408)))
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>,llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>::FindAndConstruct(v29, v21)[1] = v23[1];
        }
      }

      while (1)
      {
        v21 += 9;
        if (v21 == v22)
        {
          break;
        }

        if ((*v21 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_27;
        }
      }
    }
  }

LABEL_23:
  std::mutex::unlock((a1 + 320));
  memset(v28, 0, sizeof(v28));
  if (v32)
  {
    v50 = v28;
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>(v32);
  }

  v44 &= ~1u;
  memset(v43, 0, sizeof(v43));
  v24 = *(a2 + 3);
  if ((v24 & 2) == 0)
  {
    a2 = *a2;
  }

  (*(v24 & 0xFFFFFFFFFFFFFFF8))(a2, v43);
  llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>::~Expected(v43);
  v48 = v28;
  std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>::__destroy_vector::operator()[abi:nn200100](&v48);
  MEMORY[0x277C69E30](v29[0], 8);
  if (v45 != v47)
  {
    free(v45);
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>,llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::destroyAll(&v31);
  MEMORY[0x277C69E30](v31, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::destroyAll(&v34);
  result = MEMORY[0x277C69E30](v34, 8);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::orc::MachOPlatform::MachOPlatformPlugin::modifyPassConfig(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v81 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 72);
  if (*a2 != *(v7 + 16))
  {
    goto LABEL_2;
  }

  std::mutex::lock((v7 + 320));
  v71 = *(a1 + 72);
  v72 = *(v71 + 384);
  if (!v72)
  {
    std::mutex::unlock((v7 + 320));
LABEL_2:
    v8 = 0;
    goto LABEL_3;
  }

  v74 = *(v72 + 48);
  v73 = (v72 + 48);
  *v73 = v74 + 1;
  *&v77 = a2;
  *&v75 = v71 + 320;
  xojit_log_debug_slow<char const(&)[33],std::string const&,char const(&)[8],void *,char const(&)[18],unsigned long &,char const(&)[14],void *,char const(&)[2]>(a3 + 96, &v77, v73, &v75);
  std::mutex::unlock((v7 + 320));
  *&v77 = a1;
  v79 = off_2815A42A8 + 2;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](a4 + 48, &v77);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v77);
  v8 = 1;
LABEL_3:
  v9 = a2[5];
  v10 = v9 - 1;
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v9 + 8), 1uLL);
  }

  if (!v9)
  {
LABEL_57:
    if (v10 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v9 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    v67 = *(a4 + 24);
    v68 = *a2;
    *&v77 = a1;
    *(&v77 + 1) = v68;
    v79 = off_2815A42D0 + 2;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::insert(a4 + 24, v67, &v77);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v77);
    operator new();
  }

  if (v9 == *(*(a1 + 72) + 64))
  {
    v11 = v8;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    *&v75 = a1;
    *(&v75 + 1) = a2;
    v76 = off_2815A42B8 + 2;
    v12 = *(a4 + 8);
    v13 = *(a4 + 16);
    if (v12 >= v13)
    {
      v18 = (v12 - *a4) >> 5;
      if ((v18 + 1) >> 59)
      {
        goto LABEL_63;
      }

      v19 = v13 - *a4;
      v20 = v19 >> 4;
      if (v19 >> 4 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFE0)
      {
        v21 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      v80 = a4;
      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>>(a4, v21);
      }

      v27 = 32 * v18;
      llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v27, &v75);
      v14 = v27 + 32;
      v28 = *(a4 + 8);
      v29 = v27 + *a4 - v28;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>*>(a4, *a4, v28, v29);
      v30 = *a4;
      *a4 = v29;
      *(a4 + 8) = v14;
      v31 = *(a4 + 16);
      *(a4 + 16) = 0;
      v78 = v30;
      v79 = v31;
      *&v77 = v30;
      *(&v77 + 1) = v30;
      std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::~__split_buffer(&v77);
    }

    else
    {
      v14 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v12, &v75) + 32;
    }

    *(a4 + 8) = v14;
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v75);
    *&v75 = a1;
    v76 = off_2815A42C0 + 2;
    v32 = *(a4 + 32);
    v33 = *(a4 + 40);
    if (v32 >= v33)
    {
      v35 = *(a4 + 24);
      v36 = (v32 - v35) >> 5;
      if ((v36 + 1) >> 59)
      {
        goto LABEL_63;
      }

      v37 = v33 - v35;
      v38 = v37 >> 4;
      if (v37 >> 4 <= (v36 + 1))
      {
        v38 = v36 + 1;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFE0)
      {
        v39 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v38;
      }

      v80 = a4 + 24;
      if (v39)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>>(a4 + 24, v39);
      }

      v47 = 32 * v36;
      llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v47, &v75);
      v34 = v47 + 32;
      v48 = *(a4 + 24);
      v49 = *(a4 + 32);
      v50 = v47 + v48 - v49;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>*>(a4 + 24, v48, v49, v50);
      v51 = *(a4 + 24);
      *(a4 + 24) = v50;
      *(a4 + 32) = v34;
      v52 = *(a4 + 40);
      *(a4 + 40) = 0;
      v78 = v51;
      v79 = v52;
      *&v77 = v51;
      *(&v77 + 1) = v51;
      std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::~__split_buffer(&v77);
    }

    else
    {
      v34 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v32, &v75) + 32;
    }

    *(a4 + 32) = v34;
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v75);
    *&v75 = a1;
    *(&v75 + 1) = a2;
    v76 = off_2815A42C8 + 2;
    v53 = *(a4 + 56);
    v54 = *(a4 + 64);
    if (v53 < v54)
    {
      v55 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v53, &v75) + 32;
LABEL_56:
      *(a4 + 56) = v55;
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v75);
      goto LABEL_57;
    }

    v56 = *(a4 + 48);
    v57 = (v53 - v56) >> 5;
    if (!((v57 + 1) >> 59))
    {
      v58 = v54 - v56;
      v59 = v58 >> 4;
      if (v58 >> 4 <= (v57 + 1))
      {
        v59 = v57 + 1;
      }

      if (v58 >= 0x7FFFFFFFFFFFFFE0)
      {
        v60 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v60 = v59;
      }

      v80 = a4 + 48;
      if (v60)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>>(a4 + 48, v60);
      }

      v61 = 32 * v57;
      llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v61, &v75);
      v55 = v61 + 32;
      v62 = *(a4 + 48);
      v63 = *(a4 + 56);
      v64 = v61 + v62 - v63;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>*>(a4 + 48, v62, v63, v64);
      v65 = *(a4 + 48);
      *(a4 + 48) = v64;
      *(a4 + 56) = v55;
      v66 = *(a4 + 64);
      *(a4 + 64) = 0;
      v78 = v65;
      v79 = v66;
      *&v77 = v65;
      *(&v77 + 1) = v65;
      std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::~__split_buffer(&v77);
      goto LABEL_56;
    }

LABEL_63:
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  *&v75 = a1;
  *(&v75 + 1) = a2;
  v76 = &off_2815A42B0 + 2;
  v15 = *(a4 + 56);
  v16 = *(a4 + 64);
  if (v15 >= v16)
  {
    v22 = *(a4 + 48);
    v23 = (v15 - v22) >> 5;
    if ((v23 + 1) >> 59)
    {
      goto LABEL_63;
    }

    v24 = v16 - v22;
    v25 = v24 >> 4;
    if (v24 >> 4 <= (v23 + 1))
    {
      v25 = v23 + 1;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFE0)
    {
      v26 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    v80 = a4 + 48;
    if (v26)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>>(a4 + 48, v26);
    }

    v40 = 32 * v23;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v40, &v75);
    v17 = v40 + 32;
    v41 = *(a4 + 48);
    v42 = *(a4 + 56);
    v43 = v40 + v41 - v42;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>*>(a4 + 48, v41, v42, v43);
    v44 = *(a4 + 48);
    *(a4 + 48) = v43;
    *(a4 + 56) = v17;
    v45 = *(a4 + 64);
    *(a4 + 64) = 0;
    v78 = v44;
    v79 = v45;
    *&v77 = v44;
    *(&v77 + 1) = v44;
    std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::~__split_buffer(&v77);
  }

  else
  {
    v17 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v15, &v75) + 32;
  }

  *(a4 + 56) = v17;
  result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v75);
  if (v10 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v9 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v69 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t xojit_log_debug_slow<char const(&)[33],std::string const&,char const(&)[8],void *,char const(&)[18],unsigned long &,char const(&)[14],void *,char const(&)[2]>(uint64_t a1, void *a2, void *a3, void *a4)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v23);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, "Bootstrap: Started pipeline for ", 32);
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, " (MR = ", 7);
  v14 = MEMORY[0x277C69B90](v13, *a2);
  v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, ", ActiveGraphs = ", 17);
  v16 = MEMORY[0x277C69BB0](v15, *a3);
  v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, " under mutex ", 13);
  v18 = MEMORY[0x277C69B90](v17, *a4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, ")", 1);
  std::stringbuf::str();
  if (v22 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  xojit_log_debug_slow(p_p);
  if (v22 < 0)
  {
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
  return MEMORY[0x277C69DA0](&v27);
}

uint64_t llvm::orc::MachOPlatform::MachOPlatformPlugin::notifyFailed@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v9);
  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v9, "Failed link for MR=", 19);
  MEMORY[0x277C69B90](v4, a1);
  std::stringbuf::str();
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  xojit_log_debug_slow(p_p);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  result = MEMORY[0x277C69DA0](&v13);
  *a2 = 0;
  return result;
}

unint64_t llvm::orc::MachOPlatform::MachOPlatformPlugin::mergeImageInfoFlags(unint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = result;
  v5 = *(a3 + 4);
  if (v5 == a4)
  {
    goto LABEL_2;
  }

  v6 = BYTE1(v5);
  if (a4 >= 0x100u && *(a3 + 4) >= 0x100u && BYTE1(v5) != BYTE1(a4))
  {
LABEL_8:
    std::operator+<char>();
    v8 = std::string::append(&v15, " does not match first registered flags");
    v9 = v8->__r_.__value_.__r.__words[2];
    *__p = *&v8->__r_.__value_.__l.__data_;
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    getErrorErrorCat();
    llvm::make_error<llvm::StringError,std::string,std::error_code>();
  }

  if (*(a3 + 8) == 1)
  {
    if ((v5 & 0x40) != 0 && (a4 & 0x40) == 0 || (v5 & 0x10) != 0 && (a4 & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = v5 >> 4;
    v11 = v5 >> 6;
    v12 = HIWORD(v5);
    if (HIWORD(a4) >= v12)
    {
      LODWORD(result) = v12;
    }

    else
    {
      LODWORD(result) = HIWORD(a4);
    }

    if (HIWORD(a4))
    {
      result = result;
    }

    else
    {
      result = v12;
    }

    if (v12)
    {
      v13 = result;
    }

    else
    {
      v13 = HIWORD(a4);
    }

    if (a4 >= 0x100u)
    {
      v6 = BYTE1(a4);
    }

    if (((((v11 ^ (a4 >> 6)) & 1) == 0) & (a4 >> 6)) != 0)
    {
      v14 = 64;
    }

    else
    {
      v14 = 0;
    }

    if (((((v10 ^ (a4 >> 4)) & 1) == 0) & (a4 >> 4)) != 0)
    {
      v14 |= 0x10u;
    }

    *(a3 + 4) = v14 | (v6 << 8) | (v13 << 16);
  }

LABEL_2:
  *v4 = 0;
  return result;
}

void **llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_0::operator()(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  result = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 32);
  if ((*(a2 + 32) + 8 * *(a2 + 48)) != result)
  {
    v7 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 32);
    v8 = **v7;
    v9 = (*v7)[4] + v8;
    *a3 = v8;
    a3[1] = v9;
    result = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 32);
    v11 = *(a2 + 32) + 8 * *(a2 + 48);
    if (v11 != result)
    {
      v12 = result;
      v13 = v10;
      do
      {
        v14 = *v12;
        v15 = **v12;
        v16 = (*v12)[5];
        v17 = (*v12)[4] + v15;
        if (v15 >= *a3)
        {
          v15 = *a3;
        }

        if (a3[1] > v17)
        {
          v17 = a3[1];
        }

        *a3 = v15;
        a3[1] = v17;
        v18 = v14[6];
        while (v16 != v18)
        {
          v19 = *(*v16 + 8);
          if ((*(v19 + 8) & 1) != 0 && (*(*(v19 + 16) + 16) & 4) != 0)
          {
            v20 = *a1;
            v21 = *(*a1 + 8);
            if (v21 >= *(*a1 + 12))
            {
              result = llvm::SmallVectorBase<unsigned int>::grow_pod(*a1, (v20 + 16), v21 + 1, 8);
              v21 = *(v20 + 8);
            }

            *(*v20 + 8 * v21) = v19;
            ++*(v20 + 8);
          }

          v16 += 32;
        }

        do
        {
          ++v12;
        }

        while (v12 != v13 && (*v12 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v12 != v11);
    }
  }

  return result;
}

char *llvm::jitlink::LinkGraph::mergeSections(char *this, llvm::jitlink::Section *a2, llvm::jitlink::Section *a3, char a4)
{
  if (a2 != a3)
  {
    v17 = v4;
    v18 = v5;
    v9 = this;
    v10 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a3 + 32);
    v12 = *(a3 + 4) + 8 * *(a3 + 12);
    if (v12 != v10)
    {
      do
      {
        v13 = *v10++;
        *(v13 + 16) = a2;
        while (v10 != v11 && (*v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          ++v10;
        }
      }

      while (v10 != v12);
    }

    this = llvm::jitlink::Section::transferContentTo(a3, a2);
    if ((a4 & 1) == 0)
    {
      v16 = *a3;
      return llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::erase((v9 + 200), &v16, v14, v15);
    }
  }

  return this;
}

void llvm::orc::shared::WrapperFunctionCall::Create<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSOptional<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>>>,llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSSequence<char>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>>>>,llvm::orc::ExecutorAddr,std::optional<std::tuple<llvm::SmallVector<llvm::orc::ExecutorAddrRange,3u>,llvm::orc::ExecutorAddrRange,llvm::orc::ExecutorAddrRange>>,llvm::SmallVector<std::pair<llvm::StringRef,llvm::orc::ExecutorAddrRange>,8u>>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int *a5)
{
  v53[3] = *MEMORY[0x277D85DE8];
  v51 = v53;
  v52 = xmmword_2750C12E0;
  v10 = a5[2];
  if (v10)
  {
    v11 = 32 * v10;
    v12 = (*a5 + 8);
    v13 = 8;
    do
    {
      v14 = *v12;
      v12 += 4;
      v13 += v14 + 24;
      v11 -= 32;
    }

    while (v11);
  }

  else
  {
    v13 = 8;
  }

  v15 = 9;
  if (*(a4 + 96))
  {
    v15 = 16 * *(a4 + 8) + 49;
  }

  llvm::SmallVectorImpl<char>::resizeImpl<false>(&v51, v13 + v15);
  v16 = v51;
  v17 = v52;
  if (v52)
  {
    v18 = v51;
  }

  else
  {
    v18 = 0;
  }

  v42 = v18;
  v43 = v52;
  v19 = xmmword_2750C12E0;
  if (v52 < 8)
  {
    goto LABEL_37;
  }

  *v51 = *a3;
  v42 = v16 + 1;
  v43 = v17 - 8;
  if (v17 == 8)
  {
    goto LABEL_37;
  }

  v20 = *(a4 + 96);
  *(v16 + 8) = v20;
  v21 = v17 - 9;
  v42 = (v16 + 9);
  v43 = v17 - 9;
  if (v20 == 1)
  {
    if (v21 < 8)
    {
      goto LABEL_37;
    }

    *(v16 + 9) = *(a4 + 8);
    v22 = (v16 + 17);
    v23 = v17 - 17;
    v42 = v22;
    v43 = v17 - 17;
    v24 = *(a4 + 8);
    if (v24)
    {
      v25 = *a4;
      v26 = *a4 + 16 * v24;
      while (1)
      {
        v27 = v23 >= 8;
        v28 = v23 - 8;
        if (!v27)
        {
          break;
        }

        *v22 = *v25;
        v29 = v22 + 1;
        v42 = v29;
        v43 = v28;
        if (v28 <= 7)
        {
          break;
        }

        *v29 = v25[1];
        v22 = v29 + 1;
        v23 = v43 - 8;
        v42 = v22;
        v43 -= 8;
        v25 += 2;
        if (v25 == v26)
        {
          goto LABEL_21;
        }
      }

LABEL_37:
      getErrorErrorCat();
      v47 = 3;
      v48 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
    }

LABEL_21:
    v30 = llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>>::serialize<llvm::orc::ExecutorAddrRange,llvm::orc::ExecutorAddrRange>(&v42, (a4 + 64), (a4 + 80));
    v19 = xmmword_2750C12E0;
    if (!v30)
    {
      goto LABEL_37;
    }

    v21 = v43;
  }

  if (v21 < 8)
  {
    goto LABEL_37;
  }

  *v42 = a5[2];
  v31 = v42 + 1;
  v32 = v43 - 8;
  ++v42;
  v43 -= 8;
  v33 = a5[2];
  if (v33)
  {
    v34 = *a5;
    v35 = *a5 + 32 * v33;
    while (v32 >= 8)
    {
      v36 = *v34;
      v37 = *(v34 + 8);
      *v31 = v37;
      v38 = v31 + 1;
      v39 = v43 - 8;
      v42 = v38;
      v43 -= 8;
      if (v37)
      {
        v27 = v39 >= v37;
        v39 -= v37;
        if (!v27)
        {
          goto LABEL_37;
        }

        memcpy(v38, v36, v37);
        v19 = xmmword_2750C12E0;
        v38 = (v38 + v37);
        v42 = v38;
        v43 = v39;
      }

      if (v39 < 8)
      {
        break;
      }

      *v38 = *(v34 + 16);
      v40 = v42++;
      v43 -= 8;
      if (v43 <= 7)
      {
        break;
      }

      v40[1] = *(v34 + 24);
      v31 = v40 + 2;
      v32 = v43 - 8;
      v42 = v31;
      v43 -= 8;
      v34 += 32;
      if (v34 == v35)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_37;
  }

LABEL_34:
  v44 = v46;
  v45 = v19;
  if (v52)
  {
    llvm::SmallVectorImpl<char>::operator=(&v44, &v51);
    v47 = a2;
    v48 = v50;
    v49 = xmmword_2750C12E0;
    if (v45)
    {
      llvm::SmallVectorImpl<char>::operator=(&v48, &v44);
    }
  }

  else
  {
    v47 = a2;
    v48 = v50;
    v49 = v19;
  }

  llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::Expected<llvm::orc::shared::WrapperFunctionCall>(a1, &v47);
  if (v48 != v50)
  {
    free(v48);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  if (v51 != v53)
  {
    free(v51);
  }

  v41 = *MEMORY[0x277D85DE8];
}

void std::vector<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc,std::allocator<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc>>::push_back[abi:nn200100](uint64_t *a1, _OWORD *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v9 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    if ((v9 + 1) > 0x249249249249249)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 4);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x124924924924924)
    {
      v12 = 0x249249249249249;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v12 <= 0x249249249249249)
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v13 = (16 * ((v4 - *a1) >> 4));
    v14 = a2[3];
    v13[2] = a2[2];
    v13[3] = v14;
    v13[4] = a2[4];
    v15 = a2[1];
    *v13 = *a2;
    v13[1] = v15;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(112 * v9 + 80, a2 + 5);
    v16 = *a1;
    v17 = a1[1];
    v18 = 112 * v9 - (v17 - *a1);
    v8 = 112 * v9 + 112;
    if (v17 != *a1)
    {
      v19 = 112 * v9 - 16 * ((v17 - *a1) >> 4) + 80;
      v20 = *a1;
      do
      {
        *(v19 - 80) = *v20;
        v21 = v20[1];
        v22 = v20[2];
        v23 = v20[4];
        *(v19 - 32) = v20[3];
        *(v19 - 16) = v23;
        *(v19 - 64) = v21;
        *(v19 - 48) = v22;
        v24 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v19, v20 + 5);
        v20 += 7;
        v19 = v24 + 112;
      }

      while (v20 != v17);
      do
      {
        llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v16 + 10);
        v16 += 14;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    a1[1] = v8;
    a1[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[4];
    v4[3] = a2[3];
    v4[4] = v7;
    v4[1] = v5;
    v4[2] = v6;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v4 + 5), a2 + 5);
    v8 = (v4 + 7);
  }

  a1[1] = v8;
}

void *llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::$_3::operator()(void **a1, const void *a2, size_t a3, __int128 **a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  result = memcpy(&v30, a2, a3);
  v7 = (a4[1] - *a4) >> 4;
  v8 = -1227133513 * v7;
  v9 = 613566768 * v7 + 72;
  v10 = *a1;
  v11 = v31;
  v12 = v32;
  v13.i64[0] = v33;
  v13.i64[1] = __PAIR64__(HIDWORD(v33), v8);
  if (*(**a1 + 188) == 1)
  {
    v14 = 25;
  }

  else
  {
    v9 = bswap32(v9);
    v11 = vrev64q_s8(v31);
    v12 = vrev64q_s8(v32);
    v13 = vrev32q_s8(v13);
    v14 = 419430400;
  }

  v15 = **(v10 + 8);
  *v15 = v14;
  *(v15 + 4) = v9;
  *(v15 + 8) = v30;
  *(v15 + 24) = v11;
  *(v15 + 40) = v12;
  *(v15 + 56) = v13;
  **(v10 + 8) += 72;
  v17 = *a4;
  v16 = a4[1];
  while (v17 != v16)
  {
    v18 = *(v17 + 13);
    if (v18 >= 8)
    {
      v19 = v17 + 5;
      if ((v18 & 2) == 0)
      {
        v19 = *v19;
      }

      result = (*(v18 & 0xFFFFFFFFFFFFFFF8))(v19, *a1[1] - *a1[2]);
    }

    v20 = *a1;
    v22 = v17[2];
    v21 = v17[3];
    v23 = v17[4];
    v25 = *(v17 + 18);
    v24 = *(v17 + 19);
    if (*(**a1 + 188) != 1)
    {
      v22 = vrev64q_s8(v22);
      v21 = vrev32q_s8(v21);
      v23 = vrev32_s8(v23);
      v25 = bswap32(v25);
    }

    v26 = **(v20 + 8);
    v27 = *v17;
    v28 = v17[1];
    v17 += 7;
    *v26 = v27;
    *(v26 + 16) = v28;
    *(v26 + 32) = v22;
    *(v26 + 48) = v21;
    *(v26 + 64) = v23;
    *(v26 + 72) = v25;
    *(v26 + 76) = v24;
    **(v20 + 8) += 80;
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void **std::vector<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc,std::allocator<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc>>::~vector[abi:nn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 112;
        llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v3 - 4);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void llvm::orc::shared::WrapperFunctionCall::Create<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSMachOExecutorSymbolFlags>>>,llvm::orc::ExecutorAddr,llvm::SmallVector<std::tuple<llvm::orc::ExecutorAddr,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>,2u>>(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v27[3] = *MEMORY[0x277D85DE8];
  v25 = v27;
  v26 = xmmword_2750C12E0;
  v8 = *(a4 + 2);
  if (v8)
  {
    v9 = 17 * ((24 * v8 - 24) / 0x18) + 33;
  }

  else
  {
    v9 = 16;
  }

  llvm::SmallVectorImpl<char>::resizeImpl<false>(&v25, v9);
  v10 = v26;
  if (v26 < 8)
  {
    goto LABEL_6;
  }

  v11 = v25;
  *v25 = *a3;
  if ((v10 & 0xFFFFFFFFFFFFFFF8) == 8)
  {
    goto LABEL_6;
  }

  v11[1] = *(a4 + 2);
  v13 = *(a4 + 2);
  if (v13)
  {
    v14 = *a4;
    v15 = *a4 + 24 * v13;
    v16 = v10 - 16;
    v17 = (v11 + 2);
    while (v16 >= 8)
    {
      *v17 = *v14;
      if ((v16 & 0xFFFFFFFFFFFFFFF8) == 8)
      {
        break;
      }

      *(v17 + 1) = *(v14 + 8);
      if (v16 == 16)
      {
        break;
      }

      v17[16] = *(v14 + 16);
      v17 += 17;
      v16 -= 17;
      v14 += 24;
      if (v14 == v15)
      {
        goto LABEL_16;
      }
    }

LABEL_6:
    getErrorErrorCat();
    v21 = 3;
    v22 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

LABEL_16:
  v18 = v20;
  v19 = xmmword_2750C12E0;
  if (v26)
  {
    llvm::SmallVectorImpl<char>::operator=(&v18, &v25);
    v21 = a2;
    v22 = v24;
    v23 = xmmword_2750C12E0;
    if (v19)
    {
      llvm::SmallVectorImpl<char>::operator=(&v22, &v18);
    }
  }

  else
  {
    v21 = a2;
    v22 = v24;
    v23 = xmmword_2750C12E0;
  }

  llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::Expected<llvm::orc::shared::WrapperFunctionCall>(a1, &v21);
  if (v22 != v24)
  {
    free(v22);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::orc::SimpleMachOHeaderMU::SimpleMachOHeaderMU(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  v21 = 0uLL;
  v22 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v21, a3)[4] = 4096;
  llvm::orc::ExecutionSession::intern(*(a2 + 8), "___mh_executable_header", 0x17uLL, &v19);
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v21, &v19)[4] = 4096;
  if ((v19 - 1) < 0xFFFFFFFFFFFFFFE0)
  {
    atomic_fetch_add((v19 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v9 = v21;
  v19 = v21;
  v10 = *(&v21 + 1);
  v21 = 0uLL;
  v11 = v22;
  v20 = v22;
  v22 = 0;
  v12 = *a3;
  if ((v12 - 1) < 0xFFFFFFFFFFFFFFE0)
  {
    atomic_fetch_add((v12 + 8), 1uLL);
    v10 = *(&v19 + 1);
    v9 = v19;
    v11 = v20;
  }

  *&v8 = 0;
  v19 = v8;
  v20 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v19);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v21);
  *a1 = &unk_2883EBCD0;
  *(a1 + 8) = v9;
  v16 = 0uLL;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  v17 = 0;
  *(a1 + 32) = v12;
  v18 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v16);
  *a1 = &unk_2883EC530;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 88) = 0;
  if (*(a4 + 40) == 1)
  {
    v13 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v13;
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *a4 = 0;
    v14 = *(a4 + 3);
    *(a1 + 80) = *(a4 + 8);
    *(a1 + 72) = v14;
    *(a1 + 88) = 1;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = a4[3];
  *(a1 + 112) = *(a4 + 8);
  *(a4 + 6) = 0;
  *(a4 + 7) = 0;
  *(a4 + 8) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *(a4 + 72);
  *(a1 + 136) = *(a4 + 11);
  *(a4 + 9) = 0;
  *(a4 + 10) = 0;
  *(a4 + 11) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = a4[6];
  *(a1 + 160) = *(a4 + 14);
  *(a4 + 12) = 0;
  *(a4 + 13) = 0;
  *(a4 + 14) = 0;
  return a1;
}

void llvm::orc::SimpleMachOHeaderMU::materialize(uint64_t a1)
{
  v1 = *(a1 + 40);
  std::string::basic_string[abi:nn200100]<0>(&__p, "<MachOHeaderMU>");
}

void anonymous namespace::createPlatformGraph(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void llvm::orc::SimpleMachOHeaderMU::createHeaderBlock(llvm::orc::SimpleMachOHeaderMU *this, llvm::orc::JITDylib *a2, llvm::jitlink::LinkGraph *a3, llvm::jitlink::Section *a4)
{
  v4 = *(*(*(*(this + 5) + 8) + 72) + 64) == 3;
  v5[0] = v5;
  v5[1] = v5;
  v6 = 0u;
  v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v10 = v11;
  memset(v11, 0, sizeof(v11));
  if (*(this + 88) == 1)
  {
    operator new();
  }

  operator new();
}

void llvm::orc::MachOPlatform::MachOPlatformPlugin::~MachOPlatformPlugin(llvm::orc::MachOPlatform::MachOPlatformPlugin *this)
{
  *this = &unk_2883EC578;
  MEMORY[0x277C69E30](*(this + 13), 8);
  MEMORY[0x277C69E30](*(this + 10), 8);
  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_2883EC578;
  MEMORY[0x277C69E30](*(this + 13), 8);
  MEMORY[0x277C69E30](*(this + 10), 8);
  std::mutex::~mutex((this + 8));

  JUMPOUT(0x277C69E40);
}

void llvm::orc::MachOPlatform::~MachOPlatform(llvm::orc::MachOPlatform *this)
{
  llvm::orc::MachOPlatform::~MachOPlatform(this);

  JUMPOUT(0x277C69E40);
}

{
  *this = &unk_2883EC4F0;
  MEMORY[0x277C69E30](*(this + 55), 8);
  MEMORY[0x277C69E30](*(this + 52), 8);
  MEMORY[0x277C69E30](*(this + 49), 8);
  std::mutex::~mutex(this + 5);
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::destroyAll(this + 74);
  MEMORY[0x277C69E30](*(this + 37), 8);
  v2 = *(this + 35);
  if ((v2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v3 = *(this + 33);
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v4 = *(this + 31);
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v5 = *(this + 29);
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v6 = *(this + 27);
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v6 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v7 = *(this + 25);
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v7 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v8 = *(this + 23);
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v8 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v9 = *(this + 21);
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v9 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v10 = *(this + 19);
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v10 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v11 = *(this + 17);
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v12 = *(this + 15);
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v12 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v13 = *(this + 13);
  if ((v13 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v13 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v14 = *(this + 11);
  if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v15 = *(this + 9);
  if ((v15 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v15 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v16 = *(this + 8);
  if ((v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 4);
}

void llvm::orc::SimpleMachOHeaderMU::~SimpleMachOHeaderMU(llvm::orc::SimpleMachOHeaderMU *this)
{
  *this = &unk_2883EC530;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v4 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (this + 96);
  std::vector<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd>::__destroy_vector::operator()[abi:nn200100](&v4);
  if (*(this + 88) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  *this = &unk_2883EBCD0;
  v3 = *(this + 4);
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 1);
}

{
  *this = &unk_2883EC530;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v4 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (this + 96);
  std::vector<llvm::orc::MachOPlatform::HeaderOptions::LoadDylibCmd>::__destroy_vector::operator()[abi:nn200100](&v4);
  if (*(this + 88) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  *this = &unk_2883EBCD0;
  v3 = *(this + 4);
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 1);
  MEMORY[0x277C69E40](this, 0x10B3C402DB37A05);
}

uint64_t llvm::SmallVectorImpl<llvm::orc::ExecutorAddrRange>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 16 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 16 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 16);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 16 * v9), (*a2 + 16 * v9), 16 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

char *llvm::jitlink::Section::transferContentTo(char *this, llvm::jitlink::Section *a2)
{
  if (a2 != this)
  {
    v20 = v2;
    v21 = v3;
    v5 = this;
    v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin((this + 56));
    v8 = *(v5 + 7) + 8 * *(v5 + 18);
    if (v8 != v6)
    {
      v9 = v6;
      v10 = v7;
      do
      {
        v11 = *v9++;
        v18 = v11;
        llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 56, &v18, v19);
        while (v9 != v10 && (*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          ++v9;
        }
      }

      while (v9 != v8);
    }

    v12 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin((v5 + 32));
    v14 = *(v5 + 4) + 8 * *(v5 + 12);
    if (v14 != v12)
    {
      v15 = v12;
      v16 = v13;
      do
      {
        v17 = *v15++;
        v18 = v17;
        llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 32, &v18, v19);
        while (v15 != v16 && (*v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          ++v15;
        }
      }

      while (v15 != v14);
    }

    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::clear(v5 + 56);
    return llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::clear(v5 + 32);
  }

  return this;
}

char *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::clear(char *result)
{
  if (*(result + 1))
  {
    v1 = *(result + 4);
    if (v1 <= 4 * *(result + 2) || v1 < 0x41)
    {
      if (v1)
      {
        v2 = 0;
        v3 = v1 + 0x1FFFFFFFFFFFFFFFLL;
        v4 = v3 & 0x1FFFFFFFFFFFFFFFLL;
        v5 = (v3 & 0x1FFFFFFFFFFFFFFFLL) - (v3 & 1) + 2;
        v6 = vdupq_n_s64(v4);
        v7 = (*result + 8);
        do
        {
          v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v2), xmmword_2750C1210)));
          if (v8.i8[0])
          {
            *(v7 - 1) = -4096;
          }

          if (v8.i8[4])
          {
            *v7 = -4096;
          }

          v2 += 2;
          v7 += 2;
        }

        while (v5 != v2);
      }

      *(result + 1) = 0;
    }

    else
    {
      return llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::shrink_and_clear(result);
    }
  }

  return result;
}

char *llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::shrink_and_clear(char *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 2);
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
      v6 = 0;
      v7 = v2 + 0x1FFFFFFFFFFFFFFFLL;
      v8 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0x1FFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = (*result + 8);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_2750C1210)));
        if (v12.i8[0])
        {
          *(v11 - 1) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 2;
      }

      while (v9 != v6);
    }
  }

  else
  {
    MEMORY[0x277C69E30](*result, 8);

    return llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::init(v1, v5);
  }

  return result;
}

char *llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::init(char *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = operator new(8 * v4, 8uLL);
    *v2 = result;
    *(v2 + 1) = 0;
    v5 = *(v2 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0x1FFFFFFFFFFFFFFFLL;
      v8 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0x1FFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 8;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_2750C1210)));
        if (v12.i8[0])
        {
          *(v11 - 1) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 2;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 4) = 0;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::erase(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v8 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v8, a4);
  if (v5)
  {
    v6 = v8;
    std::unique_ptr<llvm::jitlink::Section>::~unique_ptr[abi:nn200100]((v8 + 16));
    *v6 = xmmword_2750C4040;
    *(a1 + 8) = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
  }

  return v5;
}

uint64_t std::vector<llvm::orc::shared::AllocActionCallPair>::emplace_back<llvm::orc::shared::AllocActionCallPair>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<llvm::orc::shared::AllocActionCallPair>::__emplace_back_slow_path<llvm::orc::shared::AllocActionCallPair>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<llvm::orc::shared::AllocActionCallPair>>::construct[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,llvm::orc::shared::AllocActionCallPair,0>(a1, *(a1 + 8), a2);
    result = v3 + 112;
  }

  *(a1 + 8) = result;
  return result;
}

void llvm::orc::ExecutionSession::runSessionLocked<llvm::orc::DefinitionGenerator & llvm::orc::JITDylib::addGenerator<llvm::orc::DefinitionGenerator>(std::unique_ptr<llvm::orc::DefinitionGenerator>)::{lambda(void)#1}>(std::recursive_mutex *a1, void **a2)
{
  std::recursive_mutex::lock(a1);
  v4 = *a2;
  std::shared_ptr<llvm::orc::DefinitionGenerator>::shared_ptr[abi:nn200100]<llvm::orc::DefinitionGenerator,std::default_delete<llvm::orc::DefinitionGenerator>,0>(v18, a2[1]);
  v6 = v4[24];
  v5 = v4[25];
  if (v6 >= v5)
  {
    v7 = v4[23];
    v8 = v6 - v7;
    v9 = (v6 - v7) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v5 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF0;
    v13 = 0xFFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v19[4] = v4 + 23;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<llvm::orc::DefinitionGenerator>>>((v4 + 23), v13);
    }

    *(16 * v9) = *v18;
    v14 = 16 * v9 + 16;
    *v18 = 0uLL;
    memcpy(0, v7, v8);
    v15 = v4[23];
    v4[23] = 0;
    v4[24] = v14;
    v16 = v4[25];
    v4[25] = 0;
    v19[2] = v15;
    v19[3] = v16;
    v19[0] = v15;
    v19[1] = v15;
    std::__split_buffer<std::shared_ptr<llvm::orc::DefinitionGenerator>>::~__split_buffer(v19);
    v17 = v18[1];
    v4[24] = v14;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }
  }

  else
  {
    *v6 = *v18;
    v4[24] = v6 + 16;
  }

  std::recursive_mutex::unlock(a1);
}

uint64_t *std::shared_ptr<llvm::orc::DefinitionGenerator>::shared_ptr[abi:nn200100]<llvm::orc::DefinitionGenerator,std::default_delete<llvm::orc::DefinitionGenerator>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<llvm::orc::DefinitionGenerator  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t std::__shared_ptr_pointer<llvm::orc::DefinitionGenerator  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::ostringstream::basic_ostringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 24;
  v3 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v4 = a1 + 8;
  v5 = *(MEMORY[0x277D82828] + 16);
  v6 = *(MEMORY[0x277D82828] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *(a1 + 112) = v3;
  v8 = MEMORY[0x277D82868] + 16;
  *a1 = v2;
  *(a1 + 8) = v8;
  MEMORY[0x277C69D40](a1 + 16);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v4);
  return a1;
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277C69B60](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = a2 + a3;
    if ((*(v6 + 8) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 144);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x277C69B70](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t llvm::SmallVectorImpl<std::tuple<llvm::orc::ExecutorAddr,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v5 = a2 + 2;
    v4 = *a2;
    if (*a2 == a2 + 2)
    {
      v7 = a2 + 1;
      v8 = *(a2 + 2);
      v9 = *(a1 + 8);
      if (v9 >= v8)
      {
        if (v8)
        {
          v11 = *a1;
          v12 = v4 + 24 * v8;
          do
          {
            *v11 = *v4;
            v11[1] = *(v4 + 8);
            *(v11 + 16) = *(v4 + 16);
            v4 += 24;
            v11 += 3;
          }

          while (v4 != v12);
        }
      }

      else
      {
        if (*(a1 + 12) >= v8)
        {
          if (v9)
          {
            v13 = v4 + 24 * v9;
            v14 = *a1;
            do
            {
              *v14 = *v4;
              v14[1] = *(v4 + 8);
              *(v14 + 16) = *(v4 + 16);
              v4 += 24;
              v14 += 3;
            }

            while (v4 != v13);
          }

          else
          {
            v9 = 0;
          }

          v10 = v8;
        }

        else
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 24);
          v9 = 0;
          v10 = *v7;
        }

        v15 = v10 - v9;
        if (v15)
        {
          memcpy((*a1 + 24 * v9), (*a2 + 24 * v9), 24 * v15);
        }
      }

      *(a1 + 8) = v8;
    }

    else
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = a2 + 1;
      *(a1 + 8) = a2[1];
      *a2 = v5;
      *(a2 + 3) = 0;
    }

    *v7 = 0;
  }

  return a1;
}

void anonymous namespace::MachOPlatformCompleteBootstrapMaterializationUnit::~MachOPlatformCompleteBootstrapMaterializationUnit(_anonymous_namespace_::MachOPlatformCompleteBootstrapMaterializationUnit *this)
{
  *this = &unk_2883EC608;
  v5 = (this + 136);
  std::vector<llvm::orc::shared::AllocActionCallPair>::__destroy_vector::operator()[abi:nn200100](&v5);
  v2 = *(this + 9);
  if (v2 != this + 88)
  {
    free(v2);
  }

  v3 = *(this + 8);
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  *this = &unk_2883EBCD0;
  v4 = *(this + 4);
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 1);
}

{
  *this = &unk_2883EC608;
  v5 = (this + 136);
  std::vector<llvm::orc::shared::AllocActionCallPair>::__destroy_vector::operator()[abi:nn200100](&v5);
  v2 = *(this + 9);
  if (v2 != this + 88)
  {
    free(v2);
  }

  v3 = *(this + 8);
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  *this = &unk_2883EBCD0;
  v4 = *(this + 4);
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 1);
  MEMORY[0x277C69E40](this, 0x10F1C407EA5DECDLL);
}

void anonymous namespace::MachOPlatformCompleteBootstrapMaterializationUnit::materialize(uint64_t a1)
{
  v3[76] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  std::string::basic_string[abi:nn200100]<0>(&__p, "<OrcRTCompleteBootstrap>");
}

void llvm::orc::shared::WrapperFunctionCall::Create<llvm::orc::shared::SPSArgList<>>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_2750C12E0;
  llvm::SmallVectorImpl<char>::resizeImpl<false>(&v12, 0);
  v5 = v7;
  v6 = xmmword_2750C12E0;
  if (v13)
  {
    llvm::SmallVectorImpl<char>::operator=(&v5, &v12);
    v8 = a1;
    v9 = v11;
    v10 = xmmword_2750C12E0;
    if (v6)
    {
      llvm::SmallVectorImpl<char>::operator=(&v9, &v5);
    }
  }

  else
  {
    v8 = a1;
    v9 = v11;
    v10 = xmmword_2750C12E0;
  }

  llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::Expected<llvm::orc::shared::WrapperFunctionCall>(a2, &v8);
  if (v9 != v11)
  {
    free(v9);
  }

  if (v5 != v7)
  {
    free(v5);
  }

  if (v12 != v14)
  {
    free(v12);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void *llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,unsigned long long &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 64, 3);
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  v11[2] = a2;
  v11[3] = 0;
  v11[4] = v12;
  v11[5] = 0;
  v11[6] = 0;
  v11[7] = 0;
  *v11 = v13;
  v11[1] = (v15 << 8) | (8 * (__clz(__rbit64(v14)) & 0x1F)) | 1;
  v17 = v11;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 32, &v17, v18);
  return v11;
}

void *llvm::detail::UniqueFunctionBase<void,llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long>::CallImpl<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSTuple<BOOL,llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSExecutorAddr>>>>> ()(llvm::orc::shared::SPSExecutorAddr),llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSTuple<BOOL,llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSExecutorAddr>>>>> ()(llvm::orc::shared::SPSExecutorAddr),llvm::orc::MachOPlatform,llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr>(llvm::orc::MachOPlatform *,void (llvm::orc::MachOPlatform::*)(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr))::{lambda(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>&&,llvm::orc::ExecutorAddr&&)#1}>(llvm::orc::MachOPlatform&&)::{lambda(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)#1}>(void *a1, __int128 *a2, uint64_t *a3, unint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v16, a2);
  if (a4 <= 7)
  {
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Could not deserialize arguments for wrapper function call", v23);
    if ((v17 & 2) != 0)
    {
      v12 = &v16;
    }

    else
    {
      v12 = v16;
    }

    (*(v17 & 0xFFFFFFFFFFFFFFF8))(v12, v23);
    if (*(&v23[0] + 1) < 9uLL)
    {
      if (*(&v23[0] + 1))
      {
        goto LABEL_14;
      }

      v13 = *&v23[0];
      if (!*&v23[0])
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = *&v23[0];
    }

    free(v13);
    goto LABEL_14;
  }

  v7 = *a3;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v18, &v16);
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v19, v18);
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v23, v19);
  v20 = operator new(0x20uLL, 8uLL);
  v21 = xmmword_2750C12D0;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v20, v23);
  v22 = llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>>::CallbacksHolder<void llvm::orc::shared::detail::WrapperFunctionAsyncHandlerHelper<void ()(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &&,llvm::orc::ExecutorAddr&&),llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExpected<BOOL,llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSSequence>>>>> ()(llvm::orc::shared::SPSSequence)>::ResultSerializer,llvm::orc::shared::SPSSequence>::applyAsync<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExpected<BOOL,llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSSequence>>>>,llvm::orc::MachOPlatform,llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr>(llvm::orc::MachOPlatform *,void (void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)::*)(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr))::{lambda(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &,llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &&)#1} &,llvm::orc::shared::WrapperFunctionResult>(llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExpected<BOOL,llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSSequence>>>>,llvm::orc::MachOPlatform,llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr>(llvm::orc::MachOPlatform *,void (void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)::*)(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr))::{lambda(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &,llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &&)#1} &,void (&&)(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long),llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,unsigned long)::{lambda(llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExpected<BOOL,llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSSequence>>>>,llvm::orc::MachOPlatform,llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr>(llvm::orc::MachOPlatform *,void (void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)::*)(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr))::{lambda(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &,llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &&)#1})#1},void (&)(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long),void>::Callbacks
      + 4;
  v8 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v23);
  v9 = a1[1];
  v10 = a1[2];
  v11 = (*a1 + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v8, &v20);
  v9(v11, v23, v7);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v23);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v20);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v19);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v18);
LABEL_14:
  result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>>::CallImpl<void llvm::orc::shared::detail::WrapperFunctionAsyncHandlerHelper<void ()(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &&,llvm::orc::ExecutorAddr&&),llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExpected<BOOL,llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSSequence>>>>> ()(llvm::orc::shared::SPSSequence)>::ResultSerializer,llvm::orc::shared::SPSSequence>::applyAsync<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExpected<BOOL,llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSSequence>>>>,llvm::orc::MachOPlatform,llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr>(llvm::orc::MachOPlatform *,void (void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)::*)(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr))::{lambda(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &,llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &&)#1} &,llvm::orc::shared::WrapperFunctionResult>(llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExpected<BOOL,llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSSequence>>>>,llvm::orc::MachOPlatform,llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr>(llvm::orc::MachOPlatform *,void (void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)::*)(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr))::{lambda(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &,llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &&)#1} &,void (&&)(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long),llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,unsigned long)::{lambda(llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExpected<BOOL,llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSSequence>>>>,llvm::orc::MachOPlatform,llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr>(llvm::orc::MachOPlatform *,void (void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)::*)(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::orc::ExecutorAddr))::{lambda(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &,llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)> &&)#1})#1}>(void *a1, uint64_t *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 24);
  v33 = v5 & 1;
  v6 = *a2;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    v3 = a2[1];
    v2 = a2[2];
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v35 = v3;
    v36 = v2;
    v32[1] = 0;
    v32[2] = 0;
  }

  v32[0] = 0;
  v37 = v5 & 1;
  v39 = v5 & 1;
  if (v5)
  {
    v34 = 0;
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v38[0] = 0;
    *&v31 = v6;
    llvm::toString(&v31, &__p);
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v24 = 1;
    v25 = v6;
    v26 = v3;
    memset(v38, 0, sizeof(v38));
    v27 = v2;
    memset(&__p, 0, sizeof(__p));
  }

  v7 = v24;
  if (v24 == 1)
  {
    v8 = v25;
    if (v25 == v26)
    {
      v12 = 9;
      *(&v31 + 1) = 9;
      goto LABEL_22;
    }

    v9 = 8;
    do
    {
      v10 = *(v8 + 24) - *(v8 + 16) + 17;
      if (*(v8 + 24) == *(v8 + 16))
      {
        v10 = 17;
      }

      v9 += v10;
      v8 += 40;
    }

    while (v8 != v26);
  }

  else
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = size + 8;
  }

  v12 = v9 + 1;
  *&v31 = 0;
  *(&v31 + 1) = v9 + 1;
  if (v9 + 1 >= 9)
  {
LABEL_22:
    v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
    *&v31 = v13;
    v7 = v24;
    v9 = v12 - 1;
    goto LABEL_23;
  }

  v13 = &v31;
  v29 = &v31;
  v30 = v9 + 1;
  if (v9 == -1)
  {
    goto LABEL_33;
  }

LABEL_23:
  *v13 = v7;
  v29 = (v13 + 1);
  v30 = v9;
  if (v7)
  {
    if (v9 >= 8)
    {
      *(v13 + 1) = 0xCCCCCCCCCCCCCCCDLL * ((v26 - v25) >> 3);
      v29 = (v13 + 9);
      v30 = v9 - 8;
      v14 = v25;
      v15 = v26;
      while (v14 != v15)
      {
        if (v30 < 8)
        {
          goto LABEL_33;
        }

        *v29 = *v14;
        v16 = v29;
        v17 = v30 == 8;
        v29 = (v29 + 8);
        v30 -= 8;
        if (v17)
        {
          goto LABEL_33;
        }

        *(v16 + 8) = *(v14 + 8);
        v29 = (v16 + 9);
        --v30;
        v18 = v14 + 16;
        if (!llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSExecutorAddr>,std::vector<llvm::orc::ExecutorAddr>,void>::serialize(&v29, (v14 + 16)))
        {
          goto LABEL_33;
        }

        v14 = v18 + 24;
      }

      goto LABEL_32;
    }
  }

  else if (llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::serialize(&v29, &__p))
  {
LABEL_32:
    *v23 = v31;
    goto LABEL_37;
  }

LABEL_33:
  llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", v23);
  if (*(&v31 + 1) > 8uLL || !*(&v31 + 1) && v31)
  {
    free(v31);
  }

LABEL_37:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&v31 = &v25;
  std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>::__destroy_vector::operator()[abi:nn200100](&v31);
  llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>::~Expected(v38);
  v19 = a1[3];
  if ((v19 & 2) == 0)
  {
    a1 = *a1;
  }

  (*(v19 & 0xFFFFFFFFFFFFFFF8))(a1, v23);
  if (v23[1] >= 9)
  {
    v20 = v23[0];
LABEL_45:
    free(v20);
    goto LABEL_46;
  }

  if (!v23[1])
  {
    v20 = v23[0];
    if (v23[0])
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>::~Expected(&v34);
  result = llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>::~Expected(v32);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::detail::UniqueFunctionBase<void,llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long>::CallImpl<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSSequence<char>,llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSMachOExecutorSymbolFlags>>> ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSSequence<char>,BOOL>>,BOOL),llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSSequence<char>,llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSMachOExecutorSymbolFlags>>> ()(llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSSequence<char>,BOOL>>,BOOL),llvm::orc::MachOPlatform,llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL>(llvm::orc::MachOPlatform *,void (llvm::orc::MachOPlatform::*)(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL))::{lambda(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>&&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&)#1}>(llvm::orc::MachOPlatform&&)::{lambda(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)#1}>(void *a1, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v24, a2);
  if (a4 < 8 || (a4 & 0xFFFFFFFFFFFFFFF8) == 8)
  {
    goto LABEL_3;
  }

  v11 = *(a3 + 8);
  v17 = a1;
  v18 = *a3;
  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::StringRef,BOOL>>>(v11);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (a4 == 16)
  {
LABEL_3:
    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Could not deserialize arguments for wrapper function call", &v19);
    if ((v25 & 2) != 0)
    {
      v7 = &v24;
    }

    else
    {
      v7 = v24;
    }

    (*(v25 & 0xFFFFFFFFFFFFFFF8))(v7, &v19);
    if (__p >= 9)
    {
      v8 = v19;
LABEL_10:
      free(v8);
      goto LABEL_11;
    }

    if (!__p)
    {
      v8 = v19;
      if (v19)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v12 = *(a3 + 16);
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v26, &v24);
    v19 = v18;
    __p = 0;
    v21 = 0;
    v22 = 0;
    v23 = v12;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v27, v26);
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v31, v27);
    v28 = operator new(0x20uLL, 8uLL);
    v29 = xmmword_2750C12D0;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v28, v31);
    v30 = llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>>::CallbacksHolder<void llvm::orc::shared::detail::WrapperFunctionAsyncHandlerHelper<void ()(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&),llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<void ()(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&)<char>,llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSMachOExecutorSymbolFlags>>> ()(llvm::orc::shared::SPSSequence,void ()(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&)<llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSExpected,BOOL>>,BOOL)>::ResultSerializer,llvm::orc::shared::SPSSequence,llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<void ()(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&)<char>,llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSMachOExecutorSymbolFlags>>,BOOL>::applyAsync<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<void ()(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&)<char>,llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSMachOExecutorSymbolFlags>>>,llvm::orc::MachOPlatform,llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>>,BOOL>(llvm::orc::MachOPlatform *,void (char const*::*)(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>>,BOOL))::{lambda(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &,llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,std::vector<std::pair<llvm::StringRef,BOOL>>,std::vector<std::pair<llvm::StringRef,BOOL>> const)#1} &,llvm::orc::ExecutionSession::wrapAsyncWithSPS>(llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<void ()(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&)<char>,llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSMachOExecutorSymbolFlags>>>,llvm::orc::MachOPlatform,llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>>,BOOL>(llvm::orc::MachOPlatform *,void (char const*::*)(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>>,BOOL))::{lambda(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &,llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,std::vector<std::pair<llvm::StringRef,BOOL>>,std::vector<std::pair<llvm::StringRef,BOOL>> const)#1} &,char const*&&,void ()(llvm::orc::shared::WrapperFunctionResult),unsigned long)::{lambda(void (char const*::*)(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>>,BOOL))#1},llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<void ()(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&)<char>,llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSMachOExecutorSymbolFlags>>>,llvm::orc::MachOPlatform,llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>>,BOOL>(llvm::orc::MachOPlatform *,void (char const*::*)(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>>,BOOL))::{lambda(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &,llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,std::vector<std::pair<llvm::StringRef,BOOL>>,std::vector<std::pair<llvm::StringRef,BOOL>> const)#1} &,void>::Callbacks
        + 4;
    v13 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v31);
    v14 = a1[1];
    v15 = v17[2];
    v16 = (*v17 + (v15 >> 1));
    if (v15)
    {
      v14 = *(*v16 + v14);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v13, &v28);
    v14(v16, v31, v18, &__p, v12 & 1);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v31);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v28);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v27);
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v26);
  }

LABEL_11:
  result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v24);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::StringRef,BOOL>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>>::CallImpl<void llvm::orc::shared::detail::WrapperFunctionAsyncHandlerHelper<void ()(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&),llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<void ()(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&)<char>,llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSMachOExecutorSymbolFlags>>> ()(llvm::orc::shared::SPSSequence,void ()(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&)<llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSExpected,BOOL>>,BOOL)>::ResultSerializer,llvm::orc::shared::SPSSequence,llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<void ()(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&)<char>,llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSMachOExecutorSymbolFlags>>,BOOL>::applyAsync<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<void ()(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&)<char>,llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSMachOExecutorSymbolFlags>>>,llvm::orc::MachOPlatform,llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>>,BOOL>(llvm::orc::MachOPlatform *,void (char const*::*)(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>>,BOOL))::{lambda(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &,llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,std::vector<std::pair<llvm::StringRef,BOOL>>,std::vector<std::pair<llvm::StringRef,BOOL>> const)#1} &,llvm::orc::ExecutionSession::wrapAsyncWithSPS>(llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)> llvm::orc::ExecutionSession::wrapAsyncWithSPS<llvm::orc::shared::SPSExpected<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<void ()(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,llvm::orc::ExecutorAddr&&,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL &&)<char>,llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSMachOExecutorSymbolFlags>>>,llvm::orc::MachOPlatform,llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>>,BOOL>(llvm::orc::MachOPlatform *,void (char const*::*)(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>>,BOOL))::{lambda(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &,llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)> &&,std::vector<std::pair<llvm::StringRef,BOOL>>,std::vector<std::pair<llvm::StringRef,BOOL>> const)#1} &,char const*&&,void ()(llvm::orc::shared::WrapperFunctionResult),unsigned long)::{lambda(void (char const*::*)(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>>,BOOL))#1}>(void *a1, uint64_t *a2)
{
  v3 = *(a2 + 16);
  v4 = *a2;
  if (v3)
  {
    *a2 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    *&v33 = v4;
    llvm::toString(&v33, &__p);
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v4 = 0;
  }

  else
  {
    v5 = a2[1];
    v27 = 1;
    v28 = v4;
    v29 = v5;
    memset(&__p, 0, sizeof(__p));
  }

  v6 = v27;
  if (v27 == 1)
  {
    if (!v29)
    {
      v12 = 9;
      *(&v33 + 1) = 9;
      goto LABEL_18;
    }

    v7 = 32 * v29;
    v8 = (v28 + 8);
    v9 = 8;
    do
    {
      v10 = *v8;
      v8 += 4;
      v9 += v10 + 17;
      v7 -= 32;
    }

    while (v7);
  }

  else
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = size + 8;
  }

  v12 = v9 + 1;
  *&v33 = 0;
  *(&v33 + 1) = v9 + 1;
  if (v9 + 1 >= 9)
  {
LABEL_18:
    v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
    *&v33 = v13;
    v6 = v27;
    v9 = v12 - 1;
    goto LABEL_19;
  }

  v13 = &v33;
  v31 = &v33;
  v32 = v9 + 1;
  if (v9 == -1)
  {
    goto LABEL_35;
  }

LABEL_19:
  *v13 = v6;
  v31 = (v13 + 1);
  v32 = v9;
  if (v6)
  {
    v14 = v9 - 8;
    if (v9 >= 8)
    {
      *(v13 + 1) = v29;
      v15 = (v13 + 9);
      v31 = (v13 + 9);
      v32 = v9 - 8;
      if (v29)
      {
        if (v14 >= 8)
        {
          v16 = 32 * v29 - 32;
          v17 = v28 + 16;
          do
          {
            v18 = *(v17 - 16);
            v19 = *(v17 - 8);
            *v15 = v19;
            v20 = v15 + 1;
            v21 = v14 - 8;
            v31 = v20;
            v32 = v14 - 8;
            if (v19)
            {
              v22 = v21 >= v19;
              v21 -= v19;
              if (!v22)
              {
                goto LABEL_35;
              }

              memcpy(v20, v18, v19);
              v20 = (v20 + v19);
              v31 = v20;
              v32 = v21;
            }

            if (v21 < 8)
            {
              break;
            }

            *v20 = *v17;
            v23 = v31++;
            v32 = v21 - 8;
            if (v21 == 8)
            {
              break;
            }

            *(v23 + 8) = *(v17 + 8);
            v15 = (v23 + 9);
            v14 = v21 - 9;
            v31 = v15;
            v32 = v21 - 9;
            if (!v16)
            {
              goto LABEL_34;
            }

            v16 -= 32;
            v17 += 32;
          }

          while (v14 >= 8);
        }

        goto LABEL_35;
      }

LABEL_34:
      *v26 = v33;
      goto LABEL_39;
    }
  }

  else if (llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::serialize(&v31, &__p))
  {
    goto LABEL_34;
  }

LABEL_35:
  llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", v26);
  if (*(&v33 + 1) > 8uLL || !*(&v33 + 1) && v33)
  {
    free(v33);
  }

LABEL_39:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v3 & (v4 != 0)) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  v24 = a1[3];
  if ((v24 & 2) == 0)
  {
    a1 = *a1;
  }

  (*(v24 & 0xFFFFFFFFFFFFFFF8))(a1, v26);
  if (v26[1] < 9)
  {
    if (v26[1])
    {
      goto LABEL_50;
    }

    v25 = v26[0];
    if (!v26[0])
    {
      goto LABEL_50;
    }
  }

  else
  {
    v25 = v26[0];
  }

  free(v25);
LABEL_50:
  if ((v3 & (v4 != 0)) != 0)
  {
    (*(*v4 + 8))(v4);
    (*(*v4 + 8))(v4);
  }
}

void std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>,std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 8) = *(v5 + 8);
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 16) = 0;
      *(a3 + 16) = *(v5 + 16);
      *(a3 + 32) = *(v5 + 32);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
    do
    {
      v6 = *(v4 + 16);
      if (v6)
      {
        *(v4 + 24) = v6;
        operator delete(v6);
      }

      v4 += 40;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>::~Expected(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    v4 = a1;
    std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>::__destroy_vector::operator()[abi:nn200100](&v4);
  }

  return a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallImpl<llvm::orc::MachOPlatform::pushInitializersLoop(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>)::$_1>(uint64_t *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  *a2 = 0;
  v4 = (a1 + 1);
  v5 = *a1;
  if (v3)
  {
    v12 = -1;
    *&v11 = v3;
    v6 = a1[4];
    if ((v6 & 2) == 0)
    {
      v4 = *v4;
    }

    (*(v6 & 0xFFFFFFFFFFFFFFF8))(v4, &v11);
    result = llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>::~Expected(&v11);
  }

  else
  {
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(&v11, v4);
    v8 = a1[5];
    v10 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 1u, memory_order_relaxed);
      llvm::orc::MachOPlatform::pushInitializersLoop(v5, &v11, &v10);
      llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v8);
    }

    else
    {
      llvm::orc::MachOPlatform::pushInitializersLoop(v5, &v11, &v10);
    }

    result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v11);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Error>::MoveImpl<llvm::orc::MachOPlatform::pushInitializersLoop(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>)::$_1>(void *a1, uint64_t a2)
{
  *a1 = *a2;
  result = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((a1 + 1), (a2 + 8));
  a1[5] = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *llvm::detail::UniqueFunctionBase<void,llvm::Error>::DestroyImpl<llvm::orc::MachOPlatform::pushInitializersLoop(llvm::unique_function<void ()(llvm::Expected<std::vector<std::pair<llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOJITDylibDepInfo>>>)>,llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>)::$_1>(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v2);
  }

  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 8));
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>>::CallImpl<llvm::orc::MachOPlatform::rt_pushSymbols(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL)::$_0>(uint64_t *a1, uint64_t *a2, double a3, __n128 a4)
{
  v4 = a1;
  v29 = *MEMORY[0x277D85DE8];
  v22 = a2[3] & 1;
  v5 = *a2;
  if (v22)
  {
    *a2 = 0;
    v20[0] = 0;
    v28 = -1;
    v27 = v5;
    v6 = a1[3];
    if ((v6 & 2) == 0)
    {
      v4 = *a1;
    }

    (*(v6 & 0xFFFFFFFFFFFFFFF8))(v4, &v27);
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }

    v7 = v27;
    v27 = 0;
    if (!v7)
    {
      goto LABEL_27;
    }

LABEL_26:
    ((*v7)[1])(v7);
    goto LABEL_27;
  }

  a4.n128_u64[0] = 0;
  v8 = a2[1];
  v20[1] = v8;
  v9 = *(a2 + 4);
  v21 = *(a2 + 4);
  *(a2 + 4) = 0;
  *a2 = a4;
  v20[0] = v5;
  if (*(a1 + 32) == 1)
  {
    v25[0] = 0;
    v25[1] = 0;
    v26 = 0;
    v10 = a1[3];
    if ((v10 & 2) == 0)
    {
      v4 = *a1;
    }

    (*(v10 & 0xFFFFFFFFFFFFFFF8))(v4, v25);
    if (v26)
    {
      v7 = v25[0];
      v25[0] = 0;
      if (v7)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    if (v8)
    {
      if (v9)
      {
        v11 = 24 * v9;
        v12 = v5;
        while ((*v12 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v12 += 3;
          v11 -= 24;
          if (!v11)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v12 = v5;
      }

      v13 = &v5[3 * v9];
      if (v12 != v13)
      {
        v14 = (*(v12 + 17) >> 4) & 2 | (*(v12 + 17) >> 1) & 1;
        v15 = v12[1];
        v19 = **v12;
        operator new();
      }
    }

LABEL_22:
    v24 = 0;
    v23[0] = 0;
    v23[1] = 0;
    v16 = a1[3];
    if ((v16 & 2) == 0)
    {
      v4 = *a1;
    }

    (*(v16 & 0xFFFFFFFFFFFFFFF8))(v4, v23);
    if (v24)
    {
      v7 = v23[0];
      v23[0] = 0;
      if (v7)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  result = llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(v20);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>>::MoveImpl<llvm::orc::MachOPlatform::rt_pushSymbols(llvm::unique_function<void ()(llvm::Expected<llvm::ArrayRef<std::tuple<llvm::StringRef,llvm::orc::ExecutorAddr,llvm::orc::MachOPlatform::MachOExecutorSymbolFlags>>>)>,llvm::orc::ExecutorAddr,std::vector<std::pair<llvm::StringRef,BOOL>> const&,BOOL)::$_0>(uint64_t a1, uint64_t a2)
{
  result = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(a1, a2);
  *(result + 32) = *(a2 + 32);
  return result;
}

void llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSExpected<unsigned long long> ()(void)>::call<llvm::Error llvm::orc::ExecutorProcessControl::callSPSWrapper<llvm::orc::shared::SPSExpected<unsigned long long> ()(void),llvm::Expected<unsigned long long> &>(llvm::orc::ExecutorAddr,llvm::Expected<unsigned long long> &)::{lambda(char const*,unsigned long)#1},llvm::Expected<unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    *a2 = 0;
  }

  v4 = 0;
  v5 = 0;
  v3 = *a1;
  v2 = a1[1];
  llvm::orc::ExecutorProcessControl::callWrapper();
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::MachOPlatform::MachOPlatformPlugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_0>(llvm::jitlink::LinkGraph *this@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v63[37] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(*a2 + 72);
  v6 = v5[8];
  v7 = v5[9];
  v8 = *v6;
  v9 = v5[48] + 80;
  v61 = v6 + 2;
  v62 = v8;
  v10 = *v7;
  v63[0] = v9;
  v63[1] = v7 + 2;
  v63[2] = v10;
  v63[3] = v5 + 10;
  v11 = v5[11];
  v12 = *v11;
  v63[4] = v11 + 2;
  v63[5] = v12;
  v13 = v5[17];
  v14 = *v13;
  v63[6] = v5 + 12;
  v63[7] = v13 + 2;
  v63[8] = v14;
  v63[9] = v5 + 18;
  v15 = v5[19];
  v16 = *v15;
  v63[10] = v15 + 2;
  v63[11] = v16;
  v17 = v5[21];
  v18 = *v17;
  v63[12] = v5 + 20;
  v63[13] = v17 + 2;
  v63[14] = v18;
  v63[15] = v5 + 22;
  v19 = v5[23];
  v20 = *v19;
  v63[16] = v19 + 2;
  v63[17] = v20;
  v21 = v5[25];
  v22 = *v21;
  v63[18] = v5 + 24;
  v63[19] = v21 + 2;
  v63[20] = v22;
  v63[21] = v5 + 26;
  v23 = v5[27];
  v24 = *v23;
  v63[22] = v23 + 2;
  v63[23] = v24;
  v25 = v5[29];
  v26 = *v25;
  v63[24] = v5 + 28;
  v63[25] = v25 + 2;
  v63[26] = v26;
  v63[27] = v5 + 30;
  v27 = v5[31];
  v28 = *v27;
  v63[28] = v27 + 2;
  v63[29] = v28;
  v29 = v5[33];
  v30 = *v29;
  v63[30] = v5 + 32;
  v63[31] = v29 + 2;
  v63[32] = v30;
  v63[33] = v5 + 34;
  v31 = v5[35];
  v32 = *v31;
  v63[34] = v31 + 2;
  v63[35] = v32;
  v63[36] = v5 + 36;
  llvm::jitlink::LinkGraph::defined_symbols(this, v57);
  v55[0] = v57[0];
  v55[1] = v57[1];
  v55[2] = v57[2];
  v56 = v58;
  v33 = v59;
  v34 = v60;
  v35 = v58;
  if (*&v57[0] != v59 || v56 != v60)
  {
    v36 = 0;
    v50 = a3;
    do
    {
      v37 = *v35;
      v38 = **v35;
      v39 = v63;
      v40 = 312;
      do
      {
        if (v38)
        {
          v41 = *v38;
          if (*v38 == *(v39 - 1))
          {
            v42 = *(v39 - 2);
            if (!v41 || !memcmp(v38 + 2, *(v39 - 2), *v38))
            {
              if (**v39)
              {
                v54 = 1283;
                v53[0] = "Duplicate ";
                v53[2] = v42;
                v53[3] = v41;
                v51[0] = v53;
                v51[2] = " detected during MachOPlatform bootstrap";
                v52 = 770;
                getErrorErrorCat();
                operator new();
              }

              v36 |= v38 == *(*(v4 + 72) + 64);
              **v39 = (v37[2] & 0x1FFFFFFFFFFFFFFLL) + *v37[1];
            }
          }
        }

        v39 += 3;
        v40 -= 24;
      }

      while (v40);
      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(v55, v51);
      v35 = v56;
    }

    while (*&v55[0] != v33 || v56 != v34);
    a3 = v50;
    if (v36)
    {
      v44 = *(v4 + 72);
      std::mutex::lock(v44 + 5);
      v45 = *(v4 + 72);
      v46 = v45[48];
      *&v57[0] = v45[2];
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>,llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>::FindAndConstruct(v45 + 49, v57)[1] = *(v46 + 80);
      v47 = *(v4 + 72);
      v48 = v47[2];
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::FindAndConstruct(v47 + 52, (v47[48] + 80))[1] = v48;
      std::mutex::unlock(v44 + 5);
    }
  }

  *a3 = 0;
  v49 = *MEMORY[0x277D85DE8];
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::MachOPlatform::MachOPlatformPlugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_1>(llvm::jitlink::LinkGraph *this@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v31[7] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  llvm::jitlink::LinkGraph::defined_symbols(this, v18);
  v26 = *v18;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v7 = v22;
  v8 = v25;
  v9 = v21;
  if (v18[0] != v22 || v29 != v25)
  {
    do
    {
      if (**v9 == *(*(v5 + 72) + 64))
      {
        break;
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(&v26, &v30);
      v9 = v29;
    }

    while (v26 != v7 || v29 != v8);
  }

  v11 = *v6;
  v12 = *(v5 + 72);
  std::mutex::lock(v12 + 5);
  v17 = (*(*v9 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v9 + 8);
  v18[0] = v11;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>,llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>::FindAndConstruct((*(v5 + 72) + 392), v18)[1] = v17;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::FindAndConstruct((*(v5 + 72) + 416), &v17)[1] = v11;
  llvm::orc::shared::WrapperFunctionCall::Create<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<char>,llvm::orc::shared::SPSExecutorAddr>,std::string,llvm::orc::ExecutorAddr>(*(*(v5 + 72) + 144), v11 + 8, &v17, &v30);
  v18[0] = v30;
  v18[1] = &v20;
  v19 = xmmword_2750C12E0;
  if (v31[1])
  {
    llvm::SmallVectorImpl<char>::operator=(&v18[1], v31);
  }

  llvm::orc::shared::WrapperFunctionCall::Create<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr>,llvm::orc::ExecutorAddr>(*(*(v5 + 72) + 160), &v17, &v26);
  *(&v21 + 1) = v26;
  v22 = v24;
  v23 = xmmword_2750C12E0;
  if (v27)
  {
    llvm::SmallVectorImpl<char>::operator=(&v22, &v26 + 1);
  }

  v13 = *(this + 35);
  v14 = this + 272;
  if (v13 >= *(this + 36))
  {
    v15 = std::vector<llvm::orc::shared::AllocActionCallPair>::__emplace_back_slow_path<llvm::orc::shared::AllocActionCallPair>(v14, v18);
  }

  else
  {
    std::allocator_traits<std::allocator<llvm::orc::shared::AllocActionCallPair>>::construct[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,llvm::orc::shared::AllocActionCallPair,0>(v14, *(this + 35), v18);
    v15 = v13 + 112;
  }

  *(this + 35) = v15;
  if (v22 != v24)
  {
    free(v22);
  }

  if (v18[1] != &v20)
  {
    free(v18[1]);
  }

  llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::~Expected(&v26);
  llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::~Expected(&v30);
  *a3 = 0;
  std::mutex::unlock(v12 + 5);
  v16 = *MEMORY[0x277D85DE8];
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::MachOPlatform::MachOPlatformPlugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_2>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X3>, void *a4@<X8>)
{
  v92 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = a1[1];
  SectionByName = llvm::jitlink::LinkGraph::findSectionByName(a2, llvm::orc::MachOObjCImageInfoSectionName, *(&llvm::orc::MachOObjCImageInfoSectionName + 1), a3);
  v81 = v7;
  if (SectionByName)
  {
    v11 = SectionByName;
    if (*(SectionByName + 40) != 1)
    {
      std::operator+<char>();
      v29 = std::string::append(v84, "__DATA,__objc_imageinfo contains multiple blocks");
      v30 = v29->__r_.__value_.__r.__words[2];
      *__p = *&v29->__r_.__value_.__l.__data_;
      v87 = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      getErrorErrorCat();
      v89[0] = 3;
      v89[1] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,std::string,std::error_code>();
    }

    v12 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(SectionByName + 32);
    llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, *v12, 0, 0, 0, 1);
    v13 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v11 + 32);
    v15 = *(v11 + 32) + 8 * *(v11 + 48);
    if (v15 != v13)
    {
      do
      {
        if (*(*v13 + 40) != *(*v13 + 48))
        {
          std::operator+<char>();
          v31 = std::string::append(&v83, ", ");
          v32 = v31->__r_.__value_.__r.__words[2];
          *v89 = *&v31->__r_.__value_.__l.__data_;
          *&v90 = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          *v84 = v89;
          *&v84[16] = llvm::orc::MachOObjCImageInfoSectionName;
          v85 = 1284;
          __p[0] = v84;
          v87 = " contains references to symbols";
          v88 = 770;
          getErrorErrorCat();
          operator new();
        }

        do
        {
          ++v13;
        }

        while (v13 != v14 && (*v13 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v13 != v15);
    }
  }

  v82 = a4;
  if (*(v8 + 40))
  {
    v16 = 0;
    for (i = 0; i != 352; i += 16)
    {
      v19 = *(&llvm::orc::MachOInitSectionNames + i);
      v18 = *(&llvm::orc::MachOInitSectionNames + i + 8);
      if (v18 != *(&llvm::orc::MachOObjCImageInfoSectionName + 1) || v18 && memcmp(*(&llvm::orc::MachOInitSectionNames + i), llvm::orc::MachOObjCImageInfoSectionName, *(&llvm::orc::MachOInitSectionNames + i + 8)))
      {
        v20 = llvm::jitlink::LinkGraph::findSectionByName(a2, v19, v18, v10);
        if (v20)
        {
          v21 = v20;
          if (*(v20 + 40))
          {
            if (!v16)
            {
              v22 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v20 + 32);
              v16 = llvm::jitlink::LinkGraph::addDefinedSymbol(a2, *v22, 0, (*(v8 + 40) + 16), **(v8 + 40), *(*v22 + 32), 0, 2, 0, 1);
            }

            v23 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v21 + 32);
            v25 = *(v21 + 32) + 8 * *(v21 + 48);
            if (v25 != v23)
            {
              v26 = v23;
              v27 = v24;
              do
              {
                if (*v26 != v16[1])
                {
                  v28 = llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, *v26, 0, *(*v26 + 32), 0, 1);
                  llvm::jitlink::Block::addEdge(v16[1], 1, 0, v28, 0);
                }

                do
                {
                  ++v26;
                }

                while (v26 != v27 && (*v26 | 0x1000) == 0xFFFFFFFFFFFFF000);
              }

              while (v26 != v25);
            }
          }
        }
      }
    }
  }

  *v82 = 0;
  v33 = a1[1];
  v34 = llvm::jitlink::LinkGraph::findSectionByName(a2, llvm::orc::MachOObjCImageInfoSectionName, *(&llvm::orc::MachOObjCImageInfoSectionName + 1), v10);
  if (v34)
  {
    v35 = v34;
    v36 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v34 + 32);
    v38 = *(v35 + 32) + 8 * *(v35 + 48);
    if (v38 == v36)
    {
      v91 = 1283;
      v41 = "Empty ";
      goto LABEL_39;
    }

    v39 = v36;
    for (j = v36 + 1; j != v37; ++j)
    {
      if ((*j | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_36;
      }
    }

    j = v37;
LABEL_36:
    if (j != v38)
    {
      v91 = 1283;
      v41 = "Multiple blocks in ";
LABEL_39:
      v89[0] = v41;
      v90 = llvm::orc::MachOObjCImageInfoSectionName;
      *v84 = v89;
      *&v84[16] = " section in ";
      v85 = 770;
      goto LABEL_40;
    }

    if (*(a2 + 208))
    {
      v42 = *(a2 + 216);
      if (v42)
      {
        v43 = 24 * v42;
        v44 = *(a2 + 200);
        while (*v44 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v44 += 3;
          v43 -= 24;
          if (!v43)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        v44 = *(a2 + 200);
      }

      v71 = *(a2 + 200) + 24 * v42;
LABEL_80:
      if (v44 != v71)
      {
        v72 = v44[2];
        if (v72 == v35)
        {
          goto LABEL_91;
        }

        v73 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v72 + 32);
        v75 = *(v72 + 32) + 8 * *(v72 + 48);
        if (v75 == v73)
        {
          goto LABEL_91;
        }

        do
        {
          for (k = *(*v73 + 40); k != *(*v73 + 48); k += 32)
          {
            v77 = *(*k + 8);
            if ((*(v77 + 8) & 1) != 0 && *(v77 + 16) == v35)
            {
              v85 = 773;
              *v84 = llvm::orc::MachOObjCImageInfoSectionName;
              *&v84[16] = " is referenced within file ";
LABEL_40:
              __p[0] = v84;
              v87 = (a2 + 96);
              v88 = 1026;
              getErrorErrorCat();
              operator new();
            }
          }

          do
          {
            ++v73;
          }

          while (v73 != v74 && (*v73 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

        while (v73 != v75);
LABEL_91:
        while (1)
        {
          v44 += 3;
          if (v44 == v71)
          {
            break;
          }

          if (*v44 < 0xFFFFFFFFFFFFFFFELL)
          {
            goto LABEL_80;
          }
        }
      }
    }

LABEL_46:
    v45 = *v39;
    v46 = *(*v39 + 24);
    v47 = *(a2 + 188) - 1;
    v49 = *v46;
    v48 = v46[1];
    v50 = bswap32(v49);
    v51 = v47 >= 2;
    if (v47 >= 2)
    {
      v52 = v50;
    }

    else
    {
      v52 = v49;
    }

    v53 = bswap32(v48);
    if (v51)
    {
      v48 = v53;
    }

    v54 = v48 & 0xFFFFFFEF;
    v55 = v81;
    std::mutex::lock((v81 + 8));
    v56 = *v33;
    v57 = *(v81 + 80);
    __p[0] = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>,llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>::LookupBucketFor<llvm::orc::JITDylib const*>(v57, *(v81 + 96), v56, __p) && __p[0] != (*(v81 + 80) + 24 * *(v81 + 96)))
    {
      if (*(__p[0] + 2) != v52)
      {
        std::operator+<char>();
        v78 = std::string::append(v84, " does not match first registered version");
        v79 = v78->__r_.__value_.__r.__words[2];
        *__p = *&v78->__r_.__value_.__l.__data_;
        v87 = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        getErrorErrorCat();
        v89[0] = 3;
        v89[1] = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,std::string,std::error_code>();
      }

      if (*(__p[0] + 3) != v54)
      {
        llvm::orc::MachOPlatform::MachOPlatformPlugin::mergeImageInfoFlags(v82, a2, __p[0] + 8, v54);
        if (*v82)
        {
          goto LABEL_95;
        }
      }

      v58 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v35 + 56);
      v60 = *(v35 + 56) + 8 * *(v35 + 72);
      if (v60 != v58)
      {
        v61 = v58;
        v62 = v59;
        do
        {
          v64 = *(*(*v61 + 8) + 16);
          __p[0] = *v61;
          v63 = __p[0];
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v64 + 56, __p);
          if ((*v63 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((*v63 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          do
          {
            ++v61;
          }

          while (v61 != v62 && (*v61 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

        while (v61 != v60);
      }

      llvm::jitlink::LinkGraph::removeBlock(a2, v45);
      v55 = v81;
LABEL_77:
      *v82 = 0;
LABEL_95:
      std::mutex::unlock((v55 + 8));
      goto LABEL_96;
    }

    llvm::jitlink::LinkGraph::addDefinedSymbol(a2, v45, 0, "__llvm_jitlink_macho_objc_imageinfo", 0x23uLL, v45[4], 0, 1, 0, 1);
    llvm::orc::ExecutionSession::intern(*(*v33 + 32), "__llvm_jitlink_macho_objc_imageinfo", 0x23uLL, &v83);
    v89[0] = v83.__r_.__value_.__l.__data_;
    v83.__r_.__value_.__r.__words[0] = 0;
    LOWORD(v89[1]) = 0;
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::DenseMap(v84, v89, 1);
    v65 = *(*v33 + 32);
    __p[0] = *v84;
    __p[1] = *&v84[8];
    memset(v84, 0, 20);
    LODWORD(v87) = *&v84[16];
    llvm::orc::ExecutionSession::OL_defineMaterializing(v33, __p, v82);
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(__p);
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v84);
    if (v89[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add(v89[0] + 1, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (v83.__r_.__value_.__r.__words[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v83.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    if (*v82)
    {
      goto LABEL_95;
    }

    v66 = *v33;
    __p[0] = 0;
    v67 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>,llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>::LookupBucketFor<llvm::orc::JITDylib const*>(*(v81 + 80), *(v81 + 96), v66, __p);
    v68 = __p[0];
    if (v67)
    {
LABEL_76:
      v68[2] = v52;
      v68[3] = v54;
      *(v68 + 16) = 0;
      goto LABEL_77;
    }

    v69 = *(v81 + 88);
    v70 = *(v81 + 96);
    if (4 * v69 + 4 >= 3 * v70)
    {
      v70 *= 2;
    }

    else if (v70 + ~v69 - *(v81 + 92) > v70 >> 3)
    {
LABEL_73:
      ++*(v81 + 88);
      if (*v68 != -4096)
      {
        --*(v81 + 92);
      }

      *v68 = v66;
      *(v68 + 1) = 0;
      v68[4] = 0;
      goto LABEL_76;
    }

    llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>::grow(v81 + 80, v70);
    __p[0] = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>,llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>::LookupBucketFor<llvm::orc::JITDylib const*>(*(v81 + 80), *(v81 + 96), v66, __p);
    v68 = __p[0];
    goto LABEL_73;
  }

  *v82 = 0;
LABEL_96:
  v80 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::MachOPlatform::MachOPlatformPlugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_3>@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X3>, void *a3@<X8>)
{
  v5 = 0;
  v6 = 176;
  v7 = &unk_2809A42A0;
  do
  {
    if (llvm::jitlink::LinkGraph::findSectionByName(a1, *(v7 - 1), *v7, a2))
    {
      ++v5;
    }

    v7 += 2;
    v6 -= 16;
  }

  while (v6);
  v8 = &_MergedGlobals_130 + 1;
  v9 = 144;
  do
  {
    result = llvm::jitlink::LinkGraph::findSectionByName(a1, *(v8 - 1), *v8, a2);
    if (result)
    {
      ++v5;
    }

    LOBYTE(v6) = (result != 0) | v6;
    v8 += 2;
    v9 -= 16;
  }

  while (v9);
  if (v5)
  {
    llvm::jitlink::LinkGraph::createSection();
  }

  *a3 = 0;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::MachOPlatform::MachOPlatformPlugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_4>@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X3>, void *a4@<X8>)
{
  v68 = *MEMORY[0x277D85DE8];
  v52 = *a1;
  result = llvm::jitlink::LinkGraph::findSectionByName(a2, "__llvm_jitlink_ObjCRuntimeRegistrationObject", 44, a3);
  if (result)
  {
    v7 = *(a2 + 160);
    if (v7 != 3 && v7 != 38)
    {
      std::operator+<char>();
      getErrorErrorCat();
      v59 = 3;
      v60 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,std::string,std::error_code>();
    }

    v51 = a4;
    v8 = *llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(result + 32);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    memset(__p, 0, sizeof(__p));
    std::vector<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc,std::allocator<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc>>::push_back[abi:nn200100](&v56, __p);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v66);
    v9 = v57;
    v10 = v57 - 112;
    *(v57 - 73) = 0u;
    *(v9 - 57) = 0u;
    *(v9 - 3) = 0u;
    *(v9 - 89) = 0u;
    strcpy(v9 - 112, "__objc_imageinfo__DATA");
    *(v9 - 9) = 8;
    v11 = operator new(0x28uLL, 8uLL);
    __p[0] = v11;
    *&__p[1] = xmmword_2750C12A0;
    *v11 = a2;
    *(v11 + 1) = v52;
    v11[3] = v8;
    v11[4] = v10;
    __p[3] = llvm::detail::UniqueFunctionBase<void,unsigned long>::CallbacksHolder<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::$_2,llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::$_2,void>::Callbacks;
    if (v9 - 32 != __p)
    {
      v12 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v9 - 4);
      llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v12, __p);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(__p);
    v14 = &unk_2809A42A0;
    v15 = 176;
    do
    {
      SectionByName = llvm::jitlink::LinkGraph::findSectionByName(a2, *(v14 - 1), *v14, v13);
      if (SectionByName)
      {
        v17 = SectionByName;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v63 = 0u;
        memset(__p, 0, sizeof(__p));
        std::vector<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc,std::allocator<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc>>::push_back[abi:nn200100](&v56, __p);
        llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v66);
        v9 = v57;
        llvm::jitlink::SectionRange::SectionRange(__p, v17);
        v19 = *v17;
        v18 = v17[1];
        *(v9 - 4) = 0u;
        *(v9 - 3) = 0u;
        *(v9 - 6) = 0u;
        *(v9 - 5) = 0u;
        *(v9 - 7) = 0u;
        v20 = v18 - 7;
        if (v18 >= 7)
        {
          v18 = 7;
        }

        memcpy(v9 - 112, v19 + v18, v20);
        v21 = *v19;
        *(v9 - 46) = *(v19 + 2);
        *(v9 - 24) = v21;
        v22 = __p[0];
        if (__p[0])
        {
          v23 = *__p[0];
        }

        else
        {
          v23 = 0;
        }

        *(v9 - 10) = v23 - *v8;
        v24 = __p[1];
        if (__p[1])
        {
          v24 = (*(__p[1] + 4) + *__p[1]);
        }

        if (v22)
        {
          v22 = *v22;
        }

        *(v9 - 9) = v24 - v22;
        *(v9 - 12) = 0;
      }

      v14 += 2;
      v15 -= 16;
    }

    while (v15);
    v25 = 0;
    v26 = 144;
    v27 = &_MergedGlobals_130 + 1;
    do
    {
      v28 = llvm::jitlink::LinkGraph::findSectionByName(a2, *(v27 - 1), *v27, v13);
      if (v28)
      {
        v29 = v28;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v63 = 0u;
        memset(__p, 0, sizeof(__p));
        std::vector<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc,std::allocator<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc>>::push_back[abi:nn200100](&v59, __p);
        llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v66);
        v25 = v60;
        llvm::jitlink::SectionRange::SectionRange(__p, v29);
        v31 = *v29;
        v30 = v29[1];
        *(v25 - 4) = 0u;
        *(v25 - 3) = 0u;
        *(v25 - 6) = 0u;
        *(v25 - 5) = 0u;
        *(v25 - 7) = 0u;
        v32 = v30 - 7;
        if (v30 >= 7)
        {
          v30 = 7;
        }

        memcpy(v25 - 14, v31 + v30, v32);
        v33 = *v31;
        *(v25 - 46) = *(v31 + 2);
        *(v25 - 24) = v33;
        v34 = __p[0];
        if (__p[0])
        {
          v35 = *__p[0];
        }

        else
        {
          v35 = 0;
        }

        *(v25 - 10) = (v35 - *v8);
        v36 = __p[1];
        if (__p[1])
        {
          v36 = (*(__p[1] + 4) + *__p[1]);
        }

        if (v34)
        {
          v34 = *v34;
        }

        *(v25 - 9) = (v36 - v34);
        *(v25 - 12) = 0;
      }

      v27 += 2;
      v26 -= 16;
    }

    while (v26);
    if (*(a2 + 160) == 3)
    {
      v37 = 0;
    }

    else
    {
      v37 = 3;
    }

    if (*(a2 + 160) == 3)
    {
      v38 = 16777228;
    }

    else
    {
      v38 = 16777223;
    }

    v39 = v59;
    if (v25 == v59)
    {
      v40 = 1;
    }

    else
    {
      v40 = 2;
    }

    v41 = v56;
    v42 = v8[3];
    v43 = v8[4];
    v55[0] = v42;
    v55[1] = v43;
    v44 = (72 << (v25 != v59)) + 80 * (-1227133513 * ((v25 - v59) >> 4) - 1227133513 * ((v9 - v56) >> 4));
    v53[0] = a2;
    v53[1] = &v54;
    __p[0] = v53;
    __p[1] = &v54;
    __p[2] = v55;
    v45 = *(a2 + 188) == 1;
    v46 = bswap32(v38);
    if (*(a2 + 188) == 1)
    {
      v47 = -17958193;
    }

    else
    {
      v38 = v46;
      v47 = -805638658;
    }

    *v42 = v47;
    *(v42 + 4) = v38;
    if (v45)
    {
      v48 = 6;
    }

    else
    {
      v37 <<= 24;
      v48 = 100663296;
    }

    *(v42 + 8) = v37;
    *(v42 + 12) = v48;
    v49 = bswap32(v44);
    if (v45)
    {
      v49 = v44;
    }

    else
    {
      v40 <<= 24;
    }

    *(v42 + 16) = v40;
    *(v42 + 20) = v49;
    *(v42 + 24) = 0;
    v54 = v42 + 32;
    if (v39 != v25)
    {
      llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::$_3::operator()(__p, "__TEXT", 6uLL, &v59);
    }

    if (v41 != v9)
    {
      llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::$_3::operator()(__p, "__DATA", 6uLL, &v56);
    }

    *v51 = 0;
    std::vector<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc,std::allocator<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc>>::~vector[abi:nn200100](&v56);
    result = std::vector<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc,std::allocator<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::SecDesc>>::~vector[abi:nn200100](&v59);
  }

  else
  {
    *a4 = 0;
  }

  v50 = *MEMORY[0x277D85DE8];
  return result;
}