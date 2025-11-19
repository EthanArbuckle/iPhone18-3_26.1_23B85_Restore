uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::toDRI(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v10);
    v5 = v10;
    if (v11)
    {
      v10 = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      v6 = 0;
      v7 = 0;
    }

    else
    {
      v7 = a3;
      v6 = ((a2 - v10) >> 6);
    }

    result = v6 | (v7 << 32);
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getStringTable(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(std::string *__return_ptr, uint64_t, void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a2 + 4) == 50331648)
  {
    goto LABEL_10;
  }

  llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v30);
  v10 = std::string::insert(&v30, 0, "invalid sh_type for string table section ");
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v31, ": expected SHT_STRTAB, but got ");
  v13 = v12->__r_.__value_.__r.__words[2];
  v35 = *&v12->__r_.__value_.__l.__data_;
  v36 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  ELFSectionTypeName = llvm::object::getELFSectionTypeName((bswap32(*(*a1 + 18)) >> 16), bswap32(*(a2 + 4)));
  v32[0] = &v35;
  v32[2] = ELFSectionTypeName;
  v32[3] = v15;
  v33 = 1284;
  a3(&v29, a4, v32);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v16 = v29.__r_.__value_.__r.__words[0];
  if (!v29.__r_.__value_.__r.__words[0])
  {
LABEL_10:
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<char>(a1, a2, &v35);
    v17 = v35;
    if (v36)
    {
      *&v35 = 0;
      *(a5 + 16) |= 1u;
      *a5 = v17;
    }

    else
    {
      v18 = *(&v35 + 1);
      if (!*(&v35 + 1))
      {
        llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v29);
        v23 = std::string::insert(&v29, 0, "SHT_STRTAB string table section ");
        v24 = v23->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = std::string::append(&v30, " is empty");
        v26 = v25->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v33 = 260;
        v32[0] = &v31;
        v34 = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }

      if (*(v35 + *(&v35 + 1) - 1))
      {
        llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v29);
        v19 = std::string::insert(&v29, 0, "SHT_STRTAB string table section ");
        v20 = v19->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        v21 = std::string::append(&v30, " is non-null terminated");
        v22 = v21->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v33 = 260;
        v32[0] = &v31;
        v34 = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }

      *(a5 + 16) &= ~1u;
      *a5 = v17;
      *(a5 + 8) = v18;
    }

    if (v36)
    {
      v27 = v35;
      *&v35 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }
  }

  else
  {
    *(a5 + 16) |= 1u;
    *a5 = v16;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<char>@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v5 = bswap64(*(a2 + 24));
  v6 = bswap64(*(a2 + 32));
  v37 = v6;
  v38 = v5;
  if (__CFADD__(v5, v6))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(result, a2, &v24);
    v7 = std::string::insert(&v24, 0, "section ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v19, " has a sh_offset (0x");
    v10 = v9->__r_.__value_.__r.__words[2];
    *__p = *&v9->__r_.__value_.__l.__data_;
    v22 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v25[0] = __p;
    v26 = &v38;
    v27 = 3588;
    v28[0] = v25;
    v29 = ") + sh_size (0x";
    v30 = 770;
    v31[0] = v28;
    v32 = &v37;
    v33 = 3586;
    v34 = v31;
    v35 = ") that cannot be represented";
    v36 = 770;
    LODWORD(v18.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (v6 + v5 > result[1])
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(result, a2, &v17);
    v11 = std::string::insert(&v17, 0, "section ");
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v18, " has a sh_offset (0x");
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v19.__r_.__value_.__r.__words[0] = &v24;
    v19.__r_.__value_.__r.__words[2] = &v38;
    v20 = 3588;
    __p[0] = &v19;
    v22 = ") + sh_size (0x";
    v23 = 770;
    v25[0] = __p;
    v26 = &v37;
    v27 = 3586;
    v28[0] = v25;
    v29 = ") that is greater than the file size (0x";
    v30 = 770;
    v16 = v3[1];
    v31[0] = v28;
    v32 = &v16;
    v33 = 3586;
    v34 = v31;
    v35 = ")";
    v36 = 770;
    v39 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v15 = *result + v5;
  *(a3 + 16) &= ~1u;
  *a3 = v15;
  *(a3 + 8) = v6;
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSHNDXTable@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections(a1, v9);
  if (v10)
  {
    v7 = v9[0];
    *(a3 + 16) |= 1u;
    *a3 = v7;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSHNDXTable(a1, a2, v9[0], v9[1], a3);
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

uint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    goto LABEL_6;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1, a3, v14);
  if ((v15 & 1) == 0)
  {
    a3 = v14[0];
LABEL_6:
    v10 = a4[1];
    v13[0] = *a4;
    v13[1] = v10;
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1, a2, a3, v13, a5);
    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v9 = v14[0];
  v14[0] = 0;
  *(a5 + 8) |= 1u;
  *a5 = v9;
LABEL_7:
  result = v14[0];
  v14[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSHNDXTable@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)0,1ul,1ul>>(a1, a2, &v32);
  v11 = v32;
  if (v34)
  {
    v32 = 0;
    *(a5 + 16) |= 1u;
  }

  else
  {
    v12 = bswap32(*(a2 + 40));
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
    if (v14 != 0x2000000 && v14 != 184549376)
    {
      ELFSectionTypeName = llvm::object::getELFSectionTypeName((bswap32(*(*a1 + 18)) >> 16), bswap32(v14));
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
    v23 = bswap64(*(v13 + 32)) / 0x18;
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

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)0,1ul,1ul>>@<X0>(void *result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[7] != 0x400000000000000)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(result, a2, &v28);
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
    v27.__r_.__value_.__r.__words[0] = bswap64(a2[7]);
    v44 = v41;
    v45 = &v27;
    v46 = 3074;
    LODWORD(v26.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = bswap64(a2[3]);
  v7 = bswap64(a2[4]);
  v36 = v7;
  v37 = v6;
  if ((v7 & 3) != 0)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(result, a2, &v32);
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
    v27.__r_.__value_.__r.__words[0] = bswap64(a2[7]);
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
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(result, a2, &v32);
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
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(result, a2, &v26);
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

uint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X4>, uint64_t a5@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4[1];
  v11[0] = *a4;
  v11[1] = v7;
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionIndex(a2, a3, v11, &v12);
  if (v13)
  {
    v9 = v12;
    *(a5 + 8) |= 1u;
    *a5 = v9;
  }

  else if (v12)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1, v12, a5);
    if (v13)
    {
      result = v12;
      v12 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  else
  {
    *(a5 + 8) &= ~1u;
    *a5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionIndex@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X4>, uint64_t a4@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 6);
  if (v5 == 0xFFFF)
  {
    v7 = a3[1];
    v11[0] = *a3;
    v11[1] = v7;
    result = llvm::object::getExtendedSymbolTableIndex<llvm::object::ELFType<(llvm::support::endianness)0,false>>(-1431655765 * ((a1 - a2) >> 3), v11, &v12);
    if (v13)
    {
      v9 = v12;
      *(a4 + 8) |= 1u;
      *a4 = v9;
      goto LABEL_8;
    }

    *(a4 + 8) &= ~1u;
    v6 = v12;
LABEL_7:
    *a4 = v6;
    goto LABEL_8;
  }

  v6 = __rev16(v5);
  *(a4 + 8) &= ~1u;
  if ((v6 + 256) > 0x100u)
  {
    goto LABEL_7;
  }

  *a4 = 0;
LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a1[17];
  if (v8)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSHNDXTable(a1 + 7, v8, &v15);
    if (v16)
    {
      v10 = v15;
LABEL_7:
      *(a4 + 16) |= 1u;
      *a4 = v10;
      goto LABEL_13;
    }

    v11 = *(&v15 + 1);
    v12 = v15;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  *&v15 = v12;
  *(&v15 + 1) = v11;
  v16 = 1;
  v17 = 0;
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1 + 7, a2, a3, &v15, &v18);
  v10 = v18;
  if (v19)
  {
    goto LABEL_7;
  }

  if (v18)
  {
    *(a4 + 16) &= ~1u;
    *a4 = v10;
    *(a4 + 8) = a1;
  }

  else
  {
    result = (*(*a1 + 360))(a1);
    *(a4 + 16) &= ~1u;
    *a4 = result;
    *(a4 + 8) = v13;
    if (v19)
    {
      result = v18;
      v18 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionName(void *a1@<X0>, unsigned int *a2@<X1>, void (*a3)(std::string *__return_ptr, uint64_t, void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections(a1, v17);
  if (v18)
  {
    v10 = v17[0];
    *(a5 + 16) |= 1u;
    *a5 = v10;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionStringTable(a1, v17[0], v17[1], a3, a4, v15);
    if (v16)
    {
      v11 = v15[0];
      *(a5 + 16) |= 1u;
      *a5 = v11;
    }

    else
    {
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionName(a1, a2, v15[0], v15[1], a5);
      if (v16)
      {
        v12 = v15[0];
        v15[0] = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }
    }

    if (v18)
    {
      v13 = v17[0];
      v17[0] = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionStringTable(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void (*a4)(std::string *__return_ptr, uint64_t, void *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(*a1 + 62);
  if (v7 == 0xFFFF)
  {
    if (!a3)
    {
      v13 = "e_shstrndx == SHN_XINDEX, but the section header table is empty";
      v15 = 259;
      LODWORD(v11[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v8 = bswap32(*(a2 + 40));
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_9:
    *(a6 + 16) &= ~1u;
    v10 = a1[6];
    *a6 = a1[5];
    *(a6 + 8) = v10;
    return;
  }

  v8 = __rev16(v7);
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (a3 <= v8)
  {
    v11[0] = "section header string table index ";
    v11[2] = v8;
    v12 = 2051;
    v13 = v11;
    v14 = " does not exist";
    v15 = 770;
    v16 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v9 = a2 + (v8 << 6);

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getStringTable(a1, v9, a4, a5, a6);
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionName@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*a2)
  {
    v6 = bswap32(*a2);
    if (a4 <= v6)
    {
      llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(result, a2, &v13);
      v8 = std::string::insert(&v13, 0, "a section ");
      v9 = v8->__r_.__value_.__r.__words[2];
      *&v14.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
      v14.__r_.__value_.__r.__words[2] = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v14, " has an invalid sh_name (0x");
      v11 = v10->__r_.__value_.__r.__words[2];
      *__p = *&v10->__r_.__value_.__l.__data_;
      v16 = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = v6;
      v17[0] = __p;
      v17[2] = &v12;
      v18 = 3588;
      v19 = v17;
      v20 = ") offset which goes past the end of the section name string table";
      v21 = 770;
      v22 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = (a3 + v6);
    result = strlen(v7);
    *(a5 + 16) &= ~1u;
    *a5 = v7;
    *(a5 + 8) = result;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) &= ~1u;
  }

  return result;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelSection(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection((a1 + 56), a2, &v11);
  if (v12)
  {
    v4 = v11;
    v11 = 0;
    v6 = v4;
    *&v7.__val_ = llvm::errorToErrorCode(&v6);
    v7.__cat_ = v5;
    std::error_code::message(&v8, &v7);
    v10 = 260;
    v9 = &v8;
    llvm::report_fatal_error(&v9, 1);
  }

  result = v11;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRel(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>,false>>((a1 + 56), a2, HIDWORD(a2), &v11);
  if (v12)
  {
    v4 = v11;
    v11 = 0;
    v6 = v4;
    *&v7.__val_ = llvm::errorToErrorCode(&v6);
    v7.__cat_ = v5;
    std::error_code::message(&v8, &v7);
    v10 = 260;
    v9 = &v8;
    llvm::report_fatal_error(&v9, 1);
  }

  result = v11;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRela(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v11);
  if (v12)
  {
    v4 = v11;
    v11 = 0;
    v6 = v4;
    *&v7.__val_ = llvm::errorToErrorCode(&v6);
    v7.__cat_ = v5;
    std::error_code::message(&v8, &v7);
    v10 = 260;
    v9 = &v8;
    llvm::report_fatal_error(&v9, 1);
  }

  result = v11;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>,false>>@<X0>(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1, a2, &v10);
  v8 = v10;
  if (v11)
  {
    *(a4 + 8) |= 1u;
    *a4 = v8;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>,false>>(a1, v10, a3, a4);
    if (v11)
    {
      result = v10;
      v10 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>,false>>@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>,false>>(a1, a2, v23);
  if (v24)
  {
    v8 = v23[0];
    v9 = *(a4 + 8) | 1;
  }

  else
  {
    if (v23[1] <= a3)
    {
      v12 = 16 * a3;
      v13[0] = "can't read an entry at 0x";
      v13[2] = &v12;
      v14 = 3587;
      v15[0] = v13;
      v15[2] = ": it goes past the end of the section (0x";
      v16 = 770;
      v11 = bswap64(a2[4]);
      v17[0] = v15;
      v17[2] = &v11;
      v18 = 3586;
      v19 = v17;
      v20 = ")";
      v21 = 770;
      v22 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v8 = v23[0] + 16 * a3;
    v9 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v9;
  *a4 = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>,false>>@<X0>(void *result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[7] != 0x1000000000000000)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(result, a2, &v28);
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
    v32.__r_.__value_.__r.__words[0] = 16;
    v38[0] = __p;
    v39 = &v32;
    v40 = 2564;
    v41[0] = v38;
    v42 = ", but got ";
    v43 = 770;
    v27.__r_.__value_.__r.__words[0] = bswap64(a2[7]);
    v44 = v41;
    v45 = &v27;
    v46 = 3074;
    LODWORD(v26.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = bswap64(a2[3]);
  v7 = bswap64(a2[4]);
  v36 = v7;
  v37 = v6;
  if ((v7 & 0xF) != 0)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(result, a2, &v32);
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
    v27.__r_.__value_.__r.__words[0] = bswap64(a2[7]);
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
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(result, a2, &v32);
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
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(result, a2, &v26);
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
  *(a3 + 8) = v7 >> 4;
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::dynamic_symbol_begin(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1 && bswap64(*(v1 + 32)) > 0x17;
  return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::toDRI(a1, v1, v2);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::dynamic_symbol_end(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::toDRI(a1, v1, bswap64(*(v1 + 32)) / 0x18);
  }

  else
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::dynamic_symbol_begin(a1);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::ELFObjectFile(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v9[0] = *(a2 + 16);
  v9[1] = v4;
  v6 = *(a2 + 56);
  std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>::vector[abi:nn200100](__p, (a2 + 72));
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = v9;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<char>::operator=(v8, a2 + 96);
  }

  llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::ELFObjectFile(a1, v9, &v6, *(a2 + 120), *(a2 + 128), *(a2 + 136));
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::create@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::create(*a1, *(a1 + 8), &v22);
  if ((v26 & 1) != 0 && (v6 = v22, *&v22 = 0, v6))
  {
    *(a3 + 152) |= 1u;
    *a3 = v6;
  }

  else
  {
    v7 = *(a1 + 16);
    v16[0] = *a1;
    v16[1] = v7;
    v12 = v22;
    *__p = v23;
    v23 = 0uLL;
    v8 = v24;
    v24 = 0;
    v14 = v8;
    v15[0] = v16;
    v15[1] = 0;
    v15[2] = 0;
    if (v25[1])
    {
      llvm::SmallVectorImpl<char>::operator=(v15, v25);
    }

    llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::ELFObjectFile(v17, v16, &v12, 0, 0, 0);
    if (v15[0] != v16)
    {
      free(v15[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (a2 && (llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::initContent(v17, v16), (v9 = *&v16[0]) != 0))
    {
      *(a3 + 152) |= 1u;
      *a3 = v9;
    }

    else
    {
      *(a3 + 152) &= ~1u;
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::ELFObjectFile(a3, v17);
    }

    v17[0] = &unk_2883EDD10;
    if (v20 != &v21)
    {
      free(v20);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }

  result = llvm::Expected<llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>>::~Expected(&v22);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::initContent@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections((a1 + 56), &v11);
  v5 = v11;
  if ((v13 & 1) == 0)
  {
    if (v12)
    {
      v6 = v12 << 6;
      v7 = (v11 + 4);
      while (1)
      {
        v8 = *v7;
        if (*v7 == 2)
        {
          break;
        }

        if (v8 != 18)
        {
          if (v8 != 11)
          {
            goto LABEL_11;
          }

          v9 = (a1 + 120);
          if (*(a1 + 120))
          {
            goto LABEL_11;
          }

LABEL_10:
          *v9 = v7 - 1;
          goto LABEL_11;
        }

        v9 = (a1 + 136);
        if (!*(a1 + 136))
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 16;
        v6 -= 64;
        if (!v6)
        {
          goto LABEL_15;
        }
      }

      v9 = (a1 + 128);
      if (*(a1 + 128))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_15:
    v5 = 0;
    *(a1 + 48) = 1;
  }

  *a2 = v5;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883EDD10;
  v2 = a1[12];
  if (v2 != a1 + 15)
  {
    free(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::ELFObjectFile(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v11 = a2[1];
  *(a1 + 8) = 15;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  *a1 = &unk_2883EDD10;
  *(a1 + 48) = 0;
  *(a1 + 56) = *a3;
  std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>::vector[abi:nn200100]((a1 + 72), (a3 + 16));
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (*(a3 + 48))
  {
    llvm::SmallVectorImpl<char>::operator=(a1 + 96, a3 + 40);
  }

  *(a1 + 120) = a4;
  *(a1 + 128) = a5;
  *(a1 + 136) = a6;
  return a1;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883EDD10;
  v2 = a1[12];
  if (v2 != a1 + 15)
  {
    free(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x277C69E40);
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolFlags@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>(a1 + 7, a2, HIDWORD(a2), &v31);
  v7 = v31;
  if (v32)
  {
    v31 = 0;
    *(a3 + 8) |= 1u;
    *a3 = v7;
    goto LABEL_83;
  }

  v8 = *(v31 + 4);
  if ((v8 & 0xF0) == 0x20)
  {
    v9 = 6;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x10)
  {
    v9 = 0;
  }

  if (*(v31 + 6) == -15)
  {
    v9 |= 8u;
  }

  if ((v8 & 0xF) - 3 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 | 0x80;
  }

  v11 = a1[16];
  if (v11)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,true>>(a1 + 7, v11, &v28);
    v12 = v28;
    if (v30)
    {
LABEL_19:
      *(a3 + 8) |= 1u;
      *a3 = v12;
      goto LABEL_83;
    }

    v13 = v7 == v28;
  }

  else
  {
    v13 = 0;
  }

  v14 = a1[15];
  if (v14)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,true>>(a1 + 7, v14, &v28);
    v12 = v28;
    if (v30)
    {
      goto LABEL_19;
    }

    v13 |= v7 == v28;
  }

  v15 = v10 | 0x80;
  if (v13)
  {
    v10 |= 0x80u;
  }

  v16 = *(a1[7] + 18);
  switch(v16)
  {
    case 183:
      result = (*(*a1 + 80))(&v28, a1, a2);
      if (v30)
      {
        v27 = v28;
        v28 = 0;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v27);
        result = v27;
        if (v27)
        {
          result = (*(*v27 + 8))(v27);
        }

        if (v30)
        {
          result = v28;
          v28 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }

        v17 = v10;
      }

      else
      {
        v17 = v10;
        if (v29 >= 2)
        {
          v17 = v15;
          if (*v28 != 25636)
          {
            if (*v28 == 30756)
            {
              v17 = v15;
            }

            else
            {
              v17 = v10;
            }
          }
        }
      }

      v10 = v17;
      break;
    case 40:
      result = (*(*a1 + 80))(&v28, a1, a2);
      if (v30)
      {
        v27 = v28;
        v28 = 0;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v27);
        result = v27;
        if (v27)
        {
          result = (*(*v27 + 8))(v27);
        }

        if (v30)
        {
          result = v28;
          v28 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }

        v18 = v10;
        goto LABEL_62;
      }

      if (v29)
      {
        v18 = v10;
        if (v29 == 1)
        {
LABEL_62:
          if ((v7[2] & 0xF) == 2)
          {
            v18 = v18 & 0xFFFFFEFF | ((*(v7 + 2) & 1) << 8);
          }

          v10 = v18;
          break;
        }

        if (*v28 != 25636)
        {
          v18 = v15;
          if (*v28 != 29732)
          {
            if (*v28 == 24868)
            {
              v18 = v15;
            }

            else
            {
              v18 = v10;
            }
          }

          goto LABEL_62;
        }
      }

      v18 = v15;
      goto LABEL_62;
    case 243:
      result = (*(*a1 + 80))(&v28, a1, a2);
      if (v30)
      {
        v19 = v28;
        v28 = 0;
        v26 = v19;
        llvm::consumeError(&v26);
        result = v26;
        if (v26)
        {
          result = (*(*v26 + 8))(v26);
        }
      }

      else if (!v29)
      {
        v10 = v15;
      }

      if (v30)
      {
        result = v28;
        v28 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      break;
  }

  if (v7[3])
  {
    v20 = *(v7 + 4);
    v21 = v20 & 0xF;
    if (v21 != 5 && v7[3] != 65522)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v10 |= 1u;
    v20 = *(v7 + 4);
    v21 = v20 & 0xF;
    if (v21 != 5)
    {
      goto LABEL_71;
    }
  }

  v10 |= 0x10u;
LABEL_71:
  v22 = v20 >> 4;
  if (v22 <= 0xA && ((1 << v22) & 0x406) != 0)
  {
    v23 = *(v7 + 5) & 3;
    if (v23 == 3 || (*(v7 + 5) & 3) == 0)
    {
      v10 |= 0x40u;
    }
  }

  else
  {
    v23 = *(v7 + 5) & 3;
  }

  if (v21 == 10)
  {
    v24 = v10 | 0x20;
  }

  else
  {
    v24 = v10;
  }

  if (v23 == 2)
  {
    v24 |= 0x200u;
  }

  *(a3 + 8) &= ~1u;
  *a3 = v24;
LABEL_83:
  if (v32)
  {
    result = v31;
    v31 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::symbol_begin(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    v2 = *(v1 + 32) > 0x17uLL;
  }

  else
  {
    v2 = 0;
  }

  return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::toDRI(a1, v1, v2);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::symbol_end(void *a1)
{
  v1 = a1[16];
  if (v1)
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::toDRI(a1, v1, *(v1 + 32) / 0x18uLL);
  }

  else
  {
    return (*(*a1 + 48))(a1);
  }
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolName(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>(a1 + 7, a2, HIDWORD(a2), &v32);
  if (v33)
  {
    v6 = v32;
    *(a3 + 16) |= 1u;
    *a3 = v6;
    goto LABEL_32;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(a1 + 7, a2, &v30);
  v7 = v30;
  if ((v31 & 1) == 0)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(a1 + 7, *(v30 + 40), &v28);
    v8 = v28;
    if (v29)
    {
      *(a3 + 16) |= 1u;
      *a3 = v8;
LABEL_26:
      if (v31)
      {
        v14 = v30;
        v30 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      goto LABEL_29;
    }

    *&v24 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getStringTable(a1 + 7, v28, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v24, v26);
    if (v27)
    {
      v9 = v26[0];
      *(a3 + 16) |= 1u;
      *a3 = v9;
LABEL_23:
      if (v29)
      {
        v13 = v28;
        v28 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      goto LABEL_26;
    }

    llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getName(v32, v26[0], v26[1], &v24);
    v10 = v25;
    if ((v25 & 1) != 0 || !*(&v24 + 1))
    {
      if ((*(v32 + 4) & 0xF) == 3)
      {
        (*(*a1 + 128))(&v21, a1, a2);
        if ((v23 & 1) == 0)
        {
          if (v25)
          {
            v17 = v24;
            *&v24 = 0;
          }

          else
          {
            v17 = 0;
          }

          v20 = v17;
          llvm::consumeError(&v20);
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }

          (*(*v22 + 144))(v22, v21);
          if (v23)
          {
            v18 = v21;
            v21 = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }
          }

          if (v25)
          {
            v19 = v24;
            *&v24 = 0;
            if (v19)
            {
              (*(*v19 + 8))(v19);
            }
          }

          goto LABEL_20;
        }

        v11 = v21;
        v21 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        v10 = v25;
      }

      *(a3 + 16) = *(a3 + 16) & 0xFE | v10 & 1;
      if (v10)
      {
        *a3 = v24;
LABEL_20:
        if (v27)
        {
          v12 = v26[0];
          v26[0] = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }
        }

        goto LABEL_23;
      }
    }

    else
    {
      *(a3 + 16) = *(a3 + 16) & 0xFE | v25 & 1;
    }

    *a3 = v24;
    goto LABEL_20;
  }

  *(a3 + 16) |= 1u;
  *a3 = v7;
LABEL_29:
  if (v33)
  {
    v15 = v32;
    v32 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

LABEL_32:
  v16 = *MEMORY[0x277D85DE8];
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolAddress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  result = llvm::object::ObjectFile::getSymbolValue(a1, a2, &v25);
  if (v26)
  {
    v7 = v25;
LABEL_4:
    *(a3 + 8) |= 1u;
    *a3 = v7;
    goto LABEL_5;
  }

  v8 = v25;
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>((a1 + 56), a2, HIDWORD(a2), &v23);
  v7 = v23;
  if (v24)
  {
    goto LABEL_4;
  }

  v10 = *(v23 + 6);
  if ((v10 - 65521) < 2 || v10 == 0)
  {
    *(a3 + 8) &= ~1u;
    *a3 = v8;
    goto LABEL_5;
  }

  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection((a1 + 56), a2, &v21);
  if (v22)
  {
    v12 = v21;
    v21 = 0;
LABEL_14:
    *(a3 + 8) |= 1u;
    *a3 = v12;
    goto LABEL_25;
  }

  if (*(*(a1 + 56) + 16) == 1)
  {
    v13 = *(a1 + 136);
    if (v13)
    {
      result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSHNDXTable((a1 + 56), v13, &v16);
      if (v17)
      {
        v12 = v16;
        goto LABEL_14;
      }

      v14 = *(&v16 + 1);
      v15 = v16;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *&v16 = v15;
    *(&v16 + 1) = v14;
    v17 = 1;
    v18 = 0;
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection((a1 + 56), v23, v21, &v16, &v19);
    v12 = v19;
    if (v20)
    {
      goto LABEL_14;
    }

    if (v19)
    {
      v8 += v19[2];
    }
  }

  *(a3 + 8) &= ~1u;
  *a3 = v8;
LABEL_25:
  if (v22)
  {
    result = v21;
    v21 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if (v24)
  {
    result = v23;
    v23 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolValueImpl(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>((a1 + 56), a2, HIDWORD(a2), &v8);
  if (v9)
  {
    v7 = v8;
    v8 = 0;
    llvm::report_fatal_error(&v7);
  }

  result = *(v8 + 8);
  if (*(v8 + 6) != -15)
  {
    v4 = *(*(a1 + 56) + 18);
    v5 = v4 == 40 || v4 == 8;
    if (v5 && (*(v8 + 4) & 0xF) == 2)
    {
      result &= ~1uLL;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolAlignment(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  if (*(v5 + 6) == -14)
  {
    result = *(v5 + 8);
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>((a1 + 56), a2, HIDWORD(a2), &v9);
  v5 = v9;
  if ((v10 & 1) == 0)
  {
    v6 = *(v9 + 4) & 0xF;
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        *(a3 + 8) &= ~1u;
        v7 = 3;
        goto LABEL_16;
      }

      if (v6 == 4)
      {
        *(a3 + 8) &= ~1u;
        v7 = 4;
        goto LABEL_16;
      }

      if (v6 != 5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if ((*(v9 + 4) & 0xF) == 0)
      {
        *(a3 + 8) &= ~1u;
        *a3 = 0;
        goto LABEL_17;
      }

      if (v6 != 1)
      {
        if (v6 == 2)
        {
          *(a3 + 8) &= ~1u;
          v7 = 5;
LABEL_16:
          *a3 = v7;
          goto LABEL_17;
        }

LABEL_14:
        *(a3 + 8) &= ~1u;
        v7 = 1;
        goto LABEL_16;
      }
    }

    *(a3 + 8) &= ~1u;
    v7 = 2;
    goto LABEL_16;
  }

  *(a3 + 8) |= 1u;
  *a3 = v5;
LABEL_17:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v14 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>(a1 + 7, a2, HIDWORD(a2), &v12);
  if (v13)
  {
    v7 = v12;
    *(a3 + 16) |= 1u;
    *a3 = v7;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(a1 + 7, v3, &v10);
    if (v11)
    {
      v8 = v10;
      *(a3 + 16) |= 1u;
      *a3 = v8;
    }

    else
    {
      result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolSection(a1, v12, v10, a3);
      if (v11)
      {
        result = v10;
        v10 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }
    }

    if (v13)
    {
      result = v12;
      v12 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionIndex(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections((a1 + 56), &v8);
  if (v9)
  {
    v3 = v8;
    v8 = 0;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;
  llvm::handleAllErrors<llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(llvm::object::DataRefImpl)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v7);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v4 = v8;
  if (v9)
  {
    v8 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return (a2 - v4) >> 6;
}

llvm::object *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContents@<X0>(llvm::object *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 4) == 8)
  {
    v4 = *(result + 2);
    *(a3 + 16) &= ~1u;
    *a3 = v4;
    *(a3 + 8) = 0;
  }

  else
  {
    v6 = (result + 16);
    v7 = *(result + 2);
    v11[0] = *(result + 1);
    v11[1] = v7;
    result = llvm::object::Binary::checkOffset(v11, *(a2 + 24) + *&v11[0], *(a2 + 32), &v12);
    v8 = v12;
    if (v12)
    {
      *(a3 + 16) |= 1u;
      *a3 = v8;
    }

    else
    {
      v9 = *(a2 + 32);
      v10 = *v6 + *(a2 + 24);
      *(a3 + 16) &= ~1u;
      *a3 = v10;
      *(a3 + 8) = v9;
    }
  }

  return result;
}

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::isSectionData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 1)
  {
    return 0;
  }

  if ((*(a2 + 8) & 2) != 0)
  {
    return (*(a2 + 8) & 4) == 0;
  }

  return 0;
}

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::isBerkeleyText(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (v2 & 4) != 0 || (*(a2 + 8) & 1) == 0;
  return (v2 & 2) != 0 && v3;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::isBerkeleyData(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 248))(a1) & 1) != 0 || *(a2 + 4) == 8)
  {
    return 0;
  }

  else
  {
    return (*(a2 + 8) >> 1) & 1;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::isDebugSection(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  (*(*a1 + 144))(&v7);
  if (v9)
  {
    v6 = v7;
    v7 = 0;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v6);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_24;
    }

    result = v7;
    v7 = 0;
    if (result)
    {
      (*(*result + 8))(result);
LABEL_24:
      result = 0;
    }
  }

  else
  {
    if (v8 < 6)
    {
      goto LABEL_24;
    }

    if (*v7 == 1650811950 && *(v7 + 4) == 26485)
    {
      goto LABEL_26;
    }

    if (v8 == 6)
    {
      goto LABEL_24;
    }

    if (*v7 == 1701083694 && *(v7 + 3) == 1735746149)
    {
LABEL_26:
      result = 1;
      goto LABEL_25;
    }

    if (v8 != 10)
    {
      goto LABEL_24;
    }

    result = *v7 == 0x646E695F6264672ELL && *(v7 + 8) == 30821;
  }

LABEL_25:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::section_rel_begin(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections((a1 + 56), &v6);
  result = v6;
  if (v7)
  {
    v6 = 0;
    if (result)
    {
      (*(*result + 8))(result);
      result = 0;
    }
  }

  else
  {
    result = ((a2 - v6) / *(*(a1 + 56) + 58));
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::section_rel_end(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 272))(a1);
  v5 = *(a2 + 4);
  if (v5 == 4 || v5 == 9)
  {
    RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelSection(a1, v4);
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(a1 + 7, *(RelSection + 10), &v17);
    if (v18)
    {
      v10 = v17;
      v17 = 0;
      v12 = v10;
      *&v13.__val_ = llvm::errorToErrorCode(&v12);
      v13.__cat_ = v11;
      std::error_code::message(&v14, &v13);
      v16 = 260;
      v15 = &v14;
      llvm::report_fatal_error(&v15, 1);
    }

    v4 += (*(a2 + 32) / *(a2 + 56)) << 32;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocatedSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 4);
  if (v5 == 4 || v5 == 9)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(a1 + 7, *(a2 + 44), &v11);
    v7 = v11;
    if (v12)
    {
      *(a3 + 16) |= 1u;
    }

    else
    {
      *(a3 + 16) &= ~1u;
      *(a3 + 8) = a1;
    }

    *a3 = v7;
  }

  else
  {
    result = (*(*a1 + 360))(a1);
    *(a3 + 16) &= ~1u;
    *a3 = result;
    *(a3 + 8) = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocationOffset(uint64_t a1, uint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelSection(a1, a2) + 1) == 9)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRela(a1, a2);
  }

  return *Rel;
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocationSymbol(void *a1, uint64_t a2)
{
  RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelSection(a1, a2);
  if (*(RelSection + 1) == 9)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRela(a1, a2);
  }

  v6 = a1[7];
  if (*(v6 + 18) == 8 && *(v6 + 4) == 2)
  {
    if (*(v6 + 5) == 1)
    {
      v7 = Rel[1] << 32;
    }

    else
    {
      v7 = Rel[1];
    }
  }

  else
  {
    v7 = Rel[1];
  }

  if (HIDWORD(v7))
  {
    return v7 & 0xFFFFFFFF00000000 | *(RelSection + 10);
  }

  else
  {
    return (*(*a1 + 56))(a1);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocationType(uint64_t a1, uint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelSection(a1, a2) + 1) == 9)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRela(a1, a2);
  }

  v5 = *(a1 + 56);
  if (*(v5 + 18) == 8 && *(v5 + 4) == 2)
  {
    v6 = *(v5 + 5) == 1;
    v7 = (Rel[1] >> 24) & 0xFF0000 | HIBYTE(Rel[1]) | (Rel[1] >> 8) & 0xFF000000 | (Rel[1] >> 40) & 0xFF00;
    if (!v6)
    {
      return Rel[1];
    }
  }

  else
  {
    LODWORD(v7) = *(Rel + 2);
  }

  return v7;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocationTypeName(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a1 + 7;
  v5 = (*(*a1 + 320))(a1);

  return llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationTypeName(v4, v5, a3);
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::dynamic_relocation_sections(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __p = 0;
  v27 = 0;
  v28 = 0;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections((a1 + 56), &v29);
  if ((v31 & 1) == 0 && v30)
  {
    v4 = v29;
    v5 = v29 + (v30 << 6);
    do
    {
      if (*(v4 + 4) == 6)
      {
        v6 = (*(v4 + 24) + *(a1 + 16));
        v7 = *v6;
        if (*v6)
        {
          v8 = v6 + 2;
          do
          {
            if (v7 == 17 || v7 == 7 || v7 == 23)
            {
              v25 = *(v8 - 1);
              std::vector<unsigned long long>::push_back[abi:nn200100](&__p, &v25);
            }

            v9 = *v8;
            v8 += 2;
            v7 = v9;
          }

          while (v9);
        }
      }

      v4 += 64;
    }

    while (v4 != v5);
    if (v30)
    {
      v10 = 0;
      v11 = v29;
      v12 = v29 + (v30 << 6);
      do
      {
        v13 = __p;
        if (__p != v27)
        {
          while (*v13 != *(v11 + 16))
          {
            if (++v13 == v27)
            {
              goto LABEL_33;
            }
          }
        }

        if (v13 != v27)
        {
          v14 = *(a2 + 16);
          if (v10 >= v14)
          {
            v15 = (v10 - *a2) >> 4;
            if ((v15 + 1) >> 60)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v16 = v14 - *a2;
            v17 = v16 >> 3;
            if (v16 >> 3 <= (v15 + 1))
            {
              v17 = v15 + 1;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF0)
            {
              v18 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::SectionRef>>(a2, v18);
            }

            v19 = (16 * v15);
            *v19 = v11;
            v19[1] = a1;
            v10 = (16 * v15 + 16);
            v20 = *(a2 + 8) - *a2;
            v21 = 16 * v15 - v20;
            memcpy(v19 - v20, *a2, v20);
            v22 = *a2;
            *a2 = v21;
            *(a2 + 8) = v10;
            *(a2 + 16) = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v10 = v11;
            v10[1] = a1;
            v10 += 2;
          }

          *(a2 + 8) = v10;
        }

LABEL_33:
        v11 += 64;
      }

      while (v11 != v12);
    }
  }

  if (v31)
  {
    v23 = v29;
    v29 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }
  }

  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::section_begin(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections((a1 + 56), &v3);
  result = v3;
  if (v4)
  {
    v3 = 0;
    if (result)
    {
      (*(*result + 8))(result);
      result = 0;
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::section_end(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections((a1 + 56), v3);
  result = v3[0];
  if (v4)
  {
    v3[0] = 0;
    if (result)
    {
      (*(*result + 8))(result);
      result = 0;
    }
  }

  else
  {
    result = v3[0] + (v3[1] << 6);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getFileFormatName(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(v1 + 4);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      llvm::report_fatal_error("Invalid ELFCLASS!", 1);
    }

    v3 = *(v1 + 18);
    if (v3 > 82)
    {
      if (v3 <= 223)
      {
        if (v3 > 104)
        {
          if (v3 == 105)
          {
            return "elf32-msp430";
          }

          if (v3 == 164)
          {
            return "elf32-hexagon";
          }
        }

        else
        {
          if (v3 == 83)
          {
            return "elf32-avr";
          }

          if (v3 == 94)
          {
            return "elf32-xtensa";
          }
        }
      }

      else if (v3 <= 243)
      {
        if (v3 == 224)
        {
          return "elf32-amdgpu";
        }

        if (v3 == 243)
        {
          return "elf32-littleriscv";
        }
      }

      else
      {
        switch(v3)
        {
          case 244:
            return "elf32-lanai";
          case 252:
            return "elf32-csky";
          case 258:
            return "elf32-loongarch";
        }
      }

      return "elf32-unknown";
    }

    if (v3 > 7)
    {
      if (v3 > 19)
      {
        switch(v3)
        {
          case 20:
            return "elf32-powerpcle";
          case 40:
            return "elf32-littlearm";
          case 62:
            return "elf32-x86-64";
        }

        return "elf32-unknown";
      }

      if (v3 == 8)
      {
        return "elf32-mips";
      }

      if (v3 != 18)
      {
        return "elf32-unknown";
      }

      return "elf32-sparc";
    }

    if (v3 > 3)
    {
      if (v3 == 4)
      {
        return "elf32-m68k";
      }

      if (v3 == 6)
      {
        return "elf32-iamcu";
      }
    }

    else
    {
      if (v3 == 2)
      {
        return "elf32-sparc";
      }

      if (v3 == 3)
      {
        return "elf32-i386";
      }
    }

    return "elf32-unknown";
  }

  v5 = *(v1 + 18);
  if (v5 > 182)
  {
    if (v5 > 246)
    {
      switch(v5)
      {
        case 247:
          return "elf64-bpf";
        case 251:
          return "elf64-ve";
        case 258:
          return "elf64-loongarch";
      }
    }

    else
    {
      switch(v5)
      {
        case 183:
          return "elf64-littleaarch64";
        case 224:
          return "elf64-amdgpu";
        case 243:
          return "elf64-littleriscv";
      }
    }
  }

  else if (v5 > 21)
  {
    switch(v5)
    {
      case 22:
        return "elf64-s390";
      case 43:
        return "elf64-sparc";
      case 62:
        return "elf64-x86-64";
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        return "elf64-i386";
      case 8:
        return "elf64-mips";
      case 21:
        return "elf64-powerpcle";
    }
  }

  return "elf64-unknown";
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getArch(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(v1 + 18);
  if (v2 > 0x52)
  {
    if (*(v1 + 18) > 0xF2u)
    {
      if (*(v1 + 18) > 0xFAu)
      {
        if (v2 == 251)
        {
          return 60;
        }

        if (v2 == 252)
        {
          return 10;
        }

        if (v2 != 258)
        {
          return 0;
        }

        v7 = *(v1 + 4);
        if (v7 != 1)
        {
          if (v7 == 2)
          {
            return 14;
          }

          goto LABEL_69;
        }

        return 13;
      }

      else
      {
        if (v2 != 243)
        {
          if (v2 == 244)
          {
            return 55;
          }

          if (v2 == 247)
          {
            return 8;
          }

          return 0;
        }

        v9 = *(v1 + 4);
        if (v9 != 1)
        {
          if (v9 == 2)
          {
            return 28;
          }

LABEL_69:
          llvm::report_fatal_error("Invalid ELFCLASS!", 1);
        }

        return 27;
      }
    }

    else
    {
      if (*(v1 + 18) <= 0xA3u)
      {
        switch(v2)
        {
          case 'S':
            return 7;
          case '^':
            return 40;
          case 'i':
            return 20;
        }

        return 0;
      }

      if (v2 == 164)
      {
        return 12;
      }

      if (v2 == 183)
      {
        return 3;
      }

      if (v2 != 224)
      {
        return 0;
      }

      v4 = *(v1 + 48);
      v5 = v4 - 1;
      if ((v4 - 32) >= 0x28)
      {
        v6 = 0;
      }

      else
      {
        v6 = 26;
      }

      if (v5 >= 0x10)
      {
        return v6;
      }

      else
      {
        return 25;
      }
    }
  }

  else
  {
    if (*(v1 + 18) > 0x13u)
    {
      if (*(v1 + 18) > 0x27u)
      {
        switch(v2)
        {
          case '(':
            return 1;
          case '+':
            return 30;
          case '>':
            return 38;
        }
      }

      else
      {
        switch(v2)
        {
          case 0x14u:
            return 22;
          case 0x15u:
            return 24;
          case 0x16u:
            return 32;
        }
      }

      return 0;
    }

    if (*(v1 + 18) <= 5u)
    {
      if (v2 != 2)
      {
        if (v2 != 3)
        {
          if (v2 == 4)
          {
            return 15;
          }

          return 0;
        }

        return 37;
      }

      return 31;
    }

    if (v2 == 6)
    {
      return 37;
    }

    if (v2 != 8)
    {
      if (v2 != 18)
      {
        return 0;
      }

      return 31;
    }

    v8 = *(v1 + 4);
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        return 19;
      }

      goto LABEL_69;
    }

    return 17;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getStartAddress@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *(a2 + 8) &= ~1u;
  *a2 = *(v2 + 24);
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolSize(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  result = v5[2];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolBinding(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return *(v5 + 4) >> 4;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolOther(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  result = *(v5 + 5);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolELFType(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return *(v5 + 4) & 0xF;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocationAddend@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelSection(a1, a2) + 1) != 4)
  {
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRela(a1, a2);
  v7 = result[2];
  *(a3 + 8) &= ~1u;
  *a3 = v7;
  return result;
}

_BYTE *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getBuildAttributes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections((a1 + 56), &v17);
  if (v19)
  {
    v7 = v17;
    v17 = 0;
    *a3 = v7;
    goto LABEL_16;
  }

  if (!v18)
  {
LABEL_7:
    *a3 = 0;
    goto LABEL_16;
  }

  v8 = (v17 + 4);
  v9 = v18 << 6;
  while (*v8 != 1879048195)
  {
    v8 += 16;
    v9 -= 64;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<char>((a1 + 56), (v8 - 1), &v14);
  v10 = v14;
  if (v16)
  {
LABEL_15:
    *a3 = v10;
    goto LABEL_16;
  }

  if (*v14 != 65 || v15 == 1)
  {
    v10 = 0;
    goto LABEL_15;
  }

  result = llvm::ELFAttributeParser::parse(a2, v14, v15, 1, a3);
  v13 = *a3;
  if (v16)
  {
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_16:
  if (v19)
  {
    result = v17;
    v17 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getDynamicSymbolIterators@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::dynamic_symbol_begin(a1);
  v6 = v5;
  result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::dynamic_symbol_end(a1);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = result;
  a2[3] = v8;
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>@<X0>(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(a1, a2, &v10);
  v8 = v10;
  if (v11)
  {
    *(a4 + 8) |= 1u;
    *a4 = v8;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>(a1, v10, a3, a4);
    if (v11)
    {
      result = v10;
      v10 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::toDRI(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections((a1 + 56), &v10);
    v5 = v10;
    if (v11)
    {
      v10 = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      v6 = 0;
      v7 = 0;
    }

    else
    {
      v7 = a3;
      v6 = ((a2 - v10) >> 6);
    }

    result = v6 | (v7 << 32);
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    goto LABEL_6;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,true>>(a1, a3, v14);
  if ((v15 & 1) == 0)
  {
    a3 = v14[0];
LABEL_6:
    v10 = a4[1];
    v13[0] = *a4;
    v13[1] = v10;
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(a1, a2, a3, v13, a5);
    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v9 = v14[0];
  v14[0] = 0;
  *(a5 + 8) |= 1u;
  *a5 = v9;
LABEL_7:
  result = v14[0];
  v14[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X4>, uint64_t a5@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4[1];
  v11[0] = *a4;
  v11[1] = v7;
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionIndex(a2, a3, v11, &v12);
  if (v13)
  {
    v9 = v12;
    *(a5 + 8) |= 1u;
    *a5 = v9;
  }

  else if (v12)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(a1, v12, a5);
    if (v13)
    {
      result = v12;
      v12 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  else
  {
    *(a5 + 8) &= ~1u;
    *a5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionIndex@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X4>, uint64_t a4@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 6);
  if (v5 == 0xFFFF)
  {
    v6 = a3[1];
    v10[0] = *a3;
    v10[1] = v6;
    result = llvm::object::getExtendedSymbolTableIndex<llvm::object::ELFType<(llvm::support::endianness)1,true>>(-1431655765 * ((a1 - a2) >> 3), v10, &v11);
    if (v12)
    {
      v8 = v11;
      *(a4 + 8) |= 1u;
      *a4 = v8;
      goto LABEL_8;
    }

    *(a4 + 8) &= ~1u;
    v5 = v11;
LABEL_7:
    *a4 = v5;
    goto LABEL_8;
  }

  *(a4 + 8) &= ~1u;
  if ((v5 + 256) > 0x100u)
  {
    goto LABEL_7;
  }

  *a4 = 0;
LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a1[17];
  if (v8)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSHNDXTable(a1 + 7, v8, &v15);
    if (v16)
    {
      v10 = v15;
LABEL_7:
      *(a4 + 16) |= 1u;
      *a4 = v10;
      goto LABEL_13;
    }

    v11 = *(&v15 + 1);
    v12 = v15;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  *&v15 = v12;
  *(&v15 + 1) = v11;
  v16 = 1;
  v17 = 0;
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(a1 + 7, a2, a3, &v15, &v18);
  v10 = v18;
  if (v19)
  {
    goto LABEL_7;
  }

  if (v18)
  {
    *(a4 + 16) &= ~1u;
    *a4 = v10;
    *(a4 + 8) = a1;
  }

  else
  {
    result = (*(*a1 + 360))(a1);
    *(a4 + 16) &= ~1u;
    *a4 = result;
    *(a4 + 8) = v13;
    if (v19)
    {
      result = v18;
      v18 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelSection(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection((a1 + 56), a2, &v11);
  if (v12)
  {
    v4 = v11;
    v11 = 0;
    v6 = v4;
    *&v7.__val_ = llvm::errorToErrorCode(&v6);
    v7.__cat_ = v5;
    std::error_code::message(&v8, &v7);
    v10 = 260;
    v9 = &v8;
    llvm::report_fatal_error(&v9, 1);
  }

  result = v11;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRel(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,false>>((a1 + 56), a2, HIDWORD(a2), &v11);
  if (v12)
  {
    v4 = v11;
    v11 = 0;
    v6 = v4;
    *&v7.__val_ = llvm::errorToErrorCode(&v6);
    v7.__cat_ = v5;
    std::error_code::message(&v8, &v7);
    v10 = 260;
    v9 = &v8;
    llvm::report_fatal_error(&v9, 1);
  }

  result = v11;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRela(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>>>((a1 + 56), a2, HIDWORD(a2), &v11);
  if (v12)
  {
    v4 = v11;
    v11 = 0;
    v6 = v4;
    *&v7.__val_ = llvm::errorToErrorCode(&v6);
    v7.__cat_ = v5;
    std::error_code::message(&v8, &v7);
    v10 = 260;
    v9 = &v8;
    llvm::report_fatal_error(&v9, 1);
  }

  result = v11;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,false>>@<X0>(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(a1, a2, &v10);
  v8 = v10;
  if (v11)
  {
    *(a4 + 8) |= 1u;
    *a4 = v8;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,false>>(a1, v10, a3, a4);
    if (v11)
    {
      result = v10;
      v10 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,false>>@<X0>(void *a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,false>>(a1, a2, v23);
  if (v24)
  {
    v8 = v23[0];
    v9 = *(a4 + 8) | 1;
  }

  else
  {
    if (v23[1] <= a3)
    {
      v12 = 16 * a3;
      v13[0] = "can't read an entry at 0x";
      v13[2] = &v12;
      v14 = 3587;
      v15[0] = v13;
      v15[2] = ": it goes past the end of the section (0x";
      v16 = 770;
      v11 = a2[4];
      v17[0] = v15;
      v17[2] = &v11;
      v18 = 3586;
      v19 = v17;
      v20 = ")";
      v21 = 770;
      v22 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v8 = v23[0] + 16 * a3;
    v9 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v9;
  *a4 = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,false>>@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[7] != 16)
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
    v32.__r_.__value_.__r.__words[0] = 16;
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
  if ((v7 & 0xF) != 0)
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
  *(a3 + 8) = v7 >> 4;
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::dynamic_symbol_begin(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1 && *(v1 + 32) > 0x17uLL;
  return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::toDRI(a1, v1, v2);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::dynamic_symbol_end(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::toDRI(a1, v1, *(v1 + 32) / 0x18uLL);
  }

  else
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::dynamic_symbol_begin(a1);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::ELFObjectFile(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v9[0] = *(a2 + 16);
  v9[1] = v4;
  v6 = *(a2 + 56);
  std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>::vector[abi:nn200100](__p, (a2 + 72));
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = v9;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<char>::operator=(v8, a2 + 96);
  }

  llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::ELFObjectFile(a1, v9, &v6, *(a2 + 120), *(a2 + 128), *(a2 + 136));
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
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
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
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

  llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = operator new(8 * v8, 4uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vdupq_n_s64(v11);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1210)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 4) = -1;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 2) = -1;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1830)))).i32[1])
      {
        *v16 = -1;
        v16[2] = -1;
      }

      v11 += 4;
      v16 += 8;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 3) + 4;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vdupq_n_s64(v7);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_2750C1210)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 4) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 2) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_2750C1830)))).i32[1])
      {
        *v12 = -1;
        v12[2] = -1;
      }

      v7 += 4;
      v12 += 8;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFD)
    {
      v16 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(v5, a2, &v16);
      v15 = v16;
      *v16 = *a2;
      v15[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t llvm::ConstantDataArray::get<unsigned char>(uint64_t a1, uint64_t *a2, llvm::Type *a3)
{
  llvm::ArrayType::get((*a1 + 1944), a3);

  return llvm::ConstantDataSequential::getImpl(a2, a3, v5);
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<llvm::BitCodeAbbrev> *,std::shared_ptr<llvm::BitCodeAbbrev> *,std::shared_ptr<llvm::BitCodeAbbrev> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::push_back[abi:nn200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<llvm::orc::DefinitionGenerator>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<llvm::orc::DefinitionGenerator>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__assign_with_size[abi:nn200100]<std::shared_ptr<llvm::BitCodeAbbrev>*,std::shared_ptr<llvm::BitCodeAbbrev>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__vallocate[abi:nn200100](a1, v10);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 4)
  {
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<llvm::BitCodeAbbrev> *,std::shared_ptr<llvm::BitCodeAbbrev> *,std::shared_ptr<llvm::BitCodeAbbrev> *>(&v21, a2, a3, v7);
    v17 = v16;
    v18 = a1[1];
    if (v18 != v16)
    {
      do
      {
        v19 = *(v18 - 8);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        v18 -= 16;
      }

      while (v18 != v17);
    }

    a1[1] = v17;
  }

  else
  {
    v12 = (a2 + v11);
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<llvm::BitCodeAbbrev> *,std::shared_ptr<llvm::BitCodeAbbrev> *,std::shared_ptr<llvm::BitCodeAbbrev> *>(&v20, a2, (a2 + v11), v7);
    v13 = a1[1];
    if (v12 != a3)
    {
      v14 = a1[1];
      do
      {
        v15 = v12[1];
        *v14 = *v12;
        v14[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v12 += 2;
        v14 += 2;
        v13 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v13;
  }
}

void std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<llvm::orc::DefinitionGenerator>>>(a1, a2);
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void llvm::AppleInternalGetFullBitcodeVersionString(uint64_t a1@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(v12, "");
  if (v13 < 0)
  {
    v11 = v12[1];
    operator delete(v12[0]);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_18:
    std::string::basic_string[abi:nn200100]<0>(a1, "");
    return;
  }

  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_3:
  std::string::basic_string[abi:nn200100]<0>(&v17, "");
  v3 = std::string::insert(&v17, 0, "APPLE_1_");
  v4 = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v18, "_");
  v6 = v5->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = *&v5->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v14 = 265;
  LODWORD(v12[0]) = 0;
  llvm::Twine::str(v12, __p);
  if ((v16 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v8 = v16;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = std::string::append(&v19, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *a1 = *&v9->__r_.__value_.__l.__data_;
  *(a1 + 16) = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void *llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(void *result, char *a2, char *a3)
{
  v4 = a2;
  v5 = result;
  v6 = a3 - a2;
  v7 = result[1];
  v8 = v7 + ((a3 - a2) >> 3);
  if (result[2] < v8)
  {
    result = llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v8, 1);
    v7 = v5[1];
  }

  if (v4 != a3)
  {
    v9 = (*v5 + v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
    v7 = v5[1];
  }

  v5[1] = v7 + (v6 >> 3);
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

unsigned int *llvm::SmallVectorImpl<unsigned long long>::append<unsigned char const*,void>(unsigned int *result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = a2;
  v5 = result;
  v6 = a3 - a2;
  v7 = result[2];
  v8 = a3 - a2 + v7;
  if (v8 > result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8, 8);
    v7 = v5[2];
  }

  if (v4 != a3)
  {
    v9 = (*v5 + 8 * v7);
    do
    {
      v10 = *v4++;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  v5[2] = v7 + v6;
  return result;
}

const void **llvm::SmallPtrSetImpl<llvm::Value *>::insert@<X0>(llvm::SmallPtrSetImplBase *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(a1, a2);
  v7 = *(a1 + 1);
  v8 = 16;
  if (v7 == *a1)
  {
    v8 = 20;
  }

  v9 = (v7 + 8 * *(a1 + v8));
  if (v9 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v9)
      {
        result = v9;
        break;
      }
    }
  }

  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v6;
  return result;
}

uint64_t llvm::CallBase::arg_end(llvm::CallBase *this)
{
  v1 = *(this + 16);
  if (v1 == 84)
  {
    v2 = 0;
  }

  else if (v1 == 39)
  {
    v2 = (*(this + 20) + 1);
  }

  else
  {
    v2 = 2;
  }

  v3 = *(this + 5);
  if (v3 < 0 && (v5 = this - 32 * (v3 & 0x7FFFFFF), v6 = *(v5 - 1), (v6 & 0xFFFFFFFF0) != 0))
  {
    v4 = (*(v5 - 3) - *&v5[-v6]);
  }

  else
  {
    v4 = 0;
  }

  return this + -32 * v4 + -32 * v2 - 32;
}

llvm::cl::Option *llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [26],llvm::cl::OptionHidden,llvm::cl::initializer<int>,llvm::cl::desc>(llvm::cl::Option *a1, char *a2, _WORD *a3, int **a4, __n128 *a5)
{
  v10 = llvm::cl::Option::Option(a1, 0, 0);
  *(v10 + 128) = 0;
  *(v10 + 136) = &unk_2883EABF0;
  *(v10 + 144) = 0;
  *v10 = &unk_2883EA9C8;
  *(v10 + 152) = &unk_2883EA8D8;
  *(v10 + 160) = &unk_2883EE1B8;
  *(v10 + 184) = v10 + 160;
  llvm::cl::apply<llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>,char [26],llvm::cl::OptionHidden,llvm::cl::initializer<int>,llvm::cl::desc>(v10, a2, a3, a4, a5);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

__n128 llvm::cl::apply<llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>,char [26],llvm::cl::OptionHidden,llvm::cl::initializer<int>,llvm::cl::desc>(uint64_t a1, char *__s, _WORD *a3, int **a4, __n128 *a5)
{
  v10 = strlen(__s);
  llvm::cl::Option::setArgStr(a1, __s, v10);
  *(a1 + 10) = (32 * (*a3 & 3)) | *(a1 + 10) & 0xFF9F;
  v11 = **a4;
  *(a1 + 128) = v11;
  *(a1 + 148) = 1;
  *(a1 + 144) = v11;
  result = *a5;
  *(a1 + 32) = *a5;
  return result;
}

void std::__shared_ptr_emplace<llvm::BitCodeAbbrev>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EE180;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

void std::__shared_ptr_emplace<llvm::BitCodeAbbrev>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {
    free(v2);
  }
}

uint64_t _GLOBAL__sub_I_BitcodeWriter_cpp()
{
  v5 = 1;
  v3 = 25;
  v4 = &v3;
  v2.n128_u64[0] = "Number of metadatas above which we emit an index to enable lazy-loading";
  v2.n128_u64[1] = 71;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [26],llvm::cl::OptionHidden,llvm::cl::initializer<int>,llvm::cl::desc>(&_MergedGlobals_16, "bitcode-mdindex-threshold", &v5, &v4, &v2);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &_MergedGlobals_16, &dword_274E5C000);
  v5 = 1;
  v3 = 512;
  v4 = &v3;
  v2.n128_u64[0] = "The threshold (unit M) for flushing LLVM bitcode.";
  v2.n128_u64[1] = 49;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [26],llvm::cl::OptionHidden,llvm::cl::initializer<int>,llvm::cl::desc>(&FlushThreshold, "bitcode-flush-threshold", &v5, &v4, &v2);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &FlushThreshold, &dword_274E5C000);
  v0 = llvm::cl::Option::Option(&qword_2815A5B18, 0, 0);
  byte_2815A5B98 = 0;
  qword_2815A5BA0 = &unk_2883EAB68;
  *&word_2815A5BA8 = 0;
  qword_2815A5B18 = &unk_2883EAB00;
  qword_2815A5BB0 = &unk_2883EA848;
  qword_2815A5BB8 = &unk_2883EAB88;
  qword_2815A5BD0 = &qword_2815A5BB8;
  llvm::cl::Option::setArgStr(v0, "write-relbf-to-summary", 0x16uLL);
  word_2815A5B22 = word_2815A5B22 & 0xFF9F | 0x20;
  byte_2815A5B98 = 0;
  word_2815A5BA8 = 256;
  qword_2815A5B38 = "Write relative block frequency to function summary ";
  unk_2815A5B40 = 51;
  llvm::cl::Option::addArgument(&qword_2815A5B18);
  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A5B18, &dword_274E5C000);
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::InsertIntoBucketImpl<llvm::Value const*>(a1, a2, a2, v7);
    *v5 = *a2;
    *(v5 + 2) = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::InsertIntoBucketImpl<llvm::Value const*>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

    JUMPOUT(0x277C69E30);
  }

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

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v5, a2, &v15);
      v14 = v15;
      *v15 = *a2;
      *(v14 + 2) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::Comdat const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t llvm::GlobalValue::isStrongDefinitionForLinker(llvm::GlobalValue *this)
{
  v1 = *(this + 8);
  if ((v1 & 0xF) == 1)
  {
    goto LABEL_2;
  }

  if (!*(this + 16))
  {
    if ((v1 & 0x1000000) == 0 && *(this + 9) == (this + 72))
    {
      goto LABEL_2;
    }

LABEL_9:
    v2 = 0xF9C3u >> (v1 & 0xF);
    return v2 & 1;
  }

  if (*(this + 16) != 3 || (*(this + 5) & 0x7FFFFFF) != 0)
  {
    goto LABEL_9;
  }

LABEL_2:
  LOBYTE(v2) = 0;
  return v2 & 1;
}

uint64_t llvm::InvokeInst::setUnwindDest(uint64_t result, uint64_t a2)
{
  v2 = (result - 64);
  if (*(result - 64))
  {
    v3 = *(result - 56);
    **(result - 48) = v3;
    if (v3)
    {
      *(v3 + 16) = *(result - 48);
    }
  }

  *v2 = a2;
  if (a2)
  {
    v6 = *(a2 + 8);
    v4 = (a2 + 8);
    v5 = v6;
    *(result - 56) = v6;
    if (v6)
    {
      *(v5 + 16) = result - 56;
    }

    *(result - 48) = v4;
    *v4 = v2;
  }

  return result;
}

uint64_t llvm::CleanupReturnInst::setUnwindDest(uint64_t result, uint64_t a2)
{
  v2 = result - 32 * (*(result + 20) & 0x7FFFFFF);
  v3 = (v2 + 32);
  if (*(v2 + 32))
  {
    v4 = *(v2 + 40);
    **(v2 + 48) = v4;
    if (v4)
    {
      *(v4 + 16) = *(v2 + 48);
    }
  }

  *v3 = a2;
  if (a2)
  {
    v7 = *(a2 + 8);
    v5 = (a2 + 8);
    v6 = v7;
    *(v2 + 40) = v7;
    if (v7)
    {
      *(v6 + 16) = v2 + 40;
    }

    *(v2 + 48) = v5;
    *v5 = v3;
  }

  return result;
}

uint64_t llvm::PHINode::addIncoming(llvm::PHINode *this, llvm::Value *a2, llvm::BasicBlock *a3)
{
  v6 = *(this + 5);
  if ((v6 & 0x7FFFFFF) == *(this + 15))
  {
    v7 = v6 & 0x7FFFFFF;
    if (v7 + (v7 >> 1) <= 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    *(this + 15) = v8;
    llvm::User::growHungoffUses(this, v8, 1);
    v6 = *(this + 5);
  }

  v9 = (v6 + 1) & 0x7FFFFFF;
  *(this + 5) = v6 & 0xF8000000 | v9;
  result = llvm::PHINode::setIncomingValue(this, v9 - 1, a2);
  v11 = *(this + 5);
  v12 = v11 & 0x7FFFFFF;
  if ((v11 & 0x40000000) != 0)
  {
    v13 = *(this - 1);
  }

  else
  {
    v13 = this - 32 * v12;
  }

  *&v13[32 * *(this + 15) + 8 * (v12 - 1)] = a3;
  return result;
}

uint64_t llvm::PHINode::setIncomingValue(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 20);
  if ((v3 & 0x40000000) != 0)
  {
    v4 = *(result - 8);
  }

  else
  {
    v4 = result - 32 * (v3 & 0x7FFFFFF);
  }

  v5 = v4 + 32 * a2;
  if (*v5)
  {
    v6 = *(v5 + 8);
    **(v5 + 16) = v6;
    if (v6)
    {
      *(v6 + 16) = *(v5 + 16);
    }
  }

  *v5 = a3;
  if (a3)
  {
    v9 = *(a3 + 8);
    v7 = (a3 + 8);
    v8 = v9;
    *(v5 + 8) = v9;
    if (v9)
    {
      *(v8 + 16) = v5 + 8;
    }

    *(v5 + 16) = v7;
    *v7 = v5;
  }

  return result;
}

unint64_t llvm::DataLayout::getTypeSizeInBits(llvm::DataLayout *this, llvm::Type *a2)
{
  v3 = *(a2 + 2);
  result = 16;
  switch(*(a2 + 2))
  {
    case 2u:
      result = 32;
      break;
    case 3u:
    case 0xAu:
      result = 64;
      break;
    case 4u:
      result = 80;
      break;
    case 5u:
    case 6u:
      result = 128;
      break;
    case 7u:
    case 9u:
    case 0xCu:
    case 0xEu:
    case 0x14u:
      __break(1u);
      break;
    case 8u:
      result = *(*(this + 30) + 4);
      break;
    case 0xBu:
      result = 0x2000;
      break;
    case 0xDu:
      result = v3 >> 8;
      break;
    case 0xFu:
      if ((*(a2 + 2) & 0xFE) == 0x12)
      {
        LODWORD(v3) = *(**(a2 + 2) + 8);
      }

      result = *(llvm::DataLayout::getPointerAlignElem(this, v3 >> 8) + 4);
      break;
    case 0x10u:
      v7 = *llvm::DataLayout::getStructLayout(this, a2);
      goto LABEL_15;
    case 0x11u:
      v8 = *(a2 + 4);
      v7 = v8 * llvm::DataLayout::getTypeAllocSize(this, *(a2 + 3));
LABEL_15:
      result = 8 * v7;
      break;
    case 0x12u:
    case 0x13u:
      v5 = *(a2 + 8);
      result = llvm::DataLayout::getTypeSizeInBits(this, *(a2 + 3)) * v5;
      break;
    case 0x15u:
      getTargetTypeInfo(a2);
      result = llvm::DataLayout::getTypeSizeInBits(this, v6);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t *llvm::IRBuilderBase::CreateAdd(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, int a5, int a6)
{
  result = (*(**(this + 9) + 32))(*(this + 9), 13, a2, a3);
  if (!result)
  {

    return llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(this, 13, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t *llvm::TrackingMDRef::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    if (*a1)
    {
      llvm::MetadataTracking::untrack(a1, *a1);
    }

    v4 = *a2;
    *a1 = *a2;
    if (v4)
    {
      llvm::MetadataTracking::retrack(a2, v4, a1);
      *a2 = 0;
    }
  }

  return a1;
}

llvm::PHINode *llvm::PHINode::PHINode(llvm::PHINode *this, llvm::Type *a2, int a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v8 = llvm::Instruction::Instruction(this, a2, 55, 0, 0, a5);
  *(v8 + 15) = a3;
  llvm::Value::setName(v8, a4);
  v9 = *(this + 15);
  v10 = operator new(40 * v9);
  *(this - 1) = v10;
  if (v9)
  {
    v11 = &v10[4 * v9];
    do
    {
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10[3] = this;
      v10 += 4;
    }

    while (v10 != v11);
  }

  return this;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::InsertIntoBucketImpl<llvm::BasicBlock *>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::InsertIntoBucketImpl<llvm::BasicBlock *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x277C69E30);
  }

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

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::moveFromOldBuckets(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 8) = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v5 + 0xFFFFFFFFFFFFFFFLL;
    v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
    v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
    v10 = vdupq_n_s64(v8);
    v11 = (*a1 + 16);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_2750C1210)));
      if (v12.i8[0])
      {
        *(v11 - 2) = -4096;
      }

      if (v12.i8[4])
      {
        *v11 = -4096;
      }

      v6 += 2;
      v11 += 4;
    }

    while (v9 != v6);
  }

  if (a2 != a3)
  {
    v13 = a2 + 1;
    do
    {
      if ((*(v13 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v18 = 0;
        llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, v13 - 1, &v18);
        v14 = v18;
        *v18 = *(v13 - 1);
        v15 = *v13;
        *v13 = 0;
        v14[1] = v15;
        ++*(a1 + 8);
        v16 = *v13;
        *v13 = 0;
        if (v16)
        {
          std::default_delete<llvm::DomTreeNodeBase<llvm::BasicBlock>>::operator()[abi:nn200100](v13, v16);
        }
      }

      v17 = v13 + 1;
      v13 += 2;
    }

    while (v17 != a3);
  }
}

void std::default_delete<llvm::DomTreeNodeBase<llvm::BasicBlock>>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
    if (v2 != (a2 + 40))
    {
      free(v2);
    }

    JUMPOUT(0x277C69E40);
  }
}

void *llvm::SmallVectorImpl<llvm::BasicBlock *>::append<llvm::PredIterator<llvm::BasicBlock,llvm::Value::user_iterator_impl<llvm::User>>,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a2;
    do
    {
      do
      {
        v7 = *(v7 + 8);
        if (!v7)
        {
          break;
        }

        v8 = *(v7 + 24);
        v9 = *(v8 + 16);
        v10 = v8 && v9 >= 0x1C;
      }

      while (!v10 || v9 - 29 >= 0xB);
      ++v6;
    }

    while (v7 != a3);
  }

  v12 = *(a1 + 8);
  if (v6 + v12 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + v12, 8);
    v12 = *(a1 + 8);
  }

  result = std::uninitialized_copy[abi:nn200100]<llvm::PredIterator<llvm::BasicBlock,llvm::Value::user_iterator_impl<llvm::User>>,llvm::BasicBlock**>(a2, a3, (*a1 + 8 * v12));
  *(a1 + 8) += v6;
  return result;
}

void *std::uninitialized_copy[abi:nn200100]<llvm::PredIterator<llvm::BasicBlock,llvm::Value::user_iterator_impl<llvm::User>>,llvm::BasicBlock**>(uint64_t a1, uint64_t a2, void *a3)
{
  while (a1 != a2)
  {
    *a3 = *(*(a1 + 24) + 40);
    do
    {
      a1 = *(a1 + 8);
      if (!a1)
      {
        break;
      }

      v3 = *(a1 + 24);
      v4 = *(v3 + 16);
      v5 = v3 && v4 >= 0x1C;
    }

    while (!v5 || v4 - 29 >= 0xB);
    ++a3;
  }

  return a3;
}

unint64_t llvm::DataLayout::getTypeAllocSize(llvm::DataLayout *this, llvm::Type *a2)
{
  v4 = llvm::DataLayout::getTypeSizeInBits(this, a2) + 7;
  Alignment = llvm::DataLayout::getAlignment(this, a2, 1);
  return ((1 << Alignment) + (v4 >> 3) - 1) & -(1 << Alignment);
}

uint64_t *llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(uint64_t *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v14 = 257;
  v11 = llvm::BinaryOperator::Create(a2, a3, a4, v13, 0);
  result = llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, v11, a5);
  if (a6)
  {
    *(result + 17) |= 2u;
  }

  if (a7)
  {
    *(result + 17) |= 4u;
  }

  return result;
}

unsigned int *llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(unsigned int *this, int a2, llvm::MDNode *a3)
{
  v3 = this;
  v8 = a2;
  v7 = a3;
  if (a3)
  {
    v4 = this[2];
    if (v4)
    {
      v5 = (*this + 8);
      v6 = 16 * v4;
      while (*(v5 - 2) != a2)
      {
        v5 += 2;
        v6 -= 16;
        if (!v6)
        {
          return llvm::SmallVectorImpl<std::pair<unsigned int,llvm::MDNode *>>::emplace_back<unsigned int &,llvm::MDNode *&>(this, &v8, &v7);
        }
      }

      *v5 = a3;
    }

    else
    {
      return llvm::SmallVectorImpl<std::pair<unsigned int,llvm::MDNode *>>::emplace_back<unsigned int &,llvm::MDNode *&>(this, &v8, &v7);
    }
  }

  else
  {
    this = std::remove_if[abi:nn200100]<std::pair<unsigned int,llvm::MDNode *> *,llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(unsigned int,llvm::MDNode *)::{lambda(std::pair<unsigned int,llvm::MDNode *> const&)#1}>(*this, *this + 16 * this[2], a2);
    v3[2] = (this - *v3) >> 4;
  }

  return this;
}

uint64_t llvm::SmallVectorImpl<std::pair<unsigned int,llvm::MDNode *>>::emplace_back<unsigned int &,llvm::MDNode *&>(unsigned int *a1, _DWORD *a2, uint64_t *a3)
{
  v4 = a1[2];
  if (v4 >= a1[3])
  {
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(a1, *a2, *a3);
    v5 = *a1;
    v7 = a1[2];
  }

  else
  {
    v5 = *a1;
    v6 = *a1 + 16 * v4;
    *v6 = *a2;
    *(v6 + 8) = *a3;
    v7 = v4 + 1;
    a1[2] = v7;
  }

  return v5 + 16 * v7 - 16;
}

uint64_t std::remove_if[abi:nn200100]<std::pair<unsigned int,llvm::MDNode *> *,llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(unsigned int,llvm::MDNode *)::{lambda(std::pair<unsigned int,llvm::MDNode *> const&)#1}>(uint64_t result, uint64_t a2, int a3)
{
  while (result != a2 && *result != a3)
  {
    result += 16;
  }

  if (result != a2)
  {
    for (i = result + 16; i != a2; i += 16)
    {
      if (*i != a3)
      {
        *result = *i;
        *(result + 8) = *(i + 8);
        result += 16;
      }
    }
  }

  return result;
}

llvm::SelectInst *llvm::SelectInst::SelectInst(llvm::SelectInst *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  v11 = llvm::Instruction::Instruction(this, *a3, 57, this - 96, 3, a6);
  llvm::SelectInst::init(v11, a2, a3, a4);
  llvm::Value::setName(this, a5);
  return this;
}

uint64_t llvm::SelectInst::init(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (result - 96);
  if (*(result - 96))
  {
    v5 = *(result - 88);
    **(result - 80) = v5;
    if (v5)
    {
      *(v5 + 16) = *(result - 80);
    }
  }

  *v4 = a2;
  if (a2)
  {
    v8 = *(a2 + 8);
    v6 = (a2 + 8);
    v7 = v8;
    *(result - 88) = v8;
    if (v8)
    {
      *(v7 + 16) = result - 88;
    }

    *(result - 80) = v6;
    *v6 = v4;
  }

  v9 = (result - 64);
  if (*(result - 64))
  {
    v10 = *(result - 56);
    **(result - 48) = v10;
    if (v10)
    {
      *(v10 + 16) = *(result - 48);
    }
  }

  *v9 = a3;
  if (a3)
  {
    v13 = *(a3 + 8);
    v11 = (a3 + 8);
    v12 = v13;
    *(result - 56) = v13;
    if (v13)
    {
      *(v12 + 16) = result - 56;
    }

    *(result - 48) = v11;
    *v11 = v9;
  }

  v14 = (result - 32);
  if (*(result - 32))
  {
    v15 = *(result - 24);
    **(result - 16) = v15;
    if (v15)
    {
      *(v15 + 16) = *(result - 16);
    }
  }

  *v14 = a4;
  if (a4)
  {
    v18 = *(a4 + 8);
    v16 = (a4 + 8);
    v17 = v18;
    *(result - 24) = v18;
    if (v18)
    {
      *(v17 + 16) = result - 24;
    }

    *(result - 16) = v16;
    *v16 = v14;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::find(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = a2;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, &v8, &v7))
  {
    result = v7;
    v4 = *a1;
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a1 + 16);
    result = *a1 + 16 * v5;
  }

  v6 = *a1 + 16 * v5;
  return result;
}

llvm::Instruction *llvm::GraphTraits<llvm::BasicBlock *>::child_end(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == a1 + 40)
  {
    return 0;
  }

  v2 = (v1 - 24);
  v3 = v1 ? v1 - 24 : 0;
  if (*(v3 + 16) - 29 > 0xA)
  {
    return 0;
  }

  llvm::Instruction::getNumSuccessors(v2);
  return v2;
}

uint64_t _GLOBAL__sub_I_BasicBlockUtils_cpp()
{
  v0 = llvm::cl::Option::Option(&MaxDeoptOrUnreachableSuccessorCheckDepth, 0, 0);
  dword_2815A46F8 = 0;
  qword_2815A4700 = &unk_2883EABF0;
  *&dword_2815A4708 = 0;
  MaxDeoptOrUnreachableSuccessorCheckDepth = &unk_2883EA9C8;
  qword_2815A4710 = &unk_2883EA8D8;
  qword_2815A4718 = &unk_2883EE1B8;
  qword_2815A4730 = &qword_2815A4718;
  llvm::cl::Option::setArgStr(v0, "max-deopt-or-unreachable-succ-check-depth", 0x29uLL);
  dword_2815A46F8 = 8;
  byte_2815A470C = 1;
  dword_2815A4708 = 8;
  word_2815A4682 = word_2815A4682 & 0xFF9F | 0x20;
  qword_2815A4698 = "Set the maximum path length when checking whether a basic block is followed by a block that either has a terminating deoptimizing call or is terminated with an unreachable";
  unk_2815A46A0 = 171;
  llvm::cl::Option::addArgument(&MaxDeoptOrUnreachableSuccessorCheckDepth);

  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &MaxDeoptOrUnreachableSuccessorCheckDepth, &dword_274E5C000);
}

uint64_t llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>::getHashValue(_DWORD *a1)
{
  v1 = (a1[2] >> 4) ^ (a1[2] >> 9);
  v2 = (v1 | (((*a1 >> 4) ^ (*a1 >> 9)) << 32)) + ~(v1 << 32);
  v3 = (v2 ^ (v2 >> 22)) + ~((v2 ^ (v2 >> 22)) << 13);
  v4 = (9 * (v3 ^ (v3 >> 8))) ^ ((9 * (v3 ^ (v3 >> 8))) >> 15);
  return ((v4 + ~(v4 << 27)) >> 31) ^ (v4 + ~(v4 << 27));
}

void llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts>>,llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts>>::destroyAll(uint64_t a1)
{
  if (*a1)
  {
    v2 = (a1 + 8);
    v1 = 4;
  }

  else
  {
    v1 = *(a1 + 16);
    if (!v1)
    {
      return;
    }

    v2 = *(a1 + 8);
  }

  v3 = &v2[9 * v1];
  do
  {
    if ((*v2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      for (i = 0; i != -8; i -= 4)
      {
        v5 = v2[i + 5];
        if (&v2[i + 7] != v5)
        {
          free(v5);
        }
      }
    }

    v2 += 9;
  }

  while (v2 != v3);
}

unint64_t llvm::DbgVariableIntrinsic::classof(uint64_t a1)
{
  if (*(a1 + 16) != 84)
  {
    goto LABEL_8;
  }

  v1 = *(a1 - 32);
  if (v1)
  {
    if (!*(v1 + 16) && *(v1 + 24) == *(a1 + 72) && (*(v1 + 33) & 0x20) != 0)
    {
      v2 = *(v1 + 36);
      if (v2 <= 0x3B)
      {
        v1 = 0xB00000000000000uLL >> v2;
        return v1 & 1;
      }
    }

LABEL_8:
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

void llvm::SmallVectorImpl<llvm::AttributeSet>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }
    }

    *(a1 + 8) = a2;
  }
}

unsigned int *llvm::SmallVectorImpl<llvm::BasicBlock *>::append<std::move_iterator<llvm::BasicBlock **>,void>(unsigned int *result, char *a2, char *a3)
{
  v4 = a2;
  v5 = result;
  v6 = a3 - a2;
  v7 = result[2];
  v8 = v7 + ((a3 - a2) >> 3);
  if (v8 > result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8, 8);
    LODWORD(v7) = v5[2];
  }

  if (a3 != v4)
  {
    v9 = (*v5 + 8 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  v5[2] = v7 + (v6 >> 3);
  return result;
}

double llvm::Module::setSourceFileName(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v7) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + a3) = 0;
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  result = *&__dst;
  *(a1 + 184) = __dst;
  *(a1 + 200) = v7;
  return result;
}

double llvm::Module::setTargetTriple(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v7) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + a3) = 0;
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  result = *&__dst;
  *(a1 + 208) = __dst;
  *(a1 + 224) = v7;
  return result;
}

void llvm::Module::setModuleInlineAsm(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v9) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + a3) = 0;
  v5 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    operator delete(*v5);
  }

  *v5 = __dst;
  *(a1 + 104) = v9;
  v6 = *(a1 + 111);
  if (v6 < 0)
  {
    v6 = *(a1 + 96);
    if (!v6)
    {
      return;
    }

    v7 = *v5;
  }

  else
  {
    if (!*(a1 + 111))
    {
      return;
    }

    v7 = (a1 + 88);
  }

  if (v7[v6 - 1] != 10)
  {

    std::string::push_back((a1 + 88), 10);
  }
}

uint64_t llvm::GlobalIFunc::setResolver(uint64_t result, uint64_t a2)
{
  v2 = (result - 32);
  if (*(result - 32))
  {
    v3 = *(result - 24);
    **(result - 16) = v3;
    if (v3)
    {
      *(v3 + 16) = *(result - 16);
    }
  }

  *v2 = a2;
  if (a2)
  {
    v6 = *(a2 + 8);
    v4 = (a2 + 8);
    v5 = v6;
    *(result - 24) = v6;
    if (v6)
    {
      *(v5 + 16) = result - 24;
    }

    *(result - 16) = v4;
    *v4 = v2;
  }

  return result;
}

unsigned int *llvm::IRBuilderBase::SetInsertPoint(unsigned int *result, uint64_t a2, uint64_t a3)
{
  *(result + 6) = a2;
  *(result + 7) = a3;
  if (a2 + 40 != a3)
  {
    v9[3] = v3;
    v9[4] = v4;
    v5 = result;
    v6 = a3 - 24;
    if (!a3)
    {
      v6 = 0;
    }

    v7 = *(v6 + 48);
    v9[0] = v7;
    if (v7)
    {
      llvm::MetadataTracking::track(v9, v7, 2);
      v8 = v9[0];
    }

    else
    {
      v8 = 0;
    }

    result = llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(v5, 0, v8);
    if (v9[0])
    {
      return llvm::MetadataTracking::untrack(v9, v9[0]);
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::BasicBlock *>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
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

uint64_t _GLOBAL__sub_I_LCSSA_cpp()
{
  v0 = llvm::cl::Option::Option(&qword_2815A5BE0, 0, 0);
  qword_2815A5C60 = 0;
  byte_2815A5C71 = 0;
  qword_2815A5C68 = &unk_2883EAB68;
  qword_2815A5BE0 = &unk_2883EB2E8;
  qword_2815A5C78 = &unk_2883EA848;
  qword_2815A5C80 = &unk_2883EB350;
  qword_2815A5C98 = &qword_2815A5C80;
  llvm::cl::Option::setArgStr(v0, "verify-loop-lcssa", 0x11uLL);
  llvm::cl::opt_storage<BOOL,true,false>::setLocation(&qword_2815A5C60, &qword_2815A5BE0, _MergedGlobals_17);
  word_2815A5BEA = word_2815A5BEA & 0xFF9F | 0x20;
  qword_2815A5C00 = "Verify loop lcssa form (time consuming)";
  unk_2815A5C08 = 39;
  llvm::cl::Option::addArgument(&qword_2815A5BE0);

  return __cxa_atexit(llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::~opt, &qword_2815A5BE0, &dword_274E5C000);
}

uint64_t llvm::DbgVariableIntrinsic::setExpression(llvm::DbgVariableIntrinsic *this, llvm::DIExpression *a2)
{
  v3 = *(a2 + 1);
  v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
  if ((v3 & 4) != 0)
  {
    v4 = *v4;
  }

  v5 = llvm::MetadataAsValue::get(v4, a2);

  return llvm::CallBase::setArgOperand(this, 2u, v5);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> std::next[abi:nn200100]<llvm::generic_gep_type_iterator<llvm::Use const*>,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[1] = a2;
  if (a3 >= 1)
  {
    v3 = a3 + 1;
    do
    {
      llvm::generic_gep_type_iterator<llvm::Use const*>::operator++(v5);
      --v3;
    }

    while (v3 > 1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void *llvm::generic_gep_type_iterator<llvm::Use const*>::operator++(void *a1)
{
  IndexedType = llvm::generic_gep_type_iterator<llvm::Use const*>::getIndexedType(a1);
  v3 = *(IndexedType + 8);
  if (IndexedType && v3 == 17 || IndexedType && (v3 & 0xFE) == 0x12)
  {
    v4 = *(IndexedType + 24) | 4;
  }

  else if (v3 == 16)
  {
    v4 = IndexedType & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v4 = 0;
  }

  a1[1] = v4;
  *a1 += 32;
  return a1;
}

uint64_t llvm::CallBase::setArgOperand(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = result - 32 * (*(result + 20) & 0x7FFFFFF) + 32 * a2;
  if (*v3)
  {
    v4 = *(v3 + 8);
    **(v3 + 16) = v4;
    if (v4)
    {
      *(v4 + 16) = *(v3 + 16);
    }
  }

  *v3 = a3;
  if (a3)
  {
    v7 = *(a3 + 8);
    v5 = (a3 + 8);
    v6 = v7;
    *(v3 + 8) = v7;
    if (v7)
    {
      *(v6 + 16) = v3 + 8;
    }

    *(v3 + 16) = v5;
    *v5 = v3;
  }

  return result;
}

uint64_t llvm::InvokeInst::setNormalDest(uint64_t result, uint64_t a2)
{
  v2 = (result - 96);
  if (*(result - 96))
  {
    v3 = *(result - 88);
    **(result - 80) = v3;
    if (v3)
    {
      *(v3 + 16) = *(result - 80);
    }
  }

  *v2 = a2;
  if (a2)
  {
    v6 = *(a2 + 8);
    v4 = (a2 + 8);
    v5 = v6;
    *(result - 88) = v6;
    if (v6)
    {
      *(v5 + 16) = result - 88;
    }

    *(result - 80) = v4;
    *v4 = v2;
  }

  return result;
}

uint64_t llvm::PatternMatch::cstval_pred_ty<llvm::PatternMatch::is_zero_int,llvm::ConstantInt>::match<llvm::Constant>(uint64_t a1, llvm::Constant *a2)
{
  if (a2 && *(a2 + 16) == 16)
  {
    v3 = *(a2 + 8);
    if (v3 <= 0x40)
    {
      v4 = *(a2 + 3);
LABEL_5:
      v5 = v4 == 0;
      goto LABEL_16;
    }

    v5 = llvm::APInt::countLeadingZerosSlowCase((a2 + 24)) == v3;
    goto LABEL_16;
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = (*(*a2 + 8) & 0xFE) == 18;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
LABEL_32:
    v10 = 0;
    return v10 & 1;
  }

  SplatValue = llvm::Constant::getSplatValue(a2, 0);
  if (!SplatValue || *(SplatValue + 16) != 16)
  {
    if (*(v6 + 8) == 18)
    {
      v11 = *(v6 + 32);
      if (v11)
      {
        v12 = 0;
        v10 = 0;
        while (1)
        {
          AggregateElement = llvm::Constant::getAggregateElement(a2, v12);
          if (!AggregateElement)
          {
            break;
          }

          v14 = *(AggregateElement + 16);
          if ((v14 - 11) >= 2)
          {
            if (v14 != 16)
            {
              goto LABEL_32;
            }

            v15 = *(AggregateElement + 32);
            if (v15 > 0x40)
            {
              if (llvm::APInt::countLeadingZerosSlowCase((AggregateElement + 24)) != v15)
              {
                goto LABEL_32;
              }
            }

            else if (*(AggregateElement + 24))
            {
              goto LABEL_32;
            }

            v10 = 1;
          }

          v12 = (v12 + 1);
          if (v11 == v12)
          {
            return v10 & 1;
          }
        }
      }
    }

    goto LABEL_32;
  }

  v9 = *(SplatValue + 32);
  if (v9 <= 0x40)
  {
    v4 = *(SplatValue + 24);
    goto LABEL_5;
  }

  v5 = llvm::APInt::countLeadingZerosSlowCase((SplatValue + 24)) == v9;
LABEL_16:
  v10 = v5;
  return v10 & 1;
}

uint64_t llvm::PatternMatch::undef_match::check(llvm::PatternMatch::undef_match *this, const llvm::Value *a2)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v2 = (*(this + 16) - 11);
  if (v2 < 2)
  {
    v3 = 1;
    goto LABEL_40;
  }

  if (v2 < 0xFD)
  {
    v3 = 0;
    goto LABEL_40;
  }

  v20 = v24;
  v21 = v24;
  v22 = 8;
  v23 = 0;
  v28 = v30;
  v29 = 0x800000000;
  v4 = *(this + 5);
  if ((v4 & 0x40000000) != 0)
  {
    v6 = *(this - 1);
    v5 = v4 & 0x7FFFFFF;
    if (!v5)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = v4 & 0x7FFFFFF;
    v6 = this - 32 * v5;
    if (!v5)
    {
      goto LABEL_34;
    }
  }

  v7 = 32 * v5;
  while (1)
  {
    v8 = *(*v6 + 16);
    if ((v8 - 11) >= 2)
    {
      break;
    }

LABEL_17:
    v6 += 32;
    v7 -= 32;
    if (!v7)
    {
      v10 = v29;
      while (v10)
      {
        while (1)
        {
          v11 = v28[--v10];
          LODWORD(v29) = v10;
          v12 = *(v11 + 20);
          if ((v12 & 0x40000000) == 0)
          {
            break;
          }

          v14 = *(v11 - 8);
          v13 = v12 & 0x7FFFFFF;
          if (!v13)
          {
            goto LABEL_21;
          }

LABEL_24:
          v15 = 32 * v13;
          do
          {
            v16 = (*v14)[16];
            if ((v16 - 11) >= 2)
            {
              if ((v16 - 8) >= 3)
              {
                v17 = 0;
              }

              else
              {
                v17 = *v14;
              }

              v27 = v17;
              if (!v17)
              {
                goto LABEL_35;
              }

              llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v20, v17, v25);
              if (v26 == 1)
              {
                llvm::SmallVectorImpl<llvm::ConstantAggregate const*>::emplace_back<llvm::ConstantAggregate const*&>(&v28, &v27);
              }
            }

            v14 += 4;
            v15 -= 32;
          }

          while (v15);
          v10 = v29;
          if (!v29)
          {
            goto LABEL_34;
          }
        }

        v13 = v12 & 0x7FFFFFF;
        v14 = (v11 - 32 * v13);
        if (v13)
        {
          goto LABEL_24;
        }

LABEL_21:
        ;
      }

LABEL_34:
      v3 = 1;
      goto LABEL_36;
    }
  }

  if ((v8 - 8) >= 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v6;
  }

  v27 = v9;
  if (v9)
  {
    llvm::SmallPtrSetImpl<llvm::Value *>::insert(&v20, v9, v25);
    if (v26 == 1)
    {
      llvm::SmallVectorImpl<llvm::ConstantAggregate const*>::emplace_back<llvm::ConstantAggregate const*&>(&v28, &v27);
    }

    goto LABEL_17;
  }

LABEL_35:
  v3 = 0;
LABEL_36:
  if (v28 != v30)
  {
    free(v28);
  }

  if (v21 != v20)
  {
    free(v21);
  }

LABEL_40:
  v18 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t llvm::SmallVectorImpl<llvm::ConstantAggregate const*>::emplace_back<llvm::ConstantAggregate const*&>(unsigned int *a1, uint64_t *a2)
{
  v3 = a1[2];
  if (v3 >= a1[3])
  {
    llvm::SmallVectorTemplateBase<void *,true>::push_back(a1, *a2);
    v4 = a1[2];
  }

  else
  {
    *(*a1 + 8 * v3) = *a2;
    v4 = v3 + 1;
    a1[2] = v4;
  }

  return *a1 + 8 * v4 - 8;
}

uint64_t llvm::PatternMatch::apint_match::match<llvm::Constant>(uint64_t a1, llvm::Constant *a2)
{
  if (a2 && *(a2 + 16) == 16)
  {
    goto LABEL_3;
  }

  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    result = llvm::Constant::getSplatValue(a2, *(a1 + 8));
    if (!result)
    {
      return result;
    }

    a2 = result;
    if (*(result + 16) == 16)
    {
LABEL_3:
      **a1 = a2 + 24;
      return 1;
    }
  }

  return 0;
}

unsigned int *llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(unsigned int *result, char *a2, char *a3)
{
  v4 = a2;
  v5 = result;
  v6 = a3 - a2;
  v7 = result[2];
  v8 = v7 + ((a3 - a2) >> 5);
  if (v8 > result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8, 8);
    v7 = v5[2];
  }

  if (v4 != a3)
  {
    v9 = (*v5 + 8 * v7);
    do
    {
      v10 = *v4;
      v4 += 32;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  v5[2] = v7 + (v6 >> 5);
  return result;
}

unint64_t llvm::generic_gep_type_iterator<llvm::Use const*>::getIndexedType(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 & 0xFFFFFFFFFFFFFFF8;
  if ((v1 & 4) == 0 || !v2)
  {
    UniqueInteger = llvm::Constant::getUniqueInteger(**a1);
    if (*(UniqueInteger + 8) >= 0x41u)
    {
      v4 = *UniqueInteger;
    }

    else
    {
      v4 = UniqueInteger;
    }

    return *(*(v2 + 16) + 8 * *v4);
  }

  return v2;
}

uint64_t _GLOBAL__sub_I_Local_cpp()
{
  v0 = llvm::cl::Option::Option(&_MergedGlobals_18, 0, 0);
  byte_2815A5D20 = 0;
  qword_2815A5D28 = &unk_2883EAB68;
  *&word_2815A5D30 = 0;
  _MergedGlobals_18 = &unk_2883EAB00;
  qword_2815A5D38 = &unk_2883EA848;
  qword_2815A5D40 = &unk_2883EAB88;
  qword_2815A5D58 = &qword_2815A5D40;
  llvm::cl::Option::setArgStr(v0, "phicse-debug-hash", 0x11uLL);
  byte_2815A5D20 = 0;
  word_2815A5D30 = 256;
  word_2815A5CAA = word_2815A5CAA & 0xFF9F | 0x20;
  qword_2815A5CC0 = "Perform extra assertion checking to verify that PHINodes's hash function is well-behaved w.r.t. its isEqual predicate";
  unk_2815A5CC8 = 117;
  llvm::cl::Option::addArgument(&_MergedGlobals_18);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &_MergedGlobals_18, &dword_274E5C000);
  v1 = llvm::cl::Option::Option(&qword_2815A5D60, 0, 0);
  dword_2815A5DE0 = 0;
  qword_2815A5DE8 = &unk_2883EABF0;
  *&dword_2815A5DF0 = 0;
  qword_2815A5D60 = &unk_2883EA9C8;
  qword_2815A5DF8 = &unk_2883EA8D8;
  qword_2815A5E00 = &unk_2883EE1B8;
  qword_2815A5E18 = &qword_2815A5E00;
  llvm::cl::Option::setArgStr(v1, "phicse-num-phi-smallsize", 0x18uLL);
  dword_2815A5DE0 = 32;
  byte_2815A5DF4 = 1;
  dword_2815A5DF0 = 32;
  word_2815A5D6A = word_2815A5D6A & 0xFF9F | 0x20;
  qword_2815A5D80 = "When the basic block contains not more than this number of PHI nodes, perform a (faster!) exhaustive search instead of set-driven one.";
  unk_2815A5D88 = 134;
  llvm::cl::Option::addArgument(&qword_2815A5D60);

  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A5D60, &dword_274E5C000);
}

uint64_t *llvm::IRBuilderBase::CreateExtractElement(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  result = (*(**(this + 9) + 96))(*(this + 9));
  if (!result)
  {
    v12 = 257;
    v9 = operator new(0x80uLL);
    *(v9 + 21) = *(v9 + 21) & 0x38000000 | 2;
    v10 = (v9 + 64);
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 2) = 0;
    *(v9 + 3) = v9 + 64;
    *(v9 + 4) = 0;
    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    *(v9 + 7) = v9 + 64;
    llvm::ExtractElementInst::ExtractElementInst((v9 + 64), a2, a3, v11, 0);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v10, a4);
  }

  return result;
}

uint64_t *llvm::IRBuilderBase::CreateAnd(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  result = (*(**(this + 9) + 16))(*(this + 9), 28, a2, a3);
  if (!result)
  {
    v11 = 257;
    v9 = llvm::BinaryOperator::Create(28, a2, a3, v10, 0);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v9, a4);
  }

  return result;
}

uint64_t *llvm::IRBuilderBase::CreateOr(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  result = (*(**(this + 9) + 16))(*(this + 9), 29, a2, a3);
  if (!result)
  {
    v11 = 257;
    v9 = llvm::BinaryOperator::Create(29, a2, a3, v10, 0);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v9, a4);
  }

  return result;
}

uint64_t *llvm::IRBuilderBase::CreateMul(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, int a5, int a6)
{
  result = (*(**(this + 9) + 32))(*(this + 9), 17, a2, a3);
  if (!result)
  {

    return llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(this, 17, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t *llvm::IRBuilderBase::CreateSub(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, int a5, int a6)
{
  result = (*(**(this + 9) + 32))(*(this + 9), 15, a2, a3);
  if (!result)
  {

    return llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(this, 15, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t *llvm::IRBuilderBase::CreateShuffleVector(uint64_t a1, void *a2, uint64_t a3, int *a4, llvm::Type *a5, uint64_t a6)
{
  result = (*(**(a1 + 72) + 112))(*(a1 + 72));
  if (!result)
  {
    v13 = operator new(0xA8uLL);
    *(v13 + 21) = *(v13 + 21) & 0x38000000 | 2;
    v14 = (v13 + 64);
    *v13 = 0;
    *(v13 + 1) = 0;
    *(v13 + 2) = 0;
    *(v13 + 3) = v13 + 64;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0;
    *(v13 + 6) = 0;
    *(v13 + 7) = v13 + 64;
    v16 = 257;
    llvm::ShuffleVectorInst::ShuffleVectorInst((v13 + 64), a2, a3, a4, a5, v15, 0);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, v14, a6);
  }

  return result;
}

void llvm::SmallVectorImpl<int>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 4);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 4 * v2), 4 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t llvm::Type::isSized(uint64_t a1, llvm::SmallPtrSetImplBase *a2)
{
  v2 = *(a1 + 8);
  if (v2 == 13 || v2 < 6 && ((0x2Fu >> v2) & 1) != 0)
  {
    return 1;
  }

  v3 = v2 & 0xFE;
  v4 = v3 == 10 || (v2 & 0xFFFFFFFD) == 4;
  if (v4 || v2 == 15)
  {
    return 1;
  }

  if (v3 == 16 || v3 == 18 || v2 == 21)
  {
    return llvm::Type::isSizedDerivedType(a1, a2);
  }

  else
  {
    return 0;
  }
}

llvm::Value *llvm::GetElementPtrInst::Create(llvm::GetElementPtrInst *TypeAtIndex, uint64_t *a2, llvm::Value *a3, uint64_t a4, const llvm::Twine *a5, uint64_t *a6)
{
  v12 = (a4 + 1);
  v13 = llvm::User::operator new(0x50, a4 + 1);
  llvm::GetElementPtrInst::getGEPReturnType(TypeAtIndex, a2, a3, a4);
  llvm::Instruction::Instruction(v13, v14, 34, v13 - 32 * v12, v12, a6);
  *(v13 + 8) = TypeAtIndex;
  if (a4)
  {
    v16 = (a3 + 8);
    v17 = 8 * a4 - 8;
    do
    {
      if (!v17)
      {
        break;
      }

      v18 = *v16++;
      TypeAtIndex = llvm::GetElementPtrInst::getTypeAtIndex(TypeAtIndex, v18, v15);
      v17 -= 8;
    }

    while (TypeAtIndex);
  }

  *(v13 + 9) = TypeAtIndex;
  llvm::GetElementPtrInst::init(v13, a2, a3, a4, a5);
  return v13;
}

void llvm::GetElementPtrInst::getGEPReturnType(llvm::GetElementPtrInst *TypeAtIndex, uint64_t *a2, llvm::Value *a3, uint64_t a4)
{
  v5 = a3;
  v7 = *a2;
  v8 = *(*a2 + 8);
  if ((v8 & 0xFE) == 0x12)
  {
    v7 = **(v7 + 16);
    v8 = *(v7 + 8);
  }

  v9 = (v8 >> 8);
  if (a4)
  {
    v10 = (a3 + 8);
    v11 = 8 * a4 - 8;
    do
    {
      if (!v11)
      {
        break;
      }

      v12 = *v10++;
      TypeAtIndex = llvm::GetElementPtrInst::getTypeAtIndex(TypeAtIndex, v12, a3);
      v11 -= 8;
    }

    while (TypeAtIndex);
  }

  if (*(v7 + 24))
  {
    v13 = llvm::PointerType::get(TypeAtIndex, v9);
  }

  else
  {
    v13 = llvm::PointerType::get(*v7, v9);
  }

  v14 = *a2;
  if (!*a2 || (v15 = *(v14 + 8), (v15 & 0xFE) != 0x12))
  {
    if (!a4)
    {
      return;
    }

    v17 = 8 * a4;
    while (1)
    {
      v14 = **v5;
      v15 = *(v14 + 8);
      if (v14 && (*(v14 + 8) & 0xFE) == 18)
      {
        break;
      }

      v5 = (v5 + 8);
      v17 -= 8;
      if (!v17)
      {
        return;
      }
    }
  }

  v16 = (*(v14 + 32) | (((~v15 & 0x13) == 0) << 32));

  llvm::VectorType::get(v13, v16);
}

uint64_t *llvm::IRBuilderBase::CreateExtractValue(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  result = (*(**(a1 + 72) + 80))(*(a1 + 72));
  if (!result)
  {
    v16 = 257;
    v11 = operator new(0x80uLL);
    v12 = (v11 + 32);
    *(v11 + 13) = *(v11 + 13) & 0x38000000 | 1;
    *v11 = 0;
    *(v11 + 1) = 0;
    *(v11 + 2) = 0;
    *(v11 + 3) = v11 + 32;
    *(v11 + 4) = llvm::ExtractValueInst::getIndexedType(*a2, a3, a4);
    *(v11 + 5) = 0;
    *(v11 + 6) = 0x10000005CLL;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 22) = 0;
    v13 = a2 + 1;
    v14 = a2[1];
    *v11 = a2;
    *(v11 + 1) = v14;
    if (v14)
    {
      *(v14 + 16) = v11 + 8;
    }

    *(v11 + 2) = v13;
    *v13 = v11;
    *(v11 + 12) = v11 + 112;
    *(v11 + 13) = 0x400000000;
    llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(v11 + 24, a3, &a3[a4]);
    llvm::Value::setName(v12, v15);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, v12, a5);
  }

  return result;
}

uint64_t _GLOBAL__sub_I_ScalarEvolutionExpander_cpp()
{
  v4 = 1;
  v2 = 4;
  v3 = &v2;
  v1.n128_u64[0] = "When performing SCEV expansion only if it is cheap to do, this controls the budget that is considered cheap (default = 4)";
  v1.n128_u64[1] = 121;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [26],llvm::cl::OptionHidden,llvm::cl::initializer<int>,llvm::cl::desc>(&llvm::SCEVCheapExpansionBudget, "scev-cheap-expansion-budget", &v4, &v3, &v1);
  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &llvm::SCEVCheapExpansionBudget, &dword_274E5C000);
}

char *llvm::SmallVectorImpl<llvm::BasicBlock *>::insert<llvm::BasicBlock * const*,void>(unsigned int *a1, uint64_t a2, uint64_t *__src, uint64_t *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = a1[2];
  if (*a1 + 8 * v9 == a2)
  {
    llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(a1, __src, a4);
    return (*a1 + v8);
  }

  v10 = a4 - __src;
  v11 = a4 - __src;
  if (v9 + v11 > a1[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, v9 + v11, 8);
    v7 = *a1;
    v9 = a1[2];
  }

  v12 = (v7 + v8);
  v13 = 8 * v9;
  v14 = (v7 + 8 * v9);
  v15 = 8 * v9 - v8;
  v16 = v15 >> 3;
  if (v15 >> 3 < v11)
  {
    v17 = v9 + (v10 >> 3);
    a1[2] = v17;
    if (v13 != v8)
    {
      memcpy((v7 + 8 * v17 - 8 * v16), v12, v15);
      v18 = v12;
      do
      {
        v19 = *v5++;
        *v18++ = v19;
        --v16;
      }

      while (v16);
    }

    if (v5 != a4)
    {
      memcpy(v14, v5, a4 - v5);
    }

    return v12;
  }

  llvm::SmallVectorImpl<llvm::BasicBlock *>::append<std::move_iterator<llvm::BasicBlock **>,void>(a1, &v14[-8 * v11], (v7 + 8 * v9));
  if (&v14[-8 * v11] != v12)
  {
    memmove(&v12[8 * v11], v12, &v14[-8 * v11] - v12);
  }

  if (a4 == v5)
  {
    return v12;
  }

  return memmove(v12, v5, a4 - v5);
}

unsigned int *llvm::SmallVectorImpl<llvm::Value const*>::append<llvm::User::const_value_op_iterator,void>(unsigned int *result, char *a2, char *a3)
{
  v4 = a2;
  v5 = result;
  v6 = a3 - a2;
  v7 = result[2];
  v8 = v7 + ((a3 - a2) >> 5);
  if (v8 > result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8, 8);
    LODWORD(v7) = v5[2];
  }

  if (a3 != v4)
  {
    v9 = (*v5 + 8 * v7);
    do
    {
      v10 = *v4;
      v4 += 32;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  v5[2] = v7 + (v6 >> 5);
  return result;
}

uint64_t *llvm::IRBuilderBase::CreateNot(llvm::IRBuilderBase *this, llvm::Constant **a2, const llvm::Twine *a3)
{
  AllOnesValue = llvm::Constant::getAllOnesValue(*a2, a2);

  return llvm::IRBuilderBase::CreateXor(this, a2, AllOnesValue, a3);
}

uint64_t *llvm::IRBuilderBase::CreateXor(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  result = (*(**(this + 9) + 16))(*(this + 9), 30, a2, a3);
  if (!result)
  {
    v11 = 257;
    v9 = llvm::BinaryOperator::Create(30, a2, a3, v10, 0);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v9, a4);
  }

  return result;
}

unsigned int *llvm::SmallVectorImpl<unsigned int>::append<unsigned long long *,void>(unsigned int *result, char *a2, char *a3)
{
  v4 = a2;
  v5 = result;
  v6 = a3 - a2;
  v7 = result[2];
  v8 = v7 + ((a3 - a2) >> 3);
  if (v8 > result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8, 4);
    v7 = v5[2];
  }

  if (v4 != a3)
  {
    v9 = (*v5 + 4 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
    LODWORD(v7) = v5[2];
  }

  v5[2] = v7 + (v6 >> 3);
  return result;
}

uint64_t llvm::SmallVectorImpl<unsigned long long>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) < a2)
  {
    return llvm::SmallVectorTemplateBase<unsigned long long,true>::growAndAssign(a1, a2, a3);
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    v6 = 0;
    v7 = (v5 + 1) & 0x1FFFFFFFELL;
    v8 = vdupq_n_s64(v5 - 1);
    v9 = (v3 + 8);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v6), xmmword_2750C1210)));
      if (v10.i8[0])
      {
        *(v9 - 1) = a3;
      }

      if (v10.i8[4])
      {
        *v9 = a3;
      }

      v6 += 2;
      v9 += 2;
    }

    while (v7 != v6);
  }

  v11 = a2 - v4;
  if (a2 > v4)
  {
    v12 = 0;
    v13 = vdupq_n_s64(v11 - 1);
    v14 = (v3 + 8 * v4 + 8);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v12), xmmword_2750C1210)));
      if (v15.i8[0])
      {
        *(v14 - 1) = a3;
      }

      if (v15.i8[4])
      {
        *v14 = a3;
      }

      v12 += 2;
      v14 += 2;
    }

    while (((v11 + 1) & 0xFFFFFFFFFFFFFFFELL) != v12);
  }

  *(a1 + 8) = a2;
  return a1;
}

void *llvm::SmallVectorTemplateBase<unsigned long long,true>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  result = llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
  if (a2)
  {
    v7 = 0;
    v8 = vdupq_n_s64(a2 - 1);
    v9 = (*a1 + 8);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v10.i8[0])
      {
        *(v9 - 1) = a3;
      }

      if (v10.i8[4])
      {
        *v9 = a3;
      }

      v7 += 2;
      v9 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v7);
  }

  *(a1 + 8) = a2;
  return result;
}

uint64_t *llvm::IRBuilderBase::CreateIntCast(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type ***a3, llvm::Type *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  if (*a2 == a3)
  {
    return a2;
  }

  if (*(a2 + 16) > 0x14u)
  {
    v12 = 257;
    IntegerCast = llvm::CastInst::CreateIntegerCast(a2, a3, a4, v11, 0, a6);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, IntegerCast, a5);
  }

  a2 = (*(**(this + 9) + 144))(*(this + 9));
  if (a2)
  {
    v8 = *(a2 + 16) >= 0x1Cu;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return a2;
  }

  return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, a2, a5);
}

void llvm::APInt::lshr(llvm::APInt *this@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
  *(a3 + 8) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *a3 = *this;
  LimitedValue = llvm::APInt::getLimitedValue(a2, v4);

  llvm::APInt::lshrInPlace(a3, LimitedValue);
}

uint64_t *llvm::IRBuilderBase::CreateShl(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, int a5, int a6)
{
  result = (*(**(this + 9) + 32))(*(this + 9), 25, a2, a3);
  if (!result)
  {

    return llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(this, 25, a2, a3, a4, a5, a6);
  }

  return result;
}

llvm::cl::Option *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [30],llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::desc>(llvm::cl::Option *a1, char *a2, _WORD *a3, _BYTE **a4, __n128 *a5)
{
  v10 = llvm::cl::Option::Option(a1, 0, 0);
  *(v10 + 128) = 0;
  *(v10 + 136) = &unk_2883EAB68;
  *(v10 + 144) = 0;
  *v10 = &unk_2883EAB00;
  *(v10 + 152) = &unk_2883EA848;
  *(v10 + 160) = &unk_2883EAB88;
  *(v10 + 184) = v10 + 160;
  llvm::cl::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>,char [30],llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::desc>(v10, a2, a3, a4, a5);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

__n128 llvm::cl::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>,char [30],llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::desc>(uint64_t a1, char *__s, _WORD *a3, _BYTE **a4, __n128 *a5)
{
  v10 = strlen(__s);
  llvm::cl::Option::setArgStr(a1, __s, v10);
  *(a1 + 10) = (32 * (*a3 & 3)) | *(a1 + 10) & 0xFF9F;
  v11 = *a4;
  *(a1 + 128) = **a4;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v11;
  result = *a5;
  *(a1 + 32) = *a5;
  return result;
}

uint64_t _GLOBAL__sub_I_SimplifyCFG_cpp()
{
  v0 = llvm::cl::Option::Option(&_MergedGlobals_19, 0, 0);
  byte_2815A5EA0 = 0;
  qword_2815A5EA8 = &unk_2883EAB68;
  unk_2815A5EB0 = 0;
  _MergedGlobals_19 = &unk_2883EAB00;
  qword_2815A5EB8 = &unk_2883EA848;
  qword_2815A5EC0 = &unk_2883EAB88;
  qword_2815A5ED8 = &qword_2815A5EC0;
  llvm::cl::Option::setArgStr(v0, "simplifycfg-require-and-preserve-domtree", 0x28uLL);
  word_2815A5E2A = word_2815A5E2A & 0xFF9F | 0x20;
  qword_2815A5E40 = "Temorary development switch used to gradually uplift SimplifyCFG into preserving DomTree,";
  unk_2815A5E48 = 89;
  llvm::cl::Option::addArgument(&_MergedGlobals_19);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &_MergedGlobals_19, &dword_274E5C000);
  v1 = llvm::cl::Option::Option(&qword_2815A5EE0, 0, 0);
  dword_2815A5F60 = 0;
  qword_2815A5F68 = &unk_2883EABF0;
  *&dword_2815A5F70 = 0;
  qword_2815A5EE0 = &unk_2883EA9C8;
  qword_2815A5F78 = &unk_2883EA8D8;
  qword_2815A5F80 = &unk_2883EE1B8;
  qword_2815A5F98 = &qword_2815A5F80;
  llvm::cl::Option::setArgStr(v1, "phi-node-folding-threshold", 0x1AuLL);
  word_2815A5EEA = word_2815A5EEA & 0xFF9F | 0x20;
  dword_2815A5F60 = 2;
  byte_2815A5F74 = 1;
  dword_2815A5F70 = 2;
  qword_2815A5F00 = "Control the amount of phi node folding to perform (default = 2)";
  unk_2815A5F08 = 63;
  llvm::cl::Option::addArgument(&qword_2815A5EE0);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A5EE0, &dword_274E5C000);
  v2 = llvm::cl::Option::Option(&qword_2815A5FA0, 0, 0);
  dword_2815A6020 = 0;
  qword_2815A6030 = 0;
  qword_2815A6028 = &unk_2883EABF0;
  qword_2815A5FA0 = &unk_2883EA9C8;
  qword_2815A6038 = &unk_2883EA8D8;
  qword_2815A6040 = &unk_2883EE1B8;
  qword_2815A6058 = &qword_2815A6040;
  llvm::cl::Option::setArgStr(v2, "two-entry-phi-node-folding-threshold", 0x24uLL);
  word_2815A5FAA = word_2815A5FAA & 0xFF9F | 0x20;
  dword_2815A6020 = 4;
  BYTE4(qword_2815A6030) = 1;
  LODWORD(qword_2815A6030) = 4;
  qword_2815A5FC0 = "Control the maximal total instruction cost that we are willing to speculatively execute to fold a 2-entry PHI node into a select (default = 4)";
  unk_2815A5FC8 = 142;
  llvm::cl::Option::addArgument(&qword_2815A5FA0);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A5FA0, &dword_274E5C000);
  v3 = llvm::cl::Option::Option(&qword_2815A6060, 0, 0);
  byte_2815A60E0 = 0;
  qword_2815A60F0 = 0;
  qword_2815A60E8 = &unk_2883EAB68;
  qword_2815A6060 = &unk_2883EAB00;
  qword_2815A60F8 = &unk_2883EA848;
  qword_2815A6100 = &unk_2883EAB88;
  qword_2815A6118 = &qword_2815A6100;
  llvm::cl::Option::setArgStr(v3, "simplifycfg-hoist-common", 0x18uLL);
  word_2815A606A = word_2815A606A & 0xFF9F | 0x20;
  byte_2815A60E0 = 1;
  LOWORD(qword_2815A60F0) = 257;
  qword_2815A6080 = "Hoist common instructions up to the parent block";
  qword_2815A6088 = 48;
  llvm::cl::Option::addArgument(&qword_2815A6060);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A6060, &dword_274E5C000);
  v4 = llvm::cl::Option::Option(&qword_2815A6120, 0, 0);
  dword_2815A61A0 = 0;
  qword_2815A61B0 = 0;
  qword_2815A61A8 = &unk_2883EABF0;
  qword_2815A6120 = &unk_2883EA9C8;
  qword_2815A61B8 = &unk_2883EA8D8;
  qword_2815A61C0 = &unk_2883EE1B8;
  qword_2815A61D8 = &qword_2815A61C0;
  llvm::cl::Option::setArgStr(v4, "simplifycfg-hoist-common-skip-limit", 0x23uLL);
  word_2815A612A = word_2815A612A & 0xFF9F | 0x20;
  dword_2815A61A0 = 20;
  BYTE4(qword_2815A61B0) = 1;
  LODWORD(qword_2815A61B0) = 20;
  qword_2815A6140 = "Allow reordering across at most this many instructions when hoisting";
  qword_2815A6148 = 68;
  llvm::cl::Option::addArgument(&qword_2815A6120);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A6120, &dword_274E5C000);
  v5 = llvm::cl::Option::Option(&qword_2815A61E0, 0, 0);
  byte_2815A6260 = 0;
  qword_2815A6270 = 0;
  qword_2815A6268 = &unk_2883EAB68;
  qword_2815A61E0 = &unk_2883EAB00;
  qword_2815A6278 = &unk_2883EA848;
  qword_2815A6280 = &unk_2883EAB88;
  qword_2815A6298 = &qword_2815A6280;
  llvm::cl::Option::setArgStr(v5, "simplifycfg-sink-common", 0x17uLL);
  word_2815A61EA = word_2815A61EA & 0xFF9F | 0x20;
  byte_2815A6260 = 1;
  LOWORD(qword_2815A6270) = 257;
  qword_2815A6200 = "Sink common instructions down to the end block";
  qword_2815A6208 = 46;
  llvm::cl::Option::addArgument(&qword_2815A61E0);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A61E0, &dword_274E5C000);
  v17 = 1;
  LOBYTE(v15) = 1;
  v16 = &v15;
  v14.n128_u64[0] = "Hoist conditional stores if an unconditional store precedes";
  v14.n128_u64[1] = 59;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [30],llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::desc>(&unk_2815A62A0, "simplifycfg-hoist-cond-stores", &v17, &v16, &v14);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &unk_2815A62A0, &dword_274E5C000);
  v17 = 1;
  LOBYTE(v15) = 1;
  v16 = &v15;
  v14.n128_u64[0] = "Hoist conditional stores even if an unconditional store does not precede - hoist multiple conditional stores into a single predicated store";
  v14.n128_u64[1] = 139;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [30],llvm::cl::OptionHidden,llvm::cl::initializer<BOOL>,llvm::cl::desc>(&unk_2815A6360, "simplifycfg-merge-cond-stores", &v17, &v16, &v14);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &unk_2815A6360, &dword_274E5C000);
  v6 = llvm::cl::Option::Option(&qword_2815A6420, 0, 0);
  byte_2815A64A0 = 0;
  qword_2815A64B0 = 0;
  qword_2815A64A8 = &unk_2883EAB68;
  qword_2815A6420 = &unk_2883EAB00;
  qword_2815A64B8 = &unk_2883EA848;
  qword_2815A64C0 = &unk_2883EAB88;
  qword_2815A64D8 = &qword_2815A64C0;
  llvm::cl::Option::setArgStr(v6, "simplifycfg-merge-cond-stores-aggressively", 0x2AuLL);
  word_2815A642A = word_2815A642A & 0xFF9F | 0x20;
  byte_2815A64A0 = 0;
  LOWORD(qword_2815A64B0) = 256;
  qword_2815A6440 = "When merging conditional stores, do so even if the resultant basic blocks are unlikely to be if-converted as a result";
  qword_2815A6448 = 117;
  llvm::cl::Option::addArgument(&qword_2815A6420);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A6420, &dword_274E5C000);
  v7 = llvm::cl::Option::Option(&qword_2815A64E0, 0, 0);
  byte_2815A6560 = 0;
  qword_2815A6570 = 0;
  qword_2815A6568 = &unk_2883EAB68;
  qword_2815A64E0 = &unk_2883EAB00;
  qword_2815A6578 = &unk_2883EA848;
  qword_2815A6580 = &unk_2883EAB88;
  qword_2815A6598 = &qword_2815A6580;
  llvm::cl::Option::setArgStr(v7, "speculate-one-expensive-inst", 0x1CuLL);
  word_2815A64EA = word_2815A64EA & 0xFF9F | 0x20;
  byte_2815A6560 = 1;
  LOWORD(qword_2815A6570) = 257;
  qword_2815A6500 = "Allow exactly one expensive instruction to be speculatively executed";
  qword_2815A6508 = 68;
  llvm::cl::Option::addArgument(&qword_2815A64E0);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A64E0, &dword_274E5C000);
  v8 = llvm::cl::Option::Option(&qword_2815A65A0, 0, 0);
  dword_2815A6620 = 0;
  qword_2815A6630 = 0;
  qword_2815A6628 = &unk_2883EABF0;
  qword_2815A65A0 = &unk_2883EA9C8;
  qword_2815A6638 = &unk_2883EA8D8;
  qword_2815A6640 = &unk_2883EE1B8;
  qword_2815A6658 = &qword_2815A6640;
  llvm::cl::Option::setArgStr(v8, "max-speculation-depth", 0x15uLL);
  word_2815A65AA = word_2815A65AA & 0xFF9F | 0x20;
  dword_2815A6620 = 10;
  BYTE4(qword_2815A6630) = 1;
  LODWORD(qword_2815A6630) = 10;
  qword_2815A65C0 = "Limit maximum recursion depth when calculating costs of speculatively executed instructions";
  qword_2815A65C8 = 91;
  llvm::cl::Option::addArgument(&qword_2815A65A0);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A65A0, &dword_274E5C000);
  v9 = llvm::cl::Option::Option(&qword_2815A6660, 0, 0);
  dword_2815A66E0 = 0;
  qword_2815A66F0 = 0;
  qword_2815A66E8 = &unk_2883EAC10;
  qword_2815A6660 = &unk_2883EAA30;
  qword_2815A66F8 = &unk_2883EA8A8;
  qword_2815A6700 = &unk_2883EE200;
  qword_2815A6718 = &qword_2815A6700;
  llvm::cl::Option::setArgStr(v9, "simplifycfg-max-small-block-size", 0x20uLL);
  word_2815A666A = word_2815A666A & 0xFF9F | 0x20;
  dword_2815A66E0 = 10;
  BYTE4(qword_2815A66F0) = 1;
  LODWORD(qword_2815A66F0) = 10;
  qword_2815A6680 = "Max size of a block which is still considered small enough to thread through";
  qword_2815A6688 = 76;
  llvm::cl::Option::addArgument(&qword_2815A6660);
  __cxa_atexit(llvm::cl::opt<int,false,llvm::cl::parser<int>>::~opt, &qword_2815A6660, &dword_274E5C000);
  v10 = llvm::cl::Option::Option(&qword_2815A6720, 0, 0);
  dword_2815A67A0 = 0;
  qword_2815A67B0 = 0;
  qword_2815A67A8 = &unk_2883EABF0;
  qword_2815A6720 = &unk_2883EA9C8;
  qword_2815A67B8 = &unk_2883EA8D8;
  qword_2815A67C0 = &unk_2883EE1B8;
  qword_2815A67D8 = &qword_2815A67C0;
  llvm::cl::Option::setArgStr(v10, "simplifycfg-branch-fold-threshold", 0x21uLL);
  word_2815A672A = word_2815A672A & 0xFF9F | 0x20;
  dword_2815A67A0 = 2;
  BYTE4(qword_2815A67B0) = 1;
  LODWORD(qword_2815A67B0) = 2;
  qword_2815A6740 = "Maximum cost of combining conditions when folding branches";
  qword_2815A6748 = 58;
  llvm::cl::Option::addArgument(&qword_2815A6720);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A6720, &dword_274E5C000);
  v11 = llvm::cl::Option::Option(&qword_2815A67E0, 0, 0);
  dword_2815A6860 = 0;
  qword_2815A6870 = 0;
  qword_2815A6868 = &unk_2883EABF0;
  qword_2815A67E0 = &unk_2883EA9C8;
  qword_2815A6878 = &unk_2883EA8D8;
  qword_2815A6880 = &unk_2883EE1B8;
  qword_2815A6898 = &qword_2815A6880;
  llvm::cl::Option::setArgStr(v11, "simplifycfg-branch-fold-common-dest-vector-multiplier", 0x35uLL);
  word_2815A67EA = word_2815A67EA & 0xFF9F | 0x20;
  dword_2815A6860 = 2;
  BYTE4(qword_2815A6870) = 1;
  LODWORD(qword_2815A6870) = 2;
  qword_2815A6800 = "Multiplier to apply to threshold when determining whether or not to fold branch to common destination when vector operations are present";
  qword_2815A6808 = 136;
  llvm::cl::Option::addArgument(&qword_2815A67E0);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A67E0, &dword_274E5C000);
  v12 = llvm::cl::Option::Option(&qword_2815A68A0, 0, 0);
  byte_2815A6920 = 0;
  qword_2815A6930 = 0;
  qword_2815A6928 = &unk_2883EAB68;
  qword_2815A68A0 = &unk_2883EAB00;
  qword_2815A6938 = &unk_2883EA848;
  qword_2815A6940 = &unk_2883EAB88;
  qword_2815A6958 = &qword_2815A6940;
  llvm::cl::Option::setArgStr(v12, "simplifycfg-merge-compatible-invokes", 0x24uLL);
  word_2815A68AA = word_2815A68AA & 0xFF9F | 0x20;
  byte_2815A6920 = 1;
  LOWORD(qword_2815A6930) = 257;
  qword_2815A68C0 = "Allow SimplifyCFG to merge invokes together when appropriate";
  qword_2815A68C8 = 60;
  llvm::cl::Option::addArgument(&qword_2815A68A0);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A68A0, &dword_274E5C000);
  v17 = 1;
  v15 = 16;
  v16 = &v15;
  v14.n128_u64[0] = "Limit cases to analyze when converting a switch to select";
  v14.n128_u64[1] = 57;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [26],llvm::cl::OptionHidden,llvm::cl::initializer<int>,llvm::cl::desc>(&unk_2815A6960, "max-switch-cases-per-result", &v17, &v16, &v14);
  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &unk_2815A6960, &dword_274E5C000);
}

