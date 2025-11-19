void llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::graphifySymbols(uint64_t a1@<X0>, void *a2@<X8>)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  if (!v3)
  {
    *a2 = 0;
    goto LABEL_55;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,true>>(*(a1 + 24), v3, &v59);
  if (v61)
  {
    *a2 = v59;
    goto LABEL_55;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getStringTableForSymtab(*(a1 + 24), *(a1 + 48), *(a1 + 32), *(a1 + 40), v57);
  if (v58)
  {
    v5 = v57[0];
    v57[0] = 0;
    goto LABEL_48;
  }

  v5 = v60;
  if (v60)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = v59 + 24 * v6;
      if ((*(v8 + 4) & 0xF) != 4)
      {
        break;
      }

LABEL_20:
      v6 = v7;
      v20 = v60 == v7++;
      if (v20)
      {
        v5 = 0;
        goto LABEL_48;
      }
    }

    llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getName(v8, v57[0], v57[1], &v54);
    if (v56)
    {
      v9 = v54;
      v54 = 0;
LABEL_12:
      *a2 = v9;
      v10 = 1;
      goto LABEL_16;
    }

    v11 = *(v8 + 4);
    v12 = v11 & 0xF;
    if (v12 == 5 || *(v8 + 6) == 65522)
    {
      v13 = *(a1 + 8);
      CommonSection = llvm::jitlink::ELFLinkGraphBuilderBase::getCommonSection(a1);
      v16 = *(v8 + 8);
      v15 = *(v8 + 16);
      v50 = 0;
      v48 = v15;
      v47[0] = v16;
      v45[0] = 0;
      v17 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,unsigned long long &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v13, CommonSection, &v48, &v50, v47, v45);
      v18 = llvm::jitlink::LinkGraph::addDefinedSymbol(v13, v17, 0, v54, v55, *(v8 + 16), 1, 0, 0, 0);
      LODWORD(v50) = v7 - 1;
      *(llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>,unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::FindAndConstruct((a1 + 104), &v50) + 1) = v18;
      v10 = 8;
      goto LABEL_16;
    }

    if (*(v8 + 6))
    {
      v20 = v12 < 4 || v12 == 6;
      if (!v20)
      {
        goto LABEL_34;
      }

      llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolLinkageAndScope(v8, v54, v55, &v50);
      if (v51)
      {
        v9 = v50;
        goto LABEL_12;
      }

      v23 = v50;
      v24 = BYTE1(v50);
      v25 = *(v8 + 6);
      if (v25 == 0xFFFF)
      {
        v38 = v50;
        v48 = *(a1 + 48);
        v50 = 0;
        v10 = 8;
        if (!llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>((a1 + 128), &v48, &v50) || v50 == (*(a1 + 128) + 24 * *(a1 + 144)))
        {
          goto LABEL_16;
        }

        v32 = v50[2];
        v50 = v50[1];
        v51 = v32;
        v52 = 1;
        v53 = 0;
        llvm::object::getExtendedSymbolTableIndex<llvm::object::ELFType<(llvm::support::endianness)1,true>>(v7 - 1, &v50, &v48);
        if (v49)
        {
          v9 = v48;
          goto LABEL_12;
        }

        v25 = v48;
        v23 = v38;
      }

      GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, v25);
      if (GraphBlock)
      {
        v27 = GraphBlock;
        v37 = v23;
        v28 = (*(*a1 + 24))(a1, v8);
        v29 = (*(*a1 + 32))(a1, v8, v28);
        v30 = *(a1 + 8);
        if (v55)
        {
          v31 = llvm::jitlink::LinkGraph::addDefinedSymbol(v30, v27, v29, v54, v55, *(v8 + 16), v37, v24, (*(v8 + 4) & 0xF) == 2, 0);
        }

        else
        {
          v31 = llvm::jitlink::LinkGraph::addAnonymousSymbol(v30, v27, v29, *(v8 + 16), 0, 0);
        }

        v31[2] = v31[2] & 0x7FFFFFFFFFFFFFFFLL | (v28 << 63);
        LODWORD(v50) = v7 - 1;
        v10 = 0;
        *(llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>,unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::FindAndConstruct((a1 + 104), &v50) + 1) = v31;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      if (v11 < 0x10)
      {
LABEL_34:
        v10 = 0;
        goto LABEL_16;
      }

      v21 = v11 >> 4;
      if (v21 - 1 >= 2)
      {
        v45[0] = "Invalid symbol binding ";
        v46 = 259;
        v33 = *(v8 + 4) >> 4;
        v44 = 265;
        LODWORD(v43[0]) = v33;
        llvm::operator+(v45, v43, v47);
        v41 = " for external symbol ";
        v42 = 259;
        llvm::operator+(v47, &v41, &v48);
        v40 = 261;
        v39[0] = v54;
        v39[1] = v55;
        llvm::operator+(&v48, v39, &v50);
        getErrorErrorCat();
        llvm::make_error<llvm::StringError,llvm::Twine,std::error_code>();
      }

      v22 = llvm::jitlink::LinkGraph::addExternalSymbol(*(a1 + 8), v54, v55, *(v8 + 16), v21 == 2);
      LODWORD(v50) = v7 - 1;
      v10 = 0;
      *(llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>,unsigned int,llvm::jitlink::Block *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::Block *>>::FindAndConstruct((a1 + 104), &v50) + 1) = v22;
    }

LABEL_16:
    if (v56)
    {
      v19 = v54;
      v54 = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    if ((v10 | 8) != 8)
    {
      goto LABEL_49;
    }

    goto LABEL_20;
  }

LABEL_48:
  *a2 = v5;
LABEL_49:
  if (v58)
  {
    v34 = v57[0];
    v57[0] = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }
  }

  if (v61)
  {
    v35 = v59;
    v59 = 0;
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }
  }

LABEL_55:
  v36 = *MEMORY[0x277D85DE8];
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSHNDXTable@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections(a1, v9);
  if (v10)
  {
    v7 = v9[0];
    *(a3 + 16) |= 1u;
    *a3 = v7;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSHNDXTable(a1, a2, v9[0], v9[1], a3);
    if (v10)
    {
      result = v9[0];
      v9[0] = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSHNDXTable@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>(a1, a2, &v32);
  v11 = v32;
  if (v34)
  {
    v32 = 0;
    *(a5 + 16) |= 1u;
  }

  else
  {
    v12 = *(a2 + 40);
    if (a4 <= v12)
    {
      v28 = "invalid section index: ";
      v29 = v12;
      v30 = 2051;
      LODWORD(v24[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v13 = a3 + (v12 << 6);
    v14 = *(v13 + 4);
    if (v14 != 2 && v14 != 11)
    {
      ELFSectionTypeName = llvm::object::getELFSectionTypeName(*(*a1 + 18), v14);
      v27 = 1283;
      v24[0] = "SHT_SYMTAB_SHNDX section is linked with ";
      v25 = ELFSectionTypeName;
      v26 = v19;
      v28 = v24;
      v29 = " section (expected SHT_SYMTAB/SHT_DYNSYM)";
      v30 = 770;
      LODWORD(v21[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v16 = v33;
    v23 = *(v13 + 32) / 0x18uLL;
    if (v33 != v23)
    {
      v20 = v33;
      v21[0] = "SHT_SYMTAB_SHNDX has ";
      v21[2] = &v20;
      v22 = 2563;
      v24[0] = v21;
      v25 = " entries, but the symbol table associated has ";
      v27 = 770;
      v28 = v24;
      v29 = &v23;
      v30 = 3074;
      v31 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    *(a5 + 16) &= ~1u;
    *(a5 + 8) = v16;
  }

  *a5 = v11;
  if (v34)
  {
    result = v32;
    v32 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[7] != 4)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(result, a2, &v28);
    v12 = std::string::insert(&v28, 0, "section ");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v30, " has invalid sh_entsize: expected ");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v34 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v32.__r_.__value_.__r.__words[0] = 4;
    v38[0] = __p;
    v39 = &v32;
    v40 = 2564;
    v41[0] = v38;
    v42 = ", but got ";
    v43 = 770;
    v27.__r_.__value_.__r.__words[0] = a2[7];
    v44 = v41;
    v45 = &v27;
    v46 = 3074;
    LODWORD(v26.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = a2[3];
  v7 = a2[4];
  v36 = v7;
  v37 = v6;
  if ((v7 & 3) != 0)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(result, a2, &v32);
    v8 = std::string::insert(&v32, 0, "section ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v28, " has an invalid sh_size (");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v30;
    v34 = &v36;
    v35 = 3076;
    v38[0] = __p;
    v39 = ") which is not a multiple of its sh_entsize (";
    v40 = 770;
    v27.__r_.__value_.__r.__words[0] = a2[7];
    v41[0] = v38;
    v42 = &v27;
    v43 = 3074;
    v44 = v41;
    v45 = ")";
    v46 = 770;
    LODWORD(v26.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (__CFADD__(v6, v7))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(result, a2, &v32);
    v16 = std::string::insert(&v32, 0, "section ");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v28, " has a sh_offset (0x");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v30;
    v34 = &v37;
    v35 = 3588;
    v38[0] = __p;
    v39 = ") + sh_size (0x";
    v40 = 770;
    v41[0] = v38;
    v42 = &v36;
    v43 = 3586;
    v44 = v41;
    v45 = ") that cannot be represented";
    v46 = 770;
    LODWORD(v27.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (v7 + v6 > result[1])
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(result, a2, &v26);
    v20 = std::string::insert(&v26, 0, "section ");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v27, " has a sh_offset (0x");
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v28.__r_.__value_.__r.__words[0] = &v32;
    v28.__r_.__value_.__r.__words[2] = &v37;
    v29 = 3588;
    v30.__r_.__value_.__r.__words[0] = &v28;
    v30.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v31 = 770;
    __p[0] = &v30;
    v34 = &v36;
    v35 = 3586;
    v38[0] = __p;
    v39 = ") that is greater than the file size (0x";
    v40 = 770;
    v25 = v4[1];
    v41[0] = v38;
    v42 = &v25;
    v43 = 3586;
    v44 = v41;
    v45 = ")";
    v46 = 770;
    v47 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v24 = *result + v6;
  *(a3 + 16) &= ~1u;
  *a3 = v24;
  *(a3 + 8) = v7 >> 2;
  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getStringTableForSymtab(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 4);
  if (v6 != 2 && v6 != 11)
  {
    v9[0] = "invalid sh_type for symbol table, expected SHT_SYMTAB or SHT_DYNSYM";
    v10 = 259;
    v11 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v8 = *(a2 + 40);
  if (a4 <= v8)
  {
    v9[0] = "invalid section index: ";
    v9[2] = v8;
    v10 = 2051;
    v11 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v9[0] = llvm::object::defaultWarningHandler;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getStringTable(a1, a3 + (v8 << 6), llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, v9, a5);
}

void llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolLinkageAndScope(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 4) >> 4;
  if (v5 > 1)
  {
    if (v5 != 2 && v5 != 10)
    {
      goto LABEL_11;
    }

    v6 = 0;
    LOWORD(v5) = 1;
    v7 = 1;
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = 0;
        v7 = 0;
        goto LABEL_13;
      }

LABEL_11:
      v10[0] = "Unrecognized symbol binding ";
      v11 = v5;
      v12 = 2307;
      v13[0] = v10;
      v14 = " for ";
      v15 = 770;
      v16 = v13;
      v17 = a2;
      v18 = a3;
      v19 = 1282;
      getErrorErrorCat();
      operator new();
    }

    v7 = 0;
    LOWORD(v5) = 3;
    v6 = 3;
  }

LABEL_13:
  v9 = *(a1 + 5) & 3;
  if (v9 == 1)
  {
    v10[0] = "Unrecognized symbol visibility ";
    v11 = 1;
    v12 = 2307;
    v13[0] = v10;
    v14 = " for ";
    v15 = 770;
    v16 = v13;
    v17 = a2;
    v18 = a3;
    v19 = 1282;
    getErrorErrorCat();
    operator new();
  }

  if (v9 != 2)
  {
    LOWORD(v5) = v6;
  }

  *(a4 + 8) &= ~1u;
  *a4 = v7 | (v5 << 8);
}

uint64_t *llvm::object::getExtendedSymbolTableIndex<llvm::object::ELFType<(llvm::support::endianness)1,true>>@<X0>(unsigned int a1@<W1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    v25[0] = "found an extended symbol index (";
    v26 = a1;
    v27 = 2051;
    v31 = v25;
    v33 = "), but unable to locate the extended symbol index table";
    v34 = 770;
    LODWORD(v23[0]) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v4 = a1;
  result = llvm::object::DataRegion<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>::operator[](a2, a1, &v29);
  if (v30)
  {
    v23[0] = "unable to read an extended symbol table at index ";
    v23[2] = v4;
    v24 = 2051;
    v25[0] = v23;
    v26 = ": ";
    v27 = 770;
    v28 = v29;
    v29 = 0;
    v31 = &v33;
    v32 = 0x200000000;
    v22.__r_.__value_.__r.__words[0] = &v31;
    llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v28, &v22);
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v6 = v31;
    v7 = v32;
    memset(&v22, 0, sizeof(v22));
    if (v32)
    {
      v8 = 24 * v32;
      v9 = v32 - 1;
      v10 = v31 + 23;
      v11 = v8;
      do
      {
        v12 = *v10;
        if (v12 < 0)
        {
          v12 = *(v10 - 15);
        }

        v9 += v12;
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
      std::string::reserve(&v22, v9);
      v13 = *(v6 + 23);
      if (v13 >= 0)
      {
        v14 = v6;
      }

      else
      {
        v14 = *v6;
      }

      if (v13 >= 0)
      {
        v15 = *(v6 + 23);
      }

      else
      {
        v15 = v6[1];
      }

      std::string::append(&v22, v14, v15);
      if (v7 != 1)
      {
        v16 = v6 + 3;
        v17 = v8 - 24;
        do
        {
          std::string::append(&v22, "\n", 1uLL);
          v18 = *(v16 + 23);
          if (v18 >= 0)
          {
            v19 = v16;
          }

          else
          {
            v19 = *v16;
          }

          if (v18 >= 0)
          {
            v20 = *(v16 + 23);
          }

          else
          {
            v20 = v16[1];
          }

          std::string::append(&v22, v19, v20);
          v16 += 3;
          v17 -= 24;
        }

        while (v17);
      }
    }

    llvm::SmallVector<std::string,2u>::~SmallVector(&v31);
    v31 = v25;
    v33 = &v22;
    v34 = 1026;
    LODWORD(v28) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  *(a3 + 8) &= ~1u;
  *a3 = v29;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void anonymous namespace::ELFJITLinker_aarch64::~ELFJITLinker_aarch64(_anonymous_namespace_::ELFJITLinker_aarch64 *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::JITLinker<anonymous namespace::ELFJITLinker_aarch64>::fixUpBlocks(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 208))
  {
    v4 = *(a1 + 216);
    if (v4)
    {
      v5 = 24 * v4;
      v6 = *(a1 + 200);
      while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v6 += 3;
        v5 -= 24;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v6 = *(a1 + 200);
    }

    v7 = *(a1 + 200) + 24 * v4;
LABEL_10:
    if (v6 != v7)
    {
      v8 = v6[2];
      v21 = *(v8 + 20);
      v9 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v8 + 32);
      v11 = *(v8 + 32) + 8 * *(v8 + 48);
      if (v11 == v9)
      {
        goto LABEL_26;
      }

      v12 = v9;
      v13 = v10;
      do
      {
        v14 = *v12;
        if (v21 == 2 && (v14[1] & 4) == 0)
        {
          v15 = v14[4];
          __src = v14[3];
          v16 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, v15, 0);
          v17 = v16;
          if (v15)
          {
            memmove(v16, __src, v15);
          }

          v14[3] = v17;
          v14[4] = v15;
          v14[1] |= 4uLL;
        }

        v18 = v14[5];
        v19 = v14[6];
        while (v18 != v19)
        {
          if (*(v18 + 24) >= 2u)
          {
            llvm::jitlink::aarch64::applyFixup(a1, v14, v18, a2);
            if (*a2)
            {
              return;
            }
          }

          v18 += 32;
        }

        do
        {
          ++v12;
        }

        while (v12 != v13 && (*v12 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v12 != v11);
LABEL_26:
      while (1)
      {
        v6 += 3;
        if (v6 == v7)
        {
          break;
        }

        if (*v6 < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_10;
        }
      }
    }
  }

LABEL_6:
  *a2 = 0;
}

void llvm::jitlink::JITLinker<anonymous namespace::ELFJITLinker_aarch64>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t *llvm::jitlink::createLinkGraphFromELFObject_i386@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  llvm::object::ObjectFile::createELFObjectFile(v13, 1, &v14);
  v6 = v14;
  if ((v15 & 1) == 0)
  {
    v7 = *(v14 + 4);
    v8 = *(v14 + 5);
    v12 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    llvm::object::ObjectFile::makeTriple(v6, __p);
    llvm::jitlink::ELFLinkGraphBuilder_i386<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFLinkGraphBuilder_i386(v13, v7, v8, v6 + 56, &v12, __p);
  }

  v14 = 0;
  *(a3 + 8) |= 1u;
  *a3 = v6;
  result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v14);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::jitlink::ELFLinkGraphBuilder_i386<llvm::object::ELFType<(llvm::support::endianness)1,false>>::~ELFLinkGraphBuilder_i386(llvm::jitlink::ELFLinkGraphBuilderBase *a1)
{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);
}

{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::link_ELF_i386(uint64_t *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  if ((*(**a2 + 56))(*a2, *a1 + 136))
  {
    (*(**a2 + 64))(&v14);
    if (v15 < 8)
    {
      *&v12 = llvm::jitlink::markAllSymbolsLive;
      v13 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v8, &v12);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v12);
    }

    else
    {
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v8, &v14);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
    v15 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v8[1] + 8, &v14);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
    *&v14 = llvm::jitlink::i386::optimizeGOTAndStubAccesses;
    v15 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v9[1] + 8, &v14);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
  }

  v4 = *a1;
  (*(**a2 + 72))(&v14);
  if (!v14)
  {
    operator new();
  }

  v5 = *a2;
  v7 = v14;
  *&v14 = 0;
  (*(*v5 + 24))(v5, &v7);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *&v14 = &v10;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  *&v14 = &v9[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  *&v14 = v9;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  *&v14 = &v8[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  *&v14 = v8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t *anonymous namespace::buildTables_ELF_i386@<X0>(_anonymous_namespace_ *this@<X0>, void *a2@<X8>)
{
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  v26 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v22 = v24;
  v23 = 0;
  llvm::jitlink::LinkGraph::blocks(this, v29);
  v30[0] = v29[0];
  v30[1] = v29[1];
  v30[2] = v29[2];
  v30[3] = v29[3];
  llvm::jitlink::LinkGraph::blocks(this, v27);
  v28[0] = v27[4];
  v28[1] = v27[5];
  v28[2] = v27[6];
  v28[3] = v27[7];
  std::vector<llvm::jitlink::Block *>::vector[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,0>(&v31, v30, v28);
  v5 = v31;
  v19 = v32;
  if (v31 != v32)
  {
    while (1)
    {
      v6 = *(*v5 + 40);
      v7 = *(*v5 + 48);
      while (v6 != v7)
      {
        v8 = *(v6 + 24);
        switch(v8)
        {
          case 9:
            *(v6 + 24) = 8;
            EntryForTarget = llvm::jitlink::TableManager<llvm::jitlink::i386::GOTTableManager>::getEntryForTarget(v24, this, *v6);
LABEL_21:
            *v6 = EntryForTarget;
            break;
          case 8:
            if (!v26)
            {
              llvm::jitlink::LinkGraph::createSection();
            }

            break;
          case 10:
            v9 = *v6;
            if ((*(*(*v6 + 8) + 8) & 1) == 0)
            {
              *(v6 + 24) = 12;
              *&v29[0] = 0;
              v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v20, v9, v29);
              v11 = *&v29[0];
              if (!v10)
              {
                v11 = v20[0] + 16 * v21;
              }

              if (v11 == v20[0] + 16 * v21)
              {
                v12 = v23;
                if (!v23)
                {
                  llvm::jitlink::LinkGraph::createSection();
                }

                v13 = llvm::jitlink::TableManager<llvm::jitlink::i386::GOTTableManager>::getEntryForTarget(v22, this, v9);
                *&v29[0] = &llvm::jitlink::i386::PointerJumpStubContent;
                *(&v29[0] + 1) = 6;
                *&v27[0] = 0;
                *&v30[0] = 8;
                *&v28[0] = 0;
                v14 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(this, v12, v29, v27, v30, v28);
                llvm::jitlink::Block::addEdge(v14, 3, 2, v13, 0);
                v15 = llvm::jitlink::LinkGraph::addAnonymousSymbol(this, v14, 0, 6, 1, 0);
                v16 = *v9;
                *&v27[0] = v16;
                if ((v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add((v16 + 8), 1uLL);
                }

                *(&v27[0] + 1) = v15;
                llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(v20, v27, v27 + 1, v29);
                v11 = *&v29[0];
                if ((*&v27[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add((*&v27[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
                }
              }

              EntryForTarget = *(v11 + 8);
              goto LABEL_21;
            }

            break;
        }

        v6 += 32;
      }

      v5 += 8;
      if (v5 == v19)
      {
        v5 = v31;
        break;
      }
    }
  }

  if (v5)
  {
    v32 = v5;
    operator delete(v5);
  }

  *a2 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v20);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v24);
}

uint64_t llvm::jitlink::TableManager<llvm::jitlink::i386::GOTTableManager>::getEntryForTarget(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15[0] = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, v15);
  v7 = v15[0];
  if (!v6)
  {
    v7 = *a1 + 16 * *(a1 + 16);
  }

  if (v7 == *a1 + 16 * *(a1 + 16))
  {
    v8 = *(a1 + 24);
    if (!v8)
    {
      llvm::jitlink::LinkGraph::createSection();
    }

    v15[0] = &llvm::jitlink::i386::NullPointerContent;
    v15[1] = 4;
    v13 = 0;
    v16 = 0;
    v17 = 8;
    v9 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(a2, v8, v15, &v13, &v17, &v16);
    llvm::jitlink::Block::addEdge(v9, 3, 0, a3, 0);
    v10 = llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, v9, 0, 4, 0, 0);
    v11 = *a3;
    v13 = v11;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v11 + 8), 1uLL);
    }

    v14 = v10;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(a1, &v13, &v14, v15);
    v7 = v15[0];
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v13 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return *(v7 + 8);
}

void llvm::jitlink::ELFLinkGraphBuilder_i386<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFLinkGraphBuilder_i386(uint64_t a1, const void *a2, const void *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v10 = *a5;
  *a5 = 0;
  *(a5 + 1) = 0;
  *__p = *a6;
  v7 = *(a6 + 16);
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *a6 = 0;
  v8 = *(a6 + 24);
  v9 = *(a6 + 40);
  llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFLinkGraphBuilder(a1, a4, &v10, __p, a2, a3);
}

void llvm::jitlink::ELFLinkGraphBuilder_i386<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addRelocations(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = &v5[10 * v3];
    v7 = "Refencing a section that wasn't added to the graph: ";
    while (1)
    {
      v8 = v5[1];
      if (v8 == 4)
      {
        getErrorErrorCat();
        *&v21 = 3;
        *(&v21 + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }

      if (v8 == 9)
      {
        break;
      }

      *a2 = 0;
LABEL_36:
      v5 += 10;
      if (v5 == v6)
      {
        goto LABEL_37;
      }
    }

    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(*(a1 + 24), v5[7], &v26);
    if (v27)
    {
      v9 = v26;
      *a2 = v26;
      goto LABEL_35;
    }

    v10 = *(a1 + 24);
    *&v21 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionName(v10, v26, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v21, &v24);
    if (v25)
    {
      v11 = v24;
      *&v24 = 0;
      *a2 = v11;
      goto LABEL_28;
    }

    if ((*(a1 + 72) & 1) == 0 && (v21 = v24, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v21) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*a1 + 40))(a1, v26))
    {
      *a2 = 0;
LABEL_28:
      if (v25)
      {
        v18 = v24;
        *&v24 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      if (v27)
      {
        v19 = v26;
        v26 = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }
      }

      v9 = *a2;
LABEL_35:
      if (v9)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, v5[7]);
    if (!GraphBlock)
    {
      v23 = 1283;
      *&v21 = v7;
      v22 = v24;
      getErrorErrorCat();
      operator new();
    }

    v13 = GraphBlock;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>(*(a1 + 24), v5, &v21);
    v14 = v21;
    v15 = v7;
    if (v22)
    {
      *&v21 = 0;
    }

    else
    {
      if (*(&v21 + 1))
      {
        v16 = 8 * *(&v21 + 1);
        do
        {
          llvm::jitlink::ELFLinkGraphBuilder_i386<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addSingleRelocation(a1, v14, v26, v13, a2);
          if (*a2)
          {
            goto LABEL_24;
          }

          v14 += 2;
          v16 -= 8;
        }

        while (v16);
      }

      v14 = 0;
    }

    *a2 = v14;
LABEL_24:
    if (v22)
    {
      v17 = v21;
      *&v21 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v7 = v15;
    goto LABEL_28;
  }

LABEL_37:
  *a2 = 0;
LABEL_39:
  v20 = *MEMORY[0x277D85DE8];
}

void llvm::jitlink::ELFLinkGraphBuilder_i386<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addSingleRelocation(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = a2[1];
  v11 = v10 >> 8;
  v42 = v10 >> 8;
  if (v10 > 0xFF)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(*(a1 + 24), *(a1 + 48), v11, &v46);
    if (v47)
    {
      v12 = v46;
      v46 = 0;
      *a5 = v12;
      goto LABEL_40;
    }
  }

  else
  {
    v47 = 0;
    v46 = 0;
  }

  GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v11);
  if (!GraphSymbol)
  {
    v16 = *(a1 + 112);
    v34 = &unk_2883ECF20;
    v35 = &v42;
    v36[0] = &unk_2883ED130;
    v36[1] = v46 + 14;
    v37 = &unk_2883ECC68;
    v38 = v16;
    v39 = &v34;
    v40 = v36;
    v41 = &v37;
    getErrorErrorCat();
    v44 = 3;
    v45 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
  }

  v14 = *(a2 + 4);
  v43 = v14;
  if (v14 <= 3)
  {
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = 4;
      }

      else
      {
        v15 = 9;
      }
    }

    else if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    goto LABEL_26;
  }

  if (v14 <= 9)
  {
    if (v14 == 4)
    {
      v15 = 10;
      goto LABEL_26;
    }

    if (v14 == 9)
    {
      v15 = 8;
      goto LABEL_26;
    }

LABEL_44:
    v34 = &unk_2883EB018;
    v35 = &v43;
    v36[0] = &v34;
    operator new();
  }

  if (v14 != 10)
  {
    if (v14 == 20)
    {
      v15 = 5;
      goto LABEL_26;
    }

    if (v14 == 21)
    {
      v15 = 6;
LABEL_26:
      v18 = 0;
      v17 = *a2 + *(a3 + 12) - *a4;
      goto LABEL_27;
    }

    goto LABEL_44;
  }

  v17 = *a2 + *(a3 + 12) - *a4;
  v18 = *(a4[3] + v17);
  v15 = 7;
LABEL_27:
  v19 = a4[6];
  v20 = a4[7];
  if (v19 >= v20)
  {
    v22 = a4[5];
    v23 = (v19 - v22) >> 5;
    v24 = v23 + 1;
    if ((v23 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v25 = v20 - v22;
    if (v25 >> 4 > v24)
    {
      v24 = v25 >> 4;
    }

    if (v25 >= 0x7FFFFFFFFFFFFFE0)
    {
      v26 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v24;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>((a4 + 5), v26);
    }

    v27 = 32 * v23;
    *v27 = GraphSymbol;
    *(v27 + 8) = v17;
    *(v27 + 16) = v18;
    *(v27 + 24) = v15;
    v21 = 32 * v23 + 32;
    v28 = a4[5];
    v29 = a4[6] - v28;
    v30 = (32 * v23 - v29);
    memcpy(v30, v28, v29);
    v31 = a4[5];
    a4[5] = v30;
    a4[6] = v21;
    a4[7] = 0;
    if (v31)
    {
      operator delete(v31);
    }
  }

  else
  {
    *v19 = GraphSymbol;
    *(v19 + 8) = v17;
    *(v19 + 16) = v18;
    v21 = v19 + 32;
    *(v19 + 24) = v15;
  }

  a4[6] = v21;
  *a5 = 0;
LABEL_40:
  if (v47)
  {
    v32 = v46;
    v46 = 0;
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void llvm::jitlink::ELFJITLinker_i386::~ELFJITLinker_i386(llvm::jitlink::ELFJITLinker_i386 *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

uint64_t **llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_i386>::fixUpBlocks@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = result;
  if (*(a2 + 208))
  {
    v4 = *(a2 + 216);
    if (v4)
    {
      v5 = 24 * v4;
      v6 = *(a2 + 200);
      while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v6 += 3;
        v5 -= 24;
        if (!v5)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v6 = *(a2 + 200);
    }

    v7 = *(a2 + 200) + 24 * v4;
    if (v6 != v7)
    {
      v29 = v7;
      while (1)
      {
        v8 = v6[2];
        v31 = *(v8 + 20);
        result = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v8 + 32);
        v30 = *(v8 + 32) + 8 * *(v8 + 48);
        if (v30 != result)
        {
          break;
        }

LABEL_46:
        for (v6 += 3; ; v6 += 3)
        {
          if (v6 == v29)
          {
            goto LABEL_51;
          }

          if (*v6 < 0xFFFFFFFFFFFFFFFELL)
          {
            break;
          }
        }

        if (v6 == v29)
        {
          goto LABEL_51;
        }
      }

      v10 = result;
      v11 = v9;
LABEL_12:
      v12 = *v10;
      if (v31 == 2 && (v12[1] & 4) == 0)
      {
        v14 = v12[3];
        v13 = v12[4];
        result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, v13, 0);
        v15 = result;
        if (v13)
        {
          result = memmove(result, v14, v13);
        }

        v12[3] = v15;
        v12[4] = v13;
        v12[1] |= 4uLL;
      }

      v17 = v12[5];
      v16 = v12[6];
      while (1)
      {
        if (v17 == v16)
        {
          do
          {
            ++v10;
          }

          while (v10 != v11 && (*v10 | 0x1000) == 0xFFFFFFFFFFFFF000);
          if (v10 == v30)
          {
            goto LABEL_46;
          }

          goto LABEL_12;
        }

        v18 = *(v17 + 24);
        if (v18 >= 2)
        {
          break;
        }

LABEL_39:
        v17 += 32;
      }

      v19 = v12[3];
      v20 = *(v17 + 8);
      v21 = *v12 + v20;
      if (*(v17 + 24) > 6u)
      {
        if (v18 - 10 < 3)
        {
LABEL_27:
          v23 = **(*v17 + 8) - v21 + *(*v17 + 16) + *(v17 + 16) - 4;
LABEL_37:
          *(v19 + v20) = v23;
          goto LABEL_38;
        }

        if (v18 != 7)
        {
          if (v18 != 8)
          {
            std::operator+<char>();
            v26 = std::string::append(&v34, ", section ");
            v27 = v26->__r_.__value_.__r.__words[2];
            *__p = *&v26->__r_.__value_.__l.__data_;
            v36 = v27;
            v26->__r_.__value_.__l.__size_ = 0;
            v26->__r_.__value_.__r.__words[2] = 0;
            v26->__r_.__value_.__r.__words[0] = 0;
            v28 = *v12[2];
            v37 = __p;
            v38 = v28;
            v39 = 1284;
            v40 = &v37;
            v41 = " unsupported edge kind ";
            v42 = 770;
            if (!*llvm::jitlink::i386::getEdgeKindName(*(v17 + 24)))
            {
              v45 = v43;
              v46 = v44;
            }

            operator new();
          }

          v23 = *(*v17 + 16) + **(*v17 + 8) - (*v32[19][1] + *(v32[19] + 4)) + *(v17 + 16);
          goto LABEL_37;
        }

        v25 = **(*v17 + 8) - v21;
        v24 = *(*v17 + 16) + *(v17 + 16);
      }

      else
      {
        if (*(v17 + 24) > 3u)
        {
          if (v18 != 4)
          {
            if (v18 == 5)
            {
              v22 = *(*v17 + 16) + *(v17 + 16) + **(*v17 + 8);
              if ((v22 & 0xFFFF0000) != 0)
              {
LABEL_25:
                llvm::jitlink::makeTargetOutOfRangeError(a2, v12, v17);
              }
            }

            else
            {
              v22 = **(*v17 + 8) - v21 + *(*v17 + 16) + *(v17 + 16) - 4;
              if (v22 != v22)
              {
                goto LABEL_25;
              }
            }

            *(v19 + v20) = v22;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v18 == 2)
        {
LABEL_38:
          *a3 = 0;
          goto LABEL_39;
        }

        v24 = **(*v17 + 8);
        v25 = *(*v17 + 16) + *(v17 + 16);
      }

      v23 = v25 + v24;
      goto LABEL_37;
    }
  }

LABEL_51:
  *a3 = 0;
  return result;
}

void llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_i386>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::jitlink::ELFJITLinker_i386::ELFJITLinker_i386(std::unique_ptr<llvm::jitlink::JITLinkContext>,std::unique_ptr<llvm::jitlink::LinkGraph>,llvm::jitlink::PassConfiguration)::{lambda(llvm::jitlink::LinkGraph &)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  v42 = a2;
  v43 = v5;
  v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 224);
  v8 = v7;
  llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 224);
  v9 = *(a2 + 224) + 8 * *(a2 + 240);
  std::vector<llvm::jitlink::Symbol *>::vector[abi:nn200100]<llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,0>(&v44, v6, v8, v9, v9);
  v11 = v44;
  v12 = v45;
  if (v44 != v45)
  {
    v39 = v5;
    do
    {
      v13 = *v11;
      v14 = **v11;
      if (v14 && *v14 == 21)
      {
        v15 = v14[2];
        v16 = v14[3];
        v17 = *(v14 + 29);
        v18 = v15 == 0x5F4C41424F4C475FLL && v16 == 0x545F54455346464FLL;
        if (v18 && v17 == 0x5F454C4241545F54)
        {
          v20 = v43;
          SectionByName = llvm::jitlink::LinkGraph::findSectionByName(v42, "$__GOT", 6, v10);
          if (SectionByName)
          {
            v22 = SectionByName;
            *(v20 + 152) = v13;
            v47 = SectionByName;
            v49[0] = 0;
            v23 = llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(v40, &v47, v49);
            v24 = v49[0];
            if (!v23)
            {
              v24 = (v40[0] + 24 * v41);
            }

            if (v24 == (v40[0] + 24 * v41))
            {
              llvm::jitlink::SectionRange::SectionRange(&v46, v22);
              v47 = v22;
              v48 = v46;
              llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::try_emplace<llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>(v40, &v47, &v48, v49);
              v24 = v49[0];
            }

            v25 = v24[1];
            if (v25)
            {
              llvm::jitlink::LinkGraph::makeDefined(a2, v13, v25, 0, 0, 0, 3, 0);
            }

            else
            {
              llvm::jitlink::LinkGraph::makeAbsolute(a2, v13, 0);
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v12);
    v11 = v44;
    v5 = v39;
  }

  if (v11)
  {
    v45 = v11;
    operator delete(v11);
  }

  if (!*(v5 + 152))
  {
    v26 = llvm::jitlink::LinkGraph::findSectionByName(a2, "$__GOT", 6, v10);
    if (v26)
    {
      v27 = v26;
      v28 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v26 + 56);
      v30 = *(v27 + 56) + 8 * *(v27 + 72);
      if (v30 == v28)
      {
LABEL_39:
        llvm::jitlink::SectionRange::SectionRange(v49, v27);
        if (v49[0])
        {
          v37 = llvm::jitlink::LinkGraph::addDefinedSymbol(a2, v49[0], 0, "_GLOBAL_OFFSET_TABLE_", 0x15uLL, 0, 0, 3, 0, 1);
        }

        else
        {
          v37 = llvm::jitlink::LinkGraph::addAbsoluteSymbol(a2, "_GLOBAL_OFFSET_TABLE_", 0x15uLL, 0, 0, 0, 3, 1);
        }

        *(v5 + 152) = v37;
      }

      else
      {
        while (1)
        {
          v31 = **v28;
          if (v31 && *v31 == 21)
          {
            v32 = v31[2];
            v33 = v31[3];
            v34 = *(v31 + 29);
            v35 = v32 == 0x5F4C41424F4C475FLL && v33 == 0x545F54455346464FLL;
            if (v35 && v34 == 0x5F454C4241545F54)
            {
              break;
            }
          }

          do
          {
            ++v28;
          }

          while (v28 != v29 && (*v28 | 0x1000) == 0xFFFFFFFFFFFFF000);
          if (v28 == v30)
          {
            goto LABEL_39;
          }
        }

        *(v5 + 152) = *v28;
      }
    }
  }

  *a3 = 0;
  return MEMORY[0x277C69E30](v40[0], 8);
}

uint64_t llvm::jitlink::LinkGraph::makeAbsolute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if ((*(v6 + 8) & 3) != 0)
  {
    v7 = *(v6 + 16);
    v15[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v7 + 56, v15);
    v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 16, 3);
    v9 = v8[1] & 0xFFFFFFFFFFFFFFFCLL | 2;
    *v8 = a3;
    v8[1] = v9;
    v10 = *(a2 + 16) & 0xFE00000000000000;
    *(a2 + 8) = v8;
  }

  else
  {
    v15[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(a1 + 224, v15);
    v11 = *(a2 + 8);
    v12 = v11[1] | 2;
    *v11 = a3;
    v11[1] = v12;
    v10 = *(a2 + 16) | 0xC00000000000000;
  }

  *(a2 + 16) = v10;
  v14 = a2;
  return llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 248, &v14, v15);
}

void *std::vector<llvm::jitlink::Symbol *>::vector[abi:nn200100]<llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a4)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      do
      {
        ++v7;
      }

      while (v7 != a3 && (*v7 | 0x1000) == 0xFFFFFFFFFFFFF000);
      ++v6;
    }

    while (v7 != a4);
  }

  std::vector<llvm::jitlink::Symbol *>::__init_with_size[abi:nn200100]<llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator>(a1, a2, a3, a4, a5, v6);
  return a1;
}

uint64_t std::vector<llvm::jitlink::Symbol *>::__init_with_size[abi:nn200100]<llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6)
  {
    std::vector<llvm::jitlink::Block *>::__vallocate[abi:nn200100](result, a6);
  }

  return result;
}

