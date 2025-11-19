void anonymous namespace::AssemblyWriter::printGlobal(llvm::raw_ostream **this, uint64_t ***a2)
{
  v77 = *MEMORY[0x277D85DE8];
  if (a2 && !*(a2 + 16) && (*(a2 + 35) & 1) != 0)
  {
    v4 = *this;
    v5 = *(*this + 4);
    if ((*(*this + 3) - v5) > 0x10)
    {
      *(v5 + 16) = 10;
      *v5 = *"; Materializable\n";
      *(v4 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(v4, "; Materializable\n", 0x11uLL);
    }
  }

  v6 = this[4];
  v7 = a2[5];
  v72[0] = &unk_2883F1008;
  v72[1] = (this + 5);
  v72[2] = v6;
  v72[3] = v7;
  WriteAsOperandInternal(*this, a2, v72);
  v8 = *this;
  v9 = *(*this + 4);
  if ((*(*this + 3) - v9) > 2)
  {
    *(v9 + 2) = 32;
    *v9 = 15648;
    *(v8 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v8, " = ", 3uLL);
  }

  if (*(a2 + 16))
  {
    if (*(a2 + 16) != 3 || (*(a2 + 5) & 0x7FFFFFF) != 0)
    {
      goto LABEL_20;
    }

    v10 = *(a2 + 8);
  }

  else
  {
    if (a2[9] != (a2 + 9))
    {
      goto LABEL_20;
    }

    v10 = *(a2 + 8);
    if ((v10 & 0x1000000) != 0)
    {
      goto LABEL_20;
    }
  }

  if ((v10 & 0xF) == 0)
  {
    v11 = *this;
    v12 = *(*this + 4);
    if ((*(*this + 3) - v12) > 8)
    {
      *(v12 + 8) = 32;
      *v12 = *"external ";
      *(v11 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v11, "external ", 9uLL);
    }
  }

LABEL_20:
  v13 = *this;
  getLinkageNameWithSpace(&__p, a2[4] & 0xF);
  if ((v76 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v76 & 0x80u) == 0)
  {
    v15 = v76;
  }

  else
  {
    v15 = v74;
  }

  llvm::raw_ostream::write(v13, p_p, v15);
  if (v76 < 0)
  {
    operator delete(__p);
  }

  PrintDSOLocation(a2, *this);
  v16 = *(a2 + 8);
  v17 = (v16 >> 4) & 3;
  v18 = *this;
  if (v17 == 1)
  {
    v19 = "hidden ";
    v20 = 7;
  }

  else
  {
    if (v17 != 2)
    {
      goto LABEL_33;
    }

    v19 = "protected ";
    v20 = 10;
  }

  llvm::raw_ostream::operator<<(*this, v19, v20);
  v16 = *(a2 + 8);
  v18 = *this;
LABEL_33:
  v21 = (v16 >> 8) & 3;
  if (v21 == 1)
  {
    v22 = "dllimport ";
  }

  else
  {
    if (v21 != 2)
    {
      goto LABEL_38;
    }

    v22 = "dllexport ";
  }

  llvm::raw_ostream::operator<<(v18, v22, 0xAuLL);
  v16 = *(a2 + 8);
  v18 = *this;
LABEL_38:
  PrintThreadLocalModel(((v16 >> 10) & 7), v18);
  if (*(a2 + 8) >> 6)
  {
    if (*(a2 + 8) >> 6 == 1)
    {
      v23 = "local_unnamed_addr";
      v24 = 18;
    }

    else
    {
      v23 = "unnamed_addr";
      v24 = 12;
    }

    v25 = llvm::raw_ostream::operator<<(*this, v23, v24);
    v26 = *(v25 + 4);
    if (v26 >= *(v25 + 3))
    {
      llvm::raw_ostream::write(v25, 32);
    }

    else
    {
      *(v25 + 4) = v26 + 1;
      *v26 = 32;
    }
  }

  v27 = *(*a2 + 2);
  if (v27 >= 0x100)
  {
    v28 = v27 >> 8;
    v29 = *this;
    v30 = *(*this + 4);
    if ((*(*this + 3) - v30) > 9)
    {
      *(v30 + 8) = 10341;
      *v30 = *"addrspace(";
      *(v29 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(*this, "addrspace(", 0xAuLL);
    }

    write_unsigned<unsigned long>(v29, v28, 0, 0, 0);
    v31 = *(v29 + 4);
    if (*(v29 + 3) - v31 > 1uLL)
    {
      *v31 = 8233;
      *(v29 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v29, ") ", 2uLL);
    }
  }

  v32 = *(a2 + 80);
  if ((v32 & 2) != 0)
  {
    v33 = *this;
    v34 = *(*this + 4);
    if (*(*this + 3) - v34 > 0x16uLL)
    {
      qmemcpy(v34, "externally_initialized ", 23);
      *(v33 + 4) += 23;
    }

    else
    {
      llvm::raw_ostream::write(v33, "externally_initialized ", 0x17uLL);
    }

    v32 = *(a2 + 80);
  }

  if (v32)
  {
    v35 = 9;
  }

  else
  {
    v35 = 7;
  }

  if (v32)
  {
    v36 = "constant ";
  }

  else
  {
    v36 = "global ";
  }

  llvm::raw_ostream::operator<<(*this, v36, v35);
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 3 && (*(a2 + 5) & 0x7FFFFFF) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (a2[9] == (a2 + 9) && (*(a2 + 35) & 1) == 0)
  {
    goto LABEL_73;
  }

  v37 = *this;
  v38 = *(*this + 4);
  if (v38 >= *(*this + 3))
  {
    llvm::raw_ostream::write(v37, 32);
  }

  else
  {
    *(v37 + 4) = v38 + 1;
    *v38 = 32;
  }

LABEL_73:
  if ((*(a2 + 34) & 0x80) != 0)
  {
    v39 = *this;
    v40 = *(*this + 4);
    if ((*(*this + 3) - v40) > 0xA)
    {
      *(v40 + 7) = 572550767;
      *v40 = *", section ";
      *(v39 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v39, ", section ", 0xBuLL);
    }

    if ((*(a2 + 34) & 0x80) != 0)
    {
      v43 = ***a2;
      __p = a2;
      v44 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::FindAndConstruct((v43 + 2552), &__p);
      v41 = v44[1];
      v42 = v44[2];
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    llvm::printEscapedString(v41, v42, *this);
    v45 = *this;
    v46 = *(*this + 4);
    if (v46 >= *(*this + 3))
    {
      llvm::raw_ostream::write(v45, 34);
    }

    else
    {
      *(v45 + 4) = v46 + 1;
      *v46 = 34;
    }
  }

  if ((*(a2 + 33) & 0x80) != 0)
  {
    v47 = *this;
    v48 = *(*this + 4);
    if (*(*this + 3) - v48 > 0xCuLL)
    {
      qmemcpy(v48, ", partition ", 13);
      *(v47 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v47, ", partition ", 0xDuLL);
    }

    Partition = llvm::GlobalValue::getPartition(a2);
    llvm::printEscapedString(Partition, v50, *this);
    v51 = *this;
    v52 = *(*this + 4);
    if (v52 >= *(*this + 3))
    {
      llvm::raw_ostream::write(v51, 34);
    }

    else
    {
      *(v51 + 4) = v52 + 1;
      *v52 = 34;
    }
  }

  if (*(a2 + 34))
  {
    v53 = ***a2;
    __p = a2;
    v54 = *(llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>,llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>::FindAndConstruct((v53 + 2600), &__p) + 8);
    if ((v54 & 1) == 0)
    {
      if ((v54 & 2) == 0)
      {
        goto LABEL_93;
      }

LABEL_102:
      v59 = *this;
      v60 = *(*this + 4);
      if (*(*this + 3) - v60 > 0x16uLL)
      {
        qmemcpy(v60, ", no_sanitize_hwaddress", 23);
        *(v59 + 4) += 23;
        if ((v54 & 4) != 0)
        {
          goto LABEL_106;
        }
      }

      else
      {
        llvm::raw_ostream::write(v59, ", no_sanitize_hwaddress", 0x17uLL);
        if ((v54 & 4) != 0)
        {
          goto LABEL_106;
        }
      }

LABEL_94:
      if ((v54 & 8) == 0)
      {
        goto LABEL_110;
      }

LABEL_95:
      v55 = *this;
      v56 = *(*this + 4);
      if (*(*this + 3) - v56 > 0x19uLL)
      {
        qmemcpy(v56, ", sanitize_address_dyninit", 26);
        *(v55 + 4) += 26;
      }

      else
      {
        llvm::raw_ostream::write(v55, ", sanitize_address_dyninit", 0x1AuLL);
      }

      goto LABEL_110;
    }

    v57 = *this;
    v58 = *(*this + 4);
    if (*(*this + 3) - v58 > 0x14uLL)
    {
      qmemcpy(v58, ", no_sanitize_address", 21);
      *(v57 + 4) += 21;
      if ((v54 & 2) != 0)
      {
        goto LABEL_102;
      }
    }

    else
    {
      llvm::raw_ostream::write(v57, ", no_sanitize_address", 0x15uLL);
      if ((v54 & 2) != 0)
      {
        goto LABEL_102;
      }
    }

LABEL_93:
    if ((v54 & 4) == 0)
    {
      goto LABEL_94;
    }

LABEL_106:
    v61 = *this;
    v62 = *(*this + 4);
    if ((*(*this + 3) - v62) > 0x10)
    {
      *(v62 + 16) = 103;
      *v62 = *", sanitize_memtag";
      *(v61 + 4) += 17;
      if ((v54 & 8) == 0)
      {
        goto LABEL_110;
      }
    }

    else
    {
      llvm::raw_ostream::write(v61, ", sanitize_memtag", 0x11uLL);
      if ((v54 & 8) == 0)
      {
        goto LABEL_110;
      }
    }

    goto LABEL_95;
  }

LABEL_110:
  maybePrintComdat(*this, a2);
  v63 = (*(a2 + 8) >> 17) & 0x3F;
  if (v63)
  {
    v64 = v63 - 1;
    v65 = *this;
    v66 = *(*this + 4);
    if (*(*this + 3) - v66 > 7uLL)
    {
      *v66 = 0x206E67696C61202CLL;
      *(v65 + 4) += 8;
    }

    else
    {
      v65 = llvm::raw_ostream::write(v65, ", align ", 8uLL);
    }

    write_unsigned<unsigned long>(v65, 1 << v64, 0, 0, 0);
  }

  __p = v75;
  v74 = 0x400000000;
  llvm::Value::getAllMetadata(a2, &__p);
  v67 = a2[9];
  if (v67)
  {
    v68 = *this;
    v69 = *(*this + 4);
    if (*(*this + 3) - v69 > 1uLL)
    {
      *v69 = 8992;
      *(v68 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(*this, " #", 2uLL);
    }

    AttributeGroupSlot = llvm::SlotTracker::getAttributeGroupSlot(this[4], v67);
    llvm::write_integer(v68, AttributeGroupSlot, 0, 0);
  }

  if (__p != v75)
  {
    free(__p);
  }

  v71 = *MEMORY[0x277D85DE8];
}

llvm::raw_ostream *anonymous namespace::AssemblyWriter::printAlias(llvm::raw_ostream **a1, uint64_t a2)
{
  if (a2 && !*(a2 + 16) && (*(a2 + 35) & 1) != 0)
  {
    v4 = *a1;
    v5 = *(*a1 + 4);
    if ((*(*a1 + 3) - v5) > 0x10)
    {
      *(v5 + 16) = 10;
      *v5 = *"; Materializable\n";
      *(v4 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(v4, "; Materializable\n", 0x11uLL);
    }
  }

  v6 = a1[4];
  v7 = *(a2 + 40);
  v41[0] = &unk_2883F1008;
  v41[1] = (a1 + 5);
  v41[2] = v6;
  v41[3] = v7;
  WriteAsOperandInternal(*a1, a2, v41);
  v8 = *a1;
  v9 = *(*a1 + 4);
  if ((*(*a1 + 3) - v9) > 2)
  {
    *(v9 + 2) = 32;
    *v9 = 15648;
    *(v8 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v8, " = ", 3uLL);
  }

  v10 = *a1;
  getLinkageNameWithSpace(__p, *(a2 + 32) & 0xF);
  if ((v40 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v12 = v40;
  }

  else
  {
    v12 = __p[1];
  }

  llvm::raw_ostream::write(v10, v11, v12);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  PrintDSOLocation(a2, *a1);
  v13 = *(a2 + 32);
  v14 = (v13 >> 4) & 3;
  v15 = *a1;
  if (v14 == 1)
  {
    v16 = "hidden ";
    v17 = 7;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_23;
    }

    v16 = "protected ";
    v17 = 10;
  }

  llvm::raw_ostream::operator<<(*a1, v16, v17);
  v13 = *(a2 + 32);
  v15 = *a1;
LABEL_23:
  v18 = (v13 >> 8) & 3;
  if (v18 == 1)
  {
    v19 = "dllimport ";
  }

  else
  {
    if (v18 != 2)
    {
      goto LABEL_28;
    }

    v19 = "dllexport ";
  }

  llvm::raw_ostream::operator<<(v15, v19, 0xAuLL);
  v13 = *(a2 + 32);
  v15 = *a1;
LABEL_28:
  PrintThreadLocalModel(((v13 >> 10) & 7), v15);
  if (*(a2 + 32) >> 6)
  {
    if (*(a2 + 32) >> 6 == 1)
    {
      v20 = "local_unnamed_addr";
      v21 = 18;
    }

    else
    {
      v20 = "unnamed_addr";
      v21 = 12;
    }

    v22 = llvm::raw_ostream::operator<<(*a1, v20, v21);
    v23 = *(v22 + 4);
    if (v23 >= *(v22 + 3))
    {
      llvm::raw_ostream::write(v22, 32);
    }

    else
    {
      *(v22 + 4) = v23 + 1;
      *v23 = 32;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 4);
  if ((*(*a1 + 3) - v25) > 5)
  {
    *(v25 + 4) = 8307;
    *v25 = 1634298977;
    *(v24 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v24, "alias ", 6uLL);
  }

  v26 = *a1;
  v27 = *(*a1 + 4);
  if (*(*a1 + 3) - v27 > 1uLL)
  {
    *v27 = 8236;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, ", ", 2uLL);
  }

  v28 = *(a2 - 32);
  if (v28)
  {
  }

  else
  {
    v29 = *a1;
    v30 = *(*a1 + 4);
    if ((*(*a1 + 3) - v30) > 0x10)
    {
      *(v30 + 16) = 62;
      *v30 = *" <<NULL ALIASEE>>";
      *(v29 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(v29, " <<NULL ALIASEE>>", 0x11uLL);
    }
  }

  if ((*(a2 + 33) & 0x80) != 0)
  {
    v31 = *a1;
    v32 = *(*a1 + 4);
    if (*(*a1 + 3) - v32 > 0xCuLL)
    {
      qmemcpy(v32, ", partition ", 13);
      *(v31 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v31, ", partition ", 0xDuLL);
    }

    Partition = llvm::GlobalValue::getPartition(a2);
    llvm::printEscapedString(Partition, v34, *a1);
    v35 = *a1;
    v36 = *(*a1 + 4);
    if (v36 >= *(*a1 + 3))
    {
      llvm::raw_ostream::write(v35, 34);
    }

    else
    {
      *(v35 + 4) = v36 + 1;
      *v36 = 34;
    }
  }

  result = *a1;
  v38 = *(*a1 + 4);
  if (v38 >= *(*a1 + 3))
  {
    return llvm::raw_ostream::write(result, 10);
  }

  *(result + 4) = v38 + 1;
  *v38 = 10;
  return result;
}

llvm::raw_ostream *anonymous namespace::AssemblyWriter::printIFunc(llvm::raw_ostream **a1, uint64_t a2)
{
  if (a2 && !*(a2 + 16) && (*(a2 + 35) & 1) != 0)
  {
    v4 = *a1;
    v5 = *(*a1 + 4);
    if ((*(*a1 + 3) - v5) > 0x10)
    {
      *(v5 + 16) = 10;
      *v5 = *"; Materializable\n";
      *(v4 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(v4, "; Materializable\n", 0x11uLL);
    }
  }

  v6 = a1[4];
  v7 = *(a2 + 40);
  v33[0] = &unk_2883F1008;
  v33[1] = (a1 + 5);
  v33[2] = v6;
  v33[3] = v7;
  WriteAsOperandInternal(*a1, a2, v33);
  v8 = *a1;
  v9 = *(*a1 + 4);
  if ((*(*a1 + 3) - v9) > 2)
  {
    *(v9 + 2) = 32;
    *v9 = 15648;
    *(v8 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v8, " = ", 3uLL);
  }

  v10 = *a1;
  getLinkageNameWithSpace(__p, *(a2 + 32) & 0xF);
  if ((v32 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v32 & 0x80u) == 0)
  {
    v12 = v32;
  }

  else
  {
    v12 = __p[1];
  }

  llvm::raw_ostream::write(v10, v11, v12);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  PrintDSOLocation(a2, *a1);
  v13 = (*(a2 + 32) >> 4) & 3;
  v14 = *a1;
  if (v13 == 1)
  {
    v15 = "hidden ";
    v16 = 7;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_23;
    }

    v15 = "protected ";
    v16 = 10;
  }

  llvm::raw_ostream::operator<<(v14, v15, v16);
  v14 = *a1;
LABEL_23:
  v17 = *(v14 + 4);
  if ((*(v14 + 3) - v17) > 5)
  {
    *(v17 + 4) = 8291;
    *v17 = 1853187689;
    *(v14 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v14, "ifunc ", 6uLL);
  }

  v18 = *a1;
  v19 = *(*a1 + 4);
  if (*(*a1 + 3) - v19 > 1uLL)
  {
    *v19 = 8236;
    *(v18 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, ", ", 2uLL);
  }

  v20 = *(a2 - 32);
  if (v20)
  {
  }

  else
  {
    v21 = *a1;
    v22 = *(*a1 + 4);
    if ((*(*a1 + 3) - v22) > 0x11)
    {
      *(v22 + 16) = 15934;
      *v22 = *" <<NULL RESOLVER>>";
      *(v21 + 4) += 18;
    }

    else
    {
      llvm::raw_ostream::write(v21, " <<NULL RESOLVER>>", 0x12uLL);
    }
  }

  if ((*(a2 + 33) & 0x80) != 0)
  {
    v23 = *a1;
    v24 = *(*a1 + 4);
    if (*(*a1 + 3) - v24 > 0xCuLL)
    {
      qmemcpy(v24, ", partition ", 13);
      *(v23 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v23, ", partition ", 0xDuLL);
    }

    Partition = llvm::GlobalValue::getPartition(a2);
    llvm::printEscapedString(Partition, v26, *a1);
    v27 = *a1;
    v28 = *(*a1 + 4);
    if (v28 >= *(*a1 + 3))
    {
      llvm::raw_ostream::write(v27, 34);
    }

    else
    {
      *(v27 + 4) = v28 + 1;
      *v28 = 34;
    }
  }

  result = *a1;
  v30 = *(*a1 + 4);
  if (v30 >= *(*a1 + 3))
  {
    return llvm::raw_ostream::write(result, 10);
  }

  *(result + 4) = v30 + 1;
  *v30 = 10;
  return result;
}

void WriteConstantInternal(llvm::raw_ostream *a1, const llvm::Constant *a2, llvm::raw_ostream **a3)
{
  v5 = a1;
  v140[16] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 16);
  if (!a2 || v6 != 16)
  {
    if (a2 && v6 == 17)
    {
      v11 = (a2 + 32);
      v12 = *(a2 + 4);
      v13 = (a2 + 24);
      if (v12 != &llvm::semIEEEsingle && v12 != &llvm::semIEEEdouble)
      {
        v23 = *(a1 + 4);
        if (*(a1 + 3) - v23 > 1uLL)
        {
          *v23 = 30768;
          *(a1 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(a1, "0x", 2uLL);
        }

        llvm::APFloat::bitcastToAPInt(&__src, v13);
        v26 = *v11;
        if (*v11 == &llvm::semX87DoubleExtended)
        {
          v36 = *(v5 + 4);
          if (v36 >= *(v5 + 3))
          {
            llvm::raw_ostream::write(v5, 75);
          }

          else
          {
            *(v5 + 4) = v36 + 1;
            *v36 = 75;
          }

          v39 = v134;
          v40 = v134 - 16;
          if (v134 > 0x40)
          {
            operator new[]();
          }

          v41 = __src >> v40;
          v138 = (__src >> v40);
          __n[0] = 0;
          LODWORD(__n[1]) = 4;
          WORD2(__n[1]) = 257;
          BYTE6(__n[1]) = 0;
          llvm::raw_ostream::operator<<(v5, &v138);
          if (v39 >= 0x41 && v41)
          {
            MEMORY[0x277C69E10](v41, 0x1000C8000313F17);
          }

          llvm::APInt::getLoBits(&__src, 0x40u, &v130);
          if (v131 >= 0x41)
          {
            v42 = v130;
          }

          else
          {
            v42 = &v130;
          }

          v138 = *v42;
          __n[0] = 0;
          LODWORD(__n[1]) = 16;
          WORD2(__n[1]) = 257;
        }

        else
        {
          if (v26 == &llvm::semIEEEquad)
          {
            v38 = *(v5 + 4);
            if (v38 >= *(v5 + 3))
            {
              llvm::raw_ostream::write(v5, 76);
            }

            else
            {
              *(v5 + 4) = v38 + 1;
              *v38 = 76;
            }

            llvm::APInt::getLoBits(&__src, 0x40u, &v130);
            if (v131 >= 0x41)
            {
              v47 = v130;
            }

            else
            {
              v47 = &v130;
            }

            v138 = *v47;
            __n[0] = 0;
            LODWORD(__n[1]) = 16;
            WORD2(__n[1]) = 257;
            BYTE6(__n[1]) = 0;
            llvm::raw_ostream::operator<<(v5, &v138);
            if (v131 >= 0x41 && v130)
            {
              MEMORY[0x277C69E10](v130, 0x1000C8000313F17);
            }

            v48 = v134;
            v49 = v134 - 64;
            if (v134 > 0x40)
            {
              operator new[]();
            }

            v50 = __src >> v49;
            v138 = (__src >> v49);
            __n[0] = 0;
            LODWORD(__n[1]) = 16;
            WORD2(__n[1]) = 257;
            BYTE6(__n[1]) = 0;
            llvm::raw_ostream::operator<<(v5, &v138);
            if (v48 < 0x41 || !v50)
            {
              goto LABEL_154;
            }

            v51 = v50;
            goto LABEL_148;
          }

          if (v26 != &llvm::semPPCDoubleDouble)
          {
            if (v26 == &llvm::semIEEEhalf)
            {
              v27 = *(v5 + 4);
              if (v27 < *(v5 + 3))
              {
                *(v5 + 4) = v27 + 1;
                v28 = 72;
                goto LABEL_125;
              }

              v56 = v5;
              v57 = 72;
            }

            else
            {
              v27 = *(v5 + 4);
              if (v27 < *(v5 + 3))
              {
                *(v5 + 4) = v27 + 1;
                v28 = 82;
LABEL_125:
                *v27 = v28;
LABEL_151:
                p_src = &__src;
                if (v134 >= 0x41)
                {
                  p_src = __src;
                }

                v138 = *p_src;
                __n[0] = 0;
                LODWORD(__n[1]) = 4;
                WORD2(__n[1]) = 257;
                BYTE6(__n[1]) = 0;
                llvm::raw_ostream::operator<<(v5, &v138);
                goto LABEL_154;
              }

              v56 = v5;
              v57 = 82;
            }

            llvm::raw_ostream::write(v56, v57);
            goto LABEL_151;
          }

          v45 = *(v5 + 4);
          if (v45 >= *(v5 + 3))
          {
            llvm::raw_ostream::write(v5, 77);
          }

          else
          {
            *(v5 + 4) = v45 + 1;
            *v45 = 77;
          }

          llvm::APInt::getLoBits(&__src, 0x40u, &v130);
          if (v131 >= 0x41)
          {
            v58 = v130;
          }

          else
          {
            v58 = &v130;
          }

          v138 = *v58;
          __n[0] = 0;
          LODWORD(__n[1]) = 16;
          WORD2(__n[1]) = 257;
          BYTE6(__n[1]) = 0;
          llvm::raw_ostream::operator<<(v5, &v138);
          if (v131 >= 0x41 && v130)
          {
            MEMORY[0x277C69E10](v130, 0x1000C8000313F17);
          }

          llvm::APInt::getHiBits(&__src, 64, &v130);
          if (v131 >= 0x41)
          {
            v59 = v130;
          }

          else
          {
            v59 = &v130;
          }

          v138 = *v59;
          __n[0] = 0;
          LODWORD(__n[1]) = 16;
          WORD2(__n[1]) = 257;
        }

        BYTE6(__n[1]) = 0;
        llvm::raw_ostream::operator<<(v5, &v138);
        if (v131 < 0x41 || (v51 = v130) == 0)
        {
LABEL_154:
          if (v134 >= 0x41 && __src)
          {
            MEMORY[0x277C69E10](__src, 0x1000C8000313F17);
          }

          goto LABEL_157;
        }

LABEL_148:
        MEMORY[0x277C69E10](v51, 0x1000C8000313F17);
        goto LABEL_154;
      }

      if (v12 == &llvm::semPPCDoubleDouble)
      {
        v16 = *(a2 + 5);
        v15 = v16 + 28;
      }

      else
      {
        v15 = a2 + 52;
        v16 = a2 + 24;
      }

      if ((*v15 & 7) != 0 && (v16[28] & 7) != 1)
      {
        v29 = llvm::APFloat::convertToDouble(a2 + 3);
        v138 = v140;
        *__n = xmmword_2750C1290;
        llvm::APFloat::toString(v13, &v138, 6, 0, 0);
        llvm::APFloat::APFloat(&__src, &llvm::semIEEEdouble, v138, __n[0]);
        v30 = llvm::APFloat::convertToDouble(&__src);
        llvm::APFloat::Storage::~Storage(&v134);
        if (v30 == v29)
        {
          llvm::raw_ostream::write(v5, v138, __n[0]);
          if (v138 != v140)
          {
            free(v138);
          }

          goto LABEL_157;
        }

        if (v138 != v140)
        {
          free(v138);
        }
      }

      llvm::APFloat::Storage::Storage(__n, v11);
      if (v12 != &llvm::semIEEEdouble)
      {
        v31 = __n[0] == &llvm::semPPCDoubleDouble ? (__n[1] + 8) : __n;
        isSignaling = llvm::detail::IEEEFloat::isSignaling(v31);
        llvm::APFloat::convert(&v138, &llvm::semIEEEdouble, 1, &v132);
        if (isSignaling)
        {
          llvm::APFloat::bitcastToAPInt(&v130, &v138);
          v33 = __n[0] == &llvm::semPPCDoubleDouble ? __n[1] : &v138;
          v34 = (*(v33 + 28) >> 3) & 1;
          llvm::detail::IEEEFloat::IEEEFloat(&v134, &llvm::semIEEEdouble);
          llvm::APFloat::makeNaN(&__src, 1, v34, &v130);
          llvm::APFloat::Storage::operator=(__n, &v134);
          llvm::APFloat::Storage::~Storage(&v134);
          if (v131 >= 0x41)
          {
            if (v130)
            {
              MEMORY[0x277C69E10](v130, 0x1000C8000313F17);
            }
          }
        }
      }

      llvm::APFloat::bitcastToAPInt(&v130, &v138);
      if (v131 >= 0x41)
      {
        v35 = v130;
      }

      else
      {
        v35 = &v130;
      }

      __src = *v35;
      v134 = 0;
      v135 = 0;
      v136 = 257;
      v137 = 1;
      llvm::raw_ostream::operator<<(v5, &__src);
      if (v131 >= 0x41 && v130)
      {
        MEMORY[0x277C69E10](v130, 0x1000C8000313F17);
      }

      llvm::APFloat::Storage::~Storage(__n);
LABEL_157:
      v61 = *MEMORY[0x277D85DE8];
      return;
    }

    if (v6 == 18 || v6 == 13)
    {
      v18 = *(a1 + 4);
      if (*(a1 + 3) - v18 > 0xEuLL)
      {
        qmemcpy(v18, "zeroinitializer", 15);
        v24 = *(a1 + 4) + 15;
LABEL_106:
        *(v5 + 4) = v24;
        goto LABEL_157;
      }

      v19 = *MEMORY[0x277D85DE8];
      v20 = "zeroinitializer";
      v21 = 15;
LABEL_32:

      llvm::raw_ostream::write(a1, v20, v21);
      return;
    }

    if (a2 && v6 == 4)
    {
      v25 = *(a1 + 4);
      if (*(a1 + 3) - v25 > 0xCuLL)
      {
        qmemcpy(v25, "blockaddress(", 13);
        *(a1 + 4) += 13;
      }

      else
      {
        llvm::raw_ostream::write(a1, "blockaddress(", 0xDuLL);
      }

      WriteAsOperandInternal(v5, *(a2 - 8), a3);
      v43 = *(v5 + 4);
      if (*(v5 + 3) - v43 > 1uLL)
      {
        *v43 = 8236;
        *(v5 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v5, ", ", 2uLL);
      }

      WriteAsOperandInternal(v5, *(a2 - 4), a3);
      v44 = *(v5 + 4);
      if (*(v5 + 3) != v44)
      {
        *v44 = 41;
        v24 = *(v5 + 4) + 1;
        goto LABEL_106;
      }

      v46 = *MEMORY[0x277D85DE8];
      v20 = ")";
      a1 = v5;
      v21 = 1;
      goto LABEL_32;
    }

    if (a2 && v6 == 6)
    {
      v37 = *(a1 + 4);
      if (*(a1 + 3) - v37 > 0x14uLL)
      {
        qmemcpy(v37, "dso_local_equivalent ", 21);
        *(a1 + 4) += 21;
      }

      else
      {
        llvm::raw_ostream::write(a1, "dso_local_equivalent ", 0x15uLL);
      }

      goto LABEL_131;
    }

    if (a2 && v6 == 7)
    {
      llvm::raw_ostream::operator<<(a1, "no_cfi ", 7uLL);
LABEL_131:
      v54 = *(a2 - 4);
      v55 = *MEMORY[0x277D85DE8];

      WriteAsOperandInternal(v5, v54, a3);
      return;
    }

    if (a2 && v6 == 8)
    {
      v52 = *(*a2 + 24);
      v53 = *(a1 + 4);
      if (v53 >= *(a1 + 3))
      {
        llvm::raw_ostream::write(a1, 91);
      }

      else
      {
        *(a1 + 4) = v53 + 1;
        *v53 = 91;
      }

      v70 = *(v5 + 4);
      if (v70 >= *(v5 + 3))
      {
        llvm::raw_ostream::write(v5, 32);
      }

      else
      {
        *(v5 + 4) = v70 + 1;
        *v70 = 32;
      }

      WriteAsOperandInternal(v5, *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF)), a3);
      v71 = *(a2 + 5) & 0x7FFFFFF;
      v72 = v71 - 1;
      if (v71 != 1)
      {
        v73 = a2 + 32;
        do
        {
          v74 = *(v5 + 4);
          if (*(v5 + 3) - v74 > 1uLL)
          {
            *v74 = 8236;
            *(v5 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v5, ", ", 2uLL);
          }

          v75 = *(v5 + 4);
          if (v75 >= *(v5 + 3))
          {
            llvm::raw_ostream::write(v5, 32);
          }

          else
          {
            *(v5 + 4) = v75 + 1;
            *v75 = 32;
          }

          WriteAsOperandInternal(v5, *&v73[-32 * (*(a2 + 5) & 0x7FFFFFF)], a3);
          v73 += 32;
          --v72;
        }

        while (v72);
      }

      v67 = *(v5 + 4);
      if (v67 < *(v5 + 3))
      {
        *(v5 + 4) = v67 + 1;
LABEL_209:
        v68 = 93;
        goto LABEL_210;
      }

LABEL_211:
      v86 = *MEMORY[0x277D85DE8];
      v87 = v5;
      v88 = 93;
      goto LABEL_212;
    }

    if (a2 && v6 == 14)
    {
      v62 = *a2;
      if (*(*a2 + 8) == 17)
      {
        v63 = *(v62 + 24);
        v64 = (a1 + 32);
        if (*(v63 + 2) == 2061)
        {
          llvm::raw_ostream::operator<<(a1, "c", 2uLL);
          RawDataValues = llvm::ConstantDataSequential::getRawDataValues(a2);
          llvm::printEscapedString(RawDataValues, v66, v5);
          v67 = *(v5 + 4);
          if (v67 < *(v5 + 3))
          {
            *v64 = v67 + 1;
            v68 = 34;
LABEL_210:
            *v67 = v68;
            goto LABEL_157;
          }

          v103 = *MEMORY[0x277D85DE8];
          v87 = v5;
          v88 = 34;
LABEL_212:

          llvm::raw_ostream::write(v87, v88);
          return;
        }
      }

      else
      {
        v64 = (a1 + 32);
        v63 = *(v62 + 24);
      }

      v76 = *(a1 + 4);
      if (v76 >= *(a1 + 3))
      {
        llvm::raw_ostream::write(a1, 91);
      }

      else
      {
        *v64 = v76 + 1;
        *v76 = 91;
      }

      v77 = *(v5 + 4);
      if (v77 >= *(v5 + 3))
      {
        llvm::raw_ostream::write(v5, 32);
      }

      else
      {
        *v64 = v77 + 1;
        *v77 = 32;
      }

      ElementAsConstant = llvm::ConstantDataSequential::getElementAsConstant(a2, 0);
      WriteAsOperandInternal(v5, ElementAsConstant, a3);
      v79 = *a2;
      if (*a2)
      {
        v80 = *(v79 + 8);
      }

      v81 = *(v79 + 32);
      if (v81 != 1)
      {
        for (i = 1; i != v81; ++i)
        {
          v83 = *(v5 + 4);
          if (*(v5 + 3) - v83 > 1uLL)
          {
            *v83 = 8236;
            *v64 += 2;
          }

          else
          {
            llvm::raw_ostream::write(v5, ", ", 2uLL);
          }

          v84 = *(v5 + 4);
          if (v84 >= *(v5 + 3))
          {
            llvm::raw_ostream::write(v5, 32);
          }

          else
          {
            *v64 = v84 + 1;
            *v84 = 32;
          }

          v85 = llvm::ConstantDataSequential::getElementAsConstant(a2, i);
          WriteAsOperandInternal(v5, v85, a3);
        }
      }

      v67 = *(v5 + 4);
      if (v67 < *(v5 + 3))
      {
        *v64 = v67 + 1;
        goto LABEL_209;
      }

      goto LABEL_211;
    }

    if (a2 && v6 == 9)
    {
      if ((*(*a2 + 9) & 2) != 0)
      {
        v69 = *(a1 + 4);
        if (v69 >= *(a1 + 3))
        {
          llvm::raw_ostream::write(a1, 60);
        }

        else
        {
          *(a1 + 4) = v69 + 1;
          *v69 = 60;
        }
      }

      v93 = *(v5 + 4);
      if (v93 >= *(v5 + 3))
      {
        llvm::raw_ostream::write(v5, 123);
      }

      else
      {
        *(v5 + 4) = v93 + 1;
        *v93 = 123;
      }

      v94 = *(a2 + 5);
      v95 = v94 & 0x7FFFFFF;
      if ((v94 & 0x7FFFFFF) != 0)
      {
        v96 = *(v5 + 4);
        if (v96 >= *(v5 + 3))
        {
          llvm::raw_ostream::write(v5, 32);
        }

        else
        {
          *(v5 + 4) = v96 + 1;
          *v96 = 32;
        }

        v97 = *(v5 + 4);
        if (v97 >= *(v5 + 3))
        {
          llvm::raw_ostream::write(v5, 32);
        }

        else
        {
          *(v5 + 4) = v97 + 1;
          *v97 = 32;
        }

        WriteAsOperandInternal(v5, *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF)), a3);
        if (v95 != 1)
        {
          v98 = v95 - 1;
          v99 = a2 + 32;
          do
          {
            llvm::raw_ostream::operator<<(v5, ", ", 2uLL);
            v100 = *(v5 + 4);
            if (v100 >= *(v5 + 3))
            {
              llvm::raw_ostream::write(v5, 32);
            }

            else
            {
              *(v5 + 4) = v100 + 1;
              *v100 = 32;
            }

            WriteAsOperandInternal(v5, *&v99[-32 * (*(a2 + 5) & 0x7FFFFFF)], a3);
            v99 += 32;
            --v98;
          }

          while (v98);
        }

        v101 = *(v5 + 4);
        if (v101 >= *(v5 + 3))
        {
          llvm::raw_ostream::write(v5, 32);
        }

        else
        {
          *(v5 + 4) = v101 + 1;
          *v101 = 32;
        }
      }

      v102 = *(v5 + 4);
      if (v102 >= *(v5 + 3))
      {
        llvm::raw_ostream::write(v5, 125);
      }

      else
      {
        *(v5 + 4) = v102 + 1;
        *v102 = 125;
      }

      if ((*(*a2 + 9) & 2) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_259;
    }

    if (*(a2 + 16) > 0xEu)
    {
      switch(v6)
      {
        case 20:
          v104 = *MEMORY[0x277D85DE8];
          v9 = "none";
          break;
        case 19:
          v105 = *MEMORY[0x277D85DE8];
          v9 = "null";
          break;
        case 15:
          goto LABEL_218;
        default:
          goto LABEL_262;
      }

      v8 = 4;
      goto LABEL_13;
    }

    if (v6 != 10)
    {
      if (v6 == 12)
      {
        v89 = *MEMORY[0x277D85DE8];
        v9 = "poison";
        v8 = 6;
        goto LABEL_13;
      }

LABEL_262:
      if ((v6 - 11) > 1)
      {
        if (a2 && v6 == 5)
        {
          OpcodeName = llvm::Instruction::getOpcodeName(*(a2 + 9));
          llvm::raw_ostream::operator<<(v5, OpcodeName);
          WriteOptimizationInfo(v5, a2);
          if (*(a2 + 9) - 53 <= 1)
          {
            v115 = *(v5 + 4);
            if (v115 >= *(v5 + 3))
            {
              llvm::raw_ostream::write(v5, 32);
            }

            else
            {
              *(v5 + 4) = v115 + 1;
              *v115 = 32;
            }

            PredicateName = llvm::CmpInst::getPredicateName(*(a2 + 12));
            llvm::raw_ostream::operator<<(v5, PredicateName, v118);
          }

          llvm::raw_ostream::operator<<(v5, " (", 2uLL);
          if (*(a2 + 9) == 34)
          {
            v119 = 24;
            if (*(a2 + 16) == 62)
            {
              v119 = 64;
            }

            llvm::raw_ostream::operator<<(v5, ", ", 2uLL);
            v120 = *(a2 + 17);
            v121 = v120 > 3;
            v122 = v120 > 3;
            if (v120 <= 3)
            {
              v123 = 0;
            }

            else
            {
              v123 = (*(a2 + 17) >> 2) - 1;
            }

            if (v121)
            {
              v124 = v123 + 1;
            }

            else
            {
              v124 = 0;
            }
          }

          else
          {
            v124 = 0;
            v122 = 0;
          }

          v125 = *(a2 + 5) & 0x7FFFFFF;
          if (v125)
          {
            v126 = -32 * v125;
            if (!v122)
            {
              goto LABEL_288;
            }

LABEL_286:
            if (v124 == ((v126 + 32 * (*(a2 + 5) & 0x7FFFFFF)) >> 5))
            {
              llvm::raw_ostream::operator<<(v5, "inrange ", 8uLL);
            }

            while (1)
            {
LABEL_288:
              v127 = *(v5 + 4);
              if (v127 >= *(v5 + 3))
              {
                llvm::raw_ostream::write(v5, 32);
              }

              else
              {
                *(v5 + 4) = v127 + 1;
                *v127 = 32;
              }

              WriteAsOperandInternal(v5, *(a2 + v126), a3);
              if (v126 == -32)
              {
                break;
              }

              llvm::raw_ostream::operator<<(v5, ", ", 2uLL);
              v126 += 32;
              if (v122)
              {
                goto LABEL_286;
              }
            }
          }

          v128 = *(a2 + 9);
          if ((v128 - 38) < 0xD)
          {
            llvm::raw_ostream::operator<<(v5, " to ", 4uLL);
            v128 = *(a2 + 9);
          }

          if (v128 == 63)
          {
            PrintShuffleMask(v5, *a2, *(a2 + 3), *(a2 + 8));
          }

          v67 = *(v5 + 4);
          if (v67 < *(v5 + 3))
          {
            *(v5 + 4) = v67 + 1;
            v68 = 41;
            goto LABEL_210;
          }

          v129 = *MEMORY[0x277D85DE8];
          v87 = v5;
          v88 = 41;
          goto LABEL_212;
        }

        v116 = *MEMORY[0x277D85DE8];
        v9 = "<placeholder or erroneous Constant>";
        v8 = 35;
      }

      else
      {
        v113 = *MEMORY[0x277D85DE8];
        v9 = "undef";
        v8 = 5;
      }

LABEL_13:

      llvm::raw_ostream::operator<<(a1, v9, v8);
      return;
    }

LABEL_218:
    v90 = *a2;
    v91 = *(*a2 + 24);
    v92 = *(a1 + 4);
    if (v92 >= *(a1 + 3))
    {
      llvm::raw_ostream::write(a1, 60);
    }

    else
    {
      *(a1 + 4) = v92 + 1;
      *v92 = 60;
    }

    v106 = *(v5 + 4);
    if (v106 >= *(v5 + 3))
    {
      llvm::raw_ostream::write(v5, 32);
    }

    else
    {
      *(v5 + 4) = v106 + 1;
      *v106 = 32;
    }

    AggregateElement = llvm::Constant::getAggregateElement(a2, 0);
    WriteAsOperandInternal(v5, AggregateElement, a3);
    v108 = *(v90 + 32);
    if (v108 != 1)
    {
      v109 = 1;
      do
      {
        llvm::raw_ostream::operator<<(v5, ", ", 2uLL);
        v110 = *(v5 + 4);
        if (v110 >= *(v5 + 3))
        {
          llvm::raw_ostream::write(v5, 32);
        }

        else
        {
          *(v5 + 4) = v110 + 1;
          *v110 = 32;
        }

        v111 = llvm::Constant::getAggregateElement(a2, v109);
        WriteAsOperandInternal(v5, v111, a3);
        v109 = (v109 + 1);
      }

      while (v108 != v109);
    }

LABEL_259:
    v67 = *(v5 + 4);
    if (v67 < *(v5 + 3))
    {
      *(v5 + 4) = v67 + 1;
      v68 = 62;
      goto LABEL_210;
    }

    v112 = *MEMORY[0x277D85DE8];
    v87 = v5;
    v88 = 62;
    goto LABEL_212;
  }

  v7 = (a2 + 24);
  if (*(*a2 + 8) == 269)
  {
    if (*(a2 + 8) >= 0x41u)
    {
      v7 = *v7;
    }

    if (*v7)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    if (*v7)
    {
      v9 = "true";
    }

    else
    {
      v9 = "false";
    }

    v10 = *MEMORY[0x277D85DE8];
    a1 = v5;
    goto LABEL_13;
  }

  v22 = *MEMORY[0x277D85DE8];

  llvm::APInt::print(v7, v5, 1);
}

uint64_t printAsOperandImpl(llvm::Type **a1, uint64_t **a2, int a3, llvm::ModuleSlotTracker *this)
{
  v7 = *(this + 3);
  v14 = 0;
  v15 = 0;
  v13 = v7;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v34 = 0;
  v35 = 0;
  if (a3)
  {
    v8 = a2[4];
    if (v8 >= a2[3])
    {
      llvm::raw_ostream::write(a2, 32);
    }

    else
    {
      a2[4] = (v8 + 1);
      *v8 = 32;
    }
  }

  Machine = llvm::ModuleSlotTracker::getMachine(this);
  v10 = *(this + 3);
  v12[0] = &unk_2883F1008;
  v12[1] = &v13;
  v12[2] = Machine;
  v12[3] = v10;
  WriteAsOperandInternal(a2, a1, v12);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  MEMORY[0x277C69E30](v30, 8);
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  MEMORY[0x277C69E30](v23, 8);
  MEMORY[0x277C69E30](v20, 8);
  MEMORY[0x277C69E30](v17, 8);
  return MEMORY[0x277C69E30](v14, 8);
}

void printMetadataImpl(llvm::raw_ostream *a1, uint64_t a2, llvm::ModuleSlotTracker *a3, uint64_t a4, char a5, int a6)
{
  v10 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = &unk_2883EAF50;
  v17 = 0;
  v18 = 0;
  v19 = &v21;
  v20 = xmmword_2750C3CD0;
  llvm::formatted_raw_ostream::setStream(&v9, a1);
  llvm::ModuleSlotTracker::getMachine(a3);
  if (a6)
  {
    if ((a5 & 1) == 0)
    {
      operator new();
    }
  }

  operator new();
}

void llvm::SlotTracker::~SlotTracker(llvm::SlotTracker *this)
{
  llvm::SlotTracker::~SlotTracker(this);

  JUMPOUT(0x277C69E40);
}

{
  *this = &unk_2883F0F90;
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(this + 296);
  MEMORY[0x277C69E30](*(this + 33), 8);
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(this + 232);
  MEMORY[0x277C69E30](*(this + 25), 8);
  MEMORY[0x277C69E30](*(this + 21), 8);
  MEMORY[0x277C69E30](*(this + 17), 8);
  MEMORY[0x277C69E30](*(this + 13), 8);
  std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Function const*,BOOL)>::~__value_func[abi:nn200100](this + 64);
  std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Module const*,BOOL)>::~__value_func[abi:nn200100](this + 32);
}

uint64_t llvm::concat_iterator<llvm::GlobalObject const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[2] || *a1 == 0)
  {
    return 0;
  }

  else
  {
    return *a1 - 56;
  }
}