uint64_t *llvm::TrackingMDRef::reset(uint64_t *result, uint64_t a2)
{
  v3 = result;
  if (*result)
  {
    result = llvm::MetadataTracking::untrack(result, *result);
  }

  *v3 = a2;
  if (a2)
  {

    return llvm::MetadataTracking::track(v3, a2, 2);
  }

  return result;
}

uint64_t _GLOBAL__sub_I_AliasAnalysis_cpp()
{
  v0 = llvm::cl::Option::Option(&qword_2815A6A28, 0, 0);
  byte_2815A6AA8 = 0;
  qword_2815A6AB0 = &unk_2883EAB68;
  *&word_2815A6AB8 = 0;
  qword_2815A6A28 = &unk_2883EAB00;
  qword_2815A6AC0 = &unk_2883EA848;
  qword_2815A6AC8 = &unk_2883EAB88;
  qword_2815A6AE0 = &qword_2815A6AC8;
  llvm::cl::Option::setArgStr(v0, "disable-basic-aa", 0x10uLL);
  word_2815A6A32 = word_2815A6A32 & 0xFF9F | 0x20;
  byte_2815A6AA8 = 0;
  word_2815A6AB8 = 256;
  llvm::cl::Option::addArgument(&qword_2815A6A28);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A6A28, &dword_274E5C000);
}

