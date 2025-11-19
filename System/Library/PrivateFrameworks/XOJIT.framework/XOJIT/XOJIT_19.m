uint64_t llvm::object::ELFObjectFileBase::tryGetCPUName@<X0>(llvm::object::ELFObjectFileBase *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(*this + 544))(this);
  if (result == 21)
  {
    v7 = "future";
    v6 = 6;
  }

  else
  {
    if (result != 224)
    {
      v8 = 0;
      *a2 = 0;
      goto LABEL_7;
    }

    result = (*(*this + 528))(this);
    v5 = result - 1;
    v6 = qword_2750C7698[v5];
    v7 = off_279EFEE20[v5];
  }

  *a2 = v7;
  *(a2 + 8) = v6;
  v8 = 1;
LABEL_7:
  *(a2 + 16) = v8;
  return result;
}

void llvm::object::ELFObjectFileBase::setARMSubArch(llvm::object::ELFObjectFileBase *this, llvm::Triple *a2)
{
  if (!*(a2 + 7))
  {
    v32 = v2;
    v33 = v3;
    v17[1] = "aeabi";
    v17[2] = 5;
    v18 = 0u;
    v19 = 0u;
    v20 = 1065353216;
    v21 = 0u;
    v22 = 0u;
    v23 = 1065353216;
    v24 = 0;
    v25 = &tagData;
    v27 = 0;
    v28 = 0;
    v26 = 52;
    v29 = 1;
    v30 = 0;
    v31 = 0;
    v17[0] = &unk_2883EA4E8;
    (*(*this + 512))(&v16);
    v6 = v16;
    if (v16)
    {
      v16 = 0;
      __p.__r_.__value_.__r.__words[0] = v6;
      llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&__p);
      if (__p.__r_.__value_.__r.__words[0])
      {
        (*(*__p.__r_.__value_.__l.__data_ + 8))(__p.__r_.__value_.__r.__words[0]);
      }

      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

    else
    {
      memset(&__p, 0, sizeof(__p));
      if ((*(a2 + 6) - 35) >= 2)
      {
        v7 = "arm";
      }

      else
      {
        v7 = "thumb";
      }

      MEMORY[0x277C69AB0](&__p, v7);
      v8 = v18;
      v9 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v18, *(&v18 + 1), 6u);
      if (v9)
      {
        v10 = "v4";
        switch(*(v9 + 5))
        {
          case 1:
            goto LABEL_33;
          case 2:
            v10 = "v4t";
            goto LABEL_33;
          case 3:
            v10 = "v5t";
            goto LABEL_33;
          case 4:
            v10 = "v5te";
            goto LABEL_33;
          case 5:
            v10 = "v5tej";
            goto LABEL_33;
          case 6:
            v10 = "v6";
            goto LABEL_33;
          case 7:
            v10 = "v6kz";
            goto LABEL_33;
          case 8:
            v10 = "v6t2";
            goto LABEL_33;
          case 9:
            v10 = "v6k";
            goto LABEL_33;
          case 0xA:
            v11 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v8, *(&v8 + 1), 7u);
            if (v11 && *(v11 + 5) == 77)
            {
              v10 = "v7m";
            }

            else
            {
              v10 = "v7";
            }

            goto LABEL_33;
          case 0xB:
            v10 = "v6m";
            goto LABEL_33;
          case 0xC:
            v10 = "v6sm";
            goto LABEL_33;
          case 0xD:
            v10 = "v7em";
            goto LABEL_33;
          case 0xE:
            v10 = "v8a";
            goto LABEL_33;
          case 0xF:
            v10 = "v8r";
            goto LABEL_33;
          case 0x10:
            v10 = "v8m.base";
            goto LABEL_33;
          case 0x11:
            v10 = "v8m.main";
            goto LABEL_33;
          case 0x15:
            v10 = "v8.1m.main";
            goto LABEL_33;
          case 0x16:
            v10 = "v9a";
LABEL_33:
            std::string::append(&__p, v10);
            break;
          default:
            break;
        }
      }

      v12 = *(this + 2);
      if (v12 <= 0x14 && ((1 << v12) & 0x155800) != 0)
      {
        std::string::append(&__p, "eb");
      }

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
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      llvm::Triple::setArchName(a2, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    llvm::ELFAttributeParser::~ELFAttributeParser(v17);
  }
}

uint64_t llvm::object::ObjectFile::getStartAddress@<X0>(llvm::object::ObjectFile *this@<X0>, uint64_t a2@<X8>)
{
  *&v4.__val_ = llvm::object::object_category(this);
  result = llvm::errorCodeToError(3, v4, a2);
  *(a2 + 8) |= 1u;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t llvm::Expected<std::unique_ptr<llvm::RISCVISAInfo>>::~Expected(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      (*(*v3 + 1))(v3);
    }
  }

  else if (v3)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy((v3 + 3), v3[4]);
    MEMORY[0x277C69E40](v3, 0x1020C401F42C5C2);
  }

  return a1;
}

llvm::object::GenericBinaryError *llvm::object::GenericBinaryError::GenericBinaryError(llvm::object::GenericBinaryError *this, llvm::formatv_object_base **a2)
{
  *(this + 2) = 0;
  v4 = std::system_category();
  *(this + 2) = v4;
  *this = &unk_2883EEE98;
  llvm::object::object_category(v4);
  *(this + 1) = 3;
  *(this + 2) = llvm::object::object_category(void)::error_category;
  *this = &unk_2883EEE00;
  llvm::Twine::str(a2, this + 24);
  return this;
}

uint64_t llvm::object::GenericBinaryError::GenericBinaryError(uint64_t a1, llvm::formatv_object_base **a2, unsigned int a3)
{
  *(a1 + 8) = 0;
  v6 = std::system_category();
  *(a1 + 16) = v6;
  *a1 = &unk_2883EEE98;
  llvm::object::object_category(v6);
  *(a1 + 8) = 3;
  *(a1 + 16) = llvm::object::object_category(void)::error_category;
  *a1 = &unk_2883EEE00;
  llvm::Twine::str(a2, a1 + 24);
  llvm::object::object_category(v7);
  *(a1 + 8) = a3;
  *(a1 + 16) = llvm::object::object_category(void)::error_category;
  return a1;
}

llvm::raw_ostream *llvm::object::GenericBinaryError::log(llvm::object::GenericBinaryError *this, llvm::raw_ostream *a2)
{
  v5 = *(this + 3);
  v3 = this + 24;
  v4 = v5;
  v6 = v3[23];
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = v3[23];
  }

  else
  {
    v8 = *(v3 + 1);
  }

  return llvm::raw_ostream::write(a2, v7, v8);
}

void (***llvm::object::object_category(llvm::object *this))(_anonymous_namespace_::_object_error_category *__hidden this)
{
  {
  }

  return llvm::object::object_category(void)::error_category;
}

void llvm::object::GenericBinaryError::~GenericBinaryError(void **this)
{
  *this = &unk_2883EEE00;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_2883EEE00;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::_object_error_category::~_object_error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x277C69E40);
}

void llvm::object::IRObjectFile::~IRObjectFile(llvm::object::IRObjectFile *this)
{
  *this = &unk_2883EEEE8;
  MEMORY[0x277C69E30](*(this + 25), 8);
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  llvm::SpecificBumpPtrAllocator<std::pair<std::string,unsigned int>>::DestroyAll(this + 80);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 80);
  v3 = (this + 48);
  std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:nn200100](&v3);
}

{
  llvm::object::IRObjectFile::~IRObjectFile(this);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::object::IRObjectFile::getSymbolFlags@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::ModuleSymbolTable::getSymbolFlags(a1 + 72, *a2);
  *(a3 + 8) &= ~1u;
  *a3 = result;
  return result;
}

llvm::object *llvm::object::IRObjectFile::findBitcodeInObject@<X0>(llvm::object::IRObjectFile *this@<X0>, const llvm::object::ObjectFile *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 352))(this, a2);
  v7 = v6;
  result = (*(*this + 360))(this);
  v17 = v5;
  v18 = v7;
  if (v7 == v9 && v5 == result)
  {
LABEL_16:
    *&v23.__val_ = llvm::object::object_category(result);
    result = llvm::errorCodeToError(7, v23, a3);
    *(a3 + 32) |= 1u;
    goto LABEL_17;
  }

  v11 = result;
  v12 = v9;
  while (!(*(*v7 + 232))(v7, v5))
  {
    result = (*(*v18 + 136))(v18, &v17);
    v5 = v17;
    v7 = v18;
    if (v18 == v12 && v17 == v11)
    {
      goto LABEL_16;
    }
  }

  result = (*(*v18 + 176))(&v19);
  v14 = v19;
  if ((v21 & 1) == 0)
  {
    v15 = v20;
    if (v20 > 1)
    {
      *(a3 + 32) &= ~1u;
      *a3 = v14;
      *(a3 + 8) = v15;
      *(a3 + 16) = *(this + 2);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *(a3 + 32) |= 1u;
  *a3 = v14;
LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::IRObjectFile::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = *(a1 + 8);
  v41 = *(a1 + 16);
  v5 = llvm::identify_magic(v4, v3);
  if (v5 > 0x1E)
  {
    goto LABEL_31;
  }

  if (((1 << v5) & 0x41000210) == 0)
  {
    if (v5 == 1)
    {
      *&v43 = v4;
      *(&v43 + 1) = v3;
      v44 = v41;
      goto LABEL_9;
    }

LABEL_31:
    *&v52.__val_ = llvm::object::object_category(v5);
    result = llvm::errorCodeToError(2, v52, &v43);
    goto LABEL_32;
  }

  *&v29 = v4;
  *(&v29 + 1) = v3;
  v30 = v41;
  llvm::object::ObjectFile::createObjectFile(&v29, v5, 1, &v46);
  v7 = v46;
  if (v47)
  {
    v46 = 0;
    *&v43 = v7;
    result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v46);
LABEL_32:
    v26 = v43;
    *(a2 + 8) |= 1u;
    *a2 = v26;
    goto LABEL_35;
  }

  llvm::object::IRObjectFile::findBitcodeInObject(v46, v6, &v43);
  v9 = v45;
  result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v46);
  if (v9)
  {
    goto LABEL_32;
  }

LABEL_9:
  v29 = v43;
  v30 = v44;
  llvm::getBitcodeModuleList(&v29, &v41);
  if (v42)
  {
    v10 = v41;
    *&v41 = 0;
    *(a2 + 8) |= 1u;
    *a2 = v10;
  }

  else
  {
    __src[0] = 0;
    __src[1] = 0;
    v34 = 0;
    v12 = *(&v41 + 1);
    v11 = v41;
    if (v41 == *(&v41 + 1))
    {
LABEL_30:
      operator new();
    }

    while (1)
    {
      v29 = *v11;
      v30 = v11[1];
      v31 = v11[2];
      v32 = v11[3];
      memset(v35, 0, sizeof(v35));
      v36 = 0u;
      memset(v37, 0, sizeof(v37));
      v38 = 0;
      llvm::BitcodeModule::getLazyModule(&v29, v35, &v39);
      if (v38 == 1)
      {
        std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](v37);
      }

      if (BYTE8(v36) == 1)
      {
        std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](&v35[2] + 8);
      }

      if (LOBYTE(v35[2]) == 1)
      {
        std::__function::__value_func<std::optional<std::string> ()(llvm::StringRef,llvm::StringRef)>::~__value_func[abi:nn200100](v35);
      }

      if (v40)
      {
        break;
      }

      v13 = __src[1];
      if (__src[1] >= v34)
      {
        v16 = __src[0];
        v17 = __src[1] - __src[0];
        v18 = (__src[1] - __src[0]) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v20 = v34 - __src[0];
        if ((v34 - __src[0]) >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        v21 = v20 >= 0x7FFFFFFFFFFFFFF8;
        v22 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v21)
        {
          v22 = v19;
        }

        v50 = __src;
        if (v22)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(__src, v22);
        }

        v23 = v39;
        v39 = 0;
        *(8 * v18) = v23;
        v15 = (8 * v18 + 8);
        memcpy(0, v16, v17);
        v24 = __src[0];
        v25 = v34;
        __src[0] = 0;
        __src[1] = v15;
        v34 = 0;
        v48 = v24;
        v49 = v25;
        v46 = v24;
        v47 = v24;
        std::__split_buffer<std::unique_ptr<llvm::Module>>::~__split_buffer(&v46);
      }

      else
      {
        v14 = v39;
        v39 = 0;
        *__src[1] = v14;
        v15 = v13 + 8;
      }

      __src[1] = v15;
      llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(&v39);
      v11 += 4;
      if (v11 == v12)
      {
        goto LABEL_30;
      }
    }

    v27 = v39;
    v39 = 0;
    *(a2 + 8) |= 1u;
    *a2 = v27;
    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(&v39);
    *&v29 = __src;
    std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:nn200100](&v29);
  }

  result = llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v41);
LABEL_35:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::object::IRObjectFile::is64Bit(llvm::object::IRObjectFile *this)
{
  v1 = **(this + 6);
  v4 = *(v1 + 208);
  v2 = v1 + 208;
  v3 = v4;
  v5 = *(v2 + 23);
  if (v5 >= 0)
  {
    v3 = v2;
  }

  v6 = *(v2 + 8);
  if (v5 >= 0)
  {
    v6 = v5;
  }

  v10 = 261;
  v9[0] = v3;
  v9[1] = v6;
  llvm::Triple::Triple(&__p, v9);
  v7 = v13;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  return getArchPointerBitWidth(v7) == 64;
}