uint64_t llvm::concat_iterator<llvm::GlobalObject const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>>::getHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == *(a1 + 24) || v1 == 0)
  {
    return 0;
  }

  else
  {
    return v1 - 56;
  }
}

BOOL llvm::concat_iterator<llvm::GlobalObject const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*a1 != v2)
  {
    *a1 = *(v1 + 8);
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<llvm::GlobalObject const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (v1 != v2)
  {
    *(a1 + 8) = *(v1 + 8);
  }

  return v1 != v2;
}

void anonymous namespace::AssemblyWriter::printMetadataAttachments(uint64_t a1, _DWORD *a2, const void *a3, size_t __n)
{
  v4 = a2[2];
  if (v4)
  {
    if (!*(a1 + 320))
    {
      v9 = *(*(*a2 + 8) + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 4) != 0)
      {
        v10 = *v10;
      }

      llvm::LLVMContext::getMDKindNames(v10, (a1 + 312));
      v4 = a2[2];
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 8);
    v22[0] = &unk_2883F1008;
    v22[1] = a1 + 40;
    v22[2] = v11;
    v22[3] = v12;
    if (v4)
    {
      v13 = *a2;
      v14 = *a2 + 16 * v4;
      do
      {
        v15 = *v13;
        llvm::raw_ostream::operator<<(*a1, a3, __n);
        v16 = *a1;
        v18 = *(*a1 + 24);
        v17 = *(*a1 + 32);
        if (*(a1 + 320) <= v15)
        {
          if ((v18 - v17) > 0xF)
          {
            *v17 = *"!<unknown kind #";
            *(v16 + 4) += 16;
          }

          else
          {
            llvm::raw_ostream::write(*a1, "!<unknown kind #", 0x10uLL);
          }

          write_unsigned<unsigned long>(v16, v15, 0, 0, 0);
          v19 = *(v16 + 4);
          if (*(v16 + 3) == v19)
          {
            llvm::raw_ostream::write(v16, ">", 1uLL);
          }

          else
          {
            *v19 = 62;
            ++*(v16 + 4);
          }
        }

        else
        {
          if (v18 == v17)
          {
            llvm::raw_ostream::write(*a1, "!", 1uLL);
          }

          else
          {
            *v17 = 33;
            ++*(v16 + 4);
          }

          printMetadataIdentifier(*(*(a1 + 312) + 16 * v15), *(*(a1 + 312) + 16 * v15 + 8), *a1);
        }

        v20 = *a1;
        v21 = *(*a1 + 32);
        if (v21 >= *(*a1 + 24))
        {
          llvm::raw_ostream::write(v20, 32);
        }

        else
        {
          *(v20 + 4) = v21 + 1;
          *v21 = 32;
        }

        WriteAsOperandInternal(*a1, v13[1], v22);
        v13 += 2;
      }

      while (v13 != v14);
    }
  }
}

void getLinkageNameWithSpace(uint64_t a1, int a2)
{
  if (a2)
  {
    std::string::basic_string[abi:nn200100]<0>(&v5, off_279F00140[a2 - 1]);
    v3 = std::string::append(&v5, " ");
    v4 = v3->__r_.__value_.__r.__words[2];
    *a1 = *&v3->__r_.__value_.__l.__data_;
    *(a1 + 16) = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:nn200100]<0>(a1, "");
  }
}

llvm::raw_ostream *PrintDSOLocation(llvm::raw_ostream *result, llvm::formatted_raw_ostream *this)
{
  v2 = *(result + 8);
  if ((v2 & 0x4000) != 0 && (*(result + 8) & 0xFu) - 7 >= 2)
  {
    if ((v2 & 0x30) == 0 || (result = llvm::GlobalValue::hasExternalWeakLinkage(result), result))
    {
      v4 = *(this + 4);
      if ((*(this + 3) - v4) > 9)
      {
        *(v4 + 8) = 8300;
        *v4 = *"dso_local ";
        *(this + 4) += 10;
      }

      else
      {

        return llvm::raw_ostream::write(this, "dso_local ", 0xAuLL);
      }
    }
  }

  return result;
}