uint64_t _GLOBAL__sub_I_AliasSetTracker_cpp()
{
  v4 = 1;
  v2 = 250;
  v3 = &v2;
  v1.n128_u64[0] = "The maximum number of pointers may-alias sets may contain before degradation";
  v1.n128_u64[1] = 76;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [26],llvm::cl::OptionHidden,llvm::cl::initializer<int>,llvm::cl::desc>(&SaturationThreshold, "alias-set-saturation-threshold", &v4, &v3, &v1);
  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &SaturationThreshold, &dword_274E5C000);
}

void _GLOBAL__sub_I_AssumeBundleQueries_cpp(llvm::DebugCounter *a1)
{
  llvm::DebugCounter::instance(a1);
  strcpy(__p, "assume-queries-counter");
  v2 = 22;
  operator new();
}

uint64_t _GLOBAL__sub_I_AssumptionCache_cpp()
{
  v0 = llvm::cl::Option::Option(&VerifyAssumptionCache, 0, 0);
  byte_2815A4DB8 = 0;
  qword_2815A4DC0 = &unk_2883EAB68;
  *&word_2815A4DC8 = 0;
  VerifyAssumptionCache = &unk_2883EAB00;
  qword_2815A4DD0 = &unk_2883EA848;
  qword_2815A4DD8 = &unk_2883EAB88;
  qword_2815A4DF0 = &qword_2815A4DD8;
  llvm::cl::Option::setArgStr(v0, "verify-assumption-cache", 0x17uLL);
  word_2815A4D42 = word_2815A4D42 & 0xFF9F | 0x20;
  qword_2815A4D58 = "Enable verification of assumption cache";
  unk_2815A4D60 = 39;
  byte_2815A4DB8 = 0;
  word_2815A4DC8 = 256;
  llvm::cl::Option::addArgument(&VerifyAssumptionCache);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &VerifyAssumptionCache, &dword_274E5C000);
}