uint64_t llvm::SpecificBumpPtrAllocator<std::pair<std::string,unsigned int>>::DestroyAll(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      for (i = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32; i <= v8; i += 32)
      {
        if (*(i - 9) < 0)
        {
          operator delete(*(i - 32));
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    v11 = *(a1 + 64);
    v12 = &v11[2 * v10];
    do
    {
      v13 = *v11 + v11[1];
      for (j = ((*v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 32; j <= v13; j += 32)
      {
        if (*(j - 9) < 0)
        {
          operator delete(*(j - 32));
        }
      }

      v11 += 2;
    }

    while (v11 != v12);
  }

  return llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(a1);
}

void std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::Module>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::Expected<llvm::BitcodeFileContents>::~Expected(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *a1;
  if (v2)
  {
    *a1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (v3)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

char *_GLOBAL__sub_I_IRSymtab_cpp()
{
  v0 = llvm::cl::Option::Option(&qword_2815AA0A0, 0, 0);
  byte_2815AA120 = 0;
  qword_2815AA128 = &unk_2883EAB68;
  unk_2815AA130 = 0;
  qword_2815AA0A0 = &unk_2883EAB00;
  qword_2815AA138 = &unk_2883EA848;
  qword_2815AA140 = &unk_2883EAB88;
  qword_2815AA158 = &qword_2815AA140;
  llvm::cl::Option::setArgStr(v0, "disable-bitcode-version-upgrade", 0x1FuLL);
  word_2815AA0AA = word_2815AA0AA & 0xFF9F | 0x20;
  qword_2815AA0C0 = "Disable automatic bitcode upgrade for version mismatch";
  unk_2815AA0C8 = 54;
  llvm::cl::Option::addArgument(&qword_2815AA0A0);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815AA0A0, &dword_274E5C000);
  result = getenv("LLVM_OVERRIDE_PRODUCER");
  if (result)
  {
    v2 = result;
  }

  _MergedGlobals_36 = v2;
  return result;
}

uint64_t llvm::object::MachOObjectFile::MachOObjectFile(uint64_t result, __int128 *a2, int a3, int a4, void *a5, int a6, unsigned int a7)
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v7 = a2[1];
  if (a4)
  {
    v9 = 19;
  }

  else
  {
    v9 = 17;
  }

  if (a4)
  {
    v10 = 20;
  }

  else
  {
    v10 = 18;
  }

  if (a3)
  {
    v10 = v9;
  }

  *(result + 8) = v10;
  *(result + 16) = v8;
  *(result + 32) = v7;
  *result = &unk_2883EEF40;
  *(result + 80) = result + 96;
  *(result + 104) = result + 120;
  *(result + 88) = 0x100000000;
  *(result + 112) = 0x100000000;
  *(result + 128) = result + 144;
  *(result + 208) = result + 224;
  *(result + 136) = 0x400000000;
  *(result + 216) = 0x100000000;
  *(result + 232) = result + 248;
  *(result + 240) = 0x100000000;
  *(result + 352) = 0;
  *(result + 264) = 0u;
  *(result + 280) = 0u;
  *(result + 296) = 0u;
  *(result + 312) = 0u;
  *(result + 328) = 0u;
  *(result + 344) = 0;
  v11 = *(result + 16);
  v12 = *(result + 24);
  if ((v10 - 19) > 1)
  {
    if (v12 > 0x1B)
    {
      if (v12 >= 28)
      {
        v28 = *v11;
        v27 = *(v11 + 4);
        v18 = *(v11 + 8);
        v19 = *(v11 + 24);
        if (v10 == 18)
        {
          v28 = bswap32(v28);
          v27 = bswap32(v27);
          v18 = vrev32q_s8(v18);
          v19 = bswap32(v19);
        }

        v29 = v28 | (v27 << 32);
        v21 = 28;
        v22 = 72;
        *(result + 48) = v29;
        v23 = 68;
        v24 = 64;
        v25 = 60;
        v26 = 56;
        goto LABEL_27;
      }

      v14 = "Structure read out-of-range";
    }

    else
    {
      v14 = "the mach header extends past the end of the file";
    }

    v34[0] = v14;
    v35 = 259;
    malformedError(__s, v34);
  }

  if (v12 <= 0x1F)
  {
    v13 = "the mach header extends past the end of the file";
    goto LABEL_16;
  }

  if (v12 < 32)
  {
    v13 = "Structure read out-of-range";
LABEL_16:
    v34[0] = v13;
    v35 = 259;
    malformedError(__s, v34);
  }

  v16 = *v11;
  v15 = *(v11 + 4);
  v17 = *(v11 + 8);
  v18 = *(v11 + 12);
  v19 = *(v11 + 28);
  if (!a3 && a4)
  {
    v16 = bswap32(v16);
    v15 = bswap32(v15);
    v17 = bswap32(v17);
    v18 = vrev32q_s8(v18);
    v19 = bswap32(v19);
  }

  v20 = v16 | (v15 << 32);
  v21 = 32;
  v22 = 76;
  *(result + 48) = v20;
  *(result + 56) = v17;
  v23 = 72;
  v24 = 68;
  v25 = 64;
  v26 = 60;
LABEL_27:
  *(result + v26) = v18.i32[0];
  *(result + v25) = v18.i32[1];
  *(result + v24) = v18.i32[2];
  *(result + v23) = v18.i32[3];
  *(result + v22) = v19;
  if (!*a5)
  {
    if (v21 + *(result + 68) > *(result + 24))
    {
      v34[0] = "load commands extend past the end of the file";
      v35 = 259;
      malformedError(__s, v34);
    }

    v30 = *(result + 72);
    if (a6)
    {
      if (*(result + 52) != a6)
      {
        *__s = "universal header architecture: ";
        v37 = a7;
        LOWORD(v38) = 2051;
        v34[0] = __s;
        v34[2] = "'s cputype does not match object file's mach header";
        v35 = 770;
        malformedError(v33, v34);
      }
    }

    v32[0] = v32;
    v32[1] = v32;
    v32[2] = 0;
    operator new();
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void malformedError(const llvm::Twine *a1, uint64_t *a2)
{
  v2 = *(a2 + 32);
  if (v2 == 1)
  {
    v5 = "truncated or malformed object (";
    v8[0] = "truncated or malformed object (";
    v9 = 259;
    v3 = 3;
  }

  else
  {
    if (!*(a2 + 32))
    {
      v3 = 0;
      v9 = 256;
      v4 = 1;
      goto LABEL_9;
    }

    v6 = *a2;
    v7 = a2[1];
    v3 = 2;
    if (*(a2 + 33) != 1)
    {
      LOBYTE(v2) = 2;
      v6 = a2;
    }

    v8[0] = "truncated or malformed object (";
    v8[2] = v6;
    v8[3] = v7;
    LOBYTE(v9) = 3;
    HIBYTE(v9) = v2;
    v5 = v8;
  }

  v10 = v5;
  v11 = ")";
  v4 = 3;
LABEL_9:
  v12 = v3;
  v13 = v4;
  operator new();
}

const llvm::Twine *checkLinkeditDataCommand(llvm::Twine *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, const char *a6, void *a7, const char *a8)
{
  if (*(a3 + 12) <= 0xFu)
  {
    v58[0] = "load command ";
    v59 = a4;
    v60 = 2051;
    *&v61 = v58;
    *&v62 = " ";
    LOWORD(v63) = 770;
    if (*a6)
    {
      v10 = &v61;
      *&v64 = &v61;
      *&v65 = a6;
      LOWORD(v66) = 770;
      v11 = 2;
      v12 = &v64;
    }

    else
    {
      v64 = v61;
      v65 = v62;
      v66 = v63;
      v11 = v63;
      v10 = *(&v64 + 1);
      v12 = &v64;
      if (BYTE1(v66) == 1)
      {
        v12 = v64;
      }

      else
      {
        v11 = 2;
      }
    }

    v67[0] = v12;
    v67[1] = v10;
    v68 = " cmdsize too small";
    LOBYTE(v69) = v11;
    HIBYTE(v69) = 3;
    goto LABEL_19;
  }

  if (*a5)
  {
    v14 = *a6;
    if (*a6)
    {
      *&v65 = a6;
      v15 = 3;
      v16 = 2;
    }

    else
    {
      v15 = 1;
      v16 = 3;
    }

    *&v64 = "more than one ";
    LOBYTE(v66) = 3;
    BYTE1(v66) = v15;
    v28 = v14 == 0;
    v22 = &v64;
    if (v28)
    {
      v22 = "more than one ";
    }

    v67[0] = v22;
    v68 = " command";
    LOBYTE(v69) = v16;
    HIBYTE(v69) = 3;
    goto LABEL_19;
  }

  v18 = *a3;
  v20 = *(a2 + 16);
  v19 = *(a2 + 24);
  v21 = *a3 < v20 || *a3 + 16 > v20 + v19;
  if (v21)
  {
    v67[0] = "Structure read out-of-range";
    v69 = 259;
    malformedError(&v64, v67);
  }

  v23 = v18[1];
  v24 = v18[2];
  v25 = v18[3];
  v26 = *(a2 + 8);
  v21 = v26 > 0x14;
  v27 = (1 << v26) & 0x155800;
  v28 = v21 || v27 == 0;
  v29 = bswap32(v23);
  v30 = bswap32(v24);
  v31 = bswap32(v25);
  if (v28)
  {
    v32 = v25;
  }

  else
  {
    v32 = v31;
  }

  if (v28)
  {
    v33 = v24;
  }

  else
  {
    v33 = v30;
  }

  if (v28)
  {
    v34 = v23;
  }

  else
  {
    v34 = v29;
  }

  if (v34 != 16)
  {
    v38 = *a6;
    v39 = " command ";
    if (*a6)
    {
      *&v62 = " command ";
      v40 = 3;
      v41 = 2;
      v39 = a6;
    }

    else
    {
      v40 = 1;
      v41 = 3;
    }

    *&v61 = v39;
    LOBYTE(v63) = 3;
    BYTE1(v63) = v40;
    v28 = v38 == 0;
    v43 = &v61;
    if (v28)
    {
      v43 = v39;
    }

    *&v64 = v43;
    *&v65 = a4;
    LOBYTE(v66) = v41;
    BYTE1(v66) = 8;
    v44 = " has incorrect cmdsize";
    goto LABEL_56;
  }

  if (v19 < v33)
  {
    v35 = *a6;
    if (*a6)
    {
      v59 = a6;
      v36 = 3;
      v37 = 2;
    }

    else
    {
      v36 = 1;
      v37 = 3;
    }

    v58[0] = "dataoff field of ";
    LOBYTE(v60) = 3;
    HIBYTE(v60) = v36;
    v28 = v35 == 0;
    v46 = v58;
    if (v28)
    {
      v46 = "dataoff field of ";
    }

    *&v61 = v46;
    *&v62 = " command ";
    LOBYTE(v63) = v37;
    BYTE1(v63) = 3;
    *&v64 = &v61;
    *&v65 = a4;
    LOWORD(v66) = 2050;
    v44 = " extends past the end of the file";
LABEL_56:
    v67[0] = &v64;
    v68 = v44;
    v69 = 770;
    goto LABEL_19;
  }

  if (v33 + v32 > v19)
  {
    v56 = "dataoff field plus datasize field of ";
    v57 = 259;
    v42 = 1;
    v55 = 1;
    if (*a6)
    {
      v53 = a6;
      v42 = 3;
    }

    v54 = v42;
    llvm::operator+(&v56, &v53, v58);
    v51 = " command ";
    v52 = 259;
    llvm::operator+(v58, &v51, &v61);
    v50 = 264;
    LODWORD(v49[0]) = a4;
    llvm::operator+(&v61, v49, &v64);
    v47 = " extends past the end of the file";
    v48 = 259;
    llvm::operator+(&v64, &v47, v67);
LABEL_19:
    malformedError(a1, v67);
  }

  result = checkOverlappingElement(a1, a7, v33, v32, a8);
  if (!*a1)
  {
    *a5 = *a3;
  }

  return result;
}

const llvm::Twine *checkDyldInfoCommand(llvm::Twine *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, const char *a6, void *a7)
{
  if (*(a3 + 12) <= 0x2Fu)
  {
    v72[0] = "load command ";
    v73 = a4;
    v74 = 2051;
    *&v75 = v72;
    *&v76 = " ";
    LOWORD(v77) = 770;
    if (*a6)
    {
      v9 = &v75;
      *&v78 = &v75;
      *&v79 = a6;
      LOWORD(v80) = 770;
      v10 = 2;
      v11 = &v78;
    }

    else
    {
      v78 = v75;
      v79 = v76;
      v80 = v77;
      v10 = v77;
      v9 = *(&v78 + 1);
      v11 = &v78;
      if (BYTE1(v80) == 1)
      {
        v11 = v78;
      }

      else
      {
        v10 = 2;
      }
    }

    v81[0] = v11;
    v81[1] = v9;
    v82 = " cmdsize too small";
    LOBYTE(v83) = v10;
    HIBYTE(v83) = 3;
    goto LABEL_7;
  }

  if (*a5)
  {
    v81[0] = "more than one LC_DYLD_INFO and or LC_DYLD_INFO_ONLY command";
    v83 = 259;
    goto LABEL_7;
  }

  v14 = *a3;
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  if (*a3 < v15 || *a3 + 48 > v15 + v16)
  {
    v81[0] = "Structure read out-of-range";
    v83 = 259;
    malformedError(&v78, v81);
  }

  v60 = a1;
  v20 = v14[1];
  v19 = v14[2];
  v21 = v14[3];
  v22 = v14[4];
  v23 = v14[5];
  v24 = v14[6];
  v26 = v14[7];
  v25 = v14[8];
  v28 = v14[9];
  v27 = v14[10];
  v29 = v14[11];
  v30 = *(a2 + 8);
  if (v30 <= 0x14)
  {
    v31 = ((1 << v30) & 0x155800) == 0;
    v32 = bswap32(v20);
    v33 = bswap32(v19);
    v34 = bswap32(v21);
    v35 = bswap32(v22);
    v36 = bswap32(v23);
    v37 = bswap32(v24);
    v38 = bswap32(v26);
    v39 = bswap32(v25);
    v40 = bswap32(v28);
    v41 = bswap32(v27);
    v42 = bswap32(v29);
    if (!v31)
    {
      v29 = v42;
      v27 = v41;
      v28 = v40;
      v25 = v39;
      v26 = v38;
      v24 = v37;
      v23 = v36;
      v22 = v35;
      v21 = v34;
      v19 = v33;
      v20 = v32;
    }
  }

  if (v20 != 48)
  {
    v46 = *a6;
    v47 = " command ";
    if (*a6)
    {
      *&v76 = " command ";
      v48 = 3;
      v49 = 2;
      v47 = a6;
    }

    else
    {
      v48 = 1;
      v49 = 3;
    }

    a1 = v60;
    *&v75 = v47;
    LOBYTE(v77) = 3;
    BYTE1(v77) = v48;
    v31 = v46 == 0;
    v52 = &v75;
    if (v31)
    {
      v52 = v47;
    }

    *&v78 = v52;
    *&v79 = a4;
    LOBYTE(v80) = v49;
    BYTE1(v80) = 8;
    v53 = " has incorrect cmdsize";
    goto LABEL_44;
  }

  if (v16 < v19)
  {
    v43 = *a6;
    if (*a6)
    {
      v73 = a6;
      v44 = 3;
      v45 = 2;
    }

    else
    {
      v44 = 1;
      v45 = 3;
    }

    a1 = v60;
    v72[0] = "rebase_off field of ";
    LOBYTE(v74) = 3;
    HIBYTE(v74) = v44;
    v31 = v43 == 0;
    v55 = v72;
    if (v31)
    {
      v55 = "rebase_off field of ";
    }

    *&v75 = v55;
    *&v76 = " command ";
    LOBYTE(v77) = v45;
    BYTE1(v77) = 3;
    *&v78 = &v75;
    *&v79 = a4;
    LOWORD(v80) = 2050;
    v53 = " extends past the end of the file";
LABEL_44:
    v81[0] = &v78;
    v82 = v53;
    v83 = 770;
    goto LABEL_7;
  }

  if (v19 + v21 > v16)
  {
    v50 = "rebase_off field plus rebase_size field of ";
LABEL_30:
    v70 = v50;
    v71 = 259;
    v51 = 1;
    v69 = 1;
    if (*a6)
    {
      v67 = a6;
      v51 = 3;
    }

    v68 = v51;
    llvm::operator+(&v70, &v67, v72);
    v65 = " command ";
    v66 = 259;
    llvm::operator+(v72, &v65, &v75);
    v64 = 264;
    LODWORD(v63[0]) = a4;
    llvm::operator+(&v75, v63, &v78);
    v61 = " extends past the end of the file";
    v62 = 259;
    llvm::operator+(&v78, &v61, v81);
    a1 = v60;
LABEL_7:
    malformedError(a1, v81);
  }

  v58 = v28;
  v59 = v25;
  v56 = v29;
  v57 = v27;
  result = checkOverlappingElement(v60, a7, v19, v21, "dyld rebase info");
  if (!*v60)
  {
    if (v16 < v22)
    {
      v50 = "bind_off field of ";
      goto LABEL_30;
    }

    if (v22 + v23 > v16)
    {
      v50 = "bind_off field plus bind_size field of ";
      goto LABEL_30;
    }

    result = checkOverlappingElement(v60, a7, v22, v23, "dyld bind info");
    if (!*v60)
    {
      if (v16 < v24)
      {
        v50 = "weak_bind_off field of ";
        goto LABEL_30;
      }

      if (v24 + v26 > v16)
      {
        v50 = "weak_bind_off field plus weak_bind_size field of ";
        goto LABEL_30;
      }

      result = checkOverlappingElement(v60, a7, v24, v26, "dyld weak bind info");
      if (!*v60)
      {
        if (v16 < v59)
        {
          v50 = "lazy_bind_off field of ";
          goto LABEL_30;
        }

        if (v59 + v58 > v16)
        {
          v50 = "lazy_bind_off field plus lazy_bind_size field of ";
          goto LABEL_30;
        }

        result = checkOverlappingElement(v60, a7, v59, v58, "dyld lazy bind info");
        if (!*v60)
        {
          if (v16 < v57)
          {
            v50 = "export_off field of ";
            goto LABEL_30;
          }

          if (v57 + v56 > v16)
          {
            v50 = "export_off field plus export_size field of ";
            goto LABEL_30;
          }

          result = checkOverlappingElement(v60, a7, v57, v56, "dyld export info");
          if (!*v60)
          {
            *a5 = *a3;
          }
        }
      }
    }
  }

  return result;
}

const llvm::Twine *checkDylibCommand(const llvm::Twine *result, uint64_t a2, unint64_t *a3, unsigned int a4, _BYTE *a5)
{
  if (*(a3 + 3) <= 0x17u)
  {
    v29[0] = "load command ";
    v30 = a4;
    v31 = 2051;
    *&v32 = v29;
    *&v33 = " ";
    LOWORD(v34) = 770;
    if (*a5)
    {
      v5 = &v32;
      *&v35 = &v32;
      *&v36 = a5;
      LOWORD(v37) = 770;
      v6 = 2;
      v7 = &v35;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v37 = v34;
      v6 = v34;
      v5 = *(&v35 + 1);
      v7 = &v35;
      if (BYTE1(v37) == 1)
      {
        v7 = v35;
      }

      else
      {
        v6 = 2;
      }
    }

    v38 = v7;
    v39 = v5;
    v8 = " cmdsize too small";
    goto LABEL_5;
  }

  v9 = *a3;
  v10 = *(a2 + 16);
  v11 = *a3 < v10 || *a3 + 24 > v10 + *(a2 + 24);
  if (v11)
  {
    v38 = "Structure read out-of-range";
    v41 = 259;
    malformedError(&v35, &v38);
  }

  v12 = *(v9 + 4);
  v13 = *(v9 + 8);
  v14 = *(a2 + 8);
  v11 = v14 > 0x14;
  v15 = (1 << v14) & 0x155800;
  v16 = v11 || v15 == 0;
  v17 = bswap32(v12);
  v18 = bswap32(v13);
  if (!v16)
  {
    v13 = v18;
    v12 = v17;
  }

  if (v13 <= 0x17)
  {
    v29[0] = "load command ";
    v30 = a4;
    v31 = 2051;
    *&v32 = v29;
    *&v33 = " ";
    LOWORD(v34) = 770;
    if (*a5)
    {
      v19 = &v32;
      *&v35 = &v32;
      *&v36 = a5;
      LOWORD(v37) = 770;
      v6 = 2;
      v20 = &v35;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v37 = v34;
      v6 = v34;
      v19 = *(&v35 + 1);
      v20 = &v35;
      if (BYTE1(v37) == 1)
      {
        v20 = v35;
      }

      else
      {
        v6 = 2;
      }
    }

    v38 = v20;
    v39 = v19;
    v8 = " name.offset field too small, not past the end of the dylib_command struct";
    goto LABEL_5;
  }

  v21 = v12 >= v13;
  v22 = v12 - v13;
  if (v22 == 0 || !v21)
  {
    v29[0] = "load command ";
    v30 = a4;
    v31 = 2051;
    *&v32 = v29;
    *&v33 = " ";
    LOWORD(v34) = 770;
    if (*a5)
    {
      v27 = &v32;
      *&v35 = &v32;
      *&v36 = a5;
      LOWORD(v37) = 770;
      v6 = 2;
      v28 = &v35;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v37 = v34;
      v6 = v34;
      v27 = *(&v35 + 1);
      v28 = &v35;
      if (BYTE1(v37) == 1)
      {
        v28 = v35;
      }

      else
      {
        v6 = 2;
      }
    }

    v38 = v28;
    v39 = v27;
    v8 = " name.offset field extends past the end of the load command";
    goto LABEL_5;
  }

  v23 = (v9 + v13);
  while (*v23++)
  {
    if (!--v22)
    {
      v29[0] = "load command ";
      v30 = a4;
      v31 = 2051;
      *&v32 = v29;
      *&v33 = " ";
      LOWORD(v34) = 770;
      if (*a5)
      {
        v25 = &v32;
        *&v35 = &v32;
        *&v36 = a5;
        LOWORD(v37) = 770;
        v6 = 2;
        v26 = &v35;
      }

      else
      {
        v35 = v32;
        v36 = v33;
        v37 = v34;
        v6 = v34;
        v25 = *(&v35 + 1);
        v26 = &v35;
        if (BYTE1(v37) == 1)
        {
          v26 = v35;
        }

        else
        {
          v6 = 2;
        }
      }

      v38 = v26;
      v39 = v25;
      v8 = " library name extends past the end of the load command";
LABEL_5:
      v40 = v8;
      LOBYTE(v41) = v6;
      HIBYTE(v41) = 3;
      malformedError(result, &v38);
    }
  }

  *result = 0;
  return result;
}

const llvm::Twine *checkDyldCommand(const llvm::Twine *result, uint64_t a2, unint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6)
{
  if (a4 <= 0xB)
  {
    v29[0] = "load command ";
    v30 = a5;
    v31 = 2051;
    *&v32 = v29;
    *&v33 = " ";
    LOWORD(v34) = 770;
    if (*a6)
    {
      v6 = &v32;
      *&v35 = &v32;
      *&v36 = a6;
      LOWORD(v37) = 770;
      v7 = 2;
      v8 = &v35;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v37 = v34;
      v7 = v34;
      v6 = *(&v35 + 1);
      v8 = &v35;
      if (BYTE1(v37) == 1)
      {
        v8 = v35;
      }

      else
      {
        v7 = 2;
      }
    }

    v38 = v8;
    v39 = v6;
    v9 = " cmdsize too small";
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  v11 = v10 > a3 || a3 + 12 > v10 + *(a2 + 24);
  if (v11)
  {
    v38 = "Structure read out-of-range";
    v41 = 259;
    goto LABEL_12;
  }

  v12 = *(a3 + 4);
  v13 = *(a3 + 8);
  v14 = *(a2 + 8);
  v11 = v14 > 0x14;
  v15 = (1 << v14) & 0x155800;
  v16 = v11 || v15 == 0;
  v17 = bswap32(v12);
  v18 = bswap32(v13);
  if (!v16)
  {
    v13 = v18;
    v12 = v17;
  }

  if (v13 <= 0xB)
  {
    v29[0] = "load command ";
    v30 = a5;
    v31 = 2051;
    *&v32 = v29;
    *&v33 = " ";
    LOWORD(v34) = 770;
    if (*a6)
    {
      v19 = &v32;
      *&v35 = &v32;
      *&v36 = a6;
      LOWORD(v37) = 770;
      v7 = 2;
      v20 = &v35;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v37 = v34;
      v7 = v34;
      v19 = *(&v35 + 1);
      v20 = &v35;
      if (BYTE1(v37) == 1)
      {
        v20 = v35;
      }

      else
      {
        v7 = 2;
      }
    }

    v38 = v20;
    v39 = v19;
    v9 = " name.offset field too small, not past the end of the dylinker_command struct";
    goto LABEL_5;
  }

  v21 = v12 >= v13;
  v22 = v12 - v13;
  if (v22 == 0 || !v21)
  {
    v29[0] = "load command ";
    v30 = a5;
    v31 = 2051;
    *&v32 = v29;
    *&v33 = " ";
    LOWORD(v34) = 770;
    if (*a6)
    {
      v27 = &v32;
      *&v35 = &v32;
      *&v36 = a6;
      LOWORD(v37) = 770;
      v7 = 2;
      v28 = &v35;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v37 = v34;
      v7 = v34;
      v27 = *(&v35 + 1);
      v28 = &v35;
      if (BYTE1(v37) == 1)
      {
        v28 = v35;
      }

      else
      {
        v7 = 2;
      }
    }

    v38 = v28;
    v39 = v27;
    v9 = " name.offset field extends past the end of the load command";
    goto LABEL_5;
  }

  v23 = (a3 + v13);
  while (*v23++)
  {
    if (!--v22)
    {
      v29[0] = "load command ";
      v30 = a5;
      v31 = 2051;
      *&v32 = v29;
      *&v33 = " ";
      LOWORD(v34) = 770;
      if (*a6)
      {
        v25 = &v32;
        *&v35 = &v32;
        *&v36 = a6;
        LOWORD(v37) = 770;
        v7 = 2;
        v26 = &v35;
      }

      else
      {
        v35 = v32;
        v36 = v33;
        v37 = v34;
        v7 = v34;
        v25 = *(&v35 + 1);
        v26 = &v35;
        if (BYTE1(v37) == 1)
        {
          v26 = v35;
        }

        else
        {
          v7 = 2;
        }
      }

      v38 = v26;
      v39 = v25;
      v9 = " dyld name extends past the end of the load command";
LABEL_5:
      v40 = v9;
      LOBYTE(v41) = v7;
      HIBYTE(v41) = 3;
LABEL_12:
      malformedError(result, &v38);
    }
  }

  *result = 0;
  return result;
}

const llvm::Twine *checkVersCommand(const llvm::Twine *result, uint64_t a2, int a3, unsigned int a4, void *a5, _BYTE *a6)
{
  if (a3 != 16)
  {
    v9[0] = "load command ";
    v9[2] = a4;
    v10 = 2051;
    *&v11 = v9;
    *&v12 = " ";
    LOWORD(v13) = 770;
    if (*a6)
    {
      v6 = &v11;
      *&v14 = &v11;
      *&v15 = a6;
      LOWORD(v16) = 770;
      v7 = 2;
      v8 = &v14;
    }

    else
    {
      v14 = v11;
      v15 = v12;
      v16 = v13;
      v7 = v13;
      v6 = *(&v11 + 1);
      v8 = &v14;
      if (BYTE1(v13) == 1)
      {
        v8 = v14;
      }

      else
      {
        v7 = 2;
      }
    }

    v17[0] = v8;
    v17[1] = v6;
    v17[2] = " has incorrect cmdsize";
    LOBYTE(v18) = v7;
    HIBYTE(v18) = 3;
LABEL_7:
    malformedError(result, v17);
  }

  if (*a5)
  {
    v17[0] = "more than one LC_VERSION_MIN_MACOSX, LC_VERSION_MIN_IPHONEOS, LC_VERSION_MIN_TVOS or LC_VERSION_MIN_WATCHOS command";
    v18 = 259;
    goto LABEL_7;
  }

  *a5 = a2;
  *result = 0;
  return result;
}

int8x16_t getStruct<llvm::MachO::encryption_info_command>(int8x16_t *a1, uint64_t a2, int8x16_t *a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || a3[1].u64 + 4 > v3 + *(a2 + 24);
  if (v4)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1);
  }

  result = *a3;
  *a1 = *a3;
  a1[1].i32[0] = a3[1].i32[0];
  v6 = *(a2 + 8);
  v4 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  if (!v4 && v7 != 0)
  {
    result = vrev32q_s8(*a1);
    *a1 = result;
    a1[1].i32[0] = bswap32(a1[1].u32[0]);
  }

  return result;
}

const llvm::Twine *checkEncryptCommand(const llvm::Twine *result, unint64_t a2, uint64_t a3, unsigned int a4, unint64_t a5, uint64_t a6, void *a7, _BYTE *a8)
{
  if (*a7)
  {
    v24[0] = "more than one LC_ENCRYPTION_INFO and or LC_ENCRYPTION_INFO_64 command";
    v8 = 259;
    goto LABEL_17;
  }

  if (a2 < a5)
  {
    v9 = *a8;
    if (*a8)
    {
      v16 = a8;
      v10 = 3;
      v11 = 2;
    }

    else
    {
      v10 = 1;
      v11 = 3;
    }

    v12 = "cryptoff field of ";
LABEL_14:
    v15 = v12;
    v17 = 3;
    v18 = v10;
    v13 = v9 == 0;
    v14 = &v15;
    if (v13)
    {
      v14 = v12;
    }

    v19[0] = v14;
    v19[2] = " command ";
    v20 = v11;
    v21 = 3;
    v22[0] = v19;
    v22[2] = a4;
    v23 = 2050;
    v24[0] = v22;
    v24[2] = " extends past the end of the file";
    v8 = 770;
LABEL_17:
    v25 = v8;
    malformedError(result, v24);
  }

  if (a6 + a5 > a2)
  {
    v9 = *a8;
    if (*a8)
    {
      v16 = a8;
      v10 = 3;
      v11 = 2;
    }

    else
    {
      v10 = 1;
      v11 = 3;
    }

    v12 = "cryptoff field plus cryptsize field of ";
    goto LABEL_14;
  }

  *a7 = a3;
  *result = 0;
  return result;
}

double getStruct<llvm::MachO::encryption_info_command_64>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || a3 + 24 > v3 + *(a2 + 24);
  if (v4)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1);
  }

  v5 = *a3;
  *a1 = *a3;
  *(a1 + 16) = *(a3 + 2);
  v6 = *(a2 + 8);
  v4 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  if (!v4 && v7 != 0)
  {
    *a1 = vrev32q_s8(*a1);
    *&v5 = vrev32_s8(*(a1 + 16));
    *(a1 + 16) = v5;
  }

  return *&v5;
}

const llvm::Twine *checkLinkerOptCommand(const llvm::Twine *result, uint64_t a2, unint64_t a3, unsigned int a4, unsigned int a5)
{
  v6 = result;
  if (a4 <= 0xB)
  {
    v33[0] = "load command ";
    v34 = a5;
    v35 = 2051;
    v36 = v33;
    v37 = " LC_LINKER_OPTION cmdsize too small";
    v7 = 770;
    goto LABEL_6;
  }

  v8 = *(a2 + 16);
  if (v8 > a3 || (v9 = (a3 + 12), a3 + 12 > v8 + *(a2 + 24)))
  {
    v36 = "Structure read out-of-range";
    v7 = 259;
    goto LABEL_6;
  }

  v10 = *(a3 + 4);
  v11 = *(a3 + 8);
  v12 = *(a2 + 8);
  v13 = v12 > 0x14;
  v14 = (1 << v12) & 0x155800;
  v15 = v13 || v14 == 0;
  v16 = bswap32(v10);
  v17 = bswap32(v11);
  if (v15)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  if (!v15)
  {
    v10 = v16;
  }

  LODWORD(v19) = 0;
  v20 = v10 - 12;
  if (v10 != 12)
  {
    while (1)
    {
      if (!*v9)
      {
        do
        {
          v21 = v20;
          v22 = *++v9;
          --v20;
          if (v22)
          {
            v23 = 1;
          }

          else
          {
            v23 = v21 == 1;
          }
        }

        while (!v23);
        if (v21 == 1)
        {
          goto LABEL_28;
        }
      }

      v19 = (v19 + 1);
      result = memchr(v9, 0, v20);
      if (!result)
      {
        break;
      }

      v24 = result - v9;
      if (result - v9 == -1)
      {
        break;
      }

      if (v20 < v24)
      {
        v24 = v20;
      }

      v25 = v24 + 1;
      v9 += v25;
      v20 -= v25;
      if (!v20)
      {
        goto LABEL_28;
      }
    }

    v27[0] = "load command ";
    v28 = a5;
    v29 = 2051;
    v30[0] = v27;
    v31 = " LC_LINKER_OPTION string #";
    v7 = 770;
    v32 = 770;
    v33[0] = v30;
    v34 = v19;
    v35 = 2050;
    v26 = " is not NULL terminated";
    goto LABEL_32;
  }

LABEL_28:
  if (v18 != v19)
  {
    v27[0] = "load command ";
    v28 = a5;
    v29 = 2051;
    v30[0] = v27;
    v31 = " LC_LINKER_OPTION string count ";
    v7 = 770;
    v32 = 770;
    v33[0] = v30;
    v34 = v18;
    v35 = 2050;
    v26 = " does not match number of strings";
LABEL_32:
    v36 = v33;
    v37 = v26;
LABEL_6:
    v38 = v7;
    malformedError(v6, &v36);
  }

  *v6 = 0;
  return result;
}

uint64_t getStruct<llvm::MachO::sub_framework_command>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = v2 > a2 || a2 + 12 > v2 + *(a1 + 24);
  if (v3)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1);
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  v3 = v5 > 0x14;
  v6 = (1 << v5) & 0x155800;
  v7 = v3 || v6 == 0;
  v8 = bswap32(v4);
  if (v7)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

const llvm::Twine *checkSubCommand(const llvm::Twine *result, uint64_t a2, unsigned int a3, unsigned int a4, _BYTE *a5, _BYTE *a6, unsigned int a7, _BYTE *a8)
{
  if (a7 <= 0xB)
  {
    v29[0] = "load command ";
    v29[2] = a4;
    v30 = 2051;
    v8 = " ";
    *&v31 = v29;
    *&v32 = " ";
    LOWORD(v33) = 770;
    if (*a5)
    {
      v9 = &v31;
      *&v34 = &v31;
      *&v35 = a5;
      LOWORD(v36) = 770;
      v10 = 2;
      v11 = &v34;
    }

    else
    {
      v34 = v31;
      v35 = v32;
      v36 = v33;
      v10 = v33;
      if (v33 == 1)
      {
        *&v37 = " ";
        LOWORD(v39) = 259;
        if (*a8)
        {
          v12 = 3;
          goto LABEL_6;
        }

LABEL_30:
        v40 = v37;
        v41 = v38;
        v42 = v39;
        v12 = v39;
        goto LABEL_31;
      }

      v9 = *(&v34 + 1);
      v11 = &v34;
      if (BYTE1(v36) == 1)
      {
        v11 = v34;
      }

      else
      {
        v10 = 2;
      }
    }

    *&v37 = v11;
    *(&v37 + 1) = v9;
    *&v38 = " ";
    LOBYTE(v39) = v10;
    BYTE1(v39) = 3;
    if (*a8)
    {
      v12 = 2;
      v8 = &v37;
LABEL_6:
      *&v40 = v8;
      *&v41 = a8;
      LOBYTE(v42) = v12;
      BYTE1(v42) = 3;
LABEL_31:
      v25 = v40;
      if (BYTE1(v42) != 1)
      {
        v12 = 2;
        v25 = &v40;
      }

      *&v43 = v25;
      *(&v43 + 1) = *(&v40 + 1);
      *&v44 = ".offset field too small, not past the end of the ";
      LOBYTE(v45) = v12;
      BYTE1(v45) = 3;
      if (*a6)
      {
        *&v46 = &v43;
        *&v47 = a6;
        LOBYTE(v48) = 2;
        goto LABEL_58;
      }

      v46 = v43;
      v47 = v44;
      v48 = v45;
LABEL_59:
      malformedError(result, &v46);
    }

    goto LABEL_30;
  }

  v13 = a3 - a7;
  if (a3 <= a7)
  {
    *&v31 = "load command ";
    *&v32 = a4;
    LOWORD(v33) = 2051;
    v21 = " ";
    *&v34 = &v31;
    *&v35 = " ";
    LOWORD(v36) = 770;
    if (*a5)
    {
      v22 = &v34;
      *&v37 = &v34;
      *&v38 = a5;
      LOWORD(v39) = 770;
      v23 = 2;
      v24 = &v37;
    }

    else
    {
      v37 = v34;
      v38 = v35;
      v39 = v36;
      v23 = v36;
      if (v36 == 1)
      {
        *&v40 = " ";
        LOWORD(v42) = 259;
        if (*a8)
        {
          v20 = 3;
          goto LABEL_20;
        }

LABEL_43:
        v43 = v40;
        v44 = v41;
        v45 = v42;
        v20 = v42;
        goto LABEL_44;
      }

      v22 = *(&v37 + 1);
      v24 = &v37;
      if (BYTE1(v39) == 1)
      {
        v24 = v37;
      }

      else
      {
        v23 = 2;
      }
    }

    *&v40 = v24;
    *(&v40 + 1) = v22;
    *&v41 = " ";
    LOBYTE(v42) = v23;
    BYTE1(v42) = 3;
    if (*a8)
    {
      v20 = 2;
      v21 = &v40;
LABEL_20:
      *&v43 = v21;
      *&v44 = a8;
      LOBYTE(v45) = v20;
      BYTE1(v45) = 3;
LABEL_44:
      if (BYTE1(v45) != 1)
      {
        v20 = 2;
      }

      v26 = &v43;
      if (BYTE1(v45) == 1)
      {
        v26 = v43;
      }

      *&v46 = v26;
      *(&v46 + 1) = *(&v43 + 1);
      v27 = ".offset field extends past the end of the load command";
      goto LABEL_57;
    }

    goto LABEL_43;
  }

  v14 = (a2 + a7);
  while (*v14++)
  {
    if (!--v13)
    {
      *&v31 = "load command ";
      *&v32 = a4;
      LOWORD(v33) = 2051;
      v16 = " ";
      *&v34 = &v31;
      *&v35 = " ";
      LOWORD(v36) = 770;
      if (*a5)
      {
        v17 = &v34;
        *&v37 = &v34;
        *&v38 = a5;
        LOWORD(v39) = 770;
        v18 = 2;
        v19 = &v37;
        goto LABEL_13;
      }

      v37 = v34;
      v38 = v35;
      v39 = v36;
      v18 = v36;
      if (v36 == 1)
      {
        *&v40 = " ";
        LOWORD(v42) = 259;
        if (!*a8)
        {
          goto LABEL_51;
        }

        v20 = 3;
LABEL_15:
        *&v43 = v16;
        *&v44 = a8;
        LOBYTE(v45) = v20;
        BYTE1(v45) = 3;
      }

      else
      {
        v17 = *(&v37 + 1);
        v19 = &v37;
        if (BYTE1(v39) == 1)
        {
          v19 = v37;
        }

        else
        {
          v18 = 2;
        }

LABEL_13:
        *&v40 = v19;
        *(&v40 + 1) = v17;
        *&v41 = " ";
        LOBYTE(v42) = v18;
        BYTE1(v42) = 3;
        if (*a8)
        {
          v20 = 2;
          v16 = &v40;
          goto LABEL_15;
        }

LABEL_51:
        v43 = v40;
        v44 = v41;
        v45 = v42;
        v20 = v42;
      }

      if (BYTE1(v45) != 1)
      {
        v20 = 2;
      }

      v28 = &v43;
      if (BYTE1(v45) == 1)
      {
        v28 = v43;
      }

      *&v46 = v28;
      *(&v46 + 1) = *(&v43 + 1);
      v27 = " name extends past the end of the load command";
LABEL_57:
      *&v47 = v27;
      LOBYTE(v48) = v20;
LABEL_58:
      BYTE1(v48) = 3;
      goto LABEL_59;
    }
  }

  *result = 0;
  return result;
}