uint64_t *llvm::jitlink::createLinkGraphFromELFObject_loongarch@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v27[0] = *a1;
  v27[1] = v5;
  llvm::object::ObjectFile::createELFObjectFile(v27, 1, &v33);
  v6 = v33;
  if ((v34 & 1) == 0)
  {
    v7 = (*(*v33 + 392))(v33);
    v8 = v33;
    if (v7 == 14)
    {
      v9 = v33[4];
      v10 = v33[5];
      v17 = *a2;
      *a2 = 0;
      *(a2 + 1) = 0;
      llvm::object::ObjectFile::makeTriple(v8, &v23);
      v32 = v17;
      v28 = v23;
      v11 = v24;
      v23 = 0uLL;
      v24 = 0;
      v30 = v25;
      v29 = v11;
      v31 = v26;
      llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::ELFLinkGraphBuilder(v27, v8 + 56, &v32, &v28, v9, v10);
    }

    v12 = v33[4];
    v13 = v33[5];
    v18 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    llvm::object::ObjectFile::makeTriple(v8, __p);
    v32 = v18;
    v28 = *__p;
    v14 = v20;
    __p[0] = 0;
    __p[1] = 0;
    v20 = 0;
    v30 = v21;
    v29 = v14;
    v31 = v22;
    llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFLinkGraphBuilder(v27, v8 + 56, &v32, &v28, v12, v13);
  }

  v33 = 0;
  *(a3 + 8) |= 1u;
  *a3 = v6;
  result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v33);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void anonymous namespace::ELFLinkGraphBuilder_loongarch<llvm::object::ELFType<(llvm::support::endianness)1,true>>::~ELFLinkGraphBuilder_loongarch(llvm::jitlink::ELFLinkGraphBuilderBase *a1)
{
  *a1 = &unk_2883ED240;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);
}

{
  *a1 = &unk_2883ED240;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::ELFLinkGraphBuilder_loongarch<llvm::object::ELFType<(llvm::support::endianness)1,false>>::~ELFLinkGraphBuilder_loongarch(llvm::jitlink::ELFLinkGraphBuilderBase *a1)
{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);
}

{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::link_ELF_loongarch(uint64_t *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  if ((*(**a2 + 56))(*a2, *a1 + 136))
  {
    v16 = ".eh_frame";
    *&v17 = 9;
    v18 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::DWARFRecordSectionSplitter,llvm::jitlink::DWARFRecordSectionSplitter,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v10, &v16);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v16);
    v4 = *(*a1 + 184);
    v5 = operator new(0x20uLL, 8uLL);
    v17 = xmmword_2750C12D0;
    *v5 = ".eh_frame";
    v5[1] = 9;
    *(v5 + 4) = v4;
    *(v5 + 5) = 117768707;
    *(v5 + 24) = 6;
    v16 = v5;
    v18 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::EHFrameEdgeFixer,llvm::jitlink::EHFrameEdgeFixer,void>::Callbacks;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v10, &v16);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v16);
    v16 = ".eh_frame";
    *&v17 = 9;
    v18 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::EHFrameNullTerminator,llvm::jitlink::EHFrameNullTerminator,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v10, &v16);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v16);
    (*(**a2 + 64))(&v16);
    if (v18 < 8)
    {
      *&v14 = llvm::jitlink::markAllSymbolsLive;
      v15 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v10, &v14);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
    }

    else
    {
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v10, &v16);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v16);
    v18 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v10[1] + 8, &v16);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v16);
  }

  v6 = *a1;
  (*(**a2 + 72))(&v16);
  if (!v16)
  {
    operator new();
  }

  v7 = *a2;
  v9 = v16;
  v16 = 0;
  (*(*v7 + 24))(v7, &v9);
  if (v9)
  {
    (*(*v9 + 1))(v9);
  }

  if (v16)
  {
    (*(*v16 + 1))(v16);
  }

  v16 = &v12;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v16 = &v11[1] + 1;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v16 = v11;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v16 = &v10[1] + 1;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v16 = v10;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t *anonymous namespace::buildTables_ELF_loongarch@<X0>(_anonymous_namespace_ *this@<X0>, void *a2@<X8>)
{
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v28 = 0;
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v24 = v26;
  v25 = 0;
  llvm::jitlink::LinkGraph::blocks(this, v31);
  v32[0] = v31[0];
  v32[1] = v31[1];
  v32[2] = v31[2];
  v32[3] = v31[3];
  llvm::jitlink::LinkGraph::blocks(this, v29);
  v30[0] = v29[4];
  v30[1] = v29[5];
  v30[2] = v29[6];
  v30[3] = v29[7];
  std::vector<llvm::jitlink::Block *>::vector[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,0>(&v33, v32, v30);
  v5 = v33;
  v6 = v34;
  if (v33 != v34)
  {
    while (1)
    {
      v8 = *(*v5 + 40);
      v7 = *(*v5 + 48);
      while (v8 != v7)
      {
        v9 = *(v8 + 24);
        if (v9 != 4)
        {
          if (v9 == 10)
          {
            v10 = 8;
          }

          else
          {
            if (v9 != 11)
            {
              goto LABEL_11;
            }

            v10 = 9;
          }

          *(v8 + 24) = v10;
          EntryForTarget = llvm::jitlink::TableManager<llvm::jitlink::loongarch::GOTTableManager>::getEntryForTarget(v26, this, *v8);
          goto LABEL_10;
        }

        v12 = *v8;
        if ((*(*(*v8 + 8) + 8) & 1) == 0)
        {
          *&v31[0] = 0;
          v13 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v22, v12, v31);
          v14 = *&v31[0];
          if (!v13)
          {
            v14 = v22[0] + 16 * v23;
          }

          if (v14 == v22[0] + 16 * v23)
          {
            v15 = v25;
            if (!v25)
            {
              llvm::jitlink::LinkGraph::createSection();
            }

            v16 = llvm::jitlink::TableManager<llvm::jitlink::loongarch::GOTTableManager>::getEntryForTarget(v24, this, v12);
            if (*(this + 46) == 8)
            {
              v17 = &llvm::jitlink::loongarch::LA64StubContent;
            }

            else
            {
              v17 = &llvm::jitlink::loongarch::LA32StubContent;
            }

            *&v31[0] = v17;
            *(&v31[0] + 1) = 12;
            *&v29[0] = 0;
            *&v32[0] = 4;
            *&v30[0] = 0;
            v18 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(this, v15, v31, v29, v32, v30);
            llvm::jitlink::Block::addEdge(v18, 8, 0, v16, 0);
            llvm::jitlink::Block::addEdge(v18, 9, 4, v16, 0);
            v19 = llvm::jitlink::LinkGraph::addAnonymousSymbol(this, v18, 0, 12, 1, 0);
            v20 = *v12;
            *&v29[0] = v20;
            if ((v20 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v20 + 8), 1uLL);
            }

            *(&v29[0] + 1) = v19;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(v22, v29, v29 + 1, v31);
            v14 = *&v31[0];
            if ((*&v29[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*&v29[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          EntryForTarget = *(v14 + 8);
LABEL_10:
          *v8 = EntryForTarget;
        }

LABEL_11:
        v8 += 32;
      }

      v5 += 8;
      if (v5 == v6)
      {
        v5 = v33;
        break;
      }
    }
  }

  if (v5)
  {
    v34 = v5;
    operator delete(v5);
  }

  *a2 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v22);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v26);
}

uint64_t llvm::jitlink::TableManager<llvm::jitlink::loongarch::GOTTableManager>::getEntryForTarget(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v18[0] = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, v18);
  v7 = v18[0];
  if (!v6)
  {
    v7 = *a1 + 16 * *(a1 + 16);
  }

  if (v7 == *a1 + 16 * *(a1 + 16))
  {
    v8 = *(a1 + 24);
    if (!v8)
    {
      llvm::jitlink::LinkGraph::createSection();
    }

    v9 = *(a2 + 184);
    v18[0] = &llvm::jitlink::loongarch::NullPointerContent;
    v18[1] = v9;
    v16 = 0;
    v19 = 0;
    v20 = v9;
    v10 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(a2, v8, v18, &v16, &v20, &v19);
    v11 = v10;
    if (*(a2 + 184) == 8)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    llvm::jitlink::Block::addEdge(v10, v12, 0, a3, 0);
    v13 = llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, v11, 0, *(a2 + 184), 0, 0);
    v14 = *a3;
    v16 = v14;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v14 + 8), 1uLL);
    }

    v17 = v13;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(a1, &v16, &v17, v18);
    v7 = v18[0];
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return *(v7 + 8);
}

void anonymous namespace::ELFLinkGraphBuilder_loongarch<llvm::object::ELFType<(llvm::support::endianness)1,true>>::addRelocations(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = v5 + (v3 << 6);
    do
    {
      if (*(v5 + 4) != 4)
      {
        *a2 = 0;
        goto LABEL_63;
      }

      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(*(a1 + 24), *(v5 + 44), &v49);
      if (v50)
      {
        v7 = v49;
        *a2 = v49;
        if (v7)
        {
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      v8 = *(a1 + 24);
      *&v29 = llvm::object::defaultWarningHandler;
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionName(v8, v49, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v29, &v47);
      if (v48)
      {
        v9 = v47;
        *&v47 = 0;
        *a2 = v9;
        goto LABEL_56;
      }

      if ((*(a1 + 72) & 1) == 0 && (v29 = v47, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v29) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*a1 + 40))(a1, v49))
      {
        *a2 = 0;
        goto LABEL_56;
      }

      GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, *(v5 + 44));
      if (!GraphBlock)
      {
        LOWORD(v31) = 1283;
        *&v29 = "Refencing a section that wasn't added to the graph: ";
        v30 = v47;
        getErrorErrorCat();
        operator new();
      }

      v11 = GraphBlock;
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,true>>(*(a1 + 24), v5, &v44);
      v12 = v44;
      if (v46)
      {
        v44 = 0;
      }

      else
      {
        if (v45)
        {
          v13 = 24 * v45;
          v14 = v44 + 8;
          do
          {
            v15 = v49;
            v16 = *(v14 + 4);
            v37 = v16;
            llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocationSymbol(*(a1 + 24), v14 - 8, *(a1 + 48), &v51);
            if (v52)
            {
              v17 = v51;
              v51 = 0;
              *a2 = v17;
            }

            else
            {
              GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v16);
              if (!GraphSymbol)
              {
                v21 = *(a1 + 112);
                *&v29 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, shndx: {1} Size of table: {2}";
                *(&v29 + 1) = 113;
                *&v30 = v36;
                *(&v30 + 1) = 3;
                v31 = &unk_2883ECF20;
                v32 = &v37;
                v33[0] = &unk_2883ED130;
                v33[1] = v51 + 6;
                v34 = &unk_2883ECC68;
                v35 = v21;
                v36[0] = &v31;
                v36[1] = v33;
                v36[2] = &v34;
                getErrorErrorCat();
                v42 = 3;
                v43 = &getErrorErrorCat(void)::ErrorErrorCat;
                llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
              }

              v19 = *v14;
              v41 = v19;
              if (v19 > 71)
              {
                if (v19 > 75)
                {
                  if (v19 == 76)
                  {
                    v20 = 11;
                  }

                  else
                  {
                    if (v19 != 99)
                    {
LABEL_50:
                      *&v29 = "{0:d}: ";
                      *(&v29 + 1) = 7;
                      *&v30 = v33;
                      *(&v30 + 1) = 1;
                      v31 = &unk_2883EB018;
                      v32 = &v41;
                      v33[0] = &v31;
                      v38 = "Unsupported loongarch relocation:";
                      v39 = &v29;
                      v40 = 1539;
                      llvm::object::getELFRelocationTypeName(0x102, v19);
                      operator new();
                    }

                    v20 = 5;
                  }
                }

                else if (v19 == 72)
                {
                  v20 = 9;
                }

                else
                {
                  if (v19 != 75)
                  {
                    goto LABEL_50;
                  }

                  v20 = 10;
                }
              }

              else if (v19 > 65)
              {
                if (v19 == 66)
                {
                  v20 = 4;
                }

                else
                {
                  if (v19 != 71)
                  {
                    goto LABEL_50;
                  }

                  v20 = 8;
                }
              }

              else if (v19 == 1)
              {
                v20 = 3;
              }

              else
              {
                if (v19 != 2)
                {
                  goto LABEL_50;
                }

                v20 = 2;
              }

              v22 = *(v14 + 8);
              v23 = *(v14 - 8) + v15[4] - *v11;
              *&v29 = GraphSymbol;
              DWORD2(v29) = v23;
              *&v30 = v22;
              BYTE8(v30) = v20;
              llvm::jitlink::Block::addEdge(v11, &v29);
              *a2 = 0;
            }

            if (v52)
            {
              v24 = v51;
              v51 = 0;
              if (v24)
              {
                (*(*v24 + 8))(v24);
              }
            }

            if (*a2)
            {
              goto LABEL_53;
            }

            v14 += 24;
            v13 -= 24;
          }

          while (v13);
        }

        v12 = 0;
      }

      *a2 = v12;