BOOL llvm::APInt::slt(llvm::APInt *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 < 0x41)
  {
    goto LABEL_2;
  }

  v7 = v4 - llvm::APInt::getNumSignBits(this) + 1;
  v4 = *(v3 + 2);
  if (v7 < 0x41)
  {
    if (v4 > 0x40)
    {
      v5 = **v3;
      return v5 < a2;
    }

LABEL_2:
    v5 = (*v3 << -v4) >> -v4;
    return v5 < a2;
  }

  v8 = v4 - 1;
  if (v4 >= 0x41)
  {
    v3 = (*v3 + 8 * (v8 >> 6));
  }

  return (*v3 >> v8) & 1;
}

uint64_t _GLOBAL__sub_I_BasicAliasAnalysis_cpp()
{
  v0 = llvm::cl::Option::Option(&_MergedGlobals_21, 0, 0);
  byte_2815A6B68 = 0;
  qword_2815A6B70 = &unk_2883EAB68;
  *&word_2815A6B78 = 0;
  _MergedGlobals_21 = &unk_2883EAB00;
  qword_2815A6B80 = &unk_2883EA848;
  qword_2815A6B88 = &unk_2883EAB88;
  qword_2815A6BA0 = &qword_2815A6B88;
  llvm::cl::Option::setArgStr(v0, "basic-aa-recphi", 0xFuLL);
  word_2815A6AF2 = word_2815A6AF2 & 0xFF9F | 0x20;
  byte_2815A6B68 = 1;
  word_2815A6B78 = 257;
  llvm::cl::Option::addArgument(&_MergedGlobals_21);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &_MergedGlobals_21, &dword_274E5C000);
  v1 = llvm::cl::Option::Option(&qword_2815A6BA8, 0, 0);
  byte_2815A6C28 = 0;
  qword_2815A6C30 = &unk_2883EAB68;
  *&word_2815A6C38 = 0;
  qword_2815A6BA8 = &unk_2883EAB00;
  qword_2815A6C40 = &unk_2883EA848;
  qword_2815A6C48 = &unk_2883EAB88;
  qword_2815A6C60 = &qword_2815A6C48;
  llvm::cl::Option::setArgStr(v1, "basic-aa-separate-storage", 0x19uLL);
  word_2815A6BB2 = word_2815A6BB2 & 0xFF9F | 0x20;
  byte_2815A6C28 = 0;
  word_2815A6C38 = 256;
  llvm::cl::Option::addArgument(&qword_2815A6BA8);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A6BA8, &dword_274E5C000);
}