llvm::raw_ostream *PrintCallingConv(llvm::raw_ostream *result, llvm::raw_ostream *this)
{
  v3 = result;
  v4 = *(this + 4);
  v5 = *(this + 3) - v4;
  switch(result)
  {
    case 8:
      if (v5 <= 5)
      {
        v6 = "fastcc";
        goto LABEL_98;
      }

      *(v4 + 4) = 25443;
      v23 = 1953718630;
      goto LABEL_164;
    case 9:
      if (v5 <= 5)
      {
        v6 = "coldcc";
        goto LABEL_98;
      }

      *(v4 + 4) = 25443;
      v23 = 1684828003;
      goto LABEL_164;
    case 10:
      if (v5 <= 4)
      {
        v6 = "ghccc";
        v8 = this;
        v9 = 5;
        goto LABEL_106;
      }

      *(v4 + 4) = 99;
      *v4 = 1667459175;
      v22 = *(this + 4) + 5;
      goto LABEL_169;
    case 12:
      if (v5 <= 0xA)
      {
        v6 = "webkit_jscc";
        goto LABEL_72;
      }

      v20 = 1667461994;
      v21 = "webkit_jscc";
      goto LABEL_148;
    case 13:
      if (v5 <= 7)
      {
        v6 = "anyregcc";
        goto LABEL_75;
      }

      v19 = 0x676572796E61;
      goto LABEL_150;
    case 14:
      if (v5 <= 0xE)
      {
        v6 = "preserve_mostcc";
        goto LABEL_90;
      }

      v18 = "preserve_mostcc";
      goto LABEL_159;
    case 15:
      if (v5 <= 0xD)
      {
        v6 = "preserve_allcc";
        goto LABEL_82;
      }

      v16 = "preserve_allcc";
      goto LABEL_154;
    case 16:
      if (v5 <= 6)
      {
        v6 = "swiftcc";
        goto LABEL_60;
      }

      *(v4 + 3) = 1667462246;
      v17 = 1718187891;
      goto LABEL_141;
    case 17:
      if (v5 <= 0xD)
      {
        v6 = "cxx_fast_tlscc";
        goto LABEL_82;
      }

      v16 = "cxx_fast_tlscc";
      goto LABEL_154;
    case 18:
      if (v5 <= 5)
      {
        v6 = "tailcc";
        goto LABEL_98;
      }

      *(v4 + 4) = 25443;
      v23 = 1818845556;
      goto LABEL_164;
    case 19:
      if (v5 <= 0xE)
      {
        v6 = "cfguard_checkcc";
        goto LABEL_90;
      }

      v18 = "cfguard_checkcc";
      goto LABEL_159;
    case 20:
      if (v5 <= 0xA)
      {
        v6 = "swifttailcc";
        goto LABEL_72;
      }

      v20 = 1667460201;
      v21 = "swifttailcc";
      goto LABEL_148;
    case 64:
      if (v5 <= 0xC)
      {
        v6 = "x86_stdcallcc";
        goto LABEL_85;
      }

      v14 = "x86_stdcallcc";
      goto LABEL_156;
    case 65:
      if (v5 <= 0xD)
      {
        v6 = "x86_fastcallcc";
        goto LABEL_82;
      }

      v16 = "x86_fastcallcc";
      goto LABEL_154;
    case 66:
      if (v5 <= 9)
      {
        v6 = "arm_apcscc";
        goto LABEL_95;
      }

      v10 = 25443;
      v11 = "arm_apcscc";
      goto LABEL_162;
    case 67:
      if (v5 <= 0xA)
      {
        v6 = "arm_aapcscc";
        goto LABEL_72;
      }

      v20 = 1667461987;
      v21 = "arm_aapcscc";
      goto LABEL_148;
    case 68:
      if (v5 <= 0xE)
      {
        v6 = "arm_aapcs_vfpcc";
LABEL_90:
        v8 = this;
        v9 = 15;
        goto LABEL_106;
      }

      v18 = "arm_aapcs_vfpcc";
LABEL_159:
      *v4 = *v18;
      *(v4 + 7) = *(v18 + 7);
      v22 = *(this + 4) + 15;
      goto LABEL_169;
    case 69:
      if (v5 <= 0xC)
      {
        v6 = "msp430_intrcc";
        goto LABEL_85;
      }

      v14 = "msp430_intrcc";
      goto LABEL_156;
    case 70:
      if (v5 <= 0xD)
      {
        v6 = "x86_thiscallcc";
        goto LABEL_82;
      }

      v16 = "x86_thiscallcc";
      goto LABEL_154;
    case 71:
      if (v5 <= 9)
      {
        v6 = "ptx_kernel";
        goto LABEL_95;
      }

      v10 = 27749;
      v11 = "ptx_kernel";
      goto LABEL_162;
    case 72:
      if (v5 <= 9)
      {
        v6 = "ptx_device";
        goto LABEL_95;
      }

      v10 = 25955;
      v11 = "ptx_device";
      goto LABEL_162;
    case 75:
      if (v5 <= 8)
      {
        v6 = "spir_func";
        goto LABEL_105;
      }

      v12 = 99;
      v13 = "spir_func";
      goto LABEL_168;
    case 76:
      if (v5 <= 0xA)
      {
        v6 = "spir_kernel";
        goto LABEL_72;
      }

      v20 = 1818586738;
      v21 = "spir_kernel";
      goto LABEL_148;
    case 77:
      if (v5 <= 0xD)
      {
        v6 = "intel_ocl_bicc";
LABEL_82:
        v8 = this;
        v9 = 14;
        goto LABEL_106;
      }

      v16 = "intel_ocl_bicc";
LABEL_154:
      *v4 = *v16;
      *(v4 + 6) = *(v16 + 6);
      v22 = *(this + 4) + 14;
      goto LABEL_169;
    case 78:
      if (v5 <= 0xC)
      {
        v6 = "x86_64_sysvcc";
        goto LABEL_85;
      }

      v14 = "x86_64_sysvcc";
      goto LABEL_156;
    case 79:
      if (v5 <= 6)
      {
        v6 = "win64cc";
LABEL_60:
        v8 = this;
        v9 = 7;
        goto LABEL_106;
      }

      *(v4 + 3) = 1667445814;
      v17 = 913205623;
LABEL_141:
      *v4 = v17;
      v22 = *(this + 4) + 7;
      goto LABEL_169;
    case 80:
      if (v5 <= 0xF)
      {
        v6 = "x86_vectorcallcc";
        v8 = this;
        v9 = 16;
        goto LABEL_106;
      }

      *v4 = *"x86_vectorcallcc";
      v22 = *(this + 4) + 16;
      goto LABEL_169;
    case 81:
      if (v5 <= 5)
      {
        v6 = "hhvmcc";
LABEL_98:
        v8 = this;
        v9 = 6;
        goto LABEL_106;
      }

      *(v4 + 4) = 25443;
      v23 = 1836476520;
LABEL_164:
      *v4 = v23;
      v22 = *(this + 4) + 6;
      goto LABEL_169;
    case 82:
      if (v5 <= 7)
      {
        v6 = "hhvm_ccc";
LABEL_75:
        v8 = this;
        v9 = 8;
        goto LABEL_106;
      }

      v19 = 0x635F6D766868;
LABEL_150:
      *v4 = v19 & 0xFFFFFFFFFFFFLL | 0x6363000000000000;
      v22 = *(this + 4) + 8;
      goto LABEL_169;
    case 83:
      if (v5 <= 9)
      {
        v6 = "x86_intrcc";
        goto LABEL_95;
      }

      v10 = 25443;
      v11 = "x86_intrcc";
      goto LABEL_162;
    case 84:
      if (v5 <= 0xA)
      {
        v6 = "avr_intrcc ";
LABEL_72:
        v8 = this;
        v9 = 11;
        goto LABEL_106;
      }

      v20 = 543384434;
      v21 = "avr_intrcc ";
LABEL_148:
      *(v4 + 7) = v20;
      *v4 = *v21;
      v22 = *(this + 4) + 11;
      goto LABEL_169;
    case 85:
      if (v5 <= 0xC)
      {
        v6 = "avr_signalcc ";
        goto LABEL_85;
      }

      v14 = "avr_signalcc ";
      goto LABEL_156;
    case 87:
      if (v5 <= 8)
      {
        v6 = "amdgpu_vs";
        goto LABEL_105;
      }

      v12 = 115;
      v13 = "amdgpu_vs";
      goto LABEL_168;
    case 88:
      if (v5 <= 8)
      {
        v6 = "amdgpu_gs";
        goto LABEL_105;
      }

      v12 = 115;
      v13 = "amdgpu_gs";
      goto LABEL_168;
    case 89:
      if (v5 <= 8)
      {
        v6 = "amdgpu_ps";
        goto LABEL_105;
      }

      v12 = 115;
      v13 = "amdgpu_ps";
      goto LABEL_168;
    case 90:
      if (v5 <= 8)
      {
        v6 = "amdgpu_cs";
        goto LABEL_105;
      }

      v12 = 115;
      v13 = "amdgpu_cs";
      goto LABEL_168;
    case 91:
      if (v5 <= 0xC)
      {
        v6 = "amdgpu_kernel";
        goto LABEL_85;
      }

      v14 = "amdgpu_kernel";
      goto LABEL_156;
    case 92:
      if (v5 <= 0xC)
      {
        v6 = "x86_regcallcc";
LABEL_85:
        v8 = this;
        v9 = 13;
        goto LABEL_106;
      }

      v14 = "x86_regcallcc";
LABEL_156:
      *v4 = *v14;
      *(v4 + 5) = *(v14 + 5);
      v22 = *(this + 4) + 13;
      goto LABEL_169;
    case 93:
      if (v5 <= 8)
      {
        v6 = "amdgpu_hs";
        goto LABEL_105;
      }

      v12 = 115;
      v13 = "amdgpu_hs";
      goto LABEL_168;
    case 95:
      if (v5 <= 8)
      {
        v6 = "amdgpu_ls";
        goto LABEL_105;
      }

      v12 = 115;
      v13 = "amdgpu_ls";
      goto LABEL_168;
    case 96:
      if (v5 <= 8)
      {
        v6 = "amdgpu_es";
LABEL_105:
        v8 = this;
        v9 = 9;
        goto LABEL_106;
      }

      v12 = 115;
      v13 = "amdgpu_es";
LABEL_168:
      *(v4 + 8) = v12;
      *v4 = *v13;
      v22 = *(this + 4) + 9;
      goto LABEL_169;
    case 97:
      if (v5 <= 0x11)
      {
        v6 = "aarch64_vector_pcs";
        v8 = this;
        v9 = 18;
        goto LABEL_106;
      }

      *(v4 + 16) = 29539;
      *v4 = *"aarch64_vector_pcs";
      v22 = *(this + 4) + 18;
      goto LABEL_169;
    case 98:
      if (v5 <= 0x15)
      {
        v6 = "aarch64_sve_vector_pcs";
        v8 = this;
        v9 = 22;
        goto LABEL_106;
      }

      qmemcpy(v4, "aarch64_sve_vector_pcs", 22);
      v22 = *(this + 4) + 22;
      goto LABEL_169;
    case 100:
      if (v5 <= 9)
      {
        v6 = "amdgpu_gfx";
LABEL_95:
        v8 = this;
        v9 = 10;
        goto LABEL_106;
      }

      v10 = 30822;
      v11 = "amdgpu_gfx";
LABEL_162:
      *(v4 + 8) = v10;
      *v4 = *v11;
      v22 = *(this + 4) + 10;
      goto LABEL_169;
    case 102:
      if (v5 <= 0x1F)
      {
        v6 = "aarch64_sme_preservemost_from_x0";
        goto LABEL_63;
      }

      v15 = "aarch64_sme_preservemost_from_x0";
      goto LABEL_143;
    case 103:
      if (v5 > 0x1F)
      {
        v15 = "aarch64_sme_preservemost_from_x2";
LABEL_143:
        v24 = *(v15 + 1);
        *v4 = *v15;
        *(v4 + 16) = v24;
        v22 = *(this + 4) + 32;
LABEL_169:
        *(this + 4) = v22;
      }

      else
      {
        v6 = "aarch64_sme_preservemost_from_x2";
LABEL_63:
        v8 = this;
        v9 = 32;
LABEL_106:

        return llvm::raw_ostream::write(v8, v6, v9);
      }

      return result;
    default:
      v7 = *(this + 3) != v4;
      if (v5 > 1)
      {
        *v4 = 25443;
        *(this + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(this, "cc", 2uLL);
      }

      return write_unsigned<unsigned long>(this, v3, 0, 0, 0);
  }
}

void WriteAsOperandInternal(llvm::raw_ostream *a1, uint64_t ***a2, llvm::raw_ostream **a3)
{
  if ((*(a2 + 23) & 0x10) != 0)
  {
    ValueName = llvm::Value::getValueName(a2);
    v9 = *ValueName;
    if (*(a2 + 16) >= 4u)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    PrintLLVMName(a1, (ValueName + 2), v9, v10);
  }

  else
  {
    v5 = *(a2 + 16);
    if (v5 <= 0x14)
    {
      if (v5 < 4)
      {
        goto LABEL_14;
      }

      WriteConstantInternal(a1, a2, a3);
    }

    else
    {
      if (v5 != 23)
      {
        if (v5 == 24)
        {
          v6 = *(a1 + 4);
          if (*(a1 + 3) - v6 > 3uLL)
          {
            *v6 = 544043873;
            v7 = *(a1 + 4) + 4;
            *(a1 + 4) = v7;
          }

          else
          {
            llvm::raw_ostream::write(a1, "asm ", 4uLL);
            v7 = *(a1 + 4);
          }

          if (*(a2 + 80) == 1)
          {
            if (*(a1 + 3) - v7 > 0xA)
            {
              *(v7 + 7) = 544498533;
              *v7 = *"sideeffect ";
              v7 = *(a1 + 4) + 11;
              *(a1 + 4) = v7;
            }

            else
            {
              llvm::raw_ostream::write(a1, "sideeffect ", 0xBuLL);
              v7 = *(a1 + 4);
            }
          }

          if (*(a2 + 81) == 1)
          {
            if (*(a1 + 3) - v7 > 0xA)
            {
              *(v7 + 7) = 543908705;
              *v7 = *"alignstack ";
              v7 = *(a1 + 4) + 11;
              *(a1 + 4) = v7;
            }

            else
            {
              llvm::raw_ostream::write(a1, "alignstack ", 0xBuLL);
              v7 = *(a1 + 4);
            }
          }

          if (*(a2 + 21) == 1)
          {
            if (*(a1 + 3) - v7 > 0xC)
            {
              qmemcpy(v7, "inteldialect ", 13);
              v7 = *(a1 + 4) + 13;
              *(a1 + 4) = v7;
            }

            else
            {
              llvm::raw_ostream::write(a1, "inteldialect ", 0xDuLL);
              v7 = *(a1 + 4);
            }
          }

          if (*(a2 + 88) == 1)
          {
            if (*(a1 + 3) - v7 > 6)
            {
              *(v7 + 3) = 543452777;
              *v7 = 1769434741;
              v7 = *(a1 + 4) + 7;
              *(a1 + 4) = v7;
            }

            else
            {
              llvm::raw_ostream::write(a1, "unwind ", 7uLL);
              v7 = *(a1 + 4);
            }
          }

          if (v7 >= *(a1 + 3))
          {
            llvm::raw_ostream::write(a1, 34);
          }

          else
          {
            *(a1 + 4) = v7 + 1;
            *v7 = 34;
          }

          v22 = *(a2 + 47);
          if (v22 >= 0)
          {
            v23 = (a2 + 3);
          }

          else
          {
            v23 = a2[3];
          }

          v24 = a2[4];
          if (v22 >= 0)
          {
            v25 = *(a2 + 47);
          }

          else
          {
            v25 = a2[4];
          }

          llvm::printEscapedString(v23, v25, a1);
          v26 = *(a1 + 4);
          if (*(a1 + 3) - v26 > 3uLL)
          {
            *v26 = 572533794;
            *(a1 + 4) += 4;
          }

          else
          {
            llvm::raw_ostream::write(a1, ", ", 4uLL);
          }

          v29 = a2[6];
          v28 = (a2 + 6);
          v27 = v29;
          v30 = *(v28 + 23);
          if (v30 >= 0)
          {
            v31 = v28;
          }

          else
          {
            v31 = v27;
          }

          v32 = v28[1];
          if (v30 >= 0)
          {
            v33 = *(v28 + 23);
          }

          else
          {
            v33 = v28[1];
          }

          llvm::printEscapedString(v31, v33, a1);
          v34 = *(a1 + 4);
          if (v34 >= *(a1 + 3))
          {

            llvm::raw_ostream::write(a1, 34);
          }

          else
          {
            *(a1 + 4) = v34 + 1;
            *v34 = 34;
          }

          return;
        }

LABEL_14:
        v11 = a3[2];
        if (v11)
        {
          if (v5 <= 3)
          {
            GlobalSlot = llvm::SlotTracker::getGlobalSlot(v11, a2);
            v14 = 64;
          }

          else
          {
            LocalSlot = llvm::SlotTracker::getLocalSlot(v11, a2);
            if (LocalSlot != -1)
            {
              GlobalSlot = LocalSlot;
              v14 = 37;
LABEL_37:
              v20 = *(a1 + 4);
              if (v20 >= *(a1 + 3))
              {
                llvm::raw_ostream::write(a1, v14);
              }

              else
              {
                *(a1 + 4) = v20 + 1;
                *v20 = v14;
              }

              llvm::write_integer(a1, GlobalSlot, 0, 0);
              return;
            }

            SlotTracker = createSlotTracker(a2);
            if (!SlotTracker)
            {
              goto LABEL_39;
            }

            v19 = SlotTracker;
            GlobalSlot = llvm::SlotTracker::getLocalSlot(SlotTracker, a2);
            (*(*v19 + 8))(v19);
            v14 = 37;
          }
        }

        else
        {
          v16 = createSlotTracker(a2);
          if (!v16)
          {
LABEL_39:
            v21 = *(a1 + 4);
            if (*(a1 + 3) - v21 > 7uLL)
            {
              *v21 = 0x3E6665726461623CLL;
              *(a1 + 4) += 8;
            }

            else
            {

              llvm::raw_ostream::write(a1, "<badref>", 8uLL);
            }

            return;
          }

          v17 = v16;
          if (*(a2 + 16) <= 3u)
          {
            GlobalSlot = llvm::SlotTracker::getGlobalSlot(v16, a2);
            v14 = 64;
          }

          else
          {
            GlobalSlot = llvm::SlotTracker::getLocalSlot(v16, a2);
            v14 = 37;
          }

          (*(*v17 + 8))(v17);
        }

        if (GlobalSlot != -1)
        {
          goto LABEL_37;
        }

        goto LABEL_39;
      }

      v15 = a2[3];

      WriteAsOperandInternal(a1, v15);
    }
  }
}

void anonymous namespace::AssemblyWriter::writeAttributeSet(uint64_t ***a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 48);
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = a2 + 48 + 8 * *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v3 != v4)
  {
    for (i = 1; ; i = 0)
    {
      if ((i & 1) == 0)
      {
        v6 = *a1;
        v7 = (*a1)[4];
        if (v7 >= (*a1)[3])
        {
          llvm::raw_ostream::write(v6, 32);
        }

        else
        {
          v6[4] = (v7 + 1);
          *v7 = 32;
        }
      }

      v8 = *v3;
      if (!*v3)
      {
        break;
      }

      v9 = *a1;
      if (*(v8 + 8) != 3)
      {
        goto LABEL_20;
      }

      NameFromAttrKind = llvm::Attribute::getNameFromAttrKind(*(v8 + 12));
      llvm::raw_ostream::operator<<(v9, NameFromAttrKind, v11);
      if (*v3)
      {
        v12 = *(*v3 + 16);
        if (v12)
        {
          v13 = *a1;
          v14 = (*a1)[4];
          if (v14 >= (*a1)[3])
          {
            llvm::raw_ostream::write(v13, 40);
          }

          else
          {
            v13[4] = (v14 + 1);
            *v14 = 40;
          }

          v17 = *a1;
          v18 = (*a1)[4];
          if (v18 >= (*a1)[3])
          {
            llvm::raw_ostream::write(v17, 41);
          }

          else
          {
            v17[4] = (v18 + 1);
            *v18 = 41;
          }
        }
      }

LABEL_28:
      v3 = (v3 + 8);
      if (v3 == v4)
      {
        return;
      }
    }

    v9 = *a1;
LABEL_20:
    llvm::Attribute::getAsString(v3, 0, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    llvm::raw_ostream::write(v9, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_28;
  }
}

llvm::raw_ostream *maybePrintComdat(llvm::raw_ostream *this, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2)
  {
    v4 = this;
    if (*(a2 + 16) == 3)
    {
      v5 = *(this + 4);
      if (v5 >= *(this + 3))
      {
        this = llvm::raw_ostream::write(this, 44);
      }

      else
      {
        *(this + 4) = v5 + 1;
        *v5 = 44;
      }
    }

    v6 = *(v4 + 4);
    if (*(v4 + 3) - v6 > 6uLL)
    {
      *(v6 + 3) = 1952539757;
      *v6 = 1836016416;
      *(v4 + 4) += 7;
    }

    else
    {
      this = llvm::raw_ostream::write(v4, " comdat", 7uLL);
    }

    if ((*(a2 + 23) & 0x10) != 0)
    {
      ValueName = llvm::Value::getValueName(a2);
      v9 = *ValueName;
      this = (ValueName + 2);
      v8 = v9;
      if (v9 == **v2)
      {
        if (!v8)
        {
          return this;
        }

        this = memcmp(this, *v2 + 9, v8);
        if (!this)
        {
          return this;
        }
      }
    }

    else if (!**v2)
    {
      return this;
    }

    v10 = *(v4 + 4);
    if (v10 >= *(v4 + 3))
    {
      llvm::raw_ostream::write(v4, 40);
    }

    else
    {
      *(v4 + 4) = v10 + 1;
      *v10 = 40;
    }

    this = PrintLLVMName(v4, (*v2 + 9), **v2, 1);
    v11 = *(v4 + 4);
    if (v11 >= *(v4 + 3))
    {

      return llvm::raw_ostream::write(v4, 41);
    }

    else
    {
      *(v4 + 4) = v11 + 1;
      *v11 = 41;
    }
  }

  return this;
}

void anonymous namespace::AssemblyWriter::writeOperand(uint64_t ***this, llvm::Type **a2, int a3)
{
  if (a2)
  {
    if (a3)
    {
      v5 = *this;
      v6 = (*this)[4];
      if (v6 >= (*this)[3])
      {
        llvm::raw_ostream::write(v5, 32);
      }

      else
      {
        v5[4] = (v6 + 1);
        *v6 = 32;
      }
    }

    v9 = this[4];
    v10 = *this;
    v11 = this[1];
    v12[0] = &unk_2883F1008;
    v12[1] = (this + 5);
    v12[2] = v9;
    v12[3] = v11;
    WriteAsOperandInternal(v10, a2, v12);
  }

  else
  {
    v7 = *this;
    v8 = (*this)[4];
    if (((*this)[3] - v8) > 0xE)
    {
      qmemcpy(v8, "<null operand!>", 15);
      v7[4] = (v7[4] + 15);
    }

    else
    {

      llvm::raw_ostream::write(v7, "<null operand!>", 0xFuLL);
    }
  }
}

llvm::raw_ostream *anonymous namespace::AssemblyWriter::printUseLists(_anonymous_namespace_::AssemblyWriter *this, const llvm::Function *a2)
{
  v32[0] = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>,llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>::LookupBucketFor<llvm::Function const*>(*(this + 36), *(this + 76), a2, v32);
  v4 = v32[0];
  if (result)
  {
    v5 = v32[0] == (*(this + 36) + 56 * *(this + 76));
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    result = *this;
    v6 = *(*this + 32);
    if (*(*this + 24) - v6 > 0x1AuLL)
    {
      qmemcpy(v6, "\n; uselistorder directives\n", 27);
      *(result + 4) += 27;
    }

    else
    {
      result = llvm::raw_ostream::write(result, "\n; uselistorder directives\n", 0x1BuLL);
    }

    v8 = *(v4 + 4);
    for (i = *(v4 + 5); v8 != i; v8 += 4)
    {
      v9 = *v8;
      v10 = *this;
      v11 = *(*this + 32);
      v12 = *(*this + 24) - v11;
      if (*(*(this + 4) + 16))
      {
        v13 = *(*this + 24) != v11;
        if (v12 > 1)
        {
          *v11 = 8224;
          *(v10 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v10, "  ", 2uLL);
        }

        v14 = *this;
        v15 = *(*this + 32);
        if ((*(*this + 24) - v15) > 0xB)
        {
          *(v15 + 8) = 1919247474;
          *v15 = *"uselistorder";
          *(v14 + 4) += 12;
        }

        else
        {
          llvm::raw_ostream::write(v14, "uselistorder", 0xCuLL);
        }
      }

      else
      {
        if (v12 > 0xB)
        {
          *(v11 + 8) = 1919247474;
          *v11 = *"uselistorder";
          *(v10 + 4) += 12;
        }

        else
        {
          llvm::raw_ostream::write(v10, "uselistorder", 0xCuLL);
        }

        if (*(v9 + 16) == 22)
        {
          v16 = *this;
          v17 = *(*this + 32);
          if (*(*this + 24) - v17 > 3uLL)
          {
            *v17 = 543318623;
            *(v16 + 4) += 4;
          }

          else
          {
            llvm::raw_ostream::write(v16, "_bb ", 4uLL);
          }

          v27 = *this;
          v28 = *(*this + 32);
          if (*(*this + 24) - v28 > 1uLL)
          {
            *v28 = 8236;
            *(v27 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v27, ", ", 2uLL);
          }

          v29 = *(this + 4);
          v30 = *this;
          v31 = *(this + 1);
          v32[0] = &unk_2883F1008;
          v32[1] = (this + 40);
          v32[2] = v29;
          v32[3] = v31;
          WriteAsOperandInternal(v30, v9, v32);
          goto LABEL_26;
        }
      }

      v18 = *this;
      v19 = *(*this + 32);
      if (*(*this + 24) == v19)
      {
        llvm::raw_ostream::write(v18, " ", 1uLL);
      }

      else
      {
        *v19 = 32;
        ++*(v18 + 4);
      }

LABEL_26:
      v20 = *this;
      v21 = *(*this + 32);
      if (*(*this + 24) - v21 > 3uLL)
      {
        *v21 = 544940076;
        *(v20 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v20, ", { ", 4uLL);
      }

      write_unsigned<unsigned long>(*this, *v8[1], 0, 0, 0);
      v22 = (v8[2] - v8[1]) >> 2;
      if (v22 != 1)
      {
        v23 = 1;
        do
        {
          v24 = *this;
          v25 = *(*this + 32);
          if (*(*this + 24) - v25 > 1uLL)
          {
            *v25 = 8236;
            *(v24 + 4) += 2;
          }

          else
          {
            v24 = llvm::raw_ostream::write(v24, ", ", 2uLL);
          }

          write_unsigned<unsigned long>(v24, *(v8[1] + 4 * v23++), 0, 0, 0);
        }

        while (v22 != v23);
      }

      result = *this;
      v26 = *(*this + 32);
      if ((*(*this + 24) - v26) > 2)
      {
        *(v26 + 2) = 10;
        *v26 = 32032;
        *(result + 4) += 3;
      }

      else
      {
        result = llvm::raw_ostream::write(result, " }\n", 3uLL);
      }
    }
  }

  return result;
}