unint64_t checkThreadCommand(llvm::Twine *a1, uint64_t a2, unint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6)
{
  if (a4 <= 7)
  {
    *&v68 = "load command ";
    *&v69 = a5;
    LOWORD(v70) = 2051;
    v8 = *a6;
    if (*a6)
    {
      *&v71 = &v68;
      *&v72 = a6;
      LOWORD(v73) = 770;
      v9 = 2;
      v10 = &v71;
    }

    else
    {
      v71 = v68;
      v72 = v69;
      v73 = v70;
      v9 = v70;
      v8 = *(&v71 + 1);
      v10 = &v71;
      if (BYTE1(v73) == 1)
      {
        v10 = v71;
      }

      else
      {
        v9 = 2;
      }
    }

    v74 = v10;
    v75 = v8;
    v11 = " cmdsize too small";
    goto LABEL_5;
  }

  v12 = *(a2 + 16);
  if (v12 > a3 || (v13 = (a3 + 8), a3 + 8 > v12 + *(a2 + 24)))
  {
    v74 = "Structure read out-of-range";
    v77 = 259;
    goto LABEL_9;
  }

  v14 = *(a3 + 4);
  v15 = *(a2 + 8);
  v16 = v15 > 0x14 || ((1 << v15) & 0x155800) == 0;
  v17 = bswap32(v14);
  if (v16)
  {
    result = v14;
  }

  else
  {
    result = v17;
  }

  if (result >= 9)
  {
    v19 = 0;
    v20 = *(a2 + 52);
    result = a3 + result;
    do
    {
      if ((v13 + 1) > result)
      {
        v65[0] = "load command ";
        v66 = a5;
        v67 = 2051;
        v25 = "flavor in ";
LABEL_85:
        *&v68 = v65;
        *&v69 = v25;
        v26 = 770;
        LOWORD(v70) = 770;
        if (*a6)
        {
          *&v71 = &v68;
          *&v72 = a6;
          LOWORD(v73) = 770;
          v9 = 2;
          v27 = &v71;
        }

        else
        {
          v71 = v68;
          v72 = v69;
          v73 = v70;
          v9 = v70;
          v26 = *(&v71 + 1);
          v27 = &v71;
          if (BYTE1(v73) == 1)
          {
            v27 = v71;
          }

          else
          {
            v9 = 2;
          }
        }

        v74 = v27;
        v75 = v26;
        v11 = " extends past end of command";
        goto LABEL_5;
      }

      LODWORD(v21) = *v13;
      v22 = bswap32(*v13);
      if (((1 << v15) & 0x155800) == 0)
      {
        v22 = *v13;
      }

      if (v15 <= 0x14)
      {
        v21 = v22;
      }

      else
      {
        v21 = v21;
      }

      if ((v13 + 2) > result)
      {
        v65[0] = "load command ";
        v66 = a5;
        v67 = 2051;
        v25 = " count in ";
        goto LABEL_85;
      }

      v23 = v13[1];
      v24 = bswap32(v23);
      if (((1 << v15) & 0x155800) == 0)
      {
        v24 = v13[1];
      }

      if (v15 <= 0x14)
      {
        v23 = v24;
      }

      if (v20 > 16777222)
      {
        if (v20 == 16777223)
        {
          if (v21 <= 6)
          {
            if (v21 == 4)
            {
              if (v23 != 42)
              {
                v56[0] = "load command ";
                v58 = 259;
                v55 = 264;
                LODWORD(v53[0]) = a5;
                llvm::operator+(v56, v53, v59);
                v51[0] = " count not x86_THREAD_STATE64_COUNT for flavor number ";
                v52 = 259;
                llvm::operator+(v59, v51, v62);
                v50 = 264;
                LODWORD(v49[0]) = v19;
                llvm::operator+(v62, v49, v65);
                v37 = " which is a x86_THREAD_STATE64 flavor in ";
LABEL_121:
                v47 = v37;
                v48 = 259;
                llvm::operator+(v65, &v47, &v68);
                v38 = 1;
                v46 = 1;
                if (*a6)
                {
                  v44[0] = a6;
                  v38 = 3;
                }

                v45 = v38;
                llvm::operator+(&v68, v44, &v71);
                v42 = " command";
                v43 = 259;
                v39 = &v42;
                goto LABEL_127;
              }

              v13 += 44;
              if (v13 > result)
              {
                v62[0] = "load command ";
                v64 = 259;
                v61 = 264;
                LODWORD(v59[0]) = a5;
                llvm::operator+(v62, v59, v65);
                v40 = " x86_THREAD_STATE64 extends past end of command in ";
                goto LABEL_124;
              }
            }

            else
            {
              if (v21 != 6)
              {
                goto LABEL_89;
              }

              if (v23 != 4)
              {
                v56[0] = "load command ";
                v58 = 259;
                v55 = 264;
                LODWORD(v53[0]) = a5;
                llvm::operator+(v56, v53, v59);
                v51[0] = " count not x86_EXCEPTION_STATE64_COUNT for flavor number ";
                v52 = 259;
                llvm::operator+(v59, v51, v62);
                v50 = 264;
                LODWORD(v49[0]) = v19;
                llvm::operator+(v62, v49, v65);
                v37 = " which is a x86_EXCEPTION_STATE64 flavor in ";
                goto LABEL_121;
              }

              v13 += 6;
              if (v13 > result)
              {
                v62[0] = "load command ";
                v64 = 259;
                v61 = 264;
                LODWORD(v59[0]) = a5;
                llvm::operator+(v62, v59, v65);
                v40 = " x86_EXCEPTION_STATE64 extends past end of command in ";
                goto LABEL_124;
              }
            }
          }

          else
          {
            switch(v21)
            {
              case 9:
                if (v23 != 6)
                {
                  v56[0] = "load command ";
                  v58 = 259;
                  v55 = 264;
                  LODWORD(v53[0]) = a5;
                  llvm::operator+(v56, v53, v59);
                  v51[0] = " count not x86_EXCEPTION_STATE_COUNT for flavor number ";
                  v52 = 259;
                  llvm::operator+(v59, v51, v62);
                  v50 = 264;
                  LODWORD(v49[0]) = v19;
                  llvm::operator+(v62, v49, v65);
                  v37 = " which is a x86_EXCEPTION_STATE flavor in ";
                  goto LABEL_121;
                }

                v13 += 8;
                if (v13 > result)
                {
                  v62[0] = "load command ";
                  v64 = 259;
                  v61 = 264;
                  LODWORD(v59[0]) = a5;
                  llvm::operator+(v62, v59, v65);
                  v40 = " x86_EXCEPTION_STATE extends past end of command in ";
LABEL_124:
                  v56[0] = v40;
                  v58 = 259;
                  llvm::operator+(v65, v56, &v68);
                  v41 = 1;
                  HIBYTE(v55) = 1;
                  if (*a6)
                  {
                    v53[0] = a6;
                    v41 = 3;
                  }

                  LOBYTE(v55) = v41;
                  llvm::operator+(&v68, v53, &v71);
                  v51[0] = " command";
                  v52 = 259;
                  v39 = v51;
LABEL_127:
                  llvm::operator+(&v71, v39, &v74);
                  goto LABEL_9;
                }

                break;
              case 8:
                if (v23 != 133)
                {
                  v56[0] = "load command ";
                  v58 = 259;
                  v55 = 264;
                  LODWORD(v53[0]) = a5;
                  llvm::operator+(v56, v53, v59);
                  v51[0] = " count not x86_FLOAT_STATE_COUNT for flavor number ";
                  v52 = 259;
                  llvm::operator+(v59, v51, v62);
                  v50 = 264;
                  LODWORD(v49[0]) = v19;
                  llvm::operator+(v62, v49, v65);
                  v37 = " which is a x86_FLOAT_STATE flavor in ";
                  goto LABEL_121;
                }

                v13 += 135;
                if (v13 > result)
                {
                  v62[0] = "load command ";
                  v64 = 259;
                  v61 = 264;
                  LODWORD(v59[0]) = a5;
                  llvm::operator+(v62, v59, v65);
                  v40 = " x86_FLOAT_STATE extends past end of command in ";
                  goto LABEL_124;
                }

                break;
              case 7:
                if (v23 != 44)
                {
                  v56[0] = "load command ";
                  v58 = 259;
                  v55 = 264;
                  LODWORD(v53[0]) = a5;
                  llvm::operator+(v56, v53, v59);
                  v51[0] = " count not x86_THREAD_STATE_COUNT for flavor number ";
                  v52 = 259;
                  llvm::operator+(v59, v51, v62);
                  v50 = 264;
                  LODWORD(v49[0]) = v19;
                  llvm::operator+(v62, v49, v65);
                  v37 = " which is a x86_THREAD_STATE flavor in ";
                  goto LABEL_121;
                }

                v13 += 46;
                if (v13 > result)
                {
                  v62[0] = "load command ";
                  v64 = 259;
                  v61 = 264;
                  LODWORD(v59[0]) = a5;
                  llvm::operator+(v62, v59, v65);
                  v40 = " x86_THREAD_STATE extends past end of command in ";
                  goto LABEL_124;
                }

                break;
              default:
                goto LABEL_89;
            }
          }
        }

        else
        {
          if (v20 != 16777228 && v20 != 33554444)
          {
LABEL_93:
            v59[0] = "unknown cputype (";
            v60 = v20;
            v61 = 2051;
            v62[0] = v59;
            v63 = ") load command ";
            v29 = 770;
            v64 = 770;
            v65[0] = v62;
            v66 = a5;
            v67 = 2050;
            *&v68 = v65;
            *&v69 = " for ";
            LOWORD(v70) = 770;
            if (*a6)
            {
              *&v71 = &v68;
              *&v72 = a6;
              LOWORD(v73) = 770;
              v9 = 2;
              v30 = &v71;
            }

            else
            {
              v71 = v68;
              v72 = v69;
              v73 = v70;
              v9 = v70;
              v29 = *(&v71 + 1);
              v30 = &v71;
              if (BYTE1(v73) == 1)
              {
                v30 = v71;
              }

              else
              {
                v9 = 2;
              }
            }

            v74 = v30;
            v75 = v29;
            v11 = " command can't be checked";
            goto LABEL_5;
          }

          if (v21 == 7)
          {
            if (v23 != 4)
            {
              v59[0] = "load command ";
              v60 = a5;
              v61 = 2051;
              v62[0] = v59;
              v63 = " count not ARM_EXCEPTION_STATE64_COUNT for flavor number ";
              v32 = 770;
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v28 = " which is a ARM_EXCEPTION_STATE64 flavor in ";
              goto LABEL_101;
            }

            v13 += 6;
            if (v13 > result)
            {
              v65[0] = "load command ";
              v66 = a5;
              v67 = 2051;
              v35 = " ARM_EXCEPTION_STATE64 extends past end of command in ";
LABEL_107:
              *&v68 = v65;
              *&v69 = v35;
              v32 = 770;
LABEL_108:
              LOWORD(v70) = 770;
              if (*a6)
              {
LABEL_109:
                *&v71 = &v68;
                *&v72 = a6;
                LOWORD(v73) = 770;
                v9 = 2;
                v36 = &v71;
                goto LABEL_110;
              }

              v71 = v68;
              v72 = v69;
              v73 = v70;
              v9 = v70;
              v32 = *(&v68 + 1);
              v34 = v68;
              v33 = BYTE1(v70);
LABEL_112:
              v16 = v33 == 1;
              v36 = &v71;
              if (v16)
              {
                v36 = v34;
              }

              else
              {
                v9 = 2;
              }

LABEL_110:
              v74 = v36;
              v75 = v32;
              v11 = " command";
LABEL_5:
              v76 = v11;
              LOBYTE(v77) = v9;
              HIBYTE(v77) = 3;
LABEL_9:
              malformedError(a1, &v74);
            }
          }

          else
          {
            if (v21 != 6)
            {
              goto LABEL_89;
            }

            if (v23 != 68)
            {
              v59[0] = "load command ";
              v60 = a5;
              v61 = 2051;
              v62[0] = v59;
              v63 = " count not ARM_THREAD_STATE64_COUNT for flavor number ";
              v32 = 770;
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v28 = " which is a ARM_THREAD_STATE64 flavor in ";
              goto LABEL_101;
            }

            v13 += 70;
            if (v13 > result)
            {
              v65[0] = "load command ";
              v66 = a5;
              v67 = 2051;
              v35 = " ARM_THREAD_STATE64 extends past end of command in ";
              goto LABEL_107;
            }
          }
        }
      }

      else
      {
        switch(v20)
        {
          case 7:
            if (v21 != 1)
            {
              v53[0] = "load command ";
              v54 = a5;
              v55 = 2051;
              v56[0] = v53;
              v57 = " unknown flavor (";
              v32 = 770;
              v58 = 770;
              v59[0] = v56;
              v60 = v21;
              v61 = 2050;
              v62[0] = v59;
              v63 = ") for flavor number ";
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v31 = " in ";
LABEL_103:
              *&v68 = v65;
              *&v69 = v31;
              goto LABEL_105;
            }

            if (v23 != 16)
            {
              v59[0] = "load command ";
              v60 = a5;
              v61 = 2051;
              v62[0] = v59;
              v63 = " count not x86_THREAD_STATE32_COUNT for flavor number ";
              v32 = 770;
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v31 = " which is a x86_THREAD_STATE32 flavor in ";
              goto LABEL_103;
            }

            v13 += 18;
            if (v13 > result)
            {
              v65[0] = "load command ";
              v66 = a5;
              v67 = 2051;
              *&v68 = v65;
              *&v69 = " x86_THREAD_STATE32 extends past end of command in ";
              v32 = 770;
LABEL_105:
              LOWORD(v70) = 770;
              if (*a6)
              {
                goto LABEL_109;
              }

              v71 = v68;
              v72 = v69;
              v73 = v70;
              v9 = v70;
              v33 = BYTE1(v70);
              v32 = *(&v68 + 1);
              v34 = v68;
              goto LABEL_112;
            }

            break;
          case 0xC:
            if (v21 != 1)
            {
              goto LABEL_89;
            }

            if (v23 != 17)
            {
              v59[0] = "load command ";
              v60 = a5;
              v61 = 2051;
              v62[0] = v59;
              v63 = " count not ARM_THREAD_STATE_COUNT for flavor number ";
              v32 = 770;
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v28 = " which is a ARM_THREAD_STATE flavor in ";
LABEL_101:
              *&v68 = v65;
              *&v69 = v28;
              goto LABEL_108;
            }

            v13 += 19;
            if (v13 > result)
            {
              v65[0] = "load command ";
              v66 = a5;
              v67 = 2051;
              v35 = " ARM_THREAD_STATE extends past end of command in ";
              goto LABEL_107;
            }

            break;
          case 0x12:
            if (v21 != 1)
            {
LABEL_89:
              v53[0] = "load command ";
              v54 = a5;
              v55 = 2051;
              v56[0] = v53;
              v57 = " unknown flavor (";
              v32 = 770;
              v58 = 770;
              v59[0] = v56;
              v60 = v21;
              v61 = 2050;
              v62[0] = v59;
              v63 = ") for flavor number ";
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v28 = " in ";
              goto LABEL_101;
            }

            if (v23 != 40)
            {
              v59[0] = "load command ";
              v60 = a5;
              v61 = 2051;
              v62[0] = v59;
              v63 = " count not PPC_THREAD_STATE_COUNT for flavor number ";
              v32 = 770;
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v28 = " which is a PPC_THREAD_STATE flavor in ";
              goto LABEL_101;
            }

            v13 += 42;
            if (v13 > result)
            {
              v65[0] = "load command ";
              v66 = a5;
              v67 = 2051;
              v35 = " PPC_THREAD_STATE extends past end of command in ";
              goto LABEL_107;
            }

            break;
          default:
            goto LABEL_93;
        }
      }

      ++v19;
    }

    while (v13 < result);
  }

  *a1 = 0;
  return result;
}

const llvm::Twine *checkTwoLevelHintsCommand(llvm::Twine *a1, uint64_t a2, unint64_t *a3, unsigned int a4, unint64_t *a5, void *a6)
{
  if (*(a3 + 3) != 16)
  {
    v26 = "load command ";
    v27 = a4;
    v28 = 2051;
    v9 = " LC_TWOLEVEL_HINTS has incorrect cmdsize";
LABEL_5:
    v29[0] = &v26;
    v29[2] = v9;
    v10 = 770;
    goto LABEL_13;
  }

  if (*a5)
  {
    v8 = "more than one LC_TWOLEVEL_HINTS command";
LABEL_12:
    v29[0] = v8;
    v10 = 259;
LABEL_13:
    v30 = v10;
    malformedError(a1, v29);
  }

  v12 = *a3;
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *a3 < v14 || *a3 + 16 > v14 + v13;
  if (v15)
  {
    v8 = "Structure read out-of-range";
    goto LABEL_12;
  }

  v17 = *(v12 + 8);
  v16 = *(v12 + 12);
  v18 = *(a2 + 8);
  v15 = v18 > 0x14;
  v19 = (1 << v18) & 0x155800;
  v20 = v15 || v19 == 0;
  v21 = bswap32(v17);
  v22 = bswap32(v16);
  if (v20)
  {
    v23 = v17;
  }

  else
  {
    v16 = v22;
    v23 = v21;
  }

  if (v13 < v23)
  {
    v24 = "offset field of LC_TWOLEVEL_HINTS command ";
LABEL_25:
    v26 = v24;
    v27 = a4;
    v28 = 2051;
    v9 = " extends past the end of the file";
    goto LABEL_5;
  }

  if (v23 + 4 * v16 > v13)
  {
    v24 = "offset field plus nhints times sizeof(struct twolevel_hint) field of LC_TWOLEVEL_HINTS command ";
    goto LABEL_25;
  }

  result = checkOverlappingElement(a1, a6, v23, 4 * v16, "two level hints");
  if (!*a1)
  {
    *a5 = *a3;
  }

  return result;
}

uint64_t getStruct<llvm::MachO::version_min_command>(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 16);
  v3 = v2 > a2 || (a2 + 4) > v2 + *(a1 + 24);
  if (v3)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1);
  }

  LODWORD(v4) = *a2;
  LODWORD(v5) = a2[1];
  v6 = *(a1 + 8);
  v3 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  v8 = v3 || v7 == 0;
  v9 = bswap32(v4);
  v10 = bswap32(v5);
  if (v8)
  {
    v4 = v4;
  }

  else
  {
    v4 = v9;
  }

  if (v8)
  {
    v5 = v5;
  }

  else
  {
    v5 = v10;
  }

  return v4 | (v5 << 32);
}

double getStruct<llvm::MachO::symtab_command>@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = v3 > a2 || a2 + 24 > v3 + *(a1 + 24);
  if (v4)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1);
  }

  v5 = *a2;
  *a3 = *a2;
  *(a3 + 16) = *(a2 + 2);
  v6 = *(a1 + 8);
  v4 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  if (!v4 && v7 != 0)
  {
    *a3 = vrev32q_s8(*a3);
    *&v5 = vrev32_s8(*(a3 + 16));
    *(a3 + 16) = v5;
  }

  return *&v5;
}

int8x16_t getStruct<llvm::MachO::dysymtab_command>@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 > a2 || &a2[5] > v3 + *(a1 + 24))
  {
    llvm::report_fatal_error("Malformed MachO file.", 1);
  }

  v5 = a2[3];
  a3[2] = a2[2];
  a3[3] = v5;
  a3[4] = a2[4];
  result = a2[1];
  *a3 = *a2;
  a3[1] = result;
  v7 = *(a1 + 8);
  if (v7 <= 0x14 && ((1 << v7) & 0x155800) != 0)
  {
    v8 = vrev32q_s8(a3[1]);
    *a3 = vrev32q_s8(*a3);
    a3[1] = v8;
    v9 = vrev32q_s8(a3[3]);
    a3[2] = vrev32q_s8(a3[2]);
    a3[3] = v9;
    result = vrev32q_s8(a3[4]);
    a3[4] = result;
  }

  return result;
}

uint64_t llvm::object::MachOObjectFile::getSymbol64TableEntry(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = v2 > a2 || (a2 + 2) > v2 + *(a1 + 24);
  if (v3)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1);
  }

  v4 = *a2;
  v5 = HIWORD(*a2);
  v6 = *(a1 + 8);
  v3 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  v8 = v3 || v7 == 0;
  v9 = bswap32(v4);
  v10 = __rev16(v5);
  v11 = bswap64(a2[1]);
  if (v8)
  {
    v12 = a2[1];
  }

  if (v8)
  {
    v13 = v4;
  }

  else
  {
    v13 = v9;
  }

  if (v8)
  {
    v5 = v5;
  }

  else
  {
    v5 = v10;
  }

  return v4 & 0xFFFF00000000 | (v5 << 48) | v13;
}

uint64_t llvm::object::MachOObjectFile::getSymbolTableEntry(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = v2 > a2 || a2 + 12 > v2 + *(a1 + 24);
  if (v3)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1);
  }

  v4 = *a2;
  v5 = HIWORD(*a2);
  v6 = *(a1 + 8);
  v3 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  v8 = v3 || v7 == 0;
  v9 = bswap32(v4);
  v10 = __rev16(v5);
  v11 = bswap32(*(a2 + 2));
  if (v8)
  {
    v12 = v4;
  }

  else
  {
    v12 = v9;
  }

  if (v8)
  {
    v5 = v5;
  }

  else
  {
    v5 = v10;
  }

  return v4 & 0xFFFF00000000 | (v5 << 48) | v12;
}

uint64_t llvm::object::MachOObjectFile::moveSymbolNext(uint64_t a1, void *a2)
{
  result = (*(*a1 + 64))(a1);
  v4 = 12;
  if (result)
  {
    v4 = 16;
  }

  *a2 += v4;
  return result;
}

size_t llvm::object::MachOObjectFile::getSymbolName@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[34];
  if (v6)
  {
    v20[0] = 0;
    v20[1] = 0;
    p_SymbolIndex = 0;
    getStruct<llvm::MachO::symtab_command>(a1, v6, v20);
    v7 = p_SymbolIndex;
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[2];
  if (a1[3] >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a1[3];
  }

  result = getSymbolTableEntryBase(a1, a2);
  if (result)
  {
    v11 = v9 + v8;
    v12 = (v9 + v8 + result);
    v13 = a1[2];
    if (v12 < v13 || v12 >= v13 + a1[3])
    {
      v16[0] = "bad string index: ";
      v16[2] = result;
      v17 = 2051;
      v18[0] = v16;
      v18[2] = " for symbol at index ";
      v19 = 770;
      SymbolIndex = llvm::object::MachOObjectFile::getSymbolIndex(a1, a2);
      v20[0] = v18;
      p_SymbolIndex = &SymbolIndex;
      v22 = 3074;
      malformedError(a3, v20);
    }

    if (v11)
    {
      result = strlen(v12);
    }

    else
    {
      result = 0;
    }

    *(a3 + 16) &= ~1u;
    *a3 = v12;
    *(a3 + 8) = result;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) &= ~1u;
  }

  return result;
}

uint64_t getSymbolTableEntryBase(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = v2 > a2 || (a2 + 1) > v2 + *(a1 + 24);
  if (v3)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1);
  }

  v4 = *a2;
  v5 = HIWORD(*a2);
  v6 = *(a1 + 8);
  v3 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  v8 = v3 || v7 == 0;
  LODWORD(v9) = bswap32(v4);
  v10 = __rev16(v5);
  if (v8)
  {
    v9 = v4;
  }

  else
  {
    v9 = v9;
  }

  if (v8)
  {
    v5 = v5;
  }

  else
  {
    v5 = v10;
  }

  return v4 & 0xFFFF00000000 | (v5 << 48) | v9;
}

unint64_t llvm::object::MachOObjectFile::getSymbolIndex(void *a1, uint64_t a2)
{
  v3 = a1[34];
  if (!v3 || (v9 = 0, v10 = 0, v11 = 0, v5 = getStruct<llvm::MachO::symtab_command>(a1, v3, &v9), !a1[34]))
  {
    llvm::report_fatal_error("getSymbolIndex() called with no symbol table symbol", 1);
  }

  v6 = (*(*a1 + 64))(a1, v5);
  v7 = 12;
  if (v6)
  {
    v7 = 16;
  }

  return (a2 - (a1[2] + v10)) / v7;
}

uint64_t getSectionFlags(void *a1, unsigned int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a2), &v6);
    result = v10;
  }

  else
  {
    LODWORD(v10) = 0;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a2), &v6);
    result = DWORD2(v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::MachOObjectFile::getNValue(uint64_t a1, uint64_t *a2)
{
  if ((*(*a1 + 64))(a1))
  {
    llvm::object::MachOObjectFile::getSymbol64TableEntry(a1, a2);
    return v4;
  }

  else
  {
    llvm::object::MachOObjectFile::getSymbolTableEntry(a1, a2);
    return v6;
  }
}

uint64_t llvm::object::MachOObjectFile::getSymbolAlignment(uint64_t a1, uint64_t *a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  (*(*a1 + 40))(v6);
  if ((v6[0] & 0x10) != 0)
  {
    result = (1 << ((getSymbolTableEntryBase(a1, a2) >> 56) & 0xF));
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::MachOObjectFile::getSymbolType@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  result = getSymbolTableEntryBase(a1, a2);
  if ((result & 0xE000000000) != 0)
  {
    *(a3 + 8) &= ~1u;
    v7 = 3;
LABEL_3:
    *a3 = v7;
    goto LABEL_4;
  }

  if ((BYTE4(result) & 0xE) != 0xE)
  {
    if ((result & 0xE00000000) == 0)
    {
      *(a3 + 8) &= ~1u;
      *a3 = 0;
      goto LABEL_4;
    }

    *(a3 + 8) &= ~1u;
    v7 = 1;
    goto LABEL_3;
  }

  result = (*(*a1 + 128))(v15, a1, a2);
  if (v16)
  {
    v9 = v15[0];
    v15[0] = 0;
    *(a3 + 8) |= 1u;
    *a3 = v9;
  }

  else
  {
    v10 = v15[0];
    v11 = v15[1];
    result = (*(*a1 + 360))(a1);
    if (v11 == v12 && v10 == result)
    {
      *(a3 + 8) &= ~1u;
      v14 = 1;
    }

    else
    {
      result = (*(*v11 + 208))(v11, v10);
      if ((result & 1) != 0 || (result = (*(*v11 + 216))(v11, v10), result))
      {
        *(a3 + 8) &= ~1u;
        v14 = 2;
      }

      else
      {
        *(a3 + 8) &= ~1u;
        v14 = 5;
      }
    }

    *a3 = v14;
  }

  if (v16)
  {
    result = v15[0];
    v15[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::object::MachOObjectFile::getSymbolFlags@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = getSymbolTableEntryBase(a1, a2);
  v7 = result;
  v8 = HIDWORD(result);
  v9 = BYTE4(result) & 0xE;
  if ((result & 0xE000000000) != 0)
  {
    v10 = (32 * ((BYTE4(result) & 0xE) == 10)) | 0x80;
  }

  else
  {
    v10 = 32 * ((BYTE4(result) & 0xE) == 10);
  }

  if ((result & 0x100000000) != 0)
  {
    if ((result & 0xE00000000) != 0)
    {
      v12 = v10 | 2;
    }

    else
    {
      result = llvm::object::MachOObjectFile::getNValue(a1, a2);
      v12 = v10 | 3;
      if (result)
      {
        v12 = v10 | 0x12;
      }
    }

    v13 = v12 | 0x40;
    v14 = v12 | 0x200;
    if ((v8 & 0x10) != 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v11 = v10 & 0xFFFFFDFF | (((HIDWORD(result) >> 4) & 1) << 9);
  }

  v15 = v11 | 4;
  if ((v7 & 0xC0000000000000) == 0)
  {
    v15 = v11;
  }

  v16 = v15 | (32 * HIWORD(v7)) & 0x100;
  if (v9 == 2)
  {
    v16 |= 8u;
  }

  *(a3 + 8) &= ~1u;
  *a3 = v16;
  return result;
}

uint64_t llvm::object::MachOObjectFile::getSymbolSection@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = getSymbolTableEntryBase(a1, a2);
  if (BYTE5(result))
  {
    v7 = BYTE5(result) - 1;
    if (*(a1 + 88) <= v7)
    {
      v10[0] = "bad section index: ";
      v10[2] = BYTE5(result);
      v11 = 2307;
      v12[0] = v10;
      v12[2] = " for symbol at index ";
      v13 = 770;
      SymbolIndex = llvm::object::MachOObjectFile::getSymbolIndex(a1, a2);
      v14[0] = v12;
      v14[2] = &SymbolIndex;
      v15 = 3074;
      malformedError(a3, v14);
    }

    *(a3 + 16) &= ~1u;
    *a3 = v7;
    *(a3 + 8) = a1;
  }

  else
  {
    result = (*(*a1 + 360))(a1);
    *(a3 + 16) &= ~1u;
    *a3 = result;
    *(a3 + 8) = v8;
  }

  return result;
}

size_t llvm::object::MachOObjectFile::getSectionName@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(*(a1 + 80) + 8 * a2);
  if (*(v4 + 15))
  {
    result = 16;
  }

  else
  {
    result = strlen(*(*(a1 + 80) + 8 * a2));
  }

  *(a3 + 16) &= ~1u;
  *a3 = v4;
  *(a3 + 8) = result;
  return result;
}

uint64_t llvm::object::MachOObjectFile::getSectionAddress(void *a1, unsigned int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a2), v6);
    result = v7;
  }

  else
  {
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a2), v6);
    result = v7;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::object::MachOObjectFile::getSectionSize(void *a1, unsigned int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a2), &v11);
    result = *(&v13 + 1);
    v5 = v14;
    v6 = v15;
  }

  else
  {
    LODWORD(v15) = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a2), &v11);
    result = DWORD1(v13);
    v5 = DWORD2(v13);
    v6 = BYTE8(v14);
  }

  if (v6 != 1 && v6 != 12)
  {
    v8 = a1[3];
    v9 = v8 - v5;
    if (v9 >= result)
    {
      v9 = result;
    }

    if (v8 >= v5)
    {
      result = v9;
    }

    else
    {
      result = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::object::MachOObjectFile::getSectionContents(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a2), &v12);
    LODWORD(v6) = v15;
    v7 = *(&v14 + 1);
  }

  else
  {
    LODWORD(v16) = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a2), &v12);
    v7 = DWORD1(v14);
    LODWORD(v6) = DWORD2(v14);
  }

  v8 = a1[3];
  if (v8 >= v6)
  {
    v6 = v6;
  }

  else
  {
    v6 = a1[3];
  }

  v9 = v8 - v6;
  if (v9 < v7)
  {
    v7 = v9;
  }

  v10 = v6 + a1[2];
  *(a3 + 16) &= ~1u;
  *a3 = v10;
  *(a3 + 8) = v7;
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::object::MachOObjectFile::getSectionAlignment(void *a1, unsigned int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a2), &v7);
    v4 = BYTE4(v10);
  }

  else
  {
    LODWORD(v11) = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a2), &v7);
    v4 = BYTE12(v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 1 << v4;
}

BOOL llvm::object::MachOObjectFile::isSectionData(void *a1, unsigned int a2)
{
  SectionFlags = getSectionFlags(a1, a2);
  v4 = SectionFlags != 1 && SectionFlags != 12;
  return SectionFlags >= 0 && v4;
}

BOOL llvm::object::MachOObjectFile::isSectionBSS(void *a1, unsigned int a2)
{
  SectionFlags = getSectionFlags(a1, a2);
  v4 = SectionFlags == 1 || SectionFlags == 12;
  return SectionFlags >= 0 && v4;
}

uint64_t llvm::object::MachOObjectFile::isDebugSection(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  (*(*a1 + 144))(&v9);
  if ((v11 & 1) == 0)
  {
    if (v10 < 7)
    {
      goto LABEL_8;
    }

    if (*v9 != 1701076831 || *(v9 + 3) != 1735746149)
    {
      if (v10 == 7)
      {
        if (*v9 != 1885429599 || *(v9 + 3) != 1701605488)
        {
          goto LABEL_8;
        }
      }

      else if (*v9 != 0x67756265647A5F5FLL && (*v9 != 1885429599 || *(v9 + 3) != 1701605488))
      {
        if (v10 != 11)
        {
          goto LABEL_8;
        }

        if (*v9 != 0x6E695F6264675F5FLL || *(v9 + 3) != 0x7865646E695F6264)
        {
          result = *v9 == 0x5F74666977735F5FLL && *(v9 + 3) == 0x7473615F74666977;
          goto LABEL_9;
        }
      }
    }

    result = 1;
    goto LABEL_9;
  }

  v8 = v9;
  v9 = 0;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    (*(*result + 8))(result);
LABEL_8:
    result = 0;
  }

LABEL_9:
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::MachOObjectFile::isSectionBitcode(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a1[10] + 8 * a2);
  if (*(v4 + 31))
  {
    v5 = 0;
  }

  else
  {
    v5 = strlen((v4 + 16)) == 6;
  }

  (*(*a1 + 144))(v15, a1, a2);
  v7 = v16;
  if (v16)
  {
    v8 = v15[0];
    v15[0] = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  else
  {
    v6 = v5 && (*(v4 + 16) == 1280073567 ? (v9 = *(v4 + 20) == 19798) : (v9 = 0), v9 ? (v10 = 0) : (v10 = 1), !v10 ? (v11 = v15[1] == 9) : (v11 = 0), v11) && *v15[0] == 0x646F637469625F5FLL && *(v15[0] + 8) == 101;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6 & ~v7 & 1;
}

BOOL llvm::object::MachOObjectFile::isSectionStripped(void *a1, unsigned int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a2), v7);
    v4 = v9;
  }

  else
  {
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a2), v7);
    v4 = v8;
  }

  result = v4 == 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::object::MachOObjectFile::section_rel_end(void *a1, unsigned int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a2), &v7);
    v4 = HIDWORD(v10);
  }

  else
  {
    LODWORD(v11) = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a2), &v7);
    v4 = DWORD1(v10);
  }

  v5 = *MEMORY[0x277D85DE8];
  return a2 | (v4 << 32);
}

uint64_t llvm::object::MachOObjectFile::getRelocationOffset(uint64_t a1, unint64_t a2)
{
  Relocation = llvm::object::MachOObjectFile::getRelocation(a1, a2);
  v4 = Relocation >= 0 || *(a1 + 52) == 16777223;
  v5 = Relocation & 0xFFFFFF;
  if (v4)
  {
    return Relocation;
  }

  return v5;
}

uint64_t llvm::object::MachOObjectFile::getRelocation(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 60) == 1)
  {
    if ((*(*a1 + 64))(a1))
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      getStruct<llvm::MachO::section_64>(a1, *(*(a1 + 80) + 8 * a2), &v20);
      v4 = DWORD2(v23);
    }

    else
    {
      LODWORD(v24) = 0;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      getStruct<llvm::MachO::section>(a1, *(*(a1 + 80) + 8 * a2), &v20);
      v4 = v23;
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v5 = *(a1 + 280);
    if (v5)
    {
      getStruct<llvm::MachO::dysymtab_command>(a1, v5, &v20);
      v4 = v24;
      v6 = DWORD2(v24);
    }

    else
    {
      v6 = 0;
      v4 = 0;
    }

    if (a2)
    {
      v4 = v6;
    }
  }

  v7 = *(a1 + 16);
  v8 = (v7 + v4 + 8 * HIDWORD(a2));
  if (v8 < v7 || (v8 + 2) > v7 + *(a1 + 24))
  {
    llvm::report_fatal_error("Malformed MachO file.", 1);
  }

  v10 = *v8;
  v11 = v8[1];
  v12 = *(a1 + 8);
  v13 = bswap32(v10);
  v14 = bswap32(v11);
  if (((1 << v12) & 0x155800) == 0)
  {
    v13 = v10;
    v14 = v11;
  }

  v15 = v12 > 0x14;
  if (v12 <= 0x14)
  {
    v16 = v13;
  }

  else
  {
    v16 = v10;
  }

  if (v15)
  {
    v17 = v11;
  }

  else
  {
    v17 = v14;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16 | (v17 << 32);
}