LABEL_53:
      if (v46)
      {
        v25 = v44;
        v44 = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }

LABEL_56:
      if (v48)
      {
        v26 = v47;
        *&v47 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }
      }

      if (v50)
      {
        v27 = v49;
        v49 = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }
      }

      if (*a2)
      {
        goto LABEL_65;
      }

LABEL_63:
      v5 += 64;
    }

    while (v5 != v6);
  }

  *a2 = 0;
LABEL_65:
  v28 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::ELFLinkGraphBuilder_loongarch<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addRelocations(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = &v5[10 * v3];
    v7 = llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>;
    while (1)
    {
      if (v5[1] != 4)
      {
        *a2 = 0;
        goto LABEL_66;
      }

      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(*(a1 + 24), v5[7], &v51);
      if (v52)
      {
        v8 = v51;
        *a2 = v51;
        if (v8)
        {
          goto LABEL_68;
        }

        goto LABEL_66;
      }

      v9 = *(a1 + 24);
      *&v31 = llvm::object::defaultWarningHandler;
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionName(v9, v51, v7, &v31, &v49);
      if (v50)
      {
        v10 = v49;
        *&v49 = 0;
        *a2 = v10;
        goto LABEL_59;
      }

      if ((*(a1 + 72) & 1) == 0 && (v31 = v49, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v31) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*a1 + 40))(a1, v51))
      {
        *a2 = 0;
        goto LABEL_59;
      }

      GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, v5[7]);
      if (!GraphBlock)
      {
        LOWORD(v33) = 1283;
        *&v31 = "Refencing a section that wasn't added to the graph: ";
        v32 = v49;
        getErrorErrorCat();
        operator new();
      }

      v12 = GraphBlock;
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>(*(a1 + 24), v5, &v46);
      v13 = v46;
      v30 = v7;
      if (v48)
      {
        v46 = 0;
        goto LABEL_54;
      }

      if (v47)
      {
        break;
      }

LABEL_53:
      v13 = 0;
LABEL_54:
      *a2 = v13;
LABEL_55:
      if (v48)
      {
        v26 = v46;
        v46 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }
      }

      v7 = v30;
LABEL_59:
      if (v50)
      {
        v27 = v49;
        *&v49 = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }
      }

      if (v52)
      {
        v28 = v51;
        v51 = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }
      }

      if (*a2)
      {
        goto LABEL_68;
      }

LABEL_66:
      v5 += 10;
      if (v5 == v6)
      {
        goto LABEL_67;
      }
    }

    v14 = 12 * v47;
    v15 = (v46 + 4);
    while (1)
    {
      v16 = v51;
      v17 = *v15;
      v18 = *v15 >> 8;
      v39 = v18;
      if (v17 > 0xFF)
      {
        llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(*(a1 + 24), *(a1 + 48), v18, &v53);
        if (v54)
        {
          v19 = v53;
          v53 = 0;
          *a2 = v19;
          goto LABEL_46;
        }
      }

      else
      {
        v54 = 0;
        v53 = 0;
      }

      GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v18);
      if (!GraphSymbol)
      {
        v22 = *(a1 + 112);
        *&v31 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, shndx: {1} Size of table: {2}";
        *(&v31 + 1) = 113;
        *&v32 = v38;
        *(&v32 + 1) = 3;
        v33 = &unk_2883ECF20;
        v34 = &v39;
        v35[0] = &unk_2883ED130;
        v35[1] = v53 + 14;
        v36 = &unk_2883ECC68;
        v37 = v22;
        v38[0] = &v33;
        v38[1] = v35;
        v38[2] = &v36;
        getErrorErrorCat();
        v44 = 3;
        v45 = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
      }

      v21 = *v15;
      v43 = v21;
      if (v21 > 71)
      {
        if (v21 > 75)
        {
          if (v21 == 76)
          {
            LOBYTE(v21) = 11;
          }

          else
          {
            if (v21 != 99)
            {
LABEL_52:
              *&v31 = "{0:d}: ";
              *(&v31 + 1) = 7;
              *&v32 = v35;
              *(&v32 + 1) = 1;
              v33 = &unk_2883EB018;
              v34 = &v43;
              v35[0] = &v33;
              v40 = "Unsupported loongarch relocation:";
              v41 = &v31;
              v42 = 1539;
              llvm::object::getELFRelocationTypeName(0x102, v21);
              operator new();
            }

            LOBYTE(v21) = 5;
          }
        }

        else if (v21 == 72)
        {
          LOBYTE(v21) = 9;
        }

        else
        {
          if (v21 != 75)
          {
            goto LABEL_52;
          }

          LOBYTE(v21) = 10;
        }
      }

      else if (v21 > 65)
      {
        if (v21 == 66)
        {
          LOBYTE(v21) = 4;
        }

        else
        {
          if (v21 != 71)
          {
            goto LABEL_52;
          }

          LOBYTE(v21) = 8;
        }
      }

      else if (v21 == 1)
      {
        LOBYTE(v21) = 3;
      }

      else if (v21 != 2)
      {
        goto LABEL_52;
      }

      v23 = v15[1];
      v24 = *(v15 - 1) + v16[3] - *v12;
      *&v31 = GraphSymbol;
      DWORD2(v31) = v24;
      *&v32 = v23;
      BYTE8(v32) = v21;
      llvm::jitlink::Block::addEdge(v12, &v31);
      *a2 = 0;
LABEL_46:
      if (v54)
      {
        v25 = v53;
        v53 = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }

      if (*a2)
      {
        goto LABEL_55;
      }

      v15 += 3;
      v14 -= 12;
      if (!v14)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_67:
  *a2 = 0;
LABEL_68:
  v29 = *MEMORY[0x277D85DE8];
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[9] != 12)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v33);
    v13 = std::string::insert(&v33, 0, "section ");
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v35, " has invalid sh_entsize: expected ");
    v16 = v15->__r_.__value_.__r.__words[2];
    *__p = *&v15->__r_.__value_.__l.__data_;
    v39 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v37.__r_.__value_.__r.__words[0] = 12;
    v41[0] = __p;
    v42 = &v37;
    v43 = 2564;
    v44[0] = v41;
    v45 = ", but got ";
    v46 = 770;
    v17 = a2[9];
    v47 = v44;
    v48 = v17;
    v49 = 2050;
    LODWORD(v32.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = a2[5];
  v7 = a2[5] / 0xC;
  if (a2[5] % 0xC)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v37);
    v8 = std::string::insert(&v37, 0, "section ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v33, " has an invalid sh_size (");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v35;
    v39 = v6;
    v40 = 2052;
    v41[0] = __p;
    v42 = ") which is not a multiple of its sh_entsize (";
    v43 = 770;
    v12 = a2[9];
    v44[0] = v41;
    v45 = v12;
    v46 = 2050;
    v47 = v44;
    v48 = ")";
    v49 = 770;
    LODWORD(v32.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v18 = a2[4];
  if (__CFADD__(v18, v6))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v37);
    v19 = std::string::insert(&v37, 0, "section ");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v33, " has a sh_offset (0x");
    v22 = v21->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v32.__r_.__value_.__r.__words[0] = v18;
    __p[0] = &v35;
    v39 = &v32;
    v40 = 3588;
    v41[0] = __p;
    v42 = ") + sh_size (0x";
    v43 = 770;
    v31.__r_.__value_.__r.__words[0] = v6;
    v44[0] = v41;
    v45 = &v31;
    v46 = 3586;
    v47 = v44;
    v48 = ") that cannot be represented";
    v49 = 770;
    LODWORD(v30) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (result[1] < (v6 + v18))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(result, a2, &v31);
    v23 = std::string::insert(&v31, 0, "section ");
    v24 = v23->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v32, " has a sh_offset (0x");
    v26 = v25->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v29 = v6;
    v30 = v18;
    v33.__r_.__value_.__r.__words[0] = &v37;
    v33.__r_.__value_.__r.__words[2] = &v30;
    v34 = 3588;
    v35.__r_.__value_.__r.__words[0] = &v33;
    v35.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v36 = 770;
    __p[0] = &v35;
    v39 = &v29;
    v40 = 3586;
    v41[0] = __p;
    v42 = ") that is greater than the file size (0x";
    v43 = 770;
    v28 = v4[1];
    v44[0] = v41;
    v45 = &v28;
    v46 = 3586;
    v47 = v44;
    v48 = ")";
    v49 = 770;
    v50 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v27 = *result + v18;
  *(a3 + 16) &= ~1u;
  *a3 = v27;
  *(a3 + 8) = v7;
  return result;
}

void anonymous namespace::ELFJITLinker_loongarch::~ELFJITLinker_loongarch(_anonymous_namespace_::ELFJITLinker_loongarch *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::JITLinker<anonymous namespace::ELFJITLinker_loongarch>::fixUpBlocks(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 208))
  {
    v3 = *(a1 + 216);
    if (v3)
    {
      v4 = 24 * v3;
      v5 = *(a1 + 200);
      while (*v5 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v5 += 3;
        v4 -= 24;
        if (!v4)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v5 = *(a1 + 200);
    }

    v6 = *(a1 + 200) + 24 * v3;
    if (v5 != v6)
    {
      v36 = v6;
      while (1)
      {
        v7 = v5[2];
        v38 = *(v7 + 20);
        v8 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v7 + 32);
        v37 = *(v7 + 32) + 8 * *(v7 + 48);
        if (v37 != v8)
        {
          break;
        }

LABEL_55:
        for (v5 += 3; ; v5 += 3)
        {
          if (v5 == v36)
          {
            goto LABEL_60;
          }

          if (*v5 < 0xFFFFFFFFFFFFFFFELL)
          {
            break;
          }
        }

        if (v5 == v36)
        {
          goto LABEL_60;
        }
      }

      v10 = v8;
      v11 = v9;
LABEL_12:
      v12 = *v10;
      if (v38 == 2 && (v12[1] & 4) == 0)
      {
        v14 = v12[3];
        v13 = v12[4];
        v15 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, v13, 0);
        v16 = v15;
        if (v13)
        {
          memmove(v15, v14, v13);
        }

        v12[3] = v16;
        v12[4] = v13;
        v12[1] |= 4uLL;
      }

      v18 = v12[5];
      v17 = v12[6];
      while (1)
      {
        if (v18 == v17)
        {
          do
          {
            ++v10;
          }

          while (v10 != v11 && (*v10 | 0x1000) == 0xFFFFFFFFFFFFF000);
          if (v10 == v37)
          {
            goto LABEL_55;
          }

          goto LABEL_12;
        }

        v19 = v18[24];
        if (v19 >= 2)
        {
          break;
        }

LABEL_50:
        v18 += 32;
      }

      v20 = v12[3];
      v21 = *(v18 + 2);
      v22 = *v12 + v21;
      v23 = (*(*v18 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v18 + 8);
      v24 = *(v18 + 2);
      if (v18[24] > 5u)
      {
        if (v18[24] <= 7u)
        {
          if (v19 != 6)
          {
            v26 = v23 + v24 - v22;
            goto LABEL_35;
          }

          v27 = v22 - v23;
LABEL_37:
          v25 = v27 + v24;
          if (v25 != v25)
          {
            goto LABEL_46;
          }

          goto LABEL_38;
        }

        if (v19 == 8)
        {
          v32 = ((((v23 + v24) & 0x800) + v23 + v24) & 0xFFFFFFFFFFFFF000) - (v22 & 0xFFFFFFFFFFFFF000);
          if (v32 != v32)
          {
LABEL_46:
            llvm::jitlink::makeTargetOutOfRangeError(a1, v12, v18);
          }

          v30 = *(v20 + v21) | (v32 >> 7);
          goto LABEL_44;
        }

        if (v19 != 9)
        {
          std::operator+<char>();
          v33 = std::string::append(&v40, ", section ");
          v34 = v33->__r_.__value_.__r.__words[2];
          *__p = *&v33->__r_.__value_.__l.__data_;
          v42 = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          v35 = *v12[2];
          v43 = __p;
          v44 = v35;
          v45 = 1284;
          v46 = &v43;
          v47 = " unsupported edge kind ";
          v48 = 770;
          if (!*llvm::jitlink::loongarch::getEdgeKindName(v18[24]))
          {
            v51 = v49;
            v52 = v50;
          }

          operator new();
        }

        v28 = *(v20 + v21);
        v29 = ((*(*v18 + 16) + **(*v18 + 8) + v24) & 0xFFF) << 10;
      }

      else
      {
        if (v18[24] <= 3u)
        {
          if (v19 != 2)
          {
            v25 = v23 + v24;
            if (HIDWORD(v25))
            {
              goto LABEL_46;
            }

LABEL_38:
            *(v20 + v21) = v25;
            goto LABEL_45;
          }

          v26 = v23 + v24;
LABEL_35:
          *(v20 + v21) = v26;
LABEL_45:
          *a2 = 0;
          goto LABEL_50;
        }

        if (v19 != 4)
        {
          v27 = v23 - v22;
          goto LABEL_37;
        }

        v31 = v23 - v22 + v24;
        if ((v31 + 0x8000000) >> 28)
        {
          goto LABEL_46;
        }

        if ((v31 & 3) != 0)
        {
          llvm::jitlink::makeAlignmentError(v22, v31, 4u, v18);
        }

        v29 = *(v20 + v21);
        v28 = (v31 << 8) & 0x3FFFC00 | (v31 >> 18) & 0x3FF;
      }

      v30 = v28 | v29;
LABEL_44:
      *(v20 + v21) = v30;
      goto LABEL_45;
    }
  }

LABEL_60:
  *a2 = 0;
}

void llvm::jitlink::JITLinker<anonymous namespace::ELFJITLinker_loongarch>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t *llvm::jitlink::createLinkGraphFromELFObject_riscv@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v27[0] = *a1;
  v27[1] = v5;
  llvm::object::ObjectFile::createELFObjectFile(v27, 1, &v33);
  v6 = v33;
  if ((v34 & 1) == 0)
  {
    v7 = (*(*v33 + 392))(v33);
    v8 = v33;
    if (v7 == 28)
    {
      v9 = v33[4];
      v10 = v33[5];
      v17 = *a2;
      *a2 = 0;
      *(a2 + 1) = 0;
      llvm::object::ObjectFile::makeTriple(v8, &v23);
      v32 = v17;
      v28 = v23;
      v11 = v24;
      v23 = 0uLL;
      v24 = 0;
      v30 = v25;
      v29 = v11;
      v31 = v26;
      llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::ELFLinkGraphBuilder(v27, v8 + 56, &v32, &v28, v9, v10);
    }

    v12 = v33[4];
    v13 = v33[5];
    v18 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    llvm::object::ObjectFile::makeTriple(v8, __p);
    v32 = v18;
    v28 = *__p;
    v14 = v20;
    __p[0] = 0;
    __p[1] = 0;
    v20 = 0;
    v30 = v21;
    v29 = v14;
    v31 = v22;
    llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFLinkGraphBuilder(v27, v8 + 56, &v32, &v28, v12, v13);
  }

  v33 = 0;
  *(a3 + 8) |= 1u;
  *a3 = v6;
  result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v33);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,true>>::~ELFLinkGraphBuilder_riscv(llvm::jitlink::ELFLinkGraphBuilderBase *a1)
{
  *a1 = &unk_2883ED240;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);
}

{
  *a1 = &unk_2883ED240;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,false>>::~ELFLinkGraphBuilder_riscv(llvm::jitlink::ELFLinkGraphBuilderBase *a1)
{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);
}