void llvm::cl::opt<llvm::GVDAGType,false,llvm::cl::parser<llvm::GVDAGType>>::~opt(llvm::cl::Option *a1)
{
  *a1 = &unk_2883EE248;
  std::__function::__value_func<void ()(llvm::GVDAGType const&)>::~__value_func[abi:nn200100](a1 + 568);
  *(a1 + 19) = &unk_2883EE2B0;
  v2 = *(a1 + 21);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883EE248;
  std::__function::__value_func<void ()(llvm::GVDAGType const&)>::~__value_func[abi:nn200100](a1 + 568);
  *(a1 + 19) = &unk_2883EE2B0;
  v2 = *(a1 + 21);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::cl::opt<llvm::PGOViewCountsType,false,llvm::cl::parser<llvm::PGOViewCountsType>>::~opt(llvm::cl::Option *a1)
{
  *a1 = &unk_2883EE340;
  std::__function::__value_func<void ()(llvm::PGOViewCountsType const&)>::~__value_func[abi:nn200100](a1 + 568);
  *(a1 + 19) = &unk_2883EE3A8;
  v2 = *(a1 + 21);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883EE340;
  std::__function::__value_func<void ()(llvm::PGOViewCountsType const&)>::~__value_func[abi:nn200100](a1 + 568);
  *(a1 + 19) = &unk_2883EE3A8;
  v2 = *(a1 + 21);
  if (v2 != (a1 + 184))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

void *llvm::cl::parser<llvm::GVDAGType>::~parser(void *a1)
{
  *a1 = &unk_2883EE2B0;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::cl::opt<llvm::GVDAGType,false,llvm::cl::parser<llvm::GVDAGType>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = a1;
  v18 = 0;
  v8 = *(*(a1 + 160) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(a1 + 168);
    while (1)
    {
      if (*(v12 + 8) == a4)
      {
        if (!a4)
        {
          break;
        }

        a1 = memcmp(*v12, a3, a4);
        if (!a1)
        {
          break;
        }
      }

      v12 += 48;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    v15 = *(v12 + 40);
    v18 = v15;
  }

  else
  {
LABEL_13:
    v20 = 1283;
    v19[0] = "Cannot find option named '";
    v19[2] = a3;
    v19[3] = a4;
    v21[0] = v19;
    v21[2] = "'!";
    v22 = 770;
    v13 = llvm::errs(a1);
    if (llvm::cl::Option::error(v7, v21, 0, 0, v13))
    {
      return 1;
    }

    v15 = 0;
  }

  *(v7 + 128) = v15;
  *(v7 + 12) = a2;
  v16 = *(v7 + 592);
  if (v16)
  {
    (*(*v16 + 48))(v16, &v18);
    return 0;
  }

  else
  {
    v17 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<llvm::GVDAGType,false,llvm::cl::parser<llvm::GVDAGType>>::getValueExpectedFlagDefault(v17);
  }
}

uint64_t llvm::cl::opt<llvm::GVDAGType,false,llvm::cl::parser<llvm::GVDAGType>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

llvm::raw_ostream *llvm::cl::opt<llvm::GVDAGType,false,llvm::cl::parser<llvm::GVDAGType>>::printOptionValue(llvm::raw_ostream *result, int a2, int a3)
{
  if (a3)
  {
    v3 = *(result + 32);
LABEL_3:
    v4 = &unk_2883EE300;
    v6 = 1;
    v5 = v3;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 152), result, &v4, (result + 136), a2);
  }

  if (*(result + 148) == 1)
  {
    v3 = *(result + 32);
    if (*(result + 36) != v3)
    {
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t llvm::cl::opt<llvm::GVDAGType,false,llvm::cl::parser<llvm::GVDAGType>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    v1 = *(result + 144);
  }

  else
  {
    v1 = 0;
  }

  *(result + 128) = v1;
  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::GVDAGType const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::cl::parser<llvm::GVDAGType>::~parser(void *a1)
{
  *a1 = &unk_2883EE2B0;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::cl::parser<llvm::GVDAGType>::getOption(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 16) + 48 * a2);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t llvm::cl::parser<llvm::GVDAGType>::getDescription(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 48 * a2;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

unsigned int *llvm::cl::generic_parser_base::getExtraOptionNames(unsigned int *result, unsigned int *a2)
{
  if (!*(*(result + 1) + 24))
  {
    v3 = result;
    result = (*(*result + 16))(result);
    if (result)
    {
      v4 = result;
      v5 = 0;
      do
      {
        v6 = (*(*v3 + 24))(v3, v5);
        result = llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(a2, v6, v7);
        v5 = (v5 + 1);
      }

      while (v4 != v5);
    }
  }

  return result;
}

void *llvm::cl::parser<llvm::PGOViewCountsType>::~parser(void *a1)
{
  *a1 = &unk_2883EE3A8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::cl::opt<llvm::PGOViewCountsType,false,llvm::cl::parser<llvm::PGOViewCountsType>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = a1;
  v18 = 0;
  v8 = *(*(a1 + 160) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(a1 + 168);
    while (1)
    {
      if (*(v12 + 8) == a4)
      {
        if (!a4)
        {
          break;
        }

        a1 = memcmp(*v12, a3, a4);
        if (!a1)
        {
          break;
        }
      }

      v12 += 48;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    v15 = *(v12 + 40);
    v18 = v15;
  }

  else
  {
LABEL_13:
    v20 = 1283;
    v19[0] = "Cannot find option named '";
    v19[2] = a3;
    v19[3] = a4;
    v21[0] = v19;
    v21[2] = "'!";
    v22 = 770;
    v13 = llvm::errs(a1);
    if (llvm::cl::Option::error(v7, v21, 0, 0, v13))
    {
      return 1;
    }

    v15 = 0;
  }

  *(v7 + 128) = v15;
  *(v7 + 12) = a2;
  v16 = *(v7 + 592);
  if (v16)
  {
    (*(*v16 + 48))(v16, &v18);
    return 0;
  }

  else
  {
    v17 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<llvm::PGOViewCountsType,false,llvm::cl::parser<llvm::PGOViewCountsType>>::getValueExpectedFlagDefault(v17);
  }
}

uint64_t llvm::cl::opt<llvm::PGOViewCountsType,false,llvm::cl::parser<llvm::PGOViewCountsType>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

llvm::raw_ostream *llvm::cl::opt<llvm::PGOViewCountsType,false,llvm::cl::parser<llvm::PGOViewCountsType>>::printOptionValue(llvm::raw_ostream *result, int a2, int a3)
{
  if (a3)
  {
    v3 = *(result + 32);
LABEL_3:
    v4 = &unk_2883EE3F8;
    v6 = 1;
    v5 = v3;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 152), result, &v4, (result + 136), a2);
  }

  if (*(result + 148) == 1)
  {
    v3 = *(result + 32);
    if (*(result + 36) != v3)
    {
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t llvm::cl::opt<llvm::PGOViewCountsType,false,llvm::cl::parser<llvm::PGOViewCountsType>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    v1 = *(result + 144);
  }

  else
  {
    v1 = 0;
  }

  *(result + 128) = v1;
  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::PGOViewCountsType const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::cl::parser<llvm::PGOViewCountsType>::~parser(void *a1)
{
  *a1 = &unk_2883EE3A8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::cl::parser<llvm::PGOViewCountsType>::getOption(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 16) + 48 * a2);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t llvm::cl::parser<llvm::PGOViewCountsType>::getDescription(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 48 * a2;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

unsigned int *llvm::SmallVectorImpl<llvm::cl::OptionEnumValue>::append<llvm::cl::OptionEnumValue const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v5 = result;
  v6 = a3 - __src;
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - __src) >> 3);
  v8 = result[2];
  if (v7 + v8 > result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v7 + v8, 40);
    LODWORD(v8) = v5[2];
  }

  if (__src != a3)
  {
    result = memcpy((*v5 + 40 * v8), __src, v6);
    LODWORD(v8) = v5[2];
  }

  v5[2] = v8 + v7;
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::GVDAGType>::OptionInfo,false>::grow(unint64_t a1)
{
  v9 = 0;
  v1 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&qword_2815A7060, &unk_2815A7070, a1, 48, &v9);
  v2 = qword_2815A7060;
  if (qword_2815A7068)
  {
    v3 = qword_2815A7060 + 48 * qword_2815A7068;
    v4 = v1 + 32;
    v5 = v1;
    do
    {
      v6 = v2[1];
      *v5 = *v2;
      *(v5 + 1) = v6;
      *(v5 + 4) = &unk_2883EE320;
      v7 = *(v2 + 10);
      v5[44] = *(v2 + 44);
      *(v5 + 10) = v7;
      *(v5 + 4) = &unk_2883EE300;
      v5 += 48;
      v2 += 3;
      v4 += 48;
    }

    while (v2 != v3);
    v2 = qword_2815A7060;
  }

  v8 = v9;
  if (v2 != &unk_2815A7070)
  {
    free(v2);
  }

  qword_2815A7060 = v1;
  HIDWORD(qword_2815A7068) = v8;
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::PGOViewCountsType>::OptionInfo,false>::grow(unint64_t a1)
{
  v9 = 0;
  v1 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&qword_2815A72B8, &unk_2815A72C8, a1, 48, &v9);
  v2 = qword_2815A72B8;
  if (qword_2815A72C0)
  {
    v3 = qword_2815A72B8 + 48 * qword_2815A72C0;
    v4 = v1 + 32;
    v5 = v1;
    do
    {
      v6 = v2[1];
      *v5 = *v2;
      *(v5 + 1) = v6;
      *(v5 + 4) = &unk_2883EE418;
      v7 = *(v2 + 10);
      v5[44] = *(v2 + 44);
      *(v5 + 10) = v7;
      *(v5 + 4) = &unk_2883EE3F8;
      v5 += 48;
      v2 += 3;
      v4 += 48;
    }

    while (v2 != v3);
    v2 = qword_2815A72B8;
  }

  v8 = v9;
  if (v2 != &unk_2815A72C8)
  {
    free(v2);
  }

  qword_2815A72B8 = v1;
  HIDWORD(qword_2815A72C0) = v8;
}

llvm::cl::Option *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [10],llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden,llvm::cl::desc>(llvm::cl::Option *a1, char *a2, _BYTE **a3, _WORD *a4, __n128 *a5)
{
  v10 = llvm::cl::Option::Option(a1, 0, 0);
  *(v10 + 128) = 0;
  *(v10 + 136) = &unk_2883EAB68;
  *(v10 + 144) = 0;
  *v10 = &unk_2883EAB00;
  *(v10 + 152) = &unk_2883EA848;
  *(v10 + 160) = &unk_2883EAB88;
  *(v10 + 184) = v10 + 160;
  llvm::cl::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>,char [10],llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden,llvm::cl::desc>(v10, a2, a3, a4, a5);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

__n128 llvm::cl::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>,char [10],llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden,llvm::cl::desc>(uint64_t a1, char *__s, _BYTE **a3, _WORD *a4, __n128 *a5)
{
  v10 = strlen(__s);
  llvm::cl::Option::setArgStr(a1, __s, v10);
  v11 = *a3;
  *(a1 + 128) = **a3;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v11;
  *(a1 + 10) = (32 * (*a4 & 3)) | *(a1 + 10) & 0xFF9F;
  result = *a5;
  *(a1 + 32) = *a5;
  return result;
}

llvm::cl::Option *llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<char [20],llvm::cl::OptionHidden,llvm::cl::desc>(llvm::cl::Option *a1, char *a2, _WORD *a3, __n128 *a4)
{
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 128) = 0;
  *(v8 + 136) = 0;
  *(v8 + 168) = 0;
  *(v8 + 176) = 0;
  *(v8 + 160) = 0;
  *(v8 + 184) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = &unk_2883EA828;
  *v8 = &unk_2883EAA98;
  *(v8 + 192) = &unk_2883EA998;
  *(v8 + 200) = &unk_2883EE4C8;
  *(v8 + 224) = v8 + 200;
  llvm::cl::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>,char [20],llvm::cl::OptionHidden,llvm::cl::desc>(v8, a2, a3, a4);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

__n128 llvm::cl::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>,char [20],llvm::cl::OptionHidden,llvm::cl::desc>(uint64_t a1, char *__s, _WORD *a3, __n128 *a4)
{
  v8 = strlen(__s);
  llvm::cl::Option::setArgStr(a1, __s, v8);
  *(a1 + 10) = (32 * (*a3 & 3)) | *(a1 + 10) & 0xFF9F;
  result = *a4;
  *(a1 + 32) = *a4;
  return result;
}

void *llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(uint64_t a1, int a2)
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
  result = operator new(4 * v8, 4uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {

    return memset(result, 255, 4 * v10);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::moveFromOldBuckets(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    result = memset(*result, 255, 4 * v6);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFD)
    {
      v7 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(v5, a2, &v7);
      *v7 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 4 * v6);
    v8 = *v7;
    if (*a2 == *v7)
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
        v7 = (v4 + 4 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 4 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
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

  llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t _GLOBAL__sub_I_BlockFrequencyInfo_cpp()
{
  v51[20] = *MEMORY[0x277D85DE8];
  __src = "none";
  v33 = 4;
  LODWORD(v34) = 0;
  *(&v34 + 1) = "do not display graphs.";
  v35 = 22;
  v36 = "fraction";
  v37 = 8;
  v38 = 1;
  v39 = "display a graph using the fractional block frequency representation.";
  v40 = 68;
  v41 = "integer";
  v42 = 7;
  v43 = 2;
  v44 = "display a graph using the raw integer fractional block frequency representation.";
  v45 = 80;
  v46[0] = "count";
  v46[1] = 5;
  v47 = 3;
  v48 = "display a graph using the real profile count if available.";
  v49 = 58;
  v50.n128_u64[0] = v51;
  v50.n128_u64[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::cl::OptionEnumValue>::append<llvm::cl::OptionEnumValue const*,void>(&v50, &__src, &v50);
  v0 = llvm::cl::Option::Option(&qword_2815A6FB8, 0, 0);
  dword_2815A7038 = 0;
  qword_2815A7040 = &unk_2883EE300;
  unk_2815A7048 = 0;
  qword_2815A6FB8 = &unk_2883EE248;
  qword_2815A7050 = &unk_2883EE2B0;
  qword_2815A7058 = &qword_2815A6FB8;
  qword_2815A7060 = &unk_2815A7070;
  qword_2815A7068 = 0x800000000;
  qword_2815A71F0 = &unk_2883EE438;
  qword_2815A7208 = &qword_2815A71F0;
  llvm::cl::Option::setArgStr(v0, "view-block-freq-propagation-dags", 0x20uLL);
  word_2815A6FC2 = word_2815A6FC2 & 0xFF9F | 0x20;
  qword_2815A6FD8 = "Pop up a window to show a dag displaying how block frequencies propagation through the CFG.";
  unk_2815A6FE0 = 91;
  if (v50.n128_u32[2])
  {
    v1 = v50.n128_u64[0];
    v2 = v50.n128_u64[0] + 40 * v50.n128_u32[2];
    do
    {
      v3 = *v1;
      v4 = *(v1 + 8);
      v5 = *(v1 + 16);
      v6 = *(v1 + 24);
      __src = *v1;
      v33 = v4;
      v34 = v6;
      v35 = &unk_2883EE300;
      BYTE4(v36) = 1;
      LODWORD(v36) = v5;
      v7 = qword_2815A7060;
      if (qword_2815A7068 >= HIDWORD(qword_2815A7068))
      {
        if (qword_2815A7060 <= &__src && qword_2815A7060 + 48 * qword_2815A7068 > &__src)
        {
          v28 = &__src - qword_2815A7060;
          llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::GVDAGType>::OptionInfo,false>::grow(qword_2815A7068 + 1);
          v7 = qword_2815A7060;
          p_src = &v28[qword_2815A7060];
          goto LABEL_5;
        }

        llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::GVDAGType>::OptionInfo,false>::grow(qword_2815A7068 + 1);
        v7 = qword_2815A7060;
      }

      p_src = &__src;
LABEL_5:
      v9 = v7 + 48 * qword_2815A7068;
      v10 = *(p_src + 1);
      *v9 = *p_src;
      *(v9 + 16) = v10;
      *(v9 + 32) = &unk_2883EE320;
      v11 = *(p_src + 10);
      *(v9 + 44) = *(p_src + 44);
      *(v9 + 40) = v11;
      *(v9 + 32) = &unk_2883EE300;
      LODWORD(qword_2815A7068) = qword_2815A7068 + 1;
      llvm::cl::AddLiteralOption(qword_2815A7058, v3, v4);
      v1 += 40;
    }

    while (v1 != v2);
  }

  llvm::cl::Option::addArgument(&qword_2815A6FB8);
  if (v50.n128_u64[0] != v51)
  {
    free(v50.n128_u64[0]);
  }

  __cxa_atexit(llvm::cl::opt<llvm::GVDAGType,false,llvm::cl::parser<llvm::GVDAGType>>::~opt, &qword_2815A6FB8, &dword_274E5C000);
  v12 = llvm::cl::Option::Option(&qword_2815A6DE8, 0, 0);
  qword_2815A6E70 = 0;
  qword_2815A6E68 = 0;
  qword_2815A6E78 = 0;
  qword_2815A6E88 = 0;
  qword_2815A6E98 = 0;
  qword_2815A6E90 = 0;
  byte_2815A6EA0 = 0;
  qword_2815A6E80 = &unk_2883EA828;
  qword_2815A6DE8 = &unk_2883EAA98;
  qword_2815A6EA8 = &unk_2883EA998;
  qword_2815A6EB0 = &unk_2883EE4C8;
  qword_2815A6EC8 = &qword_2815A6EB0;
  llvm::cl::Option::setArgStr(v12, "view-bfi-func-name", 0x12uLL);
  word_2815A6DF2 = word_2815A6DF2 & 0xFF9F | 0x20;
  qword_2815A6E08 = "The option to specify the name of the function whose CFG will be displayed.";
  unk_2815A6E10 = 75;
  llvm::cl::Option::addArgument(&qword_2815A6DE8);
  __cxa_atexit(llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt, &qword_2815A6DE8, &dword_274E5C000);
  v13 = llvm::cl::Option::Option(&_MergedGlobals_22, 0, 0);
  dword_2815A6CE8 = 0;
  qword_2815A6CF0 = &unk_2883EABF0;
  *&dword_2815A6CF8 = 0;
  _MergedGlobals_22 = &unk_2883EA9C8;
  qword_2815A6D00 = &unk_2883EA8D8;
  qword_2815A6D08 = &unk_2883EE1B8;
  qword_2815A6D20 = &qword_2815A6D08;
  llvm::cl::Option::setArgStr(v13, "view-hot-freq-percent", 0x15uLL);
  dword_2815A6CE8 = 10;
  byte_2815A6CFC = 1;
  dword_2815A6CF8 = 10;
  word_2815A6C72 = word_2815A6C72 & 0xFF9F | 0x20;
  qword_2815A6C88 = "An integer in percent used to specify the hot blocks/edges to be displayed in red: a block or edge whose frequency is no less than the max frequency of the function multiplied by this percent.";
  unk_2815A6C90 = 192;
  llvm::cl::Option::addArgument(&_MergedGlobals_22);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &_MergedGlobals_22, &dword_274E5C000);
  __src = "none";
  v33 = 4;
  LODWORD(v34) = 0;
  *(&v34 + 1) = "do not show.";
  v35 = 12;
  v36 = "graph";
  v37 = 5;
  v38 = 1;
  v39 = "show a graph.";
  v40 = 13;
  v41 = "text";
  v42 = 4;
  v43 = 2;
  v44 = "show in text.";
  v45 = 13;
  v50.n128_u64[0] = v51;
  v50.n128_u64[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::cl::OptionEnumValue>::append<llvm::cl::OptionEnumValue const*,void>(&v50, &__src, v46);
  v14 = llvm::cl::Option::Option(&qword_2815A7210, 0, 0);
  dword_2815A7290 = 0;
  qword_2815A72A0 = 0;
  qword_2815A7298 = &unk_2883EE3F8;
  qword_2815A7210 = &unk_2883EE340;
  qword_2815A72B0 = v14;
  qword_2815A72A8 = &unk_2883EE3A8;
  qword_2815A72B8 = &unk_2815A72C8;
  qword_2815A72C0 = 0x800000000;
  qword_2815A7448 = &unk_2883EE480;
  qword_2815A7460 = &qword_2815A7448;
  llvm::cl::Option::setArgStr(v14, "pgo-view-counts", 0xFuLL);
  word_2815A721A = word_2815A721A & 0xFF9F | 0x20;
  qword_2815A7230 = "A BOOLean option to show CFG dag or text with block profile counts and branch probabilities right after PGO profile annotation step. The profile counts are computed using branch probabilities from the runtime profile data and block frequency propagation algorithm. To view the raw counts from the profile, use option -pgo-view-raw-counts instead. To limit graph display to only one function, use filtering option -view-bfi-func-name.";
  qword_2815A7238 = 433;
  if (v50.n128_u32[2])
  {
    v15 = v50.n128_u64[0];
    v16 = v50.n128_u64[0] + 40 * v50.n128_u32[2];
    do
    {
      v17 = *v15;
      v18 = *(v15 + 8);
      v19 = *(v15 + 16);
      v20 = *(v15 + 24);
      __src = *v15;
      v33 = v18;
      v34 = v20;
      v35 = &unk_2883EE3F8;
      BYTE4(v36) = 1;
      LODWORD(v36) = v19;
      v21 = qword_2815A72B8;
      if (qword_2815A72C0 >= HIDWORD(qword_2815A72C0))
      {
        if (qword_2815A72B8 <= &__src && qword_2815A72B8 + 48 * qword_2815A72C0 > &__src)
        {
          v29 = &__src - qword_2815A72B8;
          llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::PGOViewCountsType>::OptionInfo,false>::grow(qword_2815A72C0 + 1);
          v21 = qword_2815A72B8;
          v22 = &v29[qword_2815A72B8];
          goto LABEL_17;
        }

        llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::PGOViewCountsType>::OptionInfo,false>::grow(qword_2815A72C0 + 1);
        v21 = qword_2815A72B8;
      }

      v22 = &__src;
LABEL_17:
      v23 = v21 + 48 * qword_2815A72C0;
      v24 = *(v22 + 1);
      *v23 = *v22;
      *(v23 + 16) = v24;
      *(v23 + 32) = &unk_2883EE418;
      v25 = *(v22 + 10);
      *(v23 + 44) = *(v22 + 44);
      *(v23 + 40) = v25;
      *(v23 + 32) = &unk_2883EE3F8;
      LODWORD(qword_2815A72C0) = qword_2815A72C0 + 1;
      llvm::cl::AddLiteralOption(qword_2815A72B0, v17, v18);
      v15 += 40;
    }

    while (v15 != v16);
  }

  llvm::cl::Option::addArgument(&qword_2815A7210);
  if (v50.n128_u64[0] != v51)
  {
    free(v50.n128_u64[0]);
  }

  __cxa_atexit(llvm::cl::opt<llvm::PGOViewCountsType,false,llvm::cl::parser<llvm::PGOViewCountsType>>::~opt, &qword_2815A7210, &dword_274E5C000);
  v31 = 0;
  __src = &v31;
  v30 = 1;
  v50.n128_u64[0] = "Print the block frequency info.";
  v50.n128_u64[1] = 31;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [10],llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden,llvm::cl::desc>(&unk_2815A6D28, "print-bfi", &__src, &v30, &v50);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &unk_2815A6D28, &dword_274E5C000);
  LODWORD(__src) = 1;
  v50.n128_u64[0] = "The option to specify the name of the function whose block frequency info is printed.";
  v50.n128_u64[1] = 85;
  llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<char [20],llvm::cl::OptionHidden,llvm::cl::desc>(&unk_2815A6ED0, "print-bfi-func-name", &__src, &v50);
  result = __cxa_atexit(llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt, &unk_2815A6ED0, &dword_274E5C000);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::cl::opt<double,false,llvm::cl::parser<double>>::~opt(llvm::cl::Option *a1)
{
  *a1 = &unk_2883EE510;
  std::__function::__value_func<void ()(double const&)>::~__value_func[abi:nn200100](a1 + 168);

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883EE510;
  std::__function::__value_func<void ()(double const&)>::~__value_func[abi:nn200100](a1 + 168);
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::cl::opt<double,false,llvm::cl::parser<double>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = 0;
  v8 = parseDouble(a1, a5, a6, &v11);
  if (v8)
  {
    return v8;
  }

  *(a1 + 128) = v11;
  *(a1 + 12) = a2;
  v9 = *(a1 + 192);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v11);
    return v8;
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::opt<double,false,llvm::cl::parser<double>>::getValueExpectedFlagDefault();
}

void llvm::cl::opt<double,false,llvm::cl::parser<double>>::printOptionValue(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v5 = *(a1 + 128);
LABEL_5:
    v9 = v3;
    v10 = v4;
    v6 = *(a1 + 144);
    v8 = *(a1 + 152);
    v7[0] = &unk_2883EE578;
    v7[1] = v6;
    llvm::cl::parser<double>::printOptionDiff((a1 + 160), a1, v7, a2, v5);
    return;
  }

  if (*(a1 + 152) == 1)
  {
    v5 = *(a1 + 128);
    if (*(a1 + 144) != v5)
    {
      goto LABEL_5;
    }
  }
}

uint64_t llvm::cl::opt<double,false,llvm::cl::parser<double>>::setDefault(uint64_t result)
{
  v1 = 0;
  if (*(result + 152) == 1)
  {
    v1 = *(result + 144);
  }

  *(result + 128) = v1;
  return result;
}

uint64_t std::__function::__value_func<void ()(double const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

llvm::cl::Option *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [28],llvm::cl::OptionHidden,llvm::cl::desc>(llvm::cl::Option *a1, char *a2, _WORD *a3, __n128 *a4)
{
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 128) = 0;
  *(v8 + 136) = &unk_2883EAB68;
  *(v8 + 144) = 0;
  *v8 = &unk_2883EAB00;
  *(v8 + 152) = &unk_2883EA848;
  *(v8 + 160) = &unk_2883EAB88;
  *(v8 + 184) = v8 + 160;
  llvm::cl::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>,char [20],llvm::cl::OptionHidden,llvm::cl::desc>(v8, a2, a3, a4);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t _GLOBAL__sub_I_BlockFrequencyInfoImpl_cpp()
{
  v0 = llvm::cl::Option::Option(&llvm::CheckBFIUnknownBlockQueries, 0, 0);
  byte_2815ABBE8 = 0;
  qword_2815ABBF0 = &unk_2883EAB68;
  *&word_2815ABBF8 = 0;
  llvm::CheckBFIUnknownBlockQueries = &unk_2883EAB00;
  qword_2815ABC00 = &unk_2883EA848;
  qword_2815ABC08 = &unk_2883EAB88;
  qword_2815ABC20 = &qword_2815ABC08;
  llvm::cl::Option::setArgStr(v0, "check-bfi-unknown-block-queries", 0x1FuLL);
  byte_2815ABBE8 = 0;
  word_2815ABBF8 = 256;
  word_2815ABB72 = word_2815ABB72 & 0xFF9F | 0x20;
  qword_2815ABB88 = "Check if block frequency is queried for an unknown block for debugging missed BFI updates";
  unk_2815ABB90 = 89;
  llvm::cl::Option::addArgument(&llvm::CheckBFIUnknownBlockQueries);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &llvm::CheckBFIUnknownBlockQueries, &dword_274E5C000);
  v5 = 1;
  v4.n128_u64[0] = "Apply an iterative post-processing to infer correct BFI counts";
  v4.n128_u64[1] = 62;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [28],llvm::cl::OptionHidden,llvm::cl::desc>(&llvm::UseIterativeBFIInference, "use-iterative-bfi-inference", &v5, &v4);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &llvm::UseIterativeBFIInference, &dword_274E5C000);
  v1 = llvm::cl::Option::Option(&llvm::IterativeBFIMaxIterationsPerBlock, 0, 0);
  dword_2815ABB28 = 0;
  qword_2815ABB30 = &unk_2883EABF0;
  *&dword_2815ABB38 = 0;
  llvm::IterativeBFIMaxIterationsPerBlock = &unk_2883EA9C8;
  qword_2815ABB40 = &unk_2883EA8D8;
  qword_2815ABB48 = &unk_2883EE1B8;
  qword_2815ABB60 = &qword_2815ABB48;
  llvm::cl::Option::setArgStr(v1, "iterative-bfi-max-iterations-per-block", 0x26uLL);
  dword_2815ABB28 = 1000;
  byte_2815ABB3C = 1;
  dword_2815ABB38 = 1000;
  word_2815ABAB2 = word_2815ABAB2 & 0xFF9F | 0x20;
  qword_2815ABAC8 = "Iterative inference: maximum number of update iterations per block";
  unk_2815ABAD0 = 66;
  llvm::cl::Option::addArgument(&llvm::IterativeBFIMaxIterationsPerBlock);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &llvm::IterativeBFIMaxIterationsPerBlock, &dword_274E5C000);
  v2 = llvm::cl::Option::Option(&llvm::IterativeBFIPrecision, 0, 0);
  xmmword_2815AC1F8 = 0u;
  *&qword_2815AC208 = 0u;
  *(&xmmword_2815AC1F8 + 1) = &unk_2883EE578;
  llvm::IterativeBFIPrecision = &unk_2883EE510;
  qword_2815AC218 = &unk_2883EA938;
  qword_2815AC220 = &unk_2883EE598;
  qword_2815AC238 = &qword_2815AC220;
  llvm::cl::Option::setArgStr(v2, "iterative-bfi-precision", 0x17uLL);
  *&xmmword_2815AC1F8 = 0x3D719799812DEA11;
  byte_2815AC210 = 1;
  qword_2815AC208 = 0x3D719799812DEA11;
  word_2815AC182 = word_2815AC182 & 0xFF9F | 0x20;
  qword_2815AC198 = "Iterative inference: delta convergence precision; smaller values typically lead to better results at the cost of worsen runtime";
  unk_2815AC1A0 = 127;
  llvm::cl::Option::addArgument(&llvm::IterativeBFIPrecision);
  return __cxa_atexit(llvm::cl::opt<double,false,llvm::cl::parser<double>>::~opt, &llvm::IterativeBFIPrecision, &dword_274E5C000);
}

uint64_t **std::__tree<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::__map_value_compare<llvm::CmpInst::Predicate,std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::less<llvm::CmpInst::Predicate>,true>,std::allocator<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>>>::__emplace_hint_unique_key_args<llvm::CmpInst::Predicate,std::pair<llvm::CmpInst::Predicate const,llvm::SmallVector<llvm::BranchProbability,12u>> const&>(uint64_t **result, uint64_t *a2, unsigned int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 8), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
    }

    else
    {
      if (v5)
      {
        v6 = *a2;
        do
        {
          v7 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        v11 = a2;
        do
        {
          v7 = v11[2];
          v12 = *v7 == v11;
          v11 = v7;
        }

        while (v12);
      }

      if (*(v7 + 8) >= a3)
      {
        v14 = *v3;
        if (!*v3)
        {
          goto LABEL_38;
        }

        while (1)
        {
          while (1)
          {
            v15 = v14;
            v16 = *(v14 + 8);
            if (v16 <= a3)
            {
              break;
            }

            v14 = *v14;
            if (!*v15)
            {
              goto LABEL_38;
            }
          }

          if (v16 >= a3)
          {
            return result;
          }

          v14 = v14[1];
          if (!v14)
          {
            goto LABEL_38;
          }
        }
      }
    }

    if (v5)
    {
      v13 = v7 + 1;
    }

    else
    {
      v13 = a2;
    }

    if (!*v13)
    {
      goto LABEL_38;
    }
  }

  else if (v4 < a3)
  {
    v8 = a2[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
        v10 = v9;
      }

      while (v8);
    }

    else
    {
      v10 = a2;
      do
      {
        v17 = v10;
        v10 = v10[2];
      }

      while (*v10 != v17);
    }

    if (v10 == v3 || *(v10 + 8) > a3 || (v18 = *v3) == 0)
    {
LABEL_38:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = *(v18 + 8);
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v18;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        break;
      }

      v18 = v18[1];
      if (!v18)
      {
        goto LABEL_38;
      }
    }
  }

  return result;
}