uint64_t llvm::object::MachOObjectFile::getRelocationSymbol(uint64_t a1, unint64_t a2)
{
  Relocation = llvm::object::MachOObjectFile::getRelocation(a1, a2);
  if (*(a1 + 52) != 16777223 && Relocation < 0)
  {
    return (*(*a1 + 56))(a1);
  }

  v6 = *(a1 + 8);
  v7 = v6 > 0x14 || ((1 << v6) & 0x155800) == 0;
  v8 = v7 ? HIDWORD(Relocation) & 0xFFFFFF : HIDWORD(Relocation) >> 8;
  v9 = v6 - 11;
  v10 = v9 > 9 ? 0x8000000 : dword_2750C78D0[v9];
  if ((v10 & HIDWORD(Relocation)) == 0)
  {
    return (*(*a1 + 56))(a1);
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v11 = *(a1 + 272);
  if (v11)
  {
    v4.n128_f64[0] = getStruct<llvm::MachO::symtab_command>(a1, v11, &v15);
    v12 = v16;
  }

  else
  {
    v12 = 0;
  }

  if ((*(*a1 + 64))(a1, v4))
  {
    v14 = 16;
  }

  else
  {
    v14 = 12;
  }

  return *(a1 + 16) + (v12 + v14 * v8);
}

uint64_t llvm::object::MachOObjectFile::getRelocationType(uint64_t a1, unint64_t a2)
{
  Relocation = llvm::object::MachOObjectFile::getRelocation(a1, a2);
  if (*(a1 + 52) == 16777223 || (Relocation & 0x80000000) == 0)
  {
    v5 = *(a1 + 8);
    v6 = v5 > 0x14;
    v7 = (1 << v5) & 0x155800;
    v8 = v6 || v7 == 0;
    v4 = HIDWORD(Relocation) >> 28;
    if (!v8)
    {
      return BYTE4(Relocation) & 0xF;
    }
  }

  else
  {
    return BYTE3(Relocation) & 0xF;
  }

  return v4;
}

void *llvm::object::MachOObjectFile::getRelocationTypeName(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*a1 + 320))(a1);
  v6 = (*(*a1 + 392))(a1);
  v7 = 0;
  if (v6 <= 4)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    if (v6 == 1)
    {
      if (v5 <= 9)
      {
        v9 = llvm::object::MachOObjectFile::getRelocationTypeName(llvm::object::DataRefImpl,llvm::SmallVectorImpl<char> &)const::Table;
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v8 = 0;
    if (v6 != 3)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  if (v6 > 36)
  {
    if (v6 == 38)
    {
      if (v5 <= 9)
      {
        v9 = llvm::object::MachOObjectFile::getRelocationTypeName(llvm::object::DataRefImpl,llvm::SmallVectorImpl<char> &)const::Table;
        goto LABEL_21;
      }
    }

    else
    {
      v8 = 0;
      if (v6 != 37)
      {
        goto LABEL_22;
      }

      if (v5 <= 5)
      {
        v9 = llvm::object::MachOObjectFile::getRelocationTypeName(llvm::object::DataRefImpl,llvm::SmallVectorImpl<char> &)const::Table;
        goto LABEL_21;
      }
    }

    goto LABEL_19;
  }

  if (v6 == 5)
  {
LABEL_10:
    if (v5 <= 0xB)
    {
      v9 = llvm::object::MachOObjectFile::getRelocationTypeName(llvm::object::DataRefImpl,llvm::SmallVectorImpl<char> &)const::Table;
      goto LABEL_21;
    }

LABEL_19:
    v8 = "Unknown";
    v7 = 7;
    goto LABEL_22;
  }

  v8 = 0;
  if (v6 != 21)
  {
    goto LABEL_22;
  }

  if (v5 > 0xF)
  {
    goto LABEL_19;
  }

  v9 = llvm::object::MachOObjectFile::getRelocationTypeName(llvm::object::DataRefImpl,llvm::SmallVectorImpl<char> &)const::Table;
LABEL_21:
  v8 = v9[v5];
  v7 = strlen(v8);
LABEL_22:

  return llvm::SmallVectorImpl<char>::append<char const*,void>(a3, v8, &v8[v7]);
}

uint64_t llvm::object::MachOObjectFile::symbol_begin(llvm::object::MachOObjectFile *this)
{
  v2 = *(this + 34);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  getStruct<llvm::MachO::symtab_command>(this, v2, &v5);
  if (!*(this + 34) || HIDWORD(v6) == 0)
  {
    return 0;
  }

  else
  {
    return llvm::object::MachOObjectFile::getSymbolByIndex(this, 0);
  }
}

uint64_t llvm::object::MachOObjectFile::getSymbolByIndex(llvm::object::MachOObjectFile *this, unsigned int a2)
{
  v3 = *(this + 34);
  if (!v3 || ((v9 = 0, v10 = 0, v11 = 0, v5.n128_f64[0] = getStruct<llvm::MachO::symtab_command>(this, v3, &v9), *(this + 34)) ? (v6 = HIDWORD(v10) > a2) : (v6 = 0), !v6))
  {
    llvm::report_fatal_error("Requested symbol index is out of range.", 1);
  }

  if ((*(*this + 64))(this, v5))
  {
    v7 = 16;
  }

  else
  {
    v7 = 12;
  }

  return *(this + 2) + v10 + v7 * a2;
}

uint64_t llvm::object::MachOObjectFile::symbol_end(llvm::object::MachOObjectFile *this)
{
  v2 = *(this + 34);
  if (!v2)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v3.n128_f64[0] = getStruct<llvm::MachO::symtab_command>(this, v2, &v9);
  v4 = HIDWORD(v10);
  if (!*(this + 34) || HIDWORD(v10) == 0)
  {
    return 0;
  }

  if ((*(*this + 64))(this, v3))
  {
    v8 = 16;
  }

  else
  {
    v8 = 12;
  }

  return *(this + 2) + (v10 + v8 * v4);
}

uint64_t llvm::object::MachOObjectFile::getBytesInAddress(llvm::object::MachOObjectFile *this)
{
  if ((*(*this + 64))(this))
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

const char *llvm::object::MachOObjectFile::getFileFormatName(llvm::object::MachOObjectFile *this)
{
  v1 = *(this + 13);
  if (((*(*this + 64))(this) & 1) == 0)
  {
    if (v1 > 17)
    {
      if (v1 == 18)
      {
        return "Mach-O 32-bit ppc";
      }

      if (v1 == 33554444)
      {
        return "Mach-O arm64 (ILP32)";
      }
    }

    else
    {
      if (v1 == 7)
      {
        return "Mach-O 32-bit i386";
      }

      if (v1 == 12)
      {
        return "Mach-O arm";
      }
    }

    return "Mach-O 32-bit unknown";
  }

  if (v1 > 16777233)
  {
    if (v1 == 16777234)
    {
      return "Mach-O 64-bit ppc64";
    }

    if (v1 != 33554444)
    {
      return "Mach-O 64-bit unknown";
    }

    return "Mach-O arm64 (ILP32)";
  }

  if (v1 != 16777223)
  {
    if (v1 == 16777228)
    {
      return "Mach-O arm64";
    }

    return "Mach-O 64-bit unknown";
  }

  return "Mach-O 64-bit x86-64";
}

uint64_t llvm::object::MachOObjectFile::getArch(llvm::object::MachOObjectFile *this)
{
  if (this <= 16777222)
  {
    if (this == 7)
    {
      return 37;
    }

    if (this != 12)
    {
      if (this == 18)
      {
        return 21;
      }

      return 0;
    }

    return 1;
  }

  else if (this > 16777233)
  {
    if (this != 16777234)
    {
      if (this == 33554444)
      {
        return 5;
      }

      return 0;
    }

    return 23;
  }

  else
  {
    if (this != 16777223)
    {
      if (this == 16777228)
      {
        return 3;
      }

      return 0;
    }

    return 38;
  }
}

{
  return llvm::object::MachOObjectFile::getArch(*(this + 13));
}

llvm::Triple *llvm::object::MachOObjectFile::getArchTriple@<X0>(llvm::Triple *this@<X0>, const char **a2@<X3>, int a3@<W1>, void *a4@<X2>, llvm::Triple *a5@<X8>)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (this <= 16777222)
  {
    if (this == 7)
    {
      if ((a3 & 0xFFFFFF) == 3)
      {
        if (a2)
        {
          *a2 = "i386";
        }

        v6 = "i386-apple-darwin";
        goto LABEL_106;
      }
    }

    else if (this == 12)
    {
      v7 = a3 & 0xFFFFFF;
      if ((a3 & 0xFFFFFFu) > 0xA)
      {
        if ((a3 & 0xFFFFFFu) <= 0xD)
        {
          if (v7 == 11)
          {
            if (a4)
            {
              *a4 = "cortex-a7";
            }

            if (a2)
            {
              *a2 = "armv7s";
            }

            v6 = "armv7s-apple-darwin";
            goto LABEL_106;
          }

          if (v7 == 12)
          {
            if (a4)
            {
              *a4 = "cortex-a7";
            }

            if (a2)
            {
              *a2 = "armv7k";
            }

            v6 = "armv7k-apple-darwin";
            goto LABEL_106;
          }
        }

        else
        {
          switch(v7)
          {
            case 14:
              if (a4)
              {
                *a4 = "cortex-m0";
              }

              if (a2)
              {
                *a2 = "armv6m";
              }

              v6 = "armv6m-apple-darwin";
              goto LABEL_106;
            case 15:
              if (a4)
              {
                *a4 = "cortex-m3";
              }

              if (a2)
              {
                *a2 = "armv7m";
              }

              v6 = "thumbv7m-apple-darwin";
              goto LABEL_106;
            case 16:
              if (a4)
              {
                *a4 = "cortex-m4";
              }

              if (a2)
              {
                *a2 = "armv7em";
              }

              v6 = "thumbv7em-apple-darwin";
              goto LABEL_106;
          }
        }
      }

      else if ((a3 & 0xFFFFFFu) <= 6)
      {
        if (v7 == 5)
        {
          if (a2)
          {
            *a2 = "armv4t";
          }

          v6 = "armv4t-apple-darwin";
          goto LABEL_106;
        }

        if (v7 == 6)
        {
          if (a2)
          {
            *a2 = "armv6";
          }

          v6 = "armv6-apple-darwin";
          goto LABEL_106;
        }
      }

      else
      {
        switch(v7)
        {
          case 7:
            if (a2)
            {
              *a2 = "armv5e";
            }

            v6 = "armv5e-apple-darwin";
            goto LABEL_106;
          case 8:
            if (a2)
            {
              *a2 = "xscale";
            }

            v6 = "xscale-apple-darwin";
            goto LABEL_106;
          case 9:
            if (a2)
            {
              *a2 = "armv7";
            }

            v6 = "armv7-apple-darwin";
            goto LABEL_106;
        }
      }
    }

    else if (this == 18 && (a3 & 0xFFFFFF) == 0)
    {
      if (a2)
      {
        *a2 = "ppc";
      }

      v6 = "ppc-apple-darwin";
      goto LABEL_106;
    }

    goto LABEL_41;
  }

  if (this > 16777233)
  {
    if (this == 16777234)
    {
      if ((a3 & 0xFFFFFF) == 0)
      {
        if (a2)
        {
          *a2 = "ppc64";
        }

        v6 = "ppc64-apple-darwin";
        goto LABEL_106;
      }
    }

    else if (this == 33554444 && (a3 & 0xFFFFFF) == 1)
    {
      if (a4)
      {
        *a4 = "apple-s4";
      }

      if (a2)
      {
        *a2 = "arm64_32";
      }

      v6 = "arm64_32-apple-darwin";
      goto LABEL_106;
    }

    goto LABEL_41;
  }

  if (this == 16777223)
  {
    if ((a3 & 0xFFFFFF) == 8)
    {
      if (a2)
      {
        *a2 = "x86_64h";
      }

      v6 = "x86_64h-apple-darwin";
      goto LABEL_106;
    }

    if ((a3 & 0xFFFFFF) == 3)
    {
      if (a2)
      {
        *a2 = "x86_64";
      }

      v6 = "x86_64-apple-darwin";
      goto LABEL_106;
    }

    goto LABEL_41;
  }

  if (this != 16777228)
  {
    goto LABEL_41;
  }

  if ((a3 & 0xFFFFFF) == 2)
  {
    if (a4)
    {
      *a4 = "apple-a12";
    }

    if (a2)
    {
      *a2 = "arm64e";
    }

    v6 = "arm64e-apple-darwin";
    goto LABEL_106;
  }

  if ((a3 & 0xFFFFFF) != 0)
  {
LABEL_41:
    *(a5 + 1) = 0u;
    *(a5 + 2) = 0u;
    *a5 = 0u;
    return this;
  }

  if (a4)
  {
    *a4 = "cyclone";
  }

  if (a2)
  {
    *a2 = "arm64";
  }

  v6 = "arm64-apple-darwin";
LABEL_106:
  v8 = v6;
  v9 = 259;
  return llvm::Triple::Triple(a5, &v8);
}

int8x16_t getStruct<llvm::MachO::section>@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 > a2 || a2 + 68 > v3 + *(a1 + 24))
  {
    llvm::report_fatal_error("Malformed MachO file.", 1);
  }

  v5 = *(a2 + 48);
  *(a3 + 32) = *(a2 + 32);
  *(a3 + 48) = v5;
  *(a3 + 64) = *(a2 + 64);
  result = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = result;
  v7 = *(a1 + 8);
  if (v7 <= 0x14 && ((1 << v7) & 0x155800) != 0)
  {
    result = vrev32q_s8(*(a3 + 32));
    v8 = vrev32q_s8(*(a3 + 48));
    *(a3 + 32) = result;
    *(a3 + 48) = v8;
    *(a3 + 64) = bswap32(*(a3 + 64));
  }

  return result;
}

double getStruct<llvm::MachO::section_64>@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 > a2 || (a2 + 5) > v3 + *(a1 + 24))
  {
    llvm::report_fatal_error("Malformed MachO file.", 1);
  }

  v5 = a2[3];
  *(a3 + 32) = a2[2];
  *(a3 + 48) = v5;
  *(a3 + 64) = a2[4];
  v6 = a2[1];
  *a3 = *a2;
  *(a3 + 16) = v6;
  v7 = *(a1 + 8);
  if (v7 <= 0x14 && ((1 << v7) & 0x155800) != 0)
  {
    v8 = vrev32q_s8(*(a3 + 48));
    *(a3 + 32) = vrev64q_s8(*(a3 + 32));
    *(a3 + 48) = v8;
    *&v6 = vrev32_s8(*(a3 + 64));
    *(a3 + 64) = v6;
    *(a3 + 72) = bswap32(*(a3 + 72));
  }

  return *&v6;
}

uint64_t getStructOrErr<llvm::MachO::section_64>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || a3 + 80 > v3 + *(a2 + 24);
  if (v4)
  {
    v14 = "Structure read out-of-range";
    v15 = 259;
    malformedError(&v16, &v14);
  }

  v6 = *(a3 + 32);
  v5 = *(a3 + 48);
  v7 = *(a3 + 64);
  v9 = *(a3 + 72);
  v8 = *(a3 + 76);
  v10 = *(a2 + 8);
  v4 = v10 > 0x14;
  v11 = (1 << v10) & 0x155800;
  if (!v4 && v11 != 0)
  {
    v6 = vrev64q_s8(v6);
    v5 = vrev32q_s8(v5);
    v7 = vrev32_s8(v7);
    v9 = bswap32(v9);
  }

  *(result + 80) &= ~1u;
  v13 = *(a3 + 16);
  *result = *a3;
  *(result + 16) = v13;
  *(result + 32) = v6;
  *(result + 48) = v5;
  *(result + 64) = v7;
  *(result + 72) = v9;
  *(result + 76) = v8;
  return result;
}

uint64_t getStructOrErr<llvm::MachO::section>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || a3 + 68 > v3 + *(a2 + 24);
  if (v4)
  {
    v12 = "Structure read out-of-range";
    v13 = 259;
    malformedError(&v14, &v12);
  }

  v5 = *(a3 + 32);
  v6 = *(a3 + 48);
  v7 = *(a3 + 64);
  v8 = *(a2 + 8);
  v4 = v8 > 0x14;
  v9 = (1 << v8) & 0x155800;
  if (!v4 && v9 != 0)
  {
    v5 = vrev32q_s8(v5);
    v6 = vrev32q_s8(v6);
    v7 = bswap32(v7);
  }

  *(result + 72) &= ~1u;
  v11 = *(a3 + 16);
  *result = *a3;
  *(result + 16) = v11;
  *(result + 32) = v5;
  *(result + 48) = v6;
  *(result + 64) = v7;
  return result;
}

void llvm::object::ObjectFile::createMachOObjectFile(__int128 *a1)
{
  v1 = *(a1 + 1);
  if (v1 >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = *(a1 + 1);
  }

  if (v1 >= 4)
  {
    v4 = *a1;
    if (!memcmp(*a1, "\xFE\xED\xFA\xCE", v2))
    {
      v5 = *a1;
      v9 = a1[1];
    }

    else if (!memcmp(v4, &str_348, v2))
    {
      v6 = *a1;
      v10 = a1[1];
    }

    else if (!memcmp(v4, &str_349, v2))
    {
      v7 = *a1;
      v11 = a1[1];
    }

    else
    {
      if (memcmp(v4, &str_350, v2))
      {
        goto LABEL_9;
      }

      v8 = *a1;
      v12 = a1[1];
    }

    llvm::object::MachOObjectFile::create();
  }

LABEL_9:
  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[32],llvm::object::object_error>();
}

const char *llvm::object::MachOObjectFile::mapDebugSectionName(uint64_t a1, void *a2, uint64_t a3)
{
  result = a2;
  if (a3 == 14 && *a2 == 0x74735F6775626564 && *(a2 + 6) == 0x7366666F5F727473)
  {
    return "debug_str_offsets";
  }

  return result;
}

uint64_t llvm::object::MachOObjectFile::mapReflectionSectionNameToEnumValue(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 == 14)
  {
    if (*a2 == 0x3574666977735F5FLL && *(a2 + 6) == 0x6F746F72705F3574)
    {
      return 6;
    }

    return 10;
  }

  if (a3 == 15)
  {
    if (*a2 == 0x3574666977735F5FLL && *(a2 + 7) == 0x736F746F72705F35)
    {
      return 7;
    }

    if (*a2 ^ 0x3574666977735F5FLL | *(a2 + 7) ^ 0x6D756E65706D5F35)
    {
      return 10;
    }

    return 9;
  }

  if (a3 != 16)
  {
    return 10;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x646D646C6569665FLL)
  {
    return 0;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x7974636F7373615FLL)
  {
    return 1;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x6E69746C6975625FLL)
  {
    return 2;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x657275747061635FLL)
  {
    return 3;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x666572657079745FLL)
  {
    return 4;
  }

  if (*a2 != 0x3574666977735F5FLL || a2[1] != 0x7274736C6665725FLL)
  {
    if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x73636E756663615FLL)
    {
      return 8;
    }

    return 10;
  }

  return 5;
}

void llvm::object::MachOObjectFile::~MachOObjectFile(llvm::object::MachOObjectFile *this)
{
  llvm::object::MachOObjectFile::~MachOObjectFile(this);

  JUMPOUT(0x277C69E40);
}

{
  *this = &unk_2883EEF40;
  v2 = *(this + 33);
  *(this + 33) = 0;
  if (v2)
  {
    if (*v2 != v2 + 2)
    {
      free(*v2);
    }

    MEMORY[0x277C69E40](v2, 0x1080C40E09A0471);
  }

  v3 = *(this + 29);
  if (v3 != this + 248)
  {
    free(v3);
  }

  v4 = *(this + 26);
  if (v4 != this + 224)
  {
    free(v4);
  }

  v5 = *(this + 16);
  if (v5 != this + 144)
  {
    free(v5);
  }

  v6 = *(this + 13);
  if (v6 != this + 120)
  {
    free(v6);
  }

  v7 = *(this + 10);
  if (v7 != this + 96)
  {
    free(v7);
  }
}

void llvm::object::MachOObjectFile::getFeatures(uint64_t a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  llvm::SubtargetFeatures::Split(&v3, "", 0);
  *(a1 + 24) &= ~1u;
  *a1 = v3;
  memset(&v3, 0, sizeof(v3));
  v4 = &v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
}

uint64_t getLoadCommandInfo(uint64_t result, const char *a2, _DWORD *a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 > a3 || (v5 = v4 + *(a2 + 3), (a3 + 2) > v5))
  {
    v19[0] = "Structure read out-of-range";
    v21 = 259;
    malformedError(result, v19);
  }

  LODWORD(v7) = *a3;
  LODWORD(v6) = a3[1];
  v8 = *(a2 + 2);
  v9 = v8 >= 0x14;
  v11 = v8 == 20;
  v10 = (1 << v8) & 0x155800;
  v11 = !v11 && v9 || v10 == 0;
  v12 = bswap32(v7);
  v13 = bswap32(v6);
  if (v11)
  {
    v6 = v6;
  }

  else
  {
    v6 = v13;
  }

  if (v11)
  {
    v7 = v7;
  }

  else
  {
    v7 = v12;
  }

  if (a3 + v6 > v5)
  {
    v15[0] = "load command ";
    v16 = a4;
    v17 = 2051;
    v19[0] = v15;
    v20 = " extends past end of file";
    v21 = 770;
    malformedError(&v18, v19);
  }

  if (v6 <= 7)
  {
    v15[0] = "load command ";
    v16 = a4;
    v17 = 2051;
    v19[0] = v15;
    v20 = " with size less than 8 bytes";
    v21 = 770;
    malformedError(&v14, v19);
  }

  *(result + 16) &= ~1u;
  *result = a3;
  *(result + 8) = v7 | (v6 << 32);
  return result;
}

const llvm::Twine *checkOverlappingElement(const llvm::Twine *result, void *a2, unint64_t a3, uint64_t a4, const char *a5)
{
  v48 = a4;
  v49 = a3;
  if (a4)
  {
    v5 = a5;
    v6 = a2[1];
    if (v6 == a2)
    {
LABEL_13:
      operator new();
    }

    v7 = a4 + a3;
    v8 = v6[2];
    while ((v8 > a3 || v6[3] + v8 <= a3) && (v7 <= v8 || v7 >= v6[3] + v8) && (v8 < a3 || v7 < v6[3] + v8))
    {
      v6 = v6[1];
      if (v6 == a2)
      {
        goto LABEL_13;
      }

      v8 = v6[2];
      if (v7 <= v8)
      {
        operator new();
      }
    }

    v9 = *a5;
    v10 = " at offset ";
    if (*a5)
    {
      v21[2] = " at offset ";
      v11 = 3;
      v12 = 2;
    }

    else
    {
      v11 = 1;
      v12 = 3;
      v5 = " at offset ";
    }

    v21[0] = v5;
    v22 = 3;
    v23 = v11;
    v13 = v9 == 0;
    v14 = v21;
    if (v13)
    {
      v14 = v5;
    }

    v24[0] = v14;
    v24[2] = &v49;
    v25 = v12;
    v26 = 12;
    v27[0] = v24;
    v27[2] = " with a size of ";
    v15 = 770;
    v28 = 770;
    v29[0] = v27;
    v29[2] = &v48;
    v30 = 3074;
    *&v31 = v29;
    *&v32 = ", overlaps ";
    LOWORD(v33) = 770;
    v16 = v6[4];
    if (*v16)
    {
      *&v34 = &v31;
      *&v35 = v16;
      LOWORD(v36) = 770;
      v17 = 2;
      v18 = &v34;
    }

    else
    {
      v34 = v31;
      v35 = v32;
      v36 = v33;
      v17 = v33;
      if (v33 == 1)
      {
        v37[0] = " at offset ";
        v20 = 1;
        v17 = 3;
        v19 = 3;
LABEL_23:
        v38 = v17;
        v39 = v20;
        v40[0] = v10;
        v40[2] = v6 + 2;
        v41 = v19;
        v42 = 12;
        v43[0] = v40;
        v43[2] = " with a size of ";
        v44 = 770;
        v45[0] = v43;
        v45[2] = (v6 + 3);
        v46 = 2;
        v47 = 12;
        malformedError(result, v45);
      }

      v15 = *(&v34 + 1);
      v18 = &v34;
      if (BYTE1(v36) == 1)
      {
        v18 = v34;
      }

      else
      {
        v17 = 2;
      }
    }

    v37[1] = v15;
    v37[2] = " at offset ";
    v19 = 2;
    v10 = v37;
    v20 = 3;
    v37[0] = v18;
    goto LABEL_23;
  }

  *result = 0;
  return result;
}

uint64_t getStructOrErr<llvm::MachO::segment_command_64>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || a3 + 72 > v3 + *(a2 + 24);
  if (v4)
  {
    v12 = "Structure read out-of-range";
    v13 = 259;
    malformedError(&v14, &v12);
  }

  v5 = *a3;
  v6 = *(a3 + 24);
  v7 = *(a3 + 40);
  v8 = *(a3 + 56);
  v9 = *(a2 + 8);
  v4 = v9 > 0x14;
  v10 = (1 << v9) & 0x155800;
  if (!v4 && v10 != 0)
  {
    v5 = vrev32_s8(v5);
    v6 = vrev64q_s8(v6);
    v7 = vrev64q_s8(v7);
    v8 = vrev32q_s8(v8);
  }

  *(result + 72) &= ~1u;
  *result = v5;
  *(result + 8) = *(a3 + 8);
  *(result + 24) = v6;
  *(result + 40) = v7;
  *(result + 56) = v8;
  return result;
}

uint64_t getStructOrErr<llvm::MachO::segment_command>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || a3 + 56 > v3 + *(a2 + 24);
  if (v4)
  {
    v11 = "Structure read out-of-range";
    v12 = 259;
    malformedError(&v13, &v11);
  }

  v5 = *a3;
  v6 = *(a3 + 24);
  v7 = *(a3 + 40);
  v8 = *(a2 + 8);
  v4 = v8 > 0x14;
  v9 = (1 << v8) & 0x155800;
  if (!v4 && v9 != 0)
  {
    v5 = vrev32_s8(v5);
    v6 = vrev32q_s8(v6);
    v7 = vrev32q_s8(v7);
  }

  *(result + 56) &= ~1u;
  *result = v5;
  *(result + 8) = *(a3 + 8);
  *(result + 24) = v6;
  *(result + 40) = v7;
  return result;
}

double llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (a2 && *(a2 + 52) > a3)
  {
    v3 = *(a2 + 16) + 8;
    if (*(a2 + 48) == -889275714)
    {
      v4 = (v3 + 20 * a3);
      v5 = bswap32(v4[1].u32[0]);
      v6 = vrev32q_s8(*v4);
      *(a1 + 12) = v6;
      *(a1 + 28) = v5;
    }

    else
    {
      v7 = v3 + 32 * a3;
      *v6.i8 = vrev32_s8(*(v7 + 24));
      v8 = vrev64q_s8(*(v7 + 8));
      *(a1 + 32) = vrev32_s8(*v7);
      *(a1 + 40) = v8;
      *(a1 + 56) = v6.i64[0];
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return *v6.i64;
}

void llvm::object::MachOUniversalBinary::ObjectForArch::getAsObjectFile(llvm::object::MachOUniversalBinary::ObjectForArch *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(v1 + 24);
    if (*(v1 + 48) == -889275714)
    {
      v3 = this + 12;
      v4 = *(this + 5);
      v5 = *(this + 6);
    }

    else
    {
      v3 = this + 32;
      v4 = *(this + 5);
      v5 = *(this + 6);
    }

    if (v2 < v4)
    {
      v4 = *(v1 + 24);
    }

    v6 = v2 - v4;
    if (v6 >= v5)
    {
      v6 = v5;
    }

    v7 = *v3;
    *&v9[0] = v4 + *(v1 + 16);
    *(&v9[0] + 1) = v6;
    v9[1] = *(v1 + 32);
    v8 = *(this + 2);
    llvm::object::ObjectFile::createMachOObjectFile(v9);
  }

  llvm::report_fatal_error("MachOUniversalBinary::ObjectForArch::getAsObjectFile() called when Parent is a nullptr", 1);
}