{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::link_ELF_riscv(uint64_t *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  if ((*(**a2 + 56))(*a2, *a1 + 136))
  {
    (*(**a2 + 64))(&v14);
    if (v15 < 8)
    {
      *&v12 = llvm::jitlink::markAllSymbolsLive;
      v13 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v8, &v12);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v12);
    }

    else
    {
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v8, &v14);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
    v15 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v8[1] + 8, &v14);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
  }

  v4 = *a1;
  (*(**a2 + 72))(&v14);
  if (!v14)
  {
    operator new();
  }

  v5 = *a2;
  v7 = v14;
  *&v14 = 0;
  (*(*v5 + 24))(v5, &v7);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *&v14 = &v10;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  *&v14 = &v9[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  *&v14 = v9;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  *&v14 = &v8[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  *&v14 = v8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::jitlink::PerGraphGOTAndPLTStubsBuilder<anonymous namespace::PerGraphGOTAndPLTStubsBuilder_ELF_riscv>::asPass@<X0>(llvm::jitlink::LinkGraph *a1@<X0>, void *a2@<X8>)
{
  v21[0] = 0;
  v21[1] = 0;
  v20 = a1;
  v22 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  llvm::jitlink::LinkGraph::blocks(a1, v29);
  v30[0] = v29[0];
  v30[1] = v29[1];
  v30[2] = v29[2];
  v30[3] = v29[3];
  llvm::jitlink::LinkGraph::blocks(a1, v27);
  v28[0] = v27[4];
  v28[1] = v27[5];
  v28[2] = v27[6];
  v28[3] = v27[7];
  std::vector<llvm::jitlink::Block *>::vector[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,0>(&v31, v30, v28);
  v4 = v31;
  v19 = v32;
  if (v31 != v32)
  {
    while (1)
    {
      v6 = *(*v4 + 40);
      v5 = *(*v4 + 48);
      while (v6 != v5)
      {
        v7 = *(v6 + 24);
        if (v7 == 7)
        {
          v10 = *v6;
          *&v29[0] = 0;
          v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v23, v10, v29);
          v12 = *&v29[0];
          if (!v11)
          {
            v12 = v23[0] + 16 * v24;
          }

          if (v12 == v23[0] + 16 * v24)
          {
            if (!v26)
            {
              llvm::jitlink::LinkGraph::createSection();
            }

            if (*(v20 + 46) == 8)
            {
            }

            else
            {
            }

            *&v29[0] = v13;
            *(&v29[0] + 1) = 16;
            *&v27[0] = 0;
            *&v30[0] = 4;
            *&v28[0] = 0;
            v14 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v20, v26, v29, v27, v30, v28);
            llvm::jitlink::Block::addEdge(v14, 6, 0, GOTEntry, 0);
            v16 = llvm::jitlink::LinkGraph::addAnonymousSymbol(v20, v14, 0, 16, 1, 0);
            v17 = *v10;
            *&v27[0] = v17;
            if ((v17 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v17 + 8), 1uLL);
            }

            *(&v27[0] + 1) = v16;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(v23, v27, v27 + 1, v29);
            v12 = *&v29[0];
            if ((*&v27[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*&v27[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          v8 = *(v12 + 8);
          v9 = 6;
        }

        else
        {
          if (v7 != 8)
          {
            goto LABEL_21;
          }

          v9 = 9;
        }

        *(v6 + 24) = v9;
        *v6 = v8;
LABEL_21:
        v6 += 32;
      }

      v4 += 8;
      if (v4 == v19)
      {
        v4 = v31;
        break;
      }
    }
  }

  *a2 = 0;
  if (v4)
  {
    v32 = v4;
    operator delete(v4);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v23);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v21);
}

void llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,true>>::addRelocations(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = v5 + (v3 << 6);
    v7 = "Refencing a section that wasn't added to the graph: ";
    while (*(v5 + 4) != 4)
    {
      *a2 = 0;
LABEL_35:
      v5 += 64;
      if (v5 == v6)
      {
        goto LABEL_36;
      }
    }

    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(*(a1 + 24), *(v5 + 44), &v25);
    if (v26)
    {
      v8 = v25;
      *a2 = v25;
      goto LABEL_34;
    }

    v9 = *(a1 + 24);
    *&v20 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionName(v9, v25, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v20, &v23);
    if (v24)
    {
      v10 = v23;
      *&v23 = 0;
      *a2 = v10;
      goto LABEL_27;
    }

    if ((*(a1 + 72) & 1) == 0 && (v20 = v23, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v20) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*a1 + 40))(a1, v25))
    {
      *a2 = 0;
LABEL_27:
      if (v24)
      {
        v17 = v23;
        *&v23 = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      if (v26)
      {
        v18 = v25;
        v25 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      v8 = *a2;
LABEL_34:
      if (v8)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, *(v5 + 44));
    if (!GraphBlock)
    {
      v22 = 1283;
      *&v20 = v7;
      v21 = v23;
      getErrorErrorCat();
      operator new();
    }

    v12 = GraphBlock;
    v13 = v7;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,true>>(*(a1 + 24), v5, &v20);
    v14 = v20;
    if (v21)
    {
      *&v20 = 0;
    }

    else
    {
      if (*(&v20 + 1))
      {
        v15 = 24 * *(&v20 + 1);
        do
        {
          llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,true>>::addSingleRelocation(a1, v14, v25, v12, a2);
          if (*a2)
          {
            goto LABEL_23;
          }

          v14 += 24;
          v15 -= 24;
        }

        while (v15);
      }

      v14 = 0;
    }

    *a2 = v14;
LABEL_23:
    if (v21)
    {
      v16 = v20;
      *&v20 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

    v7 = v13;
    goto LABEL_27;
  }

LABEL_36:
  *a2 = 0;
LABEL_37:
  v19 = *MEMORY[0x277D85DE8];
}

void llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,true>>::addSingleRelocation(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t *a5@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 8);
  if (v7 == 51)
  {
LABEL_2:
    *a5 = 0;
    goto LABEL_12;
  }

  v8 = *(a2 + 16);
  v33 = v8;
  if (v7 == 43)
  {
    if (v8)
    {
      v9 = (v8 - 1) | ((v8 - 1) >> 1) | (((v8 - 1) | ((v8 - 1) >> 1)) >> 2);
      v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
      v39 = (v10 | (v10 >> 16) | ((v10 | (v10 >> 16)) >> 32)) + 1;
      if (v39 >= 3)
      {
        *&v23 = "Unsupported relocation R_RISCV_ALIGN with alignment {0} larger than 2 (addend: {1})";
        *(&v23 + 1) = 83;
        v24 = &v30;
        v25 = 2;
        v26 = &unk_2883EC3C8;
        v27 = &v39;
        v28 = &unk_2883ED4B0;
        v29 = &v33;
        v30 = &v26;
        v31 = &v28;
        llvm::make_error<llvm::jitlink::JITLinkError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned long long &>,llvm::detail::provider_format_adapter<long long &>>>>();
      }
    }

    goto LABEL_2;
  }

  v38 = v7;
  v11 = v7 - 1;
  if ((v7 - 1) > 0x38 || ((0x1F818FF0FCF8003uLL >> v11) & 1) == 0)
  {
    *&v23 = "{0:d}: ";
    *(&v23 + 1) = 7;
    v24 = &v28;
    v25 = 1;
    v26 = &unk_2883EB018;
    v27 = &v38;
    v28 = &v26;
    v34 = "Unsupported riscv relocation:";
    v36 = &v23;
    v37 = 1539;
    llvm::object::getELFRelocationTypeName(0xF3, v7);
    operator new();
  }

  v15 = byte_2750C4238[v11];
  v16 = HIDWORD(v7);
  v38 = HIDWORD(v7);
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocationSymbol(*(a1 + 24), a2, *(a1 + 48), &v39);
  if (v40)
  {
    v17 = v39;
    v39 = 0;
    *a5 = v17;
  }

  else
  {
    GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v16);
    if (!GraphSymbol)
    {
      v21 = *(a1 + 112);
      *&v23 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, shndx: {1} Size of table: {2}";
      *(&v23 + 1) = 113;
      v24 = v32;
      v25 = 3;
      v26 = &unk_2883ECF20;
      v27 = &v38;
      v28 = &unk_2883ED130;
      v29 = (v39 + 6);
      v30 = &unk_2883ECC68;
      LODWORD(v31) = v21;
      v32[0] = &v26;
      v32[1] = &v28;
      v32[2] = &v30;
      getErrorErrorCat();
      v34 = 3;
      v35 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
    }

    v20 = *a2 + *(a3 + 16) - *a4;
    *&v23 = GraphSymbol;
    DWORD2(v23) = v20;
    v24 = v8;
    LOBYTE(v25) = v15;
    llvm::jitlink::Block::addEdge(a4, &v23);
    *a5 = 0;
  }

  if (v40)
  {
    v22 = v39;
    v39 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }
  }

LABEL_12:
  v18 = *MEMORY[0x277D85DE8];
}

void llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addRelocations(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = &v5[10 * v3];
    v7 = "Refencing a section that wasn't added to the graph: ";
    while (v5[1] != 4)
    {
      *a2 = 0;
LABEL_35:
      v5 += 10;
      if (v5 == v6)
      {
        goto LABEL_36;
      }
    }

    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(*(a1 + 24), v5[7], &v25);
    if (v26)
    {
      v8 = v25;
      *a2 = v25;
      goto LABEL_34;
    }

    v9 = *(a1 + 24);
    *&v20 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionName(v9, v25, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v20, &v23);
    if (v24)
    {
      v10 = v23;
      *&v23 = 0;
      *a2 = v10;
      goto LABEL_27;
    }

    if ((*(a1 + 72) & 1) == 0 && (v20 = v23, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v20) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*a1 + 40))(a1, v25))
    {
      *a2 = 0;
LABEL_27:
      if (v24)
      {
        v17 = v23;
        *&v23 = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      if (v26)
      {
        v18 = v25;
        v25 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      v8 = *a2;
LABEL_34:
      if (v8)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, v5[7]);
    if (!GraphBlock)
    {
      v22 = 1283;
      *&v20 = v7;
      v21 = v23;
      getErrorErrorCat();
      operator new();
    }

    v12 = GraphBlock;
    v13 = v7;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>(*(a1 + 24), v5, &v20);
    v14 = v20;
    if (v21)
    {
      *&v20 = 0;
    }

    else
    {
      if (*(&v20 + 1))
      {
        v15 = 12 * *(&v20 + 1);
        do
        {
          llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addSingleRelocation(a1, v14, v25, v12, a2);
          if (*a2)
          {
            goto LABEL_23;
          }

          v14 += 3;
          v15 -= 12;
        }

        while (v15);
      }

      v14 = 0;
    }

    *a2 = v14;
LABEL_23:
    if (v21)
    {
      v16 = v20;
      *&v20 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

    v7 = v13;
    goto LABEL_27;
  }

LABEL_36:
  *a2 = 0;
LABEL_37:
  v19 = *MEMORY[0x277D85DE8];
}

void llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addSingleRelocation(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t *a5@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2[1];
  if (v7 == 51)
  {
LABEL_2:
    *a5 = 0;
    goto LABEL_12;
  }

  v8 = a2[2];
  v32 = v8;
  if (v7 == 43)
  {
    if (v8)
    {
      v9 = (v8 - 1) | ((v8 - 1) >> 1) | (((v8 - 1) | ((v8 - 1) >> 1)) >> 2);
      v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
      v38 = (v10 | (v10 >> 16) | ((v10 | (v10 >> 16)) >> 32)) + 1;
      if (v38 >= 3)
      {
        *&v22 = "Unsupported relocation R_RISCV_ALIGN with alignment {0} larger than 2 (addend: {1})";
        *(&v22 + 1) = 83;
        v23 = &v29;
        v24 = 2;
        v25 = &unk_2883EC3C8;
        v26 = &v38;
        v27 = &unk_2883ED4B0;
        v28 = &v32;
        v29 = &v25;
        v30 = &v27;
        llvm::make_error<llvm::jitlink::JITLinkError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned long long &>,llvm::detail::provider_format_adapter<long long &>>>>();
      }
    }

    goto LABEL_2;
  }

  v37 = v7;
  if ((v7 - 1) > 0x38u || ((0x1F818FF0FCF8003uLL >> (v7 - 1)) & 1) == 0)
  {
    *&v22 = "{0:d}: ";
    *(&v22 + 1) = 7;
    v23 = &v27;
    v24 = 1;
    v25 = &unk_2883EB018;
    v26 = &v37;
    v27 = &v25;
    v33 = "Unsupported riscv relocation:";
    v35 = &v22;
    v36 = 1539;
    llvm::object::getELFRelocationTypeName(0xF3, v7);
    operator new();
  }

  v14 = byte_2750C4238[(v7 - 1)];
  v15 = v7 >> 8;
  v37 = v7 >> 8;
  if (v7 <= 0xFF)
  {
    LOBYTE(v39) = 0;
    v38 = 0;
LABEL_15:
    GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v15);
    if (!GraphSymbol)
    {
      v20 = *(a1 + 112);
      *&v22 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, shndx: {1} Size of table: {2}";
      *(&v22 + 1) = 113;
      v23 = v31;
      v24 = 3;
      v25 = &unk_2883ECF20;
      v26 = &v37;
      v27 = &unk_2883ED130;
      v28 = (v38 + 14);
      v29 = &unk_2883ECC68;
      LODWORD(v30) = v20;
      v31[0] = &v25;
      v31[1] = &v27;
      v31[2] = &v29;
      getErrorErrorCat();
      v33 = 3;
      v34 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
    }

    v19 = *a2 + *(a3 + 12) - *a4;
    *&v22 = GraphSymbol;
    DWORD2(v22) = v19;
    v23 = v8;
    LOBYTE(v24) = v14;
    llvm::jitlink::Block::addEdge(a4, &v22);
    *a5 = 0;
    goto LABEL_18;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(*(a1 + 24), *(a1 + 48), v15, &v38);
  if ((v39 & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = v38;
  v38 = 0;
  *a5 = v17;
LABEL_18:
  if (v39)
  {
    v21 = v38;
    v38 = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::jitlink::PerGraphGOTAndPLTStubsBuilder<anonymous namespace::PerGraphGOTAndPLTStubsBuilder_ELF_riscv>::getGOTEntry(uint64_t a1, uint64_t *a2)
{
  v18[0] = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((a1 + 8), a2, v18);
  v5 = v18[0];
  if (!v4)
  {
    v5 = *(a1 + 8) + 16 * *(a1 + 24);
  }

  if (v5 == *(a1 + 8) + 16 * *(a1 + 24))
  {
    v6 = *a1;
    v7 = *(a1 + 56);
    if (!v7)
    {
      v8 = *a1;
      llvm::jitlink::LinkGraph::createSection();
    }

    v9 = *(*a1 + 184);
    v18[1] = v9;
    v16 = 0;
    v20 = v9;
    v19 = 0;
    v10 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v6, v7, v18, &v16, &v20, &v19);
    v11 = v10;
    if (*(*a1 + 184) == 8)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    llvm::jitlink::Block::addEdge(v10, v12, 0, a2, 0);
    v13 = llvm::jitlink::LinkGraph::addAnonymousSymbol(*a1, v11, 0, *(*a1 + 184), 0, 0);
    v14 = *a2;
    v16 = v14;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v14 + 8), 1uLL);
    }

    v17 = v13;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(a1 + 8, &v16, &v17, v18);
    v5 = v18[0];
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return *(v5 + 8);
}

void llvm::jitlink::ELFJITLinker_riscv::~ELFJITLinker_riscv(llvm::jitlink::ELFJITLinker_riscv *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_riscv>::fixUpBlocks(uint64_t a1@<X1>, void *a2@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  if (*(a1 + 208))
  {
    v3 = *(a1 + 216);
    if (v3)
    {
      v4 = 24 * v3;
      v5 = *(a1 + 200);
      while (*v5 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v5 += 3;
        v4 -= 24;
        if (!v4)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      v5 = *(a1 + 200);
    }

    v6 = *(a1 + 200) + 24 * v3;
    if (v5 != v6)
    {
      v50 = v6;
      do
      {
        v7 = v5[2];
        v8 = *(v7 + 20);
        v9 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v7 + 32);
        v11 = *(v7 + 32) + 8 * *(v7 + 48);
        if (v11 != v9)
        {
          v12 = v9;
          v13 = v10;
          do
          {
            v14 = *v12;
            if (v8 == 2 && (v14[1] & 4) == 0)
            {
              v16 = v14[3];
              v15 = v14[4];
              v17 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, v15, 0);
              v18 = v17;
              if (v15)
              {
                memmove(v17, v16, v15);
              }

              v14[3] = v18;
              v14[4] = v15;
              v14[1] |= 4uLL;
            }

            v19 = v14[5];
            v20 = v14[6];
            while (v19 != v20)
            {
              if (*(v19 + 24) >= 2u)
              {
                v21 = v19[2];
                v22 = (v14[3] + v21);
                v23 = *v14 + v21;
                switch(*(v19 + 24))
                {
                  case 2:
                  case 0x1D:
                    v24 = **(*v19 + 8);
                    v25 = *(*v19 + 16);
                    goto LABEL_46;
                  case 3:
                    v37 = **(*v19 + 8);
                    v38 = *(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL;
                    goto LABEL_48;
                  case 4:
                    v27 = **(*v19 + 8) - v23 + (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2);
                    if (((v27 >> 1) + 2048) >= 0x1000)
                    {
                      goto LABEL_75;
                    }

                    if ((**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]))
                    {
                      goto LABEL_76;
                    }

                    v42 = vdupq_n_s32(**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]);
                    v43 = vshlq_u32(v42, xmmword_2750C41E0);
                    v43.i32[3] = vshlq_u32(v42, xmmword_2750C41F0).i32[3];
                    v44 = vandq_s8(v43, xmmword_2750C4200);
                    *v44.i8 = vorr_s8(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
                    v26 = v44.i32[0] | *v22 & 0x1FFF07F | v44.i32[1];
                    goto LABEL_72;
                  case 5:
                    v27 = **(*v19 + 8) - v23 + (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2);
                    if (((v27 >> 1) + 0x80000) >= 0x100000)
                    {
                      goto LABEL_75;
                    }

                    if ((**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]))
                    {
                      goto LABEL_76;
                    }

                    *v22 = v27 & 0xFF000 | ((v27 >> 20) << 31) | (((v27 >> 1) & 0x3FF) << 21) | (((v27 >> 11) & 1) << 20) | *v22 & 0xFFF;
                    goto LABEL_73;
                  case 6:
                    if ((**(*v19 + 8) - v23 + (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2) + 2147485696u) >> 32)
                    {
                      goto LABEL_75;
                    }

                    v39 = v22[1] | ((**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]) << 20);
                    *v22 |= (**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4] + 2048) & 0xFFFFF000;
                    v22[1] = v39;
                    goto LABEL_73;
                  case 9:
                    v41 = **(*v19 + 8) - v23 + (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2);
                    goto LABEL_57;
                  case 0xA:
                    llvm::jitlink::getRISCVPCRelHi20(&v52, *(*(*v19 + 8) + 40), *(*(*v19 + 8) + 48), *(*v19 + 16));
                    if (v53)
                    {
                      goto LABEL_60;
                    }

                    v32 = *(*v52 + 16) + v52[4] + **(*v52 + 8) - (**(*v19 + 8) + *(*v19 + 16));
                    goto LABEL_43;
                  case 0xB:
                    llvm::jitlink::getRISCVPCRelHi20(&v52, *(*(*v19 + 8) + 40), *(*(*v19 + 8) + 48), *(*v19 + 16));
                    if (v53)
                    {
LABEL_60:
                      v45 = v52;
                      *a2 = v52;
                      if (v45)
                      {
                        goto LABEL_86;
                      }
                    }

                    else
                    {
                      v40 = *(*v52 + 16) + v52[4] + **(*v52 + 8) - (**(*v19 + 8) + *(*v19 + 16));
LABEL_71:
                      v26 = *v22 & 0x1FFF07F | ((v40 >> 5) << 25) | ((v40 & 0x1F) << 7);
LABEL_72:
                      *v22 = v26;
LABEL_73:
                      *a2 = 0;
                    }

                    break;
                  case 0xC:
                    v41 = (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2) + **(*v19 + 8);
LABEL_57:
                    if ((v41 + 2147485696) >> 32)
                    {
                      goto LABEL_75;
                    }

                    v26 = (v41 + 2048) & 0xFFFFF000 | *v22 & 0xFFF;
                    goto LABEL_72;
                  case 0xD:
                    v32 = *(*v19 + 16) + v19[4] + **(*v19 + 8);
LABEL_43:
                    v31 = *v22 & 0xFFFFF | (v32 << 20);
                    goto LABEL_44;
                  case 0xE:
                    v40 = *(*v19 + 16) + v19[4] + **(*v19 + 8);
                    goto LABEL_71;
                  case 0xF:
                    v34 = **(*v19 + 8);
                    v35 = *(*v19 + 16) + *v22;
                    goto LABEL_39;
                  case 0x10:
                    v29 = **(*v19 + 8);
                    v30 = *(*v19 + 16) + *v22;
                    goto LABEL_28;
                  case 0x11:
                    v24 = **(*v19 + 8);
                    v25 = *(*v19 + 16) + *v22;
LABEL_46:
                    v26 = v25 + v19[4] + v24;
                    goto LABEL_72;
                  case 0x12:
                    v37 = **(*v19 + 8);
                    v38 = (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *v22;
LABEL_48:
                    v36 = v38 + *(v19 + 2) + v37;
                    goto LABEL_49;
                  case 0x13:
                    v33 = *v22 - (*(*v19 + 16) + v19[4]) - **(*v19 + 8);
                    goto LABEL_64;
                  case 0x14:
                    v28 = *v22 - (*(*v19 + 16) + v19[4]) - **(*v19 + 8);
                    goto LABEL_68;
                  case 0x15:
                    v26 = *v22 - (*(*v19 + 16) + v19[4]) - **(*v19 + 8);
                    goto LABEL_72;
                  case 0x16:
                    v36 = *v22 - ((*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2)) - **(*v19 + 8);
LABEL_49:
                    *v22 = v36;
                    goto LABEL_73;
                  case 0x17:
                    v27 = **(*v19 + 8) - v23 + (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2);
                    if (v27 >> 1 != (v27 >> 1))
                    {
                      goto LABEL_75;
                    }

                    if ((**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]))
                    {
                      goto LABEL_76;
                    }

                    v46 = vdupq_n_s32(**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]);
                    v47 = vshlq_u32(v46, xmmword_2750C41B0);
                    v47.i32[2] = vshlq_u32(v46, xmmword_2750C41C0).i32[2];
                    v48 = vandq_s8(v47, xmmword_2750C41D0);
                    *v48.i8 = vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
                    v28 = *v22 & 0xE383 | v48.i32[0] | ((**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]) >> 3) & 4 | v48.i32[1];
                    goto LABEL_68;
                  case 0x18:
                    v27 = **(*v19 + 8) - v23 + (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2);
                    if (((v27 >> 1) + 1024) >= 0x800)
                    {
LABEL_75:
                      llvm::jitlink::makeTargetOutOfRangeError(a1, v14, v19);
                    }

                    if ((**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]))
                    {
LABEL_76:
                      llvm::jitlink::makeAlignmentError(v23, v27, 2u, v19);
                    }

                    v28 = *v22 & 0xE003 | (v27 >> 3) & 4 | (2 * v27) & 0x1600 | (((v27 >> 4) & 1) << 11) | (v27 >> 2) & 0x100 | (((v27 >> 6) & 1) << 7) | (v27 >> 1) & 0x40 | (8 * ((v27 >> 1) & 7));
LABEL_68:
                    *v22 = v28;
                    goto LABEL_73;
                  case 0x19:
                    v33 = *v22 & 0xC0 | (*v22 + v19[4] - *(*v19 + 16) - **(*v19 + 8)) & 0x3F;
LABEL_64:
                    *v22 = v33;
                    goto LABEL_73;
                  case 0x1A:
                    v31 = *v22 & 0xFFFFFFC0 | (*(*v19 + 16) + v19[4] + **(*v19 + 8)) & 0x3F;
LABEL_44:
                    *v22 = v31;
                    goto LABEL_73;
                  case 0x1B:
                    v34 = **(*v19 + 8);
                    v35 = *(*v19 + 16);
LABEL_39:
                    *v22 = v35 + *(v19 + 16) + v34;
                    goto LABEL_73;
                  case 0x1C:
                    v29 = **(*v19 + 8);
                    v30 = *(*v19 + 16);
LABEL_28:
                    *v22 = v30 + *(v19 + 8) + v29;
                    goto LABEL_73;
                  case 0x1E:
                    v26 = **(*v19 + 8) - v23 + *(*v19 + 16) + v19[4];
                    goto LABEL_72;
                  default:
                    goto LABEL_73;
                }
              }

              v19 += 8;
            }

            do
            {
              ++v12;
            }

            while (v12 != v13 && (*v12 | 0x1000) == 0xFFFFFFFFFFFFF000);
          }

          while (v12 != v11);
        }

        for (v5 += 3; ; v5 += 3)
        {
          if (v5 == v50)
          {
            goto LABEL_85;
          }

          if (*v5 < 0xFFFFFFFFFFFFFFFELL)
          {
            break;
          }
        }
      }

      while (v5 != v50);
    }
  }

LABEL_85:
  *a2 = 0;
LABEL_86:
  v49 = *MEMORY[0x277D85DE8];
}

void llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_riscv>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::jitlink::getRISCVPCRelHi20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a2)
  {
    v9 = a3;
    goto LABEL_22;
  }

  v4 = a4 & 0x1FFFFFFFFFFFFFFLL;
  v5 = (a3 - a2) >> 5;
  while (1)
  {
    v6 = v5 >> 1;
    v7 = a2 + 32 * (v5 >> 1);
    v8 = *(v7 + 8);
    if (v4 <= v8)
    {
      break;
    }

    a2 = v7 + 32;
    v6 = v5 + ~v6;
LABEL_7:
    v5 = v6;
    if (!v6)
    {
      v9 = a2;
      a3 = a2;
      goto LABEL_22;
    }
  }

  if (v4 < v8)
  {
    a3 = a2 + 32 * (v5 >> 1);
    goto LABEL_7;
  }

  v9 = a2 + 32 * (v5 >> 1);
  if (v5 != 1)
  {
    do
    {
      v10 = v6 >> 1;
      v11 = a2 + 32 * (v6 >> 1);
      v12 = *(v11 + 8);
      v13 = v11 + 32;
      v6 += ~(v6 >> 1);
      if (v4 > v12)
      {
        a2 = v13;
      }

      else
      {
        v6 = v10;
      }
    }

    while (v6);
    v9 = a2;
  }

  v14 = v7 + 32;
  if (a3 != v7 + 32)
  {
    v15 = (a3 - (v7 + 32)) >> 5;
    a3 = v14;
    do
    {
      v16 = v15 >> 1;
      v17 = a3 + 32 * (v15 >> 1);
      v18 = *(v17 + 8);
      v19 = v17 + 32;
      v15 += ~(v15 >> 1);
      if (v4 < v18)
      {
        v15 = v16;
      }

      else
      {
        a3 = v19;
      }
    }

    while (v15);
  }

LABEL_22:
  if (a3 == v9)
  {
LABEL_25:
    llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
  }

  while (*(v9 + 24) != 9)
  {
    v9 += 32;
    if (v9 == a3)
    {
      goto LABEL_25;
    }
  }

  *(result + 8) &= ~1u;
  *result = v9;
  return result;
}

