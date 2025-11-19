void *llvm::jitlink::aarch32::StubsManager<(llvm::jitlink::aarch32::StubsFlavor)1>::createEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = llvm::jitlink::aarch32::StubsManager<(llvm::jitlink::aarch32::StubsFlavor)1>::addStub<10ul>(a1, a2, &llvm::jitlink::aarch32::Thumbv7ABS, 4uLL);
  llvm::jitlink::Block::addEdge(v5, 7, 0, a3, 0);
  llvm::jitlink::Block::addEdge(v5, 8, 4, a3, 0);
  result = llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, v5, 0, v5[4], 1, 0);
  result[2] |= 0x8000000000000000;
  return result;
}

void *llvm::jitlink::aarch32::StubsManager<(llvm::jitlink::aarch32::StubsFlavor)1>::addStub<10ul>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    llvm::jitlink::LinkGraph::createSection();
  }

  v10[0] = a3;
  v10[1] = 10;
  v8 = a4;
  v9 = 0;
  v7 = 0;
  return llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(a2, v5, v10, &v9, &v8, &v7);
}

const char *llvm::jitlink::aarch32::getEdgeKindName(llvm::jitlink::aarch32 *this)
{
  if (this - 2) < 7 && ((0x7Du >> (this - 2)))
  {
    return off_279EFB690[(this - 2)];
  }

  v2 = "<Unrecognized edge kind>";
  if (this == 1)
  {
    v2 = "Keep-Alive";
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return "INVALID RELOCATION";
  }
}