uint64_t llvm::object::MachOUniversalBinary::MachOUniversalBinary(uint64_t a1, __int128 *a2, void *a3)
{
  v6 = *a2;
  v5 = a2[1];
  *(a1 + 8) = 1;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *a1 = &unk_2883EF110;
  *(a1 + 48) = 0;
  v7 = *(a1 + 24);
  if (v7 <= 7)
  {
    LODWORD(v74) = 2;
    llvm::make_error<llvm::object::GenericBinaryError,char const(&)[32],llvm::object::object_error>();
  }

  v8 = __rev32(**(a1 + 16));
  *(a1 + 48) = v8;
  if (!HIDWORD(v8))
  {
    v9 = "contains zero architecture types";
    goto LABEL_70;
  }

  if (v8 == -889275713)
  {
    v10 = (32 * HIDWORD(v8)) | 8;
  }

  else
  {
    if (v8 != -889275714)
    {
      v9 = "bad magic number";
LABEL_70:
      v119[0] = v9;
      v123 = 259;
      malformedError(&v74, v119);
    }

    v10 = 20 * HIDWORD(v8) + 8;
  }

  if (v7 < v10)
  {
    v11 = "";
    if (v8 != -889275714)
    {
      v11 = "_64";
    }

    v12 = *v11;
    if (*v11)
    {
      v76 = v11;
      v13 = 3;
      v14 = 2;
    }

    else
    {
      v13 = 1;
      v14 = 3;
    }

    v74 = "fat_arch";
    v78[0] = 3;
    v78[1] = v13;
    v45 = v12 == 0;
    v46 = &v74;
    if (v45)
    {
      v46 = "fat_arch";
    }

    v119[0] = v46;
    v120 = " structs would extend past the end of the file";
    LOBYTE(v123) = v14;
    HIBYTE(v123) = 3;
    malformedError(v116, v119);
  }

  v15 = 0;
  v16 = v10;
  do
  {
    llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(v119, a1, v15);
    v17 = *(v119[0] + 12);
    v18 = HIDWORD(v120);
    v19 = v121;
    v20 = v125;
    if (v17 == -889275714)
    {
      v21 = HIDWORD(v120);
    }

    else
    {
      v21 = v125;
    }

    if (v17 != -889275714)
    {
      v19 = v126;
    }

    if (v19 + v21 > v7)
    {
      v107[0] = "offset plus size of cputype (";
      v109 = 259;
      v45 = v17 == -889275714;
      v47 = 32;
      if (v45)
      {
        v47 = 12;
      }

      v48 = *(v119 + v47);
      v106 = 264;
      LODWORD(v105[0]) = v48;
      llvm::operator+(v107, v105, v110);
      v103[0] = ") cpusubtype (";
      v104 = 259;
      llvm::operator+(v110, v103, v113);
      v49 = 36;
      if (*(v119[0] + 12) == -889275714)
      {
        v49 = 16;
      }

      v50 = *(v119 + v49) & 0xFFFFFF;
      v102 = 264;
      LODWORD(v101[0]) = v50;
      llvm::operator+(v113, v101, v116);
      v99[0] = ") extends past the end of the file";
      v100 = 259;
      llvm::operator+(v116, v99, &v74);
      malformedError(v96, &v74);
    }

    if (v17 == -889275714)
    {
      v22 = v122;
    }

    else
    {
      v22 = v127;
    }

    if (v22 >= 0x10)
    {
      v99[0] = "align (2^";
      v100 = 259;
      v97 = 264;
      LODWORD(v96[0]) = v22;
      llvm::operator+(v99, v96, v101);
      v94[0] = ") too large for cputype (";
      v95 = 259;
      llvm::operator+(v101, v94, v103);
      v51 = 32;
      if (*(v119[0] + 12) == -889275714)
      {
        v51 = 12;
      }

      v52 = *(v119 + v51);
      v93 = 264;
      LODWORD(v92[0]) = v52;
      llvm::operator+(v103, v92, v105);
      v90[0] = ") cpusubtype (";
      v91 = 259;
      llvm::operator+(v105, v90, v107);
      v53 = 36;
      if (*(v119[0] + 12) == -889275714)
      {
        v53 = 16;
      }

      v54 = *(v119 + v53) & 0xFFFFFF;
      v89 = 264;
      LODWORD(v88[0]) = v54;
      llvm::operator+(v107, v88, v110);
      v86[0] = ") (maximum 2^";
      v87 = 259;
      llvm::operator+(v110, v86, v113);
      v85 = 264;
      v55 = 15;
LABEL_103:
      LODWORD(v84[0]) = v55;
      llvm::operator+(v113, v84, v116);
      v82[0] = ")";
      v83 = 259;
      llvm::operator+(v116, v82, &v74);
      malformedError(&v98, &v74);
    }

    if (v17 == -889275714)
    {
      if ((~(-1 << v122) & HIDWORD(v120)) == 0)
      {
        v20 = HIDWORD(v120);
        goto LABEL_29;
      }

      v99[0] = "offset: ";
      v100 = 259;
      goto LABEL_95;
    }

    if ((v125 & ~(-1 << v127)) != 0)
    {
      v99[0] = "offset: ";
      v100 = 259;
      v18 = v125;
LABEL_95:
      v81 = v18;
      v97 = 268;
      v96[0] = &v81;
      llvm::operator+(v99, v96, v101);
      v94[0] = " for cputype (";
      v95 = 259;
      llvm::operator+(v101, v94, v103);
      v61 = 32;
      if (*(v119[0] + 12) == -889275714)
      {
        v61 = 12;
      }

      v62 = *(v119 + v61);
      v93 = 264;
      LODWORD(v92[0]) = v62;
      llvm::operator+(v103, v92, v105);
      v90[0] = ") cpusubtype (";
      v91 = 259;
      llvm::operator+(v105, v90, v107);
      v63 = 36;
      if (*(v119[0] + 12) == -889275714)
      {
        v63 = 16;
      }

      v64 = *(v119 + v63) & 0xFFFFFF;
      v89 = 264;
      LODWORD(v88[0]) = v64;
      llvm::operator+(v107, v88, v110);
      v86[0] = ") not aligned on it's alignment (2^";
      v87 = 259;
      llvm::operator+(v110, v86, v113);
      if (*(v119[0] + 12) == -889275714)
      {
        v65 = &v122;
      }

      else
      {
        v65 = &v127;
      }

      v55 = *v65;
      v85 = 264;
      goto LABEL_103;
    }

LABEL_29:
    if (v20 < v16)
    {
      v103[0] = "cputype (";
      v104 = 259;
      v45 = v17 == -889275714;
      v56 = 32;
      if (v45)
      {
        v56 = 12;
      }

      v57 = *(v119 + v56);
      v102 = 264;
      LODWORD(v101[0]) = v57;
      llvm::operator+(v103, v101, v105);
      v99[0] = ") cpusubtype (";
      v100 = 259;
      llvm::operator+(v105, v99, v107);
      v58 = 36;
      if (*(v119[0] + 12) == -889275714)
      {
        v58 = 16;
      }

      v59 = *(v119 + v58) & 0xFFFFFF;
      v97 = 264;
      LODWORD(v96[0]) = v59;
      llvm::operator+(v107, v96, v110);
      v94[0] = ") offset ";
      v95 = 259;
      llvm::operator+(v110, v94, v113);
      if (*(v119[0] + 12) == -889275714)
      {
        v60 = HIDWORD(v120);
      }

      else
      {
        v60 = v125;
      }

      v86[0] = v60;
      v93 = 268;
      v92[0] = v86;
      llvm::operator+(v113, v92, v116);
      v90[0] = " overlaps universal headers";
      v91 = 259;
      llvm::operator+(v116, v90, &v74);
      malformedError(v88, &v74);
    }

    ++v15;
    v23 = *(a1 + 52);
  }

  while (v15 < v23);
  if (v23)
  {
    v24 = 0;
    do
    {
      llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(v119, a1, v24++);
      v25 = *(a1 + 52);
      if (v24 < v25)
      {
        v26 = v119[0];
        v27 = HIDWORD(v120);
        v70 = v124;
        v71 = v120;
        v28 = v121;
        v69 = v24;
        v29 = v125;
        v30 = v126;
        do
        {
          llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(&v74, a1, v24);
          v31 = *(v26 + 12);
          v32 = 32;
          if (v31 == -889275714)
          {
            v32 = 12;
          }

          v33 = *(v119 + v32);
          v34 = *(v74 + 12);
          v35 = &v75;
          if (v34 != -889275714)
          {
            v35 = v78;
          }

          v36 = *v35;
          if (v33 == v36)
          {
            v37 = v71;
            if (v31 != -889275714)
            {
              v37 = v70;
            }

            v38 = 36;
            if (v34 == -889275714)
            {
              v38 = 16;
            }

            if (((v37 ^ *(&v74 + v38)) & 0xFFFFFF) == 0)
            {
              v107[0] = "contains two of the same architecture (cputype (";
              v108 = v33;
              v109 = 2051;
              v110[0] = v107;
              v111 = ") cpusubtype (";
              v112 = 770;
              v113[0] = v110;
              v114 = (v37 & 0xFFFFFF);
              v115 = 2050;
              v116[0] = v113;
              v117 = "))";
              v118 = 770;
              malformedError(v105, v116);
            }
          }

          if (v31 == -889275714)
          {
            v39 = v27;
          }

          else
          {
            v39 = v29;
          }

          v40 = HIDWORD(v76);
          if (v34 != -889275714)
          {
            v40 = v79;
          }

          if (v39 >= v40)
          {
            v41 = v77;
            if (v34 != -889275714)
            {
              v41 = v80;
            }

            if (v39 < v41 + v40)
            {
              if (v31 == -889275714)
              {
                v42 = v28;
              }

              else
              {
                v42 = v30;
              }

LABEL_108:
              v84[0] = "cputype (";
              v84[2] = v33;
              v85 = 2051;
              v86[0] = v84;
              v86[2] = ") cpusubtype (";
              v87 = 770;
              v45 = v31 == -889275714;
              v66 = v71;
              if (!v45)
              {
                v66 = v70;
              }

              v88[0] = v86;
              v88[2] = v66 & 0xFFFFFF;
              v89 = 2050;
              v90[0] = v88;
              v90[2] = ") at offset ";
              v91 = 770;
              v98 = v39;
              v92[0] = v90;
              v92[2] = &v98;
              v93 = 3074;
              v94[0] = v92;
              v94[2] = " with a size of ";
              v95 = 770;
              v81 = v42;
              v96[0] = v94;
              v96[2] = &v81;
              v97 = 3074;
              v99[0] = v96;
              v99[2] = ", overlaps cputype (";
              v100 = 770;
              v101[0] = v99;
              v101[2] = v36;
              v102 = 2050;
              v103[0] = v101;
              v103[2] = ") cpusubtype (";
              v104 = 770;
              v45 = v34 == -889275714;
              v67 = 36;
              if (v45)
              {
                v67 = 16;
              }

              v68 = *(&v74 + v67) & 0xFFFFFF;
              v105[0] = v103;
              v105[2] = v68;
              v106 = 2050;
              v107[0] = v105;
              v108 = ") at offset ";
              v109 = 770;
              v72 = v41;
              v73 = v40;
              v110[0] = v107;
              v111 = &v73;
              v112 = 3074;
              v113[0] = v110;
              v114 = " with a size of ";
              v115 = 770;
              v116[0] = v113;
              v117 = &v72;
              v118 = 3074;
              malformedError(v82, v116);
            }
          }

          if (v31 == -889275714)
          {
            v42 = v28;
          }

          else
          {
            v42 = v30;
          }

          v43 = v42 + v39;
          if (v42 + v39 > v40)
          {
            v41 = v77;
            if (v34 != -889275714)
            {
              v41 = v80;
            }

            if (v43 < v41 + v40)
            {
              goto LABEL_108;
            }
          }

          if (v39 <= v40)
          {
            v41 = v77;
            if (v34 != -889275714)
            {
              v41 = v80;
            }

            if (v43 >= v41 + v40)
            {
              goto LABEL_108;
            }
          }

          ++v24;
          v25 = *(a1 + 52);
        }

        while (v24 < v25);
        v24 = v69;
      }
    }

    while (v24 < v25);
  }

  *a3 = 0;
  return a1;
}

uint64_t llvm::object::MinidumpFile::getDataSlice(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 + a4 > a3)
  {
    operator new();
  }

  result = a2 + a4;
  *(a1 + 16) &= ~1u;
  *(a1 + 8) = a5;
  *a1 = a2 + a4;
  return result;
}

uint64_t llvm::object::MinidumpFile::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  if (v3 < 0x20)
  {
    operator new();
  }

  v4 = *a1;
  if (**a1 != 1347241037)
  {
    operator new();
  }

  if (*(v4 + 2) != 42899)
  {
    operator new();
  }

  v5 = v4[2];
  v6 = 12 * v5;
  result = llvm::object::MinidumpFile::getDataSlice(&v25, v4, v3, v4[3], 12 * v5);
  v8 = v25;
  if ((v26 & 1) == 0)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if (!v5)
    {
      v17 = *(a2 + 8);
LABEL_30:
      operator new();
    }

    v10 = 0;
    v11 = 0;
    v19 = *(a2 + 8);
    v12 = v25 + 1;
    while (1)
    {
      v13 = *(v12 - 1);
      llvm::object::MinidumpFile::getDataSlice(&v23, v4, v3, v12[1], *v12);
      if (v24)
      {
        v18 = v23;
        *(a2 + 8) = v19 | 1;
        *a2 = v18;
        result = MEMORY[0x277C69E30](v20, 8);
        goto LABEL_9;
      }

      if (v13)
      {
        break;
      }

      if (*v12)
      {
        goto LABEL_17;
      }

LABEL_23:
      ++v11;
      v12 += 3;
      v6 -= 12;
      if (!v6)
      {
        goto LABEL_30;
      }
    }

    if (v13 >= 0xFFFFFFFE)
    {
      operator new();
    }

LABEL_17:
    v25 = 0;
    v14 = v22;
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>,llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>::LookupBucketFor<llvm::minidump::StreamType>(v10, v22, v13, &v25))
    {
      operator new();
    }

    if (4 * v21 + 4 >= 3 * v14)
    {
      v16 = 2 * v14;
    }

    else
    {
      if (v14 + ~v21 - HIDWORD(v21) > v14 >> 3)
      {
LABEL_20:
        v15 = v25;
        LODWORD(v21) = v21 + 1;
        if (*v25 != -1)
        {
          --HIDWORD(v21);
        }

        *v25 = v13;
        *(v15 + 1) = v11;
        goto LABEL_23;
      }

      v16 = v14;
    }

    llvm::DenseMap<llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>::grow(&v20, v16);
    v25 = 0;
    v10 = v20;
    llvm::DenseMapBase<llvm::DenseMap<llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>,llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>::LookupBucketFor<llvm::minidump::StreamType>(v20, v22, v13, &v25);
    goto LABEL_20;
  }

  *(a2 + 8) |= 1u;
  *a2 = v8;
LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::object::MinidumpFile::~MinidumpFile(llvm::object::MinidumpFile *this)
{
  *this = &unk_2883EF140;
  MEMORY[0x277C69E30](*(this + 9), 8);
}

{
  *this = &unk_2883EF140;
  MEMORY[0x277C69E30](*(this + 9), 8);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>,llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>::LookupBucketFor<llvm::minidump::StreamType>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
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
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
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

char *llvm::DenseMap<llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>::grow(uint64_t a1, int a2)
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
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1210)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 4) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1830)))).i32[1])
        {
          *v16 = -1;
          v16[4] = -1;
        }

        v11 += 4;
        v16 += 16;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v19 = 16 * v3;
      v20 = v4;
      do
      {
        v21 = *v20;
        if (*v20 <= 0xFFFFFFFD)
        {
          v32 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>,llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>::LookupBucketFor<llvm::minidump::StreamType>(*a1, *(a1 + 16), v21, &v32);
          v22 = v32;
          *v32 = *v20;
          *(v22 + 1) = *(v20 + 8);
          ++*(a1 + 8);
        }

        v20 += 16;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 3) + 4;
    v28 = vdupq_n_s64(v26);
    v29 = result + 32;
    do
    {
      v30 = vdupq_n_s64(v24);
      v31 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_2750C1210)));
      if (vuzp1_s16(v31, *v28.i8).u8[0])
      {
        *(v29 - 8) = -1;
      }

      if (vuzp1_s16(v31, *&v28).i8[2])
      {
        *(v29 - 4) = -1;
      }

      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_2750C1830)))).i32[1])
      {
        *v29 = -1;
        v29[4] = -1;
      }

      v24 += 4;
      v29 += 16;
    }

    while (v27 != v24);
  }

  return result;
}

void llvm::ModuleSymbolTable::addModule(llvm::ModuleSymbolTable *this, llvm::Module *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (!*this)
  {
    *this = a2;
  }

  v4 = *(a2 + 4);
  v5 = vdupq_n_s64(a2);
  v15 = vaddq_s64(v5, xmmword_2750C3F90);
  v14 = vaddq_s64(v5, xmmword_2750C3FA0);
  v6 = a2 + 24;
  v7 = *(a2 + 2);
  v8 = a2 + 8;
  v9 = *(a2 + 6);
  v10 = a2 + 40;
  v11 = *(a2 + 8);
  v12 = a2 + 56;
  v17 = v4;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21.i64[0] = a2 + 24;
  v21.i64[1] = a2 + 8;
  v22.i64[0] = a2 + 40;
  v22.i64[1] = a2 + 56;
  while (v4 != v6 || v7 != v8 || v9 != v10 || v11 != v12 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v21, v14), vceqq_s64(v22, v15)))) & 1) == 0)
  {
    v23[0] = llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::get<0ul,1ul,2ul,3ul>(&v17);
    std::vector<llvm::PointerUnion<llvm::GlobalValue *,std::pair<std::string,unsigned int> *>>::push_back[abi:nn200100](this + 104, v23);
    llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::increment<0ul,1ul,2ul,3ul>(&v17);
    v4 = v17;
    v7 = v18;
    v9 = v19;
    v11 = v20;
  }

  v16 = this;
  v17 = llvm::function_ref<void ()(llvm::StringRef,llvm::object::BasicSymbolRef::Flags)>::callback_fn<llvm::ModuleSymbolTable::addModule(llvm::Module *)::$_0>;
  v18 = &v16;
  v23[0] = &v17;
  initializeRecordStreamer(a2);
  v13 = *MEMORY[0x277D85DE8];
}

void std::vector<llvm::PointerUnion<llvm::GlobalValue *,std::pair<std::string,unsigned int> *>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void initializeRecordStreamer(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 111);
  if (v1 >= 0)
  {
    v2 = a1 + 88;
  }

  else
  {
    v2 = *(a1 + 88);
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 111);
  }

  else
  {
    v3 = *(a1 + 96);
  }

  if (v3)
  {
    v51[0] = 0;
    v51[1] = 0;
    v52 = 0;
    v66 = 260;
    v63 = (a1 + 208);
    llvm::Triple::Triple(v49, &v63);
    v5 = llvm::TargetRegistry::lookupTarget(v49, v51);
    v6 = v5;
    if (v50 >= 0)
    {
      v7 = v49;
    }

    else
    {
      v7 = v49[0];
    }

    if (v50 >= 0)
    {
      v8 = v50;
    }

    else
    {
      v8 = v49[1];
    }

    MCRegInfo = llvm::Target::createMCRegInfo(v5, v7, v8);
    if (MCRegInfo)
    {
      v10 = MCRegInfo;
      v38[0] = 2048;
      v40 = 2;
      if (v50 >= 0)
      {
        v11 = v49;
      }

      else
      {
        v11 = v49[0];
      }

      if (v50 >= 0)
      {
        v12 = v50;
      }

      else
      {
        v12 = v49[1];
      }

      v39 = 2;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      memset(v48, 0, sizeof(v48));
      MCAsmInfo = llvm::Target::createMCAsmInfo(v6, MCRegInfo, v11, v12, v38);
      if (MCAsmInfo)
      {
        v14 = MCAsmInfo;
        if (v50 >= 0)
        {
          v15 = v49;
        }

        else
        {
          v15 = v49[0];
        }

        if (v50 >= 0)
        {
          v16 = v50;
        }

        else
        {
          v16 = v49[1];
        }

        MCSubtargetInfo = llvm::Target::createMCSubtargetInfo(v6, v15, v16, "", 0, "", 0);
        if (MCSubtargetInfo)
        {
          v18 = MCSubtargetInfo;
          v19 = v6[8];
          if (v19 && v19())
          {
            v66 = 261;
            v63 = "";
            v64 = 0;
            __str.__r_.__value_.__r.__words[0] = &v63;
            v20 = operator new(24, &__str);
            *v20 = &unk_2883EB078;
            *(v20 + 1) = v2;
            *(v20 + 2) = v2 + v3;
            v37 = 0;
            memset(v36, 0, sizeof(v36));
            v65 = 0;
            v64 = 0;
            v63 = v20;
            std::vector<llvm::SourceMgr::SrcBuffer>::push_back[abi:nn200100](v36, &v63);
            llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v63);
            llvm::MCContext::MCContext(&v63, v49, v14, v10, v18, v36, 0, 1, 0, 0);
            v21 = v6[7];
            if (v21)
            {
              v22 = v21(&v63, 0, 0);
              ModuleFlag = llvm::Module::getModuleFlag(a1, "SDK Version", 0xBuLL);
              *(v22 + 872) = getSDKVersionMD(ModuleFlag);
              *(v22 + 880) = v24;
              v67 = v22;
              v25 = llvm::Module::getModuleFlag(a1, "darwin.target_variant.triple", 0x1CuLL);
              if (v25 && **(v25 + 8))
              {
                v26 = llvm::Module::getModuleFlag(a1, "darwin.target_variant.triple", 0x1CuLL);
                if (v26)
                {
                  v27 = *(v26 + 8);
                  v30 = *v27;
                  v29 = (v27 + 3);
                  v28 = v30;
                }

                else
                {
                  v28 = 0;
                  v29 = &str_35;
                }

                v35 = 261;
                v34[0] = v29;
                v34[1] = v28;
                llvm::Triple::Triple(&__str, v34);
                v31 = (v22 + 888);
                if (*(v22 + 936) == 1)
                {
                  std::string::operator=(v31, &__str);
                  *(v22 + 912) = v54;
                  *(v22 + 928) = v55;
                }

                else
                {
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(v31, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    *&v31->__r_.__value_.__l.__data_ = *&__str.__r_.__value_.__l.__data_;
                    *(v22 + 904) = *(&__str.__r_.__value_.__l + 2);
                  }

                  *(v22 + 912) = v54;
                  *(v22 + 928) = v55;
                  *(v22 + 936) = 1;
                }

                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }
              }

              llvm::MCStreamer::MCStreamer(&__str, &v63);
              __str.__r_.__value_.__r.__words[0] = &unk_2883EF190;
              v56 = a1;
              v58 = 0;
              v57 = 0;
              v61 = 0;
              v59 = 0x1000000000;
              v60 = 0;
              v62 = 0;
              v32 = v6[26];
              if (v32)
              {
                v32(&__str);
              }

              llvm::createMCAsmParser(v36, &v63);
            }

            operator new();
          }

          (*(*v18 + 8))(v18);
        }

        (*(*v14 + 8))(v14);
      }

      v63 = &v48[8];
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v63);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(*(&v45 + 1));
      }

      if (SBYTE7(v45) < 0)
      {
        operator delete(v44);
      }

      if (SHIBYTE(v43) < 0)
      {
        operator delete(*(&v42 + 1));
      }

      if (SBYTE7(v42) < 0)
      {
        operator delete(v41);
      }

      MEMORY[0x277C69E30](*(v10 + 184), 4);
      MEMORY[0x277C69E30](*(v10 + 160), 4);
      MEMORY[0x277C69E40](v10, 0x10F0C4031312594);
    }

    if (v50 < 0)
    {
      operator delete(v49[0]);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[0]);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void llvm::ModuleSymbolTable::printSymbolName(uint64_t a1, llvm::raw_ostream *this, uint64_t a3)
{
  v4 = a3 & 0xFFFFFFFFFFFFFFF8;
  if ((a3 & 4) != 0)
  {
    v7 = *(v4 + 23);
    if (v7 >= 0)
    {
      v8 = (a3 & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v8 = *v4;
    }

    if (v7 >= 0)
    {
      v9 = *(v4 + 23);
    }

    else
    {
      v9 = *(v4 + 8);
    }

    llvm::raw_ostream::write(this, v8, v9);
  }

  else
  {
    if ((*(v4 + 32) & 0x300) == 0x100)
    {
      v6 = *(this + 4);
      if ((*(this + 3) - v6) > 5)
      {
        *(v6 + 4) = 24432;
        *v6 = 1835622239;
        *(this + 4) += 6;
      }

      else
      {
        llvm::raw_ostream::write(this, "__imp_", 6uLL);
      }
    }

    llvm::Mangler::getNameWithPrefix((a1 + 128), this, v4, 0);
  }
}

uint64_t llvm::ModuleSymbolTable::getSymbolFlags(uint64_t a1, uint64_t a2)
{
  v2 = (a2 & 0xFFFFFFFFFFFFFFF8);
  if ((a2 & 4) != 0)
  {
    return *(v2 + 6);
  }

  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if ((v3 & 0xF) == 1)
  {
    v5 = 1;
    goto LABEL_15;
  }

  if (*(v2 + 16))
  {
    if (v4 == 3 && (*(v2 + 5) & 0x7FFFFFF) == 0)
    {
      v5 = 1;
      v4 = 3;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if ((v3 & 0x1000000) != 0 || v2[9] != (v2 + 9))
  {
LABEL_12:
    if ((v3 & 0x30) == 0x10)
    {
      v5 = ((v3 & 0xFu) - 7 > 1) << 9;
    }

    else
    {
      v5 = 0;
    }

LABEL_15:
    v7 = v2 == 0;
    if (v2)
    {
      if (v4 == 3)
      {
        v7 = 0;
        if (v2[10])
        {
          v5 |= 0x400u;
        }
      }
    }

    goto LABEL_19;
  }

  v7 = v2 == 0;
  v5 = 1;
LABEL_19:
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v8 = findBaseObject<llvm::GlobalValue::getAliaseeObject(void)::$_0>(v2, v22);
  MEMORY[0x277C69E30](v22[0], 8);
  if (v8 && (*(v8 + 16) | 2) == 2)
  {
    v5 |= 0x800u;
  }

  if (*(v2 + 16) == 1)
  {
    v9 = v5 | 0x20;
  }

  else
  {
    v9 = v5;
  }

  v10 = *(v2 + 8);
  v11 = v10 & 0xF;
  if (v11 == 8)
  {
    v9 |= 0x80u;
  }

  if ((v11 - 7) >= 2)
  {
    v9 |= 2u;
  }

  if (v11 == 10)
  {
    v6 = v9 | 0x10;
  }

  else
  {
    v6 = v9;
  }

  if ((v10 & 0xE) == 2 || (v10 & 0xE) == 4 || llvm::GlobalValue::hasExternalWeakLinkage(v2))
  {
    v6 = v6 | 4;
  }

  if ((*(v2 + 23) & 0x10) != 0)
  {
    ValueName = llvm::Value::getValueName(v2);
    if (*ValueName >= 5uLL && *(ValueName + 16) == 1836477548 && *(ValueName + 20) == 46)
    {
      return v6 | 0x80;
    }
  }

  v14 = *(v2 + 16) != 3 || v7;
  if ((v14 & 1) == 0 && (*(v2 + 34) & 0x80) != 0)
  {
    v15 = ***v2;
    v22[0] = v2;
    v16 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::FindAndConstruct((v15 + 2552), v22);
    if (v16[2] == 13)
    {
      v17 = v16[1];
      v18 = 0x6C6C766D2E6D6574;
      v19 = bswap64(*v17);
      if (v19 == 0x6C6C766D2E6D6574 && (v18 = 0x6D65746164617461, v19 = bswap64(*(v17 + 5)), v19 == 0x6D65746164617461))
      {
        v20 = 0;
      }

      else if (v19 < v18)
      {
        v20 = -1;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        return v6;
      }

      else
      {
        return v6 | 0x80;
      }
    }
  }

  return v6;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>,llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*a1 + 16);
    do
    {
      if ((*(v3 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 1);
        if (v4)
        {
          *v3 = v4;
          operator delete(v4);
        }
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

void llvm::function_ref<void ()(llvm::StringRef,llvm::object::BasicSymbolRef::Flags)>::callback_fn<llvm::ModuleSymbolTable::addModule(llvm::Module *)::$_0>(uint64_t *a1, const void *a2, size_t a3, int a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*a1 + 8, 32, 3);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v9 = v8;
  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + a3) = 0;
  *v9 = __dst;
  *(v9 + 16) = v12;
  *(v9 + 24) = a4;
  v13[0] = v9 | 4;
  std::vector<llvm::PointerUnion<llvm::GlobalValue *,std::pair<std::string,unsigned int> *>>::push_back[abi:nn200100](v7 + 104, v13);
  v10 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(llvm::RecordStreamer &)>::callback_fn<llvm::ModuleSymbolTable::CollectAsmSymbols(llvm::Module const&,llvm::function_ref<void ()(llvm::StringRef,llvm::object::BasicSymbolRef::Flags)>)::$_0>(uint64_t a1, uint64_t a2)
{
  llvm::RecordStreamer::flushSymverDirectives(a2);
  v4 = *(a2 + 312);
  v5 = *(a2 + 320);
  if (v5)
  {
      ;
    }
  }

  else
  {
    i = *(a2 + 312);
  }

  v8 = (v4 + 8 * v5);
  if (i != v8)
  {
    v9 = *i;
    do
    {
      v10 = *(v9 + 8) - 1;
      if (v10 > 5)
      {
        v11 = 2048;
      }

      else
      {
        v11 = dword_2750C78F8[v10];
      }

      (**a1)(*(*a1 + 8), v9 + 16, *v9, v11);
      do
      {
        v12 = i[1];
        ++i;
        v9 = v12;
        if (v12)
        {
          v13 = v9 == -8;
        }

        else
        {
          v13 = 1;
        }
      }

      while (v13);
    }

    while (i != v8);
  }
}

void *llvm::object::ObjectFile::getSymbolValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 40))(&v9);
  if ((v10 & 1) == 0)
  {
    if (v9)
    {
      *(a3 + 8) &= ~1u;
      *a3 = 0;
      goto LABEL_10;
    }

    if ((v9 & 0x10) != 0)
    {
      result = llvm::object::ObjectFile::getCommonSymbolSize(a1, a2);
      goto LABEL_9;
    }

LABEL_6:
    result = (*(*a1 + 96))(a1, a2);
LABEL_9:
    *(a3 + 8) &= ~1u;
    *a3 = result;
    goto LABEL_10;
  }

  v7 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  *(a3 + 8) |= 1u;
  *a3 = v7;
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *llvm::object::ObjectFile::printSymbolName@<X0>(uint64_t a1@<X0>, llvm::raw_ostream *a2@<X1>, const void **a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 80))(v8);
  if (v9)
  {
    *a3 = v8[0];
  }

  else
  {
    result = llvm::raw_ostream::operator<<(a2, v8[0], v8[1]);
    v6 = v9;
    *a3 = 0;
    if (v6)
    {
      result = v8[0];
      v8[0] = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ObjectFile::isSectionBitcode(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  (*(*a1 + 144))(v5);
  if (v6)
  {
    v4 = v5[0];
    v5[0] = 0;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v4);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_14;
    }

    result = v5[0];
    v5[0] = 0;
    if (result)
    {
      (*(*result + 8))(result);
LABEL_14:
      result = 0;
    }
  }

  else
  {
    if (v5[1] != 7)
    {
      goto LABEL_14;
    }

    result = *v5[0] == 1986817070 && *(v5[0] + 3) == 1667394934;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::object::ObjectFile::hasDebugInfo(llvm::object::ObjectFile *this)
{
  v2 = (*(*this + 352))(this);
  v4 = v3;
  v5 = (*(*this + 360))(this);
  v13 = v2;
  v14 = v4;
  if (v4 == v6 && v2 == v5)
  {
    return 0;
  }

  v8 = v5;
  v9 = v6;
  do
  {
    v10 = (*(*v4 + 264))(v4, v2);
    if (v10)
    {
      break;
    }

    (*(*v14 + 136))(v14, &v13);
    v2 = v13;
    v4 = v14;
  }

  while (v14 != v9 || v13 != v8);
  return v10;
}

uint64_t llvm::object::ObjectFile::getRelocatedSection@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) &= ~1u;
  *a3 = a2;
  *(a3 + 8) = result;
  return result;
}

double llvm::object::ObjectFile::makeTriple@<D0>(llvm::object::ObjectFile *this@<X0>, llvm::Triple *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  v4 = (*(*this + 392))(this);
  v5 = v4;
  ArchName = llvm::Triple::getArchName(v4, v4, 0);
  llvm::Triple::setArchName(a2, ArchName, v7);
  if ((v5 - 1) <= 1)
  {
    (*(*this + 416))(this, a2);
  }

  v9 = *(this + 2);
  if ((v9 - 17) <= 3)
  {
    v10 = a2;
    v11 = 5;
LABEL_5:

    return llvm::Triple::setObjectFormat(v10, v11);
  }

  if (v9 != 10)
  {
    if ((v9 - 11) > 1)
    {
      return result;
    }

    llvm::Triple::setOSName(a2, &str_85_0, 3);
    v10 = a2;
    v11 = 8;
    goto LABEL_5;
  }

  if ((*(*this + 392))(this) == 35)
  {
    v12 = "thumbv7-windows";
    v13 = 259;
    return llvm::Triple::setTriple(a2, &v12);
  }

  return result;
}

uint64_t llvm::object::ObjectFile::createObjectFile@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v17 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    a1 = llvm::identify_magic(*a1, *(a1 + 8));
    a2 = a1;
  }

  switch(a2)
  {
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      v9 = v5[1];
      v15 = *v5;
      v16 = v9;
      result = llvm::object::ObjectFile::createELFObjectFile(&v15, a3, a4);
      goto LABEL_12;
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
      v8 = v5[1];
      v15 = *v5;
      v16 = v8;
      llvm::object::ObjectFile::createMachOObjectFile(&v15);
    case 24:
    case 25:
    case 26:
      v10 = v5[1];
      v15 = *v5;
      v16 = v10;
      llvm::object::COFFObjectFile::create();
    case 28:
      v12 = v5[1];
      v15 = *v5;
      v16 = v12;
      goto LABEL_10;
    case 29:
      v11 = v5[1];
      v15 = *v5;
      v16 = v11;
LABEL_10:
      llvm::object::ObjectFile::createXCOFFObjectFile(&v15);
    case 30:
      v13 = v5[1];
      v15 = *v5;
      v16 = v13;
      llvm::object::ObjectFile::createWasmObjectFile();
    default:
      *&v18.__val_ = llvm::object::object_category(a1);
      result = llvm::errorCodeToError(2, v18, a4);
      *(a4 + 8) |= 1u;
LABEL_12:
      v14 = *MEMORY[0x277D85DE8];
      return result;
  }
}