uint64_t *llvm::jitlink::createLinkGraphFromELFObject_x86_64@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  llvm::object::ObjectFile::createELFObjectFile(v12, 1, &v13);
  v6 = v13;
  if ((v14 & 1) == 0)
  {
    v7 = *(v13 + 32);
    v8 = *(v13 + 40);
    v11 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    llvm::jitlink::ELFLinkGraphBuilder_x86_64::ELFLinkGraphBuilder_x86_64(v12, v7, v8, &v11, v6 + 56);
  }

  v13 = 0;
  *(a3 + 8) |= 1u;
  *a3 = v6;
  result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v13);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::jitlink::ELFLinkGraphBuilder_x86_64::~ELFLinkGraphBuilder_x86_64(llvm::jitlink::ELFLinkGraphBuilder_x86_64 *this)
{
  *this = &unk_2883ED240;
  MEMORY[0x277C69E30](*(this + 16), 8);
  MEMORY[0x277C69E30](*(this + 13), 8);
  MEMORY[0x277C69E30](*(this + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(this);
}

{
  *this = &unk_2883ED240;
  MEMORY[0x277C69E30](*(this + 16), 8);
  MEMORY[0x277C69E30](*(this + 13), 8);
  MEMORY[0x277C69E30](*(this + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::link_ELF_x86_64(uint64_t *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  if ((*(**a2 + 56))(*a2, *a1 + 136))
  {
    v17 = ".eh_frame";
    *&v18 = 9;
    v19 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::DWARFRecordSectionSplitter,llvm::jitlink::DWARFRecordSectionSplitter,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v11, &v17);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v17);
    v4 = operator new(0x20uLL, 8uLL);
    v18 = xmmword_2750C12D0;
    *v4 = ".eh_frame";
    v4[1] = 9;
    *(v4 + 4) = 8;
    *(v4 + 5) = 101122563;
    *(v4 + 24) = 9;
    v17 = v4;
    v19 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::EHFrameEdgeFixer,llvm::jitlink::EHFrameEdgeFixer,void>::Callbacks;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v11, &v17);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v17);
    v17 = ".eh_frame";
    *&v18 = 9;
    v19 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::EHFrameNullTerminator,llvm::jitlink::EHFrameNullTerminator,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v11, &v17);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v17);
    v5 = *a1 + 136;
    (*(**a2 + 64))(&v17);
    if (v19 < 8)
    {
      *&v15 = llvm::jitlink::markAllSymbolsLive;
      v16 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v11, &v15);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v15);
    }

    else
    {
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v11, &v17);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v17);
    v19 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v11[1] + 8, &v17);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v17);
    v6 = operator new(0x20uLL, 8uLL);
    v17 = v6;
    v18 = xmmword_2750C12D0;
    *v6 = 0;
    v6[1] = 0;
    *(v6 + 4) = 0;
    v6[3] = llvm::jitlink::identifyELFSectionStartAndEndSymbols;
    v19 = (off_2815A4380 + 4);
    MEMORY[0x277C69E30](0, 8);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v12, &v17);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v17);
    MEMORY[0x277C69E30](0, 8);
    v17 = llvm::jitlink::x86_64::optimizeGOTAndStubAccesses;
    v19 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v12[1] + 8, &v17);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v17);
  }

  v7 = *a1;
  (*(**a2 + 72))(&v17);
  if (!v17)
  {
    operator new();
  }

  v8 = *a2;
  v10 = v17;
  v17 = 0;
  (*(*v8 + 24))(v8, &v10);
  if (v10)
  {
    (*(*v10 + 1))(v10);
  }

  if (v17)
  {
    (*(*v17 + 1))(v17);
  }

  v17 = &v13;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v17);
  v17 = &v12[1] + 1;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v17);
  v17 = v12;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v17);
  v17 = &v11[1] + 1;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v17);
  v17 = v11;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v17);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t *anonymous namespace::buildTables_ELF_x86_64@<X0>(_anonymous_namespace_ *this@<X0>, void *a2@<X8>)
{
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  v29 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  v25 = v27;
  v26 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v22 = 0;
  llvm::jitlink::LinkGraph::blocks(this, v32);
  v33[0] = v32[0];
  v33[1] = v32[1];
  v33[2] = v32[2];
  v33[3] = v32[3];
  llvm::jitlink::LinkGraph::blocks(this, v30);
  v31[0] = v30[4];
  v31[1] = v30[5];
  v31[2] = v30[6];
  v31[3] = v30[7];
  std::vector<llvm::jitlink::Block *>::vector[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,0>(&v34, v33, v31);
  v5 = v34;
  v6 = v35;
  if (v34 != v35)
  {
    v19 = a2;
    do
    {
      v7 = *v5;
      v9 = *(*v5 + 40);
      v8 = *(*v5 + 48);
      while (v9 != v8)
      {
        if ((llvm::jitlink::x86_64::GOTTableManager::visitEdge(v27, this, v7, v9) & 1) == 0 && (llvm::jitlink::x86_64::PLTTableManager::visitEdge(v23, this, v7, v9) & 1) == 0 && v9[24] == 23)
        {
          v9[24] = 7;
          v10 = *v9;
          *&v32[0] = 0;
          v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v20, v10, v32);
          v12 = *&v32[0];
          if (!v11)
          {
            v12 = v20[0] + 16 * v21;
          }

          if (v12 == v20[0] + 16 * v21)
          {
            v13 = v22;
            if (!v22)
            {
              llvm::jitlink::LinkGraph::createSection();
            }

            v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(this, 16, 0);
            *v14 = 0;
            v14[1] = 0;
            *&v32[0] = v14;
            *(&v32[0] + 1) = 16;
            *&v30[0] = 0;
            *&v33[0] = 8;
            *&v31[0] = 0;
            v15 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::MutableArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(this, v13, v32, v30, v33, v31);
            llvm::jitlink::Block::addEdge(v15, 2, 8, v10, 0);
            v16 = llvm::jitlink::LinkGraph::addAnonymousSymbol(this, v15, 0, 16, 0, 0);
            v17 = *v10;
            *&v30[0] = v17;
            if ((v17 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v17 + 8), 1uLL);
            }

            *(&v30[0] + 1) = v16;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(v20, v30, v30 + 1, v32);
            v12 = *&v32[0];
            if ((*&v30[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*&v30[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          *v9 = *(v12 + 8);
        }

        v9 += 32;
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = v34;
    a2 = v19;
  }

  if (v5)
  {
    v35 = v5;
    operator delete(v5);
  }

  *a2 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v20);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v23);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v27);
}

uint64_t llvm::jitlink::identifyELFSectionStartAndEndSymbols(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = *a2;
  v5 = *a2 - 1;
  if (v5 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v4 + 8), 1uLL);
  }

  v6 = *v4;
  if (*v4 < 7uLL)
  {
    if (v6 < 5)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (*(v4 + 16) != 1953718111 || *(v4 + 19) != 1953653108)
  {
LABEL_10:
    if (*(v4 + 16) != 1852137311 || *(v4 + 20) != 100)
    {
      goto LABEL_14;
    }

    result = llvm::jitlink::LinkGraph::findSectionByName(a1, v4 + 21, v6 - 5, a4);
    if (!result)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  result = llvm::jitlink::LinkGraph::findSectionByName(a1, v4 + 23, *v4 - 7, a4);
  if (!result)
  {
LABEL_14:
    result = 0;
  }

LABEL_15:
  if (v5 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void llvm::jitlink::ELFLinkGraphBuilder_x86_64::ELFLinkGraphBuilder_x86_64(int a1, void *a2, size_t a3, __int128 *a4, int a5)
{
  v12 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v9 = "x86_64-unknown-linux";
  v10 = 259;
  llvm::Triple::Triple(__p, &v9);
  llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::ELFLinkGraphBuilder(a1, a5, &v12, __p, a2, a3);
}

void llvm::jitlink::ELFLinkGraphBuilder_x86_64::addRelocations(llvm::jitlink::ELFLinkGraphBuilder_x86_64 *this@<X0>, uint64_t *a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(this + 5);
  if (v3)
  {
    v5 = *(this + 4);
    v6 = v5 + (v3 << 6);
    v7 = "Refencing a section that wasn't added to the graph: ";
    while (1)
    {
      v8 = *(v5 + 4);
      if (v8 == 9)
      {
        getErrorErrorCat();
        *&v21 = 3;
        *(&v21 + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }

      if (v8 == 4)
      {
        break;
      }

      *a2 = 0;
LABEL_36:
      v5 += 64;
      if (v5 == v6)
      {
        goto LABEL_37;
      }
    }

    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(*(this + 3), *(v5 + 44), &v26);
    if (v27)
    {
      v9 = v26;
      *a2 = v26;
      goto LABEL_35;
    }

    v10 = *(this + 3);
    *&v21 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionName(v10, v26, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v21, &v24);
    if (v25)
    {
      v11 = v24;
      *&v24 = 0;
      *a2 = v11;
      goto LABEL_28;
    }

    if ((*(this + 72) & 1) == 0 && (v21 = v24, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v21) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*this + 40))(this, v26))
    {
      *a2 = 0;
LABEL_28:
      if (v25)
      {
        v18 = v24;
        *&v24 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      if (v27)
      {
        v19 = v26;
        v26 = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }
      }

      v9 = *a2;
LABEL_35:
      if (v9)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(this, *(v5 + 44));
    if (!GraphBlock)
    {
      v23 = 1283;
      *&v21 = v7;
      v22 = v24;
      getErrorErrorCat();
      operator new();
    }

    v13 = GraphBlock;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,true>>(*(this + 3), v5, &v21);
    v14 = v21;
    v15 = v7;
    if (v22)
    {
      *&v21 = 0;
    }

    else
    {
      if (*(&v21 + 1))
      {
        v16 = 24 * *(&v21 + 1);
        do
        {
          llvm::jitlink::ELFLinkGraphBuilder_x86_64::addSingleRelocation(this, v14, v26, v13, a2);
          if (*a2)
          {
            goto LABEL_24;
          }

          v14 += 24;
          v16 -= 24;
        }

        while (v16);
      }

      v14 = 0;
    }

    *a2 = v14;
LABEL_24:
    if (v22)
    {
      v17 = v21;
      *&v21 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v7 = v15;
    goto LABEL_28;
  }

LABEL_37:
  *a2 = 0;
LABEL_39:
  v20 = *MEMORY[0x277D85DE8];
}

void llvm::jitlink::ELFLinkGraphBuilder_x86_64::addSingleRelocation(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 12);
  v43 = v10;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocationSymbol(*(a1 + 24), a2, *(a1 + 48), &v50);
  if (v51)
  {
    v11 = v50;
    v50 = 0;
    *a5 = v11;
    goto LABEL_50;
  }

  GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v10);
  if (!GraphSymbol)
  {
    v16 = *(a1 + 112);
    v33 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, shndx: {1} Size of table: {2}";
    v34 = 113;
    v35 = v42;
    v36 = 3;
    v37 = &unk_2883ECF20;
    v38 = &v43;
    v39[0] = &unk_2883ED130;
    v39[1] = v50 + 6;
    v40 = &unk_2883ECC68;
    v41 = v16;
    v42[0] = &v37;
    v42[1] = v39;
    v42[2] = &v40;
    getErrorErrorCat();
    v48 = 3;
    v49 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
  }

  v13 = *(a2 + 8);
  v47 = v13;
  if (v13 > 23)
  {
    if (v13 <= 27)
    {
      if (v13 != 24)
      {
        if (v13 == 25)
        {
          v14 = *(a2 + 16);
          v15 = 10;
          goto LABEL_37;
        }

        if (v13 != 27)
        {
          goto LABEL_54;
        }

        v14 = *(a2 + 16);
        v15 = 17;
        goto LABEL_37;
      }
    }

    else
    {
      if (v13 > 40)
      {
        if (v13 == 41)
        {
          v14 = 0;
          v15 = 21;
          goto LABEL_37;
        }

        if (v13 == 42)
        {
          v14 = 0;
          v15 = 20;
          goto LABEL_37;
        }

        goto LABEL_54;
      }

      if (v13 == 28)
      {
        v14 = *(a2 + 16);
        v15 = 16;
        goto LABEL_37;
      }

      if (v13 != 29)
      {
        goto LABEL_54;
      }
    }

    v14 = *(a2 + 16);
    v15 = 6;
    goto LABEL_37;
  }

  if (v13 > 8)
  {
    if (v13 <= 10)
    {
      v14 = *(a2 + 16);
      if (v13 == 9)
      {
        v15 = 15;
      }

      else
      {
        v15 = 3;
      }

      goto LABEL_37;
    }

    if (v13 == 11)
    {
      v14 = *(a2 + 16);
      v15 = 4;
      goto LABEL_37;
    }

    if (v13 == 19)
    {
      v14 = *(a2 + 16);
      v15 = 23;
      goto LABEL_37;
    }

LABEL_54:
    v33 = "{0:d}: ";
    v34 = 7;
    v35 = v39;
    v36 = 1;
    v37 = &unk_2883EB018;
    v38 = &v47;
    v39[0] = &v37;
    v44 = "Unsupported x86-64 relocation type ";
    v45 = &v33;
    v46 = 1539;
    llvm::object::getELFRelocationTypeName(0x3E, v13);
    operator new();
  }

  if (v13 == 1)
  {
    v14 = *(a2 + 16);
    v15 = 2;
    goto LABEL_37;
  }

  if (v13 == 2)
  {
    v14 = *(a2 + 16);
    v15 = 7;
    goto LABEL_37;
  }

  if (v13 != 4)
  {
    goto LABEL_54;
  }

  v14 = *(a2 + 16) + 4;
  v15 = 11;
LABEL_37:
  v17 = *a2 + *(a3 + 16) - *a4;
  v18 = *(a4 + 48);
  v19 = *(a4 + 56);
  if (v18 >= v19)
  {
    v21 = *(a4 + 40);
    v22 = (v18 - v21) >> 5;
    v23 = v22 + 1;
    if ((v22 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v24 = v19 - v21;
    if (v24 >> 4 > v23)
    {
      v23 = v24 >> 4;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFE0)
    {
      v25 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v23;
    }

    if (v25)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>(a4 + 40, v25);
    }

    v26 = 32 * v22;
    *v26 = GraphSymbol;
    *(v26 + 8) = v17;
    *(v26 + 16) = v14;
    *(v26 + 24) = v15;
    v20 = 32 * v22 + 32;
    v27 = *(a4 + 40);
    v28 = *(a4 + 48) - v27;
    v29 = (32 * v22 - v28);
    memcpy(v29, v27, v28);
    v30 = *(a4 + 40);
    *(a4 + 40) = v29;
    *(a4 + 48) = v20;
    *(a4 + 56) = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v18 = GraphSymbol;
    *(v18 + 8) = v17;
    *(v18 + 16) = v14;
    v20 = v18 + 32;
    *(v18 + 24) = v15;
  }

  *(a4 + 48) = v20;
  *a5 = 0;
LABEL_50:
  if (v51)
  {
    v31 = v50;
    v50 = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::jitlink::DefineExternalSectionStartAndEndSymbols<llvm::jitlink::SectionRangeSymbolDesc (&)(llvm::jitlink::LinkGraph &,llvm::jitlink::Symbol &)>>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 224);
  v8 = v7;
  llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 224);
  v9 = *(a2 + 224) + 8 * *(a2 + 240);
  std::vector<llvm::jitlink::Symbol *>::vector[abi:nn200100]<llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,0>(&v23, v6, v8, v9, v9);
  v10 = v23;
  v11 = v24;
  if (v23 == v24)
  {
    goto LABEL_16;
  }

  do
  {
    v12 = *v10;
    v13 = (*(a1 + 24))(a2, *v10);
    if (!v13)
    {
      goto LABEL_14;
    }

    v15 = v13;
    v16 = v14;
    v26 = v13;
    v28[0] = 0;
    v17 = llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(a1, &v26, v28);
    v18 = v28[0];
    if (!v17)
    {
      v18 = *a1 + 24 * *(a1 + 16);
    }

    if (v18 == *a1 + 24 * *(a1 + 16))
    {
      llvm::jitlink::SectionRange::SectionRange(&v25, v15);
      v26 = v15;
      v27 = v25;
      llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::try_emplace<llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>(a1, &v26, &v27, v28);
      v18 = v28[0];
    }

    v19 = *(v18 + 8);
    if (v16)
    {
      if (v19)
      {
        v20 = a2;
        v21 = v12;
        v22 = 0;
LABEL_12:
        llvm::jitlink::LinkGraph::makeDefined(v20, v21, v19, v22, 0, 0, 3, 0);
        goto LABEL_14;
      }
    }

    else if (v19)
    {
      v19 = *(v18 + 16);
      v22 = *(v19 + 32);
      v20 = a2;
      v21 = v12;
      goto LABEL_12;
    }

    llvm::jitlink::LinkGraph::makeAbsolute(a2, v12, v19);
LABEL_14:
    ++v10;
  }

  while (v10 != v11);
  v10 = v23;
LABEL_16:
  *a3 = 0;
  if (v10)
  {
    v24 = v10;
    operator delete(v10);
  }
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::MoveImpl<llvm::jitlink::DefineExternalSectionStartAndEndSymbols<llvm::jitlink::SectionRangeSymbolDesc (&)(llvm::jitlink::LinkGraph &,llvm::jitlink::Symbol &)>>(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = *a2;
  *a2 = 0;
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v2 = *(result + 12);
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  *(result + 24) = *(a2 + 24);
  return result;
}

void llvm::jitlink::ELFJITLinker_x86_64::~ELFJITLinker_x86_64(llvm::jitlink::ELFJITLinker_x86_64 *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

uint64_t **llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_x86_64>::fixUpBlocks@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 208))
  {
    v5 = result;
    v6 = *(a2 + 216);
    if (v6)
    {
      v7 = 24 * v6;
      v8 = *(a2 + 200);
      while (*v8 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v8 += 3;
        v7 -= 24;
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v8 = *(a2 + 200);
    }

    v9 = *(a2 + 200) + 24 * v6;
LABEL_10:
    if (v8 != v9)
    {
      v10 = v8[2];
      v21 = *(v10 + 20);
      result = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v10 + 32);
      v20 = *(v10 + 32) + 8 * *(v10 + 48);
      if (v20 == result)
      {
        goto LABEL_26;
      }

      v12 = result;
      v13 = v11;
      do
      {
        v14 = *v12;
        if (v21 == 2 && (v14[1] & 4) == 0)
        {
          v15 = v14[4];
          __src = v14[3];
          result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, v15, 0);
          v16 = result;
          if (v15)
          {
            result = memmove(result, __src, v15);
          }

          v14[3] = v16;
          v14[4] = v15;
          v14[1] |= 4uLL;
        }

        v17 = v14[5];
        v18 = v14[6];
        while (v17 != v18)
        {
          if (*(v17 + 24) >= 2u)
          {
            result = llvm::jitlink::x86_64::applyFixup(a2, v14, v17, v5[19], a3);
            if (*a3)
            {
              return result;
            }
          }

          v17 += 32;
        }

        do
        {
          ++v12;
        }

        while (v12 != v13 && (*v12 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v12 != v20);
LABEL_26:
      while (1)
      {
        v8 += 3;
        if (v8 == v9)
        {
          break;
        }

        if (*v8 < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_10;
        }
      }
    }
  }

LABEL_6:
  *a3 = 0;
  return result;
}

void llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_x86_64>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::jitlink::ELFJITLinker_x86_64::ELFJITLinker_x86_64(std::unique_ptr<llvm::jitlink::JITLinkContext>,std::unique_ptr<llvm::jitlink::LinkGraph>,llvm::jitlink::PassConfiguration)::{lambda(llvm::jitlink::LinkGraph &)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  v42 = a2;
  v43 = v5;
  v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 224);
  v8 = v7;
  llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 224);
  v9 = *(a2 + 224) + 8 * *(a2 + 240);
  std::vector<llvm::jitlink::Symbol *>::vector[abi:nn200100]<llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,0>(&v44, v6, v8, v9, v9);
  v11 = v44;
  v12 = v45;
  if (v44 != v45)
  {
    v39 = v5;
    do
    {
      v13 = *v11;
      v14 = **v11;
      if (v14 && *v14 == 21)
      {
        v15 = v14[2];
        v16 = v14[3];
        v17 = *(v14 + 29);
        v18 = v15 == 0x5F4C41424F4C475FLL && v16 == 0x545F54455346464FLL;
        if (v18 && v17 == 0x5F454C4241545F54)
        {
          v20 = v43;
          SectionByName = llvm::jitlink::LinkGraph::findSectionByName(v42, "$__GOT", 6, v10);
          if (SectionByName)
          {
            v22 = SectionByName;
            *(v20 + 152) = v13;
            v47 = SectionByName;
            v49[0] = 0;
            v23 = llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(v40, &v47, v49);
            v24 = v49[0];
            if (!v23)
            {
              v24 = (v40[0] + 24 * v41);
            }

            if (v24 == (v40[0] + 24 * v41))
            {
              llvm::jitlink::SectionRange::SectionRange(&v46, v22);
              v47 = v22;
              v48 = v46;
              llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::try_emplace<llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>(v40, &v47, &v48, v49);
              v24 = v49[0];
            }

            v25 = v24[1];
            if (v25)
            {
              llvm::jitlink::LinkGraph::makeDefined(a2, v13, v25, 0, 0, 0, 3, 0);
            }

            else
            {
              llvm::jitlink::LinkGraph::makeAbsolute(a2, v13, 0);
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v12);
    v11 = v44;
    v5 = v39;
  }

  if (v11)
  {
    v45 = v11;
    operator delete(v11);
  }

  if (!*(v5 + 152))
  {
    v26 = llvm::jitlink::LinkGraph::findSectionByName(a2, "$__GOT", 6, v10);
    if (v26)
    {
      v27 = v26;
      v28 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v26 + 56);
      v30 = *(v27 + 56) + 8 * *(v27 + 72);
      if (v30 == v28)
      {
LABEL_39:
        llvm::jitlink::SectionRange::SectionRange(v49, v27);
        if (v49[0])
        {
          v37 = llvm::jitlink::LinkGraph::addDefinedSymbol(a2, v49[0], 0, "_GLOBAL_OFFSET_TABLE_", 0x15uLL, 0, 0, 3, 0, 1);
        }

        else
        {
          v37 = llvm::jitlink::LinkGraph::addAbsoluteSymbol(a2, "_GLOBAL_OFFSET_TABLE_", 0x15uLL, 0, 0, 0, 3, 1);
        }

        *(v5 + 152) = v37;
      }

      else
      {
        while (1)
        {
          v31 = **v28;
          if (v31 && *v31 == 21)
          {
            v32 = v31[2];
            v33 = v31[3];
            v34 = *(v31 + 29);
            v35 = v32 == 0x5F4C41424F4C475FLL && v33 == 0x545F54455346464FLL;
            if (v35 && v34 == 0x5F454C4241545F54)
            {
              break;
            }
          }

          do
          {
            ++v28;
          }

          while (v28 != v29 && (*v28 | 0x1000) == 0xFFFFFFFFFFFFF000);
          if (v28 == v30)
          {
            goto LABEL_39;
          }
        }

        *(v5 + 152) = *v28;
      }
    }
  }

  *a3 = 0;
  return MEMORY[0x277C69E30](v40[0], 8);
}

void llvm::jitlink::createLinkGraphFromCOFFObject(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (llvm::identify_magic(*a1, v5) != 24)
  {
    llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
  }

  if (v5 <= 0x13)
  {
LABEL_3:
    llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[22]>();
  }

  if (v5 >= 0x44 && *v4 == 77 && v4[1] == 90)
  {
    v6 = *(v4 + 15);
    v7 = &v4[v6];
    if (*&v4[v6] != 17744)
    {
      llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[19]>();
    }

    if (v5 < v6 + 24)
    {
      goto LABEL_3;
    }

    v8 = 0;
    v4 = v7 + 4;
LABEL_12:
    v9 = v8 + 6;
    if (v4)
    {
      v9 = v4;
    }

    v10 = *v9;
    if (v10 == 34404)
    {
      v11 = *(a1 + 16);
      v21[0] = *a1;
      v21[1] = v11;
      v20 = *a2;
      *a2 = 0;
      *(a2 + 1) = 0;
      llvm::jitlink::createLinkGraphFromCOFFObject_x86_64(v21);
    }

    v16 = 1283;
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15[0] = "Unsupported target machine architecture in COFF object ";
    v15[2] = v12;
    v15[3] = v13;
    v17 = v15;
    v18 = ": ";
    v19 = 770;
    operator new();
  }

  if (!*v4)
  {
    v8 = 0;
    if (*(v4 + 1) != -1 || v5 < 0x38)
    {
      goto LABEL_12;
    }

    if (*(v4 + 2) >= 2u && *(v4 + 12) == 0x4BA9BAEED1BAA1C7 && *(v4 + 20) == 0xB8DCA46AF6FA20AFLL)
    {
      v8 = v4;
      v4 = 0;
      goto LABEL_12;
    }
  }

  v8 = 0;
  goto LABEL_12;
}

llvm::jitlink::LinkGraph *llvm::jitlink::link_COFF(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 160) != 38)
  {
    v6 = *a2;
    std::operator+<char>();
    llvm::make_error<llvm::jitlink::JITLinkError,std::string>();
  }

  *a1 = 0;
  v8 = v2;
  v3 = *a2;
  *a2 = 0;
  v7 = v3;
  llvm::jitlink::link_COFF_x86_64(&v8, &v7);
  v4 = v7;
  v7 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    llvm::jitlink::LinkGraph::~LinkGraph(result);
    return MEMORY[0x277C69E40]();
  }

  return result;
}

void COFFOptTable::~COFFOptTable(COFFOptTable *this)
{
  *this = &unk_2883EFB20;
  v2 = *(this + 7);
  if (v2 != this + 80)
  {
    free(v2);
  }
}

{
  *this = &unk_2883EFB20;
  v2 = *(this + 7);
  if (v2 != this + 80)
  {
    free(v2);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::COFFDirectiveParser::parse(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56[32] = *MEMORY[0x277D85DE8];
  v54 = v56;
  v55 = 0x1000000000;
  v51 = v53;
  v52 = 0x1000000000;
  llvm::cl::TokenizeWindowsCommandLineNoCopy(a2, a3, (a1 + 96), &v54);
  if (v55)
  {
    v8 = v54;
    v9 = (v54 + 16 * v55);
    v10 = (a2 + a3);
    do
    {
      v12 = *v8;
      v11 = v8[1];
      v13 = (*v8 + v11);
      if (v13 == v10 || *v13)
      {
        v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*(a1 + 96), v11 + 1, 0);
        v15 = v14;
        if (v11)
        {
          memcpy(v14, v12, v11);
        }

        *(v15 + v11) = 0;
      }

      else
      {
        v15 = *v8;
      }

      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v51, v15);
      v8 += 2;
    }

    while (v8 != v9);
  }

  v34 = 0;
  llvm::opt::OptTable::ParseArgs(optTable, v51, v52, &v34 + 1, &v34, 0, 0, &v35);
  if (v34)
  {
    if (**(v43 + HIDWORD(v34)))
    {
      v33 = *(v43 + HIDWORD(v34));
    }

    operator new();
  }

  *(a4 + 352) &= ~1u;
  *a4 = &unk_2883ED650;
  v16 = (a4 + 24);
  *(a4 + 8) = a4 + 24;
  *(a4 + 16) = 0x1000000000;
  v17 = v37;
  if (v37 && &v35 != a4)
  {
    v18 = __src;
    if (__src != v39)
    {
      *(a4 + 8) = __src;
      v19 = v38;
      *(a4 + 16) = v17;
      *(a4 + 20) = v19;
      __src = v39;
      v38 = 0;
      goto LABEL_24;
    }

    if (v37 < 0x11)
    {
      v20 = v37;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 8, (a4 + 24), v37, 8);
      v20 = v37;
      if (!v37)
      {
LABEL_23:
        *(a4 + 16) = v17;
        goto LABEL_24;
      }

      v18 = __src;
      v16 = *(a4 + 8);
    }

    memcpy(v16, v18, 8 * v20);
    goto LABEL_23;
  }

LABEL_24:
  *(a4 + 152) = v40;
  *(a4 + 160) = v41;
  v40 = 0;
  v41 = 0;
  *(a4 + 168) = v42;
  v42 = 0;
  v37 = 0;
  *a4 = &unk_2883EFAF8;
  v21 = (a4 + 192);
  *(a4 + 176) = a4 + 192;
  *(a4 + 184) = 0x1000000000;
  v22 = v44;
  if (v44 && &v35 != a4)
  {
    v23 = v43;
    if (v43 != v46)
    {
      *(a4 + 176) = v43;
      v24 = v45;
      *(a4 + 184) = v22;
      *(a4 + 188) = v24;
      v43 = v46;
      v45 = 0;
LABEL_34:
      v44 = 0;
      goto LABEL_35;
    }

    if (v44 < 0x11)
    {
      v25 = v44;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 176, (a4 + 192), v44, 8);
      v25 = v44;
      if (!v44)
      {
LABEL_33:
        *(a4 + 184) = v22;
        goto LABEL_34;
      }

      v23 = v43;
      v21 = *(a4 + 176);
    }

    memcpy(v21, v23, 8 * v25);
    goto LABEL_33;
  }

LABEL_35:
  *(a4 + 320) = a4 + 320;
  *(a4 + 328) = a4 + 320;
  *(a4 + 336) = 0;
  v26 = v49;
  if (v49)
  {
    v28 = v47;
    v27 = v48;
    v29 = *(v47 + 8);
    v30 = *v48;
    *(v30 + 8) = v29;
    *v29 = v30;
    v31 = *(a4 + 320);
    *(v31 + 8) = v27;
    *v27 = v31;
    *(a4 + 320) = v28;
    *(v28 + 8) = a4 + 320;
    *(a4 + 336) = v26;
    v49 = 0;
  }

  *(a4 + 344) = v50;
  llvm::opt::InputArgList::~InputArgList(&v35);
  if (v51 != v53)
  {
    free(v51);
  }

  if (v54 != v56)
  {
    free(v54);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void llvm::opt::PrecomputedOptTable::~PrecomputedOptTable(llvm::opt::PrecomputedOptTable *this)
{
  *this = &unk_2883EFB20;
  v2 = *(this + 7);
  if (v2 != this + 80)
  {
    free(v2);
  }
}

{
  *this = &unk_2883EFB20;
  v2 = *(this + 7);
  if (v2 != this + 80)
  {
    free(v2);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::opt::InputArgList::~InputArgList(void **this)
{
  llvm::opt::InputArgList::releaseMemory(this);
  std::__list_imp<std::string>::clear(this + 40);
  v2 = this[22];
  if (v2 != this + 24)
  {
    free(v2);
  }

  llvm::opt::ArgList::~ArgList(this);
}

void llvm::opt::ArgList::~ArgList(llvm::opt::ArgList *this)
{
  *this = &unk_2883ED650;
  MEMORY[0x277C69E30](*(this + 19), 4);
  v2 = *(this + 1);
  if (v2 != this + 24)
  {
    free(v2);
  }
}

void std::__list_imp<std::string>::clear(void **a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 1);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__list_imp<std::string>::__delete_node[abi:nn200100](a1, v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__list_imp<std::string>::__delete_node[abi:nn200100](int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t _GLOBAL__sub_I_COFFDirectiveParser_cpp()
{
  v0 = llvm::opt::OptTable::OptTable(optTable, &infoTable, 5, 1);
  optTable[0] = &unk_2883ED628;
  qword_2815A4668 = &PrefixTable_init;
  unk_2815A4670 = 4;
  llvm::opt::OptTable::buildPrefixChars(v0);
  optTable[0] = &unk_2883ED600;

  return __cxa_atexit(COFFOptTable::~COFFOptTable, optTable, &dword_274E5C000);
}

void llvm::jitlink::COFFLinkGraphBuilder::COFFLinkGraphBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2883ED678;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *(a2 + 40);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v17) = *(a2 + 40);
    if (v7)
    {
      memmove(&__dst, v6, v7);
    }

    *(&__dst + v7) = 0;
  }

  else
  {
    __dst = 0uLL;
    v17 = 0;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a4, *(a4 + 8));
  }

  else
  {
    v10 = *a4;
  }

  v11 = *(a4 + 24);
  v12 = *(a4 + 40);
  llvm::Triple::setObjectFormat(&v10, 1);
  __p = v10;
  memset(&v10, 0, sizeof(v10));
  v14 = v11;
  v15 = v12;
  (*(*a2 + 376))(a2);
  v8 = *(a2 + 8) - 11;
  if (v8 <= 9)
  {
    v9 = dword_2750C4274[v8];
  }

  operator new();
}

void llvm::jitlink::COFFLinkGraphBuilder::~COFFLinkGraphBuilder(llvm::jitlink::COFFLinkGraphBuilder *this)
{
  *this = &unk_2883ED678;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 38);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 35);
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(this + 256);
  MEMORY[0x277C69E30](*(this + 32), 8);
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 96);
  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    llvm::jitlink::LinkGraph::~LinkGraph(v4);
    MEMORY[0x277C69E40]();
  }

  v7 = (this + 56);
  std::vector<std::set<std::pair<unsigned long long,llvm::jitlink::Symbol *>>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }
}