llvm::raw_ostream *printMetadataIdentifier(llvm::raw_ostream *result, uint64_t a2, llvm::raw_ostream *a3)
{
  if (!a2)
  {
    v8 = *(a3 + 4);
    if (*(a3 + 3) - v8 > 0xCuLL)
    {
      qmemcpy(v8, "<empty name> ", 13);
      *(a3 + 4) += 13;
    }

    else
    {

      return llvm::raw_ostream::write(a3, "<empty name> ", 0xDuLL);
    }

    return result;
  }

  v4 = a2;
  v5 = result;
  v6 = *result;
  v7 = MEMORY[0x277D85DE0];
  if (v6 < 0)
  {
    result = __maskrune(*result, 0x100uLL);
    LOBYTE(v6) = *v5;
    if (!result)
    {
      goto LABEL_10;
    }

LABEL_14:
    v10 = *(a3 + 4);
    if (v10 < *(a3 + 3))
    {
      *(a3 + 4) = v10 + 1;
      *v10 = v6;
      goto LABEL_18;
    }

    v11 = v6;
    goto LABEL_17;
  }

  result = (*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x100);
  if (result)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (v6 - 36 <= 0x3B && ((1 << (v6 - 36)) & 0x800000000000601) != 0)
  {
    goto LABEL_14;
  }

  v25 = *(a3 + 4);
  if (v25 >= *(a3 + 3))
  {
    result = llvm::raw_ostream::write(a3, 92);
  }

  else
  {
    *(a3 + 4) = v25 + 1;
    *v25 = 92;
  }

  v26 = llvm::hexdigit(unsigned int,BOOL)::LUT[*v5 >> 4];
  v27 = *(a3 + 4);
  if (v27 >= *(a3 + 3))
  {
    result = llvm::raw_ostream::write(a3, v26);
  }

  else
  {
    *(a3 + 4) = v27 + 1;
    *v27 = v26;
  }

  v11 = llvm::hexdigit(unsigned int,BOOL)::LUT[*v5 & 0xF];
  v28 = *(a3 + 4);
  if (v28 >= *(a3 + 3))
  {
LABEL_17:
    result = llvm::raw_ostream::write(a3, v11);
    goto LABEL_18;
  }

  *(a3 + 4) = v28 + 1;
  *v28 = v11;
LABEL_18:
  v12 = v4 - 1;
  if (v12)
  {
    v13 = v5 + 1;
    do
    {
      v14 = *v13++;
      v15 = v14;
      v16 = v14;
      if (v14 < 0)
      {
        result = __maskrune(v15, 0x500uLL);
        if (result)
        {
          goto LABEL_28;
        }
      }

      else
      {
        result = (*(v7 + 4 * v16 + 60) & 0x500);
        if (result)
        {
          goto LABEL_28;
        }
      }

      if ((v15 - 36) > 0x3B || ((1 << (v15 - 36)) & 0x800000000000601) == 0)
      {
        v21 = *(a3 + 4);
        if (v21 >= *(a3 + 3))
        {
          result = llvm::raw_ostream::write(a3, 92);
        }

        else
        {
          *(a3 + 4) = v21 + 1;
          *v21 = 92;
        }

        v22 = llvm::hexdigit(unsigned int,BOOL)::LUT[v16 >> 4];
        v23 = *(a3 + 4);
        if (v23 >= *(a3 + 3))
        {
          result = llvm::raw_ostream::write(a3, v22);
        }

        else
        {
          *(a3 + 4) = v23 + 1;
          *v23 = v22;
        }

        v20 = llvm::hexdigit(unsigned int,BOOL)::LUT[v16 & 0xF];
        v24 = *(a3 + 4);
        if (v24 < *(a3 + 3))
        {
          *(a3 + 4) = v24 + 1;
          *v24 = v20;
          goto LABEL_32;
        }

        v19 = a3;
        goto LABEL_31;
      }

LABEL_28:
      v18 = *(a3 + 4);
      if (v18 >= *(a3 + 3))
      {
        v19 = a3;
        v20 = v15;
LABEL_31:
        result = llvm::raw_ostream::write(v19, v20);
        goto LABEL_32;
      }

      *(a3 + 4) = v18 + 1;
      *v18 = v15;
LABEL_32:
      --v12;
    }

    while (v12);
  }

  return result;
}

void WriteAsOperandInternal(llvm::raw_ostream *this, llvm::DIExpression *a2, uint64_t a3)
{
  v6 = *a2;
  if (v6 == 33)
  {

    writeDIArgList(this, a2, a3);
  }

  else if (v6 == 6)
  {

    writeDIExpression(this, a2, a3);
  }

  else if (llvm::MDNode::classof(a2))
  {
    v7 = *(a3 + 16);
    if (!v7)
    {
      operator new();
    }

    v9 = (*(**(a3 + 16) + 32))(*(a3 + 16), a2);
    if (v9 == -1)
    {
      if (*a2 == 5)
      {
        writeDILocation(this, a2, a3);
      }

      else
      {
        v15 = *(this + 4);
        if (*(this + 3) == v15)
        {
          llvm::raw_ostream::write(this, "<", 1uLL);
        }

        else
        {
          *v15 = 60;
          ++*(this + 4);
        }

        llvm::write_hex(this, a2, 3, 0, 0);
        v16 = *(this + 4);
        if (*(this + 3) == v16)
        {
          llvm::raw_ostream::write(this, ">", 1uLL);
        }

        else
        {
          *v16 = 62;
          ++*(this + 4);
        }
      }
    }

    else
    {
      v10 = v9;
      v11 = *(this + 4);
      if (v11 >= *(this + 3))
      {
        llvm::raw_ostream::write(this, 33);
      }

      else
      {
        *(this + 4) = v11 + 1;
        *v11 = 33;
      }

      llvm::write_integer(this, v10, 0, 0);
    }

    *(a3 + 16) = v7;
  }

  else if (*a2)
  {
    v8 = *(this + 4);
    if (v8 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 32);
    }

    else
    {
      *(this + 4) = v8 + 1;
      *v8 = 32;
    }

    v13 = *(a2 + 16);

    WriteAsOperandInternal(this, v13, a3);
  }

  else
  {
    v12 = *(this + 4);
    if (*(this + 3) - v12 > 1uLL)
    {
      *v12 = 8737;
      *(this + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(this, "!", 2uLL);
    }

    llvm::printEscapedString((*(a2 + 1) + 24), **(a2 + 1), this);
    v14 = *(this + 4);
    if (v14 >= *(this + 3))
    {

      llvm::raw_ostream::write(this, 34);
    }

    else
    {
      *(this + 4) = v14 + 1;
      *v14 = 34;
    }
  }
}