uint64_t llvm::object::OffloadBinary::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 > 0x47)
  {
    v6 = llvm::identify_magic(*a1, v3);
    if (v6 == 34)
    {
      v7 = *a1;
      if ((*a1 & 7) != 0)
      {
        *&v18.__val_ = llvm::object::object_category(v6);
        llvm::errorCodeToError(3, v18, &v14);
        *(a2 + 8) |= 1u;
        result = v14;
      }

      else if (*(v7 + 1) == 1)
      {
        v8 = *(v7 + 1);
        v9 = *(a1 + 8);
        if (v8 <= v9 && (v10 = *(v7 + 2), v10 <= v8 - 40) && *(v7 + 3) <= v8 - 32)
        {
          if (*&v7[v10 + 24] <= v9 && *&v7[v10 + 8] <= v9)
          {
            operator new();
          }

          *&v22.__val_ = llvm::object::object_category(v6);
          llvm::errorCodeToError(4, v22, &v11);
          *(a2 + 8) |= 1u;
          result = v11;
        }

        else
        {
          *&v20.__val_ = llvm::object::object_category(v6);
          llvm::errorCodeToError(4, v20, &v12);
          *(a2 + 8) |= 1u;
          result = v12;
        }
      }

      else
      {
        *&v21.__val_ = llvm::object::object_category(v6);
        llvm::errorCodeToError(3, v21, &v13);
        *(a2 + 8) |= 1u;
        result = v13;
      }
    }

    else
    {
      *&v19.__val_ = llvm::object::object_category(v6);
      llvm::errorCodeToError(3, v19, &v15);
      *(a2 + 8) |= 1u;
      result = v15;
    }
  }

  else
  {
    *&v17.__val_ = llvm::object::object_category(a1);
    llvm::errorCodeToError(3, v17, &v16);
    *(a2 + 8) |= 1u;
    result = v16;
  }

  *a2 = result;
  return result;
}

uint64_t llvm::object::OffloadBinary::OffloadBinary(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v5 = a2[1];
  *(a1 + 8) = 8;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *a1 = &unk_2883EF168;
  *(a1 + 48) = 0;
  v35 = a1 + 48;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = (a1 + 72);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v8 = *a2;
  *(a1 + 96) = *a2;
  *(a1 + 104) = a3;
  *(a1 + 112) = a4;
  v9 = *(a4 + 16);
  if (v9)
  {
    v10 = (*(a4 + 8) + v8 + 8);
    v36 = (a1 + 72);
    while (1)
    {
      v11 = *(a1 + 96);
      v12 = *(v10 - 1);
      v13 = v11 + v12;
      if (v11)
      {
        v14 = strlen((v11 + v12));
        v15 = &(*v10)[v11];
        v16 = strlen(v15);
      }

      else
      {
        v14 = 0;
        v16 = 0;
        v15 = *v10;
      }

      *&v38 = v13;
      *(&v38 + 1) = v14;
      v39 = 0;
      v40 = 0;
      v17 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(*(a1 + 48), *(a1 + 64), &v38, &v40);
      v18 = v40;
      if ((v17 & 1) == 0)
      {
        break;
      }

      v19 = *(v40 + 16);
      v20 = *v7;
LABEL_27:
      v33 = &v20[32 * v19];
      *(v33 + 2) = v15;
      *(v33 + 3) = v16;
      v10 += 2;
      if (!--v9)
      {
        return a1;
      }
    }

    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    if (4 * v21 + 4 >= 3 * v22)
    {
      v22 *= 2;
    }

    else if (v22 + ~v21 - *(a1 + 60) > v22 >> 3)
    {
LABEL_10:
      ++*(a1 + 56);
      if (*v18 != -1)
      {
        --*(a1 + 60);
      }

      *v18 = v38;
      *(v18 + 16) = 0;
      v23 = *(a1 + 80);
      v24 = *(a1 + 88);
      if (v23 >= v24)
      {
        v37 = v16;
        v26 = *v7;
        v27 = v23 - v26;
        v28 = (v23 - v26) >> 5;
        v29 = v28 + 1;
        if ((v28 + 1) >> 59)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v30 = v24 - v26;
        if (v30 >> 4 > v29)
        {
          v29 = v30 >> 4;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFE0)
        {
          v31 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          if (!(v31 >> 59))
          {
            operator new();
          }

          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v32 = (32 * v28);
        *v32 = v13;
        v32[1] = v14;
        v32[2] = 0;
        v32[3] = 0;
        v25 = 32 * v28 + 32;
        memcpy(0, v26, v27);
        *(a1 + 72) = 0;
        *(a1 + 80) = v25;
        *(a1 + 88) = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v7 = v36;
        v16 = v37;
      }

      else
      {
        *v23 = v13;
        *(v23 + 1) = v14;
        v25 = (v23 + 32);
        *(v23 + 2) = 0;
        *(v23 + 3) = 0;
      }

      *(a1 + 80) = v25;
      v20 = *(a1 + 72);
      v19 = ((v25 - v20) >> 5) - 1;
      *(v18 + 16) = v19;
      goto LABEL_27;
    }

    llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::grow(v35, v22);
    v40 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(*(a1 + 48), *(a1 + 64), &v38, &v40);
    v18 = v40;
    goto LABEL_10;
  }

  return a1;
}

void llvm::object::OffloadBinary::~OffloadBinary(llvm::object::OffloadBinary *this)
{
  *this = &unk_2883EF168;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  MEMORY[0x277C69E30](*(this + 6), 8);
}

{
  *this = &unk_2883EF168;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  MEMORY[0x277C69E30](*(this + 6), 8);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v9 = a1 + 24 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8)))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -1)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v9 == -2;
        }

        if (v13)
        {
          v11 = v9;
        }

        v17 = v11;
        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = a1 + 24 * v8;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8));
        v11 = v17;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a4 = v9;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 24 * v10;
      do
      {
        *result = xmmword_2750C1220;
        result = (result + 24);
        v11 -= 24;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 24 * v3;
      v13 = v4;
      do
      {
        if (*v13 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(*a1, *(a1 + 16), v13, &v17);
          v14 = v17;
          *v17 = *v13;
          *(v14 + 4) = *(v13 + 16);
          ++*(a1 + 8);
        }

        v13 += 24;
        v12 -= 24;
      }

      while (v12);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 24 * v15;
    do
    {
      *result = xmmword_2750C1220;
      result = (result + 24);
      v16 -= 24;
    }

    while (v16);
  }

  return result;
}

uint64_t *llvm::RecordStreamer::markDefined(llvm::RecordStreamer *this, const llvm::MCSymbol *a2)
{
  if ((*a2 & 4) != 0)
  {
    v4 = *(a2 - 1);
    v5 = *v4;
    v2 = v4 + 2;
    v3 = v5;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  result = llvm::StringMap<llvm::RecordStreamer::State,llvm::MallocAllocator>::try_emplace<>((this + 312), v2, v3);
  v7 = *(*result + 8);
  if (v7 <= 6 && ((0x6Fu >> v7) & 1) != 0)
  {
    *(*result + 8) = dword_2750C7910[v7];
  }

  return result;
}

uint64_t *llvm::RecordStreamer::markUsed(llvm::RecordStreamer *this, const llvm::MCSymbol *a2)
{
  if ((*a2 & 4) != 0)
  {
    v4 = *(a2 - 1);
    v5 = *v4;
    v2 = v4 + 2;
    v3 = v5;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  result = llvm::StringMap<llvm::RecordStreamer::State,llvm::MallocAllocator>::try_emplace<>((this + 312), v2, v3);
  v7 = *(*result + 8);
  if (v7 == 5 || v7 == 0)
  {
    *(*result + 8) = 5;
  }

  return result;
}

uint64_t *llvm::RecordStreamer::emitLabel(llvm::RecordStreamer *a1, llvm::MCSymbol *a2)
{
  llvm::MCStreamer::emitLabel(a1, a2, 0);

  return llvm::RecordStreamer::markDefined(a1, a2);
}

uint64_t llvm::RecordStreamer::emitAssignment(llvm::RecordStreamer *a1, const llvm::MCSymbol *a2, unsigned __int8 *a3)
{
  llvm::RecordStreamer::markDefined(a1, a2);

  return llvm::MCStreamer::emitAssignment(a1, a2, a3);
}

uint64_t llvm::RecordStreamer::emitSymbolAttribute(llvm::RecordStreamer *this, llvm::MCSymbol *a2, int a3)
{
  switch(a3)
  {
    case 24:
      goto LABEL_4;
    case 16:
LABEL_18:
      llvm::RecordStreamer::markUsed(this, a2);
      return 1;
    case 9:
LABEL_4:
      if ((*a2 & 4) != 0)
      {
        v8 = *(a2 - 1);
        v9 = *v8;
        v6 = v8 + 2;
        v7 = v9;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v10 = llvm::StringMap<llvm::RecordStreamer::State,llvm::MallocAllocator>::try_emplace<>((this + 312), v6, v7);
      v11 = *(*v10 + 8);
      if (v11 <= 5)
      {
        v12 = 1 << v11;
        if ((v12 & 0x23) != 0)
        {
          if (a3 == 24)
          {
            v13 = 6;
          }

          else
          {
            v13 = 1;
          }
        }

        else
        {
          if ((v12 & 0xC) == 0)
          {
            goto LABEL_17;
          }

          if (a3 == 24)
          {
            v13 = 4;
          }

          else
          {
            v13 = 3;
          }
        }

        *(*v10 + 8) = v13;
      }

LABEL_17:
      if (a3 == 16)
      {
        goto LABEL_18;
      }

      break;
  }

  return 1;
}

void llvm::RecordStreamer::emitELFSymverDirective(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  v9 = v25;
  if (v8)
  {
    goto LABEL_7;
  }

  v10 = *(a1 + 344);
  v11 = *(a1 + 352);
  if (4 * v10 + 4 >= 3 * v11)
  {
    v11 *= 2;
    goto LABEL_21;
  }

  if (v11 + ~v10 - *(a1 + 348) <= v11 >> 3)
  {
LABEL_21:
    llvm::DenseMap<llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>::grow(a1 + 336, v11);
    v25 = 0;
    v9 = v25;
  }

  ++*(a1 + 344);
  if (*v9 != -4096)
  {
    --*(a1 + 348);
  }

  *v9 = a2;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0;
LABEL_7:
  v13 = v9[2];
  v12 = v9[3];
  if (v13 >= v12)
  {
    v15 = v9[1];
    v16 = (v13 - v15) >> 4;
    v17 = v16 + 1;
    if ((v16 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v18 = v12 - v15;
    if (v18 >> 3 > v17)
    {
      v17 = v18 >> 3;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF0)
    {
      v19 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::StringRef>>((v9 + 1), v19);
    }

    v20 = (16 * v16);
    *v20 = a3;
    v20[1] = a4;
    v14 = 16 * v16 + 16;
    v21 = v9[1];
    v22 = v9[2] - v21;
    v23 = (16 * v16 - v22);
    memcpy(v23, v21, v22);
    v24 = v9[1];
    v9[1] = v23;
    v9[2] = v14;
    v9[3] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v13 = a3;
    v13[1] = a4;
    v14 = (v13 + 2);
  }

  v9[2] = v14;
}

void llvm::RecordStreamer::flushSymverDirectives(llvm::RecordStreamer *this)
{
  v1 = 0;
  v117[8] = *MEMORY[0x277D85DE8];
  v105 = 0;
  v106 = 0;
  v107 = 0x1000000000;
  v103[0] = 0;
  v103[1] = 0;
  v104 = 0;
  v115 = v117;
  v116 = xmmword_2750C1860;
  v2 = *(this + 38);
  v3 = v2[4];
  v4 = v2[2];
  v5 = v2[6];
  v6 = v2[8];
  v7 = vdupq_n_s64(v2);
  v88 = vaddq_s64(v7, xmmword_2750C3F90);
  v87 = vaddq_s64(v7, xmmword_2750C3FA0);
  v8 = v2 + 3;
  v9 = v2 + 1;
  v10 = v2 + 5;
  *&v98 = v3;
  *(&v98 + 1) = v4;
  v99 = v5;
  v100 = v6;
  v101.i64[0] = (v2 + 3);
  v101.i64[1] = (v2 + 1);
  v102.i64[0] = (v2 + 5);
  v102.i64[1] = (v2 + 7);
  v90 = v2 + 7;
  v83 = v2 + 5;
  v85 = v2 + 3;
  while (v3 != v8 || v4 != v9 || v5 != v10 || v6 != v90 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v101, v87), vceqq_s64(v102, v88)))) & 1) == 0)
  {
    v11 = 0;
    v114 = 0;
    v112 = 0;
    v110 = 0;
    *&v109 = 0;
    v108 = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<0ul>;
    *(&v109 + 1) = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<1ul>;
    v111 = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<2ul>;
    v113 = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<3ul>;
    do
    {
      v12 = *(&v108 + v11);
      v13 = *(&v108 + v11 + 8);
      v14 = (&v98 + (v13 >> 1));
      if (v13)
      {
        v12 = *(*v14 + v12);
      }

      v15 = v12(v14);
      v11 += 16;
    }

    while (!v15);
    v16 = v15;
    if ((*(v15 + 23) & 0x10) != 0)
    {
      *&v116 = 0;
      v17 = *llvm::Value::getValueName(v15) + 1;
      if (*(&v116 + 1) < v17)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v115, v117, v17, 1);
      }

      llvm::Mangler::getNameWithPrefix(v103, &v115, v16, 0);
      v19 = v115;
      v18 = v116;
      v20 = llvm::StringMapImpl::LookupBucketFor(&v105, v115, v116);
      v1 = v105;
      v21 = v20;
      v22 = v105[v20];
      if (v22 == -8)
      {
        LODWORD(v107) = v107 - 1;
      }

      else if (v22)
      {
LABEL_27:
        *(v22 + 8) = v16;
        goto LABEL_28;
      }

      v23 = v9;
      v24 = operator new(v18 + 17, 8uLL);
      v25 = v24;
      v26 = (v24 + 2);
      if (v18)
      {
        memcpy(v24 + 2, v19, v18);
      }

      v26[v18] = 0;
      *v25 = v18;
      v25[1] = 0;
      v1[v21] = v25;
      ++HIDWORD(v106);
      v27 = llvm::StringMapImpl::RehashTable(&v105, v21);
      v1 = v105;
      v28 = v27;
      v9 = v23;
      v10 = v83;
      v8 = v85;
      while (1)
      {
        v22 = v105[v28];
        v29 = !v22 || v22 == -8;
        if (!v29)
        {
          break;
        }

        ++v28;
      }

      goto LABEL_27;
    }

LABEL_28:
    v30 = 0;
    v114 = 0;
    v112 = 0;
    v110 = 0;
    *&v109 = 0;
    v108 = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<0ul>;
    *(&v109 + 1) = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<1ul>;
    v111 = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<2ul>;
    v113 = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<3ul>;
    do
    {
      v31 = *(&v108 + v30);
      v32 = *(&v108 + v30 + 8);
      v33 = (&v98 + (v32 >> 1));
      if (v32)
      {
        v31 = *(*v33 + v31);
      }

      if (v31(v33))
      {
        break;
      }

      v29 = v30 == 48;
      v30 += 16;
    }

    while (!v29);
    v4 = *(&v98 + 1);
    v3 = v98;
    v5 = v99;
    v6 = v100;
  }

  v34 = this;
  if (*(this + 86))
  {
    v35 = *(this + 88);
    if (v35)
    {
      v36 = 32 * v35;
      v37 = *(this + 42);
      while ((*v37 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v37 += 4;
        v36 -= 32;
        if (!v36)
        {
          goto LABEL_111;
        }
      }
    }

    else
    {
      v37 = *(this + 42);
    }

    v38 = *(this + 42) + 32 * v35;
    if (v37 != v38)
    {
      v39 = &v110;
      v81 = v106;
      v84 = v38;
LABEL_44:
      v40 = *v37;
      if ((**v37 & 4) != 0)
      {
        v43 = *(v40 - 1);
        v44 = *v43;
        v41 = v43 + 2;
        v42 = v44;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      Key = llvm::StringMapImpl::FindKey(v34 + 39, v41, v42);
      v89 = v40;
      if (Key == -1 || Key == *(v34 + 80))
      {
        v46 = 0;
        goto LABEL_50;
      }

      v46 = *(*(*(v34 + 39) + 8 * Key) + 8);
      v57 = v46 - 1;
      if ((v46 - 1) >= 6 || ((0x2Du >> v57) & 1) == 0)
      {
LABEL_50:
        v47 = 0;
        v91 = (v46 - 2) < 3;
        v48 = 1;
        goto LABEL_51;
      }

      v47 = dword_2750C792C[v57];
      if ((v46 - 2) < 3)
      {
        goto LABEL_75;
      }

      v91 = 0;
      v48 = 0;
LABEL_51:
      if ((*v40 & 4) != 0)
      {
        v51 = *(v40 - 1);
        v52 = *v51;
        v49 = v51 + 2;
        v50 = v52;
      }

      else
      {
        v49 = 0;
        v50 = 0;
      }

      v53 = llvm::ValueSymbolTable::lookup(*(*(v34 + 38) + 112), v49, v50);
      if (!v53)
      {
        if ((*v40 & 4) != 0)
        {
          v58 = *(v40 - 1);
          v59 = *v58;
          v55 = v58 + 2;
          v56 = v59;
        }

        else
        {
          v55 = 0;
          v56 = 0;
        }

        v60 = llvm::StringMapImpl::FindKey(&v105, v55, v56);
        if (v60 == -1 || v60 == v81 || (v53 = *(v1[v60] + 8)) == 0)
        {
LABEL_89:
          v65 = v37[1];
          v66 = v37[2];
          if (v65 != v66)
          {
            v67 = "@";
            if (v91)
            {
              v67 = "@@";
            }

            v86 = v67;
            do
            {
              v97 = *v65;
              llvm::StringRef::split(&v97, "@@@", 3uLL, v94);
              v68 = v39;
              v108 = v39;
              v109 = xmmword_2750C1290;
              if (v96 && *v95 != 64)
              {
                v93 = 773;
                v92[0] = v94[0];
                v92[1] = v94[1];
                v92[2] = v86;
                *&v98 = v92;
                v99 = v95;
                v100 = v96;
                v101.i16[0] = 1282;
                *&v97 = llvm::Twine::toStringRef(&v98, &v108);
                *(&v97 + 1) = v69;
              }

              v70 = *(v34 + 1);
              v101.i16[0] = 261;
              v98 = v97;
              Symbol = llvm::MCContext::getOrCreateSymbol(v70, &v98);
              v72 = *(this + 1);
              v73 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v72 + 184, 24, 3);
              v74 = v73;
              v75 = *(v72 + 144);
              v34 = this;
              if (*(v75 + 18))
              {
                v76 = 0x10000;
              }

              else
              {
                v76 = 0;
              }

              *v73 = 2;
              *(v73 + 1) = v76 | (*(v73 + 4) << 24);
              *(v73 + 8) = 0;
              *(v73 + 16) = v89;
              if (v91)
              {
                llvm::RecordStreamer::markDefined(this, Symbol);
              }

              llvm::MCStreamer::emitAssignment(this, Symbol, v74);
              if (v47)
              {
                (*(*this + 296))(this, Symbol, v47);
              }

              v39 = v68;
              if (v108 != v68)
              {
                free(v108);
              }

              ++v65;
            }

            while (v65 != v66);
          }

          for (v37 += 4; v37 != v84; v37 += 4)
          {
            if ((*v37 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              if (v37 != v84)
              {
                goto LABEL_44;
              }

              goto LABEL_111;
            }
          }

          goto LABEL_111;
        }
      }

      if (v48)
      {
        v54 = *(v53 + 32) & 0xF;
        if (v54)
        {
          if ((v54 - 7) >= 2)
          {
            v61 = v54 - 2;
            if (v61 > 8)
            {
              v47 = 0;
            }

            else
            {
              v47 = dword_2750C7944[v61];
            }
          }

          else
          {
            v47 = 17;
          }
        }

        else
        {
          v47 = 9;
        }
      }

      if (v91)
      {
LABEL_75:
        v62 = 1;
LABEL_88:
        v91 = v62;
        goto LABEL_89;
      }

      if ((*(v53 + 32) & 0xF) == 1)
      {
        v91 = 0;
        goto LABEL_89;
      }

      if (*(v53 + 16))
      {
        if (*(v53 + 16) == 3)
        {
          v63 = (*(v53 + 20) & 0x7FFFFFF) == 0;
LABEL_84:
          v64 = v63;
LABEL_87:
          v62 = v64 ^ 1;
          goto LABEL_88;
        }
      }

      else if (*(v53 + 72) == v53 + 72)
      {
        v63 = (*(v53 + 32) & 0x1000000) == 0;
        goto LABEL_84;
      }

      v64 = 0;
      goto LABEL_87;
    }
  }

LABEL_111:
  if (v115 != v117)
  {
    free(v115);
  }

  MEMORY[0x277C69E30](v103[0], 8);
  if (HIDWORD(v106))
  {
    v77 = v106;
    if (v106)
    {
      v78 = v1;
      do
      {
        if (*v78 != -8 && *v78 != 0)
        {
          MEMORY[0x277C69E30]();
        }

        ++v78;
        --v77;
      }

      while (v77);
    }
  }

  free(v1);
  v80 = *MEMORY[0x277D85DE8];
}

void llvm::RecordStreamer::~RecordStreamer(llvm::RecordStreamer *this)
{
  *this = &unk_2883EF190;
  llvm::DenseMapBase<llvm::DenseMap<llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>,llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>::destroyAll(this + 84);
  MEMORY[0x277C69E30](*(this + 42), 8);
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(this + 312);

  llvm::MCStreamer::~MCStreamer(this);
}

{
  *this = &unk_2883EF190;
  llvm::DenseMapBase<llvm::DenseMap<llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>,llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>::destroyAll(this + 84);
  MEMORY[0x277C69E30](*(this + 42), 8);
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(this + 312);
  llvm::MCStreamer::~MCStreamer(this);

  JUMPOUT(0x277C69E40);
}

uint64_t *llvm::StringMap<llvm::RecordStreamer::State,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3)
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

  v11 = operator new(a3 + 17, 8uLL);
  v12 = v11;
  v13 = v11 + 16;
  if (a3)
  {
    memcpy(v11 + 16, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  *(v12 + 2) = 0;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

char *llvm::DenseMap<llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>::grow(uint64_t a1, int a2)
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
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 8;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 32 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          v21 = v30;
          *v30 = *v19;
          v21[1] = 0;
          v21[2] = 0;
          v21[3] = 0;
          *(v21 + 1) = *(v19 + 8);
          v21[3] = *(v19 + 24);
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          *(v19 + 24) = 0;
          ++*(a1 + 8);
        }

        v19 += 32;
        v18 -= 32;
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
    v24 = v22 + 0x7FFFFFFFFFFFFFFLL;
    v25 = v24 & 0x7FFFFFFFFFFFFFFLL;
    v26 = (v24 & 0x7FFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 32;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 4) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 8;
    }

    while (v26 != v23);
  }

  return result;
}

BOOL llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  if (*a1 != v2)
  {
    *a1 = *(v1 + 8);
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 40);
  if (v1 != v2)
  {
    *(a1 + 8) = *(v1 + 8);
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<2ul>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 48);
  if (v1 != v2)
  {
    *(a1 + 16) = *(v1 + 8);
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<3ul>(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 56);
  if (v1 != v2)
  {
    *(a1 + 24) = *(v1 + 8);
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<0ul>(void *a1)
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

uint64_t llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<1ul>(uint64_t a1)
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

uint64_t llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<2ul>(uint64_t a1)
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

uint64_t llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<3ul>(uint64_t a1)
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

uint64_t llvm::object::SymbolicFile::createSymbolicFile@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = a1;
  v32 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    a1 = llvm::identify_magic(*a1, *(a1 + 8));
    a2 = a1;
  }

  if (a2 > 0x1E)
  {
    goto LABEL_20;
  }

  if (((1 << a2) & 0x772FFFF8) == 0)
  {
    if (a2 == 1 && a3)
    {
      v19 = v7[1];
      v27 = *v7;
      v28 = v19;
      llvm::object::IRObjectFile::create(&v27, v24);
      *(a5 + 8) = *(a5 + 8) & 0xFE | BYTE8(v24[0]) & 1;
      v20 = *&v24[0];
      *&v24[0] = 0;
      *a5 = v20;
      result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(v24);
      goto LABEL_8;
    }

LABEL_20:
    *&v33.__val_ = llvm::object::object_category(a1);
    result = llvm::errorCodeToError(2, v33, a5);
    *(a5 + 8) |= 1u;
    goto LABEL_8;
  }

  if (((1 << a2) & 0x742FFDE8) != 0)
  {
    v9 = v7[1];
    v27 = *v7;
    v28 = v9;
    llvm::object::ObjectFile::createObjectFile(&v27, a2, a4, v24);
    *(a5 + 8) = *(a5 + 8) & 0xFE | BYTE8(v24[0]) & 1;
    v10 = *&v24[0];
    *&v24[0] = 0;
    *a5 = v10;
    v11 = v24;
  }

  else
  {
    if (((1 << a2) & 0x1000210) == 0)
    {
      operator new();
    }

    v14 = v7[1];
    v27 = *v7;
    v28 = v14;
    llvm::object::ObjectFile::createObjectFile(&v27, a2, a4, &v30);
    if (!a3 || (v31 & 1) != 0)
    {
      *(a5 + 8) = *(a5 + 8) & 0xFE | v31 & 1;
      v18 = v30;
      v30 = 0;
      *a5 = v18;
    }

    else
    {
      llvm::object::IRObjectFile::findBitcodeInObject(v30, v15, &v27);
      if (v29)
      {
        v16 = v27;
        *&v27 = 0;
        *&v24[0] = v16;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v24);
        if (*&v24[0])
        {
          (*(**&v24[0] + 8))(*&v24[0]);
        }

        *(a5 + 8) = *(a5 + 8) & 0xFE | v31 & 1;
        v17 = v30;
        v30 = 0;
        *a5 = v17;
      }

      else
      {
        v21 = v7[1];
        v24[0] = v27;
        v24[1] = v21;
        llvm::object::IRObjectFile::create(v24, &v25);
        *(a5 + 8) = *(a5 + 8) & 0xFE | v26 & 1;
        v22 = v25;
        v25 = 0;
        *a5 = v22;
        llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v25);
      }

      if (v29)
      {
        v23 = v27;
        *&v27 = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }
      }
    }

    v11 = &v30;
  }

  result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(v11);