void llvm::jitlink::COFFLinkGraphBuilder::buildGraph(llvm::jitlink::COFFLinkGraphBuilder *this@<X0>, uint64_t a2@<X8>)
{
  if (((*(**(this + 10) + 440))(*(this + 10)) & 1) == 0)
  {
    llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
  }

  llvm::jitlink::COFFLinkGraphBuilder::graphifySections(this, &v5);
  v4 = v5;
  if (v5 || (llvm::jitlink::COFFLinkGraphBuilder::graphifySymbols(this, &v5), (v4 = v5) != 0) || ((*(*this + 16))(&v5, this), (v4 = v5) != 0))
  {
    *(a2 + 8) |= 1u;
  }

  else
  {
    *(a2 + 8) &= ~1u;
    v4 = *(this + 11);
    *(this + 11) = 0;
  }

  *a2 = v4;
}

void llvm::jitlink::COFFLinkGraphBuilder::graphifySections(llvm::jitlink::COFFLinkGraphBuilder *this@<X0>, void *a2@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = *(this + 10);
  v5 = *(v4 + 48);
  if (v5)
  {
    v6 = *(v5 + 2);
    if (v6 == 0xFFFF)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = *(*(v4 + 56) + 44);
  }

  v7 = (v6 + 1);
  v8 = *(this + 26);
  v9 = *(this + 27);
  v10 = (v9 - v8) >> 3;
  if (v7 > v10)
  {
    v11 = v7 - v10;
    v12 = *(this + 28);
    if (v11 > (v12 - v9) >> 3)
    {
      v13 = v12 - v8;
      if (v13 >> 2 > v7)
      {
        v7 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v7;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(this + 208, v14);
    }

    bzero(*(this + 27), 8 * v11);
    v15 = v9 + 8 * v11;
    goto LABEL_17;
  }

  if (v7 < v10)
  {
    v15 = v8 + 8 * v7;
LABEL_17:
    *(this + 27) = v15;
  }

  for (i = 1; ; ++i)
  {
    v17 = *(this + 10);
    v18 = *(v17 + 6);
    if (v18)
    {
      v19 = *(v18 + 2);
      if (v19 == 0xFFFF)
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = *(*(v17 + 7) + 44);
    }

    if (i > v19)
    {
      *a2 = 0;
      goto LABEL_118;
    }

    llvm::object::COFFObjectFile::getSection(v17, i, &v80);
    if (v81)
    {
      *a2 = v80;
      goto LABEL_118;
    }

    v20 = v80;
    llvm::object::COFFObjectFile::getSectionName(*(this + 10), v80, &v82);
    v22 = v82;
    if (v84)
    {
      v23 = 0;
    }

    else
    {
      v23 = v83;
    }

    if (v84)
    {
      v24 = 0;
    }

    else
    {
      v24 = v82;
    }

    if (v84)
    {
      v82 = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }
    }

    v25 = v20[9];
    if ((v25 & 0x20000000) != 0)
    {
      v26 = 5;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (2 * (v25 >> 31));
    SectionByName = llvm::jitlink::LinkGraph::findSectionByName(*(this + 11), v24, v23, v21);
    if (!SectionByName)
    {
      v29 = *(this + 11);
      llvm::jitlink::LinkGraph::createSection();
    }

    if (*(SectionByName + 16) != v27)
    {
      llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
    }

    v30 = v20[9];
    if ((v30 & 0x80) != 0)
    {
      v34 = *(this + 10);
      v36 = v34[8];
      v35 = v34[9];
      if (*(v34 + 4) == 0 || !v34[2])
      {
        v37 = v20[4];
        if (!v36)
        {
LABEL_52:
          if (v35)
          {
            v35 = *(v35 + 24);
          }

          goto LABEL_56;
        }
      }

      else
      {
        v37 = v20[4];
        if (v37 >= v20[2])
        {
          v37 = v20[2];
        }

        if (!v36)
        {
          goto LABEL_52;
        }
      }

      v35 = *(v36 + 28);
LABEL_56:
      v38 = *(this + 11);
      v39 = (v35 + v20[3]);
      LODWORD(v40) = 1 << (((v30 >> 20) & 0xF) - 1);
      if (((v30 >> 20) & 0xF) != 0)
      {
        v40 = v40;
      }

      else
      {
        v40 = 16;
      }

      v82 = v39;
      v75 = v37;
      if ((v30 & 8) != 0)
      {
        v41 = 1;
      }

      else
      {
        v41 = v40;
      }

      v79[0] = v41;
      v71 = 0;
      *(*(this + 26) + 8 * i) = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,unsigned long long &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v38, SectionByName, &v75, &v82, v79, &v71);
      continue;
    }

    v71 = 0;
    v72 = 0;
    llvm::object::COFFObjectFile::getSectionContents(*(this + 10), v20, &v71, a2);
    if (*a2)
    {
      goto LABEL_118;
    }

    v31 = v71;
    v32 = v72;
    if (v23 != 8 || *v24 != 0x657674636572642ELL)
    {
      goto LABEL_97;
    }

    llvm::jitlink::COFFDirectiveParser::parse(this + 96, v71, v72, &v82);
    if (v85)
    {
      v33 = v82;
      v82 = 0;
      *a2 = v33;
    }

    else
    {
      if (v84 && !*v83)
      {
        v68 = 8 * v84 - 8;
        v42 = v83;
        while (v68)
        {
          v69 = v42[1];
          ++v42;
          v68 -= 8;
          if (v69)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v42 = v83;
LABEL_66:
        v43 = &v83[v84];
        if (v42 != v43)
        {
          v44 = *v42;
LABEL_68:
          v45 = *v44[6];
          v79[0] = v45;
          if (v45)
          {
            v46 = strlen(v45);
          }

          else
          {
            v46 = 0;
          }

          v79[1] = v46;
          v47 = *(*v44 + 12);
          if (v47 == 5)
          {
            v53 = llvm::jitlink::LinkGraph::addExternalSymbol(*(this + 11), v45, v46, 0, 0);
            v53[2] |= 0x1000000000000000uLL;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 35, v53)[1] = v53;
          }

          else if (v47 == 3)
          {
            LOBYTE(v74) = 61;
            llvm::StringRef::split(v79, &v74, 1uLL, &v75);
            v48 = v76;
            if (!v76 || !v78)
            {
              llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
            }

            v49 = v75;
            llvm::jitlink::LinkGraph::intern(*(this + 11), v77, v78, &v74);
            llvm::jitlink::LinkGraph::intern(*(this + 11), v49, v48, &v73);
            v75 = 0;
            v50 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(this + 32, &v73, &v75);
            v51 = v75;
            if (v50)
            {
              v52 = *(v75 + 8);
            }

            else
            {
              v54 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(this + 256, &v73, &v73, v75);
              v51 = v54;
              if ((*v54 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add((*v54 + 8), 0xFFFFFFFFFFFFFFFFLL);
              }

              v52 = 0;
              *v54 = 0;
              v54[1] = 0;
              *v54 = v73;
              v73 = 0;
            }

            if ((v52 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v52 + 8), 0xFFFFFFFFFFFFFFFFLL);
            }

            v55 = 0;
            v56 = v73;
            v51[1] = v74;
            v74 = 0;
            if (v56 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v56 + 1, 0xFFFFFFFFFFFFFFFFLL);
              v55 = v74;
            }

            if (v55 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v55 + 1, 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          while (++v42 != v43)
          {
            v44 = *v42;
            if (*v42)
            {
              if (v42 != v43)
              {
                goto LABEL_68;
              }

              break;
            }
          }
        }
      }

      *a2 = 0;
    }

    if (v85)
    {
      v57 = v82;
      v82 = 0;
      if (v57)
      {
        (*(*v57 + 8))(v57);
      }
    }

    else
    {
      llvm::opt::InputArgList::~InputArgList(&v82);
    }

    if (*a2)
    {
      break;
    }

    v20 = v80;
LABEL_97:
    v58 = *(this + 10);
    v59 = *(v58 + 64);
    if (v59)
    {
      v60 = *(v59 + 28);
    }

    else
    {
      v60 = *(v58 + 72);
      if (v60)
      {
        v60 = *(v60 + 24);
      }
    }

    v61 = *(this + 11);
    v62 = (v60 + v20[3]);
    v63 = v20[9];
    LODWORD(v64) = 1 << (((v63 >> 20) & 0xF) - 1);
    if (((v63 >> 20) & 0xF) != 0)
    {
      v64 = v64;
    }

    else
    {
      v64 = 16;
    }

    if ((v63 & 8) != 0)
    {
      v65 = 1;
    }

    else
    {
      v65 = v64;
    }

    v82 = v31;
    v83 = v32;
    v74 = 0;
    v75 = v62;
    v79[0] = v65;
    v66 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v61, SectionByName, &v82, &v75, v79, &v74);
    v67 = v81;
    *(*(this + 26) + 8 * i) = v66;
    if (v67)
    {
      v80 = 0;
      (*(*v20 + 8))(v20);
    }
  }

  if ((v81 & 1) != 0 && v80)
  {
    (*(*v80 + 8))(v80);
  }

LABEL_118:
  v70 = *MEMORY[0x277D85DE8];
}

void llvm::jitlink::COFFLinkGraphBuilder::graphifySymbols(llvm::jitlink::COFFLinkGraphBuilder *this@<X0>, const char **a2@<X8>)
{
  v218[1] = *MEMORY[0x277D85DE8];
  v6 = *(this + 10);
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *(v7 + 2);
    if (v8 == 0xFFFF)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = *(*(v6 + 56) + 44);
  }

  v9 = (v8 + 1);
  v11 = *(this + 7);
  v10 = *(this + 8);
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3);
  v13 = v9 - v12;
  v185 = a2;
  if (v9 <= v12)
  {
    if (v9 < v12)
    {
      v18 = v11 + 24 * v9;
      if (v10 != v18)
      {
        do
        {
          v19 = v10 - 24;
          std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(v10 - 24, *(v10 - 16));
          v10 = v19;
        }

        while (v19 != v18);
      }

      *(this + 8) = v18;
    }
  }

  else
  {
    v14 = *(this + 9);
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v10) >> 3) < v13)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v11) >> 3);
      v16 = 0x5555555555555556 * ((v14 - v11) >> 3);
      if (v16 <= v9)
      {
        v16 = v9;
      }

      if (v15 >= 0x555555555555555)
      {
        v17 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v17 = v16;
      }

      if (v17 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      goto LABEL_352;
    }

    v20 = v10 + 24 * v13;
    v21 = 24 * v9 - 24 * v12;
    v22 = (v10 + 8);
    do
    {
      *v22 = 0;
      v22[1] = 0;
      *(v22 - 1) = v22;
      v22 += 3;
      v21 -= 24;
    }

    while (v21);
    *(this + 8) = v20;
  }

  v23 = *(this + 10);
  v24 = *(v23 + 48);
  if (v24)
  {
    v25 = *(v24 + 2);
    if (v25 == 0xFFFF)
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = *(*(v23 + 56) + 44);
  }

  v26 = (v25 + 1);
  v28 = *(this + 1);
  v27 = *(this + 2);
  v29 = 0xAAAAAAAAAAAAAAABLL * (&v27[-v28] >> 3);
  v30 = v26 - v29;
  if (v26 <= v29)
  {
    if (v26 < v29)
    {
      *(this + 2) = v28 + 24 * v26;
    }
  }

  else
  {
    v31 = *(this + 3);
    if (0xAAAAAAAAAAAAAAABLL * ((v31 - v27) >> 3) < v30)
    {
      v32 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v28) >> 3);
      v33 = 0x5555555555555556 * ((v31 - v28) >> 3);
      if (v33 > v26)
      {
        v26 = v33;
      }

      if (v32 >= 0x555555555555555)
      {
        v34 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v34 = v26;
      }

      if (v34 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      goto LABEL_352;
    }

    v35 = &v27[24 * v30];
    do
    {
      *v27 = 0;
      v27[16] = 0;
      v27 += 24;
    }

    while (v27 != v35);
    *(this + 2) = v35;
  }

  v36 = *(this + 10);
  if (!v36[12] && !v36[13])
  {
    goto LABEL_46;
  }

  v37 = v36[6];
  if (v37)
  {
    if (*(v37 + 2) != -1)
    {
      v38 = (v37 + 12);
      goto LABEL_48;
    }

LABEL_46:
    v39 = 0;
    v40 = (this + 240);
    v41 = *(this + 29);
    v42 = (*(this + 30) - v41) >> 3;
    goto LABEL_56;
  }

  v38 = (v36[7] + 52);
LABEL_48:
  v39 = *v38;
  v40 = (this + 240);
  v43 = *(this + 30);
  v41 = *(this + 29);
  v42 = (v43 - v41) >> 3;
  if (v39 > v42)
  {
    v44 = v39 - v42;
    v45 = *(this + 31);
    if (v44 > (v45 - v43) >> 3)
    {
      v46 = v45 - v41;
      if (v46 >> 2 > v39)
      {
        v39 = v46 >> 2;
      }

      if (v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        v47 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v39;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(this + 232, v47);
    }

    bzero(*(this + 30), 8 * v44);
    v48 = v43 + 8 * v44;
    goto LABEL_59;
  }

LABEL_56:
  if (v42 > v39)
  {
    v48 = v41 + 8 * v39;
LABEL_59:
    *v40 = v48;
  }

  for (i = 0; ; ++i)
  {
    v50 = *(this + 10);
    if (v50[12] || (v51 = v50[13]) != 0)
    {
      v52 = v50[6];
      if (!v52)
      {
        v51 = (v50[7] + 52);
        goto LABEL_67;
      }

      if (*(v52 + 2) != -1)
      {
        v51 = (v52 + 12);
LABEL_67:
        LODWORD(v51) = *v51;
        goto LABEL_69;
      }

      LODWORD(v51) = 0;
    }

LABEL_69:
    if (i >= v51)
    {
      break;
    }

    llvm::object::COFFObjectFile::getSymbol(v50, i, &v203);
    if (v205)
    {
      *a2 = v203;
      goto LABEL_347;
    }

    if (v203)
    {
      v53 = v203;
    }

    else
    {
      v53 = v204;
    }

    llvm::object::COFFObjectFile::getSymbolName(v53, *(this + 10), &v206);
    if (v207)
    {
      v54 = 0;
    }

    else
    {
      v54 = *(&v206 + 1);
    }

    if (v207)
    {
      v55 = 0;
    }

    else
    {
      v55 = v206;
    }

    if ((v207 & 1) != 0 && v206)
    {
      (*(*v206 + 8))();
    }

    v186 = v2;
    if (v203)
    {
      v56 = *(v203 + 12);
      if (v56 >> 8 > 0xFE)
      {
        v57 = v3;
        v58 = 0;
        v191 = v56;
        goto LABEL_116;
      }
    }

    else
    {
      v56 = *(v204 + 12);
    }

    v191 = v56;
    if (v56 < 1)
    {
      v57 = v3;
      v58 = 0;
    }

    else
    {
      llvm::object::COFFObjectFile::getSection(*(this + 10), v56, &v201);
      if (v202)
      {
        v212 = "{0:d}: ";
        v213 = 7;
        v214 = v218;
        v215 = 1;
        v216 = &unk_2883ED6A0;
        v217 = &v191;
        v218[0] = &v216;
        v192[0] = "Invalid COFF section number:";
        v193 = &v212;
        v194 = 1539;
        v195[0] = v192;
        v196 = " (";
        v197 = 770;
        v59 = v201;
        v201 = 0;
        *&v206 = &v207;
        *(&v206 + 1) = 0x200000000;
        v199[0] = v59;
        v190.__r_.__value_.__r.__words[0] = &v206;
        llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v199, &v190);
        if (v199[0])
        {
          (*(*v199[0] + 8))(v199[0]);
        }

        v60 = v206;
        v61 = DWORD2(v206);
        memset(&v190, 0, sizeof(v190));
        if (DWORD2(v206))
        {
          v62 = DWORD2(v206) - 1;
          v63 = (v206 + 23);
          v64 = 24 * DWORD2(v206);
          do
          {
            v65 = *v63;
            if (v65 < 0)
            {
              v65 = *(v63 - 15);
            }

            v62 += v65;
            v63 += 24;
            v64 -= 24;
          }

          while (v64);
          std::string::reserve(&v190, v62);
          v66 = *(v60 + 23);
          if (v66 >= 0)
          {
            v67 = v60;
          }

          else
          {
            v67 = *v60;
          }

          if (v66 >= 0)
          {
            v68 = *(v60 + 23);
          }

          else
          {
            v68 = *(v60 + 8);
          }

          std::string::append(&v190, v67, v68);
          if (v61 != 1)
          {
            v69 = v60 + 24;
            v70 = 24 * v61 - 24;
            do
            {
              std::string::append(&v190, "\n", 1uLL);
              v71 = *(v69 + 23);
              if (v71 >= 0)
              {
                v72 = v69;
              }

              else
              {
                v72 = *v69;
              }

              if (v71 >= 0)
              {
                v73 = *(v69 + 23);
              }

              else
              {
                v73 = *(v69 + 8);
              }

              std::string::append(&v190, v72, v73);
              v69 += 24;
              v70 -= 24;
            }

            while (v70);
          }
        }

        llvm::SmallVector<std::string,2u>::~SmallVector(&v206);
        v74 = v197;
        if (v197 == 1)
        {
          v199[0] = &v190;
          v200 = 260;
        }

        else if (v197)
        {
          if (HIBYTE(v197) != 1)
          {
            v74 = 2;
          }

          v103 = v195;
          if (HIBYTE(v197) == 1)
          {
            v103 = v195[0];
          }

          v199[0] = v103;
          v199[1] = v195[1];
          v199[2] = &v190;
          LOBYTE(v200) = v74;
          HIBYTE(v200) = 4;
        }

        else
        {
          v200 = 256;
        }

        operator new();
      }

      v57 = v3;
      v58 = v201;
    }

LABEL_116:
    llvm::jitlink::LinkGraph::intern(*(this + 11), v55, v54, &v189);
    v75 = v203;
    if (v203)
    {
      v76 = *(v203 + 16);
      if (v76 == 105)
      {
        v78 = (v203 + 18);
        goto LABEL_128;
      }

      if (v76 != 103)
      {
        if (v76 == 2 && !*(v203 + 12) && !*(v203 + 8))
        {
          goto LABEL_203;
        }

LABEL_141:
        v187 = v189;
        if (v189 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v189 + 1, 1uLL);
          v75 = v203;
        }

        v190.__r_.__value_.__r.__words[0] = v75;
        v190.__r_.__value_.__l.__size_ = v204;
        v198 = i;
        if (llvm::object::COFFSymbolRef::isCommon(&v190))
        {
          v90 = *(this + 11);
          v91 = *(this + 25);
          v2 = v186;
          if (!v91)
          {
            v92 = *(this + 11);
            llvm::jitlink::LinkGraph::createSection();
          }

          size = v190.__r_.__value_.__r.__words[0];
          if (!v190.__r_.__value_.__r.__words[0])
          {
            size = v190.__r_.__value_.__l.__size_;
          }

          v94 = *(size + 8);
          *&v206 = 0;
          v212 = v94;
          v199[0] = v94;
          v195[0] = 0;
          v95 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,unsigned long long &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v90, v91, &v212, &v206, v199, v195);
          v96 = v187;
          v3 = v57;
          if (v187 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v187 + 1, 1uLL);
          }

          v97 = v190.__r_.__value_.__r.__words[0];
          if (!v190.__r_.__value_.__r.__words[0])
          {
            v97 = v190.__r_.__value_.__l.__size_;
          }

          v98 = *(v97 + 8);
          v99 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v90, 32, 3);
          *v99 = v96;
          *(v99 + 1) = v95;
          *(v99 + 2) = 0x200000000000000;
          *(v99 + 3) = v98;
          v100 = v95[2];
          v212 = v99;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v100 + 56, &v212, &v206);
          v202 &= ~1u;
          v201 = v99;
          goto LABEL_180;
        }

        v101 = v190.__r_.__value_.__r.__words[0];
        v2 = v186;
        if (v190.__r_.__value_.__r.__words[0])
        {
          v102 = *(v190.__r_.__value_.__r.__words[0] + 12);
          if (v102 != 0xFFFF)
          {
            if ((v102 + 256) < 0x101u)
            {
              goto LABEL_156;
            }

            goto LABEL_166;
          }

LABEL_172:
          v107 = *(this + 11);
          *&v206 = v187;
          v3 = v57;
          if (v187 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v187 + 1, 1uLL);
            v101 = v190.__r_.__value_.__r.__words[0];
          }

          v108 = v190.__r_.__value_.__l.__size_;
          if (v101)
          {
            v108 = v101;
          }

          v109 = llvm::jitlink::LinkGraph::addAbsoluteSymbol(v107, &v206, *(v108 + 8), 0, 0, 3, 0);
          v202 &= ~1u;
          v201 = v109;
          v110 = v206;
          v111 = (v110 != -32) & __CFADD__(v110 - 1, 33);
LABEL_177:
          if (v111)
          {
            goto LABEL_180;
          }

LABEL_178:
          atomic_fetch_add((v110 + 8), 0xFFFFFFFFFFFFFFFFLL);
          goto LABEL_180;
        }

        v102 = *(v190.__r_.__value_.__l.__size_ + 12);
        if (v102 == -1)
        {
          goto LABEL_172;
        }

        if (v102 <= 0)
        {
LABEL_156:
          *&v206 = "{0:d}";
          *(&v206 + 1) = 5;
          v207 = v211;
          v208 = 1;
          v209 = &unk_2883ED6A0;
          v210 = &v198;
          v211[0] = &v209;
          operator new();
        }

LABEL_166:
        if (v102 >= ((*(this + 30) - *(this + 29)) >> 3) || (v104 = *(*(this + 26) + 8 * v102)) == 0)
        {
          v202 &= ~1u;
          v201 = 0;
          v3 = v57;
          goto LABEL_180;
        }

        if (v190.__r_.__value_.__r.__words[0])
        {
          v105 = *(v190.__r_.__value_.__r.__words[0] + 16);
          if (v105 != 2)
          {
            if (v105 != 3)
            {
              v106 = v190.__r_.__value_.__r.__words[0];
LABEL_215:
              if (v105 != 6)
              {
                *&v206 = "{0:d}";
                *(&v206 + 1) = 5;
                v207 = v211;
                v208 = 1;
                v209 = &unk_2883ECD40;
                LOBYTE(v210) = v105;
                v211[0] = &v209;
                v192[0] = "Unsupported storage class ";
                v193 = &v206;
                v194 = 1539;
                v195[0] = v192;
                v196 = " in symbol ";
                v197 = 770;
                v212 = "{0:d}";
                v213 = 5;
                v214 = v218;
                v215 = 1;
                v216 = &unk_2883ED6A0;
                v217 = &v198;
                v218[0] = &v216;
                operator new();
              }

              goto LABEL_216;
            }

            v106 = v190.__r_.__value_.__r.__words[0];
            if (!*(v190.__r_.__value_.__r.__words[0] + 17))
            {
              goto LABEL_216;
            }

            v106 = v190.__r_.__value_.__r.__words[0];
            if ((*(v58 + 37) & 0x10) == 0)
            {
              goto LABEL_216;
            }

            if (*(v190.__r_.__value_.__r.__words[0] + 32) == 5)
            {
              v123 = *(v190.__r_.__value_.__r.__words[0] + 30);
              v106 = v190.__r_.__value_.__r.__words[0];
              goto LABEL_233;
            }

            v137 = (v190.__r_.__value_.__r.__words[0] + 18);
            v138 = *(v190.__r_.__value_.__r.__words[0] + 12);
            if (v138 >> 8 >= 0xFF)
            {
              v138 = v138;
            }

LABEL_259:
            v3 = v57;
            if (*(*(this + 1) + 24 * v138 + 16) == 1)
            {
              v136 = "COMDAT export request already exists before symbol ";
LABEL_261:
              v199[0] = v136;
              v200 = 259;
              *&v206 = "{0:d}";
              *(&v206 + 1) = 5;
              v207 = v211;
              v208 = 1;
              v209 = &unk_2883ED6A0;
              v210 = &v198;
              v211[0] = &v209;
              v197 = 262;
              v195[0] = &v206;
              llvm::operator+(v199, v195, &v212);
              llvm::make_error<llvm::jitlink::JITLinkError,llvm::Twine>();
            }

            llvm::jitlink::COFFLinkGraphBuilder::createCOMDATExportRequest(&v201, this, i, v190.__r_.__value_.__l.__data_, v190.__r_.__value_.__l.__size_, v137);
            goto LABEL_180;
          }

          v124 = *(v58 + 37);
          v106 = v190.__r_.__value_.__r.__words[0];
          v3 = v57;
          if ((v124 & 0x10) != 0)
          {
            v125 = *(v190.__r_.__value_.__r.__words[0] + 12);
            if (v125 >> 8 > 0xFE)
            {
              v125 = v125;
            }

LABEL_250:
            if ((*(*(this + 1) + 24 * v125 + 16) & 1) == 0)
            {
              v136 = "No pending COMDAT export for symbol ";
              goto LABEL_261;
            }

            *&v206 = v187;
            if (v187 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v187 + 1, 1uLL);
              v101 = v190.__r_.__value_.__r.__words[0];
            }

            llvm::jitlink::COFFLinkGraphBuilder::exportCOMDATSymbol(&v201, this, &v206, v101, v190.__r_.__value_.__l.__size_);
            v110 = v206;
            if ((v206 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              goto LABEL_178;
            }

            goto LABEL_180;
          }

          goto LABEL_242;
        }

        v106 = v190.__r_.__value_.__l.__size_;
        v105 = *(v190.__r_.__value_.__l.__size_ + 18);
        if (v105 == 2)
        {
          if ((*(v58 + 37) & 0x10) != 0)
          {
            v125 = *(v190.__r_.__value_.__l.__size_ + 12);
            v3 = v57;
            goto LABEL_250;
          }

          v3 = v57;
LABEL_242:
          v132 = *(this + 11);
          v133 = *(v106 + 8);
          *&v206 = v187;
          if (v187 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v187 + 1, 1uLL);
            v101 = v190.__r_.__value_.__r.__words[0];
          }

          v134 = (v101 + 14);
          if (!v101)
          {
            v134 = (v190.__r_.__value_.__l.__size_ + 16);
          }

          v135 = llvm::jitlink::LinkGraph::addDefinedSymbol(v132, v104, v133, &v206, 0, 0, 0, (*v134 & 0xF0) == 32, 0);
          if ((v206 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v206 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 38, &v187)[1] = v135;
          v202 &= ~1u;
          v201 = v135;
          goto LABEL_180;
        }

        if (v105 != 3)
        {
          goto LABEL_215;
        }

        if (!*(v190.__r_.__value_.__l.__size_ + 19) || (*(v58 + 37) & 0x10) == 0)
        {
LABEL_216:
          v119 = *(this + 11);
          v120 = *(v106 + 8);
          *&v206 = v187;
          if (v187 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v187 + 1, 1uLL);
            v101 = v190.__r_.__value_.__r.__words[0];
          }

          v121 = (v101 + 14);
          if (!v101)
          {
            v121 = (v190.__r_.__value_.__l.__size_ + 16);
          }

          v122 = llvm::jitlink::LinkGraph::addDefinedSymbol(v119, v104, v120, &v206, 0, 0, 3, (*v121 & 0xF0) == 32, 0);
          v202 &= ~1u;
          v201 = v122;
          v110 = v206;
          v111 = (v110 != -32) & __CFADD__(v110 - 1, 33);
          v3 = v57;
          goto LABEL_177;
        }

        if (*(v190.__r_.__value_.__l.__size_ + 34) != 5)
        {
          v137 = (v190.__r_.__value_.__l.__size_ + 20);
          v138 = *(v190.__r_.__value_.__l.__size_ + 12);
          goto LABEL_259;
        }

        v123 = *(v190.__r_.__value_.__l.__size_ + 32) | (*(v190.__r_.__value_.__l.__size_ + 36) << 16);