uint64_t writeDIExpression(llvm::raw_ostream *this, unsigned int **a2, _anonymous_namespace_::AsmWriterContext *a3)
{
  v5 = *(this + 4);
  if (*(this + 3) - v5 > 0xDuLL)
  {
    qmemcpy(v5, "!DIExpression(", 14);
    *(this + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(this, "!DIExpression(", 0xEuLL);
  }

  result = llvm::DIExpression::isValid(a2);
  v7 = a2[2];
  v8 = a2[3];
  if (result)
  {
    v27 = a2[2];
    if (v7 != v8)
    {
      v9 = 1;
      do
      {
        v10 = llvm::dwarf::OperationEncodingString(*v7);
        v12 = v11;
        v13 = this;
        if ((v9 & 1) == 0)
        {
          v13 = llvm::raw_ostream::operator<<(this, ", ", 2uLL);
        }

        llvm::raw_ostream::operator<<(v13, v10, v12);
        if (*v7 == 4097)
        {
          v14 = llvm::raw_ostream::operator<<(this, ", ", 2uLL);
          write_unsigned<unsigned long>(v14, *(v7 + 1), 0, 0, 0);
          v15 = llvm::raw_ostream::operator<<(this, ", ", 2uLL);
          v16 = llvm::dwarf::AttributeEncodingString(v7[4]);
          llvm::raw_ostream::operator<<(v15, v16, v17);
        }

        else
        {
          Size = llvm::DIExpression::ExprOperand::getSize(&v27);
          v19 = (Size - 1);
          if (Size != 1)
          {
            v20 = (v7 + 2);
            do
            {
              v21 = llvm::raw_ostream::operator<<(this, ", ", 2uLL);
              v22 = *v20++;
              write_unsigned<unsigned long>(v21, v22, 0, 0, 0);
              --v19;
            }

            while (v19);
          }
        }

        result = llvm::DIExpression::ExprOperand::getSize(&v27);
        v9 = 0;
        v7 += 2 * result;
        v27 = v7;
      }

      while (v7 != v8);
    }
  }

  else if (v7 != v8)
  {
    v23 = 1;
    do
    {
      v24 = this;
      if ((v23 & 1) == 0)
      {
        v24 = llvm::raw_ostream::operator<<(this, ", ", 2uLL);
      }

      v25 = *v7;
      v7 += 2;
      result = write_unsigned<unsigned long>(v24, v25, 0, 0, 0);
      v23 = 0;
    }

    while (v7 != v8);
  }

  v26 = *(this + 4);
  if (*(this + 3) == v26)
  {

    return llvm::raw_ostream::write(this, ")", 1uLL);
  }

  else
  {
    *v26 = 41;
    ++*(this + 4);
  }

  return result;
}

llvm::raw_ostream *writeDIArgList(llvm::raw_ostream *this, const llvm::DIArgList *a2, _anonymous_namespace_::AsmWriterContext *a3)
{
  v4 = this;
  v5 = *(this + 4);
  if ((*(this + 3) - v5) > 0xA)
  {
    *(v5 + 7) = 678720361;
    *v5 = *"!DIArgList(";
    *(this + 4) += 11;
  }

  else
  {
    this = llvm::raw_ostream::write(this, "!DIArgList(", 0xBuLL);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 2);
    v8 = 8 * v6;
    v9 = 1;
    do
    {
      v10 = *v7;
      if ((v9 & 1) == 0)
      {
        llvm::raw_ostream::operator<<(v4, ", ", 2uLL);
      }

      this = WriteAsOperandInternal(v4, v10);
      v9 = 0;
      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(v4 + 4);
  if (*(v4 + 3) == v11)
  {

    return llvm::raw_ostream::write(v4, ")", 1uLL);
  }

  else
  {
    *v11 = 41;
    ++*(v4 + 4);
  }

  return this;
}

llvm::raw_ostream *writeDILocation(llvm::raw_ostream *this, const llvm::DILocation *a2, _anonymous_namespace_::AsmWriterContext *a3)
{
  v6 = *(this + 4);
  if ((*(this + 3) - v6) > 0xB)
  {
    *(v6 + 8) = 678326121;
    *v6 = *"!DILocation(";
    *(this + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(this, "!DILocation(", 0xCuLL);
  }

  v14 = this;
  v15 = 1;
  v16 = ", ";
  v17 = a3;
  v8 = (a2 - 16);
  v7 = *(a2 - 2);
  if ((v7 & 2) != 0)
  {
    v9 = *(a2 - 4);
  }

  else
  {
    v9 = &v8[-((v7 >> 2) & 0xF)];
  }

  if ((*v8 & 2) != 0)
  {
    if (*(a2 - 6) == 2)
    {
      v10 = *(a2 - 4);
      goto LABEL_12;
    }
  }

  else if ((*v8 & 0x3C0) == 0x80)
  {
    v10 = &v8[-((*v8 >> 2) & 0xFLL)];
LABEL_12:
    v11 = v10[1];
    goto LABEL_14;
  }

  v11 = 0;
LABEL_14:
  v13 = *(this + 4);
  if (*(this + 3) == v13)
  {

    return llvm::raw_ostream::write(this, ")", 1uLL);
  }

  else
  {
    *v13 = 41;
    ++*(this + 4);
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::MDFieldPrinter::printInt<unsigned int>(llvm::raw_ostream *result, const void *a2, size_t __n, unsigned int a4, char a5)
{
  v8 = result;
  if (a4 || (a5 & 1) == 0)
  {
    v9 = *result;
    if (*(v8 + 8) == 1)
    {
      *(v8 + 8) = 0;
    }

    else
    {
      v9 = llvm::raw_ostream::operator<<(v9, *(v8 + 2));
    }

    v10 = llvm::raw_ostream::operator<<(v9, a2, __n);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8250;
      *(v10 + 4) += 2;
    }

    else
    {
      v10 = llvm::raw_ostream::write(v10, ": ", 2uLL);
    }

    return write_unsigned<unsigned long>(v10, a4, 0, 0, 0);
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::MDFieldPrinter::printMetadata(llvm::raw_ostream *result, const void *a2, size_t __n, llvm::DIExpression *a4, char a5)
{
  v8 = result;
  if (a4 || (a5 & 1) == 0)
  {
    v9 = *result;
    if (*(v8 + 8) == 1)
    {
      *(v8 + 8) = 0;
    }

    else
    {
      v9 = llvm::raw_ostream::operator<<(v9, *(v8 + 16));
    }

    v10 = llvm::raw_ostream::operator<<(v9, a2, __n);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8250;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ": ", 2uLL);
    }

    v12 = *v8;
    v13 = *(v8 + 24);

    return writeMetadataAsOperand(v12, a4, v13);
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::MDFieldPrinter::printBool(llvm::raw_ostream *result, const void *a2, size_t __n, int a4, __int16 a5)
{
  if ((a5 & 0x100) == 0 || a4 != a5)
  {
    v8 = *result;
    if (*(result + 8) == 1)
    {
      *(result + 8) = 0;
    }

    else
    {
      v8 = llvm::raw_ostream::operator<<(*result, *(result + 2));
    }

    v9 = llvm::raw_ostream::operator<<(v8, a2, __n);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 1uLL)
    {
      *v10 = 8250;
      *(v9 + 4) += 2;
    }

    else
    {
      v9 = llvm::raw_ostream::write(v9, ": ", 2uLL);
    }

    if (a4)
    {
      v11 = 4;
    }

    else
    {
      v11 = 5;
    }

    if (a4)
    {
      v12 = "true";
    }

    else
    {
      v12 = "false";
    }

    return llvm::raw_ostream::operator<<(v9, v12, v11);
  }

  return result;
}

llvm::raw_ostream *writeMetadataAsOperand(llvm::raw_ostream *result, llvm::DIExpression *a2, uint64_t (***a3)(void, llvm::DIExpression *))
{
  if (a2)
  {
    WriteAsOperandInternal(result, a2);
    v6 = **a3;

    return v6(a3, a2);
  }

  else
  {
    v7 = *(result + 4);
    if (*(result + 3) - v7 > 3uLL)
    {
      *v7 = 1819047278;
      *(result + 4) += 4;
    }

    else
    {

      return llvm::raw_ostream::write(result, "null", 4uLL);
    }
  }

  return result;
}

uint64_t createSlotTracker(const llvm::Value *a1)
{
  v2 = *(a1 + 16);
  if (a1 && v2 == 21)
  {
    operator new();
  }

  if (a1 && v2 >= 0x1C)
  {
    if (*(a1 + 5))
    {
      operator new();
    }

    return 0;
  }

  else
  {
    if (a1 && v2 == 22)
    {
      operator new();
    }

    if (a1 && v2 == 3 || a1 && v2 == 1 || a1 && v2 == 2)
    {
      operator new();
    }

    result = 0;
    if (a1 && !v2)
    {
      operator new();
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>,llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>::LookupBucketFor<llvm::Function const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 56 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 56 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>,llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 56 * v1;
    v3 = (*result + 32);
    do
    {
      if ((*(v3 - 4) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = v3;
        std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>::__destroy_vector::operator()[abi:nn200100](&v4);
        result = MEMORY[0x277C69E30](*(v3 - 3), 8);
      }

      v3 += 7;
      v2 -= 56;
    }

    while (v2);
  }

  return result;
}

void std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void anonymous namespace::TypePrinting::incorporateTypes(_anonymous_namespace_::TypePrinting *this)
{
  if (*this)
  {
    llvm::TypeFinder::run((this + 8), *this, 0);
    *this = 0;
    v2 = *(this + 13);
    v3 = *(this + 14);
    if (v2 != v3)
    {
      v4 = 0;
      v5 = *(this + 13);
      while (1)
      {
        v6 = *v5;
        if ((*(*v5 + 9) & 4) == 0)
        {
          v7 = *(v6 + 24);
          if (!v7 || !*v7)
          {
            v12 = 0;
            v8 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(this + 17), *(this + 38), v6, &v12);
            v9 = v12;
            if ((v8 & 1) == 0)
            {
              v10 = *(this + 36);
              v11 = *(this + 38);
              if (4 * v10 + 4 >= 3 * v11)
              {
                v11 *= 2;
              }

              else if (v11 + ~v10 - *(this + 37) > v11 >> 3)
              {
                goto LABEL_11;
              }

              llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::grow(this + 136, v11);
              v12 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(this + 17), *(this + 38), v6, &v12);
              v9 = v12;
LABEL_11:
              ++*(this + 36);
              if (*v9 != -4096)
              {
                --*(this + 37);
              }

              *v9 = v6;
              *(v9 + 8) = 0;
            }

            *(v9 + 8) = v4++;
            goto LABEL_15;
          }

          *v2++ = v6;
        }

LABEL_15:
        if (++v5 == v3)
        {
          v3 = *(this + 14);
          break;
        }
      }
    }

    if (v2 != v3)
    {
      *(this + 14) = v2;
    }
  }
}

void WriteMDNodeBodyInternal(llvm::raw_ostream *this, const llvm::MDNode *a2, llvm::raw_ostream **a3)
{
  v5 = this;
  v548 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 1) & 0x7F;
  if (v6 == 1)
  {
    v7 = "distinct ";
    v8 = 9;
    goto LABEL_5;
  }

  if (v6 == 2)
  {
    v7 = "<temporary!> ";
    v8 = 13;
LABEL_5:
    this = llvm::raw_ostream::operator<<(this, v7, v8);
  }

  switch(*a2)
  {
    case 5:
      v27 = *MEMORY[0x277D85DE8];

      writeDILocation(v5, a2, a3);
      return;
    case 6:
      v23 = *MEMORY[0x277D85DE8];

      writeDIExpression(v5, a2, a3);
      return;
    case 7:
      v25 = *(v5 + 4);
      if (*(v5 + 3) - v25 > 0x1BuLL)
      {
        qmemcpy(v25, "!DIGlobalVariableExpression(", 28);
        *(v5 + 4) += 28;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DIGlobalVariableExpression(", 0x1CuLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v108 = (a2 - 16);
      v107 = *(a2 - 2);
      if ((v107 & 2) != 0)
      {
        v109 = *(a2 - 4);
      }

      else
      {
        v109 = &v108[-((v107 >> 2) & 0xF)];
      }

      if ((*v108 & 2) != 0)
      {
        v110 = *(a2 - 4);
      }

      else
      {
        v110 = &v108[-((*v108 >> 2) & 0xFLL)];
      }

      v50 = v110[1];
      v51 = "expr";
      goto LABEL_508;
    case 8:
      v14 = *(v5 + 4);
      if (*(v5 + 3) - v14 > 0xEuLL)
      {
        qmemcpy(v14, "!GenericDINode(", 15);
        *(v5 + 4) += 15;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!GenericDINode(", 0xFuLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v75 = (a2 - 16);
      v74 = *(a2 - 2);
      if ((v74 & 2) != 0)
      {
        v76 = *(a2 - 4);
      }

      else
      {
        v76 = &v75[-((v74 >> 2) & 0xF)];
      }

      v77 = *v76;
      if (v77)
      {
        v78 = *(v77 + 8);
        v81 = *v78;
        v79 = (v78 + 3);
        v80 = v81;
      }

      else
      {
        v79 = 0;
        v80 = 0;
      }

      if ((*v75 & 2) != 0)
      {
        v270 = *(a2 - 6);
      }

      else
      {
        v270 = (*v75 >> 6) & 0xF;
      }

      if (v270 != 1)
      {
        v271 = v5;
        if ((v545 & 1) == 0)
        {
          v271 = llvm::raw_ostream::operator<<(v5, __s);
        }

        llvm::raw_ostream::operator<<(v271, "operands: {", 0xBuLL);
        v272 = *v75;
        if ((*v75 & 2) != 0)
        {
          v273 = *(a2 - 4);
          v274 = *(a2 - 6);
        }

        else
        {
          v273 = &v75[-((v272 >> 2) & 0xF)];
          v274 = (v272 >> 6) & 0xF;
        }

        if (v274 != 1)
        {
          v401 = (v273 + 1);
          v402 = 8 * v274 - 8;
          v403 = 1;
          do
          {
            if ((v403 & 1) == 0)
            {
              v404 = *(v5 + 4);
              if (*(v5 + 3) - v404 > 1uLL)
              {
                *v404 = 8236;
                *(v5 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v5, ", ", 2uLL);
              }
            }

            v405 = *v401++;
            writeMetadataAsOperand(v5, v405, a3);
            v403 = 0;
            v402 -= 8;
          }

          while (v402);
        }

        llvm::raw_ostream::operator<<(v5, "}", 1uLL);
      }

      goto LABEL_769;
    case 9:
      v31 = *(v5 + 4);
      if ((*(v5 + 3) - v31) > 0xB)
      {
        *(v31 + 8) = 677734254;
        *v31 = *"!DISubrange(";
        *(v5 + 4) += 12;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DISubrange(", 0xCuLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v160 = (a2 - 16);
      v159 = *(a2 - 2);
      if ((v159 & 2) != 0)
      {
        v161 = *(a2 - 4);
      }

      else
      {
        v161 = &v160[-((v159 >> 2) & 0xF)];
      }

      v162 = *v161;
      if (*v161 && *v162 == 1)
      {
        v163 = *(v162 + 16);
        v164 = *(v163 + 32);
        if (v164 > 0x40)
        {
          v165 = **(v163 + 24);
        }

        else
        {
          v165 = (*(v163 + 24) << -v164) >> -v164;
        }
      }

      else
      {
      }

      if ((*v160 & 2) != 0)
      {
        v524 = *(a2 - 4);
      }

      else
      {
        v524 = &v160[-((*v160 >> 2) & 0xFLL)];
      }

      v525 = v524[1];
      if (v525 && *v525 == 1)
      {
        v526 = *(v525 + 16);
        v527 = *(v526 + 32);
        if (v527 > 0x40)
        {
          v528 = **(v526 + 24);
        }

        else
        {
          v528 = (*(v526 + 24) << -v527) >> -v527;
        }
      }

      else
      {
      }

      if ((*v160 & 2) != 0)
      {
        v529 = *(a2 - 4);
      }

      else
      {
        v529 = &v160[-((*v160 >> 2) & 0xFLL)];
      }

      v530 = v529[2];
      if (v530 && *v530 == 1)
      {
        v531 = *(v530 + 16);
        v532 = *(v531 + 32);
        if (v532 > 0x40)
        {
          v533 = **(v531 + 24);
        }

        else
        {
          v533 = (*(v531 + 24) << -v532) >> -v532;
        }
      }

      else
      {
      }

      if ((*v160 & 2) != 0)
      {
        v534 = *(a2 - 4);
      }

      else
      {
        v534 = &v160[-((*v160 >> 2) & 0xFLL)];
      }

      v50 = v534[3];
      if (!v50 || *v50 != 1)
      {
        v51 = "stride";
        v52 = 6;
        goto LABEL_680;
      }

      v535 = *(v50 + 16);
      v536 = *(v535 + 32);
      if (v536 > 0x40)
      {
        v141 = **(v535 + 24);
      }

      else
      {
        v141 = (*(v535 + 24) << -v536) >> -v536;
      }

      goto LABEL_827;
    case 0xA:
      v34 = *(v5 + 4);
      if (*(v5 + 3) - v34 > 0xDuLL)
      {
        qmemcpy(v34, "!DIEnumerator(", 14);
        *(v5 + 4) += 14;
      }

      else
      {
        this = llvm::raw_ostream::write(v5, "!DIEnumerator(", 0xEuLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = &qword_2815AA830;
      v182 = *(a2 - 2);
      if ((v182 & 2) != 0)
      {
        v183 = *(a2 - 4);
      }

      else
      {
        v183 = (a2 - 8 * ((v182 >> 2) & 0xF) - 16);
      }

      v184 = *v183;
      if (v184)
      {
        v185 = *(v184 + 8);
        v188 = *v185;
        v186 = (v185 + 3);
        v187 = v188;
      }

      else
      {
        v186 = 0;
        v187 = 0;
      }

      v335 = *(a2 + 1);
      v336 = p_s;
      if (v545 == 1)
      {
        LOBYTE(v545) = 0;
        v337 = p_s;
      }

      else
      {
        v337 = llvm::raw_ostream::operator<<(p_s, __s);
      }

      v338 = *(v337 + 4);
      if ((*(v337 + 3) - v338) > 4)
      {
        *(v338 + 4) = 101;
        *v338 = 1970037110;
        v339 = (*(v337 + 4) + 5);
        *(v337 + 4) = v339;
      }

      else
      {
        v337 = llvm::raw_ostream::write(v337, "value", 5uLL);
        v339 = *(v337 + 4);
      }

      if (*(v337 + 3) - v339 > 1uLL)
      {
        *v339 = 8250;
        *(v337 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v337, ": ", 2uLL);
      }

      llvm::APInt::print((a2 + 16), v336, v335 == 0);
      if (!*(a2 + 1))
      {
        goto LABEL_769;
      }

      v255 = "isUnsigned";
      v257 = 10;
      v256 = 1;
      goto LABEL_451;
    case 0xB:
      v26 = *(v5 + 4);
      if (*(v5 + 3) - v26 > 0xCuLL)
      {
        qmemcpy(v26, "!DIBasicType(", 13);
        *(v5 + 4) += 13;
      }

      else
      {
        this = llvm::raw_ostream::write(v5, "!DIBasicType(", 0xDuLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = &qword_2815AA830;
      if (*(a2 + 1) != 36)
      {
      }

      v111 = *(a2 - 2);
      if ((v111 & 2) != 0)
      {
        v112 = *(a2 - 4);
      }

      else
      {
        v112 = a2 - 8 * ((v111 >> 2) & 0xF) - 16;
      }

      v113 = *(v112 + 2);
      if (v113)
      {
        v114 = *(v113 + 8);
        v117 = *v114;
        v115 = (v114 + 3);
        v116 = v117;
      }

      else
      {
        v115 = 0;
        v116 = 0;
      }

      goto LABEL_769;
    case 0xC:
      v37 = *(v5 + 4);
      if (*(v5 + 3) - v37 > 0xEuLL)
      {
        qmemcpy(v37, "!DIDerivedType(", 15);
        *(v5 + 4) += 15;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DIDerivedType(", 0xFuLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v201 = (a2 - 16);
      v200 = *(a2 - 2);
      if ((v200 & 2) != 0)
      {
        v202 = *(a2 - 4);
      }

      else
      {
        v202 = &v201[-((v200 >> 2) & 0xF)];
      }

      v203 = v202[2];
      if (v203)
      {
        v204 = *(v203 + 8);
        v207 = *v204;
        v205 = (v204 + 3);
        v206 = v207;
      }

      else
      {
        v205 = 0;
        v206 = 0;
      }

      if ((*v201 & 2) != 0)
      {
        v342 = *(a2 - 4);
      }

      else
      {
        v342 = &v201[-((*v201 >> 2) & 0xFLL)];
      }

      v343 = a2;
      if (*a2 != 15)
      {
        if ((*v201 & 2) != 0)
        {
          v344 = *(a2 - 4);
        }

        else
        {
          v344 = &v201[-((*v201 >> 2) & 0xFLL)];
        }

        v343 = *v344;
      }

      v517 = *(a2 - 2);
      if ((v517 & 2) != 0)
      {
        v518 = *(a2 - 4);
      }

      else
      {
        v518 = &v201[-((v517 >> 2) & 0xF)];
      }

      v519 = *(a2 - 2);
      if ((v519 & 2) != 0)
      {
        v520 = *(a2 - 4);
      }

      else
      {
        v520 = &v201[-((v519 >> 2) & 0xF)];
      }

      v521 = *(a2 + 44);
      if ((v521 & 0x100000000) != 0)
      {
      }

      if ((*v201 & 2) != 0)
      {
        v522 = *(a2 - 4);
      }

      else
      {
        v522 = &v201[-((*v201 >> 2) & 0xFLL)];
      }

      if (*(a2 + 1) != 17152)
      {
        goto LABEL_769;
      }

      if (*(a2 + 1) != 17152)
      {
        goto LABEL_769;
      }

      if (*(a2 + 1) != 17152)
      {
        goto LABEL_769;
      }

      if (*(a2 + 1) != 17152)
      {
        goto LABEL_769;
      }

      if (*(a2 + 1) != 17152)
      {
        goto LABEL_769;
      }

      v256 = (*(a2 + 1) >> 22) & 1;
      v255 = "ptrAuthAuthenticatesNullValues";
      v257 = 30;
LABEL_451:
      v340 = 0;
      goto LABEL_690;
    case 0xD:
      v16 = *(v5 + 4);
      if ((*(v5 + 3) - v16) > 0x10)
      {
        *(v16 + 16) = 40;
        *v16 = *"!DICompositeType(";
        *(v5 + 4) += 17;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DICompositeType(", 0x11uLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v86 = (a2 - 16);
      v85 = *(a2 - 2);
      if ((v85 & 2) != 0)
      {
        v87 = *(a2 - 4);
      }

      else
      {
        v87 = &v86[-((v85 >> 2) & 0xF)];
      }

      v88 = v87[2];
      if (v88)
      {
        v89 = *(v88 + 8);
        v92 = *v89;
        v90 = (v89 + 3);
        v91 = v92;
      }

      else
      {
        v90 = 0;
        v91 = 0;
      }

      if ((*v86 & 2) != 0)
      {
        v275 = *(a2 - 4);
      }

      else
      {
        v275 = &v86[-((*v86 >> 2) & 0xF)];
      }

      v276 = a2;
      if (*a2 != 15)
      {
        if ((*v86 & 2) != 0)
        {
          v277 = *(a2 - 4);
        }

        else
        {
          v277 = &v86[-((*v86 >> 2) & 0xF)];
        }

        v276 = *v277;
      }

      v455 = *(a2 - 2);
      if ((v455 & 2) != 0)
      {
        v456 = *(a2 - 4);
      }

      else
      {
        v456 = &v86[-((v455 >> 2) & 0xF)];
      }

      v457 = *(a2 - 2);
      if ((v457 & 2) != 0)
      {
        v458 = *(a2 - 4);
      }

      else
      {
        v458 = &v86[-((v457 >> 2) & 0xF)];
      }

      v459 = *(a2 - 2);
      if ((v459 & 2) != 0)
      {
        v460 = *(a2 - 4);
      }

      else
      {
        v460 = &v86[-((v459 >> 2) & 0xF)];
      }

      if ((*v86 & 2) != 0)
      {
        v461 = *(a2 - 4);
      }

      else
      {
        v461 = &v86[-((*v86 >> 2) & 0xF)];
      }

      if ((*v86 & 2) != 0)
      {
        v462 = *(a2 - 4);
      }

      else
      {
        v462 = &v86[-((*v86 >> 2) & 0xF)];
      }

      v463 = v462[7];
      if (v463)
      {
        v464 = *(v463 + 8);
        v467 = *v464;
        v465 = (v464 + 3);
        v466 = v467;
      }

      else
      {
        v465 = 0;
        v466 = 0;
      }

      if ((*v86 & 2) != 0)
      {
        v468 = *(a2 - 4);
      }

      else
      {
        v468 = &v86[-((*v86 >> 2) & 0xF)];
      }

      if ((*v86 & 2) != 0)
      {
        v469 = *(a2 - 4);
      }

      else
      {
        v469 = &v86[-((*v86 >> 2) & 0xF)];
      }

      if ((*v86 & 2) != 0)
      {
        v470 = *(a2 - 4);
      }

      else
      {
        v470 = &v86[-((*v86 >> 2) & 0xF)];
      }

      if ((*v86 & 2) != 0)
      {
        v471 = *(a2 - 4);
      }

      else
      {
        v471 = &v86[-((*v86 >> 2) & 0xF)];
      }

      v472 = *v86;
      if ((*v86 & 2) != 0)
      {
        v473 = *(a2 - 4);
      }

      else
      {
        v473 = &v86[-((v472 >> 2) & 0xF)];
      }

      v474 = v473[12];
      if (v474 && *v474 == 1 && (v475 = *(v474 + 128)) != 0 && *(v475 + 16) == 16)
      {
        v476 = *(v475 + 32);
        if (v476 > 0x40)
        {
          v477 = **(v475 + 24);
        }

        else
        {
          v477 = (*(v475 + 24) << -v476) >> -v476;
        }
      }

      else
      {
        if ((v472 & 2) != 0)
        {
          v478 = *(a2 - 4);
        }

        else
        {
          v478 = &v86[-((v472 >> 2) & 0xF)];
        }
      }

      if ((*v86 & 2) != 0)
      {
        v479 = *(a2 - 4);
      }

      else
      {
        v479 = &v86[-((*v86 >> 2) & 0xF)];
      }

      v50 = v479[13];
      goto LABEL_679;
    case 0xE:
      v36 = *(v5 + 4);
      if ((*(v5 + 3) - v36) > 0x11)
      {
        *(v36 + 16) = 10341;
        *v36 = *"!DISubroutineType(";
        *(v5 + 4) += 18;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DISubroutineType(", 0x12uLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v197 = *(a2 + 44);
      if (*(a2 + 44))
      {
        v198 = p_s;
        if (v545 == 1)
        {
          LOBYTE(v545) = 0;
          v199 = p_s;
        }

        else
        {
          v199 = llvm::raw_ostream::operator<<(p_s, __s);
        }

        v390 = llvm::raw_ostream::operator<<(v199, "cc", 2uLL);
        v391 = *(v390 + 4);
        if (*(v390 + 3) - v391 > 1uLL)
        {
          *v391 = 8250;
          *(v390 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v390, ": ", 2uLL);
        }

        v392 = llvm::dwarf::ConventionString(v197);
        if (v393)
        {
          llvm::raw_ostream::operator<<(v198, v392, v393);
        }

        else
        {
          v523 = *(v198 + 4);
          if (v523 >= *(v198 + 3))
          {
            llvm::raw_ostream::write(v198, v197);
          }

          else
          {
            *(v198 + 4) = v523 + 1;
            *v523 = v197;
          }
        }
      }

      v537 = *(a2 - 2);
      if ((v537 & 2) != 0)
      {
        v538 = *(a2 - 4);
      }

      else
      {
        v538 = a2 - 8 * ((v537 >> 2) & 0xF) - 16;
      }

      v50 = *(v538 + 3);
      v51 = "types";
      goto LABEL_833;
    case 0xF:
      v13 = *(v5 + 4);
      if (*(v5 + 3) - v13 > 7uLL)
      {
        *v13 = 0x28656C6946494421;
        *(v5 + 4) += 8;
      }

      else
      {
        this = llvm::raw_ostream::write(v5, "!DIFile(", 8uLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = &qword_2815AA830;
      v67 = (a2 - 16);
      v66 = *(a2 - 2);
      if ((v66 & 2) != 0)
      {
        v68 = *(a2 - 4);
      }

      else
      {
        v68 = &v67[-((v66 >> 2) & 0xF)];
      }

      v69 = *v68;
      if (v69)
      {
        v70 = *(v69 + 8);
        v73 = *v70;
        v71 = (v70 + 3);
        v72 = v73;
      }

      else
      {
        v71 = 0;
        v72 = 0;
      }

      if ((*v67 & 2) != 0)
      {
        v258 = *(a2 - 4);
      }

      else
      {
        v258 = &v67[-((*v67 >> 2) & 0xFLL)];
      }

      v259 = v258[1];
      if (v259)
      {
        v260 = *(v259 + 8);
        v263 = *v260;
        v261 = (v260 + 3);
        v262 = v263;
      }

      else
      {
        v261 = 0;
        v262 = 0;
      }

      if (*(a2 + 32) == 1)
      {
        v264 = *(*(a2 + 3) + 8);
        v267 = *v264;
        v265 = (v264 + 3);
        v266 = v267;
        v268 = *(a2 + 4);
        v269 = p_s;
        if (v545 == 1)
        {
          LOBYTE(v545) = 0;
        }

        else
        {
          v269 = llvm::raw_ostream::operator<<(p_s, __s);
        }

        v395 = *(v269 + 4);
        if (*(v269 + 3) - v395 > 0xDuLL)
        {
          qmemcpy(v395, "checksumkind: ", 14);
          *(v269 + 4) += 14;
        }

        else
        {
          llvm::raw_ostream::write(v269, "checksumkind: ", 0xEuLL);
        }

        v396 = ChecksumKindName[v268 - 1];
        v397 = strlen(v396);
        llvm::raw_ostream::operator<<(v269, v396, v397);
      }

      v398 = *(a2 + 5);
      if (v398)
      {
        v399 = *(v398 + 8);
        v400 = *v399;
        TargetFuncName = v399 + 3;
        v385 = v400;
      }

      else
      {
        TargetFuncName = 0;
        v385 = 0;
      }

      v387 = "source";
      p_p_s = &p_s;
      v389 = 6;
      goto LABEL_768;
    case 0x10:
      v15 = *(v5 + 4);
      if (*(v5 + 3) - v15 > 0xEuLL)
      {
        qmemcpy(v15, "!DICompileUnit(", 15);
        *(v5 + 4) += 15;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DICompileUnit(", 0xFuLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v82 = a2;
      if (*a2 != 15)
      {
        v83 = *(a2 - 2);
        if ((v83 & 2) != 0)
        {
          v84 = *(a2 - 4);
        }

        else
        {
          v84 = (a2 - 8 * ((v83 >> 2) & 0xF) - 16);
        }

        v82 = *v84;
      }

      v407 = (a2 - 16);
      v406 = *(a2 - 2);
      if ((v406 & 2) != 0)
      {
        v408 = *(a2 - 4);
      }

      else
      {
        v408 = &v407[-((v406 >> 2) & 0xF)];
      }

      v409 = v408[1];
      if (v409)
      {
        v410 = *(v409 + 8);
        v413 = *v410;
        v411 = (v410 + 3);
        v412 = v413;
      }

      else
      {
        v411 = 0;
        v412 = 0;
      }

      v414 = *(a2 - 2);
      if ((v414 & 2) != 0)
      {
        v415 = *(a2 - 4);
      }

      else
      {
        v415 = &v407[-((v414 >> 2) & 0xF)];
      }

      v416 = v415[2];
      if (v416)
      {
        v417 = *(v416 + 8);
        v420 = *v417;
        v418 = (v417 + 3);
        v419 = v420;
      }

      else
      {
        v418 = 0;
        v419 = 0;
      }

      v421 = *(a2 - 2);
      if ((v421 & 2) != 0)
      {
        v422 = *(a2 - 4);
      }

      else
      {
        v422 = &v407[-((v421 >> 2) & 0xF)];
      }

      v423 = v422[3];
      if (v423)
      {
        v424 = *(v423 + 8);
        v427 = *v424;
        v425 = (v424 + 3);
        v426 = v427;
      }

      else
      {
        v425 = 0;
        v426 = 0;
      }

      v428 = *(a2 + 7);
      v429 = p_s;
      if (v545 == 1)
      {
        LOBYTE(v545) = 0;
      }

      else
      {
        v429 = llvm::raw_ostream::operator<<(p_s, __s);
      }

      v430 = *(v429 + 4);
      if ((*(v429 + 3) - v430) > 0xB)
      {
        *(v430 + 8) = 1684957515;
        *v430 = *"emissionKind";
        v431 = (*(v429 + 4) + 12);
        *(v429 + 4) = v431;
      }

      else
      {
        v429 = llvm::raw_ostream::write(v429, "emissionKind", 0xCuLL);
        v431 = *(v429 + 4);
      }

      if (*(v429 + 3) - v431 > 1uLL)
      {
        *v431 = 8250;
        *(v429 + 4) += 2;
      }

      else
      {
        v429 = llvm::raw_ostream::write(v429, ": ", 2uLL);
      }

      if (v428 > 3)
      {
        v432 = 0;
      }

      else
      {
        v432 = off_279F00190[v428];
      }

      llvm::raw_ostream::operator<<(v429, v432);
      if ((*v407 & 2) != 0)
      {
        v433 = *(a2 - 4);
      }

      else
      {
        v433 = &v407[-((*v407 >> 2) & 0xFLL)];
      }

      if ((*v407 & 2) != 0)
      {
        v434 = *(a2 - 4);
      }

      else
      {
        v434 = &v407[-((*v407 >> 2) & 0xFLL)];
      }

      if ((*v407 & 2) != 0)
      {
        v435 = *(a2 - 4);
      }

      else
      {
        v435 = &v407[-((*v407 >> 2) & 0xFLL)];
      }

      if ((*v407 & 2) != 0)
      {
        v436 = *(a2 - 4);
      }

      else
      {
        v436 = &v407[-((*v407 >> 2) & 0xFLL)];
      }

      if ((*v407 & 2) != 0)
      {
        v437 = *(a2 - 4);
      }

      else
      {
        v437 = &v407[-((*v407 >> 2) & 0xFLL)];
      }

      v438 = *(a2 + 11);
      if (v438)
      {
        v439 = p_s;
        if (v545 == 1)
        {
          LOBYTE(v545) = 0;
        }

        else
        {
          v439 = llvm::raw_ostream::operator<<(p_s, __s);
        }

        v440 = llvm::raw_ostream::operator<<(v439, "nameTableKind", 0xDuLL);
        v441 = *(v440 + 4);
        if (*(v440 + 3) - v441 > 1uLL)
        {
          *v441 = 8250;
          *(v440 + 4) += 2;
        }

        else
        {
          v440 = llvm::raw_ostream::write(v440, ": ", 2uLL);
        }

        v442 = "GNU";
        if (v438 != 1)
        {
          v442 = 0;
        }

        if (v438 == 2)
        {
          v443 = "None";
        }

        else
        {
          v443 = v442;
        }

        llvm::raw_ostream::operator<<(v440, v443);
      }

      v444 = *(a2 - 2);
      if ((v444 & 2) != 0)
      {
        v445 = *(a2 - 4);
      }

      else
      {
        v445 = &v407[-((v444 >> 2) & 0xF)];
      }

      v446 = v445[9];
      if (v446)
      {
        v447 = *(v446 + 8);
        v450 = *v447;
        v448 = (v447 + 3);
        v449 = v450;
      }

      else
      {
        v448 = 0;
        v449 = 0;
      }

      if ((*v407 & 2) != 0)
      {
        v451 = *(a2 - 4);
      }

      else
      {
        v451 = &v407[-((*v407 >> 2) & 0xFLL)];
      }

      v452 = v451[10];
      if (v452)
      {
        v453 = *(v452 + 8);
        v454 = *v453;
        TargetFuncName = v453 + 3;
        v385 = v454;
      }

      else
      {
        TargetFuncName = 0;
        v385 = 0;
      }

      v387 = "sdk";
      p_p_s = &p_s;
      v389 = 3;
      goto LABEL_768;
    case 0x11:
      v33 = *(v5 + 4);
      if (*(v5 + 3) - v33 > 0xDuLL)
      {
        qmemcpy(v33, "!DISubprogram(", 14);
        *(v5 + 4) += 14;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DISubprogram(", 0xEuLL);
      }

      *v540 = v5;
      v541 = 1;
      v542 = ", ";
      v543 = a3;
      v175 = (a2 - 16);
      v174 = *(a2 - 2);
      if ((v174 & 2) != 0)
      {
        v176 = *(a2 - 4);
      }

      else
      {
        v176 = &v175[-((v174 >> 2) & 0xF)];
      }

      v177 = v176[2];
      if (v177)
      {
        v178 = *(v177 + 8);
        v181 = *v178;
        v179 = (v178 + 3);
        v180 = v181;
      }

      else
      {
        v179 = 0;
        v180 = 0;
      }

      if ((*v175 & 2) != 0)
      {
        v326 = *(a2 - 4);
      }

      else
      {
        v326 = &v175[-((*v175 >> 2) & 0xF)];
      }

      v327 = v326[3];
      if (v327)
      {
        v328 = *(v327 + 8);
        v331 = *v328;
        v329 = (v328 + 3);
        v330 = v331;
      }

      else
      {
        v329 = 0;
        v330 = 0;
      }

      if ((*v175 & 2) != 0)
      {
        v332 = *(a2 - 4);
      }

      else
      {
        v332 = &v175[-((*v175 >> 2) & 0xF)];
      }

      v333 = a2;
      if (*a2 != 15)
      {
        if ((*v175 & 2) != 0)
        {
          v334 = *(a2 - 4);
        }

        else
        {
          v334 = &v175[-((*v175 >> 2) & 0xF)];
        }

        v333 = *v334;
      }

      v481 = *(a2 - 2);
      if ((v481 & 2) != 0)
      {
        v482 = *(a2 - 4);
      }

      else
      {
        v482 = &v175[-((v481 >> 2) & 0xF)];
      }

      v483 = *(a2 - 2);
      if ((v483 & 2) != 0)
      {
        if (*(a2 - 6) >= 9u)
        {
          v484 = *(a2 - 4);
          goto LABEL_701;
        }
      }

      else if ((*(a2 - 2) & 0x3C0uLL) > 0x200)
      {
        v484 = &v175[-((v483 >> 2) & 0xF)];
LABEL_701:
        v485 = v484[8];
        goto LABEL_703;
      }

      v485 = 0;
LABEL_703:
      v486 = *(a2 + 6);
      if (*(a2 + 9) & 3 | v486)
      {
      }

      v487 = *(a2 + 7);
      if (v487)
      {
        v488 = *v540;
        if (v541 == 1)
        {
          v541 = 0;
        }

        else
        {
          v488 = llvm::raw_ostream::operator<<(*v540, v542);
        }

        v489 = llvm::raw_ostream::operator<<(v488, "thisAdjustment", 0xEuLL);
        v490 = *(v489 + 4);
        if (*(v489 + 3) - v490 > 1uLL)
        {
          *v490 = 8250;
          *(v489 + 4) += 2;
        }

        else
        {
          v489 = llvm::raw_ostream::write(v489, ": ", 2uLL);
        }

        llvm::write_integer(v489, v487, 0, 0);
      }

      v491 = *(a2 + 9);
      v492 = *v540;
      if (v541 == 1)
      {
        v541 = 0;
        v493 = *v540;
      }

      else
      {
        v493 = llvm::raw_ostream::operator<<(*v540, v542);
      }

      v494 = *(v493 + 4);
      if (*(v493 + 3) - v494 > 6uLL)
      {
        *(v494 + 3) = 1936154988;
        *v494 = 1816555635;
        v495 = (*(v493 + 4) + 7);
        *(v493 + 4) = v495;
      }

      else
      {
        v493 = llvm::raw_ostream::write(v493, "spFlags", 7uLL);
        v495 = *(v493 + 4);
      }

      if (*(v493 + 3) - v495 > 1uLL)
      {
        *v495 = 8250;
        *(v493 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v493, ": ", 2uLL);
      }

      if (!v491)
      {
        write_unsigned<unsigned long>(v492, 0, 0, 0, 0);
        goto LABEL_737;
      }

      p_s = &__s;
      v545 = 0x800000000;
      v496 = llvm::DISubprogram::splitFlags(v491, &p_s);
      v497 = v496;
      if (!v545)
      {
        goto LABEL_733;
      }

      v539 = v496;
      v498 = p_s;
      v499 = 4 * v545;
      v500 = 1;
      do
      {
        FlagString = llvm::DISubprogram::getFlagString(*v498);
        v503 = v502;
        if ((v500 & 1) == 0)
        {
          v504 = *(v492 + 4);
          if ((*(v492 + 3) - v504) > 2)
          {
            *(v504 + 2) = 32;
            *v504 = 31776;
            *(v492 + 4) += 3;
          }

          else
          {
            llvm::raw_ostream::write(v492, " | ", 3uLL);
          }
        }

        llvm::raw_ostream::operator<<(v492, FlagString, v503);
        v500 = 0;
        ++v498;
        v499 -= 4;
      }

      while (v499);
      v175 = (a2 - 16);
      v497 = v539;
      if (v539 || !v545)
      {
        v492 = llvm::raw_ostream::operator<<(v492, " | ", 3uLL);
LABEL_733:
        write_unsigned<unsigned long>(v492, v497, 0, 0, 0);
      }

      if (p_s != &__s)
      {
        free(p_s);
      }

LABEL_737:
      if ((*v175 & 2) != 0)
      {
        v505 = *(a2 - 4);
      }

      else
      {
        v505 = &v175[-((*v175 >> 2) & 0xF)];
      }

      if ((*v175 & 2) != 0)
      {
        if (*(a2 - 6) >= 0xAu)
        {
          v506 = *(a2 - 4);
          goto LABEL_745;
        }
      }

      else if ((*v175 & 0x380) > 0x240)
      {
        v506 = &v175[-((*v175 >> 2) & 0xF)];
LABEL_745:
        v507 = v506[9];
        goto LABEL_747;
      }

      v507 = 0;
LABEL_747:
      if ((*v175 & 2) != 0)
      {
        v508 = *(a2 - 4);
      }

      else
      {
        v508 = &v175[-((*v175 >> 2) & 0xF)];
      }

      if ((*v175 & 2) != 0)
      {
        v509 = *(a2 - 4);
      }

      else
      {
        v509 = &v175[-((*v175 >> 2) & 0xF)];
      }

      if ((*v175 & 2) != 0)
      {
        if (*(a2 - 6) >= 0xBu)
        {
          v510 = *(a2 - 4);
          goto LABEL_758;
        }
      }

      else if ((*v175 & 0x3C0) > 0x280)
      {
        v510 = &v175[-((*v175 >> 2) & 0xF)];
LABEL_758:
        v511 = v510[10];
        goto LABEL_760;
      }

      v511 = 0;
LABEL_760:
      v512 = *v175;
      if ((*v175 & 2) != 0)
      {
        if (*(a2 - 6) >= 0xCu)
        {
          v513 = *(a2 - 4);
          goto LABEL_765;
        }
      }

      else if ((~v512 & 0x300) == 0)
      {
        v513 = &v175[-((v512 >> 2) & 0xF)];
LABEL_765:
        v514 = v513[11];
        goto LABEL_767;
      }

      v514 = 0;
LABEL_767:
      TargetFuncName = llvm::DISubprogram::getTargetFuncName(a2);
      v385 = v515;
      v387 = "targetFuncName";
      p_p_s = v540;
      v389 = 14;
LABEL_768:
LABEL_769:
      v129 = *(v5 + 4);
      if (*(v5 + 3) == v129)
      {
        llvm::raw_ostream::write(v5, ")", 1uLL);
      }

      else
      {
        v130 = 41;
LABEL_771:
        *v129 = v130;
        v93 = *(v5 + 4) + 1;
LABEL_772:
        *(v5 + 4) = v93;
      }

      v516 = *MEMORY[0x277D85DE8];
      return;
    case 0x12:
      v12 = *(v5 + 4);
      if (*(v5 + 3) - v12 > 0xFuLL)
      {
        *v12 = *"!DILexicalBlock(";
        *(v5 + 4) += 16;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DILexicalBlock(", 0x10uLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v62 = (a2 - 16);
      v61 = *(a2 - 2);
      if ((v61 & 2) != 0)
      {
        v63 = *(a2 - 4);
      }

      else
      {
        v63 = &v62[-((v61 >> 2) & 0xF)];
      }

      v64 = a2;
      if (*a2 != 15)
      {
        if ((*v62 & 2) != 0)
        {
          v65 = *(a2 - 4);
        }

        else
        {
          v65 = &v62[-((*v62 >> 2) & 0xFLL)];
        }

        v64 = *v65;
      }

      v370 = *(a2 + 10);
      v371 = "column";
      v372 = 6;
      goto LABEL_538;
    case 0x13:
      v24 = *(v5 + 4);
      if ((*(v5 + 3) - v24) > 0x13)
      {
        *(v24 + 16) = 677735529;
        *v24 = *"!DILexicalBlockFile(";
        *(v5 + 4) += 20;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DILexicalBlockFile(", 0x14uLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v103 = (a2 - 16);
      v102 = *(a2 - 2);
      if ((v102 & 2) != 0)
      {
        v104 = *(a2 - 4);
      }

      else
      {
        v104 = &v103[-((v102 >> 2) & 0xF)];
      }

      v105 = a2;
      if (*a2 != 15)
      {
        if ((*v103 & 2) != 0)
        {
          v106 = *(a2 - 4);
        }

        else
        {
          v106 = &v103[-((*v103 >> 2) & 0xFLL)];
        }

        v105 = *v106;
      }

      v370 = *(a2 + 4);
      v371 = "discriminator";
      v372 = 13;
      v394 = 0;
      goto LABEL_685;
    case 0x14:
      v11 = *(v5 + 4);
      if (*(v5 + 3) - v11 > 0xCuLL)
      {
        qmemcpy(v11, "!DINamespace(", 13);
        *(v5 + 4) += 13;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DINamespace(", 0xDuLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v54 = (a2 - 16);
      v53 = *(a2 - 2);
      if ((v53 & 2) != 0)
      {
        v55 = *(a2 - 4);
      }

      else
      {
        v55 = &v54[-((v53 >> 2) & 0xF)];
      }

      v56 = v55[2];
      if (v56)
      {
        v57 = *(v56 + 8);
        v60 = *v57;
        v58 = (v57 + 3);
        v59 = v60;
      }

      else
      {
        v58 = 0;
        v59 = 0;
      }

      if ((*v54 & 2) != 0)
      {
        v254 = *(a2 - 4);
      }

      else
      {
        v254 = &v54[-((*v54 >> 2) & 0xFLL)];
      }

      v255 = "exportSymbols";
      v256 = *(a2 + 16) & 1;
      v257 = 13;
      goto LABEL_689;
    case 0x15:
      v29 = *(v5 + 4);
      if ((*(v5 + 3) - v29) > 9)
      {
        *(v29 + 8) = 10341;
        *v29 = *"!DIModule(";
        *(v5 + 4) += 10;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DIModule(", 0xAuLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v143 = (a2 - 16);
      v142 = *(a2 - 2);
      if ((v142 & 2) != 0)
      {
        v144 = *(a2 - 4);
      }

      else
      {
        v144 = &v143[-((v142 >> 2) & 0xF)];
      }

      if ((*v143 & 2) != 0)
      {
        v145 = *(a2 - 4);
      }

      else
      {
        v145 = &v143[-((*v143 >> 2) & 0xFLL)];
      }

      v146 = v145[2];
      if (v146)
      {
        v147 = *(v146 + 8);
        v150 = *v147;
        v148 = (v147 + 3);
        v149 = v150;
      }

      else
      {
        v148 = 0;
        v149 = 0;
      }

      if ((*v143 & 2) != 0)
      {
        v284 = *(a2 - 4);
      }

      else
      {
        v284 = &v143[-((*v143 >> 2) & 0xFLL)];
      }

      v285 = v284[3];
      if (v285)
      {
        v286 = *(v285 + 8);
        v289 = *v286;
        v287 = (v286 + 3);
        v288 = v289;
      }

      else
      {
        v287 = 0;
        v288 = 0;
      }

      if ((*v143 & 2) != 0)
      {
        v290 = *(a2 - 4);
      }

      else
      {
        v290 = &v143[-((*v143 >> 2) & 0xFLL)];
      }

      v291 = v290[4];
      if (v291)
      {
        v292 = *(v291 + 8);
        v295 = *v292;
        v293 = (v292 + 3);
        v294 = v295;
      }

      else
      {
        v293 = 0;
        v294 = 0;
      }

      if ((*v143 & 2) != 0)
      {
        v296 = *(a2 - 4);
      }

      else
      {
        v296 = &v143[-((*v143 >> 2) & 0xFLL)];
      }

      v297 = v296[5];
      if (v297)
      {
        v298 = *(v297 + 8);
        v301 = *v298;
        v299 = (v298 + 3);
        v300 = v301;
      }

      else
      {
        v299 = 0;
        v300 = 0;
      }

      v302 = a2;
      if (*a2 != 15)
      {
        if ((*v143 & 2) != 0)
        {
          v303 = *(a2 - 4);
        }

        else
        {
          v303 = &v143[-((*v143 >> 2) & 0xFLL)];
        }

        v302 = *v303;
      }

      v256 = *(a2 + 20);
      v255 = "isDecl";
      v257 = 6;
      goto LABEL_689;
    case 0x16:
      v35 = *(v5 + 4);
      if (*(v5 + 3) - v35 > 0x18uLL)
      {
        qmemcpy(v35, "!DITemplateTypeParameter(", 25);
        *(v5 + 4) += 25;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DITemplateTypeParameter(", 0x19uLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v190 = (a2 - 16);
      v189 = *(a2 - 2);
      if ((v189 & 2) != 0)
      {
        v191 = *(a2 - 4);
      }

      else
      {
        v191 = &v190[-((v189 >> 2) & 0xF)];
      }

      v192 = *v191;
      if (v192)
      {
        v193 = *(v192 + 8);
        v196 = *v193;
        v194 = (v193 + 3);
        v195 = v196;
      }

      else
      {
        v194 = 0;
        v195 = 0;
      }

      if ((*v190 & 2) != 0)
      {
        v341 = *(a2 - 4);
      }

      else
      {
        v341 = &v190[-((*v190 >> 2) & 0xFLL)];
      }

      v256 = *(a2 + 16);
      v255 = "defaulted";
      v257 = 9;
LABEL_689:
      v340 = 256;
LABEL_690:
      goto LABEL_769;
    case 0x17:
      v40 = *(v5 + 4);
      if (*(v5 + 3) - v40 > 0x19uLL)
      {
        qmemcpy(v40, "!DITemplateValueParameter(", 26);
        *(v5 + 4) += 26;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DITemplateValueParameter(", 0x1AuLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      if (*(a2 + 1) != 48)
      {
      }

      v226 = (a2 - 16);
      v225 = *(a2 - 2);
      if ((v225 & 2) != 0)
      {
        v227 = *(a2 - 4);
      }

      else
      {
        v227 = &v226[-((v225 >> 2) & 0xF)];
      }

      v228 = *v227;
      if (v228)
      {
        v229 = *(v228 + 8);
        v232 = *v229;
        v230 = (v229 + 3);
        v231 = v232;
      }

      else
      {
        v230 = 0;
        v231 = 0;
      }

      if ((*v226 & 2) != 0)
      {
        v350 = *(a2 - 4);
      }

      else
      {
        v350 = &v226[-((*v226 >> 2) & 0xFLL)];
      }

      v351 = *(a2 - 2);
      if ((v351 & 2) != 0)
      {
        v352 = *(a2 - 4);
      }

      else
      {
        v352 = &v226[-((v351 >> 2) & 0xF)];
      }

      v50 = v352[2];
      v51 = "value";
LABEL_833:
      v52 = 5;
      v480 = 0;
      goto LABEL_681;
    case 0x18:
      v30 = *(v5 + 4);
      if ((*(v5 + 3) - v30) > 0x11)
      {
        *(v30 + 16) = 10341;
        *v30 = *"!DIGlobalVariable(";
        *(v5 + 4) += 18;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DIGlobalVariable(", 0x12uLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v152 = (a2 - 16);
      v151 = *(a2 - 2);
      if ((v151 & 2) != 0)
      {
        v153 = *(a2 - 4);
      }

      else
      {
        v153 = &v152[-((v151 >> 2) & 0xF)];
      }

      v154 = v153[1];
      if (v154)
      {
        v155 = *(v154 + 8);
        v158 = *v155;
        v156 = (v155 + 3);
        v157 = v158;
      }

      else
      {
        v156 = 0;
        v157 = 0;
      }

      if ((*v152 & 2) != 0)
      {
        v304 = *(a2 - 4);
      }

      else
      {
        v304 = &v152[-((*v152 >> 2) & 0xFLL)];
      }

      v305 = v304[5];
      if (v305)
      {
        v306 = *(v305 + 8);
        v309 = *v306;
        v307 = (v306 + 3);
        v308 = v309;
      }

      else
      {
        v307 = 0;
        v308 = 0;
      }

      if ((*v152 & 2) != 0)
      {
        v310 = *(a2 - 4);
      }

      else
      {
        v310 = &v152[-((*v152 >> 2) & 0xFLL)];
      }

      if ((*v152 & 2) != 0)
      {
        v311 = *(a2 - 4);
      }

      else
      {
        v311 = &v152[-((*v152 >> 2) & 0xFLL)];
      }

      v312 = *(a2 - 2);
      if ((v312 & 2) != 0)
      {
        v313 = *(a2 - 4);
      }

      else
      {
        v313 = &v152[-((v312 >> 2) & 0xF)];
      }

      v314 = *(a2 - 2);
      if ((v314 & 2) != 0)
      {
        v315 = *(a2 - 4);
      }

      else
      {
        v315 = &v152[-((v314 >> 2) & 0xF)];
      }

      if ((*v152 & 2) != 0)
      {
        v316 = *(a2 - 4);
      }

      else
      {
        v316 = &v152[-((*v152 >> 2) & 0xFLL)];
      }

      v317 = *(a2 - 2);
      if ((v317 & 2) != 0)
      {
        v318 = *(a2 - 4);
      }

      else
      {
        v318 = &v152[-((v317 >> 2) & 0xF)];
      }

      v50 = v318[8];
      goto LABEL_679;
    case 0x19:
      v32 = *(v5 + 4);
      if ((*(v5 + 3) - v32) > 0x10)
      {
        *(v32 + 16) = 40;
        *v32 = *"!DILocalVariable(";
        *(v5 + 4) += 17;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DILocalVariable(", 0x11uLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v167 = (a2 - 16);
      v166 = *(a2 - 2);
      if ((v166 & 2) != 0)
      {
        v168 = *(a2 - 4);
      }

      else
      {
        v168 = &v167[-((v166 >> 2) & 0xF)];
      }

      v169 = v168[1];
      if (v169)
      {
        v170 = *(v169 + 8);
        v173 = *v170;
        v171 = (v170 + 3);
        v172 = v173;
      }

      else
      {
        v171 = 0;
        v172 = 0;
      }

      v319 = *(a2 - 2);
      if ((v319 & 2) != 0)
      {
        v320 = *(a2 - 4);
      }

      else
      {
        v320 = &v167[-((v319 >> 2) & 0xF)];
      }

      if ((*v167 & 2) != 0)
      {
        v321 = *(a2 - 4);
      }

      else
      {
        v321 = &v167[-((*v167 >> 2) & 0xFLL)];
      }

      v322 = *(a2 - 2);
      if ((v322 & 2) != 0)
      {
        v323 = *(a2 - 4);
      }

      else
      {
        v323 = &v167[-((v322 >> 2) & 0xF)];
      }

      v324 = *(a2 - 2);
      if ((v324 & 2) != 0)
      {
        v325 = *(a2 - 4);
      }

      else
      {
        v325 = &v167[-((v324 >> 2) & 0xF)];
      }

      v50 = v325[4];
LABEL_679:
      v51 = "annotations";
      v52 = 11;
      goto LABEL_680;
    case 0x1A:
      v39 = *(v5 + 4);
      if ((*(v5 + 3) - v39) > 8)
      {
        *(v39 + 8) = 40;
        *v39 = *"!DILabel(";
        *(v5 + 4) += 9;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DILabel(", 9uLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v217 = (a2 - 16);
      v216 = *(a2 - 2);
      if ((v216 & 2) != 0)
      {
        v218 = *(a2 - 4);
      }

      else
      {
        v218 = &v217[-((v216 >> 2) & 0xF)];
      }

      if ((*v217 & 2) != 0)
      {
        v219 = *(a2 - 4);
      }

      else
      {
        v219 = &v217[-((*v217 >> 2) & 0xFLL)];
      }

      v220 = v219[1];
      if (v220)
      {
        v221 = *(v220 + 8);
        v224 = *v221;
        v222 = (v221 + 3);
        v223 = v224;
      }

      else
      {
        v222 = 0;
        v223 = 0;
      }

      if ((*v217 & 2) != 0)
      {
        v348 = *(a2 - 4);
      }

      else
      {
        v348 = &v217[-((*v217 >> 2) & 0xFLL)];
      }

      v349 = v348[2];
      goto LABEL_514;
    case 0x1B:
      v41 = *(v5 + 4);
      if (*(v5 + 3) - v41 > 0xFuLL)
      {
        *v41 = *"!DIObjCProperty(";
        *(v5 + 4) += 16;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DIObjCProperty(", 0x10uLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v234 = (a2 - 16);
      v233 = *(a2 - 2);
      if ((v233 & 2) != 0)
      {
        v235 = *(a2 - 4);
      }

      else
      {
        v235 = &v234[-((v233 >> 2) & 0xF)];
      }

      v236 = *v235;
      if (v236)
      {
        v237 = *(v236 + 8);
        v240 = *v237;
        v238 = (v237 + 3);
        v239 = v240;
      }

      else
      {
        v238 = 0;
        v239 = 0;
      }

      if ((*v234 & 2) != 0)
      {
        v353 = *(a2 - 4);
      }

      else
      {
        v353 = &v234[-((*v234 >> 2) & 0xFLL)];
      }

      v354 = *(a2 - 2);
      if ((v354 & 2) != 0)
      {
        v355 = *(a2 - 4);
      }

      else
      {
        v355 = &v234[-((v354 >> 2) & 0xF)];
      }

      v356 = v355[3];
      if (v356)
      {
        v357 = *(v356 + 8);
        v360 = *v357;
        v358 = (v357 + 3);
        v359 = v360;
      }

      else
      {
        v358 = 0;
        v359 = 0;
      }

      if ((*v234 & 2) != 0)
      {
        v361 = *(a2 - 4);
      }

      else
      {
        v361 = &v234[-((*v234 >> 2) & 0xFLL)];
      }

      v362 = v361[2];
      if (v362)
      {
        v363 = *(v362 + 8);
        v366 = *v363;
        v364 = (v363 + 3);
        v365 = v366;
      }

      else
      {
        v364 = 0;
        v365 = 0;
      }

      v367 = *(a2 - 2);
      if ((v367 & 2) != 0)
      {
        v368 = *(a2 - 4);
      }

      else
      {
        v368 = &v234[-((v367 >> 2) & 0xF)];
      }

      v50 = v368[4];
      v51 = "type";
LABEL_508:
      v52 = 4;
      goto LABEL_680;
    case 0x1C:
      v22 = *(v5 + 4);
      if ((*(v5 + 3) - v22) > 0x11)
      {
        *(v22 + 16) = 10361;
        *v22 = *"!DIImportedEntity(";
        *(v5 + 4) += 18;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DIImportedEntity(", 0x12uLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v95 = (a2 - 16);
      v94 = *(a2 - 2);
      if ((v94 & 2) != 0)
      {
        v96 = *(a2 - 4);
      }

      else
      {
        v96 = &v95[-((v94 >> 2) & 0xF)];
      }

      v97 = v96[2];
      if (v97)
      {
        v98 = *(v97 + 8);
        v101 = *v98;
        v99 = (v98 + 3);
        v100 = v101;
      }

      else
      {
        v99 = 0;
        v100 = 0;
      }

      if ((*v95 & 2) != 0)
      {
        v278 = *(a2 - 4);
      }

      else
      {
        v278 = &v95[-((*v95 >> 2) & 0xFLL)];
      }

      if ((*v95 & 2) != 0)
      {
        v279 = *(a2 - 4);
      }

      else
      {
        v279 = &v95[-((*v95 >> 2) & 0xFLL)];
      }

      if ((*v95 & 2) != 0)
      {
        v280 = *(a2 - 4);
      }

      else
      {
        v280 = &v95[-((*v95 >> 2) & 0xFLL)];
      }

      v281 = *(a2 - 2);
      if ((v281 & 2) != 0)
      {
        v282 = *(a2 - 4);
      }

      else
      {
        v282 = &v95[-((v281 >> 2) & 0xF)];
      }

      v50 = v282[4];
      v51 = "elements";
      v52 = 8;
      goto LABEL_680;
    case 0x1D:
      v17 = *(v5 + 4);
      if (*(v5 + 3) - v17 <= 0xCuLL)
      {
        v18 = *MEMORY[0x277D85DE8];
        v19 = "!DIAssignID()";
        v20 = v5;
        v21 = 13;
        goto LABEL_361;
      }

      qmemcpy(v17, "!DIAssignID()", 13);
      v93 = *(v5 + 4) + 13;
      goto LABEL_772;
    case 0x1E:
      v44 = *(v5 + 4);
      if ((*(v5 + 3) - v44) > 8)
      {
        *(v44 + 8) = 40;
        *v44 = *"!DIMacro(";
        v45 = *(v5 + 4) + 9;
        *(v5 + 4) = v45;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DIMacro(", 9uLL);
        v45 = *(v5 + 4);
      }

      p_s = v5;
      __s = ", ";
      v547 = a3;
      LOBYTE(v545) = 0;
      if ((*(v5 + 3) - v45) > 5)
      {
        *(v45 + 4) = 8250;
        *v45 = 1701869940;
        *(v5 + 4) += 6;
      }

      else
      {
        llvm::raw_ostream::write(v5, "type: ", 6uLL);
      }

      v251 = *(a2 + 1);
      v252 = llvm::dwarf::MacinfoString(v251);
      if (v253)
      {
        llvm::raw_ostream::operator<<(v5, v252, v253);
      }

      else
      {
        write_unsigned<unsigned long>(v5, v251, 0, 0, 0);
      }

      v374 = (a2 - 16);
      v373 = *(a2 - 2);
      if ((v373 & 2) != 0)
      {
        v375 = *(a2 - 4);
      }

      else
      {
        v375 = &v374[-((v373 >> 2) & 0xF)];
      }

      v376 = *v375;
      if (v376)
      {
        v377 = *(v376 + 8);
        v380 = *v377;
        v378 = (v377 + 3);
        v379 = v380;
      }

      else
      {
        v378 = 0;
        v379 = 0;
      }

      if ((*v374 & 2) != 0)
      {
        v381 = *(a2 - 4);
      }

      else
      {
        v381 = &v374[-((*v374 >> 2) & 0xFLL)];
      }

      v382 = v381[1];
      if (v382)
      {
        v383 = *(v382 + 8);
        v386 = *v383;
        TargetFuncName = v383 + 3;
        v385 = v386;
      }

      else
      {
        TargetFuncName = 0;
        v385 = 0;
      }

      v387 = "value";
      p_p_s = &p_s;
      v389 = 5;
      goto LABEL_768;
    case 0x1F:
      v10 = *(v5 + 4);
      if (*(v5 + 3) - v10 > 0xCuLL)
      {
        qmemcpy(v10, "!DIMacroFile(", 13);
        *(v5 + 4) += 13;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DIMacroFile(", 0xDuLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v47 = (a2 - 16);
      v46 = *(a2 - 2);
      if ((v46 & 2) != 0)
      {
        v48 = *(a2 - 4);
      }

      else
      {
        v48 = &v47[-((v46 >> 2) & 0xF)];
      }

      if ((*v47 & 2) != 0)
      {
        v49 = *(a2 - 4);
      }

      else
      {
        v49 = &v47[-((*v47 >> 2) & 0xFLL)];
      }

      v50 = v49[1];
      v51 = "nodes";
      v52 = 5;
      goto LABEL_680;
    case 0x20:
      v42 = *(v5 + 4);
      if (*(v5 + 3) - v42 > 0xEuLL)
      {
        qmemcpy(v42, "!DICommonBlock(", 15);
        *(v5 + 4) += 15;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DICommonBlock(", 0xFuLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v242 = (a2 - 16);
      v241 = *(a2 - 2);
      if ((v241 & 2) != 0)
      {
        v243 = *(a2 - 4);
      }

      else
      {
        v243 = &v242[-((v241 >> 2) & 0xF)];
      }

      if ((*v242 & 2) != 0)
      {
        v244 = *(a2 - 4);
      }

      else
      {
        v244 = &v242[-((*v242 >> 2) & 0xFLL)];
      }

      if ((*v242 & 2) != 0)
      {
        v245 = *(a2 - 4);
      }

      else
      {
        v245 = &v242[-((*v242 >> 2) & 0xFLL)];
      }

      v246 = v245[2];
      if (v246)
      {
        v247 = *(v246 + 8);
        v250 = *v247;
        v248 = (v247 + 3);
        v249 = v250;
      }

      else
      {
        v248 = 0;
        v249 = 0;
      }

      if ((*v242 & 2) != 0)
      {
        v369 = *(a2 - 4);
      }

      else
      {
        v369 = &v242[-((*v242 >> 2) & 0xFLL)];
      }

      v349 = v369[3];
LABEL_514:
      v370 = *(a2 + 4);
      v371 = "line";
      v372 = 4;
LABEL_538:
      v394 = 1;
LABEL_685:
      goto LABEL_769;
    case 0x21:
      v43 = *MEMORY[0x277D85DE8];

      writeDIArgList(v5, a2, a3);
      return;
    case 0x22:
      v38 = *(v5 + 4);
      if (*(v5 + 3) - v38 > 0xDuLL)
      {
        qmemcpy(v38, "!DIStringType(", 14);
        *(v5 + 4) += 14;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DIStringType(", 0xEuLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      if (*(a2 + 1) != 18)
      {
      }

      v209 = (a2 - 16);
      v208 = *(a2 - 2);
      if ((v208 & 2) != 0)
      {
        v210 = *(a2 - 4);
      }

      else
      {
        v210 = &v209[-((v208 >> 2) & 0xF)];
      }

      v211 = v210[2];
      if (v211)
      {
        v212 = *(v211 + 8);
        v215 = *v212;
        v213 = (v212 + 3);
        v214 = v215;
      }

      else
      {
        v213 = 0;
        v214 = 0;
      }

      if ((*v209 & 2) != 0)
      {
        v345 = *(a2 - 4);
      }

      else
      {
        v345 = &v209[-((*v209 >> 2) & 0xFLL)];
      }

      if ((*v209 & 2) != 0)
      {
        v346 = *(a2 - 4);
      }

      else
      {
        v346 = &v209[-((*v209 >> 2) & 0xFLL)];
      }

      if ((*v209 & 2) != 0)
      {
        v347 = *(a2 - 4);
      }

      else
      {
        v347 = &v209[-((*v209 >> 2) & 0xFLL)];
      }

      goto LABEL_769;
    case 0x23:
      v28 = *(v5 + 4);
      if ((*(v5 + 3) - v28) > 0x12)
      {
        *(v28 + 15) = 677734254;
        *v28 = *"!DIGenericSubrange(";
        *(v5 + 4) += 19;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!DIGenericSubrange(", 0x13uLL);
      }

      p_s = v5;
      LOBYTE(v545) = 1;
      __s = ", ";
      v547 = a3;
      v132 = (a2 - 16);
      v131 = *(a2 - 2);
      if ((v131 & 2) != 0)
      {
        v133 = *(a2 - 4);
      }

      else
      {
        v133 = &v132[-((v131 >> 2) & 0xF)];
      }

      v134 = *v133;
      if (*v133 && *v134 == 6 && (llvm::DIExpression::isConstant(v134) & 0x1FFFFFFFFLL) == 0x100000000)
      {
      }

      else
      {
      }

      if ((*v132 & 2) != 0)
      {
        v135 = *(a2 - 4);
      }

      else
      {
        v135 = &v132[-((*v132 >> 2) & 0xFLL)];
      }

      v136 = v135[1];
      if (v136 && *v136 == 6 && (llvm::DIExpression::isConstant(v136) & 0x1FFFFFFFFLL) == 0x100000000)
      {
      }

      else
      {
      }

      if ((*v132 & 2) != 0)
      {
        v137 = *(a2 - 4);
      }

      else
      {
        v137 = &v132[-((*v132 >> 2) & 0xFLL)];
      }

      v138 = v137[2];
      if (v138 && *v138 == 6 && (llvm::DIExpression::isConstant(v138) & 0x1FFFFFFFFLL) == 0x100000000)
      {
      }

      else
      {
      }

      if ((*v132 & 2) != 0)
      {
        v139 = *(a2 - 4);
      }

      else
      {
        v139 = &v132[-((*v132 >> 2) & 0xFLL)];
      }

      v140 = v139[3];
      if (v140 && *v140 == 6 && (llvm::DIExpression::isConstant(v140) & 0x1FFFFFFFFLL) == 0x100000000)
      {
        v141 = *(*(v140 + 2) + 8);
LABEL_827:
      }

      else
      {
        v51 = "stride";
        v52 = 6;
        v50 = v140;
LABEL_680:
        v480 = 1;
LABEL_681:
      }

      goto LABEL_769;
    default:
      v9 = *(v5 + 4);
      if (*(v5 + 3) - v9 > 1uLL)
      {
        *v9 = 31521;
        *(v5 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v5, "!{", 2uLL);
      }

      v119 = (a2 - 16);
      v118 = *(a2 - 2);
      if ((v118 & 2) != 0)
      {
        v120 = *(a2 - 6);
      }

      else
      {
        v120 = (v118 >> 6) & 0xF;
      }

      if (!v120)
      {
        goto LABEL_171;
      }

      v121 = 0;
      v122 = 8 * v120 - 8;
      if ((v118 & 2) == 0)
      {
        goto LABEL_159;
      }

LABEL_158:
      for (i = *(a2 - 4); ; i = &v119[-((v118 >> 2) & 0xF)])
      {
        v125 = i[v121 / 8];
        if (v125)
        {
          if (*v125 - 3 >= 0xFFFFFFFE)
          {
            v127 = *(v125 + 16);
            v128 = *(v5 + 4);
            if (v128 >= *(v5 + 3))
            {
              llvm::raw_ostream::write(v5, 32);
            }

            else
            {
              *(v5 + 4) = v128 + 1;
              *v128 = 32;
            }

            WriteAsOperandInternal(v5, v127, a3);
          }

          else
          {
            WriteAsOperandInternal(v5, v125, a3);
            (**a3)(a3, v125);
          }
        }

        else
        {
          v126 = *(v5 + 4);
          if (*(v5 + 3) - v126 > 3uLL)
          {
            *v126 = 1819047278;
            *(v5 + 4) += 4;
          }

          else
          {
            llvm::raw_ostream::write(v5, "null", 4uLL);
          }
        }

        if (v122 == v121)
        {
          break;
        }

        v123 = *(v5 + 4);
        if (*(v5 + 3) - v123 > 1uLL)
        {
          *v123 = 8236;
          *(v5 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v5, ", ", 2uLL);
        }

        v118 = *v119;
        v121 += 8;
        if ((*v119 & 2) != 0)
        {
          goto LABEL_158;
        }

LABEL_159:
        ;
      }

LABEL_171:
      v129 = *(v5 + 4);
      if (*(v5 + 3) != v129)
      {
        v130 = 125;
        goto LABEL_771;
      }

      v283 = *MEMORY[0x277D85DE8];
      v19 = "}";
      v20 = v5;
      v21 = 1;
LABEL_361:

      llvm::raw_ostream::write(v20, v19, v21);
      return;
  }
}

llvm::raw_ostream *anonymous namespace::MDFieldPrinter::printTag(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    v4 = llvm::raw_ostream::operator<<(v4, *(a1 + 16));
  }

  v5 = *(v4 + 4);
  if ((*(v4 + 3) - v5) > 4)
  {
    *(v5 + 4) = 32;
    *v5 = 979853684;
    *(v4 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v4, "tag: ", 5uLL);
  }

  v7 = llvm::dwarf::TagString(*(a2 + 2));
  v8 = *a1;
  if (v6)
  {

    return llvm::raw_ostream::operator<<(v8, v7, v6);
  }

  else
  {
    v10 = *(a2 + 2);

    return llvm::write_integer(v8, v10, 0, 0);
  }
}

llvm::raw_ostream *anonymous namespace::MDFieldPrinter::printString(llvm::raw_ostream *result, const void *a2, size_t a3, llvm::raw_ostream *a4, uint64_t a5, int a6)
{
  v10 = result;
  if (!a6 || a5)
  {
    v11 = *result;
    if (*(v10 + 8) == 1)
    {
      *(v10 + 8) = 0;
    }

    else
    {
      v11 = llvm::raw_ostream::operator<<(v11, *(v10 + 2));
    }

    v12 = llvm::raw_ostream::operator<<(v11, a2, a3);
    v13 = *(v12 + 4);
    if ((*(v12 + 3) - v13) > 2)
    {
      *(v13 + 2) = 34;
      *v13 = 8250;
      *(v12 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v12, ": ", 3uLL);
    }

    llvm::printEscapedString(a4, a5, *v10);
    result = *v10;
    v14 = *(*v10 + 32);
    if (*(*v10 + 24) == v14)
    {

      return llvm::raw_ostream::write(result, "", 1uLL);
    }

    else
    {
      *v14 = 34;
      ++*(result + 4);
    }
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::MDFieldPrinter::printInt<long long>(uint64_t a1, const void *a2, size_t __n, unint64_t a4)
{
  v8 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    v8 = llvm::raw_ostream::operator<<(v8, *(a1 + 16));
  }

  v9 = llvm::raw_ostream::operator<<(v8, a2, __n);
  v10 = *(v9 + 4);
  if (*(v9 + 3) - v10 > 1uLL)
  {
    *v10 = 8250;
    *(v9 + 4) += 2;
  }

  else
  {
    v9 = llvm::raw_ostream::write(v9, ": ", 2uLL);
  }

  return llvm::write_integer(v9, a4, 0, 0);
}

void anonymous namespace::AsmWriterContext::getEmpty(_anonymous_namespace_::AsmWriterContext *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_41, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_41))
  {
    qword_2815AA830 = &unk_2883F1008;
    unk_2815AA838 = 0;
    qword_2815AA840 = 0;
    unk_2815AA848 = 0;

    __cxa_guard_release(&_MergedGlobals_41);
  }
}

llvm::raw_ostream *anonymous namespace::MDFieldPrinter::printInt<unsigned long long>(llvm::raw_ostream *result, const void *a2, size_t __n, unint64_t a4)
{
  if (a4)
  {
    v7 = result;
    v8 = *result;
    if (*(v7 + 8) == 1)
    {
      *(v7 + 8) = 0;
    }

    else
    {
      v8 = llvm::raw_ostream::operator<<(v8, *(v7 + 2));
    }

    v9 = llvm::raw_ostream::operator<<(v8, a2, __n);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 1uLL)
    {
      *v10 = 8250;
      *(v9 + 4) += 2;
    }

    else
    {
      v9 = llvm::raw_ostream::write(v9, ": ", 2uLL);
    }

    return write_unsigned<unsigned long>(v9, a4, 0, 0, 0);
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::MDFieldPrinter::printDwarfEnum<unsigned int,llvm::StringRef (*)(unsigned int)>(llvm::raw_ostream *result, const void *a2, size_t __n, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a4)
  {
    v9 = result;
    v10 = *result;
    if (*(v9 + 8) == 1)
    {
      *(v9 + 8) = 0;
    }

    else
    {
      v10 = llvm::raw_ostream::operator<<(v10, *(v9 + 16));
    }

    v11 = llvm::raw_ostream::operator<<(v10, a2, __n);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 1uLL)
    {
      *v12 = 8250;
      *(v11 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v11, ": ", 2uLL);
    }

    v14 = a5(a4);
    v15 = *v9;
    if (v13)
    {

      return llvm::raw_ostream::operator<<(v15, v14, v13);
    }

    else
    {

      return write_unsigned<unsigned long>(v15, a4, 0, 0, 0);
    }
  }

  return result;
}

void anonymous namespace::MDFieldPrinter::printDIFlags(uint64_t a1, uint64_t a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_23;
  }

  v4 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    v4 = llvm::raw_ostream::operator<<(v4, *(a1 + 16));
  }

  v5 = *(v4 + 4);
  if ((*(v4 + 3) - v5) > 4)
  {
    *(v5 + 4) = 115;
    *v5 = 1734437990;
    v6 = (*(v4 + 4) + 5);
    *(v4 + 4) = v6;
  }

  else
  {
    v4 = llvm::raw_ostream::write(v4, "flags", 5uLL);
    v6 = *(v4 + 4);
  }

  if (*(v4 + 3) - v6 > 1uLL)
  {
    *v6 = 8250;
    *(v4 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v4, ": ", 2uLL);
  }

  v17 = v19;
  v18 = 0x800000000;
  v7 = llvm::DINode::splitFlags(a2, &v17);
  if (v18)
  {
    v8 = v17;
    v9 = 4 * v18;
    v10 = 1;
    do
    {
      FlagString = llvm::DINode::getFlagString(*v8);
      v13 = v12;
      v14 = *a1;
      if ((v10 & 1) == 0)
      {
        v14 = llvm::raw_ostream::operator<<(v14, " | ", 3uLL);
      }

      llvm::raw_ostream::operator<<(v14, FlagString, v13);
      v10 = 0;
      ++v8;
      v9 -= 4;
    }

    while (v9);
    if (!v7 && v18)
    {
      goto LABEL_21;
    }

    v15 = llvm::raw_ostream::operator<<(*a1, " | ", 3uLL);
  }

  else
  {
    v15 = *a1;
  }

  write_unsigned<unsigned long>(v15, v7, 0, 0, 0);
LABEL_21:
  if (v17 != v19)
  {
    free(v17);
  }

LABEL_23:
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::DISubprogram::getTargetFuncName(llvm::DISubprogram *this)
{
  v1 = *(this - 2);
  if ((v1 & 2) != 0)
  {
    if (*(this - 6) <= 0xCu)
    {
      return 0;
    }

    v2 = *(this - 4);
  }

  else
  {
    if ((*(this - 2) & 0x3C0uLL) <= 0x300)
    {
      return 0;
    }

    v2 = this - 8 * ((v1 >> 2) & 0xF) - 16;
  }

  v3 = *(v2 + 12);
  if (v3)
  {
    v4 = *(v3 + 8);
    v6 = *v4;
    return v4 + 3;
  }

  return 0;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::StructType *,unsigned int,llvm::DenseMapInfo<llvm::StructType *,void>,llvm::detail::DenseMapPair<llvm::StructType *,unsigned int>>,llvm::StructType *,unsigned int,llvm::DenseMapInfo<llvm::StructType *,void>,llvm::detail::DenseMapPair<llvm::StructType *,unsigned int>>::find(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return (a1 + 16 * a2);
  }

  LODWORD(v3) = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
  v4 = (a1 + 16 * v3);
  v5 = *v4;
  if (*v4 != a3)
  {
    v6 = 1;
    while (v5 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (a2 - 1);
      v5 = *(a1 + 16 * v3);
      if (v5 == a3)
      {
        return (a1 + 16 * v3);
      }
    }

    return (a1 + 16 * a2);
  }

  return v4;
}

llvm::raw_ostream *WriteOptimizationInfo(llvm::raw_ostream *a1, const llvm::User *a2)
{
  result = llvm::FPMathOperator::classof(a2);
  if (a2 && result)
  {
    v5 = *(a2 + 17) >> 1;
    if (v5 == 127)
    {
      v5 = -1;
    }

    v21 = v5;
    result = llvm::FastMathFlags::print(&v21, a1);
  }

  v6 = *(a2 + 16);
  if (v6 >= 0x1C)
  {
    HIDWORD(v8) = v6 - 41;
    LODWORD(v8) = v6 - 41;
    v7 = v8 >> 1;
    v9 = v7 > 6;
    v10 = (1 << v7) & 0x47;
    if (!v9 && v10 != 0)
    {
      goto LABEL_21;
    }

    if (v6 > 0x3E)
    {
      return result;
    }

    if (((1 << v6) & 0xC1800000000000) == 0)
    {
      if (v6 != 62)
      {
        return result;
      }

LABEL_37:
      if ((*(a2 + 17) & 2) == 0)
      {
        return result;
      }

      v19 = " inbounds";
      v20 = 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v6 != 5)
  {
    return result;
  }

  v12 = *(a2 + 9);
  HIDWORD(v14) = v12 - 13;
  LODWORD(v14) = v12 - 13;
  v13 = v14 >> 1;
  v9 = v13 > 6;
  v15 = (1 << v13) & 0x47;
  if (v9 || v15 == 0)
  {
    if (v12 > 0x22)
    {
      return result;
    }

    if (((1 << v12) & 0xC180000) == 0)
    {
      if (v12 != 34)
      {
        return result;
      }

      goto LABEL_37;
    }

LABEL_34:
    if ((*(a2 + 17) & 2) == 0)
    {
      return result;
    }

    v19 = " exact";
    v20 = 6;
    goto LABEL_29;
  }

LABEL_21:
  v17 = *(a2 + 17);
  if ((v17 & 2) != 0)
  {
    v18 = *(a1 + 4);
    if (*(a1 + 3) - v18 > 3uLL)
    {
      *v18 = 2004184608;
      *(a1 + 4) += 4;
    }

    else
    {
      result = llvm::raw_ostream::write(a1, " nuw", 4uLL);
    }

    v17 = *(a2 + 17);
  }

  if ((v17 & 4) != 0)
  {
    v19 = " nsw";
    v20 = 4;
LABEL_29:

    return llvm::raw_ostream::operator<<(a1, v19, v20);
  }

  return result;
}

llvm::raw_ostream *maybePrintCallAddrSpace(llvm::raw_ostream *result, const llvm::Instruction *a2, llvm::raw_ostream *this)
{
  if (!result)
  {
    v7 = *(this + 4);
    if (*(this + 3) - v7 > 0x17uLL)
    {
      qmemcpy(v7, " <cannot get addrspace!>", 24);
      v12 = *(this + 4) + 24;
      goto LABEL_19;
    }

    v8 = " <cannot get addrspace!>";
    v9 = this;
    v10 = 24;
    goto LABEL_15;
  }

  v4 = *(*result + 8);
  if ((v4 & 0xFE) == 0x12)
  {
    v4 = *(**(*result + 16) + 8);
  }

  if (v4 > 0xFF || (result = getModuleFromVal(a2)) == 0 || *(result + 67))
  {
    v5 = v4 >> 8;
    v6 = *(this + 4);
    if ((*(this + 3) - v6) > 0xA)
    {
      *(v6 + 7) = 677733217;
      *v6 = *" addrspace(";
      *(this + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(this, " addrspace(", 0xBuLL);
    }

    result = write_unsigned<unsigned long>(this, v5, 0, 0, 0);
    v11 = *(this + 4);
    if (*(this + 3) != v11)
    {
      *v11 = 41;
      v12 = *(this + 4) + 1;
LABEL_19:
      *(this + 4) = v12;
      return result;
    }

    v8 = ")";
    v9 = this;
    v10 = 1;
LABEL_15:

    return llvm::raw_ostream::write(v9, v8, v10);
  }

  return result;
}

void anonymous namespace::AssemblyWriter::writeParamOperand(uint64_t ***this, llvm::Type **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v6 = *this;
      v7 = (*this)[4];
      if (v7 >= (*this)[3])
      {
        llvm::raw_ostream::write(v6, 32);
      }

      else
      {
        v6[4] = (v7 + 1);
        *v7 = 32;
      }
    }

    v10 = *this;
    v11 = (*this)[4];
    if (v11 >= (*this)[3])
    {
      llvm::raw_ostream::write(v10, 32);
    }

    else
    {
      v10[4] = (v11 + 1);
      *v11 = 32;
    }

    v12 = this[4];
    v13 = *this;
    v14 = this[1];
    v15[0] = &unk_2883F1008;
    v15[1] = (this + 5);
    v15[2] = v12;
    v15[3] = v14;
    WriteAsOperandInternal(v13, a2, v15);
  }

  else
  {
    v8 = *this;
    v9 = (*this)[4];
    if (((*this)[3] - v9) > 0xE)
    {
      qmemcpy(v9, "<null operand!>", 15);
      v8[4] = (v8[4] + 15);
    }

    else
    {

      llvm::raw_ostream::write(v8, "<null operand!>", 0xFuLL);
    }
  }
}

llvm::raw_ostream *anonymous namespace::AssemblyWriter::writeOperandBundles(llvm::raw_ostream *this, const llvm::CallBase *a2)
{
  v4 = *(a2 + 5);
  if (v4 < 0)
  {
    v41[14] = v2;
    v41[15] = v3;
    if ((*(a2 - 4 * (v4 & 0x7FFFFFF) - 1) & 0xFFFFFFFF0) != 0)
    {
      v6 = this;
      v7 = *this;
      v8 = *(v7 + 4);
      if ((*(v7 + 3) - v8) > 2)
      {
        *(v8 + 2) = 32;
        *v8 = 23328;
        *(v7 + 4) += 3;
      }

      else
      {
        llvm::raw_ostream::write(v7, " [ ", 3uLL);
      }

      v9 = *(a2 + 5);
      if (v9 < 0)
      {
        v10 = *(a2 - 4 * (v9 & 0x7FFFFFF) - 1);
        if ((v10 & 0xFFFFFFFF0) != 0)
        {
          v11 = 0;
          v40 = (v10 >> 4);
          v12 = 1;
          do
          {
            v13 = *(a2 + 5) & 0x7FFFFFF;
            v14 = a2 + 16 * v11 - *(a2 - 4 * v13 - 1) + -32 * v13 - 8;
            v15 = *(a2 + 16 * v11 - *(a2 - 4 * v13 - 1) + -32 * v13);
            v16 = *(v14 + 3);
            v17 = *v14;
            if ((v12 & 1) == 0)
            {
              v18 = *v6;
              v19 = *(*v6 + 32);
              if (*(*v6 + 24) - v19 > 1uLL)
              {
                *v19 = 8236;
                *(v18 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v18, ", ", 2uLL);
              }
            }

            v20 = *v6;
            v21 = *(*v6 + 32);
            if (v21 >= *(*v6 + 24))
            {
              llvm::raw_ostream::write(v20, 34);
            }

            else
            {
              *(v20 + 4) = v21 + 1;
              *v21 = 34;
            }

            llvm::printEscapedString((v17 + 2), *v17, *v6);
            v22 = *v6;
            v23 = *(*v6 + 32);
            if (v23 >= *(*v6 + 24))
            {
              llvm::raw_ostream::write(v22, 34);
            }

            else
            {
              *(v22 + 4) = v23 + 1;
              *v23 = 34;
            }

            v24 = *v6;
            v25 = *(*v6 + 32);
            if (v25 >= *(*v6 + 24))
            {
              llvm::raw_ostream::write(v24, 40);
            }

            else
            {
              *(v24 + 4) = v25 + 1;
              *v25 = 40;
            }

            v26 = *(v6 + 32);
            v27 = *(v6 + 8);
            v41[0] = &unk_2883F1008;
            v41[1] = (v6 + 40);
            v41[2] = v26;
            v41[3] = v27;
            if (v15 != v16)
            {
              v28 = (a2 + 32 * v15 + -32 * v13);
              v29 = 1;
              v30 = 32 * v16 - 32 * v15;
              do
              {
                if ((v29 & 1) == 0)
                {
                  v31 = *v6;
                  v32 = *(*v6 + 32);
                  if (*(*v6 + 24) - v32 > 1uLL)
                  {
                    *v32 = 8236;
                    *(v31 + 4) += 2;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v31, ", ", 2uLL);
                  }
                }

                if (*v28)
                {
                  v33 = *v6;
                  v34 = *(*v6 + 32);
                  if (*(*v6 + 24) == v34)
                  {
                    llvm::raw_ostream::write(v33, " ", 1uLL);
                  }

                  else
                  {
                    *v34 = 32;
                    ++*(v33 + 4);
                  }

                  WriteAsOperandInternal(*v6, *v28, v41);
                }

                else
                {
                  v35 = *v6;
                  v36 = *(*v6 + 32);
                  if (*(*v6 + 24) - v36 > 0x15uLL)
                  {
                    qmemcpy(v36, "<null operand bundle!>", 22);
                    *(v35 + 4) += 22;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v35, "<null operand bundle!>", 0x16uLL);
                  }
                }

                v29 = 0;
                v28 += 4;
                v30 -= 32;
              }

              while (v30);
            }

            v37 = *v6;
            v38 = *(*v6 + 32);
            if (v38 >= *(*v6 + 24))
            {
              llvm::raw_ostream::write(v37, 41);
            }

            else
            {
              *(v37 + 4) = v38 + 1;
              *v38 = 41;
            }

            v12 = 0;
            ++v11;
          }

          while (v11 != v40);
        }
      }

      this = *v6;
      v39 = *(*v6 + 32);
      if (*(*v6 + 24) - v39 > 1uLL)
      {
        *v39 = 23840;
        *(this + 4) += 2;
      }

      else
      {
        return llvm::raw_ostream::write(this, " ]", 2uLL);
      }
    }
  }

  return this;
}

llvm::raw_ostream *anonymous namespace::AssemblyWriter::writeAtomic(llvm::raw_ostream *result, uint64_t a2, int a3, unsigned int a4)
{
  if (a3)
  {
    v5 = result;
    v6 = *v5;
    v7 = *(*v5 + 4);
    if (*(*v5 + 3) == v7)
    {
      v6 = llvm::raw_ostream::write(v6, " ", 1uLL);
    }

    else
    {
      *v7 = 32;
      ++*(v6 + 4);
    }

    v8 = llvm::toIRString(llvm::AtomicOrdering)::names[a3];

    return llvm::raw_ostream::operator<<(v6, v8);
  }

  return result;
}

llvm::raw_ostream *PrintShuffleMask(llvm::raw_ostream *this, uint64_t a2, int *a3, unint64_t a4)
{
  v8 = *(this + 4);
  if ((*(this + 3) - v8) > 2)
  {
    *(v8 + 2) = 60;
    *v8 = 8236;
    *(this + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(this, ", <", 3uLL);
  }

  if (*(a2 + 8) == 19)
  {
    v9 = *(this + 4);
    if ((*(this + 3) - v9) > 8)
    {
      *(v9 + 8) = 32;
      *v9 = *"vscale x ";
      *(this + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(this, "vscale x ", 9uLL);
    }
  }

  write_unsigned<unsigned long>(this, a4, 0, 0, 0);
  v10 = *(this + 4);
  if (*(this + 3) - v10 <= 7uLL)
  {
    llvm::raw_ostream::write(this, " x i32> ", 8uLL);
    if (a4)
    {
      goto LABEL_10;
    }

LABEL_15:
    v12 = "zeroinitializer";
    v13 = 15;
    goto LABEL_37;
  }

  *v10 = 0x203E323369207820;
  *(this + 4) += 8;
  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_10:
  v11 = 4 * a4;
  v12 = "zeroinitializer";
  v13 = 15;
  v14 = v11;
  v15 = a3;
  while (!*v15)
  {
    ++v15;
    v14 -= 4;
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  v13 = 5;
  v16 = v11;
  v17 = a3;
  v12 = "undef";
  while (*v17 == -1)
  {
    ++v17;
    v16 -= 4;
    if (!v16)
    {
      goto LABEL_37;
    }
  }

  v18 = *(this + 4);
  if (*(this + 3) == v18)
  {
    llvm::raw_ostream::write(this, "<", 1uLL);
  }

  else
  {
    *v18 = 60;
    ++*(this + 4);
  }

  v13 = 1;
  v12 = ">";
  v19 = 1;
  do
  {
    v20 = *a3;
    v21 = *(this + 4);
    if ((v19 & 1) == 0)
    {
      if (*(this + 3) - v21 > 1uLL)
      {
        *v21 = 8236;
        v21 = (*(this + 4) + 2);
        *(this + 4) = v21;
      }

      else
      {
        llvm::raw_ostream::write(this, ", ", 2uLL);
        v21 = *(this + 4);
      }
    }

    if (*(this + 3) - v21 > 3uLL)
    {
      *v21 = 540160873;
      *(this + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(this, "i32 ", 4uLL);
    }

    if (v20 == -1)
    {
      v22 = *(this + 4);
      if ((*(this + 3) - v22) > 4)
      {
        *(v22 + 4) = 102;
        *v22 = 1701080693;
        *(this + 4) += 5;
      }

      else
      {
        llvm::raw_ostream::write(this, "undef", 5uLL);
      }
    }

    else
    {
      llvm::write_integer(this, v20, 0, 0);
    }

    v19 = 0;
    ++a3;
    v11 -= 4;
  }

  while (v11);
LABEL_37:

  return llvm::raw_ostream::operator<<(this, v12, v13);
}

uint64_t **anonymous namespace::AssemblyWriter::printInfoComment(uint64_t ***this, const llvm::Value *a2)
{
  if (llvm::GCRelocateInst::classof(a2))
  {
    v4 = *this;
    v5 = (*this)[4];
    if (((*this)[3] - v5) > 3)
    {
      *v5 = 673200928;
      v4[4] = (v4[4] + 4);
    }

    else
    {
      llvm::raw_ostream::write(v4, " ; (", 4uLL);
    }

    BasePtr = llvm::GCRelocateInst::getBasePtr(a2);
    v7 = *this;
    v8 = (*this)[4];
    if (((*this)[3] - v8) > 1)
    {
      *v8 = 8236;
      v7[4] = (v7[4] + 2);
    }

    else
    {
      llvm::raw_ostream::write(v7, ", ", 2uLL);
    }

    DerivedPtr = llvm::GCRelocateInst::getDerivedPtr(a2);
    v10 = *this;
    v11 = (*this)[4];
    if ((*this)[3] == v11)
    {
      llvm::raw_ostream::write(v10, ")", 1uLL);
    }

    else
    {
      *v11 = 41;
      v10[4] = (v10[4] + 1);
    }
  }

  result = this[28];
  if (result)
  {
    v13 = *this;
    v14 = (*result)[6];

    return v14();
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::AssemblyWriter::writeSyncScope(llvm::raw_ostream *result, uint64_t a2, unsigned int a3)
{
  if (a3 != 1)
  {
    v4 = result;
    if (!*(result + 116))
    {
      llvm::LLVMContextImpl::getSyncScopeNames(a2, result + 57);
    }

    v5 = *v4;
    v6 = *(*v4 + 4);
    if ((*(*v4 + 3) - v6) > 0xB)
    {
      *(v6 + 8) = 573072752;
      *v6 = *" syncscope(";
      *(v5 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v5, " syncscope(", 0xCuLL);
    }

    v7 = v4[57] + 16 * a3;
    llvm::printEscapedString(*v7, *(v7 + 8), *v4);
    result = *v4;
    v8 = *(*v4 + 4);
    if (*(*v4 + 3) - v8 > 1uLL)
    {
      *v8 = 10530;
      *(result + 4) += 2;
    }

    else
    {

      return llvm::raw_ostream::write(result, ")", 2uLL);
    }
  }

  return result;
}

llvm::raw_ostream *PrintThreadLocalModel(llvm::raw_ostream *result, llvm::raw_ostream *this)
{
  if (result > 2)
  {
    if (result == 3)
    {
      v2 = "thread_local(initialexec) ";
      v3 = 26;
      return llvm::raw_ostream::operator<<(this, v2, v3);
    }

    if (result == 4)
    {
      v2 = "thread_local(localexec) ";
      v3 = 24;
      return llvm::raw_ostream::operator<<(this, v2, v3);
    }
  }

  else
  {
    if (result == 1)
    {
      v2 = "thread_local ";
      v3 = 13;
      return llvm::raw_ostream::operator<<(this, v2, v3);
    }

    if (result == 2)
    {
      v2 = "thread_local(localdynamic) ";
      v3 = 27;
      return llvm::raw_ostream::operator<<(this, v2, v3);
    }
  }

  return result;
}

void anonymous namespace::MDTreeAsmWriterContext::onWriteMetadataAsOperand(uint64_t a1, char *a2)
{
  llvm::SmallPtrSetImpl<llvm::Value *>::insert((a1 + 184), a2, &v24);
  if (v26 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v23 = 0;
    v14 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 1;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v13 = &unk_2883EB8F0;
    v21 = __p;
    llvm::raw_ostream::SetUnbuffered(&v13);
    v4 = (*(a1 + 32) + 1);
    *(a1 + 32) = v4;
    v24 = v4;
    v25 = "";
    v5 = *(a1 + 48);
    if (v5 >= *(a1 + 52))
    {
      llvm::SmallVectorTemplateBase<std::pair<unsigned int,std::string>,false>::growAndEmplaceBack<std::pair<unsigned int,char const*>>(a1 + 40, &v24);
      v7 = *(a1 + 48) - 1;
    }

    else
    {
      v6 = *(a1 + 40) + 32 * v5;
      *v6 = v4;
      std::string::basic_string[abi:nn200100]<0>((v6 + 8), "");
      v7 = *(a1 + 48);
      *(a1 + 48) = v7 + 1;
    }

    LODWORD(v25) = 0;
    v29 = 0;
    v30 = 0;
    v31 = 1;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v24 = &unk_2883EAF50;
    v32 = 0;
    v33 = 0;
    v34 = &v36;
    v35 = xmmword_2750C3CD0;
    llvm::formatted_raw_ostream::setStream(&v24, &v13);
    WriteAsOperandInternal(&v24, a2, a1);
    if (llvm::MDNode::classof(a2))
    {
      v8 = *a2;
      if (v8 != 6 && v8 != 33)
      {
        v9 = v28;
        if ((v27 - v28) > 2)
        {
          *(v28 + 2) = 32;
          *v9 = 15648;
          v28 += 3;
        }

        else
        {
          llvm::raw_ostream::write(&v24, " = ", 3uLL);
        }

        WriteMDNodeBodyInternal(&v24, a2, a1);
      }
    }

    llvm::formatted_raw_ostream::~formatted_raw_ostream(&v24);
    v10 = v21;
    v11 = *(a1 + 40) + 32 * v7;
    if (*(v11 + 31) < 0)
    {
      operator delete(*(v11 + 8));
    }

    v12 = *v10;
    *(v11 + 24) = v10[2];
    *(v11 + 8) = v12;
    *(v10 + 23) = 0;
    *v10 = 0;
    --*(a1 + 32);
    llvm::raw_ostream::~raw_ostream(&v13);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void anonymous namespace::MDTreeAsmWriterContext::~MDTreeAsmWriterContext(_anonymous_namespace_::MDTreeAsmWriterContext *this)
{
  *this = &unk_2883F1030;
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = v3 + 32 * v2;
    do
    {
      v5 = *(this + 31);
      v6 = *(v5 + 4);
      if (*(v5 + 3) == v6)
      {
        llvm::raw_ostream::write(v5, "\n", 1uLL);
      }

      else
      {
        *v6 = 10;
        ++*(v5 + 4);
      }

      v7 = llvm::raw_ostream::indent(*(this + 31), (2 * *v3));
      v10 = *(v3 + 8);
      v9 = v3 + 8;
      v8 = v10;
      v11 = *(v9 + 23);
      if (v11 >= 0)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= 0)
      {
        v13 = *(v9 + 23);
      }

      else
      {
        v13 = *(v9 + 8);
      }

      llvm::raw_ostream::write(v7, v12, v13);
      v3 = v9 + 24;
    }

    while (v3 != v4);
  }

  v14 = *(this + 24);
  if (v14 != *(this + 23))
  {
    free(v14);
  }

  v15 = *(this + 5);
  v16 = *(this + 12);
  if (v16)
  {
    v17 = &v15[32 * v16 - 24];
    v18 = -32 * v16;
    do
    {
      if (*(v17 + 23) < 0)
      {
        operator delete(*v17);
      }

      v17 -= 32;
      v18 += 32;
    }

    while (v18);
    v15 = *(this + 5);
  }

  if (v15 != this + 56)
  {
    free(v15);
  }
}

{

  JUMPOUT(0x277C69E40);
}

void llvm::SmallVectorTemplateBase<std::pair<unsigned int,std::string>,false>::growAndEmplaceBack<std::pair<unsigned int,char const*>>(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v16);
  v6 = &v5[32 * *(a1 + 8)];
  *v6 = *a2;
  std::string::basic_string[abi:nn200100]<0>(v6 + 8, *(a2 + 8));
  v7 = *a1;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = &v7[32 * v8];
    v10 = v5;
    do
    {
      *v10 = *v7;
      v11 = *(v7 + 8);
      *(v10 + 3) = *(v7 + 3);
      *(v10 + 8) = v11;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = 0;
      v10 += 32;
      v7 += 32;
    }

    while (v7 != v9);
    v7 = *a1;
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = &v7[32 * v12 - 24];
      v14 = -32 * v12;
      do
      {
        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        v13 -= 32;
        v14 += 32;
      }

      while (v14);
      v7 = *a1;
    }
  }

  v15 = v16;
  if (v7 != v4)
  {
    free(v7);
  }

  *a1 = v5;
  ++*(a1 + 8);
  *(a1 + 12) = v15;
}

uint64_t std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Module const*,BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Function const*,BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Module const*,BOOL)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Function const*,BOOL)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Module const*,BOOL)>::swap[abi:nn200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Function const*,BOOL)>::swap[abi:nn200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>,llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>::LookupBucketFor<llvm::AttributeSet>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>::grow(uint64_t a1, int a2)
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
          *(v16 - 2) = -4;
        }

        if (v17.i8[4])
        {
          *v16 = -4;
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
        v20 = *v19;
        if ((*v19 | 4) != 0xFFFFFFFFFFFFFFFCLL)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>,llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>::LookupBucketFor<llvm::AttributeSet>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 2) = *(v19 + 8);
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
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4;
      }

      if (v29.i8[4])
      {
        *v28 = -4;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

unint64_t llvm::Attribute::get(uint64_t *a1, int a2, uint64_t a3)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v5 = a2 - 75;
  v6 = *a1;
  v13[0] = v14;
  v13[1] = 0x2000000000;
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v13, a2);
  if (v5 > 9)
  {
    v12 = 0;
    v7 = v6 + 264;
    NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(v6 + 264, v13, &v12, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
    if (!NodeOrInsertPos)
    {
      v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v6 + 2072, 16, 3);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 12) = a2;
      goto LABEL_7;
    }

LABEL_5:
    v9 = NodeOrInsertPos;
    goto LABEL_8;
  }

  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v13, a3);
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v13, SHIDWORD(a3));
  v12 = 0;
  v7 = v6 + 264;
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(v6 + 264, v13, &v12, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
  if (NodeOrInsertPos)
  {
    goto LABEL_5;
  }

  v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v6 + 2072, 24, 3);
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v9 + 12) = a2;
  *(v9 + 16) = a3;
LABEL_7:
  llvm::FoldingSetBase::InsertNode(v7, v9, v12, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
LABEL_8:
  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

{
  v11[16] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v10[0] = v11;
  v10[1] = 0x2000000000;
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v10, a2);
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v10, a3);
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v10, SHIDWORD(a3));
  v9 = 0;
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(v5 + 264, v10, &v9, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
  if (!NodeOrInsertPos)
  {
    NodeOrInsertPos = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v5 + 2072, 24, 3);
    *NodeOrInsertPos = 0;
    *(NodeOrInsertPos + 8) = 3;
    *(NodeOrInsertPos + 12) = a2;
    *(NodeOrInsertPos + 16) = a3;
    llvm::FoldingSetBase::InsertNode(v5 + 264, NodeOrInsertPos, v9, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return NodeOrInsertPos;
}

uint64_t *llvm::Attribute::get(uint64_t *a1, _BYTE *a2, size_t a3, _BYTE *a4, size_t a5)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v14[0] = v15;
  v14[1] = 0x2000000000;
  llvm::FoldingSetNodeID::AddString(v14, a2, a3);
  if (a5)
  {
    llvm::FoldingSetNodeID::AddString(v14, a4, a5);
  }

  v13 = 0;
  NodeOrInsertPos = llvm::FoldingSetBase::FindNodeOrInsertPos(v9 + 264, v14, &v13, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
  if (!NodeOrInsertPos)
  {
    NodeOrInsertPos = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v9 + 2072, a3 + a5 + 26, 3);
    llvm::StringAttributeImpl::StringAttributeImpl(NodeOrInsertPos, a2, a3, a4, a5);
    llvm::FoldingSetBase::InsertNode(v9 + 264, NodeOrInsertPos, v13, llvm::FoldingSet<llvm::AttributeImpl>::getFoldingSetInfo(void)::Info);
  }

  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
  return NodeOrInsertPos;
}

uint64_t llvm::Attribute::getAttrKindFromName(char *a1, uint64_t a2)
{
  v2 = 0;
  switch(a2)
  {
    case 3:
      if (*a1 == 28520 && a1[2] == 116)
      {
        v2 = 9;
      }

      else
      {
        if (*a1 != 29555 || a1[2] != 112)
        {
          goto LABEL_353;
        }

        v2 = 59;
      }

      break;
    case 4:
      switch(*a1)
      {
        case 0x646C6F63:
          v2 = 5;
          break;
        case 0x7473656E:
          v2 = 17;
          break;
        case 0x74657273:
          v2 = 74;
          break;
        default:
          goto LABEL_353;
      }

      break;
    case 5:
      if (*a1 == 1701998185 && a1[4] == 103)
      {
        v2 = 11;
      }

      else if (*a1 == 1701536110 && a1[4] == 100)
      {
        v2 = 16;
      }

      else if (*a1 == 1702000994 && a1[4] == 102)
      {
        v2 = 69;
      }

      else if (*a1 == 1635154274 && a1[4] == 108)
      {
        v2 = 70;
      }

      else
      {
        if (*a1 != 1734962273 || a1[4] != 110)
        {
          goto LABEL_353;
        }

        v2 = 75;
      }

      break;
    case 6:
      if (*a1 == 1634561385 && *(a1 + 2) == 26482)
      {
        v2 = 10;
      }

      else if (*a1 == 1919315822 && *(a1 + 2) == 25957)
      {
        v2 = 24;
      }

      else if (*a1 == 2037608302 && *(a1 + 2) == 25454)
      {
        v2 = 34;
      }

      else if (*a1 == 1919972211 && *(a1 + 2) == 29029)
      {
        v2 = 60;
      }

      else
      {
        if (*a1 != 1869440365 || *(a1 + 2) != 31090)
        {
          goto LABEL_353;
        }

        v2 = 80;
      }

      break;
    case 7:
      if (*a1 == 1818850658 && *(a1 + 3) == 1852404844)
      {
        v2 = 4;
      }

      else if (*a1 == 1936615789 && *(a1 + 3) == 1702521203)
      {
        v2 = 14;
      }

      else if (*a1 == 1818324846 && *(a1 + 3) == 1935763820)
      {
        v2 = 18;
      }

      else if (*a1 == 1701670766 && *(a1 + 3) == 1701278309)
      {
        v2 = 27;
      }

      else if (*a1 == 1853189998 && *(a1 + 3) == 1717920878)
      {
        v2 = 35;
      }

      else if (*a1 == 1852731246 && *(a1 + 3) == 1819047278)
      {
        v2 = 38;
      }

      else if (*a1 == 1937010799 && *(a1 + 3) == 1702521203)
      {
        v2 = 41;
      }

      else if (*a1 == 1853124719 && *(a1 + 3) == 1701736302)
      {
        v2 = 42;
      }

      else if (*a1 == 1852270963 && *(a1 + 3) == 1954047342)
      {
        v2 = 48;
      }

      else if (*a1 == 1869768058 && *(a1 + 3) == 1954047343)
      {
        v2 = 68;
      }

      else
      {
        if (*a1 != 1635022709 || *(a1 + 3) != 1701601889)
        {
          goto LABEL_353;
        }

        v2 = 83;
      }

      break;
    case 8:
      switch(*a1)
      {
        case 0x727470636F6C6C61:
          v2 = 2;
          break;
        case 0x656E696C6E696F6ELL:
          v2 = 26;
          break;
        case 0x6E72757465726F6ELL:
          v2 = 31;
          break;
        case 0x646E69776E756F6ELL:
          v2 = 36;
          break;
        case 0x656E6F6E64616572:
          v2 = 44;
          break;
        case 0x796C6E6F64616572:
          v2 = 45;
          break;
        case 0x64656E7275746572:
          v2 = 46;
          break;
        case 0x7066746369727473:
          v2 = 62;
          break;
        case 0x61636F6C6C616E69:
          v2 = 72;
          break;
        default:
          goto LABEL_353;
      }

      break;
    case 9:
      if (*a1 == 0x6C626174706D756ALL && a1[8] == 101)
      {
        v2 = 13;
      }

      else if (*a1 == 0x69746C6975626F6ELL && a1[8] == 110)
      {
        v2 = 19;
      }

      else if (*a1 == 0x7275747061636F6ELL && a1[8] == 101)
      {
        v2 = 21;
      }

      else if (*a1 == 0x6C69666F72706F6ELL && a1[8] == 101)
      {
        v2 = 28;
      }

      else if (*a1 == 0x7372756365726F6ELL && a1[8] == 101)
      {
        v2 = 29;
      }

      else if (*a1 == 0x6E6F7A6465726F6ELL && a1[8] == 101)
      {
        v2 = 30;
      }

      else if (*a1 == 0x6361747365666173 && a1[8] == 107)
      {
        v2 = 49;
      }

      else if (*a1 == 0x6E6F727473707373 && a1[8] == 103)
      {
        v2 = 61;
      }

      else if (*a1 == 0x6C65737466697773 && a1[8] == 102)
      {
        v2 = 65;
      }

      else if (*a1 == 0x6C6E6F6574697277 && a1[8] == 121)
      {
        v2 = 67;
      }

      else if (*a1 == 0x6E696B636F6C6C61 && a1[8] == 100)
      {
        v2 = 76;
      }

      else if (*a1 == 0x7A6973636F6C6C61 && a1[8] == 101)
      {
        v2 = 77;
      }

      else
      {
        if (*a1 != 0x73616C6370666F6ELL || a1[8] != 115)
        {
          goto LABEL_353;
        }

        v2 = 81;
      }

      break;
    case 10:
      if (*a1 == 0x696C61636F6C6C61 && *(a1 + 4) == 28263)
      {
        v2 = 1;
      }

      else if (*a1 == 0x65677265766E6F63 && *(a1 + 4) == 29806)
      {
        v2 = 6;
      }

      else if (*a1 == 0x6968656E696C6E69 && *(a1 + 4) == 29806)
      {
        v2 = 12;
      }

      else if (*a1 == 0x61626C6C61636F6ELL && *(a1 + 4) == 27491)
      {
        v2 = 20;
      }

      else if (*a1 == 0x6568635F66636F6ELL && *(a1 + 4) == 27491)
      {
        v2 = 22;
      }

      else if (*a1 == 0x7973617466697773 && *(a1 + 4) == 25454)
      {
        v2 = 63;
      }

      else if (*a1 == 0x7272657466697773 && *(a1 + 4) == 29295)
      {
        v2 = 64;
      }

      else if (*a1 == 0x757465726C6C6977 && *(a1 + 4) == 28274)
      {
        v2 = 66;
      }

      else
      {
        if (*a1 != 0x6174736E67696C61 || *(a1 + 4) != 27491)
        {
          goto LABEL_353;
        }

        v2 = 82;
      }

      break;
    case 11:
      if (*a1 == 0x63696C7075646F6ELL && *(a1 + 3) == 0x65746163696C7075)
      {
        v2 = 23;
      }

      else if (*a1 == 0x62797A616C6E6F6ELL && *(a1 + 3) == 0x646E6962797A616CLL)
      {
        v2 = 37;
      }

      else if (*a1 == 0x666F727070696B73 && *(a1 + 3) == 0x656C69666F727070)
      {
        v2 = 56;
      }

      else
      {
        if (*a1 != 0x74746E656D656C65 || *(a1 + 3) != 0x65707974746E656DLL)
        {
          goto LABEL_353;
        }

        v2 = 71;
      }

      break;
    case 12:
      if (*a1 == 0x6E69737961776C61 && *(a1 + 2) == 1701734764)
      {
        v2 = 3;
      }

      else if (*a1 == 0x676F72707473756DLL && *(a1 + 2) == 1936942450)
      {
        v2 = 15;
      }

      else if (*a1 == 0x74616C7563657073 && *(a1 + 2) == 1701601889)
      {
        v2 = 57;
      }

      else
      {
        if (*a1 != 0x636F6C6C61657270 || *(a1 + 2) != 1684370529)
        {
          v10 = (*a1 ^ 0x725F656C61637376 | *(a1 + 2) ^ 0x65676E61) == 0;
          LODWORD(v2) = 84;
          goto LABEL_32;
        }

        v2 = 73;
      }

      break;
    case 13:
      if (*a1 == 0x7566726F6674706FLL && *(a1 + 5) == 0x676E697A7A756672)
      {
        v2 = 40;
      }

      else
      {
        if (*a1 != 0x5F736E7275746572 || *(a1 + 5) != 0x65636977745F736ELL)
        {
          goto LABEL_353;
        }

        v2 = 47;
      }

      break;
    case 15:
      if (*a1 == 0x63696C706D696F6ELL && *(a1 + 7) == 0x74616F6C66746963)
      {
        v2 = 25;
      }

      else if (*a1 == 0x657A6974696E6173 && *(a1 + 7) == 0x6761746D656D5F65)
      {
        v2 = 52;
      }

      else if (*a1 == 0x657A6974696E6173 && *(a1 + 7) == 0x79726F6D656D5F65)
      {
        v2 = 53;
      }

      else if (*a1 == 0x657A6974696E6173 && *(a1 + 7) == 0x6461657268745F65)
      {
        v2 = 54;
      }

      else if (*a1 == 0x6163776F64616873 && *(a1 + 7) == 0x6B636174736C6C61)
      {
        v2 = 55;
      }

      else
      {
        if (*a1 != 0x6572656665726564 || *(a1 + 7) != 0x656C626165636E65)
        {
          goto LABEL_353;
        }

        v2 = 78;
      }

      break;
    case 16:
      if (*a1 != 0x657A6974696E6173 || *(a1 + 1) != 0x737365726464615FLL)
      {
        goto LABEL_353;
      }

      v2 = 50;
      break;
    case 17:
      if (*a1 == 0x6974696E61736F6ELL && *(a1 + 1) == 0x646E756F625F657ALL && a1[16] == 115)
      {
        v2 = 32;
      }

      else
      {
        v10 = (*a1 ^ 0x74696C7073657270 | *(a1 + 1) ^ 0x6E6974756F726F63 | a1[16] ^ 0x65) == 0;
        LODWORD(v2) = 43;
LABEL_32:
        if (v10)
        {
          v2 = v2;
        }

        else
        {
          v2 = 0;
        }
      }

      break;
    case 18:
      if (*a1 != 0x657A6974696E6173 || *(a1 + 1) != 0x657264646177685FLL || *(a1 + 8) != 29555)
      {
        goto LABEL_353;
      }

      v2 = 51;
      break;
    case 19:
      if (*a1 == 0x745F7465725F6E66 && *(a1 + 1) == 0x7478655F6B6E7568 && *(a1 + 11) == 0x6E72657478655F6BLL)
      {
        v2 = 8;
      }

      else
      {
        if (*a1 != 0x6974696E61736F6ELL || *(a1 + 1) != 0x7265766F635F657ALL || *(a1 + 11) != 0x6567617265766F63)
        {
          goto LABEL_353;
        }

        v2 = 33;
      }

      break;
    case 21:
      if (*a1 != 0x696F705F6C6C756ELL || *(a1 + 1) != 0x5F73695F7265746ELL || *(a1 + 13) != 0x64696C61765F7369)
      {
        goto LABEL_353;
      }

      v2 = 39;
      break;
    case 23:
      if (*a1 != 0x6572656665726564 || *(a1 + 1) != 0x5F656C626165636ELL || *(a1 + 15) != 0x6C6C756E5F726F5FLL)
      {
        goto LABEL_353;
      }

      v2 = 79;
      break;
    case 26:
      if (*a1 == 0x74616C7563657073 && *(a1 + 1) == 0x64616F6C5F657669 && *(a1 + 2) == 0x696E65647261685FLL && *(a1 + 12) == 26478)
      {
        v2 = 58;
      }

      else
      {
LABEL_353:
        v2 = 0;
      }

      break;
    case 33:
      if (!memcmp(a1, "disable_sanitizer_instrumentation", 0x21uLL))
      {
        v2 = 7;
      }

      else
      {
        v2 = 0;
      }

      break;
    default:
      return v2;
  }

  return v2;
}