LABEL_8:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *llvm::object::COFFImportFile::printSymbolName@<X0>(llvm::raw_ostream *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!a3)
  {
    v7 = *(this + 4);
    if ((*(this + 3) - v7) > 5)
    {
      *(v7 + 4) = 24432;
      *v7 = 1835622239;
      *(this + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(this, "__imp_", 6uLL);
    }
  }

  v8 = *(a2 + 16);
  v9 = strlen((v8 + 20));
  result = llvm::raw_ostream::operator<<(this, (v8 + 20), v9);
  *a4 = 0;
  return result;
}

uint64_t llvm::object::COFFImportFile::symbol_end(llvm::object::COFFImportFile *this)
{
  if ((*(*(this + 2) + 18) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

BOOL llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>::count(uint64_t a1, int *a2)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *a2;
      result = 1;
      do
      {
        v5 = *(v2 + 7);
        if (v3 >= v5)
        {
          if (v5 >= v3)
          {
            return result;
          }

          ++v2;
        }

        v2 = *v2;
      }

      while (v2);
    }

    return 0;
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    v8 = *a1 + 4 * v7;
    if (v7)
    {
      v9 = 4 * v7;
      while (*v6 != *a2)
      {
        ++v6;
        v9 -= 4;
        if (!v9)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v6 = v8;
    }

    return v6 != v8;
  }
}

uint64_t llvm::MachO::SymbolSet::symbols@<X0>(uint64_t this@<X0>, int64x2_t *a2@<X8>)
{
  v3 = *(this + 96);
  v4 = *(this + 112);
  if (*(this + 104))
  {
    v5 = this;
    v8.i64[0] = *(this + 96);
    v8.i64[1] = v3 + 32 * v4;
    this = llvm::DenseMapIterator<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>,true>::AdvancePastEmptyBuckets(&v8);
    v6 = v8;
    v3 = *(v5 + 96);
    v4 = *(v5 + 112);
  }

  else
  {
    v6 = vdupq_n_s64(v3 + 32 * v4);
  }

  *a2 = v6;
  v7 = v3 + 32 * v4;
  a2[1].i64[0] = v7;
  a2[1].i64[1] = v7;
  return this;
}

uint64_t llvm::object::TapiUniversal::TapiUniversal(uint64_t a1, __int128 *a2, llvm::MachO::InterfaceFile **a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  *(a1 + 8) = 4;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = 0u;
  v7 = (a1 + 48);
  *a1 = &unk_2883EF708;
  *(a1 + 64) = 0u;
  v8 = a2[1];
  v75[0] = *a2;
  v75[1] = v8;
  llvm::MachO::TextAPIReader::get(v75, &v76);
  v9 = v76;
  v76 = 0;
  if ((v77 & 1) == 0)
  {
    std::unique_ptr<llvm::MachO::InterfaceFile>::reset[abi:nn200100](v7, v9);
    v10 = *v7;
    v11 = *(*v7 + 287);
    if (v11 >= 0)
    {
      v12 = *v7 + 264;
    }

    else
    {
      v12 = *(*v7 + 33);
    }

    if (v11 >= 0)
    {
      v13 = *(*v7 + 287);
    }

    else
    {
      v13 = *(*v7 + 34);
    }

    v14 = *(v10 + 26);
    if (v14)
    {
      LODWORD(v15) = 0;
      v16 = *(v10 + 12);
      v17 = 24 * v14;
      do
      {
        v18 = *v16;
        v16 += 24;
        v19 = 1 << v18;
        if (v18 == 16)
        {
          v20 = 0;
        }

        else
        {
          v20 = v19;
        }

        v15 = v20 | v15;
        v17 -= 24;
      }

      while (v17);
      if (v15)
      {
        LODWORD(v21) = 0;
LABEL_66:
        v59 = *(a1 + 64);
LABEL_67:
        v60 = *(a1 + 72);
        if (v59 >= v60)
        {
          v61 = *(a1 + 56);
          v62 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v61) >> 3);
          v63 = v62 + 1;
          if (v62 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_86:
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v64 = 0xAAAAAAAAAAAAAAABLL * ((v60 - v61) >> 3);
          if (2 * v64 > v63)
          {
            v63 = 2 * v64;
          }

          if (v64 >= 0x555555555555555)
          {
            v65 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v65 = v63;
          }

          if (v65)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::StringRef,BOOL>>>(v65);
          }

          v66 = 8 * ((v59 - v61) >> 3);
          *v66 = v12;
          *(v66 + 8) = v13;
          *(v66 + 16) = v21;
          v59 = v66 + 24;
          v67 = *(a1 + 56);
          v68 = *(a1 + 64) - v67;
          v69 = 24 * v62 - v68;
          memcpy((v66 - v68), v67, v68);
          v70 = *(a1 + 56);
          *(a1 + 56) = v69;
          *(a1 + 64) = v59;
          *(a1 + 72) = 0;
          if (v70)
          {
            operator delete(v70);
          }
        }

        else
        {
          *v59 = v12;
          *(v59 + 8) = v13;
          *(v59 + 16) = v21;
          v59 += 24;
        }

        *(a1 + 64) = v59;
        v71 = v21;
        if ((v21 & 0xFFFFFFE0) != 0)
        {
          v72 = v21;
        }

        else
        {
          v72 = 31;
        }

        while (v72 != v71)
        {
          LODWORD(v21) = v71 + 1;
          v73 = v15 >> v71++;
          if ((v73 & 2) != 0)
          {
            if (v21 != -1)
            {
              goto LABEL_67;
            }

            break;
          }
        }

LABEL_22:
        v25 = *(*v7 + 47);
        v24 = *(*v7 + 48);
        if (v25 == v24)
        {
          goto LABEL_65;
        }

        v74 = *(*v7 + 48);
        while (1)
        {
          v26 = *v25;
          v27 = *(*v25 + 287);
          v28 = *(*v25 + 272);
          if (v27 >= 0)
          {
            v29 = *v25 + 264;
          }

          else
          {
            v29 = *(*v25 + 264);
          }

          if (v27 >= 0)
          {
            v28 = *(*v25 + 287);
          }

          v30 = *(v26 + 104);
          if (!v30)
          {
            break;
          }

          LODWORD(v31) = 0;
          v32 = *(v26 + 96);
          v33 = 24 * v30;
          do
          {
            v34 = *v32;
            v32 += 24;
            v35 = 1 << v34;
            if (v34 == 16)
            {
              v36 = 0;
            }

            else
            {
              v36 = v35;
            }

            v31 = v36 | v31;
            v33 -= 24;
          }

          while (v33);
          if ((v31 & 1) == 0)
          {
            goto LABEL_38;
          }

          LODWORD(v37) = 0;
LABEL_44:
          v40 = *(a1 + 64);
          do
          {
            v41 = *(a1 + 72);
            if (v40 >= v41)
            {
              v42 = *(a1 + 56);
              v43 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v42) >> 3);
              v44 = v43 + 1;
              if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_86;
              }

              v45 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v42) >> 3);
              if (2 * v45 > v44)
              {
                v44 = 2 * v45;
              }

              if (v45 >= 0x555555555555555)
              {
                v46 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v46 = v44;
              }

              if (v46)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::StringRef,BOOL>>>(v46);
              }

              v47 = 8 * ((v40 - v42) >> 3);
              v48 = v29;
              *v47 = v29;
              *(v47 + 8) = v28;
              v49 = v28;
              *(v47 + 16) = v37;
              v40 = v47 + 24;
              v50 = *(a1 + 56);
              v51 = *(a1 + 64) - v50;
              v52 = 24 * v43 - v51;
              memcpy((v47 - v51), v50, v51);
              v53 = *(a1 + 56);
              *(a1 + 56) = v52;
              *(a1 + 64) = v40;
              *(a1 + 72) = 0;
              if (v53)
              {
                operator delete(v53);
              }

              v24 = v74;
              v29 = v48;
              v28 = v49;
            }

            else
            {
              *v40 = v29;
              *(v40 + 8) = v28;
              *(v40 + 16) = v37;
              v40 += 24;
            }

            *(a1 + 64) = v40;
            v54 = v37;
            if ((v37 & 0xFFFFFFE0) != 0)
            {
              v55 = v37;
            }

            else
            {
              v55 = 31;
            }

            do
            {
              if (v55 == v54)
              {
                goto LABEL_42;
              }

              LODWORD(v37) = v54 + 1;
              v56 = v31 >> v54++;
            }

            while ((v56 & 2) == 0);
          }

          while (v37 != -1);
LABEL_42:
          v25 += 2;
          if (v25 == v24)
          {
            goto LABEL_65;
          }
        }

        v31 = 0;
LABEL_38:
        v38 = 0;
        while (v38 != 31)
        {
          v37 = v38 + 1;
          v39 = v31 >> v38++;
          if ((v39 & 2) != 0)
          {
            if (v37 != 0xFFFFFFFFLL)
            {
              goto LABEL_44;
            }

            goto LABEL_42;
          }
        }

        goto LABEL_42;
      }
    }

    else
    {
      v15 = 0;
    }

    v22 = 0;
    while (v22 != 31)
    {
      v21 = v22 + 1;
      v23 = v15 >> v22++;
      if ((v23 & 2) != 0)
      {
        if (v21 != 0xFFFFFFFFLL)
        {
          goto LABEL_66;
        }

        goto LABEL_22;
      }
    }

    goto LABEL_22;
  }

  *a3 = v9;
LABEL_65:
  llvm::Expected<std::unique_ptr<llvm::MachO::InterfaceFile>>::~Expected(&v76);
  v57 = *MEMORY[0x277D85DE8];
  return a1;
}

void llvm::object::TapiUniversal::~TapiUniversal(llvm::object::TapiUniversal *this)
{
  *this = &unk_2883EF708;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  std::unique_ptr<llvm::MachO::InterfaceFile>::reset[abi:nn200100](this + 6, 0);
}

{
  llvm::object::TapiUniversal::~TapiUniversal(this);

  JUMPOUT(0x277C69E40);
}

llvm::MachO::InterfaceFile *std::unique_ptr<llvm::MachO::InterfaceFile>::reset[abi:nn200100](llvm::MachO::InterfaceFile **a1, llvm::MachO::InterfaceFile *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    llvm::MachO::InterfaceFile::~InterfaceFile(result);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

uint64_t llvm::object::WasmObjectFile::WasmObjectFile(uint64_t a1, __int128 *a2, void *a3)
{
  v370 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  *(a1 + 8) = 21;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *(a1 + 72) = 0;
  v7 = (a1 + 72);
  *a1 = &unk_2883EF730;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 504) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 576) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 584) = -1;
  *(a1 + 588) = 0;
  *(a1 + 590) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 692) = 0u;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8 >= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  if (v8 < 4 || memcmp(v9, &unk_2750C7968, v10))
  {
    operator new();
  }

  v358 = v9;
  v360 = v9 + v8;
  if (v8 <= 7)
  {
    operator new();
  }

  v13 = v9[1];
  *(a1 + 64) = v13;
  if (v13 != 1)
  {
    *v367 = "invalid version number: ";
    *&v367[16] = v13;
    *&v367[32] = 2051;
    operator new();
  }

  v364[0] = 0;
  v364[1] = 0;
  v365 = 0;
  if (v8 == 8)
  {
    goto LABEL_7;
  }

  v14 = (v9 + 2);
  v345 = (a1 + 280);
  v346 = (a1 + 512);
  v348 = v7;
  v352 = a3;
  v344 = (a1 + 448);
  do
  {
    HIDWORD(v354) = 0;
    *&v355 = 0;
    v356 = 0u;
    memset(__p, 0, sizeof(__p));
    DWORD2(v355) = -1;
    *(&v354 + 4) = (v14 - v358);
    v16 = *v14;
    v15 = *v14;
    v359 = v14 + 1;
    LODWORD(v354) = v16;
    Varuint32 = readVaruint32(&v358);
    if (!Varuint32)
    {
      operator new();
    }

    LODWORD(v18) = Varuint32;
    v19 = v359;
    v20 = &v359[Varuint32];
    if (v20 > v360)
    {
      operator new();
    }

    v21 = 0;
    v22 = v15;
    String = 0;
    switch(v15)
    {
      case 0:
        *v367 = v359;
        *&v367[8] = v359;
        *&v367[16] = v20;
        String = readString(v367);
        *(&v354 + 1) = String;
        *&v355 = v24;
        v19 += (*&v367[8] - *v367);
        v18 = (v18 - (*&v367[8] - *v367));
        if (v24 == 8)
        {
          if (*String == 0x302E6B6E696C7964)
          {
            v22 = 14;
            v21 = 8;
            goto LABEL_36;
          }

          v21 = 8;
        }

        else
        {
          v21 = v24;
          if (v24 == 7)
          {
            if (*String == 1802398060 && *(String + 3) == 1735289195)
            {
              v22 = 15;
              v21 = 7;
              goto LABEL_36;
            }

            v21 = 7;
          }

          else if (v24 == 6)
          {
            if (*String == 1768716644 && *(String + 4) == 27502)
            {
              v22 = 14;
              v21 = 6;
              goto LABEL_36;
            }

            v21 = 6;
          }

          else if (v24 < 6)
          {
            if (v24 != 4)
            {
              goto LABEL_409;
            }

            if (*String != 1701667182)
            {
              v21 = 4;
              goto LABEL_409;
            }

            v22 = 17;
            v21 = 4;
            goto LABEL_36;
          }
        }

        if (*String == 1869374834 && *(String + 4) == 11875)
        {
          v22 = 16;
        }

        else if (v21 == 15)
        {
          if (*String != 0x665F746567726174 || *(String + 7) != 0x7365727574616566)
          {
            v21 = 15;
LABEL_409:
            v349 = String;
            *&v356 = v19;
            *(&v356 + 1) = v18;
            v359 = &v19[v18];
            *v352 = 0;
            v362 = v19;
            v363 = &v19[v18];
            v361 = v19;
LABEL_410:
            llvm::object::WasmObjectFile::parseCustomSection(&v353, a1, v349, v21, &v361);
            goto LABEL_411;
          }

          v22 = 19;
          v21 = 15;
        }

        else
        {
          if (v21 != 9)
          {
            goto LABEL_409;
          }

          if (*String != 0x72656375646F7270 || *(String + 8) != 115)
          {
            v21 = 9;
            goto LABEL_409;
          }

          v22 = 18;
          v21 = 9;
        }

LABEL_36:
        v349 = String;
        v26 = 0;
        *v367 = &v367[16];
        *&v367[8] = 0x1400000000;
        memset(v369, 0, 20);
        LODWORD(v27) = v22;
        while (1)
        {
          v28 = llvm::object::WasmSectionOrderChecker::DisallowedPredecessors[20 * v27];
          v29 = v26;
          if (v28)
          {
            v30 = &llvm::object::WasmSectionOrderChecker::DisallowedPredecessors[20 * v27 + 1];
            do
            {
              if ((v369[v28] & 1) == 0)
              {
                v31 = v28;
                llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v367, v28);
                v369[v31] = 1;
              }

              v32 = *v30++;
              v28 = v32;
            }

            while (v32);
            v29 = *&v367[8];
          }

          if (!v29)
          {
            break;
          }

          v33 = *v367;
          v27 = *(*v367 + 4 * v29 - 4);
          v26 = v29 - 1;
          *&v367[8] = v29 - 1;
          if (*(v364 + v27))
          {
            goto LABEL_47;
          }
        }

        *(v364 + v22) = 1;
        v33 = *v367;
LABEL_47:
        if (v33 != &v367[16])
        {
          free(v33);
        }

        if (v29)
        {
          llvm::to_string<unsigned int>(&v354, v366);
          v341 = std::string::insert(v366, 0, "out of order section type: ");
          v342 = v341->__r_.__value_.__r.__words[2];
          *v369 = *&v341->__r_.__value_.__l.__data_;
          *&v369[16] = v342;
          v341->__r_.__value_.__l.__size_ = 0;
          v341->__r_.__value_.__r.__words[2] = 0;
          v341->__r_.__value_.__r.__words[0] = 0;
          operator new();
        }

LABEL_50:
        *&v356 = v19;
        *(&v356 + 1) = v18;
        v359 = &v19[v18];
        *v352 = 0;
        v362 = v19;
        v363 = &v19[v18];
        v361 = v19;
        switch(v15)
        {
          case 0:
            goto LABEL_410;
          case 1:
            v34 = readVaruint32(&v361);
            v35 = *(a1 + 280);
            if (v34 > ((*(a1 + 296) - v35) >> 6))
            {
              v36 = *(a1 + 288) - v35;
              *&v367[32] = a1 + 280;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmSignature>>(v34);
            }

            while (2)
            {
              if (!v34)
              {
                if (v362 == v363)
                {
                  goto LABEL_374;
                }

                *v367 = 3;
LABEL_373:
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
              }

              *v367 = &v367[16];
              *&v367[8] = 0x100000000;
              *&v367[24] = &v367[40];
              *&v367[32] = 0x400000000;
              *&v367[56] = 0;
              v37 = v362;
              if (v362 != v363)
              {
                ++v362;
                if (*v37 != 96)
                {
                  *v369 = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                }

                v38 = readVaruint32(&v361);
                v39 = v38;
                if (*&v367[36] < v38)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v367[24], &v367[40], v38, 4);
                  goto LABEL_60;
                }

                if (v38)
                {
LABEL_60:
                  while (1)
                  {
                    v40 = v362;
                    if (v362 == v363)
                    {
                      break;
                    }

                    --v39;
                    ++v362;
                    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v367[24], *v40);
                    if (!v39)
                    {
                      goto LABEL_62;
                    }
                  }
                }

                else
                {
LABEL_62:
                  v41 = readVaruint32(&v361);
                  if (!v41)
                  {
LABEL_66:
                    v45 = *(a1 + 288);
                    v44 = *(a1 + 296);
                    if (v45 >= v44)
                    {
                      v47 = (v45 - *v345) >> 6;
                      if ((v47 + 1) >> 58)
                      {
                        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                      }

                      v48 = v44 - *v345;
                      v49 = v48 >> 5;
                      if (v48 >> 5 <= (v47 + 1))
                      {
                        v49 = v47 + 1;
                      }

                      if (v48 >= 0x7FFFFFFFFFFFFFC0)
                      {
                        v50 = 0x3FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v50 = v49;
                      }

                      *&v369[32] = a1 + 280;
                      if (v50)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmSignature>>(v50);
                      }

                      v51 = v47 << 6;
                      std::allocator_traits<std::allocator<llvm::wasm::WasmSignature>>::construct[abi:nn200100]<llvm::wasm::WasmSignature,llvm::wasm::WasmSignature,0>(v51, v367);
                      v46 = v51 + 64;
                      v52 = *(a1 + 280);
                      v53 = *(a1 + 288);
                      v54 = v51 + v52 - v53;
                      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::wasm::WasmSignature>,llvm::wasm::WasmSignature*>(v52, v53, v54);
                      v55 = *(a1 + 280);
                      *(a1 + 280) = v54;
                      *(a1 + 288) = v46;
                      v56 = *(a1 + 296);
                      *(a1 + 296) = 0;
                      *&v369[16] = v55;
                      *&v369[24] = v56;
                      *v369 = v55;
                      *&v369[8] = v55;
                      std::__split_buffer<llvm::wasm::WasmSignature>::~__split_buffer(v369);
                    }

                    else
                    {
                      std::allocator_traits<std::allocator<llvm::wasm::WasmSignature>>::construct[abi:nn200100]<llvm::wasm::WasmSignature,llvm::wasm::WasmSignature,0>(*(a1 + 288), v367);
                      v46 = v45 + 64;
                    }

                    *(a1 + 288) = v46;
                    if (*&v367[24] != &v367[40])
                    {
                      free(*&v367[24]);
                    }

                    if (*v367 != &v367[16])
                    {
                      free(*v367);
                    }

                    --v34;
                    continue;
                  }

                  v42 = v41;
                  while (1)
                  {
                    v43 = v362;
                    if (v362 == v363)
                    {
                      break;
                    }

                    --v42;
                    ++v362;
                    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v367, *v43);
                    if (!v42)
                    {
                      goto LABEL_66;
                    }
                  }
                }
              }

              goto LABEL_464;
            }

          case 2:
            v146 = readVaruint32(&v361);
            v147 = v146;
            v148 = *(a1 + 400);
            if (0x8E38E38E38E38E39 * ((*(a1 + 416) - v148) >> 3) < v146)
            {
              v149 = *(a1 + 408) - v148;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmImport>>(v146);
            }

            if (!v146)
            {
              goto LABEL_222;
            }

            v350 = 0;
            v343 = (*(a1 + 288) - *(a1 + 280)) >> 6;
            break;
          case 3:
            v181 = readVaruint32(&v361);
            v182 = *(a1 + 512);
            if (v181 > ((*(a1 + 528) - v182) >> 7))
            {
              v183 = *(a1 + 520) - v182;
              *&v367[32] = a1 + 512;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmFunction>>(v181);
            }

            if (!v181)
            {
              goto LABEL_241;
            }

            v184 = (*(a1 + 288) - *(a1 + 280)) >> 6;
            while (1)
            {
              v185 = readVaruint32(&v361);
              if (v185 >= v184)
              {
                break;
              }

              memset(v369, 0, 24);
              memset(&v366[7], 0, 32);
              v186 = v185 << 32;
              v187 = *(a1 + 520);
              v188 = *(a1 + 528);
              if (v187 >= v188)
              {
                v191 = (v187 - *v346) >> 7;
                v192 = v191 + 1;
                if ((v191 + 1) >> 57)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v193 = v188 - *v346;
                if (v193 >> 6 > v192)
                {
                  v192 = v193 >> 6;
                }

                if (v193 >= 0x7FFFFFFFFFFFFF80)
                {
                  v194 = 0x1FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v194 = v192;
                }

                *&v367[32] = a1 + 512;
                if (v194)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmFunction>>(v194);
                }

                v195 = v191 << 7;
                *v195 = v186;
                *(v195 + 8) = 0;
                *(v195 + 16) = 0;
                *(v195 + 24) = 0;
                *(v195 + 32) = *&v369[8];
                *(v195 + 48) = *&v369[24];
                *(v195 + 64) = 0;
                *(v195 + 80) = 0;
                *(v195 + 81) = *v366;
                *(v195 + 97) = *&v366[16];
                *(v195 + 112) = *&v366[31];
                v190 = (v191 << 7) + 128;
                v196 = *(a1 + 520);
                v197 = *(a1 + 512);
                v198 = v195 + v197 - v196;
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::wasm::WasmFunction>,llvm::wasm::WasmFunction*>(v197, v196, v198);
                v199 = *(a1 + 512);
                *(a1 + 512) = v198;
                *(a1 + 520) = v190;
                v200 = *(a1 + 528);
                *(a1 + 528) = 0;
                *&v367[16] = v199;
                *&v367[24] = v200;
                *v367 = v199;
                *&v367[8] = v199;
                std::__split_buffer<llvm::wasm::WasmFunction>::~__split_buffer(v367);
              }

              else
              {
                *v187 = v186;
                *(v187 + 8) = 0;
                *(v187 + 16) = 0;
                *(v187 + 24) = 0;
                *(v187 + 32) = *&v369[8];
                *(v187 + 48) = *&v369[24];
                v189 = *&v366[16];
                *(v187 + 81) = *v366;
                *(v187 + 64) = 0;
                *(v187 + 80) = 0;
                *(v187 + 97) = v189;
                *(v187 + 112) = *&v366[31];
                v190 = v187 + 128;
              }

              *(a1 + 520) = v190;
              if (!--v181)
              {
LABEL_241:
                if (v362 != v363)
                {
                  *v367 = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                }

                goto LABEL_374;
              }
            }

LABEL_368:
            *v367 = 3;
            goto LABEL_369;
          case 4:
            *(a1 + 704) = 954437177 * ((*(a1 + 80) - *(a1 + 72)) >> 3);
            v82 = readVaruint32(&v361);
            v83 = v82;
            v84 = *(a1 + 304);
            if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 320) - v84) >> 3) < v82)
            {
              v85 = *(a1 + 312) - v84;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmTable>>(v82);
            }

            if (!v82)
            {
              goto LABEL_127;
            }

            while (1)
            {
              v86 = v362;
              if (v362 == v363)
              {
                goto LABEL_464;
              }

              ++v362;
              v369[0] = *v86;
              readLimits(&v369[8], &v361);
              *&v367[4] = *v369;
              *&v367[20] = *&v369[16];
              v88 = *(a1 + 304);
              v87 = *(a1 + 312);
              v89 = (v87 - v88) >> 3;
              v90 = 0x6DB6DB6DB6DB6DB7 * v89;
              v91 = *(a1 + 676) - 1227133513 * v89;
              v92 = *(a1 + 320);
              if (v87 >= v92)
              {
                v94 = v90 + 1;
                if ((v90 + 1) > 0x492492492492492)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v95 = 0x6DB6DB6DB6DB6DB7 * ((v92 - v88) >> 3);
                if (2 * v95 > v94)
                {
                  v94 = 2 * v95;
                }

                if (v95 >= 0x249249249249249)
                {
                  v96 = 0x492492492492492;
                }

                else
                {
                  v96 = v94;
                }

                if (v96)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmTable>>(v96);
                }

                v97 = 8 * v89;
                *v97 = v91;
                *(v97 + 4) = *v367;
                *(v97 + 20) = *&v367[16];
                *(v97 + 36) = *&v367[32];
                *(v97 + 40) = 0;
                *(v97 + 48) = 0;
                v93 = 8 * v89 + 56;
                v98 = *(a1 + 304);
                v99 = *(a1 + 312) - v98;
                v100 = (8 * v89 - v99);
                memcpy(v100, v98, v99);
                v101 = *(a1 + 304);
                *(a1 + 304) = v100;
                *(a1 + 312) = v93;
                *(a1 + 320) = 0;
                if (v101)
                {
                  operator delete(v101);
                }
              }

              else
              {
                *v87 = v91;
                *(v87 + 4) = *v367;
                *(v87 + 20) = *&v367[16];
                *(v87 + 36) = *&v367[32];
                *(v87 + 40) = 0;
                *(v87 + 48) = 0;
                v93 = v87 + 56;
              }

              *(a1 + 312) = v93;
              if (*(v93 - 48) - 111 >= 2)
              {
                *v369 = 3;
                goto LABEL_376;
              }

              if (!--v83)
              {
LABEL_127:
                if (v362 != v363)
                {
                  *v367 = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[32],llvm::object::object_error>();
                }

                goto LABEL_374;
              }
            }

          case 5:
            v231 = readVaruint32(&v361);
            v232 = v231;
            v233 = *(a1 + 328);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 344) - v233) >> 3) < v231)
            {
              v234 = *(a1 + 336) - v233;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmLimits>>(v231);
            }

            if (v231)
            {
              do
              {
                memset(v367, 0, 24);
                readLimits(v367, &v361);
                if ((v367[0] & 4) != 0)
                {
                  *(a1 + 590) = 1;
                }

                v236 = *(a1 + 336);
                v235 = *(a1 + 344);
                if (v236 >= v235)
                {
                  v238 = *(a1 + 328);
                  v239 = 0xAAAAAAAAAAAAAAABLL * ((v236 - v238) >> 3);
                  v240 = v239 + 1;
                  if (v239 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                  }

                  v241 = 0xAAAAAAAAAAAAAAABLL * ((v235 - v238) >> 3);
                  if (2 * v241 > v240)
                  {
                    v240 = 2 * v241;
                  }

                  if (v241 >= 0x555555555555555)
                  {
                    v242 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v242 = v240;
                  }

                  if (v242)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmLimits>>(v242);
                  }

                  v243 = 24 * v239;
                  *v243 = *v367;
                  *(v243 + 16) = *&v367[16];
                  v237 = 24 * v239 + 24;
                  v244 = *(a1 + 328);
                  v245 = *(a1 + 336) - v244;
                  v246 = v243 - v245;
                  memcpy((v243 - v245), v244, v245);
                  v247 = *(a1 + 328);
                  *(a1 + 328) = v246;
                  *(a1 + 336) = v237;
                  *(a1 + 344) = 0;
                  if (v247)
                  {
                    operator delete(v247);
                  }
                }

                else
                {
                  *v236 = *v367;
                  *(v236 + 16) = *&v367[16];
                  v237 = v236 + 24;
                }

                *(a1 + 336) = v237;
                --v232;
              }

              while (v232);
            }

            if (v362 == v363)
            {
              goto LABEL_374;
            }

            *v367 = 3;
            goto LABEL_337;
          case 6:
            *(a1 + 700) = 954437177 * ((*(a1 + 80) - *(a1 + 72)) >> 3);
            v271 = readVaruint32(&v361);
            v272 = *(a1 + 352);
            if (v271 > ((*(a1 + 368) - v272) >> 6))
            {
              v273 = *(a1 + 360) - v272;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmGlobal>>(v271);
            }

            if (!v271)
            {
              goto LABEL_335;
            }

            v274 = *(a1 + 360);
            do
            {
              memset(&v367[32], 0, 32);
              *v367 = *(a1 + 672) + ((v274 - *(a1 + 352)) >> 6);
              v275 = v362;
              if (v362 == v363)
              {
                goto LABEL_464;
              }

              ++v362;
              v367[4] = *v275;
              v367[5] = readVaruint1(&v361);
              readInitExpr(&v353, &v367[8], &v361);
              v63 = v353;
              if (v353)
              {
                goto LABEL_459;
              }

              v276 = *(a1 + 360);
              v277 = *(a1 + 368);
              if (v276 >= v277)
              {
                v278 = *(a1 + 352);
                v279 = (v276 - v278) >> 6;
                v280 = v279 + 1;
                if ((v279 + 1) >> 58)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v281 = v277 - v278;
                if (v281 >> 5 > v280)
                {
                  v280 = v281 >> 5;
                }

                if (v281 >= 0x7FFFFFFFFFFFFFC0)
                {
                  v282 = 0x3FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v282 = v280;
                }

                if (v282)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmGlobal>>(v282);
                }

                v283 = (v279 << 6);
                *v283 = *v367;
                v283[1] = *&v367[16];
                v283[2] = *&v367[32];
                v283[3] = *&v367[48];
                v274 = (v279 << 6) + 64;
                v284 = *(a1 + 352);
                v285 = *(a1 + 360) - v284;
                v286 = v283 - v285;
                memcpy(v283 - v285, v284, v285);
                v287 = *(a1 + 352);
                *(a1 + 352) = v286;
                *(a1 + 360) = v274;
                *(a1 + 368) = 0;
                if (v287)
                {
                  operator delete(v287);
                }
              }

              else
              {
                *v276 = *v367;
                v276[1] = *&v367[16];
                v276[2] = *&v367[32];
                v276[3] = *&v367[48];
                v274 = (v276 + 4);
              }

              *(a1 + 360) = v274;
              --v271;
            }

            while (v271);