void std::__tree<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::__map_value_compare<llvm::CmpInst::Predicate,std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::less<llvm::CmpInst::Predicate>,true>,std::allocator<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::__map_value_compare<llvm::CmpInst::Predicate,std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::less<llvm::CmpInst::Predicate>,true>,std::allocator<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>>>::destroy(*a1);
    std::__tree<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::__map_value_compare<llvm::CmpInst::Predicate,std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::less<llvm::CmpInst::Predicate>,true>,std::allocator<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2 != a1 + 7)
    {
      free(v2);
    }

    operator delete(a1);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*a1 + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *v3;
        *v3 = 0;
        if (v4)
        {
          std::default_delete<llvm::DomTreeNodeBase<llvm::BasicBlock>>::operator()[abi:nn200100](v3, v4);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }
}

uint64_t _GLOBAL__sub_I_BranchProbabilityInfo_cpp()
{
  v47[6] = *MEMORY[0x277D85DE8];
  LOBYTE(__src) = 0;
  p_src = &__src;
  LODWORD(v42) = 1;
  v23.n128_u64[0] = "Print the branch probability info.";
  v23.n128_u64[1] = 34;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [10],llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden,llvm::cl::desc>(&unk_2815A7520, "print-bpi", &p_src, &v42, &v23);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &unk_2815A7520, &dword_274E5C000);
  LODWORD(p_src) = 1;
  v23.n128_u64[0] = "The option to specify the name of the function whose branch probability info is printed.";
  v23.n128_u64[1] = 88;
  llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<char [20],llvm::cl::OptionHidden,llvm::cl::desc>(&unk_2815A75E0, "print-bpi-func-name", &p_src, &v23);
  __cxa_atexit(llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt, &unk_2815A75E0, &dword_274E5C000);
  _MergedGlobals_23 = 0x5000000000000001;
  dword_2815A7470 = 805306368;
  __src = 0x3000000050000000;
  p_src = v47;
  v46 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&p_src, &__src, &v39);
  v23.n128_u32[0] = 33;
  v23.n128_u64[1] = v25;
  v24 = 0xC00000000;
  if (v46)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v23.n128_i64[1], &p_src);
  }

  v19 = __PAIR64__(HIDWORD(_MergedGlobals_23), dword_2815A7470);
  v42 = v44;
  v43 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&v42, &v19, &v20);
  v26 = 32;
  v27 = v29;
  v28 = 0xC00000000;
  if (v43)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v27, &v42);
  }

  v0 = 0;
  qword_2815A74A0 = 0;
  qword_2815A7498 = 0;
  qword_2815A7490 = &qword_2815A7498;
  do
  {
    std::__tree<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::__map_value_compare<llvm::CmpInst::Predicate,std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::less<llvm::CmpInst::Predicate>,true>,std::allocator<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>>>::__emplace_hint_unique_key_args<llvm::CmpInst::Predicate,std::pair<llvm::CmpInst::Predicate const,llvm::SmallVector<llvm::BranchProbability,12u>> const&>(&qword_2815A7490, &qword_2815A7498, v23.n128_u32[v0]);
    v0 += 18;
  }

  while (v0 != 36);
  for (i = 0; i != -18; i -= 9)
  {
    v2 = (&v27)[i];
    if (&v29[i * 8] != v2)
    {
      free(v2);
    }
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (p_src != v47)
  {
    free(p_src);
  }

  __cxa_atexit(std::map<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>::~map[abi:nn200100], &qword_2815A7490, &dword_274E5C000);
  qword_2815A7474 = 0x3000000050000000;
  v41 = 0x5000000030000000;
  p_src = v47;
  v46 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&p_src, &v41, &v42);
  v23.n128_u32[0] = 32;
  v23.n128_u64[1] = v25;
  v24 = 0xC00000000;
  if (v46)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v23.n128_i64[1], &p_src);
  }

  v37 = qword_2815A7474;
  v42 = v44;
  v43 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&v42, &v37, &__src);
  v26 = 33;
  v27 = v29;
  v28 = 0xC00000000;
  if (v43)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v27, &v42);
  }

  v22[0] = HIDWORD(qword_2815A7474);
  v22[1] = qword_2815A7474;
  __src = v40;
  v39 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&__src, v22, &v23);
  v30 = 40;
  v31 = v33;
  v32 = 0xC00000000;
  if (v39)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v31, &__src);
  }

  v18 = qword_2815A7474;
  v19 = v21;
  v20 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&v19, &v18, &v19);
  v34 = 38;
  v35[0] = &v36;
  v35[1] = 0xC00000000;
  if (v20)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(v35, &v19);
  }

  v3 = 0;
  qword_2815A74B8 = 0;
  qword_2815A74B0 = 0;
  qword_2815A74A8 = &qword_2815A74B0;
  do
  {
    std::__tree<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::__map_value_compare<llvm::CmpInst::Predicate,std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::less<llvm::CmpInst::Predicate>,true>,std::allocator<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>>>::__emplace_hint_unique_key_args<llvm::CmpInst::Predicate,std::pair<llvm::CmpInst::Predicate const,llvm::SmallVector<llvm::BranchProbability,12u>> const&>(&qword_2815A74A8, &qword_2815A74B0, v23.n128_u32[v3]);
    v3 += 18;
  }

  while (v3 != 72);
  v4 = 288;
  do
  {
    v5 = *&v21[v4 - 8];
    if (&v21[v4 + 8] != v5)
    {
      free(v5);
    }

    v4 -= 72;
  }

  while (v4);
  if (v19 != v21)
  {
    free(v19);
  }

  if (__src != v40)
  {
    free(__src);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (p_src != v47)
  {
    free(p_src);
  }

  __cxa_atexit(std::map<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>::~map[abi:nn200100], &qword_2815A74A8, &dword_274E5C000);
  v19 = __PAIR64__(qword_2815A7474, HIDWORD(qword_2815A7474));
  p_src = v47;
  v46 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&p_src, &v19, &v20);
  v23.n128_u32[0] = 32;
  v23.n128_u64[1] = v25;
  v24 = 0xC00000000;
  if (v46)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v23.n128_i64[1], &p_src);
  }

  v41 = qword_2815A7474;
  v42 = v44;
  v43 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&v42, &v41, &v42);
  v26 = 33;
  v27 = v29;
  v28 = 0xC00000000;
  if (v43)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v27, &v42);
  }

  v37 = qword_2815A7474;
  __src = v40;
  v39 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&__src, &v37, &__src);
  v30 = 38;
  v31 = v33;
  v32 = 0xC00000000;
  if (v39)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v31, &__src);
  }

  v6 = 0;
  qword_2815A74D0 = 0;
  qword_2815A74C8 = 0;
  qword_2815A74C0 = &qword_2815A74C8;
  do
  {
    std::__tree<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::__map_value_compare<llvm::CmpInst::Predicate,std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::less<llvm::CmpInst::Predicate>,true>,std::allocator<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>>>::__emplace_hint_unique_key_args<llvm::CmpInst::Predicate,std::pair<llvm::CmpInst::Predicate const,llvm::SmallVector<llvm::BranchProbability,12u>> const&>(&qword_2815A74C0, &qword_2815A74C8, v23.n128_u32[v6]);
    v6 += 18;
  }

  while (v6 != 54);
  for (j = 0; j != -27; j -= 9)
  {
    v8 = (&v31)[j];
    if (&v33[j * 8] != v8)
    {
      free(v8);
    }
  }

  if (__src != v40)
  {
    free(__src);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (p_src != v47)
  {
    free(p_src);
  }

  __cxa_atexit(std::map<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>::~map[abi:nn200100], &qword_2815A74C0, &dword_274E5C000);
  v42 = __PAIR64__(qword_2815A7474, HIDWORD(qword_2815A7474));
  p_src = v47;
  v46 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&p_src, &v42, &v43);
  v9 = 40;
  v23.n128_u32[0] = 40;
  v23.n128_u64[1] = v25;
  v24 = 0xC00000000;
  if (v46)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v23.n128_i64[1], &p_src);
    v9 = v23.n128_u32[0];
  }

  qword_2815A74E8 = 0;
  qword_2815A74E0 = 0;
  qword_2815A74D8 = &qword_2815A74E0;
  std::__tree<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::__map_value_compare<llvm::CmpInst::Predicate,std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::less<llvm::CmpInst::Predicate>,true>,std::allocator<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>>>::__emplace_hint_unique_key_args<llvm::CmpInst::Predicate,std::pair<llvm::CmpInst::Predicate const,llvm::SmallVector<llvm::BranchProbability,12u>> const&>(&qword_2815A74D8, &qword_2815A74E0, v9);
  if (v23.n128_u64[1] != v25)
  {
    free(v23.n128_u64[1]);
  }

  if (p_src != v47)
  {
    free(p_src);
  }

  __cxa_atexit(std::map<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>::~map[abi:nn200100], &qword_2815A74D8, &dword_274E5C000);
  __src = __PAIR64__(qword_2815A7474, HIDWORD(qword_2815A7474));
  p_src = v47;
  v46 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&p_src, &__src, &v39);
  v23.n128_u32[0] = 32;
  v23.n128_u64[1] = v25;
  v24 = 0xC00000000;
  if (v46)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v23.n128_i64[1], &p_src);
  }

  v19 = qword_2815A7474;
  v42 = v44;
  v43 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&v42, &v19, &v20);
  v26 = 33;
  v27 = v29;
  v28 = 0xC00000000;
  if (v43)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v27, &v42);
  }

  v10 = 0;
  qword_2815A7500 = 0;
  qword_2815A74F8 = 0;
  qword_2815A74F0 = &qword_2815A74F8;
  do
  {
    std::__tree<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::__map_value_compare<llvm::CmpInst::Predicate,std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::less<llvm::CmpInst::Predicate>,true>,std::allocator<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>>>::__emplace_hint_unique_key_args<llvm::CmpInst::Predicate,std::pair<llvm::CmpInst::Predicate const,llvm::SmallVector<llvm::BranchProbability,12u>> const&>(&qword_2815A74F0, &qword_2815A74F8, v23.n128_u32[v10]);
    v10 += 18;
  }

  while (v10 != 36);
  for (k = 0; k != -18; k -= 9)
  {
    v12 = (&v27)[k];
    if (&v29[k * 8] != v12)
    {
      free(v12);
    }
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (p_src != v47)
  {
    free(p_src);
  }

  __cxa_atexit(std::map<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>::~map[abi:nn200100], &qword_2815A74F0, &dword_274E5C000);
  qword_2815A747C = 0x8007FFFF800;
  *algn_2815A7484 = 0x3000000050000000;
  __src = 0x8007FFFF800;
  p_src = v47;
  v46 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&p_src, &__src, &v39);
  v23.n128_u32[0] = 7;
  v23.n128_u64[1] = v25;
  v24 = 0xC00000000;
  if (v46)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v23.n128_i64[1], &p_src);
  }

  v19 = __PAIR64__(qword_2815A747C, HIDWORD(qword_2815A747C));
  v42 = v44;
  v43 = 0xC00000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(&v42, &v19, &v20);
  v26 = 8;
  v27 = v29;
  v28 = 0xC00000000;
  if (v43)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v27, &v42);
  }

  v13 = 0;
  qword_2815A7518 = 0;
  qword_2815A7510 = 0;
  qword_2815A7508 = &qword_2815A7510;
  do
  {
    std::__tree<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::__map_value_compare<llvm::CmpInst::Predicate,std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::less<llvm::CmpInst::Predicate>,true>,std::allocator<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>>>::__emplace_hint_unique_key_args<llvm::CmpInst::Predicate,std::pair<llvm::CmpInst::Predicate const,llvm::SmallVector<llvm::BranchProbability,12u>> const&>(&qword_2815A7508, &qword_2815A7510, v23.n128_u32[v13]);
    v13 += 18;
  }

  while (v13 != 36);
  for (m = 0; m != -18; m -= 9)
  {
    v15 = (&v27)[m];
    if (&v29[m * 8] != v15)
    {
      free(v15);
    }
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (p_src != v47)
  {
    free(p_src);
  }

  result = __cxa_atexit(std::map<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>::~map[abi:nn200100], &qword_2815A7508, &dword_274E5C000);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::cl::Option *llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [41],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(llvm::cl::Option *a1, char *a2, _WORD *a3, __n128 *a4, int **a5)
{
  v10 = llvm::cl::Option::Option(a1, 0, 0);
  *(v10 + 128) = 0;
  *(v10 + 136) = &unk_2883EABF0;
  *(v10 + 144) = 0;
  *v10 = &unk_2883EA9C8;
  *(v10 + 152) = &unk_2883EA8D8;
  *(v10 + 160) = &unk_2883EE1B8;
  *(v10 + 184) = v10 + 160;
  llvm::cl::apply<llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>,char [41],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(v10, a2, a3, a4, a5);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

__n128 llvm::cl::apply<llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>,char [41],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, char *__s, _WORD *a3, __n128 *a4, int **a5)
{
  v10 = strlen(__s);
  llvm::cl::Option::setArgStr(a1, __s, v10);
  *(a1 + 10) = (32 * (*a3 & 3)) | *(a1 + 10) & 0xFF9F;
  result = *a4;
  *(a1 + 32) = *a4;
  v12 = **a5;
  *(a1 + 128) = v12;
  *(a1 + 148) = 1;
  *(a1 + 144) = v12;
  return result;
}

uint64_t _GLOBAL__sub_I_CFG_cpp()
{
  v4 = 1;
  v3.n128_u64[0] = "Max number of BBs to explore for reachability analysis";
  v3.n128_u64[1] = 54;
  v1 = 32;
  v2 = &v1;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [41],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(&DefaultMaxBBsToExplore, "dom-tree-reachability-max-bbs-to-explore", &v4, &v3, &v2);
  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &DefaultMaxBBsToExplore, &dword_274E5C000);
}