LABEL_233:
        v3 = v57;
        v126 = *(this + 11);
        v127 = *(v106 + 8);
        v212 = v187;
        if (v187 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v187 + 1, 1uLL);
          v101 = v190.__r_.__value_.__r.__words[0];
        }

        v128 = (v101 + 14);
        if (!v101)
        {
          v128 = (v190.__r_.__value_.__l.__size_ + 16);
        }

        v129 = llvm::jitlink::LinkGraph::addDefinedSymbol(v126, v104, v127, &v212, 0, 0, 3, (*v128 & 0xF0) == 32, 0);
        v130 = v129;
        if ((v212 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v212 + 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        v131 = *(*(this + 26) + 8 * v123);
        *&v206 = v129;
        DWORD2(v206) = 0;
        v207 = 0;
        LOBYTE(v208) = 1;
        std::vector<llvm::jitlink::Edge>::emplace_back<llvm::jitlink::Edge>(v131 + 40, &v206);
        v202 &= ~1u;
        v201 = v130;
        v2 = v186;
LABEL_180:
        if (v187 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v187 + 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        if (v202)
        {
          v112 = 0;
          *a2 = v201;
          goto LABEL_195;
        }

        v57 = v3;
        v113 = v201;
LABEL_185:
        if (v113)
        {
          llvm::jitlink::COFFLinkGraphBuilder::setGraphSymbol(this, v191, i, v113);
        }
      }
    }

    else
    {
      v77 = *(v204 + 18);
      if (v77 == 2)
      {
        if (*(v204 + 12) || *(v204 + 8))
        {
          goto LABEL_141;
        }

LABEL_203:
        v188 = v189;
        if (v189 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v189 + 1, 1uLL);
          v75 = v203;
        }

        v117 = v204;
        *&v206 = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(this + 35, &v188, &v206))
        {
          v113 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 35, &v188)[1];
        }

        else
        {
          if (v75)
          {
            v118 = v75;
          }

          else
          {
            v118 = v117;
          }

          v113 = llvm::jitlink::LinkGraph::addExternalSymbol(*(this + 11), v188 + 2, *v188, *(v118 + 8), 0);
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 35, v113)[1] = v113;
        }

        if (v188 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v188 + 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        goto LABEL_185;
      }

      if (v77 != 103)
      {
        if (v77 == 105)
        {
          v78 = (v204 + 20);
LABEL_128:
          v79 = *v78;
          v80 = v78[1];
          v81 = *(this + 5);
          v82 = *(this + 6);
          if (v81 >= v82)
          {
            v84 = *(this + 4);
            v85 = v81 - v84;
            v86 = (v81 - v84) >> 5;
            v87 = v86 + 1;
            if ((v86 + 1) >> 59)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v88 = v82 - v84;
            if (v88 >> 4 > v87)
            {
              v87 = v88 >> 4;
            }

            if (v88 >= 0x7FFFFFFFFFFFFFE0)
            {
              v89 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v89 = v87;
            }

            if (v89)
            {
              if (!(v89 >> 59))
              {
                operator new();
              }

LABEL_352:
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v114 = 32 * v86;
            *v114 = i;
            *(v114 + 4) = v79;
            *(v114 + 8) = v80;
            *(v114 + 16) = v55;
            *(v114 + 24) = v54;
            v83 = 32 * v86 + 32;
            memcpy(0, v84, v85);
            *(this + 4) = 0;
            *(this + 5) = v83;
            *(this + 6) = 0;
            if (v84)
            {
              operator delete(v84);
            }

            a2 = v185;
          }

          else
          {
            *v81 = i;
            *(v81 + 4) = v79;
            *(v81 + 8) = v80;
            v83 = v81 + 32;
            *(v81 + 16) = v55;
            *(v81 + 24) = v54;
          }

          *(this + 5) = v83;
          goto LABEL_191;
        }

        goto LABEL_141;
      }
    }

LABEL_191:
    if (v203)
    {
      v115 = (v203 + 17);
    }

    else
    {
      v115 = (v204 + 19);
    }

    i += *v115;
    v112 = 1;
    v3 = v57;
    v2 = v186;