LABEL_335:
            if (v362 == v363)
            {
              goto LABEL_374;
            }

            *v367 = 3;
            goto LABEL_337;
          case 7:
            v201 = readVaruint32(&v361);
            v202 = v201;
            v203 = *(a1 + 424);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 440) - v203) >> 3) < v201)
            {
              v204 = *(a1 + 432) - v203;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmExport>>(v201);
            }

            if (!v201)
            {
              goto LABEL_272;
            }

            while (1)
            {
              v205 = readString(&v361);
              v207 = v362;
              if (v362 == v363)
              {
                goto LABEL_464;
              }

              v208 = v205;
              v209 = v206;
              ++v362;
              v210 = *v207;
              v211 = readVaruint32(&v361);
              v212 = v211;
              if (v210 > 2)
              {
                if (v210 == 3)
                {
                  if (*(a1 + 672) + ((*(a1 + 360) - *(a1 + 352)) >> 6) <= v211)
                  {
                    *v367 = 3;
LABEL_369:
                    llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                  }
                }

                else
                {
                  if (v210 != 4)
                  {
LABEL_445:
                    *v367 = 3;
                    goto LABEL_367;
                  }

                  if (*(a1 + 684) - 0x5555555555555555 * ((*(a1 + 384) - *(a1 + 376)) >> 3) <= v211)
                  {
                    operator new();
                  }
                }
              }

              else if ((v210 - 1) >= 2)
              {
                if (v210)
                {
                  goto LABEL_445;
                }

                v213 = *(a1 + 680);
                if (v211 < v213 || (v214 = *(a1 + 512), v213 + ((*(a1 + 520) - v214) >> 7) <= v211))
                {
                  *v367 = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                }

                v215 = v214 + ((v211 - v213) << 7);
                *(v215 + 64) = v208;
                v216 = v215 + 64;
                v217 = *(v216 + 16);
                *(v216 + 8) = v209;
                if ((v217 & 1) == 0)
                {
                  *(v216 + 16) = 1;
                }
              }

              v218 = *(a1 + 432);
              v219 = *(a1 + 440);
              if (v218 >= v219)
              {
                v221 = *(a1 + 424);
                v222 = 0xAAAAAAAAAAAAAAABLL * ((v218 - v221) >> 3);
                v223 = v222 + 1;
                if (v222 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v224 = 0xAAAAAAAAAAAAAAABLL * ((v219 - v221) >> 3);
                if (2 * v224 > v223)
                {
                  v223 = 2 * v224;
                }

                if (v224 >= 0x555555555555555)
                {
                  v225 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v225 = v223;
                }

                if (v225)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmExport>>(v225);
                }

                v226 = 24 * v222;
                *v226 = v208;
                *(v226 + 8) = v209;
                *(v226 + 16) = v210;
                *(v226 + 20) = v212;
                v220 = 24 * v222 + 24;
                v227 = *(a1 + 424);
                v228 = *(a1 + 432) - v227;
                v229 = 24 * v222 - v228;
                memcpy((v226 - v228), v227, v228);
                v230 = *(a1 + 424);
                *(a1 + 424) = v229;
                *(a1 + 432) = v220;
                *(a1 + 440) = 0;
                if (v230)
                {
                  operator delete(v230);
                }
              }

              else
              {
                *v218 = v208;
                *(v218 + 8) = v209;
                *(v218 + 16) = v210;
                v220 = v218 + 24;
                *(v218 + 20) = v211;
              }

              *(a1 + 432) = v220;
              if (!--v202)
              {
LABEL_272:
                if (v362 == v363)
                {
                  goto LABEL_374;
                }

                *v367 = 3;
LABEL_337:
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
              }
            }

          case 8:
            v316 = readVaruint32(&v361);
            *(a1 + 584) = v316;
            if (*(a1 + 680) + ((*(a1 + 520) - *(a1 + 512)) >> 7) > v316)
            {
              goto LABEL_374;
            }

            *v367 = 3;
            goto LABEL_367;
          case 9:
            v103 = readVaruint32(&v361);
            v104 = v103;
            v105 = *(a1 + 448);
            if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 464) - v105) >> 4) < v103)
            {
              v106 = *(a1 + 456) - v105;
              *&v367[32] = a1 + 448;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmElemSegment>>(v103);
            }

            if (!v103)
            {
              goto LABEL_182;
            }

            while (1)
            {
              memset(&v367[40], 0, 40);
              v107 = readVaruint32(&v361);
              *v367 = v107;
              if (v107 >= 8)
              {
                *v369 = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
              }

              if ((v107 & 2) != 0)
              {
                v108 = readVaruint32(&v361);
              }

              else
              {
                v108 = 0;
              }

              *&v367[4] = v108;
              if (*(a1 + 676) + 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 312) - *(a1 + 304)) >> 3) <= v108)
              {
                operator new();
              }

              v109 = v367[0];
              if (v367[0])
              {
                v367[16] = 0;
                v367[24] = 65;
                *&v367[32] = 0;
              }

              else
              {
                readInitExpr(&v353, &v367[16], &v361);
                if (v353)
                {
                  if (*&v367[56])
                  {
                    *&v367[64] = *&v367[56];
                    operator delete(*&v367[56]);
                  }

LABEL_411:
                  v321 = v353;
                  *v352 = v353;
                  if (!v321)
                  {
                    goto LABEL_412;
                  }

LABEL_460:
                  if (__p[0])
                  {
                    __p[1] = __p[0];
                    operator delete(__p[0]);
                  }

                  goto LABEL_7;
                }

                v109 = v367[0];
              }

              if ((v109 & 3) != 0)
              {
                v110 = v362;
                if (v362 == v363)
                {
                  goto LABEL_464;
                }

                ++v362;
                v111 = *v110;
                v367[8] = v111;
                if ((v109 & 4) != 0)
                {
                  if ((v111 - 113) <= 0xFFFFFFFD)
                  {
                    *v369 = 3;
                    llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                  }

LABEL_441:
                  operator new();
                }

                if (v111)
                {
                  *v369 = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                }

                v367[8] = 112;
              }

              else
              {
                v367[8] = 112;
                if ((v109 & 4) != 0)
                {
                  goto LABEL_441;
                }
              }

              v112 = readVaruint32(&v361);
              if (v112)
              {
                v113 = v112;
                do
                {
                  v114 = readVaruint32(&v361);
                  v115 = *&v367[64];
                  if (*&v367[64] >= *&v367[72])
                  {
                    v117 = *&v367[56];
                    v118 = *&v367[64] - *&v367[56];
                    v119 = (*&v367[64] - *&v367[56]) >> 2;
                    v120 = v119 + 1;
                    if ((v119 + 1) >> 62)
                    {
                      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                    }

                    v121 = *&v367[72] - *&v367[56];
                    if ((*&v367[72] - *&v367[56]) >> 1 > v120)
                    {
                      v120 = v121 >> 1;
                    }

                    v122 = v121 >= 0x7FFFFFFFFFFFFFFCLL;
                    v123 = 0x3FFFFFFFFFFFFFFFLL;
                    if (!v122)
                    {
                      v123 = v120;
                    }

                    if (v123)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(&v367[56], v123);
                    }

                    v124 = (4 * v119);
                    v125 = &v124[-((*&v367[64] - *&v367[56]) >> 2)];
                    *v124 = v114;
                    v116 = v124 + 1;
                    memcpy(v125, v117, v118);
                    v126 = *&v367[56];
                    *&v367[56] = v125;
                    *&v367[64] = v116;
                    *&v367[72] = 0;
                    if (v126)
                    {
                      operator delete(v126);
                    }
                  }

                  else
                  {
                    **&v367[64] = v114;
                    v116 = (v115 + 4);
                  }

                  *&v367[64] = v116;
                  --v113;
                }

                while (v113);
              }

              v128 = *(a1 + 456);
              v127 = *(a1 + 464);
              if (v128 >= v127)
              {
                v133 = 0xCCCCCCCCCCCCCCCDLL * ((v128 - *v344) >> 4);
                v134 = v133 + 1;
                if (v133 + 1 > 0x333333333333333)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v135 = 0xCCCCCCCCCCCCCCCDLL * ((v127 - *v344) >> 4);
                if (2 * v135 > v134)
                {
                  v134 = 2 * v135;
                }

                if (v135 >= 0x199999999999999)
                {
                  v136 = 0x333333333333333;
                }

                else
                {
                  v136 = v134;
                }

                *&v369[32] = a1 + 448;
                if (v136)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmElemSegment>>(v136);
                }

                v137 = 80 * v133;
                v138 = *v367;
                v139 = *&v367[16];
                v140 = *&v367[32];
                *(v137 + 48) = *&v367[48];
                *(v137 + 16) = v139;
                *(v137 + 32) = v140;
                *(v137 + 56) = 0;
                *v137 = v138;
                *(v137 + 64) = 0;
                *(v137 + 72) = 0;
                if (*&v367[64] != *&v367[56])
                {
                  std::vector<unsigned int>::__vallocate[abi:nn200100](v137 + 56, (*&v367[64] - *&v367[56]) >> 2);
                }

                v132 = v137 + 80;
                v141 = *(a1 + 448);
                v142 = *(a1 + 456);
                v143 = v137 + v141 - v142;
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::wasm::WasmElemSegment>,llvm::wasm::WasmElemSegment*>(v141, v142, v143);
                v144 = *(a1 + 448);
                *(a1 + 448) = v143;
                *(a1 + 456) = v137 + 80;
                v145 = *(a1 + 464);
                *(a1 + 464) = 0;
                *&v369[16] = v144;
                *&v369[24] = v145;
                *v369 = v144;
                *&v369[8] = v144;
                std::__split_buffer<llvm::wasm::WasmElemSegment>::~__split_buffer(v369);
              }

              else
              {
                v129 = *v367;
                v130 = *&v367[16];
                v131 = *&v367[32];
                *(v128 + 48) = *&v367[48];
                *(v128 + 16) = v130;
                *(v128 + 32) = v131;
                *(v128 + 56) = 0;
                *v128 = v129;
                *(v128 + 64) = 0;
                *(v128 + 72) = 0;
                if (*&v367[64] != *&v367[56])
                {
                  std::vector<unsigned int>::__vallocate[abi:nn200100](v128 + 56, (*&v367[64] - *&v367[56]) >> 2);
                }

                v132 = v128 + 80;
              }

              *(a1 + 456) = v132;
              if (*&v367[56])
              {
                *&v367[64] = *&v367[56];
                operator delete(*&v367[56]);
              }

              if (!--v104)
              {
LABEL_182:
                if (v362 == v363)
                {
                  goto LABEL_374;
                }

                *v367 = 3;
                goto LABEL_373;
              }
            }

          case 10:
            *(a1 + 688) = 954437177 * ((*(a1 + 80) - *(a1 + 72)) >> 3);
            v288 = readVaruint32(&v361);
            if (v288 != (*(a1 + 520) - *(a1 + 512)) >> 7)
            {
              *v367 = 3;
              goto LABEL_367;
            }

            v289 = v362;
            if (!v288)
            {
              goto LABEL_359;
            }

            v290 = 0;
            v347 = v288;
            while (1)
            {
              v291 = *(a1 + 512) + (v290 << 7);
              v292 = readVaruint32(&v361);
              v293 = v362 + v292;
              *(v291 + 56) = v362 - v289;
              *v291 = *(a1 + 680) + v290;
              v351 = v293;
              *(v291 + 48) = v289 - v361;
              *(v291 + 52) = v293 - v289;
              v294 = readVaruint32(&v361);
              v295 = *(v291 + 8);
              if (v294 > ((*(v291 + 24) - v295) >> 3))
              {
                v296 = *(v291 + 16) - v295;
                std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmLocalDecl>>(v294);
              }

              if (v294)
              {
                break;
              }

LABEL_358:
              v314 = v362;
              v315 = (v351 - v362);
              *(v291 + 32) = v362;
              *(v291 + 40) = v315;
              *(v291 + 120) = -1;
              v289 = &v314[v315];
              v362 = &v314[v315];
              if (++v290 == v347)
              {
LABEL_359:
                if (v289 == v363)
                {
                  goto LABEL_374;
                }

                *v367 = 3;
                goto LABEL_373;
              }
            }

            while (1)
            {
              v297 = readVaruint32(&v361);
              v298 = v362;
              if (v362 == v363)
              {
                break;
              }

              v299 = v297;
              ++v362;
              v300 = *v298;
              v302 = *(v291 + 16);
              v301 = *(v291 + 24);
              if (v302 >= v301)
              {
                v304 = *(v291 + 8);
                v305 = (v302 - v304) >> 3;
                if ((v305 + 1) >> 61)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v306 = v301 - v304;
                v307 = v306 >> 2;
                if (v306 >> 2 <= (v305 + 1))
                {
                  v307 = v305 + 1;
                }

                if (v306 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v308 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v308 = v307;
                }

                if (v308)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmLocalDecl>>(v308);
                }

                v309 = (8 * v305);
                *v309 = v300 | (v299 << 32);
                v303 = 8 * v305 + 8;
                v310 = *(v291 + 8);
                v311 = *(v291 + 16) - v310;
                v312 = v309 - v311;
                memcpy(v309 - v311, v310, v311);
                v313 = *(v291 + 8);
                *(v291 + 8) = v312;
                *(v291 + 16) = v303;
                *(v291 + 24) = 0;
                if (v313)
                {
                  operator delete(v313);
                }
              }

              else
              {
                *v302 = v300 | (v297 << 32);
                v303 = (v302 + 1);
              }

              *(v291 + 16) = v303;
              if (!--v294)
              {
                goto LABEL_358;
              }
            }

LABEL_464:
            llvm::report_fatal_error("EOF while reading uint8", 1);
          case 11:
            *(a1 + 692) = 954437177 * ((*(a1 + 80) - *(a1 + 72)) >> 3);
            v57 = readVaruint32(&v361);
            if (*(a1 + 504) == 1 && *(a1 + 496) != v57)
            {
              operator new();
            }

            v58 = *(a1 + 472);
            if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 488) - v58) >> 3) < v57)
            {
              v59 = *(a1 + 480) - v58;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::WasmSegment>>(v57);
            }

            if (v57)
            {
              do
              {
                memset(&v367[40], 0, 48);
                v60 = readVaruint32(&v361);
                v61 = v60;
                *&v367[8] = v60;
                if ((v60 & 2) != 0)
                {
                  v62 = readVaruint32(&v361);
                }

                else
                {
                  v62 = 0;
                }

                *&v367[12] = v62;
                if (v61)
                {
                  v367[16] = 0;
                  v367[24] = 65;
                  *&v367[32] = 0;
                }

                else
                {
                  readInitExpr(&v353, &v367[16], &v361);
                  v63 = v353;
                  if (v353)
                  {
LABEL_459:
                    *v352 = v63;
                    goto LABEL_460;
                  }
                }

                v64 = readVaruint32(&v361);
                v66 = v362;
                v65 = v363;
                if (v363 - v362 < v64)
                {
                  operator new();
                }

                v67 = v64;
                *&v367[56] = v362;
                *&v367[64] = v64;
                *&v367[88] = 0;
                LODWORD(v368) = -1;
                *v367 = v362 - v361;
                v362 += v64;
                v68 = *(a1 + 480);
                v69 = *(a1 + 488);
                if (v68 >= v69)
                {
                  v71 = *(a1 + 472);
                  v72 = 0x4EC4EC4EC4EC4EC5 * ((v68 - v71) >> 3);
                  v73 = v72 + 1;
                  if ((v72 + 1) > 0x276276276276276)
                  {
                    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                  }

                  v74 = 0x4EC4EC4EC4EC4EC5 * ((v69 - v71) >> 3);
                  if (2 * v74 > v73)
                  {
                    v73 = 2 * v74;
                  }

                  if (v74 >= 0x13B13B13B13B13BLL)
                  {
                    v75 = 0x276276276276276;
                  }

                  else
                  {
                    v75 = v73;
                  }

                  if (v75)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::WasmSegment>>(v75);
                  }

                  v76 = 104 * v72;
                  *(v76 + 48) = *&v367[48];
                  *(v76 + 64) = *&v367[64];
                  *(v76 + 80) = *&v367[80];
                  *(v76 + 96) = v368;
                  *v76 = *v367;
                  *(v76 + 16) = *&v367[16];
                  *(v76 + 32) = *&v367[32];
                  v70 = 104 * v72 + 104;
                  v77 = *(a1 + 472);
                  v78 = *(a1 + 480) - v77;
                  v79 = 104 * v72 - v78;
                  memcpy((v76 - v78), v77, v78);
                  v80 = *(a1 + 472);
                  *(a1 + 472) = v79;
                  *(a1 + 480) = v70;
                  *(a1 + 488) = 0;
                  if (v80)
                  {
                    operator delete(v80);
                  }
                }

                else
                {
                  *(v68 + 48) = *&v367[48];
                  *(v68 + 64) = *&v367[64];
                  *(v68 + 80) = *&v367[80];
                  *(v68 + 96) = v368;
                  *v68 = *v367;
                  *(v68 + 16) = *&v367[16];
                  *(v68 + 32) = *&v367[32];
                  v70 = v68 + 104;
                }

                *(a1 + 480) = v70;
                --v57;
              }

              while (v57);
              v81 = &v66[v67];
            }

            else
            {
              v81 = v362;
              v65 = v363;
            }

            if (v81 == v65)
            {
              goto LABEL_374;
            }

            *v367 = 3;
            goto LABEL_373;
          case 12:
            v102 = readVaruint32(&v361);
            if ((*(a1 + 504) & 1) == 0)
            {
              *(a1 + 504) = 1;
            }

            *(a1 + 496) = v102;
            goto LABEL_374;
          case 13:
            *(a1 + 696) = 954437177 * ((*(a1 + 80) - *(a1 + 72)) >> 3);
            v248 = readVaruint32(&v361);
            v249 = v248;
            v250 = *(a1 + 376);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 392) - v250) >> 3) < v248)
            {
              v251 = *(a1 + 384) - v250;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmTag>>(v248);
            }

            if (!v248)
            {
              goto LABEL_314;
            }

            v252 = (*(a1 + 288) - *(a1 + 280)) >> 6;
            while (1)
            {
              v253 = v362;
              if (v362 == v363)
              {
                goto LABEL_464;
              }

              ++v362;
              if (*v253)
              {
                operator new();
              }

              v254 = readVaruint32(&v361);
              if (v254 >= v252)
              {
LABEL_377:
                *v367 = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
              }

              v255 = v254;
              v257 = *(a1 + 376);
              v256 = *(a1 + 384);
              v258 = (v256 - v257) >> 3;
              v259 = 0xAAAAAAAAAAAAAAABLL * v258;
              v260 = *(a1 + 684) - 1431655765 * v258;
              v261 = *(a1 + 392);
              if (v256 >= v261)
              {
                v263 = v259 + 1;
                if (v259 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v264 = 0xAAAAAAAAAAAAAAABLL * ((v261 - v257) >> 3);
                if (2 * v264 > v263)
                {
                  v263 = 2 * v264;
                }

                if (v264 >= 0x555555555555555)
                {
                  v265 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v265 = v263;
                }

                if (v265)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmTag>>(v265);
                }

                v266 = 8 * v258;
                *v266 = v260;
                *(v266 + 4) = v255;
                *(v266 + 8) = 0;
                *(v266 + 16) = 0;
                v262 = 8 * v258 + 24;
                v267 = *(a1 + 376);
                v268 = *(a1 + 384) - v267;
                v269 = (8 * v258 - v268);
                memcpy(v269, v267, v268);
                v270 = *(a1 + 376);
                *(a1 + 376) = v269;
                *(a1 + 384) = v262;
                *(a1 + 392) = 0;
                if (v270)
                {
                  operator delete(v270);
                }
              }

              else
              {
                *v256 = v260;
                *(v256 + 4) = v254;
                v262 = v256 + 24;
                *(v256 + 8) = 0;
                *(v256 + 16) = 0;
              }

              *(a1 + 384) = v262;
              if (!--v249)
              {
LABEL_314:
                if (v362 != v363)
                {
                  *v367 = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
                }

                goto LABEL_374;
              }
            }

          default:
            *v367 = "invalid section type: ";
            *&v367[16] = v15;
            *&v367[32] = 2051;
            operator new();
        }

        return result;
      case 1:
        goto LABEL_36;
      case 2:
        v21 = 0;
        String = 0;
        v22 = 2;
        goto LABEL_36;
      case 3:
        v21 = 0;
        String = 0;
        v22 = 3;
        goto LABEL_36;
      case 4:
        v21 = 0;
        String = 0;
        v22 = 4;
        goto LABEL_36;
      case 5:
        v21 = 0;
        String = 0;
        v22 = 5;
        goto LABEL_36;
      case 6:
        v21 = 0;
        String = 0;
        v22 = 7;
        goto LABEL_36;
      case 7:
        v21 = 0;
        String = 0;
        v22 = 8;
        goto LABEL_36;
      case 8:
        v21 = 0;
        String = 0;
        v22 = 9;
        goto LABEL_36;
      case 9:
        v21 = 0;
        String = 0;
        v22 = 10;
        goto LABEL_36;
      case 10:
        v21 = 0;
        String = 0;
        v22 = 12;
        goto LABEL_36;
      case 11:
        v21 = 0;
        String = 0;
        v22 = 13;
        goto LABEL_36;
      case 12:
        v21 = 0;
        String = 0;
        v22 = 11;
        goto LABEL_36;
      case 13:
        v21 = 0;
        String = 0;
        v22 = 6;
        goto LABEL_36;
      default:
        v349 = 0;
        goto LABEL_50;
    }

    do
    {
      v150 = readString(&v361);
      v152 = v151;
      v153 = readString(&v361);
      v155 = v362;
      v156 = v363;
      if (v362 == v363)
      {
        goto LABEL_464;
      }

      v157 = v153;
      v158 = v154;
      v159 = ++v362;
      v160 = *v155;
      if (v160 <= 1)
      {
        if (*v155)
        {
          if (v160 != 1)
          {
LABEL_446:
            *v367 = 3;
LABEL_367:
            llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
          }

          if (v159 == v363)
          {
            goto LABEL_464;
          }

          v362 = v155 + 2;
          v367[0] = v155[1];
          readLimits(&v367[8], &v361);
          v162 = *v367;
          v163 = v367[0];
          *v369 = *&v367[4];
          *&v369[12] = *&v367[16];
          ++*(a1 + 676);
          if ((v163 - 111) >= 2)
          {
            *v367 = 3;
LABEL_376:
            llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>();
          }

          Varuint1 = BYTE1(v162);
          v165 = HIWORD(v162);
          goto LABEL_206;
        }

        ++*(a1 + 680);
        v161 = readVaruint32(&v361);
        if (v161 >= v343)
        {
          goto LABEL_368;
        }

LABEL_205:
        v163 = v161;
        Varuint1 = BYTE1(v161);
        v165 = HIWORD(v161);
LABEL_206:
        v350 = v165;
        goto LABEL_207;
      }

      switch(v160)
      {
        case 2u:
          readLimits(v367, &v361);
          v163 = v367[0];
          Varuint1 = v367[1];
          v350 = HIWORD(*v367);
          *v369 = *&v367[4];
          *&v369[16] = *&v367[20];
          if ((v367[0] & 4) != 0)
          {
            *(a1 + 590) = 1;
          }

          break;
        case 3u:
          ++*(a1 + 672);
          if (v159 == v156)
          {
            goto LABEL_464;
          }

          v362 = v155 + 2;
          v163 = v155[1];
          Varuint1 = readVaruint1(&v361);
          break;
        case 4u:
          ++*(a1 + 684);
          if (v159 == v156)
          {
            goto LABEL_464;
          }

          v362 = v155 + 2;
          if (v155[1])
          {
            operator new();
          }

          v161 = readVaruint32(&v361);
          if (v161 >= v343)
          {
            goto LABEL_377;
          }

          goto LABEL_205;
        default:
          goto LABEL_446;
      }

LABEL_207:
      v166 = *(a1 + 408);
      v167 = *(a1 + 416);
      if (v166 >= v167)
      {
        v169 = v152;
        v170 = v163;
        v171 = *(a1 + 400);
        v172 = 0x8E38E38E38E38E39 * ((v166 - v171) >> 3);
        v173 = v172 + 1;
        if (v172 + 1 > 0x38E38E38E38E38ELL)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v174 = 0x8E38E38E38E38E39 * ((v167 - v171) >> 3);
        if (2 * v174 > v173)
        {
          v173 = 2 * v174;
        }

        if (v174 >= 0x1C71C71C71C71C7)
        {
          v175 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v175 = v173;
        }

        if (v175)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmImport>>(v175);
        }

        v176 = 72 * v172;
        *v176 = v150;
        *(v176 + 8) = v169;
        *(v176 + 16) = v157;
        *(v176 + 24) = v158;
        *(v176 + 32) = v160;
        *(v176 + 40) = (v350 << 16) | (Varuint1 << 8) | v170;
        *(v176 + 44) = *v369;
        *(v176 + 56) = *&v369[12];
        v168 = 72 * v172 + 72;
        v177 = *(a1 + 400);
        v178 = *(a1 + 408) - v177;
        v179 = 72 * v172 - v178;
        memcpy((v176 - v178), v177, v178);
        v180 = *(a1 + 400);
        *(a1 + 400) = v179;
        *(a1 + 408) = v168;
        *(a1 + 416) = 0;
        if (v180)
        {
          operator delete(v180);
        }
      }

      else
      {
        *v166 = v150;
        *(v166 + 8) = v152;
        *(v166 + 16) = v157;
        *(v166 + 24) = v158;
        *(v166 + 32) = v160;
        *(v166 + 40) = (v350 << 16) | (Varuint1 << 8) | v163;
        *(v166 + 44) = *v369;
        *(v166 + 56) = *&v369[12];
        v168 = v166 + 72;
      }

      *(a1 + 408) = v168;
      --v147;
    }

    while (v147);
LABEL_222:
    if (v362 != v363)
    {
      *v367 = 3;
      goto LABEL_337;
    }

LABEL_374:
    *v352 = 0;
LABEL_412:
    v323 = *(a1 + 80);
    v322 = *(a1 + 88);
    if (v323 >= v322)
    {
      v327 = 0x8E38E38E38E38E39 * ((v323 - *v348) >> 3);
      v328 = v327 + 1;
      if (v327 + 1 > 0x38E38E38E38E38ELL)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v329 = 0x8E38E38E38E38E39 * ((v322 - *v348) >> 3);
      if (2 * v329 > v328)
      {
        v328 = 2 * v329;
      }

      if (v329 >= 0x1C71C71C71C71C7)
      {
        v330 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v330 = v328;
      }

      if (v330)
      {
        if (v330 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v331 = 72 * v327;
      v332 = v355;
      *v331 = v354;
      *(v331 + 16) = v332;
      *(v331 + 32) = v356;
      std::vector<llvm::wasm::WasmRelocation>::vector[abi:nn200100]((72 * v327 + 48), __p);
      v333 = *(a1 + 72);
      v334 = *(a1 + 80);
      v335 = (v331 + v333 - v334);
      if (v334 != v333)
      {
        v336 = *(a1 + 72);
        v337 = (v331 + v333 - v334);
        do
        {
          v338 = *v336;
          v339 = v336[2];
          *(v337 + 1) = v336[1];
          *(v337 + 2) = v339;
          *v337 = v338;
          *(v337 + 7) = 0;
          *(v337 + 8) = 0;
          *(v337 + 6) = 0;
          *(v337 + 3) = v336[3];
          *(v337 + 8) = *(v336 + 8);
          *(v336 + 6) = 0;
          *(v336 + 7) = 0;
          *(v336 + 8) = 0;
          v336 = (v336 + 72);
          v337 += 72;
        }

        while (v336 != v334);
        do
        {
          v340 = *(v333 + 6);
          if (v340)
          {
            *(v333 + 7) = v340;
            operator delete(v340);
          }

          v333 += 72;
        }

        while (v333 != v334);
        v333 = *v348;
      }

      v326 = v331 + 72;
      *(a1 + 72) = v335;
      *(a1 + 80) = v331 + 72;
      *(a1 + 88) = 0;
      if (v333)
      {
        operator delete(v333);
      }
    }

    else
    {
      v324 = v354;
      v325 = v356;
      *(v323 + 16) = v355;
      *(v323 + 32) = v325;
      *v323 = v324;
      std::vector<llvm::wasm::WasmRelocation>::vector[abi:nn200100]((v323 + 48), __p);
      v326 = v323 + 72;
    }

    *(a1 + 80) = v326;
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    v14 = v359;
  }

  while (v359 < v360);
LABEL_7:
  v11 = *MEMORY[0x277D85DE8];
  return a1;
}