uint64_t llvm::MemIntrinsic::classof(uint64_t a1)
{
  if (*(a1 + 16) != 84)
  {
    goto LABEL_8;
  }

  v1 = *(a1 - 32);
  if (v1)
  {
    if (!*(v1 + 16) && *(v1 + 24) == *(a1 + 72) && (*(v1 + 33) & 0x20) != 0)
    {
      v2 = *(v1 + 36) - 197;
      if (v2 <= 7)
      {
        LODWORD(v1) = 0xADu >> v2;
        return v1 & 1;
      }
    }

LABEL_8:
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t _GLOBAL__sub_I_CaptureTracking_cpp()
{
  v4 = 1;
  v3.n128_u64[0] = "Maximal number of uses to explore.";
  v3.n128_u64[1] = 34;
  v1 = 100;
  v2 = &v1;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [41],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(&DefaultMaxUsesToExplore, "capture-tracking-max-uses-to-explore", &v4, &v3, &v2);
  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &DefaultMaxUsesToExplore, &dword_274E5C000);
}

unint64_t llvm::PointerType::getWithSamePointeeType(uint64_t a1, llvm::Type *a2)
{
  if (*(a1 + 24))
  {
    return llvm::PointerType::get(*(a1 + 24), a2);
  }

  else
  {
    return llvm::PointerType::get(*a1, a2);
  }
}

void *llvm::APInt::getLowBitsSet@<X0>(llvm::APInt *this@<X0>, unsigned int a2@<W1>, llvm::APInt *a3@<X8>)
{
  v4 = llvm::APInt::APInt(a3, this, 0);

  return llvm::APInt::setBits(v4, 0, a2);
}

uint64_t _GLOBAL__sub_I_DependenceAnalysis_cpp()
{
  v0 = llvm::cl::Option::Option(&_MergedGlobals_24, 0, 0);
  byte_2815A7748 = 0;
  qword_2815A7750 = &unk_2883EAB68;
  *&word_2815A7758 = 0;
  _MergedGlobals_24 = &unk_2883EAB00;
  qword_2815A7760 = &unk_2883EA848;
  qword_2815A7768 = &unk_2883EAB88;
  qword_2815A7780 = &qword_2815A7768;
  llvm::cl::Option::setArgStr(v0, "da-delinearize", 0xEuLL);
  byte_2815A7748 = 1;
  word_2815A7758 = 257;
  word_2815A76D2 = word_2815A76D2 & 0xFF9F | 0x20;
  qword_2815A76E8 = "Try to delinearize array references.";
  unk_2815A76F0 = 36;
  llvm::cl::Option::addArgument(&_MergedGlobals_24);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &_MergedGlobals_24, &dword_274E5C000);
  v1 = llvm::cl::Option::Option(&qword_2815A7788, 0, 0);
  byte_2815A7808 = 0;
  qword_2815A7810 = &unk_2883EAB68;
  unk_2815A7818 = 0;
  qword_2815A7788 = &unk_2883EAB00;
  qword_2815A7820 = &unk_2883EA848;
  qword_2815A7828 = &unk_2883EAB88;
  qword_2815A7840 = &qword_2815A7828;
  llvm::cl::Option::setArgStr(v1, "da-disable-delinearization-checks", 0x21uLL);
  word_2815A7792 = word_2815A7792 & 0xFF9F | 0x20;
  qword_2815A77A8 = "Disable checks that try to statically verify validity of delinearized subscripts. Enabling this option may result in incorrect dependence vectors for languages that allow the subscript of one dimension to underflow or overflow into another dimension.";
  unk_2815A77B0 = 250;
  llvm::cl::Option::addArgument(&qword_2815A7788);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A7788, &dword_274E5C000);
  v2 = llvm::cl::Option::Option(&qword_2815A7848, 0, 0);
  dword_2815A78C8 = 0;
  qword_2815A78D8 = 0;
  qword_2815A78D0 = &unk_2883EABF0;
  qword_2815A7848 = &unk_2883EA9C8;
  qword_2815A78E0 = &unk_2883EA8D8;
  qword_2815A78E8 = &unk_2883EE1B8;
  qword_2815A7900 = &qword_2815A78E8;
  llvm::cl::Option::setArgStr(v2, "da-miv-max-level-threshold", 0x1AuLL);
  dword_2815A78C8 = 7;
  BYTE4(qword_2815A78D8) = 1;
  LODWORD(qword_2815A78D8) = 7;
  word_2815A7852 = word_2815A7852 & 0xFF9F | 0x20;
  qword_2815A7868 = "Maximum depth allowed for the recursive algorithm used to explore MIV direction vectors.";
  unk_2815A7870 = 88;
  llvm::cl::Option::addArgument(&qword_2815A7848);

  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A7848, &dword_274E5C000);
}