llvm::raw_ostream *llvm::detail::provider_format_adapter<unsigned short>::format(uint64_t a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v15 = 0;
  if (!llvm::detail::HelperFunctions::consumeHexStyle(&v16, &v15))
  {
    if (v17)
    {
      v12 = 0;
      v13 = *v16;
      if (v13 <= 0x63)
      {
        if (v13 != 68)
        {
          if (v13 != 78)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

LABEL_17:
        v12 = 0;
        ++v16;
        goto LABEL_18;
      }

      if (v13 == 100)
      {
        goto LABEL_17;
      }

      if (v13 == 110)
      {
LABEL_16:
        ++v16;
        v12 = 1;
LABEL_18:
        --v17;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_19:
    v18 = 0;
    if (llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6))
    {
      v14 = 0;
    }

    else
    {
      v14 = v18;
    }

    return llvm::write_integer(a2, *(a1 + 8), v14, v12);
  }

  v7 = v15;
  v18 = 0;
  v8 = llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6);
  v9 = v18;
  if (v8)
  {
    v9 = 0;
  }

  if ((v7 & 0xFFFFFFFE) == 2)
  {
    v10 = v9 + 2;
  }

  else
  {
    v10 = v9;
  }

  return llvm::write_hex(a2, *(a1 + 8), v7, v10, 1);
}

const char *llvm::jitlink::aarch64::getEdgeKindName(llvm::jitlink::aarch64 *this)
{
  if (this - 2) < 0x13 && ((0x7FFFDu >> (this - 2)))
  {
    return off_279EFB780[(this - 2)];
  }

  v2 = "<Unrecognized edge kind>";
  if (this == 1)
  {
    v2 = "Keep-Alive";
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return "INVALID RELOCATION";
  }
}

void llvm::jitlink::aarch64::createEmptyPointerSigningFunction(llvm::jitlink::aarch64 *this, llvm::jitlink::LinkGraph *a2)
{
  llvm::jitlink::LinkGraph::blocks(this, v13);
  v11[0] = v13[0];
  v11[1] = v13[1];
  v11[2] = v13[2];
  v12 = v14;
  v2 = v15;
  v3 = v16;
  v4 = v14;
  if (*&v13[0] != v15 || v14 != v16)
  {
    v5 = 0;
    do
    {
      v6 = *v4;
      v7 = *(*v4 + 40);
      v8 = *(v6 + 48);
      while (v7 != v8)
      {
        if (*(v7 + 24) == 3)
        {
          ++v5;
        }

        v7 += 32;
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(v11, v10);
      v4 = v12;
    }

    while (*&v11[0] != v2 || v12 != v3);
  }

  llvm::jitlink::LinkGraph::createSection();
}

void llvm::jitlink::aarch64::lowerPointer64AuthEdgesToSigningFunction(llvm::jitlink::aarch64 *this, llvm::jitlink::LinkGraph *a2, uint64_t a3, unint64_t *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  SectionByName = llvm::jitlink::LinkGraph::findSectionByName(this, "$__ptrauth_sign", 15, a4);
  v6 = *(*llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(SectionByName + 56) + 8);
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  v9 = *(this + 47);
  llvm::WritableBinaryStreamRef::WritableBinaryStreamRef();
}

uint64_t llvm::jitlink::aarch64::writeMovRegImm64Seq<llvm::jitlink::aarch64::lowerPointer64AuthEdgesToSigningFunction(llvm::jitlink::LinkGraph &)::$_0>(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  v7 = 0;
  for (i = 0; ; i = 1)
  {
    if ((i & 1) == 0 || a4)
    {
      result = llvm::BinaryStreamWriter::writeInteger<unsigned int>(v6, *a2);
      if (*v6)
      {
        break;
      }
    }

    a4 >>= 16;
    v7 += 0x200000;
    if (v7 == 0x800000)
    {
      *v6 = 0;
      return result;
    }
  }

  return result;
}

uint64_t llvm::BinaryStreamWriter::writeInteger<unsigned int>(void *a1, uint64_t a2)
{
  (*(**(a2 + 24) + 16))(*(a2 + 24));
  result = llvm::WritableBinaryStreamRef::writeBytes(a2 + 8, *(a2 + 56), 4, a1);
  if (!*a1)
  {
    *(a2 + 56) += 4;
  }

  return result;
}

const char *llvm::jitlink::i386::getEdgeKindName(llvm::jitlink::i386 *this)
{
  if ((this - 2) < 0xB)
  {
    return off_279EFB818[(this - 2)];
  }

  v2 = "<Unrecognized edge kind>";
  if (this == 1)
  {
    v2 = "Keep-Alive";
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return "INVALID RELOCATION";
  }
}

void llvm::jitlink::i386::optimizeGOTAndStubAccesses(llvm::jitlink::i386 *this@<X0>, void *a2@<X8>)
{
  llvm::jitlink::LinkGraph::blocks(this, v15);
  v13[0] = v15[0];
  v13[1] = v15[1];
  v13[2] = v15[2];
  v14 = v16;
  v4 = v17;
  v5 = v18;
  v6 = v16;
  if (*&v15[0] != v17 || v16 != v18)
  {
    do
    {
      v7 = *v6;
      v8 = v7[5];
      v9 = v7[6];
      while (v8 != v9)
      {
        if (*(v8 + 24) == 12)
        {
          v10 = **(*(**(*(*v8 + 8) + 40) + 8) + 40);
          if (!((**(v10 + 8) - (*v7 + *(v8 + 8)) + (*(v10 + 16) & 0x1FFFFFFFFFFFFFFuLL) + 2147483652u) >> 32))
          {
            *(v8 + 24) = 10;
            *v8 = v10;
          }
        }

        v8 += 32;
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(v13, &v12);
      v6 = v14;
    }

    while (*&v13[0] != v4 || v14 != v5);
  }

  *a2 = 0;
}

const char *llvm::jitlink::loongarch::getEdgeKindName(llvm::jitlink::loongarch *this)
{
  if ((this - 2) < 0xA)
  {
    return off_279EFB870[(this - 2)];
  }

  v2 = "<Unrecognized edge kind>";
  if (this == 1)
  {
    v2 = "Keep-Alive";
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return "INVALID RELOCATION";
  }
}

const char *llvm::jitlink::riscv::getEdgeKindName(llvm::jitlink::riscv *this)
{
  if ((this - 2) < 0x1D)
  {
    return off_279EFB8C0[(this - 2)];
  }

  v2 = "<Unrecognized edge kind>";
  if (this == 1)
  {
    v2 = "Keep-Alive";
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return "INVALID RELOCATION";
  }
}

const char *llvm::jitlink::x86_64::getEdgeKindName(llvm::jitlink::x86_64 *this)
{
  if (this - 2) < 0x17 && ((0x5FFFFFu >> (this - 2)))
  {
    return off_279EFB9A8[(this - 2)];
  }

  v2 = "<Unrecognized edge kind>";
  if (this == 1)
  {
    v2 = "Keep-Alive";
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return "INVALID RELOCATION";
  }
}

void llvm::jitlink::x86_64::optimizeGOTAndStubAccesses(llvm::jitlink::x86_64 *this@<X0>, void *a2@<X8>)
{
  llvm::jitlink::LinkGraph::blocks(this, v24);
  v22[0] = v24[0];
  v22[1] = v24[1];
  v22[2] = v24[2];
  v23 = v25;
  v3 = v26;
  v4 = v27;
  v5 = v25;
  if (*&v24[0] != v26 || v25 != v27)
  {
    do
    {
      v6 = *v5;
      v7 = v6[5];
      v8 = v6[6];
      while (v7 != v8)
      {
        v9 = *(v7 + 24);
        if ((v9 - 18) >= 2)
        {
          if (v9 == 14)
          {
            v11 = **(*(**(*(*v7 + 8) + 40) + 8) + 40);
            if (!((**(v11 + 8) - (*v6 + *(v7 + 8)) + (*(v11 + 16) & 0x1FFFFFFFFFFFFFFuLL) + 2147483652u) >> 32))
            {
              *(v7 + 24) = 11;
LABEL_23:
              *v7 = v11;
            }
          }
        }

        else
        {
          v10 = *(v7 + 8);
          v11 = **(*(*v7 + 8) + 40);
          v12 = (*(v11 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v11 + 8);
          v13 = v12 - (*v6 + v10) + 2147483652u;
          v14 = HIDWORD(v12);
          v15 = HIDWORD(v13);
          if (v14)
          {
            v16 = v15 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            v17 = v6[3] + v10;
            v18 = *(v17 - 2);
            if (v18 == 139 && !v15)
            {
              *(v17 - 2) = -115;
              *(v7 + 24) = 7;
              *v7 = v11;
              *(v7 + 16) -= 4;
              goto LABEL_24;
            }

            if (v18 == 255 && !v14)
            {
              if (*(v17 - 1) == 21)
              {
                *(v17 - 2) = -6041;
              }

              else
              {
                *(v17 - 2) = -23;
                *(v17 + 3) = -112;
                --*(v7 + 8);
              }

              *(v7 + 24) = 3;
              goto LABEL_23;
            }
          }
        }

LABEL_24:
        v7 += 32;
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(v22, v21);
      v5 = v23;
    }

    while (*&v22[0] != v3 || v23 != v4);
  }

  *a2 = 0;
}

uint64_t llvm::orc::walkLibunwindEHFrameSection<llvm::Error (*)(void const*)>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t (*a4)(unsigned int *))
{
  v4 = result;
  if (a3 && (v5 = a2, (v6 = *a2) != 0))
  {
    v8 = (a2 + a3);
    while (1)
    {
      v9 = v6 == 0xFFFFFFFFLL ? 12 : 4;
      v10 = v6 == 0xFFFFFFFFLL ? *(v5 + 1) + 12 : v6 + 4;
      if (*(v5 + v9))
      {
        result = a4(v5);
        if (*v4)
        {
          break;
        }
      }

      v5 = (v5 + v10);
      if (v5 != v8)
      {
        v6 = *v5;
        if (*v5)
        {
          continue;
        }
      }

      goto LABEL_14;
    }
  }

  else
  {
LABEL_14:
    *v4 = 0;
  }

  return result;
}

char *llvm::orc::shared::detail::WrapperFunctionHandlerHelper<llvm::Error ()(llvm::orc::ExecutorAddrRange),llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSError ()(llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>)>::ResultSerializer,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>>::apply<llvm::Error (&)(llvm::orc::ExecutorAddrRange)>(char **a1, void (*a2)(void ***__return_ptr, void, void), void *a3, unint64_t a4)
{
  v35[7] = *MEMORY[0x277D85DE8];
  if (a4 >= 8 && (a4 & 0xFFFFFFFFFFFFFFF8) != 8)
  {
    a2(&v28, *a3, a3[1]);
    v5 = v28;
    v28 = 0;
    if (v5)
    {
      v29 = 1;
      v34[0] = v35;
      v34[1] = 0x200000000;
      v31 = v34;
      v32 = v5;
      llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v32, &v31);
      if (v32)
      {
        (*(*v32 + 1))(v32);
      }

      v6 = v34[0];
      v7 = v34[1];
      memset(&__p, 0, sizeof(__p));
      if (LODWORD(v34[1]))
      {
        v8 = 24 * LODWORD(v34[1]);
        v9 = LODWORD(v34[1]) - 1;
        v10 = v34[0] + 23;
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
        std::string::reserve(&__p, v9);
        v13 = v6[23];
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
          v15 = v6[23];
        }

        else
        {
          v15 = *(v6 + 1);
        }

        std::string::append(&__p, v14, v15);
        if (v7 != 1)
        {
          v16 = v6 + 24;
          v17 = v8 - 24;
          do
          {
            std::string::append(&__p, "\n", 1uLL);
            v18 = v16[23];
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
              v20 = v16[23];
            }

            else
            {
              v20 = *(v16 + 1);
            }

            std::string::append(&__p, v19, v20);
            v16 += 24;
            v17 -= 24;
          }

          while (v17);
        }
      }

      llvm::SmallVector<std::string,2u>::~SmallVector(v34);
      LOBYTE(v5) = v29;
      if (v29)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v22 = size + 9;
        v34[0] = 0;
        v34[1] = (size + 9);
        if (size > 0xFFFFFFFFFFFFFFF6)
        {
          v23 = v34;
          v32 = v34;
          v33 = size + 9;
          if (size == -9)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v23 = malloc_type_malloc(size + 9, 0x100004077774924uLL);
          v34[0] = v23;
          LOBYTE(v5) = v29;
        }

LABEL_36:
        *v23 = v5;
        v32 = (v23 + 1);
        v33 = v22 - 1;
        if ((v5 & 1) == 0 || llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::serialize(&v32, &__p))
        {
          *a1 = *v34;
          v34[0] = 0;
          v34[1] = 0;
          goto LABEL_41;
        }

LABEL_40:
        llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Error serializing arguments to blob in call", a1);
LABEL_41:
        if (v34[1] < 9)
        {
          if (v34[1])
          {
            goto LABEL_46;
          }

          v26 = v34[0];
          if (!v34[0])
          {
            goto LABEL_46;
          }
        }

        else
        {
          v26 = v34[0];
        }

        free(v26);
LABEL_46:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        result = v28;
        if (v28)
        {
          result = (*(*v28 + 1))(v28);
        }

        v27 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else
    {
      v29 = 0;
      memset(&__p, 0, sizeof(__p));
    }

    *v34 = xmmword_2750C1210;
    v23 = v34;
    v22 = 1;
    goto LABEL_36;
  }

  v24 = *MEMORY[0x277D85DE8];

  return llvm::orc::shared::WrapperFunctionResult::createOutOfBandError("Could not deserialize arguments for wrapper function call", a1);
}

uint64_t llvm::orc::runAsMain(uint64_t (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v23 = 0;
  v24 = 0;
  memset(v21, 0, sizeof(v21));
  v6 = *(a4 + 16);
  v7 = a3 + (v6 & 1);
  if (v7)
  {
    if (!(v7 >> 61))
    {
      v25[4] = &__p;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(v7);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v8 = a3 + (v6 & 1);
  v9 = v8 + 1;
  if (v8 != -1)
  {
    if (!(v9 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(v9);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (*(a4 + 16))
  {
    v10 = *(a4 + 8);
    operator new[]();
  }

  if (a3)
  {
    if ((*(a2 + 23) & 0x8000000000000000) != 0)
    {
      v11 = *(a2 + 8);
    }

    operator new[]();
  }

  v25[0] = 0;
  std::vector<char *>::push_back[abi:nn200100](v21, v25);
  v12 = *(a4 + 16);
  v13 = v21[0];
  v14 = a1(v12, v21[0]);
  if (v13)
  {
    operator delete(v13);
  }

  v15 = __p;
  if (__p)
  {
    v16 = v23;
    v17 = __p;
    if (v23 != __p)
    {
      do
      {
        v19 = *--v16;
        v18 = v19;
        *v16 = 0;
        if (v19)
        {
          MEMORY[0x277C69E10](v18, 0x1000C8077774924);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v23 = v15;
    operator delete(v17);
  }

  return v14;
}

uint64_t std::vector<std::unique_ptr<char []>>::push_back[abi:nn200100](uint64_t result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v8;
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

    v17[4] = v3;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::unique_ptr<char []>>::~__split_buffer(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void std::vector<char *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<char []>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x277C69E10](v4, 0x1000C8077774924);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void llvm::orc::shared::runFinalizeActions(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = 0uLL;
  v27 = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = 0;
    v7 = v4;
    do
    {
      if (v7[7])
      {
        ++v6;
      }

      v7 += 14;
    }

    while (v7 != v5);
    if (v6)
    {
      if (v6 <= 0x492492492492492)
      {
        v32 = &v26;
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::shared::WrapperFunctionCall>>(v6);
      }

LABEL_53:
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }
  }

  if (v4 == v5)
  {
LABEL_33:
    while (v5 != v4)
    {
      v5 -= 14;
      std::allocator<llvm::orc::shared::AllocActionCallPair>::destroy[abi:nn200100](a1, v5);
    }

    a1[1] = v4;
    *(a2 + 24) &= ~1u;
    *a2 = v26;
    *(a2 + 16) = v27;
    v26 = 0uLL;
    v27 = 0;
  }

  else
  {
    v23 = a2;
    while (1)
    {
      if (*v4)
      {
        llvm::orc::shared::WrapperFunctionCall::runWithSPSRetErrorMerged(v4, &v25);
        v8 = v25;
        if (v25)
        {
          break;
        }
      }

      v9 = v4[7];
      if (v9)
      {
        v10 = *(&v26 + 1);
        if (*(&v26 + 1) >= v27)
        {
          v12 = 0x6DB6DB6DB6DB6DB7 * ((*(&v26 + 1) - v26) >> 3) + 1;
          if (v12 > 0x492492492492492)
          {
            goto LABEL_53;
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v27 - v26) >> 3) > v12)
          {
            v12 = 0xDB6DB6DB6DB6DB6ELL * ((v27 - v26) >> 3);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v27 - v26) >> 3)) >= 0x249249249249249)
          {
            v13 = 0x492492492492492;
          }

          else
          {
            v13 = v12;
          }

          v32 = &v26;
          if (v13)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::shared::WrapperFunctionCall>>(v13);
          }

          v14 = 8 * ((*(&v26 + 1) - v26) >> 3);
          *v14 = v9;
          *(v14 + 8) = v14 + 32;
          *(v14 + 16) = xmmword_2750C12E0;
          if (v4[9])
          {
            llvm::SmallVectorImpl<char>::operator=(v14 + 8, v4 + 8);
          }

          v11 = v14 + 56;
          v15 = v14 + v26 - *(&v26 + 1);
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::orc::shared::WrapperFunctionCall>,llvm::orc::shared::WrapperFunctionCall*>(v26, *(&v26 + 1), v15);
          v16 = v26;
          v17 = v27;
          *&v26 = v15;
          *(&v26 + 1) = v14 + 56;
          v27 = 0;
          v31[2] = v16;
          v31[3] = v17;
          v31[0] = v16;
          v31[1] = v16;
          std::__split_buffer<llvm::orc::shared::WrapperFunctionCall>::~__split_buffer(v31);
        }

        else
        {
          **(&v26 + 1) = v9;
          *(v10 + 8) = v10 + 32;
          *(v10 + 16) = xmmword_2750C12E0;
          if (v4[9])
          {
            llvm::SmallVectorImpl<char>::operator=(v10 + 8, v4 + 8);
          }

          v11 = v10 + 56;
        }

        *(&v26 + 1) = v11;
      }

      v4 += 14;
      if (v4 == v5)
      {
        v4 = *a1;
        v5 = a1[1];
        a2 = v23;
        goto LABEL_33;
      }
    }

    v25 = 0;
    v18 = 0;
    if (*(&v26 + 1) == v26)
    {
      v21 = v23;
    }

    else
    {
      v19 = 0x6DB6DB6DB6DB6DB7 * ((*(&v26 + 1) - v26) >> 3);
      v20 = (*(&v26 + 1) - 56);
      v21 = v23;
      do
      {
        llvm::orc::shared::WrapperFunctionCall::runWithSPSRetErrorMerged(v20, &v28);
        v30 = v28;
        v31[0] = v18;
        v28 = 0;
        llvm::ErrorList::join(v31, &v30, &v29);
        if (v30)
        {
          (*(*v30 + 8))(v30);
        }

        if (v31[0])
        {
          (*(*v31[0] + 8))(v31[0]);
        }

        v18 = v29;
        v29 = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        v20 = (v20 - 56);
        --v19;
      }

      while (v19);
    }

    v30 = v18;
    v31[0] = v8;
    llvm::ErrorList::join(v31, &v30, &v24);
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    if (v31[0])
    {
      (*(*v31[0] + 8))(v31[0]);
    }

    *(v21 + 24) |= 1u;
    v22 = v25;
    *v21 = v24;
    v24 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }
  }

  v31[0] = &v26;
  std::vector<llvm::orc::shared::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](v31);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::shared::WrapperFunctionCall>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::orc::shared::WrapperFunctionCall>,llvm::orc::shared::WrapperFunctionCall*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      v8 = a3 + v6;
      *v8 = *(v5 + v6);
      *(v8 + 16) = xmmword_2750C12E0;
      *(v8 + 8) = a3 + v6 + 32;
      if (*(v5 + v6 + 16))
      {
        llvm::SmallVectorImpl<char>::operator=(a3 + v6 + 8, (v7 + 8));
      }

      v6 += 56;
    }

    while (v7 + 56 != a2);
    do
    {
      v9 = *(v5 + 8);
      if ((v5 + 32) != v9)
      {
        free(v9);
      }

      v5 += 56;
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<llvm::orc::shared::WrapperFunctionCall>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 56;
    v4 = *(v2 - 48);
    if (v4 == (v2 - 24))
    {
      v2 -= 56;
    }

    else
    {
      free(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::orc::isMachOInitializerSection(void *__s2, size_t __n, void *a3, size_t a4)
{
  v8 = 352;
  for (i = &qword_2815AB950; ; i += 2)
  {
    v10 = *i;
    if (*i >= __n)
    {
      v11 = *(i - 1);
      if (!__n || !memcmp(*(i - 1), __s2, __n))
      {
        v12 = v10 >= 7 ? 7 : v10;
        if (v10 - v12 == a4 && (v10 < 8 || !memcmp((v11 + v12), a3, a4)))
        {
          break;
        }
      }
    }

    v8 -= 16;
    if (!v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t llvm::orc::isMachOInitializerSection(void *__s2, size_t __n)
{
  v4 = 352;
  for (i = &qword_2815AB950; *i != __n || __n && memcmp(*(i - 1), __s2, __n); i += 2)
  {
    v4 -= 16;
    if (!v4)
    {
      return 0;
    }
  }

  return 1;
}

BOOL llvm::orc::isELFInitializerSection(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a2 >= 0xB)
  {
    v2 = *a1 == 0x72615F74696E692ELL && *(a1 + 3) == 0x79617272615F7469;
    if (v2 && (a2 == 11 || *(a1 + 11) == 46))
    {
      return 1;
    }
  }

  return result;
}

double _GLOBAL__sub_I_ObjectFormats_cpp()
{
  llvm::orc::MachOInitSectionNames = llvm::orc::MachOModInitFuncSectionName;
  unk_2815AB958 = llvm::orc::MachOObjCCatListSectionName;
  xmmword_2815AB968 = llvm::orc::MachOObjCCatList2SectionName;
  unk_2815AB978 = llvm::orc::MachOObjCClassListSectionName;
  xmmword_2815AB988 = llvm::orc::MachOObjCClassNameSectionName;
  unk_2815AB998 = llvm::orc::MachOObjCClassRefsSectionName;
  xmmword_2815AB9A8 = llvm::orc::MachOObjCConstSectionName;
  unk_2815AB9B8 = llvm::orc::MachOObjCDataSectionName;
  xmmword_2815AB9C8 = llvm::orc::MachOObjCImageInfoSectionName;
  unk_2815AB9D8 = llvm::orc::MachOObjCMethNameSectionName;
  xmmword_2815AB9E8 = llvm::orc::MachOObjCMethTypeSectionName;
  unk_2815AB9F8 = llvm::orc::MachOObjCNLCatListSectionName;
  xmmword_2815ABA08 = llvm::orc::MachOObjCNLClassListSectionName;
  unk_2815ABA18 = llvm::orc::MachOObjCProtoListSectionName;
  xmmword_2815ABA28 = llvm::orc::MachOObjCProtoRefsSectionName;
  unk_2815ABA38 = llvm::orc::MachOObjCSelRefsSectionName;
  xmmword_2815ABA48 = llvm::orc::MachOSwift5ProtoSectionName;
  unk_2815ABA58 = llvm::orc::MachOSwift5ProtosSectionName;
  xmmword_2815ABA68 = llvm::orc::MachOSwift5TypesSectionName;
  unk_2815ABA78 = llvm::orc::MachOSwift5TypeRefSectionName;
  result = *&llvm::orc::MachOSwift5FieldMetadataSectionName;
  xmmword_2815ABA88 = llvm::orc::MachOSwift5FieldMetadataSectionName;
  unk_2815ABA98 = llvm::orc::MachOSwift5EntrySectionName;
  return result;
}

void anonymous namespace::getOrcErrCat(_anonymous_namespace_ *this)
{
  {
  }
}

llvm::raw_ostream *llvm::orc::DuplicateDefinition::log(llvm::orc::DuplicateDefinition *this, llvm::raw_ostream *a2)
{
  if (*(this + 56) == 1)
  {
    v4 = *(a2 + 4);
    if ((*(a2 + 3) - v4) > 2)
    {
      *(v4 + 2) = 32;
      *v4 = 28233;
      *(a2 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(a2, "In ", 3uLL);
    }

    v5 = *(this + 55);
    if (v5 >= 0)
    {
      v6 = this + 32;
    }

    else
    {
      v6 = *(this + 4);
    }

    if (v5 >= 0)
    {
      v7 = *(this + 55);
    }

    else
    {
      v7 = *(this + 5);
    }

    llvm::raw_ostream::write(a2, v6, v7);
    v8 = *(a2 + 4);
    if (*(a2 + 3) - v8 > 1uLL)
    {
      *v8 = 8236;
      *(a2 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(a2, ", ", 2uLL);
    }
  }

  v9 = *(a2 + 4);
  if (*(a2 + 3) - v9 > 0x1FuLL)
  {
    qmemcpy(v9, "duplicate definition of symbol '", 32);
    *(a2 + 4) += 32;
  }

  else
  {
    llvm::raw_ostream::write(a2, "duplicate definition of symbol '", 0x20uLL);
  }

  v12 = *(this + 1);
  v11 = this + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  result = llvm::raw_ostream::write(a2, v14, v15);
  v17 = *(a2 + 4);
  if (*(a2 + 3) == v17)
  {

    return llvm::raw_ostream::write(a2, "'", 1uLL);
  }

  else
  {
    *v17 = 39;
    ++*(a2 + 4);
  }

  return result;
}

void llvm::orc::DuplicateDefinition::~DuplicateDefinition(void **this)
{
  *this = &unk_2883ED808;
  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883ED808;
  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::OrcErrorCategory::~OrcErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x277C69E40);
}

void *llvm::JITSymbolFlags::fromObjectSymbol@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  result = (*(*a1[1] + 40))(&v14);
  if (v15)
  {
    v6 = v14;
    *(a2 + 8) |= 1u;
    *a2 = v6;
  }

  else
  {
    v7 = v14;
    v8 = *a1;
    result = (*(*a1[1] + 120))(&v12);
    if (v13)
    {
      v9 = v12;
      *(a2 + 8) |= 1u;
      *a2 = v9;
    }

    else
    {
      v10 = (v7 >> 1) & 2 | (v7 >> 2) & 0x14;
      if (v12 == 5)
      {
        LOWORD(v10) = v10 | 0x20;
      }

      *(a2 + 8) &= ~1u;
      *a2 = v10 << 8;
    }

    if (v15)
    {
      result = v14;
      v14 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<unsigned long long>::push_back[abi:nn200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorAddr>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t llvm::object::ObjectFile::getCommonSymbolSize(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  (*(*a1 + 40))(&v9);
  if (v10)
  {
    v8 = v9;
    v9 = 0;
    llvm::report_fatal_error(&v8);
  }

  v4 = (*(*a1 + 112))(a1, a2);
  if (v10)
  {
    v5 = v9;
    v9 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::create@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::create(*a1, *(a1 + 8), &v22);
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

    llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFObjectFile(v17, v16, &v12, 0, 0, 0);
    if (v15[0] != v16)
    {
      free(v15[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (a2 && (llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::initContent(v17, v16), (v9 = *&v16[0]) != 0))
    {
      *(a3 + 152) |= 1u;
      *a3 = v9;
    }

    else
    {
      *(a3 + 152) &= ~1u;
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFObjectFile(a3, v17);
    }

    v17[0] = &unk_2883ED8A0;
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

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::initContent@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v11);
  v5 = v11;
  if ((v13 & 1) == 0)
  {
    if (v12)
    {
      v6 = 40 * v12;
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
        v7 += 10;
        v6 -= 40;
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

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883ED8A0;
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFObjectFile(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v11 = a2[1];
  *(a1 + 8) = 13;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  *a1 = &unk_2883ED8A0;
  *(a1 + 48) = 0;
  *(a1 + 56) = *a3;
  std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::vector[abi:nn200100]((a1 + 72), (a3 + 16));
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

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883ED8A0;
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

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolFlags@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a1 + 7, a2, HIDWORD(a2), &v31);
  v7 = v31;
  if (v32)
  {
    v31 = 0;
    *(a3 + 8) |= 1u;
    *a3 = v7;
    goto LABEL_83;
  }

  v8 = *(v31 + 12);
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

  if (*(v31 + 14) == -15)
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
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a1 + 7, v11, &v28);
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
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a1 + 7, v14, &v28);
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
          if ((v7[6] & 0xF) == 2)
          {
            v18 = v18 & 0xFFFFFEFF | ((*(v7 + 1) & 1) << 8);
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

  if (v7[7])
  {
    v20 = *(v7 + 12);
    v21 = v20 & 0xF;
    if (v21 != 5 && v7[7] != 65522)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v10 |= 1u;
    v20 = *(v7 + 12);
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
    v23 = *(v7 + 13) & 3;
    if (v23 == 3 || (*(v7 + 13) & 3) == 0)
    {
      v10 |= 0x40u;
    }
  }

  else
  {
    v23 = *(v7 + 13) & 3;
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::symbol_begin(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    v2 = *(v1 + 20) > 0xFu;
  }

  else
  {
    v2 = 0;
  }

  return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::toDRI(a1, v1, v2);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::symbol_end(void *a1)
{
  v1 = a1[16];
  if (v1)
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::toDRI(a1, v1, *(v1 + 20) >> 4);
  }

  else
  {
    return (*(*a1 + 48))(a1);
  }
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolName(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a1 + 7, a2, HIDWORD(a2), &v32);
  if (v33)
  {
    v6 = v32;
    *(a3 + 16) |= 1u;
    *a3 = v6;
    goto LABEL_32;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a1 + 7, a2, &v30);
  v7 = v30;
  if ((v31 & 1) == 0)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a1 + 7, *(v30 + 24), &v28);
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
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getStringTable(a1 + 7, v28, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v24, v26);
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
      if ((*(v32 + 12) & 0xF) == 3)
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

unsigned int *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolAddress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>((a1 + 56), a2, HIDWORD(a2), &v23);
  v7 = v23;
  if (v24)
  {
    goto LABEL_4;
  }

  v10 = *(v23 + 14);
  if ((v10 - 65521) < 2 || v10 == 0)
  {
    *(a3 + 8) &= ~1u;
    *a3 = v8;
    goto LABEL_5;
  }

  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection((a1 + 56), a2, &v21);
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
      result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSHNDXTable((a1 + 56), v13, &v16);
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
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection((a1 + 56), v23, v21, &v16, &v19);
    v12 = v19;
    if (v20)
    {
      goto LABEL_14;
    }

    if (v19)
    {
      v8 += v19[3];
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolValueImpl(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>((a1 + 56), a2, HIDWORD(a2), &v8);
  if (v9)
  {
    v7 = v8;
    v8 = 0;
    llvm::report_fatal_error(&v7);
  }

  result = *(v8 + 4);
  if (*(v8 + 14) != -15)
  {
    v4 = *(*(a1 + 56) + 18);
    v5 = v4 == 40 || v4 == 8;
    if (v5 && (*(v8 + 12) & 0xF) == 2)
    {
      result = result & 0xFFFFFFFE;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolAlignment(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  if (*(v5 + 14) == -14)
  {
    result = *(v5 + 4);
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>((a1 + 56), a2, HIDWORD(a2), &v9);
  v5 = v9;
  if ((v10 & 1) == 0)
  {
    v6 = *(v9 + 12) & 0xF;
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
      if ((*(v9 + 12) & 0xF) == 0)
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

unsigned int *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v14 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a1 + 7, a2, HIDWORD(a2), &v12);
  if (v13)
  {
    v7 = v12;
    *(a3 + 16) |= 1u;
    *a3 = v7;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a1 + 7, v3, &v10);
    if (v11)
    {
      v8 = v10;
      *(a3 + 16) |= 1u;
      *a3 = v8;
    }

    else
    {
      result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolSection(a1, v12, v10, a3);
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

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v8);
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
  return 0xCCCCCCCCCCCCCCCDLL * ((a2 - v4) >> 3);
}

llvm::object *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContents@<X0>(llvm::object *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[1] == 8)
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
    result = llvm::object::Binary::checkOffset(v11, a2[4] + *&v11[0], a2[5], &v12);
    v8 = v12;
    if (v12)
    {
      *(a3 + 16) |= 1u;
      *a3 = v8;
    }

    else
    {
      v9 = a2[5];
      v10 = *v6 + a2[4];
      *(a3 + 16) &= ~1u;
      *a3 = v10;
      *(a3 + 8) = v9;
    }
  }

  return result;
}

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::isSectionData(uint64_t a1, uint64_t a2)
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

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::isBerkeleyText(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (v2 & 4) != 0 || (*(a2 + 8) & 1) == 0;
  return (v2 & 2) != 0 && v3;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::isBerkeleyData(uint64_t a1, uint64_t a2)
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::isDebugSection(uint64_t a1)
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::section_rel_begin(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v6);
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
    result = ((a2 - v6) / *(*(a1 + 56) + 46));
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::section_rel_end(void *a1, _DWORD *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 272))(a1);
  v5 = a2[1];
  if (v5 == 4 || v5 == 9)
  {
    RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelSection(a1, v4);
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a1 + 7, *(RelSection + 6), &v17);
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

    v4 = v4 | ((a2[5] / a2[9] + HIDWORD(v4)) << 32);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocatedSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 4);
  if (v5 == 4 || v5 == 9)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a1 + 7, *(a2 + 28), &v11);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationOffset(uint64_t a1, uint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelSection(a1, a2) + 1) == 9)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRela(a1, a2);
  }

  return *Rel;
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationSymbol(uint64_t a1, uint64_t a2)
{
  RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelSection(a1, a2);
  if (*(RelSection + 1) == 9)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRela(a1, a2);
  }

  v6 = *(Rel + 1);
  if (v6 > 0xFF)
  {
    return *(RelSection + 6) | ((v6 >> 8) << 32);
  }

  else
  {
    return (*(*a1 + 56))(a1);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationType(uint64_t a1, uint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelSection(a1, a2) + 1) == 9)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRela(a1, a2);
  }

  return *(Rel + 4);
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationTypeName(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a1 + 7;
  v5 = (*(*a1 + 320))(a1);

  return llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationTypeName(v4, v5, a3);
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::dynamic_relocation_sections(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __p = 0;
  v27 = 0;
  v28 = 0;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v29);
  if ((v31 & 1) == 0 && v30)
  {
    v4 = v29;
    v5 = v29 + 40 * v30;
    do
    {
      if (*(v4 + 4) == 6)
      {
        v6 = (*(v4 + 16) + *(a1 + 16));
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

      v4 += 40;
    }

    while (v4 != v5);
    if (v30)
    {
      v10 = 0;
      v11 = v29;
      v12 = v29 + 40 * v30;
      do
      {
        v13 = __p;
        if (__p != v27)
        {
          while (*v13 != *(v11 + 12))
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
        v11 += 40;
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::section_begin(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v3);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::section_end(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), v3);
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
    result = v3[0] + 40 * v3[1];
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getFileFormatName(uint64_t a1)
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getArch(uint64_t a1)
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

      v4 = *(v1 + 36);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getStartAddress@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *(a2 + 8) &= ~1u;
  *a2 = *(v2 + 24);
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolSize(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  result = *(v5 + 8);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolBinding(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return *(v5 + 12) >> 4;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolOther(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  result = *(v5 + 13);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolELFType(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return *(v5 + 12) & 0xF;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationAddend@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelSection(a1, a2) + 1) != 4)
  {
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRela(a1, a2);
  v7 = *(result + 2);
  *(a3 + 8) &= ~1u;
  *a3 = v7;
  return result;
}

_BYTE *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getBuildAttributes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v17);
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
  v9 = 40 * v18;
  while (*v8 != 1879048195)
  {
    v8 += 10;
    v9 -= 40;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<char>((a1 + 56), (v8 - 1), &v14);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getDynamicSymbolIterators@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::dynamic_symbol_begin(a1);
  v6 = v5;
  result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::dynamic_symbol_end(a1);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = result;
  a2[3] = v8;
  return result;
}

void *std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::__vallocate[abi:nn200100](result, 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3));
  }

  return result;
}

void std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>>(a1, a2);
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

unsigned int *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>@<X0>(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a1, a2, &v10);
  v8 = v10;
  if (v11)
  {
    *(a4 + 8) |= 1u;
    *a4 = v8;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a1, v10, a3, a4);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::toDRI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v10);
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
      v7 = a3 << 32;
      v6 = ((a2 - v10) / 0x28uLL);
    }

    result = v7 | v6;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    goto LABEL_6;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a1, a3, v14);
  if ((v15 & 1) == 0)
  {
    a3 = v14[0];
LABEL_6:
    v10 = a4[1];
    v13[0] = *a4;
    v13[1] = v10;
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a1, a2, a3, v13, a5);
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

uint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X4>, uint64_t a5@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4[1];
  v11[0] = *a4;
  v11[1] = v7;
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(a2, a3, v11, &v12);
  if (v13)
  {
    v9 = v12;
    *(a5 + 8) |= 1u;
    *a5 = v9;
  }

  else if (v12)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a1, v12, a5);
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

uint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X4>, uint64_t a4@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 14);
  if (v5 == 0xFFFF)
  {
    v6 = a3[1];
    v10[0] = *a3;
    v10[1] = v6;
    result = llvm::object::getExtendedSymbolTableIndex<llvm::object::ELFType<(llvm::support::endianness)1,false>>((a1 - a2) >> 4, v10, &v11);
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

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a1[17];
  if (v8)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSHNDXTable(a1 + 7, v8, &v15);
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
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a1 + 7, a2, a3, &v15, &v18);
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

uint64_t *llvm::handleAllErrors<llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(llvm::object::DataRefImpl)::{lambda(llvm::ErrorInfoBase const&)#1}>(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  llvm::handleErrors<llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(llvm::object::DataRefImpl)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v2, &v3);
  result = v2;
  if (v2)
  {
    return (*(*v2 + 8))(v2);
  }

  return result;
}

uint64_t **llvm::handleErrors<llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(llvm::object::DataRefImpl)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(uint64_t **result@<X0>, uint64_t **a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v3 + 48))(v3, &llvm::ErrorList::ID))
    {
      v4 = v3[1];
      v5 = v3[2];
      if (v4 == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        do
        {
          v9 = v6;
          v7 = *v4;
          *v4 = 0;
          (*(*v7 + 48))(v7, &llvm::ErrorInfoBase::ID);
          v8 = v7;
          llvm::ErrorList::join(&v9, &v8, &v10);
          v6 = v10;
          v10 = 0;
          if (v8)
          {
            (*(*v8 + 8))(v8);
          }

          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          ++v4;
        }

        while (v4 != v5);
      }

      *a2 = v6;
      return (*(*v3 + 8))(v3);
    }

    else
    {
      result = (*(*v3 + 48))(v3, &llvm::ErrorInfoBase::ID);
      *a2 = v3;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

llvm::object *llvm::object::Binary::checkOffset@<X0>(llvm::object *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (__CFADD__(a3, a2) || (*result <= a2 ? (v5 = a3 + a2 > *result + *(result + 1)) : (v5 = 1), v5))
  {
    *&v6.__val_ = llvm::object::object_category(result);

    return llvm::errorCodeToError(4, v6, a4);
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelSection(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection((a1 + 56), a2, &v11);
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

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRel(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>((a1 + 56), a2, HIDWORD(a2), &v11);
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

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRela(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>((a1 + 56), a2, HIDWORD(a2), &v11);
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

unsigned int *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>@<X0>(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a1, a2, &v10);
  v8 = v10;
  if (v11)
  {
    *(a4 + 8) |= 1u;
    *a4 = v8;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>(a1, v10, a3, a4);
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

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>(a1, a2, v23);
  if (v24)
  {
    v8 = v23[0];
    v9 = *(a4 + 8) | 1;
  }

  else
  {
    if (v23[1] <= a3)
    {
      v12 = 8 * a3;
      v13[0] = "can't read an entry at 0x";
      v13[2] = &v12;
      v14 = 3587;
      v15[0] = v13;
      v15[2] = ": it goes past the end of the section (0x";
      v16 = 770;
      v11 = a2[5];
      v17[0] = v15;
      v17[2] = &v11;
      v18 = 3586;
      v19 = v17;
      v20 = ")";
      v21 = 770;
      v22 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v8 = v23[0] + 8 * a3;
    v9 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v9;
  *a4 = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>@<X0>(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a1, a2, &v10);
  v8 = v10;
  if (v11)
  {
    *(a4 + 8) |= 1u;
    *a4 = v8;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>(a1, v10, a3, a4);
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

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>(a1, a2, v23);
  if (v24)
  {
    v8 = v23[0];
    v9 = *(a4 + 8) | 1;
  }

  else
  {
    if (v23[1] <= a3)
    {
      v12 = 12 * a3;
      v13[0] = "can't read an entry at 0x";
      v13[2] = &v12;
      v14 = 3587;
      v15[0] = v13;
      v15[2] = ": it goes past the end of the section (0x";
      v16 = 770;
      v11 = a2[5];
      v17[0] = v15;
      v17[2] = &v11;
      v18 = 3586;
      v19 = v17;
      v20 = ")";
      v21 = 770;
      v22 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v8 = v23[0] + 12 * a3;
    v9 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v9;
  *a4 = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationTypeName(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  v7 = *(*a1 + 18);
  if (v7 == 8 && *(v6 + 4) == 2)
  {
    ELFRelocationTypeName = llvm::object::getELFRelocationTypeName(8, a2);
    llvm::SmallVectorImpl<char>::append<char const*,void>(a3, ELFRelocationTypeName, &ELFRelocationTypeName[v9]);
    v10 = llvm::object::getELFRelocationTypeName(*(*a1 + 18), BYTE1(a2));
    v12 = v11;
    llvm::SmallVectorImpl<char>::append(a3, 1uLL, 47);
    llvm::SmallVectorImpl<char>::append<char const*,void>(a3, v10, &v10[v12]);
    v13 = llvm::object::getELFRelocationTypeName(*(*a1 + 18), BYTE2(a2));
    v15 = v14;
    llvm::SmallVectorImpl<char>::append(a3, 1uLL, 47);
    v16 = &v13[v15];
    v17 = a3;
    v18 = v13;
  }

  else
  {
    v19 = llvm::object::getELFRelocationTypeName(v7, a2);
    v16 = &v19[v20];
    v17 = a3;
    v18 = v19;
  }

  return llvm::SmallVectorImpl<char>::append<char const*,void>(v17, v18, v16);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::SectionRef>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::dynamic_symbol_begin(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1 && *(v1 + 20) > 0xFu;
  return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::toDRI(a1, v1, v2);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::dynamic_symbol_end(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::toDRI(a1, v1, *(v1 + 20) >> 4);
  }

  else
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::dynamic_symbol_begin(a1);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFObjectFile(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v9[0] = *(a2 + 16);
  v9[1] = v4;
  v6 = *(a2 + 56);
  std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::vector[abi:nn200100](__p, (a2 + 72));
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = v9;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<char>::operator=(v8, a2 + 96);
  }

  llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFObjectFile(a1, v9, &v6, *(a2 + 120), *(a2 + 128), *(a2 + 136));
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

uint64_t *llvm::Expected<llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 152);
  v3 = *a1;
  if (v2)
  {
    *a1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else
  {
    (*v3)(a1);
  }

  return a1;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::create@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::create(*a1, *(a1 + 8), &v22);
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

    llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::ELFObjectFile(v17, v16, &v12, 0, 0, 0);
    if (v15[0] != v16)
    {
      free(v15[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (a2 && (llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::initContent(v17, v16), (v9 = *&v16[0]) != 0))
    {
      *(a3 + 152) |= 1u;
      *a3 = v9;
    }

    else
    {
      *(a3 + 152) &= ~1u;
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::ELFObjectFile(a3, v17);
    }

    v17[0] = &unk_2883EDAD8;
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

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::initContent@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v11);
  v5 = v11;
  if ((v13 & 1) == 0)
  {
    if (v12)
    {
      v6 = 40 * v12;
      v7 = (v11 + 4);
      while (1)
      {
        v8 = bswap32(*v7);
        if (v8 == 2)
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
        v7 += 10;
        v6 -= 40;
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

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883EDAD8;
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::ELFObjectFile(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v11 = a2[1];
  *(a1 + 8) = 14;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  *a1 = &unk_2883EDAD8;
  *(a1 + 48) = 0;
  *(a1 + 56) = *a3;
  std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::vector[abi:nn200100]((a1 + 72), (a3 + 16));
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

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883EDAD8;
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

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolFlags@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1 + 7, a2, HIDWORD(a2), &v31);
  v7 = v31;
  if (v32)
  {
    v31 = 0;
    *(a3 + 8) |= 1u;
    *a3 = v7;
    goto LABEL_67;
  }

  v8 = *(v31 + 12);
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

  if (*(v31 + 14) == -3585)
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
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1 + 7, v11, &v28);
    v12 = v28;
    if (v30)
    {
LABEL_19:
      *(a3 + 8) |= 1u;
      *a3 = v12;
      goto LABEL_67;
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
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1 + 7, v14, &v28);
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
    case 46848:
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
    case 10240:
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
        goto LABEL_84;
      }

      if (v29)
      {
        v18 = v10;
        if (v29 == 1)
        {
          goto LABEL_84;
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

          goto LABEL_84;
        }
      }

      v18 = v15;
LABEL_84:
      if ((v7[6] & 0xF) == 2)
      {
        v10 = HIWORD(*(v7 + 1)) & 0x100 | v18;
      }

      else
      {
        v10 = v18;
      }

      break;
    case 62208:
      result = (*(*a1 + 80))(&v28, a1, a2);
      if (v30)
      {
        v23 = v28;
        v28 = 0;
        v26 = v23;
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

  if (v7[7])
  {
    v19 = *(v7 + 12);
    v20 = v19 & 0xF;
    if (v20 != 5 && v7[7] != 62207)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v10 |= 1u;
    v19 = *(v7 + 12);
    v20 = v19 & 0xF;
    if (v20 != 5)
    {
      goto LABEL_51;
    }
  }

  v10 |= 0x10u;
LABEL_51:
  v21 = v19 >> 4;
  if (v21 <= 0xA && ((1 << v21) & 0x406) != 0)
  {
    v22 = *(v7 + 13) & 3;
    if (v22 == 3 || (*(v7 + 13) & 3) == 0)
    {
      v10 |= 0x40u;
    }
  }

  else
  {
    v22 = *(v7 + 13) & 3;
  }

  if (v20 == 10)
  {
    v24 = v10 | 0x20;
  }

  else
  {
    v24 = v10;
  }

  if (v22 == 2)
  {
    v24 |= 0x200u;
  }

  *(a3 + 8) &= ~1u;
  *a3 = v24;
LABEL_67:
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::symbol_begin(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    v2 = bswap32(*(v1 + 20)) > 0xF;
  }

  else
  {
    v2 = 0;
  }

  return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::toDRI(a1, v1, v2);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::symbol_end(void *a1)
{
  v1 = a1[16];
  if (v1)
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::toDRI(a1, v1, bswap32(*(v1 + 20)) >> 4);
  }

  else
  {
    return (*(*a1 + 48))(a1);
  }
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolName(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1 + 7, a2, HIDWORD(a2), &v32);
  if (v33)
  {
    v6 = v32;
    *(a3 + 16) |= 1u;
    *a3 = v6;
    goto LABEL_32;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1 + 7, a2, &v30);
  v7 = v30;
  if ((v31 & 1) == 0)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1 + 7, bswap32(*(v30 + 24)), &v28);
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
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getStringTable(a1 + 7, v28, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v24, v26);
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

    llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getName(v32, v26[0], v26[1], &v24);
    v10 = v25;
    if ((v25 & 1) != 0 || !*(&v24 + 1))
    {
      if ((v32[3] & 0xF) == 3)
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

unsigned int *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolAddress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v23);
  v7 = v23;
  if (v24)
  {
    goto LABEL_4;
  }

  v10 = bswap32(*(v23 + 14)) >> 16;
  if (v10 - 65521 < 2 || v10 == 0)
  {
    *(a3 + 8) &= ~1u;
    *a3 = v8;
    goto LABEL_5;
  }

  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection((a1 + 56), a2, &v21);
  if (v22)
  {
    v12 = v21;
    v21 = 0;
LABEL_14:
    *(a3 + 8) |= 1u;
    *a3 = v12;
    goto LABEL_25;
  }

  if (*(*(a1 + 56) + 16) == 256)
  {
    v13 = *(a1 + 136);
    if (v13)
    {
      result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSHNDXTable((a1 + 56), v13, &v16);
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
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection((a1 + 56), v23, v21, &v16, &v19);
    v12 = v19;
    if (v20)
    {
      goto LABEL_14;
    }

    if (v19)
    {
      v8 += bswap32(v19[3]);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolValueImpl(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v7);
  if (v8)
  {
    v6 = v7;
    v7 = 0;
    llvm::report_fatal_error(&v6);
  }

  result = bswap32(*(v7 + 4));
  if (*(v7 + 14) != -3585)
  {
    v4 = *(*(a1 + 56) + 18);
    if ((v4 == 10240 || v4 == 2048) && (*(v7 + 12) & 0xF) == 2)
    {
      result = result & 0xFFFFFFFE;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolAlignment(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  if (*(v5 + 14) == -3329)
  {
    result = bswap32(*(v5 + 4));
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v9);
  v5 = v9;
  if ((v10 & 1) == 0)
  {
    v6 = *(v9 + 12) & 0xF;
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
      if ((*(v9 + 12) & 0xF) == 0)
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

unsigned int *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v14 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1 + 7, a2, HIDWORD(a2), &v12);
  if (v13)
  {
    v7 = v12;
    *(a3 + 16) |= 1u;
    *a3 = v7;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1 + 7, v3, &v10);
    if (v11)
    {
      v8 = v10;
      *(a3 + 16) |= 1u;
      *a3 = v8;
    }

    else
    {
      result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolSection(a1, v12, v10, a3);
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

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionIndex(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v8);
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
  return 0xCCCCCCCCCCCCCCCDLL * ((a2 - v4) >> 3);
}

llvm::object *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContents@<X0>(llvm::object *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[1] == 0x8000000)
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
    result = llvm::object::Binary::checkOffset(v11, bswap32(a2[4]) + *&v11[0], bswap32(a2[5]), &v12);
    v8 = v12;
    if (v12)
    {
      *(a3 + 16) |= 1u;
      *a3 = v8;
    }

    else
    {
      v9 = *v6 + bswap32(a2[4]);
      v10 = bswap32(a2[5]);
      *(a3 + 16) &= ~1u;
      *a3 = v9;
      *(a3 + 8) = v10;
    }
  }

  return result;
}

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::isSectionData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x1000000)
  {
    return 0;
  }

  v2 = bswap32(*(a2 + 8));
  return (v2 & 2) != 0 && (v2 & 4) == 0;
}

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::isBerkeleyText(uint64_t a1, uint64_t a2)
{
  v2 = bswap32(*(a2 + 8));
  if ((v2 & 2) == 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    return 1;
  }

  return (v2 & 1) == 0;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::isBerkeleyData(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 248))(a1) & 1) != 0 || *(a2 + 4) == 0x8000000)
  {
    return 0;
  }

  else
  {
    return (*(a2 + 11) >> 1) & 1;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::isDebugSection(uint64_t a1)
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::section_rel_begin(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v6);
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
    result = ((a2 - v6) / (bswap32(*(*(a1 + 56) + 46)) >> 16));
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::section_rel_end(void *a1, _DWORD *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 272))(a1);
  v5 = a2[1];
  if (v5 == 0x4000000 || v5 == 150994944)
  {
    RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelSection(a1, v4);
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1 + 7, bswap32(*(RelSection + 6)), &v17);
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

    v4 = v4 | ((bswap32(a2[5]) / bswap32(a2[9]) + HIDWORD(v4)) << 32);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocatedSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = bswap32(*(a2 + 4));
  if (v5 == 4 || v5 == 9)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1 + 7, bswap32(*(a2 + 28)), &v11);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationOffset(uint64_t a1, uint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelSection(a1, a2) + 1) == 150994944)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRela(a1, a2);
  }

  return bswap32(*Rel);
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationSymbol(uint64_t a1, uint64_t a2)
{
  RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelSection(a1, a2);
  if (*(RelSection + 1) == 150994944)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRela(a1, a2);
  }

  v6 = bswap32(*(Rel + 1));
  if (v6 > 0xFF)
  {
    return bswap32(*(RelSection + 6)) | ((v6 >> 8) << 32);
  }

  else
  {
    return (*(*a1 + 56))(a1);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationType(uint64_t a1, uint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelSection(a1, a2) + 1) == 150994944)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRela(a1, a2);
  }

  return *(Rel + 7);
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationTypeName(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1 + 56;
  v5 = (*(*a1 + 320))(a1);

  return llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationTypeName(v4, v5, a3);
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::dynamic_relocation_sections(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __p = 0;
  v30 = 0;
  v31 = 0;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v32);
  if ((v34 & 1) == 0 && v33)
  {
    v4 = v32;
    v5 = v32 + 40 * v33;
    do
    {
      if (*(v4 + 4) == 100663296)
      {
        v6 = (bswap32(*(v4 + 16)) + *(a1 + 16));
        v7 = *v6;
        if (*v6)
        {
          v8 = v6 + 2;
          do
          {
            if (v7 == 285212672 || v7 == 117440512 || v7 == 385875968)
            {
              v28 = bswap32(*(v8 - 1));
              std::vector<unsigned long long>::push_back[abi:nn200100](&__p, &v28);
            }

            v11 = *v8;
            v8 += 2;
            v7 = v11;
          }

          while (v11);
        }
      }

      v4 += 40;
    }

    while (v4 != v5);
    if (v33)
    {
      v12 = 0;
      v13 = v32;
      v14 = v32 + 40 * v33;
      do
      {
        v15 = __p;
        if (__p != v30)
        {
          v16 = bswap32(*(v13 + 12));
          while (*v15 != v16)
          {
            if (++v15 == v30)
            {
              goto LABEL_39;
            }
          }
        }

        if (v15 != v30)
        {
          v17 = *(a2 + 16);
          if (v12 >= v17)
          {
            v18 = (v12 - *a2) >> 4;
            if ((v18 + 1) >> 60)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v19 = v17 - *a2;
            v20 = v19 >> 3;
            if (v19 >> 3 <= (v18 + 1))
            {
              v20 = v18 + 1;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFF0)
            {
              v21 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v20;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::SectionRef>>(a2, v21);
            }

            v22 = (16 * v18);
            *v22 = v13;
            v22[1] = a1;
            v12 = (16 * v18 + 16);
            v23 = *(a2 + 8) - *a2;
            v24 = 16 * v18 - v23;
            memcpy(v22 - v23, *a2, v23);
            v25 = *a2;
            *a2 = v24;
            *(a2 + 8) = v12;
            *(a2 + 16) = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v12 = v13;
            v12[1] = a1;
            v12 += 2;
          }

          *(a2 + 8) = v12;
        }

LABEL_39:
        v13 += 40;
      }

      while (v13 != v14);
    }
  }

  if (v34)
  {
    v26 = v32;
    v32 = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::section_begin(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v3);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::section_end(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), v3);
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
    result = v3[0] + 40 * v3[1];
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getFileFormatName(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(v1 + 4);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      llvm::report_fatal_error("Invalid ELFCLASS!", 1);
    }

    v3 = bswap32(*(v1 + 18)) >> 16;
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
            return "elf32-powerpc";
          case 40:
            return "elf32-bigarm";
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

  v5 = bswap32(*(v1 + 18)) >> 16;
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
          return "elf64-bigaarch64";
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
        return "elf64-powerpc";
    }
  }

  return "elf64-unknown";
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getArch(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = bswap32(*(v1 + 18)) >> 16;
  if (v2 > 82)
  {
    if (v2 > 242)
    {
      if (v2 > 250)
      {
        switch(v2)
        {
          case 251:
            return 60;
          case 252:
            return 10;
          case 258:
            v4 = *(v1 + 4);
            if (v4 != 1)
            {
              if (v4 == 2)
              {
                return 14;
              }

              goto LABEL_62;
            }

            return 13;
          default:
            return 0;
        }
      }

      else
      {
        switch(v2)
        {
          case 243:
            v6 = *(v1 + 4);
            if (v6 == 1)
            {
              return 27;
            }

            else
            {
              if (v6 != 2)
              {
                goto LABEL_62;
              }

              return 28;
            }

          case 244:
            return 55;
          case 247:
            return 9;
          default:
            return 0;
        }
      }
    }

    else if (v2 > 163)
    {
      if (v2 == 164)
      {
        return 12;
      }

      else
      {
        if (v2 != 183)
        {
          return 0;
        }

        return 4;
      }
    }

    else
    {
      switch(v2)
      {
        case 'S':
          return 7;
        case '^':
          return 40;
        case 'i':
          return 20;
        default:
          return 0;
      }
    }
  }

  else if (v2 > 19)
  {
    if (v2 > 39)
    {
      switch(v2)
      {
        case '(':
          return 1;
        case '+':
          return 30;
        case '>':
          return 38;
        default:
          return 0;
      }
    }

    else
    {
      switch(v2)
      {
        case 20:
          return 21;
        case 21:
          return 23;
        case 22:
          return 32;
        default:
          return 0;
      }
    }
  }

  else
  {
    if (v2 <= 5)
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

      return 29;
    }

    if (v2 == 6)
    {
      return 37;
    }

    if (v2 != 8)
    {
      if (v2 == 18)
      {
        return 29;
      }

      return 0;
    }

    v5 = *(v1 + 4);
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        return 18;
      }

LABEL_62:
      llvm::report_fatal_error("Invalid ELFCLASS!", 1);
    }

    return 16;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getStartAddress@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *(a2 + 8) &= ~1u;
  *a2 = bswap32(*(v2 + 24));
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolSize(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return bswap32(*(v5 + 8));
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolBinding(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return *(v5 + 12) >> 4;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolOther(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  result = *(v5 + 13);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolELFType(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return *(v5 + 12) & 0xF;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationAddend@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelSection(a1, a2) + 1) != 0x4000000)
  {
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRela(a1, a2);
  v7 = bswap32(*(result + 2));
  *(a3 + 8) &= ~1u;
  *a3 = v7;
  return result;
}

_BYTE *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getBuildAttributes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v17);
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
  v9 = 40 * v18;
  while (*v8 != 50331760)
  {
    v8 += 10;
    v9 -= 40;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<char>((a1 + 56), (v8 - 1), &v14);
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

  result = llvm::ELFAttributeParser::parse(a2, v14, v15, 0, a3);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getDynamicSymbolIterators@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::dynamic_symbol_begin(a1);
  v6 = v5;
  result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::dynamic_symbol_end(a1);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = result;
  a2[3] = v8;
  return result;
}

unsigned int *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>@<X0>(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1, a2, &v10);
  v8 = v10;
  if (v11)
  {
    *(a4 + 8) |= 1u;
    *a4 = v8;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1, v10, a3, a4);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::toDRI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v10);
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
      v7 = a3 << 32;
      v6 = ((a2 - v10) / 0x28uLL);
    }

    result = v7 | v6;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    goto LABEL_6;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1, a3, v14);
  if ((v15 & 1) == 0)
  {
    a3 = v14[0];
LABEL_6:
    v10 = a4[1];
    v13[0] = *a4;
    v13[1] = v10;
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1, a2, a3, v13, a5);
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

uint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X4>, uint64_t a5@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4[1];
  v11[0] = *a4;
  v11[1] = v7;
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionIndex(a2, a3, v11, &v12);
  if (v13)
  {
    v9 = v12;
    *(a5 + 8) |= 1u;
    *a5 = v9;
  }

  else if (v12)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1, v12, a5);
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

uint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionIndex@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X4>, uint64_t a4@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 14);
  if (v5 == 0xFFFF)
  {
    v7 = a3[1];
    v11[0] = *a3;
    v11[1] = v7;
    result = llvm::object::getExtendedSymbolTableIndex<llvm::object::ELFType<(llvm::support::endianness)0,false>>((a1 - a2) >> 4, v11, &v12);
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

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a1[17];
  if (v8)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSHNDXTable(a1 + 7, v8, &v15);
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
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1 + 7, a2, a3, &v15, &v18);
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

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelSection(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection((a1 + 56), a2, &v11);
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

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRel(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,false>>((a1 + 56), a2, HIDWORD(a2), &v11);
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

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRela(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,true>>((a1 + 56), a2, HIDWORD(a2), &v11);
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

unsigned int *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,false>>@<X0>(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1, a2, &v10);
  v8 = v10;
  if (v11)
  {
    *(a4 + 8) |= 1u;
    *a4 = v8;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,false>>(a1, v10, a3, a4);
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

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,false>>@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,false>>(a1, a2, v23);
  if (v24)
  {
    v8 = v23[0];
    v9 = *(a4 + 8) | 1;
  }

  else
  {
    if (v23[1] <= a3)
    {
      v12 = 8 * a3;
      v13[0] = "can't read an entry at 0x";
      v13[2] = &v12;
      v14 = 3587;
      v15[0] = v13;
      v15[2] = ": it goes past the end of the section (0x";
      v16 = 770;
      v11 = bswap32(a2[5]);
      v17[0] = v15;
      v17[2] = &v11;
      v18 = 3586;
      v19 = v17;
      v20 = ")";
      v21 = 770;
      v22 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v8 = v23[0] + 8 * a3;
    v9 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v9;
  *a4 = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,true>>@<X0>(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1, a2, &v10);
  v8 = v10;
  if (v11)
  {
    *(a4 + 8) |= 1u;
    *a4 = v8;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,true>>(a1, v10, a3, a4);
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

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,true>>@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,true>>(a1, a2, v23);
  if (v24)
  {
    v8 = v23[0];
    v9 = *(a4 + 8) | 1;
  }

  else
  {
    if (v23[1] <= a3)
    {
      v12 = 12 * a3;
      v13[0] = "can't read an entry at 0x";
      v13[2] = &v12;
      v14 = 3587;
      v15[0] = v13;
      v15[2] = ": it goes past the end of the section (0x";
      v16 = 770;
      v11 = bswap32(a2[5]);
      v17[0] = v15;
      v17[2] = &v11;
      v18 = 3586;
      v19 = v17;
      v20 = ")";
      v21 = 770;
      v22 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v8 = v23[0] + 12 * a3;
    v9 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v9;
  *a4 = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,true>>@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[9] != 201326592)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v31);
    v11 = std::string::insert(&v31, 0, "section ");
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v33, " has invalid sh_entsize: expected ");
    v14 = v13->__r_.__value_.__r.__words[2];
    *__p = *&v13->__r_.__value_.__l.__data_;
    v37 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v35.__r_.__value_.__r.__words[0] = 12;
    v39[0] = __p;
    v40 = &v35;
    v41 = 2564;
    v42[0] = v39;
    v43 = ", but got ";
    v44 = 770;
    v15 = bswap32(a2[9]);
    v45 = v42;
    v46 = v15;
    v47 = 2050;
    LODWORD(v30.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v5 = bswap32(a2[5]);
  if (v5 % 0xC)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v35);
    v6 = std::string::insert(&v35, 0, "section ");
    v7 = v6->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v31, " has an invalid sh_size (");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v33;
    v37 = v5;
    v38 = 2052;
    v39[0] = __p;
    v40 = ") which is not a multiple of its sh_entsize (";
    v41 = 770;
    v10 = bswap32(a2[9]);
    v42[0] = v39;
    v43 = v10;
    v44 = 2050;
    v45 = v42;
    v46 = ")";
    v47 = 770;
    LODWORD(v30.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v16 = bswap32(a2[4]);
  if (__CFADD__(v16, v5))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v35);
    v17 = std::string::insert(&v35, 0, "section ");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v31, " has a sh_offset (0x");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v30.__r_.__value_.__r.__words[0] = v16;
    __p[0] = &v33;
    v37 = &v30;
    v38 = 3588;
    v39[0] = __p;
    v40 = ") + sh_size (0x";
    v41 = 770;
    v29.__r_.__value_.__r.__words[0] = v5;
    v42[0] = v39;
    v43 = &v29;
    v44 = 3586;
    v45 = v42;
    v46 = ") that cannot be represented";
    v47 = 770;
    LODWORD(v28) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (result[1] < (v5 + v16))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(result, a2, &v29);
    v21 = std::string::insert(&v29, 0, "section ");
    v22 = v21->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v30, " has a sh_offset (0x");
    v24 = v23->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v27 = v5;
    v28 = v16;
    v31.__r_.__value_.__r.__words[0] = &v35;
    v31.__r_.__value_.__r.__words[2] = &v28;
    v32 = 3588;
    v33.__r_.__value_.__r.__words[0] = &v31;
    v33.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v34 = 770;
    __p[0] = &v33;
    v37 = &v27;
    v38 = 3586;
    v39[0] = __p;
    v40 = ") that is greater than the file size (0x";
    v41 = 770;
    v26 = v4[1];
    v42[0] = v39;
    v43 = &v26;
    v44 = 3586;
    v45 = v42;
    v46 = ")";
    v47 = 770;
    v48 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v25 = *result + v16;
  *(a3 + 16) &= ~1u;
  *a3 = v25;
  *(a3 + 8) = v5 / 0xC;
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationTypeName(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = *(*a1 + 18);
  if (v5 == 2048 && *(*a1 + 4) == 2)
  {
    ELFRelocationTypeName = llvm::object::getELFRelocationTypeName(8, a2);
    llvm::SmallVectorImpl<char>::append<char const*,void>(a3, ELFRelocationTypeName, &ELFRelocationTypeName[v8]);
    v9 = llvm::object::getELFRelocationTypeName((bswap32(*(*a1 + 18)) >> 16), BYTE1(a2));
    v11 = v10;
    llvm::SmallVectorImpl<char>::append(a3, 1uLL, 47);
    llvm::SmallVectorImpl<char>::append<char const*,void>(a3, v9, &v9[v11]);
    v12 = llvm::object::getELFRelocationTypeName((bswap32(*(*a1 + 18)) >> 16), BYTE2(a2));
    v14 = v13;
    llvm::SmallVectorImpl<char>::append(a3, 1uLL, 47);
    v15 = &v12[v14];
    v16 = a3;
    v17 = v12;
  }

  else
  {
    v18 = llvm::object::getELFRelocationTypeName(__rev16(v5), a2);
    v15 = &v18[v19];
    v16 = a3;
    v17 = v18;
  }

  return llvm::SmallVectorImpl<char>::append<char const*,void>(v16, v17, v15);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::dynamic_symbol_begin(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1 && bswap32(*(v1 + 20)) > 0xF;
  return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::toDRI(a1, v1, v2);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::dynamic_symbol_end(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::toDRI(a1, v1, bswap32(*(v1 + 20)) >> 4);
  }

  else
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::dynamic_symbol_begin(a1);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::ELFObjectFile(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v9[0] = *(a2 + 16);
  v9[1] = v4;
  v6 = *(a2 + 56);
  std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::vector[abi:nn200100](__p, (a2 + 72));
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = v9;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<char>::operator=(v8, a2 + 96);
  }

  llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::ELFObjectFile(a1, v9, &v6, *(a2 + 120), *(a2 + 128), *(a2 + 136));
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

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::create@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
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

    llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::ELFObjectFile(v17, v16, &v12, 0, 0, 0);
    if (v15[0] != v16)
    {
      free(v15[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (a2 && (llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::initContent(v17, v16), (v9 = *&v16[0]) != 0))
    {
      *(a3 + 152) |= 1u;
      *a3 = v9;
    }

    else
    {
      *(a3 + 152) &= ~1u;
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::ELFObjectFile(a3, v17);
    }

    v17[0] = &unk_2883EDF48;
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

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::initContent@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v11);
  v5 = v11;
  if ((v13 & 1) == 0)
  {
    if (v12)
    {
      v6 = v12 << 6;
      v7 = (v11 + 4);
      while (1)
      {
        v8 = bswap32(*v7);
        if (v8 == 2)
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

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883EDF48;
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::ELFObjectFile(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v11 = a2[1];
  *(a1 + 8) = 16;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  *a1 = &unk_2883EDF48;
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

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883EDF48;
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

unint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolFlags@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1 + 7, a2, HIDWORD(a2), &v30);
  v7 = v30;
  if (v31)
  {
    v30 = 0;
    *(a3 + 8) |= 1u;
    *a3 = v7;
    goto LABEL_82;
  }

  v8 = *(v30 + 4);
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

  if (*(v30 + 6) == -3585)
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
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1 + 7, v11, &v27);
    v12 = v27;
    if (v29)
    {
LABEL_19:
      *(a3 + 8) |= 1u;
      *a3 = v12;
      goto LABEL_82;
    }

    v13 = v7 == v27;
  }

  else
  {
    v13 = 0;
  }

  v14 = a1[15];
  if (v14)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1 + 7, v14, &v27);
    v12 = v27;
    if (v29)
    {
      goto LABEL_19;
    }

    v13 |= v7 == v27;
  }

  v15 = v10 | 0x80;
  if (v13)
  {
    v10 |= 0x80u;
  }

  v16 = *(a1[7] + 18);
  switch(v16)
  {
    case 46848:
      result = (*(*a1 + 80))(&v27, a1, a2);
      if (v29)
      {
        v26 = v27;
        v27 = 0;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v26);
        result = v26;
        if (v26)
        {
          result = (*(*v26 + 8))(v26);
        }

        if (v29)
        {
          result = v27;
          v27 = 0;
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
        if (v28 >= 2)
        {
          v17 = v15;
          if (*v27 != 25636)
          {
            if (*v27 == 30756)
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

LABEL_63:
      v10 = v17;
      break;
    case 10240:
      result = (*(*a1 + 80))(&v27, a1, a2);
      if (v29)
      {
        v26 = v27;
        v27 = 0;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v26);
        result = v26;
        if (v26)
        {
          result = (*(*v26 + 8))(v26);
        }

        if (v29)
        {
          result = v27;
          v27 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }

        v17 = v10;
      }

      else
      {
        if (!v28)
        {
          goto LABEL_60;
        }

        v17 = v10;
        if (v28 == 1)
        {
          goto LABEL_61;
        }

        if (*v27 == 25636)
        {
LABEL_60:
          v17 = v15;
        }

        else
        {
          v17 = v15;
          if (*v27 != 29732)
          {
            if (*v27 == 24868)
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

LABEL_61:
      if ((*(v7 + 4) & 0xF) == 2)
      {
        v10 = *(v7 + 7) & 0x100 | v17;
        break;
      }

      goto LABEL_63;
    case 62208:
      result = (*(*a1 + 80))(&v27, a1, a2);
      if (v29)
      {
        v18 = v27;
        v27 = 0;
        v25 = v18;
        llvm::consumeError(&v25);
        result = v25;
        if (v25)
        {
          result = (*(*v25 + 8))(v25);
        }
      }

      else if (!v28)
      {
        v10 = v15;
      }

      if (v29)
      {
        result = v27;
        v27 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      break;
  }

  if (*(v7 + 3))
  {
    v19 = *(v7 + 4);
    v20 = v19 & 0xF;
    if (v20 != 5 && *(v7 + 3) != 62207)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v10 |= 1u;
    v19 = *(v7 + 4);
    v20 = v19 & 0xF;
    if (v20 != 5)
    {
      goto LABEL_70;
    }
  }

  v10 |= 0x10u;
LABEL_70:
  v21 = v19 >> 4;
  if (v21 <= 0xA && ((1 << v21) & 0x406) != 0)
  {
    v22 = *(v7 + 5) & 3;
    if (v22 == 3 || (*(v7 + 5) & 3) == 0)
    {
      v10 |= 0x40u;
    }
  }

  else
  {
    v22 = *(v7 + 5) & 3;
  }

  if (v20 == 10)
  {
    v23 = v10 | 0x20;
  }

  else
  {
    v23 = v10;
  }

  if (v22 == 2)
  {
    v23 |= 0x200u;
  }

  *(a3 + 8) &= ~1u;
  *a3 = v23;
LABEL_82:
  if (v31)
  {
    result = v30;
    v30 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::symbol_begin(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    v2 = bswap64(*(v1 + 32)) > 0x17;
  }

  else
  {
    v2 = 0;
  }

  return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::toDRI(a1, v1, v2);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::symbol_end(void *a1)
{
  v1 = a1[16];
  if (v1)
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::toDRI(a1, v1, bswap64(*(v1 + 32)) / 0x18);
  }

  else
  {
    return (*(*a1 + 48))(a1);
  }
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolName(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1 + 7, a2, HIDWORD(a2), &v32);
  if (v33)
  {
    v6 = v32;
    *(a3 + 16) |= 1u;
    *a3 = v6;
    goto LABEL_32;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1 + 7, a2, &v30);
  v7 = v30;
  if ((v31 & 1) == 0)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1 + 7, bswap32(*(v30 + 40)), &v28);
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
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getStringTable(a1 + 7, v28, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v24, v26);
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

    llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getName(v32, v26[0], v26[1], &v24);
    v10 = v25;
    if ((v25 & 1) != 0 || !*(&v24 + 1))
    {
      if ((v32[1] & 0xF) == 3)
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

unint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolAddress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v23);
  v7 = v23;
  if (v24)
  {
    goto LABEL_4;
  }

  v10 = bswap32(*(v23 + 6)) >> 16;
  if (v10 - 65521 < 2 || v10 == 0)
  {
    *(a3 + 8) &= ~1u;
    *a3 = v8;
    goto LABEL_5;
  }

  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection((a1 + 56), a2, &v21);
  if (v22)
  {
    v12 = v21;
    v21 = 0;
LABEL_14:
    *(a3 + 8) |= 1u;
    *a3 = v12;
    goto LABEL_25;
  }

  if (*(*(a1 + 56) + 16) == 256)
  {
    v13 = *(a1 + 136);
    if (v13)
    {
      result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSHNDXTable((a1 + 56), v13, &v16);
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
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection((a1 + 56), v23, v21, &v16, &v19);
    v12 = v19;
    if (v20)
    {
      goto LABEL_14;
    }

    if (v19)
    {
      v8 += bswap64(v19[2]);
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

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolValueImpl(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v7);
  if (v8)
  {
    v6 = v7;
    v7 = 0;
    llvm::report_fatal_error(&v6);
  }

  result = bswap64(*(v7 + 8));
  if (*(v7 + 6) != -3585)
  {
    v4 = *(*(a1 + 56) + 18);
    if ((v4 == 10240 || v4 == 2048) && (*(v7 + 4) & 0xF) == 2)
    {
      result &= ~1uLL;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolAlignment(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  if (*(v5 + 6) == -3329)
  {
    result = bswap64(*(v5 + 8));
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v9);
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

unint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v14 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1 + 7, a2, HIDWORD(a2), &v12);
  if (v13)
  {
    v7 = v12;
    *(a3 + 16) |= 1u;
    *a3 = v7;
  }

  else
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1 + 7, v3, &v10);
    if (v11)
    {
      v8 = v10;
      *(a3 + 16) |= 1u;
      *a3 = v8;
    }

    else
    {
      result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolSection(a1, v12, v10, a3);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionIndex(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v8);
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

llvm::object *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContents@<X0>(llvm::object *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 4) == 0x8000000)
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
    result = llvm::object::Binary::checkOffset(v11, bswap64(*(a2 + 24)) + *&v11[0], bswap64(*(a2 + 32)), &v12);
    v8 = v12;
    if (v12)
    {
      *(a3 + 16) |= 1u;
      *a3 = v8;
    }

    else
    {
      v9 = *v6 + bswap64(*(a2 + 24));
      v10 = bswap64(*(a2 + 32));
      *(a3 + 16) &= ~1u;
      *a3 = v9;
      *(a3 + 8) = v10;
    }
  }

  return result;
}

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::isSectionData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x1000000)
  {
    return 0;
  }

  v2 = bswap64(*(a2 + 8));
  return (v2 & 2) != 0 && (v2 & 4) == 0;
}

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::isBerkeleyText(uint64_t a1, uint64_t a2)
{
  v2 = bswap64(*(a2 + 8));
  if ((v2 & 2) == 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    return 1;
  }

  return (v2 & 1) == 0;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::isBerkeleyData(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 248))(a1) & 1) != 0 || *(a2 + 4) == 0x8000000)
  {
    return 0;
  }

  else
  {
    return (*(a2 + 15) >> 1) & 1;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::isDebugSection(uint64_t a1)
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::section_rel_begin(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v6);
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
    result = ((a2 - v6) / (bswap32(*(*(a1 + 56) + 58)) >> 16));
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::section_rel_end(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 272))(a1);
  v5 = *(a2 + 4);
  if (v5 == 0x4000000 || v5 == 150994944)
  {
    RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelSection(a1, v4);
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1 + 7, bswap32(*(RelSection + 10)), &v17);
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

    v4 += (bswap64(*(a2 + 32)) / bswap64(*(a2 + 56))) << 32;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelocatedSection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = bswap32(*(a2 + 4));
  if (v5 == 4 || v5 == 9)
  {
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1 + 7, bswap32(*(a2 + 44)), &v11);
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

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelocationOffset(uint64_t a1, uint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelSection(a1, a2) + 1) == 150994944)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRela(a1, a2);
  }

  return bswap64(*Rel);
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelocationSymbol(void *a1, uint64_t a2)
{
  RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelSection(a1, a2);
  if (*(RelSection + 1) == 150994944)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRela(a1, a2);
  }

  v6 = a1[7];
  if (*(v6 + 18) == 2048 && *(v6 + 4) == 2)
  {
    v7 = bswap64(Rel[1]);
    if (*(v6 + 5) == 1)
    {
      v8 = v7 << 32;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = bswap64(Rel[1]);
  }

  if (HIDWORD(v8))
  {
    return v8 & 0xFFFFFFFF00000000 | bswap32(*(RelSection + 10));
  }

  else
  {
    return (*(*a1 + 56))(a1);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelocationType(uint64_t a1, uint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelSection(a1, a2) + 1) == 150994944)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRela(a1, a2);
  }

  v5 = *(a1 + 56);
  if (*(v5 + 18) == 2048 && *(v5 + 4) == 2)
  {
    v6 = bswap64(Rel[1]);
    v7 = *(v5 + 5) == 1;
    v8 = (v6 >> 24) & 0xFF0000 | HIBYTE(v6) | (v6 >> 8) & 0xFF000000 | (v6 >> 40) & 0xFF00;
    if (!v7)
    {
      LODWORD(v8) = v6;
    }
  }

  else
  {
    LODWORD(v8) = bswap64(Rel[1]);
  }

  return v8;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelocationTypeName(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1 + 56;
  v5 = (*(*a1 + 320))(a1);

  return llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationTypeName(v4, v5, a3);
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::dynamic_relocation_sections(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __p = 0;
  v30 = 0;
  v31 = 0;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v32);
  if ((v34 & 1) == 0 && v33)
  {
    v4 = v32;
    v5 = v32 + (v33 << 6);
    do
    {
      if (*(v4 + 4) == 100663296)
      {
        v6 = (bswap64(*(v4 + 24)) + *(a1 + 16));
        v7 = *v6;
        if (*v6)
        {
          v8 = v6 + 2;
          do
          {
            if (v7 == 0x1100000000000000 || v7 == 0x700000000000000 || v7 == 0x1700000000000000)
            {
              v28 = bswap64(*(v8 - 1));
              std::vector<unsigned long long>::push_back[abi:nn200100](&__p, &v28);
            }

            v11 = *v8;
            v8 += 2;
            v7 = v11;
          }

          while (v11);
        }
      }

      v4 += 64;
    }

    while (v4 != v5);
    if (v33)
    {
      v12 = 0;
      v13 = v32;
      v14 = v32 + (v33 << 6);
      do
      {
        v15 = __p;
        if (__p != v30)
        {
          v16 = bswap64(*(v13 + 16));
          while (*v15 != v16)
          {
            if (++v15 == v30)
            {
              goto LABEL_39;
            }
          }
        }

        if (v15 != v30)
        {
          v17 = *(a2 + 16);
          if (v12 >= v17)
          {
            v18 = (v12 - *a2) >> 4;
            if ((v18 + 1) >> 60)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v19 = v17 - *a2;
            v20 = v19 >> 3;
            if (v19 >> 3 <= (v18 + 1))
            {
              v20 = v18 + 1;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFF0)
            {
              v21 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v20;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::SectionRef>>(a2, v21);
            }

            v22 = (16 * v18);
            *v22 = v13;
            v22[1] = a1;
            v12 = (16 * v18 + 16);
            v23 = *(a2 + 8) - *a2;
            v24 = 16 * v18 - v23;
            memcpy(v22 - v23, *a2, v23);
            v25 = *a2;
            *a2 = v24;
            *(a2 + 8) = v12;
            *(a2 + 16) = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v12 = v13;
            v12[1] = a1;
            v12 += 2;
          }

          *(a2 + 8) = v12;
        }

LABEL_39:
        v13 += 64;
      }

      while (v13 != v14);
    }
  }

  if (v34)
  {
    v26 = v32;
    v32 = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::section_begin(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v3);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::section_end(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), v3);
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

const char *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getFileFormatName(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(v1 + 4);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      llvm::report_fatal_error("Invalid ELFCLASS!", 1);
    }

    v3 = bswap32(*(v1 + 18)) >> 16;
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
            return "elf32-powerpc";
          case 40:
            return "elf32-bigarm";
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

  v5 = bswap32(*(v1 + 18)) >> 16;
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
          return "elf64-bigaarch64";
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
        return "elf64-powerpc";
    }
  }

  return "elf64-unknown";
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getArch(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = bswap32(*(v1 + 18)) >> 16;
  if (v2 > 82)
  {
    if (v2 > 242)
    {
      if (v2 > 250)
      {
        switch(v2)
        {
          case 251:
            return 60;
          case 252:
            return 10;
          case 258:
            v4 = *(v1 + 4);
            if (v4 != 1)
            {
              if (v4 == 2)
              {
                return 14;
              }

              goto LABEL_62;
            }

            return 13;
          default:
            return 0;
        }
      }

      else
      {
        switch(v2)
        {
          case 243:
            v6 = *(v1 + 4);
            if (v6 == 1)
            {
              return 27;
            }

            else
            {
              if (v6 != 2)
              {
                goto LABEL_62;
              }

              return 28;
            }

          case 244:
            return 55;
          case 247:
            return 9;
          default:
            return 0;
        }
      }
    }

    else if (v2 > 163)
    {
      if (v2 == 164)
      {
        return 12;
      }

      else
      {
        if (v2 != 183)
        {
          return 0;
        }

        return 4;
      }
    }

    else
    {
      switch(v2)
      {
        case 'S':
          return 7;
        case '^':
          return 40;
        case 'i':
          return 20;
        default:
          return 0;
      }
    }
  }

  else if (v2 > 19)
  {
    if (v2 > 39)
    {
      switch(v2)
      {
        case '(':
          return 1;
        case '+':
          return 30;
        case '>':
          return 38;
        default:
          return 0;
      }
    }

    else
    {
      switch(v2)
      {
        case 20:
          return 21;
        case 21:
          return 23;
        case 22:
          return 32;
        default:
          return 0;
      }
    }
  }

  else
  {
    if (v2 <= 5)
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

      return 29;
    }

    if (v2 == 6)
    {
      return 37;
    }

    if (v2 != 8)
    {
      if (v2 == 18)
      {
        return 29;
      }

      return 0;
    }

    v5 = *(v1 + 4);
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        return 18;
      }

LABEL_62:
      llvm::report_fatal_error("Invalid ELFCLASS!", 1);
    }

    return 16;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getStartAddress@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *(a2 + 8) &= ~1u;
  *a2 = bswap64(*(v2 + 24));
  return result;
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolSize(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return bswap64(*(v5 + 16));
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolBinding(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return *(v5 + 4) >> 4;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolOther(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v5);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolELFType(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v5);
  if (v6)
  {
    v4 = v5;
    v5 = 0;
    llvm::report_fatal_error(&v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return *(v5 + 4) & 0xF;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelocationAddend@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelSection(a1, a2) + 1) != 0x4000000)
  {
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRela(a1, a2);
  v7 = bswap64(result[2]);
  *(a3 + 8) &= ~1u;
  *a3 = v7;
  return result;
}

_BYTE *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getBuildAttributes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v17);
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
  while (*v8 != 50331760)
  {
    v8 += 16;
    v9 -= 64;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<char>((a1 + 56), (v8 - 1), &v14);
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

  result = llvm::ELFAttributeParser::parse(a2, v14, v15, 0, a3);
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

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getDynamicSymbolIterators@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::dynamic_symbol_begin(a1);
  v6 = v5;
  result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::dynamic_symbol_end(a1);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = result;
  a2[3] = v8;
  return result;
}

void *std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 6);
  }

  return result;
}

void std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>>(a1, a2);
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

unint64_t *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>@<X0>(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
    result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1, v10, a3, a4);
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

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections(a1, v9);
  if (v10)
  {
    v6 = v9[0];
    v7 = *(a3 + 8) | 1;
  }

  else
  {
    if (v9[1] <= a2)
    {
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v6 = v9[0] + (a2 << 6);
    v7 = *(a3 + 8) & 0xFE;
  }

  *(a3 + 8) = v7;
  *a3 = v6;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  result = llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1, a2, v23);
  if (v24)
  {
    v8 = v23[0];
    v9 = *(a4 + 8) | 1;
  }

  else
  {
    if (v23[1] <= a3)
    {
      v12 = 24 * a3;
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

    v8 = v23[0] + 24 * a3;
    v9 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v9;
  *a4 = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 40);
  v5 = bswap64(v4);
  v28 = v5;
  if (v4)
  {
    v6 = *(v3 + 58);
    if (v6 != 0x4000)
    {
      v25 = "invalid e_shentsize in ELF header: ";
      v26 = __rev16(v6);
      v27 = 2307;
      LODWORD(v21[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = result[1];
    v8 = v5 + 64;
    if (v5 <= 0xFFFFFFFFFFFFFFBFLL)
    {
      v9 = v8 >= v7;
      v10 = v8 == v7;
    }

    else
    {
      v9 = 1;
      v10 = 0;
    }

    if (!v10 && v9)
    {
      v25 = "section header table goes past the end of the file: e_shoff = 0x";
      v26 = &v28;
      v27 = 3587;
      LODWORD(v21[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v13 = v3 + v5;
    v14 = *(v3 + 60);
    v15 = __rev16(v14);
    v24 = v15;
    if (!v14)
    {
      v15 = bswap64(*(v13 + 32));
      v24 = v15;
      if (v15 >> 58)
      {
        v21[0] = "invalid number of sections specified in the NULL section's sh_size field (";
        v22 = &v24;
        v23 = 3075;
        v25 = v21;
        v26 = ")";
        v27 = 770;
        LODWORD(v19[0]) = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }
    }

    v9 = __CFADD__(v5, v15 << 6);
    v16 = v5 + (v15 << 6);
    if (v9)
    {
      v17[0] = "invalid section header table offset (e_shoff = 0x";
      v17[2] = &v28;
      v18 = 3587;
      v19[0] = v17;
      v19[2] = ") or invalid number of sections specified in the first section header's sh_size field (0x";
      v20 = 770;
      v21[0] = v19;
      v22 = &v24;
      v23 = 3586;
      v25 = v21;
      v26 = ")";
      v27 = 770;
      v29 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    if (v16 > v7)
    {
      v25 = "section table goes past the end of file";
      v27 = 259;
      LODWORD(v21[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    *(a2 + 16) &= ~1u;
    *a2 = v13;
    *(a2 + 8) = v15;
  }

  else
  {
    v11 = result[2];
    v12 = result[3];
    if (v11 == v12)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) &= ~1u;
    }

    else
    {
      *(a2 + 16) &= ~1u;
      *a2 = v11;
      *(a2 + 8) = (v12 - v11) >> 6;
    }
  }

  return result;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>@<X0>(void *result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (a2[7] != 0x1800000000000000)
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
    v32.__r_.__value_.__r.__words[0] = 24;
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
  if (v7 % 0x18)
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
  *(a3 + 8) = v7 / 0x18;
  return result;
}

void llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections(a1, v14);
  if (v15)
  {
    v5 = v14[0];
    v14[0] = 0;
    v13.__r_.__value_.__r.__words[0] = v5;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v13);
    if (v13.__r_.__value_.__r.__words[0])
    {
      (*(*v13.__r_.__value_.__l.__data_ + 8))(v13.__r_.__value_.__r.__words[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(a3, "[unknown index]");
  }

  else
  {
    std::to_string(&v12, (a2 - v14[0]) >> 6);
    v6 = std::string::insert(&v12, 0, "[index ");
    v7 = v6->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v13, "]");
    v9 = v8->__r_.__value_.__r.__words[2];
    *a3 = *&v8->__r_.__value_.__l.__data_;
    *(a3 + 16) = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (v15)
  {
    v10 = v14[0];
    v14[0] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}