LABEL_195:
    if (v189 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add(v189 + 1, 0xFFFFFFFFFFFFFFFFLL);
    }

    if ((v205 & 1) != 0 && (v116 = v203, v203 = 0, v116))
    {
      (*(*v116 + 8))(v116);
      if ((v112 & 1) == 0)
      {
        goto LABEL_347;
      }
    }

    else if (!v112)
    {
      goto LABEL_347;
    }
  }

  v139 = *(this + 4);
  v140 = *(this + 5);
  if (v139 == v140)
  {
LABEL_292:
    *v185 = 0;
    goto LABEL_293;
  }

  while (1)
  {
    v141 = *(v139 + 4);
    if ((v141 & 0x80000000) != 0 || (v142 = *(this + 29), v141 >= ((*(this + 30) - v142) >> 3)) || (v143 = *(v142 + 8 * v141)) == 0)
    {
      *&v206 = "{0:d}";
      *(&v206 + 1) = 5;
      v207 = v211;
      v208 = 1;
      v209 = &unk_2883ED6A0;
      v210 = v139;
      v211[0] = &v209;
      operator new();
    }

    llvm::object::COFFObjectFile::getSymbol(*(this + 10), *v139, &v212);
    if (v214)
    {
      v184 = v212;
      *v185 = v212;
      if (!v184)
      {
        goto LABEL_293;
      }

      goto LABEL_347;
    }

    if (*(v139 + 8) == 3)
    {
      v144 = 0;
    }

    else
    {
      v144 = 3;
    }

    llvm::jitlink::LinkGraph::intern(*(this + 11), *(v139 + 16), *(v139 + 24), v199);
    v145 = v143[1];
    v146 = *(v145 + 8);
    if ((v146 & 1) == 0)
    {
      operator new();
    }

    v147 = *(this + 11);
    v148 = v143[2];
    *&v206 = v199[0];
    v149 = v148;
    if (v199[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add(v199[0] + 1, 1uLL);
      v149 = v143[2];
    }

    v150 = llvm::jitlink::LinkGraph::addDefinedSymbol(v147, v145, v148 & 0x1FFFFFFFFFFFFFFLL, &v206, v143[3], 1, v144, (v149 & 0x2000000000000000) != 0, 0);
    if ((v206 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v206 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    if (v199[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add(v199[0] + 1, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (v146)
    {
      if (v212)
      {
        v151 = *(v212 + 6);
        if (v151 >> 8 <= 0xFE)
        {
          v152 = *(v212 + 6);
        }

        else
        {
          v152 = v151;
        }
      }

      else
      {
        v152 = *(v213 + 12);
      }

      llvm::jitlink::COFFLinkGraphBuilder::setGraphSymbol(this, v152, *v139, v150);
    }

    else
    {
      *v185 = v150;
    }

    if (v214)
    {
      v153 = v212;
      v212 = 0;
      if (v153)
      {
        (*(*v153 + 8))(v153);
      }
    }

    if ((v146 & 1) == 0)
    {
      break;
    }

    v139 += 32;
    if (v139 == v140)
    {
      goto LABEL_292;
    }
  }

  if (!*v185)
  {
LABEL_293:
    if (*(this + 66))
    {
      v154 = *(this + 68);
      if (v154)
      {
        v155 = 16 * v154;
        v156 = *(this + 32);
        while ((*v156 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v156 += 2;
          v155 -= 16;
          if (!v155)
          {
            goto LABEL_317;
          }
        }
      }

      else
      {
        v156 = *(this + 32);
      }

      v157 = *(this + 32) + 16 * v154;
      if (v156 != v157)
      {
LABEL_303:
        v158 = v156[1];
        v212 = v158;
        if ((v158 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v158 + 8), 1uLL);
        }

        v159 = *v156;
        v199[0] = v159;
        if ((v159 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v159 + 8), 1uLL);
        }

        *&v206 = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(this + 38, &v212, &v206))
        {
          *&v206 = 0;
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(this + 35, v199, &v206))
          {
            v160 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 38, &v212)[1];
            v161 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 35, v199);
            llvm::jitlink::LinkGraph::makeDefined(*(this + 11), v161[1], v160[1], v160[2] & 0x1FFFFFFFFFFFFFFLL, v160[3], 1, 3, 0);
          }
        }

        if (v199[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v199[0] + 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        if ((v212 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v212 + 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        while (1)
        {
          v156 += 2;
          if (v156 == v157)
          {
            break;
          }

          if ((*v156 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            if (v156 != v157)
            {
              goto LABEL_303;
            }

            break;
          }
        }
      }
    }

LABEL_317:
    v162 = *(this + 10);
    v163 = *(v162 + 48);
    v164 = 1;
    if (!v163)
    {
      goto LABEL_321;
    }

    while (2)
    {
      v165 = *(v163 + 2);
      if (v165 == 0xFFFF)
      {
        v165 = 0;
      }

LABEL_322:
      if (v164 <= v165)
      {
        v166 = (*(this + 7) + 24 * v164);
        if (!v166[2] || (v169 = *v166, v168 = v166 + 1, v167 = v169, v168 == v169))
        {
LABEL_344:
          ++v164;
          if (v163)
          {
            continue;
          }

LABEL_321:
          v165 = *(*(v162 + 56) + 44);
          goto LABEL_322;
        }

        v170 = 0;
        v171 = *(*(*(this + 26) + 8 * v164) + 32);
        while (2)
        {
          v172 = *v168;
          v173 = *v168;
          v174 = v168;
          if (*v168)
          {
            do
            {
              v175 = v173;
              v173 = v173[1];
            }

            while (v173);
          }

          else
          {
            do
            {
              v175 = v174[2];
              v176 = *v175 == v174;
              v174 = v175;
            }

            while (v176);
          }

          v177 = *v168;
          v178 = v168;
          if (v172)
          {
            do
            {
              v179 = v177;
              v177 = v177[1];
            }

            while (v177);
          }

          else
          {
            do
            {
              v179 = v178[2];
              v176 = *v179 == v178;
              v178 = v179;
            }

            while (v176);
          }

          v180 = v175[4];
          v181 = v179[5];
          if ((*(v181 + 16) & 0x1FFFFFFFFFFFFFFLL) != v171)
          {
            v170 = v171 - v180;
          }

          if (*(v181 + 24))
          {
            if (!v172)
            {
              goto LABEL_342;
            }

            do
            {
LABEL_340:
              v182 = v172;
              v172 = v172[1];
            }

            while (v172);
          }

          else
          {
            *(v181 + 24) = v170;
            if (v172)
            {
              goto LABEL_340;
            }

            do
            {
LABEL_342:
              v182 = v168[2];
              v176 = *v182 == v168;
              v168 = v182;
            }

            while (v176);
          }

          v171 = v180;
          v168 = v182;
          if (v182 == v167)
          {
            goto LABEL_344;
          }

          continue;
        }
      }

      break;
    }

    *v185 = 0;
  }

LABEL_347:
  v183 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::jitlink::COFFLinkGraphBuilder::setGraphSymbol(uint64_t result, int a2, int a3, unint64_t a4)
{
  *(*(result + 232) + 8 * a3) = a4;
  if (a2 >= 1)
  {
    v4 = *(a4 + 16) & 0x1FFFFFFFFFFFFFFLL;
    v5 = *(*(result + 56) + 24 * a2 + 8);
    if (!v5)
    {
LABEL_10:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v6 = v5;
        v7 = v5[4];
        if (v7 <= v4)
        {
          break;
        }

LABEL_4:
        v5 = *v6;
        if (!*v6)
        {
          goto LABEL_10;
        }
      }

      if (v7 >= v4)
      {
        v8 = v6[5];
        if (v8 > a4)
        {
          goto LABEL_4;
        }

        if (v8 >= a4)
        {
          return result;
        }
      }

      v5 = v6[1];
      if (!v5)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

BOOL llvm::object::COFFSymbolRef::isCommon(llvm::object::COFFSymbolRef *this)
{
  v1 = *this;
  if (!*this)
  {
    v1 = *(this + 1);
    v4 = *(v1 + 18);
    if ((v4 == 2 || v4 == 104) && !*(v1 + 12))
    {
      return *(v1 + 8) != 0;
    }

    return 0;
  }

  v2 = *(v1 + 16);
  v3 = v2 == 104 || v2 == 2;
  if (!v3 || *(v1 + 12))
  {
    return 0;
  }

  return *(v1 + 8) != 0;
}

void *llvm::jitlink::COFFLinkGraphBuilder::exportCOMDATSymbol(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    LODWORD(v10) = *(a5 + 12);
    goto LABEL_5;
  }

  LODWORD(v10) = *(a4 + 12);
  if (v10 >> 8 <= 0xFE)
  {
LABEL_5:
    if (v10 < 1 || v10 >= ((a2[30] - a2[29]) >> 3))
    {
      v11 = 0;
      if (!a4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = *(a2[26] + 8 * v10);
      if (!a4)
      {
LABEL_8:
        v10 = *(a5 + 12);
        v12 = a5;
        goto LABEL_15;
      }
    }

    LODWORD(v10) = *(a4 + 12);
    goto LABEL_11;
  }

  v11 = 0;
LABEL_11:
  if (v10 >> 8 >= 0xFF)
  {
    v10 = v10;
  }

  else
  {
    v10 = v10;
  }

  v12 = a4;
LABEL_15:
  v13 = a2[1] + 24 * v10;
  v14 = a2[11];
  v15 = *(v12 + 8);
  v16 = *a3;
  v22 = v16;
  if ((v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v16 + 8), 1uLL);
  }

  v17 = (a4 + 14);
  if (!a4)
  {
    v17 = (a5 + 16);
  }

  v18 = llvm::jitlink::LinkGraph::addDefinedSymbol(v14, v11, v15, &v22, 0, *(v13 + 4), 0, (*v17 & 0xF0) == 32, 0);
  if ((v22 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v22 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  if (a4)
  {
    v19 = *(a4 + 12);
    if (v19 >> 8 <= 0xFE)
    {
      v20 = *(a4 + 12);
    }

    else
    {
      v20 = v19;
    }
  }

  else
  {
    v20 = *(a5 + 12);
  }

  llvm::jitlink::COFFLinkGraphBuilder::setGraphSymbol(a2, v20, *v13, v18);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(a2 + 38, a3);
  result[1] = v18;
  if (*(v13 + 16) == 1)
  {
    *(v13 + 16) = 0;
  }

  *(a1 + 8) &= ~1u;
  *a1 = v18;
  return result;
}

uint64_t llvm::jitlink::COFFLinkGraphBuilder::createCOMDATExportRequest(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v6 = *(a6 + 14);
  if (v6 > 2)
  {
    if (v6 - 3 >= 2 && v6 != 6)
    {
      if (v6 == 7)
      {
        llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
      }

LABEL_17:
      v12[0] = &unk_2883ED6D0;
      v12[1] = a6 + 14;
      v12[2] = v12;
      operator new();
    }

    goto LABEL_8;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_17;
    }

LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  v8 = *a6;
  if (a4)
  {
    v9 = *(a4 + 12);
    if (v9 >> 8 > 0xFE)
    {
      v9 = v9;
    }
  }

  else
  {
    v9 = *(a5 + 12);
  }

  v10 = *(a2 + 8) + 24 * v9;
  v11 = *(v10 + 16);
  *v10 = a3;
  *(v10 + 4) = v7;
  *(v10 + 8) = v8;
  if ((v11 & 1) == 0)
  {
    *(v10 + 16) = 1;
  }

  *(result + 8) &= ~1u;
  *result = 0;
  return result;
}

void std::vector<llvm::jitlink::Edge>::emplace_back<llvm::jitlink::Edge>(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void std::vector<std::set<std::pair<unsigned long long,llvm::jitlink::Symbol *>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 24;
        std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a2, a2, v9);
    v5 = v6;
    if ((*v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*v6 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    v7 = *a2;
    *v6 = *a2;
    if ((v7 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v7 + 8), 1uLL);
    }

    v6[1] = 0;
  }

  return v5;
}

const char *llvm::jitlink::getCOFFX86RelocationKindName(llvm::jitlink *this)
{
  if ((this - 25) >= 5)
  {
    return llvm::jitlink::x86_64::getEdgeKindName(this);
  }

  else
  {
    return off_279EFB668[(this - 25)];
  }
}

void llvm::jitlink::createLinkGraphFromCOFFObject_x86_64(__int128 *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = *a1;
  v3 = v1;
  llvm::object::COFFObjectFile::create();
}

void llvm::jitlink::link_COFF_x86_64(uint64_t *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  if ((*(**a2 + 56))(*a2, *a1 + 136))
  {
    (*(**a2 + 64))(&v15);
    if (v16 < 8)
    {
      v4 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      *&v13 = llvm::jitlink::markAllSymbolsLive;
    }

    else
    {
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v9, &v15);
      *&v13 = ".pdata";
      *(&v13 + 1) = 6;
      v4 = _MergedGlobals_9 + 2;
    }

    v14 = v4;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v9, &v13);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v13);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v15);
    *&v15 = *a2;
    v16 = &off_2815A43A0 + 2;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v10[1] + 8, &v15);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v15);
  }

  v5 = *a1;
  (*(**a2 + 72))(&v15);
  if (!v15)
  {
    operator new();
  }

  v6 = *a2;
  v8 = v15;
  *&v15 = 0;
  (*(*v6 + 24))(v6, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  *&v15 = &v11;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v15);
  *&v15 = &v10[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v15);
  *&v15 = v10;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v15);
  *&v15 = &v9[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v15);
  *&v15 = v9;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v15);
  v7 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::COFFLinkGraphBuilder_x86_64::~COFFLinkGraphBuilder_x86_64(_anonymous_namespace_::COFFLinkGraphBuilder_x86_64 *this)
{
  llvm::jitlink::COFFLinkGraphBuilder::~COFFLinkGraphBuilder(this);

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::COFFLinkGraphBuilder_x86_64::addRelocations(_anonymous_namespace_::COFFLinkGraphBuilder_x86_64 *this@<X0>, void *a2@<X8>)
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = *(this + 10);
  v5 = (*(*v4 + 352))(v4);
  v7 = v6;
  v8 = (*(*v4 + 360))(v4);
  v49 = v5;
  v50 = v7;
  v10 = v7 == v9 && v5 == v8;
  if (!v10)
  {
    v11 = v8;
    v12 = v9;
    v47 = v8;
    v48 = a2;
    while (1)
    {
      llvm::object::COFFObjectFile::getSectionName(*(this + 10), v5, v61);
      if ((v62 & 1) == 0)
      {
        break;
      }

      v13 = v61[0];
      v61[0] = 0;
LABEL_14:
      if (v62)
      {
        v20 = v61[0];
        v61[0] = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }

      if (v13)
      {
        *a2 = v13;
        goto LABEL_84;
      }

      (*(*v50 + 136))(v50, &v49);
      v5 = v49;
      if (v50 == v12 && v49 == v11)
      {
        goto LABEL_82;
      }
    }

    v14 = (*(*v50 + 160))(v50, v49);
    if (v14 > 0x7FFFFFFE || (v14 + 1) >= ((*(this + 30) - *(this + 29)) >> 3) || (v15 = *(*(this + 26) + 8 * (v14 + 1))) == 0)
    {
      LOWORD(v57) = 1283;
      *&v54 = "Referencing a section that wasn't added to the graph: ";
      v55 = v61[0];
      v56 = v61[1];
      getErrorErrorCat();
      operator new();
    }

    v16 = (*(*v50 + 272))(v50, v49);
    v18 = v17;
    v19 = (*(*v50 + 280))();
    v51 = v16;
    v52 = v18;
    if (v16 == v19)
    {
LABEL_12:
      v13 = 0;
      v11 = v47;
      a2 = v48;
      goto LABEL_14;
    }

    v21 = v19;
    while (1)
    {
      v22 = (*(*v52 + 312))(v52, v16);
      if (v22 == (*(**(this + 10) + 56))(*(this + 10)))
      {
        v44 = (*(*v50 + 160))(v50, v49);
        *&v54 = "Invalid symbol index in relocation entry. index: {0}, section: {1}";
        *(&v54 + 1) = 66;
        v55 = v60;
        v56 = 2;
        v57 = &unk_2883ED728;
        v58 = (v16 + 4);
LABEL_80:
        v59[0] = &unk_2883EB9E8;
        v59[1] = v44;
        v60[0] = &v57;
        v60[1] = v59;
        getErrorErrorCat();
        operator new();
      }

      v23 = *(this + 10);
      v24 = v23[12];
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v22;
      }

      if (v24)
      {
        v26 = v22;
      }

      else
      {
        v26 = 0;
      }

      if (!v24)
      {
        v24 = v23[13];
      }

      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      v28 = v27 - v24;
      v10 = v23[6] == 0;
      v29 = 18;
      if (v10)
      {
        v29 = 20;
      }

      v30 = v28 / v29;
      v53 = v30;
      if ((v30 & 0x80000000) != 0 || (v31 = *(this + 29), v30 >= ((*(this + 30) - v31) >> 3)) || (v32 = *(v31 + 8 * (v30 & 0x7FFFFFFF))) == 0)
      {
        v44 = (*(*v50 + 160))(v50, v49);
        *&v54 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, section: {1}";
        *(&v54 + 1) = 96;
        v55 = v60;
        v56 = 2;
        v57 = &unk_2883ED6A0;
        v58 = &v53;
        goto LABEL_80;
      }

      v33 = (*(*v50 + 152))(v50, v49);
      v34 = (*(*v52 + 304))() + v33 - *v15;
      v35 = v15[3];
      v36 = (*(*v52 + 320))();
      if (v36 <= 6)
      {
        if (v36 <= 3)
        {
          if (v36 == 1)
          {
            v37 = *(v35 + v34);
            v38 = 27;
          }

          else
          {
            if (v36 != 3)
            {
LABEL_81:
              v45 = (*(*v52 + 320))(v52, v51);
              *&v54 = "{0:d}";
              *(&v54 + 1) = 5;
              v55 = v59;
              v56 = 1;
              v57 = &unk_2883EB9E8;
              v58 = v45;
              v59[0] = &v57;
              operator new();
            }

            v37 = *(v35 + v34);
            v38 = 26;
          }

          goto LABEL_66;
        }

        if (v36 == 4)
        {
          v37 = *(v35 + v34);
        }

        else if (v36 == 5)
        {
          v37 = *(v35 + v34) - 1;
        }

        else
        {
          v37 = *(v35 + v34) - 2;
        }

        goto LABEL_65;
      }

      if (v36 <= 8)
      {
        break;
      }

      if (v36 == 9)
      {
        v37 = *(v35 + v34) - 5;
LABEL_65:
        v38 = 25;
        goto LABEL_66;
      }

      if (v36 == 10)
      {
        if (v26)
        {
          v39 = *(v26 + 12);
          if (v39 != 0xFFFF)
          {
            if (v39 >> 8 > 0xFE)
            {
              v39 = v39;
            }

LABEL_70:
            v40 = v39;
LABEL_77:
            v37 = *(v35 + v34);
            v32 = llvm::jitlink::LinkGraph::addAbsoluteSymbol(*(this + 11), "secidx", 6uLL, v40, 2, 0, 3, 0);
            v38 = 28;
            goto LABEL_66;
          }
        }

        else
        {
          v39 = *(v25 + 12);
          if (v39 != -1)
          {
            goto LABEL_70;
          }
        }

        v41 = *(this + 10);
        v42 = *(v41 + 48);
        if (v42)
        {
          v43 = *(v42 + 2);
          if (v43 == 0xFFFF)
          {
            v43 = 0;
          }
        }

        else
        {
          v43 = *(*(v41 + 56) + 44);
        }

        v40 = (v43 + 1);
        goto LABEL_77;
      }

      if (v36 != 11)
      {
        goto LABEL_81;
      }

      if ((*(v32[1] + 8) & 1) == 0)
      {
        goto LABEL_67;
      }

      v37 = *(v35 + v34);
      v38 = 29;
LABEL_66:
      *&v54 = v32;
      DWORD2(v54) = v34;
      v55 = v37;
      LOBYTE(v56) = v38;
      llvm::jitlink::Block::addEdge(v15, &v54);
LABEL_67:
      (*(*v52 + 296))(v52, &v51);
      v16 = v51;
      if (v51 == v21)
      {
        goto LABEL_12;
      }
    }

    if (v36 == 7)
    {
      v37 = *(v35 + v34) - 3;
    }

    else
    {
      v37 = *(v35 + v34) - 4;
    }

    goto LABEL_65;
  }

LABEL_82:
  *a2 = 0;
LABEL_84:
  v46 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::jitlink::SEHFrameKeepAlivePass>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X3>, void *a4@<X8>)
{
  result = llvm::jitlink::LinkGraph::findSectionByName(a2, *a1, a1[1], a3);
  if (result)
  {
    v7 = result;
    result = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(result + 32);
    v9 = *(v7 + 32) + 8 * *(v7 + 48);
    if (v9 != result)
    {
      v10 = result;
      v11 = v8;
      do
      {
        v12 = *v10;
        v13 = llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, *v10, 0, 0, 0, 0);
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v15 = *(v12 + 40);
        v14 = *(v12 + 48);
        if (v15 == v14)
        {
          v17 = 0;
        }

        else
        {
          v16 = v13;
          do
          {
            if (*(*(*v15 + 8) + 8))
            {
              v25 = *(*v15 + 8);
              llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v26, &v25, &v22);
            }

            v15 += 32;
          }

          while (v15 != v14);
          v17 = v26;
          if (v27)
          {
            v18 = v26;
            if (v28)
            {
              v19 = 8 * v28;
              v18 = v26;
              while ((*v18 | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                ++v18;
                v19 -= 8;
                if (!v19)
                {
                  goto LABEL_23;
                }
              }
            }

            v20 = &v26[v28];
            if (v18 != v20)
            {
              v21 = *v18;
LABEL_18:
              *&v22 = v16;
              DWORD2(v22) = 0;
              v23 = 0;
              v24 = 1;
              llvm::jitlink::Block::addEdge(v21, &v22);
              while (++v18 != v20)
              {
                v21 = *v18;
                if ((*v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
                {
                  if (v18 != v20)
                  {
                    goto LABEL_18;
                  }

                  break;
                }
              }

              v17 = v26;
            }
          }
        }

LABEL_23:
        result = MEMORY[0x277C69E30](v17, 8);
        do
        {
          ++v10;
        }

        while (v10 != v11 && (*v10 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v10 != v9);
    }
  }

  *a4 = 0;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::jitlink::link_COFF_x86_64(std::unique_ptr<llvm::jitlink::LinkGraph>,std::unique_ptr<llvm::jitlink::JITLinkContext>)::$_0>@<X0>(uint64_t *a1@<X0>, llvm::jitlink::LinkGraph *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v6 = *(a2 + 15);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = v6;
  v38 = v5;
  v39 = 0;
  std::mutex::lock(v6);
  LODWORD(v49) = 0;
  v7 = *llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(&v6[1], "__ImageBase", 0xBuLL, &v49);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v7 + 1, 1uLL);
  }

  std::mutex::unlock(v6);
  if (v39 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v39 + 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  v39 = v7;
  llvm::jitlink::LinkGraph::blocks(a2, v42);
  v40[0] = v42[0];
  v40[1] = v42[1];
  v8 = v43;
  v40[2] = v42[2];
  v41 = v43;
  v9 = v44;
  v10 = v45;
  v11 = v43.n128_u64[0];
  if (*&v42[0] == v44 && v43.n128_u64[0] == v45)
  {
    goto LABEL_51;
  }

  while (2)
  {
    v12 = *v11;
    v13 = *(v12 + 40);
    v14 = *(v12 + 48);
    while (v13 != v14)
    {
      v15 = *(v13 + 24);
      if (v15 <= 0x1A)
      {
        if (v15 != 25)
        {
          if (v15 != 26)
          {
            goto LABEL_45;
          }

          v22 = v36;
          if (!v36)
          {
            llvm::jitlink::LinkGraph::defined_symbols(a2, &v49);
            v47[0] = v49;
            v47[1] = v50;
            v47[2] = v51;
            v48 = v52;
            v23 = v53;
            v24 = v54;
            v25 = v52;
            if (v49 == v53 && v48 == v54)
            {
LABEL_32:
              v49 = 0uLL;
              LODWORD(v50) = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::FindAndConstruct(&v49, &v39)[2] = 0;
              *&v47[0] = 0;
              v46[0] = 0;
              operator new();
            }

            while (1)
            {
              v26 = *v25;
              if (*v26 == v39)
              {
                break;
              }

              llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(v47, v46);
              v25 = v48;
              if (*&v47[0] == v23 && v48 == v24)
              {
                goto LABEL_32;
              }
            }

            v22 = (*(v26 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v26 + 8);
            v36 = v22;
          }

          v30 = *(v13 + 16) - v22;
          goto LABEL_43;
        }

        v28 = 12;
      }

      else
      {
        switch(v15)
        {
          case 0x1Bu:
            v28 = 2;
            break;
          case 0x1Cu:
            v28 = 5;
            break;
          case 0x1Du:
            v16 = *(v13 + 16);
            v17 = *(*(*v13 + 8) + 16);
            if (v35)
            {
              v18 = ((v17 >> 4) ^ (v17 >> 9)) & (v35 - 1);
              v19 = *(v34[0] + 16 * v18);
              if (v19 != v17)
              {
                v20 = 1;
                while (v19 != -4096)
                {
                  v21 = v18 + v20++;
                  v18 = v21 & (v35 - 1);
                  v19 = *(v34[0] + 16 * v18);
                  if (v19 == v17)
                  {
                    goto LABEL_40;
                  }
                }

                goto LABEL_36;
              }
            }

            else
            {
LABEL_36:
              llvm::jitlink::SectionRange::SectionRange(&v49, v17);
              if (v49)
              {
                v29 = *v49;
              }

              else
              {
                v29 = 0;
              }

              *&v47[0] = v17;
              llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(v34, v47)[1] = v29;
            }

LABEL_40:
            *&v49 = v17;
            v30 = v16 - llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(v34, &v49)[1];
LABEL_43:
            *(v13 + 16) = v30;
            v28 = 3;
            break;
          default:
            goto LABEL_45;
        }
      }

      *(v13 + 24) = v28;
LABEL_45:
      v13 += 32;
    }

    v8 = llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(v40, &v49);
    v11 = v41.n128_u64[0];
    if (*&v40[0] != v9 || v41.n128_u64[0] != v10)
    {
      continue;
    }

    break;
  }

LABEL_51:
  *a3 = 0;
  if (v39 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v39 + 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  return MEMORY[0x277C69E30](v34[0], 8, v8);
}

uint64_t llvm::jitlink::createLookupContinuation<anonymous namespace::COFFLinkGraphLowering_x86_64::getImageBaseAddress(llvm::jitlink::LinkGraph &,llvm::jitlink::JITLinkContext &)::{lambda(llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)#1}>(anonymous namespace::COFFLinkGraphLowering_x86_64::getImageBaseAddress(llvm::jitlink::LinkGraph &,llvm::jitlink::JITLinkContext &)::{lambda(llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)#1})::Impl::run(uint64_t a1, uint64_t a2, __n128 a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = *(a2 + 24) & 1;
  v3 = *a2;
  if (v14)
  {
    *a2 = 0;
    v11 = 0;
    v4 = *(a1 + 8);
  }

  else
  {
    a3.n128_u64[0] = 0;
    v12 = *(a2 + 8);
    v5 = v12;
    v13 = *(a2 + 16);
    v6 = v13;
    *(a2 + 16) = 0;
    *a2 = a3;
    v11 = v3;
    v7 = &v3[3 * v6];
    if (v5)
    {
      if (v6)
      {
        v8 = 24 * v6;
        while ((*v3 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v3 += 3;
          v8 -= 24;
          if (!v8)
          {
            goto LABEL_8;
          }
        }
      }
    }

    else
    {
LABEL_8:
      v3 = v7;
    }

    v4 = *(a1 + 16);
    v3 = v3[1];
  }

  *v4 = v3;
  result = llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(&v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  result[1] = 0;
  return result;
}

void anonymous namespace::COFFJITLinker_x86_64::~COFFJITLinker_x86_64(_anonymous_namespace_::COFFJITLinker_x86_64 *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::JITLinker<anonymous namespace::COFFJITLinker_x86_64>::fixUpBlocks(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 208))
  {
    v4 = *(a1 + 216);
    if (v4)
    {
      v5 = 24 * v4;
      v6 = *(a1 + 200);
      while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v6 += 3;
        v5 -= 24;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v6 = *(a1 + 200);
    }

    v7 = *(a1 + 200) + 24 * v4;
LABEL_10:
    if (v6 != v7)
    {
      v8 = v6[2];
      v21 = *(v8 + 20);
      v9 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v8 + 32);
      v11 = *(v8 + 32) + 8 * *(v8 + 48);
      if (v11 == v9)
      {
        goto LABEL_26;
      }

      v12 = v9;
      v13 = v10;
      do
      {
        v14 = *v12;
        if (v21 == 2 && (v14[1] & 4) == 0)
        {
          v15 = v14[4];
          __src = v14[3];
          v16 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, v15, 0);
          v17 = v16;
          if (v15)
          {
            memmove(v16, __src, v15);
          }

          v14[3] = v17;
          v14[4] = v15;
          v14[1] |= 4uLL;
        }

        v18 = v14[5];
        v19 = v14[6];
        while (v18 != v19)
        {
          if (*(v18 + 24) >= 2u)
          {
            llvm::jitlink::x86_64::applyFixup(a1, v14, v18, 0, a2);
            if (*a2)
            {
              return;
            }
          }

          v18 += 32;
        }

        do
        {
          ++v12;
        }

        while (v12 != v13 && (*v12 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v12 != v11);
LABEL_26:
      while (1)
      {
        v6 += 3;
        if (v6 == v7)
        {
          break;
        }

        if (*v6 < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_10;
        }
      }
    }
  }

LABEL_6:
  *a2 = 0;
}

void llvm::jitlink::JITLinker<anonymous namespace::COFFJITLinker_x86_64>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::aarch32::makeUnexpectedOpcodeError(uint64_t a1, uint64_t (*a2)(uint64_t), __int16 *a3, __int16 *a4, uint64_t a5)
{
  v5 = *a3;
  v6 = *a4;
  v7 = "Invalid opcode [ 0x{0:x4}, 0x{1:x4} ] for relocation: {2}";
  v8 = 57;
  v9 = v16;
  v10 = 3;
  v11 = &unk_2883ED7D8;
  v12 = v5;
  v13 = &unk_2883ED7D8;
  v14 = v6;
  v15[0] = &unk_2883ECD10;
  v15[1] = a2(a5);
  v16[0] = &v11;
  v16[1] = &v13;
  v16[2] = v15;
  operator new();
}

uint64_t llvm::jitlink::aarch32::readAddendData@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = result;
  if ((*(a3 + 24) & 0xFE) != 2)
  {
    std::operator+<char>();
    v10 = std::string::append(&v13, ", section ");
    v11 = v10->__r_.__value_.__r.__words[2];
    *__p = *&v10->__r_.__value_.__l.__data_;
    v15 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = **(a2 + 16);
    v16 = __p;
    v17 = v12;
    v18 = 1284;
    v19 = &v16;
    v20 = " can not read implicit addend for aarch32 edge kind ";
    v21 = 770;
    if (!*(*(v6 + 192))(*(a3 + 24)))
    {
      v24 = v22;
      v25 = v23;
    }

    operator new();
  }

  v8 = *(*(a2 + 24) + *(a3 + 8));
  v9 = bswap32(v8);
  if ((*(result + 188) - 1) >= 2)
  {
    v8 = v9;
  }

  *(a4 + 8) &= ~1u;
  *a4 = v8;
  return result;
}

void llvm::jitlink::aarch32::readAddendArm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24) == 4)
  {
    v4 = (*(a1 + 192))(4);
    if (v4)
    {
      strlen(v4);
    }

    operator new();
  }

  std::operator+<char>();
  v7 = std::string::append(&v10, ", section ");
  v8 = v7->__r_.__value_.__r.__words[2];
  *__p = *&v7->__r_.__value_.__l.__data_;
  v12 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = **(a2 + 16);
  v13 = __p;
  v14 = v9;
  v15 = 1284;
  v16 = &v13;
  v17 = " can not read implicit addend for aarch32 edge kind ";
  v18 = 770;
  if (!*(*(a1 + 192))(*(a3 + 24)))
  {
    v21 = v19;
    v22 = v20;
  }

  operator new();
}

uint64_t llvm::jitlink::aarch32::readAddendThumb@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = result;
  v9 = (*(a2 + 24) + *(a3 + 8));
  v10 = *(a3 + 24);
  if (v10 > 6)
  {
    if (v10 == 7)
    {
      v19 = *v9;
      if ((*v9 & 0xFBF0) != 0xF240 || (v20 = v9[1], (v20 & 0x80000000) != 0))
      {
        v21 = *(result + 192);
        v22 = v9 + 1;
        v23 = a5;
        v24 = 7;
        goto LABEL_25;
      }
    }

    else
    {
      if (v10 != 8)
      {
        goto LABEL_13;
      }

      v19 = *v9;
      if ((*v9 & 0xFBF0) != 0xF2C0 || (v20 = v9[1], (v20 & 0x80000000) != 0))
      {
        v21 = *(result + 192);
        v22 = v9 + 1;
        v23 = a5;
        v24 = 8;
        goto LABEL_25;
      }
    }

    v31 = ((2 * v19) & 0x800 | (v19 << 12) | (v20 >> 4) & 0x700 | v20);
    goto LABEL_29;
  }

  if (v10 != 5)
  {
    if (v10 == 6)
    {
      v11 = *v9;
      if ((v11 & 0xF800) == 0xF000)
      {
        v12 = v9[1];
        if (v12 < 0)
        {
          v13 = v9[1];
          if ((v12 & 0x1000) != 0)
          {
            v32 = (*(result + 192))(6);
            if (v32)
            {
              strlen(v32);
            }

            operator new();
          }

          v14 = *a4 == 1;
          v15 = ((v11 << 54) | ((v9[1] & 0x7FF) << 43)) >> 42;
          v16 = ((v13 << 10) ^ (v11 << 13)) & 0x800000;
          v17 = ((v13 << 11) ^ (v11 << 12)) & 0x400000;
          v18 = (v11 << 14) & 0x1000000 | ((v11 & 0x3FF) << 12) | (2 * (v13 & 0x7FF));
          goto LABEL_27;
        }
      }

      v21 = *(result + 192);
      v22 = v9 + 1;
      v23 = a5;
      v24 = 6;
LABEL_25:
      llvm::jitlink::aarch32::makeUnexpectedOpcodeError(v23, v21, v9, v22, v24);
    }

LABEL_13:
    std::operator+<char>();
    v25 = std::string::append(&v33, ", section ");
    v26 = v25->__r_.__value_.__r.__words[2];
    *__p = *&v25->__r_.__value_.__l.__data_;
    v35 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = **(a2 + 16);
    v36 = __p;
    v37 = v27;
    v38 = 1284;
    v39 = &v36;
    v40 = " can not read implicit addend for aarch32 edge kind ";
    v41 = 770;
    if (!*(*(v7 + 192))(*(a3 + 24)))
    {
      v44 = v42;
      v45 = v43;
    }

    operator new();
  }

  v28 = *v9;
  v29 = v9[1];
  if ((v28 & 0xF800) != 0xF000 || v29 >> 14 <= 2)
  {
    v21 = *(result + 192);
    v22 = v9 + 1;
    v23 = a5;
    v24 = 5;
    goto LABEL_25;
  }

  v14 = *a4 == 1;
  v15 = ((v28 << 54) | ((v29 & 0x7FF) << 43)) >> 42;
  v16 = ((v29 << 10) ^ (v28 << 13)) & 0x800000;
  v17 = ((v29 << 11) ^ (v28 << 12)) & 0x400000;
  v18 = (v28 << 14) & 0x1000000 | ((v28 & 0x3FF) << 12) | (2 * (v29 & 0x7FF));
LABEL_27:
  v31 = (((v18 | v16 | v17) ^ 0xC00000u) << 39) >> 39;
  if (!v14)
  {
    v31 = v15;
  }

LABEL_29:
  *(a5 + 8) &= ~1u;
  *a5 = v31;
  return result;
}

uint64_t llvm::jitlink::aarch32::applyFixupData@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X8>)
{
  v6 = result;
  v7 = *(a3 + 2);
  v8 = a3[24];
  v9 = *(a3 + 2);
  v10 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*a3 + 8);
  if (v8 == 3)
  {
    v11 = v10 + v9;
  }

  else
  {
    if (v8 != 2)
    {
      std::operator+<char>();
      v13 = std::string::append(&v16, ", section ");
      v14 = v13->__r_.__value_.__r.__words[2];
      *__p = *&v13->__r_.__value_.__l.__data_;
      v18 = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = *a2[2];
      v19 = __p;
      v20 = v15;
      v21 = 1284;
      v22 = &v19;
      v23 = " encountered unfixable aarch32 edge kind ";
      v24 = 770;
      if (!*(*(v6 + 192))(a3[24]))
      {
        v27 = v25;
        v28 = v26;
      }

      operator new();
    }

    v11 = v10 + v9 - (*a2 + v7);
  }

  if (v11 != v11)
  {

    llvm::jitlink::makeTargetOutOfRangeError(result, a2, a3);
  }

  v12 = bswap32(v11);
  if (*(result + 188) == 1)
  {
    v12 = v11;
  }

  *(a2[3] + v7) = v12;
  *a4 = 0;
  return result;
}

void llvm::jitlink::aarch32::applyFixupArm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24) == 4)
  {
    v4 = (*(a1 + 192))(4);
    if (v4)
    {
      strlen(v4);
    }

    operator new();
  }

  std::operator+<char>();
  v7 = std::string::append(&v10, ", section ");
  v8 = v7->__r_.__value_.__r.__words[2];
  *__p = *&v7->__r_.__value_.__l.__data_;
  v12 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = **(a2 + 16);
  v13 = __p;
  v14 = v9;
  v15 = 1284;
  v16 = &v13;
  v17 = " encountered unfixable aarch32 edge kind ";
  v18 = 770;
  if (!*(*(a1 + 192))(*(a3 + 24)))
  {
    v21 = v19;
    v22 = v20;
  }

  operator new();
}

unint64_t llvm::jitlink::aarch32::applyFixupThumb@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, _BYTE *a4@<X3>, void *a5@<X8>)
{
  v7 = result;
  v9 = *(a3 + 2);
  v10 = (a2[3] + v9);
  v11 = a3[24];
  v12 = *(a3 + 2);
  v13 = *(*a3 + 16);
  v14 = (v13 & 0x1FFFFFFFFFFFFFFLL) + **(*a3 + 8);
  v15 = v14 | 1;
  if (v13 < 0)
  {
    v14 |= 1uLL;
  }

  if (a3[24] <= 6u)
  {
    v16 = *a2 + v9;
    if (v11 == 5)
    {
      v26 = v10[1];
      if ((*v10 & 0xF800) == 0xF000 && v26 >> 14 > 2)
      {
        v35 = v14 - v16 + v12;
        if (v13 < 0 == ((v26 & 0x1000) == 0))
        {
          if (v13 < 0)
          {
            LOWORD(v26) = v26 & 0xEFFF;
            v10[1] = v26;
            v35 |= 1uLL;
          }

          else
          {
            LOWORD(v26) = v26 & 0xEFFE;
            v10[1] = v26;
            v35 = (v35 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          }
        }

        if (*a4 == 1)
        {
          if (!((v35 + 0x1000000) >> 25))
          {
            *v10 = (v35 >> 14) & 0x400 | (v35 >> 12) & 0x3FF | 0xF000;
            LOWORD(v35) = (v26 & 0xD000 | ((v35 >> 11) ^ (v35 >> 13)) & 0x800 | ((v35 >> 11) ^ (v35 >> 10)) & 0x2000 | (v35 >> 1) & 0x7FF) ^ 0x2800;
LABEL_40:
            v10[1] = v35;
            goto LABEL_41;
          }
        }

        else if (v35 + 0x200000 < 0x400000)
        {
          *v10 = (v35 >> 12) & 0x7FF | 0xF000;
          LODWORD(v35) = v26 & 0xD000 | 0x2800 | (v35 >> 1) & 0x7FF;
          goto LABEL_40;
        }

LABEL_56:

        llvm::jitlink::makeTargetOutOfRangeError(v7, a2, a3);
      }

      v28 = *(result + 192);
      v29 = v10 + 1;
      v30 = a5;
      v31 = v10;
      v32 = 5;
LABEL_31:

      llvm::jitlink::aarch32::makeUnexpectedOpcodeError(v30, v28, v31, v29, v32);
    }

    if (v11 == 6)
    {
      if ((*v10 & 0xF800) == 0xF000)
      {
        v17 = v10[1];
        if (v17 < 0)
        {
          v18 = v10[1];
          if ((v17 & 0x1000) != 0)
          {
            v36 = (*(result + 192))(6);
            if (v36)
            {
              strlen(v36);
            }

            operator new();
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            v19 = (*(result + 192))(6);
            if (v19)
            {
              strlen(v19);
            }

            operator new();
          }

          result = v15 - v16 + v12;
          if (*a4 == 1)
          {
            if (!((result + 0x1000000) >> 25))
            {
              result = llvm::jitlink::aarch32::encodeImmBT4BlT1BlxT2_J1J2(result);
              *v10 = result | 0xF000;
              LODWORD(v35) = v18 & 0xC000 | WORD1(result);
              goto LABEL_40;
            }
          }

          else if (result + 0x200000 < 0x400000)
          {
            *v10 = (result >> 12) & 0x7FF | 0xF000;
            LODWORD(v35) = v17 & 0xC000 | (result >> 1) & 0x7FF | 0x2800;
            goto LABEL_40;
          }

          goto LABEL_56;
        }
      }

      v28 = *(result + 192);
      v29 = v10 + 1;
      v30 = a5;
      v31 = v10;
      v32 = 6;
      goto LABEL_31;
    }

LABEL_17:
    std::operator+<char>();
    v23 = std::string::append(&v37, ", section ");
    v24 = v23->__r_.__value_.__r.__words[2];
    *__p = *&v23->__r_.__value_.__l.__data_;
    v39 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = *a2[2];
    v40 = __p;
    v41 = v25;
    v42 = 1284;
    v43 = &v40;
    v44 = " encountered unfixable aarch32 edge kind ";
    v45 = 770;
    if (!*(*(v7 + 192))(a3[24]))
    {
      v48 = v46;
      v49 = v47;
    }

    operator new();
  }

  if (v11 == 7)
  {
    if ((*v10 & 0xFBF0) != 0xF240 || (v33 = v10[1], v33 < 0))
    {
      v28 = *(result + 192);
      v29 = v10 + 1;
      v30 = a5;
      v31 = v10;
      v32 = 7;
      goto LABEL_31;
    }

    v34 = v14 + v12;
    *v10 = (v34 >> 1) & 0x400 | (v34 >> 12) | 0xF240;
    v22 = v33 & 0xF00 | v34 | (((v34 >> 8) & 7) << 12);
  }

  else
  {
    if (v11 != 8)
    {
      goto LABEL_17;
    }

    if ((*v10 & 0xFBF0) != 0xF2C0 || (v20 = v10[1], v20 < 0))
    {
      v28 = *(result + 192);
      v29 = v10 + 1;
      v30 = a5;
      v31 = v10;
      v32 = 8;
      goto LABEL_31;
    }

    v21 = v14 + v12;
    *v10 = ((v21 >> 16) >> 1) & 0x400 | (WORD1(v21) >> 12) | 0xF2C0;
    v22 = v20 & 0xF00 | BYTE2(v21) | (v21 >> 12) & 0x7000;
  }

  v10[1] = v22;
LABEL_41:
  *a5 = 0;
  return result;
}