uint64_t _GLOBAL__sub_I_GlobalsModRef_cpp()
{
  v0 = llvm::cl::Option::Option(&EnableUnsafeGlobalsModRefAliasResults, 0, 0);
  byte_2815A47B8 = 0;
  qword_2815A47C0 = &unk_2883EAB68;
  *&word_2815A47C8 = 0;
  EnableUnsafeGlobalsModRefAliasResults = &unk_2883EAB00;
  qword_2815A47D0 = &unk_2883EA848;
  qword_2815A47D8 = &unk_2883EAB88;
  qword_2815A47F0 = &qword_2815A47D8;
  llvm::cl::Option::setArgStr(v0, "enable-unsafe-globalsmodref-alias-results", 0x29uLL);
  byte_2815A47B8 = 0;
  word_2815A47C8 = 256;
  word_2815A4742 = word_2815A4742 & 0xFF9F | 0x20;
  llvm::cl::Option::addArgument(&EnableUnsafeGlobalsModRefAliasResults);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &EnableUnsafeGlobalsModRefAliasResults, &dword_274E5C000);
}

uint64_t llvm::MapVector<llvm::Instruction *,llvm::Instruction *,llvm::DenseMap<llvm::Instruction *,unsigned int,llvm::DenseMapInfo<llvm::Instruction *,void>,llvm::detail::DenseMapPair<llvm::Instruction *,unsigned int>>,std::vector<std::pair<llvm::Instruction *,llvm::Instruction *>>>::operator[](void *a1, uint64_t *a2)
{
  v24 = *a2;
  v25 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::Instruction *,unsigned int,llvm::DenseMapInfo<llvm::Instruction *,void>,llvm::detail::DenseMapPair<llvm::Instruction *,unsigned int>>,llvm::Instruction *,unsigned int,llvm::DenseMapInfo<llvm::Instruction *,void>,llvm::detail::DenseMapPair<llvm::Instruction *,unsigned int>>::try_emplace<unsigned int const&>(a1, &v24, &v25, &v22);
  v4 = v22;
  if (v23)
  {
    v5 = *a2;
    v7 = a1[4];
    v6 = a1[5];
    if (v7 >= v6)
    {
      v11 = a1[3];
      v12 = (v7 - v11) >> 4;
      v13 = v12 + 1;
      if ((v12 + 1) >> 60)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v14 = v6 - v11;
      if (v14 >> 3 > v13)
      {
        v13 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<llvm::orc::DefinitionGenerator>>>((a1 + 3), v15);
      }

      v16 = (16 * v12);
      *v16 = v5;
      v16[1] = 0;
      v8 = 16 * v12 + 16;
      v17 = a1[3];
      v18 = a1[4] - v17;
      v19 = v16 - v18;
      memcpy(v16 - v18, v17, v18);
      v20 = a1[3];
      a1[3] = v19;
      a1[4] = v8;
      a1[5] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v7 = v5;
      v7[1] = 0;
      v8 = (v7 + 2);
    }

    a1[4] = v8;
    v10 = a1[3];
    v9 = ((v8 - v10) >> 4) - 1;
    *(v4 + 8) = v9;
  }

  else
  {
    v9 = *(v22 + 8);
    v10 = a1[3];
  }

  return v10 + 16 * v9 + 8;
}

uint64_t llvm::MapVector<llvm::Instruction *,llvm::Instruction *,llvm::DenseMap<llvm::Instruction *,unsigned int,llvm::DenseMapInfo<llvm::Instruction *,void>,llvm::detail::DenseMapPair<llvm::Instruction *,unsigned int>>,std::vector<std::pair<llvm::Instruction *,llvm::Instruction *>>>::find(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, &v4, &v5) || v5 == *a1 + 16 * *(a1 + 16))
  {
    return *(a1 + 32);
  }

  else
  {
    return *(a1 + 24) + 16 * *(v5 + 8);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Instruction *,unsigned int,llvm::DenseMapInfo<llvm::Instruction *,void>,llvm::detail::DenseMapPair<llvm::Instruction *,unsigned int>>,llvm::Instruction *,unsigned int,llvm::DenseMapInfo<llvm::Instruction *,void>,llvm::detail::DenseMapPair<llvm::Instruction *,unsigned int>>::try_emplace<unsigned int const&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::InsertIntoBucketImpl<llvm::Value const*>(a1, a2, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

llvm::cl::Option *llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [28],llvm::cl::initializer<int>,llvm::cl::OptionHidden,llvm::cl::desc>(llvm::cl::Option *a1, char *a2, int **a3, _WORD *a4, __n128 *a5)
{
  v10 = llvm::cl::Option::Option(a1, 0, 0);
  *(v10 + 128) = 0;
  *(v10 + 136) = &unk_2883EABF0;
  *(v10 + 144) = 0;
  *v10 = &unk_2883EA9C8;
  *(v10 + 152) = &unk_2883EA8D8;
  *(v10 + 160) = &unk_2883EE1B8;
  *(v10 + 184) = v10 + 160;
  llvm::cl::apply<llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>,char [28],llvm::cl::initializer<int>,llvm::cl::OptionHidden,llvm::cl::desc>(v10, a2, a3, a4, a5);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

__n128 llvm::cl::apply<llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>,char [28],llvm::cl::initializer<int>,llvm::cl::OptionHidden,llvm::cl::desc>(uint64_t a1, char *__s, int **a3, _WORD *a4, __n128 *a5)
{
  v10 = strlen(__s);
  llvm::cl::Option::setArgStr(a1, __s, v10);
  v11 = **a3;
  *(a1 + 128) = v11;
  *(a1 + 148) = 1;
  *(a1 + 144) = v11;
  *(a1 + 10) = (32 * (*a4 & 3)) | *(a1 + 10) & 0xFF9F;
  result = *a5;
  *(a1 + 32) = *a5;
  return result;
}

uint64_t _GLOBAL__sub_I_IndirectCallPromotionAnalysis_cpp()
{
  v0 = llvm::cl::Option::Option(&_MergedGlobals_25, 0, 0);
  dword_2815A7988 = 0;
  qword_2815A7990 = &unk_2883EABF0;
  *&dword_2815A7998 = 0;
  _MergedGlobals_25 = &unk_2883EA9C8;
  qword_2815A79A0 = &unk_2883EA8D8;
  qword_2815A79A8 = &unk_2883EE1B8;
  qword_2815A79C0 = &qword_2815A79A8;
  llvm::cl::Option::setArgStr(v0, "icp-remaining-percent-threshold", 0x1FuLL);
  dword_2815A7988 = 30;
  byte_2815A799C = 1;
  dword_2815A7998 = 30;
  word_2815A7912 = word_2815A7912 & 0xFF9F | 0x20;
  qword_2815A7928 = "The percentage threshold against remaining unpromoted indirect call count for the promotion";
  unk_2815A7930 = 91;
  llvm::cl::Option::addArgument(&_MergedGlobals_25);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &_MergedGlobals_25, &dword_274E5C000);
  v4 = 1;
  v5 = 5;
  v6 = &v5;
  v3.n128_u64[0] = "The percentage threshold against total count for the promotion";
  v3.n128_u64[1] = 62;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [28],llvm::cl::initializer<int>,llvm::cl::OptionHidden,llvm::cl::desc>(&unk_2815A79C8, "icp-total-percent-threshold", &v6, &v4, &v3);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &unk_2815A79C8, &dword_274E5C000);
  v1 = llvm::cl::Option::Option(&qword_2815A7A88, 0, 0);
  dword_2815A7B08 = 0;
  qword_2815A7B18 = 0;
  qword_2815A7B10 = &unk_2883EABF0;
  qword_2815A7A88 = &unk_2883EA9C8;
  qword_2815A7B20 = &unk_2883EA8D8;
  qword_2815A7B28 = &unk_2883EE1B8;
  qword_2815A7B40 = &qword_2815A7B28;
  llvm::cl::Option::setArgStr(v1, "icp-max-prom", 0xCuLL);
  dword_2815A7B08 = 3;
  BYTE4(qword_2815A7B18) = 1;
  LODWORD(qword_2815A7B18) = 3;
  word_2815A7A92 = word_2815A7A92 & 0xFF9F | 0x20;
  qword_2815A7AA8 = "Max number of promotions for a single indirect call callsite";
  unk_2815A7AB0 = 60;
  llvm::cl::Option::addArgument(&qword_2815A7A88);
  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A7A88, &dword_274E5C000);
}

llvm::APInt **llvm::APInt::shl@<X0>(llvm::APInt *this@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
  *(a3 + 8) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *a3 = *this;
  LimitedValue = llvm::APInt::getLimitedValue(a2, v4);

  return llvm::APInt::operator<<=(a3, LimitedValue);
}

uint64_t llvm::PatternMatch::cstval_pred_ty<llvm::PatternMatch::is_one,llvm::ConstantInt>::match<llvm::Constant>(uint64_t a1, llvm::Constant *a2)
{
  if (a2 && *(a2 + 16) == 16)
  {
    v3 = *(a2 + 8);
    if (v3 <= 0x40)
    {
      v4 = *(a2 + 3);
LABEL_5:
      v5 = v4 == 1;
      goto LABEL_17;
    }

    v10 = llvm::APInt::countLeadingZerosSlowCase((a2 + 24));
    v11 = v3 - 1;
    goto LABEL_16;
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = (*(*a2 + 8) & 0xFE) == 18;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
LABEL_33:
    v12 = 0;
    return v12 & 1;
  }

  SplatValue = llvm::Constant::getSplatValue(a2, 0);
  if (!SplatValue || *(SplatValue + 16) != 16)
  {
    if (*(v6 + 8) == 18)
    {
      v13 = *(v6 + 32);
      if (v13)
      {
        v14 = 0;
        v12 = 0;
        while (1)
        {
          AggregateElement = llvm::Constant::getAggregateElement(a2, v14);
          if (!AggregateElement)
          {
            break;
          }

          v16 = *(AggregateElement + 16);
          if ((v16 - 11) >= 2)
          {
            if (v16 != 16)
            {
              goto LABEL_33;
            }

            v17 = *(AggregateElement + 32);
            if (v17 > 0x40)
            {
              if (llvm::APInt::countLeadingZerosSlowCase((AggregateElement + 24)) != v17 - 1)
              {
                goto LABEL_33;
              }
            }

            else if (*(AggregateElement + 24) != 1)
            {
              goto LABEL_33;
            }

            v12 = 1;
          }

          v14 = (v14 + 1);
          if (v13 == v14)
          {
            return v12 & 1;
          }
        }
      }
    }

    goto LABEL_33;
  }

  v9 = *(SplatValue + 32);
  if (v9 <= 0x40)
  {
    v4 = *(SplatValue + 24);
    goto LABEL_5;
  }

  v10 = llvm::APInt::countLeadingZerosSlowCase((SplatValue + 24));
  v11 = v9 - 1;
LABEL_16:
  v5 = v10 == v11;
LABEL_17:
  v12 = v5;
  return v12 & 1;
}