void llvm::Function::~Function(llvm::Function *this)
{
  llvm::Function::dropAllReferences(this);
  if (*(this + 11))
  {
    llvm::Function::clearArguments(this);
  }

  llvm::Function::clearGC(this);
  std::unique_ptr<llvm::ValueSymbolTable>::reset[abi:nn200100](this + 13, 0);
    ;
  }

  llvm::GlobalObject::~GlobalObject(this);
}

uint64_t ***llvm::Function::dropAllReferences(llvm::Function *this)
{
  *(this + 8) &= ~0x1000000u;
  v2 = (this + 72);
  for (i = *(this + 10); i != v2; i = i[1])
  {
    v4 = i - 3;
    if (!i)
    {
      v4 = 0;
    }

    v5 = v4 + 5;
    for (j = v4[6]; j != v5; j = j[1])
    {
      if (j)
      {
        v7 = (j - 3);
      }

      else
      {
        v7 = 0;
      }

      llvm::User::dropAllReferences(v7);
    }
  }

  for (k = *v2; k != v2; k = *(this + 9))
  {
    v9 = *(this + 10);
    if (v9)
    {
      v10 = v9 - 24;
    }

    else
    {
      v10 = 0;
    }

    llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::erase(*(v10 + 56) + 72, v10 + 24);
  }

  if ((*(this + 5) & 0x7FFFFFF) != 0)
  {
    llvm::User::dropAllReferences(this);
    *(this + 5) &= 0xF8000000;
    *(this + 9) &= 0xFFF1u;
  }

  return llvm::Value::clearMetadata(this);
}

void llvm::Function::clearArguments(llvm::Function *this)
{
  v3 = *(this + 11);
  v2 = *(this + 12);
  if (v2)
  {
    v4 = 40 * v2;
    do
    {
      v7 = 257;
      llvm::Value::setName(v3, v6);
      llvm::Value::~Value(v3, v5);
      v3 = (v3 + 40);
      v4 -= 40;
    }

    while (v4);
    v3 = *(this + 11);
  }

  operator delete(v3);
  *(this + 11) = 0;
}

uint64_t ***llvm::Function::clearGC(uint64_t ***this)
{
  if ((*(this + 9) & 0x4000) != 0)
  {
    v1 = this;
    v2 = ***this;
    v3 = this;
    this = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>,llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>::erase(v2 + 2696, &v3);
    *(v1 + 18) &= ~0x4000u;
  }

  return this;
}

uint64_t llvm::Function::BuildLazyArguments(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    if (v1 < 0x666666666666667)
    {
      v2 = *(this + 24);
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  *(this + 18) &= ~1u;
  return this;
}

void llvm::Function::setGC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    v3 = *(a2 + 8);
  }

  *(a1 + 18) = *(a1 + 18) & 0xBFFF | ((v3 != 0) << 14);
  v4 = **a1;
  *__p = *a2;
  v7 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  llvm::LLVMContext::setGC(v4, a1, __p);
  if (SHIBYTE(v7) < 0)
  {
    v5 = __p[0];

    operator delete(v5);
  }
}

unint64_t llvm::Function::lookupIntrinsicID(_BYTE *a1, unint64_t a2)
{
  v4 = 5;
  if (a2 < 5)
  {
    v4 = a2;
  }

  v16[0] = &a1[v4];
  v16[1] = a2 - v4;
  v18 = 46;
  llvm::StringRef::split(v16, &v18, 1uLL, v17);
  v5 = v17[0];
  v6 = &TargetInfos;
  v7 = 19;
  do
  {
    v8 = &v6[4 * (v7 >> 1)];
    v10 = *v8;
    v9 = v8 + 4;
    v17[0] = v10;
    v11 = llvm::StringRef::compare(v17, v5, *(&v5 + 1));
    if (v11 >= 0)
    {
      v7 >>= 1;
    }

    else
    {
      v7 += ~(v7 >> 1);
    }

    if (v11 < 0)
    {
      v6 = v9;
    }
  }

  while (v7);
  if (v6 == off_279F172E0 || v6[1] != *(&v5 + 1) || *(&v5 + 1) && memcmp(*v6, v5, *(&v5 + 1)))
  {
    v6 = &TargetInfos;
  }

  v12 = &IntrinsicNameTable[v6[2] + 1];
  v13 = llvm::Intrinsic::lookupLLVMIntrinsicByName(v12, v6[3], a1, a2);
  if (v13 == -1)
  {
    return 0;
  }

  v14 = v13 + ((v12 - IntrinsicNameTable) >> 3);
  if (a2 != strlen(v12[v13]) && ((llvm::Intrinsic::isOverloaded::OTable[v14 >> 3] >> (v14 & 7)) & 1) == 0)
  {
    return 0;
  }

  return v14;
}

unint64_t llvm::Function::recalculateIntrinsicID(llvm::Function *this)
{
  if ((*(this + 23) & 0x10) != 0 && (ValueName = llvm::Value::getValueName(this), v5 = *ValueName, v3 = ValueName + 2, v4 = v5, v5 >= 5) && (*v3 == 1836477548 ? (v6 = v3[4] == 46) : (v6 = 0), v6))
  {
    *(this + 8) |= 0x2000u;
    result = llvm::Function::lookupIntrinsicID(v3, v4);
  }

  else
  {
    result = 0;
    *(this + 8) &= ~0x2000u;
  }

  *(this + 9) = result;
  return result;
}

double getIntrinsicNameImpl@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X3>, unint64_t Type@<X4>, std::string *a6@<X8>)
{
  v28 = 0;
  v12 = IntrinsicNameTable[a1];
  if (v12)
  {
    v13 = strlen(IntrinsicNameTable[a1]);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v13;
    if (v13)
    {
      memmove(&__dst, v12, v13);
    }
  }

  else
  {
    v14 = 0;
    *(&__dst.__r_.__value_.__s + 23) = 0;
  }

  __dst.__r_.__value_.__s.__data_[v14] = 0;
  if (a3)
  {
    v15 = 8 * a3;
    v16 = a2;
    do
    {
      getMangledTypeStr(&v24, *v16, &v28);
      v17 = std::string::insert(&v24, 0, ".");
      v18 = v17->__r_.__value_.__r.__words[2];
      *__p = *&v17->__r_.__value_.__l.__data_;
      v26 = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if (v26 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      if (v26 >= 0)
      {
        v20 = HIBYTE(v26);
      }

      else
      {
        v20 = __p[1];
      }

      std::string::append(&__dst, v19, v20);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      ++v16;
      v15 -= 8;
    }

    while (v15);
  }

  if (v28)
  {
    if (!Type)
    {
      Type = llvm::Intrinsic::getType(*a4, a1, a2, a3);
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    llvm::Module::getUniqueIntrinsicName(a4, p_dst, size, a1, Type, a6);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    result = *&__dst.__r_.__value_.__l.__data_;
    *a6 = __dst;
  }

  return result;
}

void llvm::Intrinsic::getIntrinsicInfoTableEntries(int a1, unsigned int *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = IIT_Table[a1 - 1];
  v10 = v12;
  v11 = xmmword_2750C12B0;
  if ((v3 & 0x80000000) != 0)
  {
    v5 = v3 & 0x7FFFFFFF;
    v6 = &IIT_LongEncodingTable;
    v7 = 14307;
  }

  else
  {
    do
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&v10, v3 & 0xF);
      v4 = v3 > 0xF;
      v3 >>= 4;
    }

    while (v4);
    v5 = 0;
    v6 = v10;
    v7 = v11;
  }

  v9 = v5;
  do
  {
    DecodeIITType(&v9, v6, v7, 0, a2);
  }

  while (v7 != v9 && v6[v9]);
  if (v10 != v12)
  {
    free(v10);
  }

  v8 = *MEMORY[0x277D85DE8];
}

unsigned int *DecodeIITType(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, unsigned int *a5)
{
  v9 = a4 == 43;
  while (2)
  {
    v10 = v9;
    v11 = *a1;
    v12 = v11 + 1;
    *a1 = v11 + 1;
    v13 = *(a2 + v11);
    v9 = 1;
    v14 = 12;
    v15 = 0;
    switch(*(a2 + v11))
    {
      case 1:
        v19 = 0x10000000ALL;
        goto LABEL_100;
      case 2:
        goto LABEL_78;
      case 3:
        v19 = 0x100000000ALL;
        goto LABEL_100;
      case 4:
        v19 = 0x200000000ALL;
        goto LABEL_100;
      case 5:
        v19 = 0x400000000ALL;
        goto LABEL_100;
      case 6:
        v19 = 5;
        goto LABEL_100;
      case 7:
        v19 = 7;
        goto LABEL_100;
      case 8:
        v19 = 8;
        goto LABEL_100;
      case 9:
        v16 = 2;
        if (v10)
        {
          v16 = 0x100000002;
        }

        goto LABEL_25;
      case 0xA:
        v16 = 0x100000004;
        v17 = !v10;
        v18 = 4;
        goto LABEL_22;
      case 0xB:
        v16 = 0x100000008;
        v17 = !v10;
        v18 = 8;
        goto LABEL_22;
      case 0xC:
        v16 = 0x100000010;
        v17 = !v10;
        v18 = 16;
        goto LABEL_22;
      case 0xD:
        v16 = 0x100000020;
        v17 = !v10;
        v18 = 32;
        goto LABEL_22;
      case 0xE:
        goto LABEL_26;
      case 0xF:
        if (a3 == v12)
        {
          v19 = 14;
          goto LABEL_100;
        }

        *a1 = v11 + 2;
        v24 = *(a2 + v12);
        v25 = 14;
        goto LABEL_99;
      case 0x10:
        v16 = 0x100000040;
        v17 = !v10;
        v18 = 64;
        goto LABEL_22;
      case 0x11:
        v19 = 2;
        goto LABEL_100;
      case 0x12:
        v19 = 3;
        goto LABEL_100;
      case 0x13:
        v19 = 4;
        goto LABEL_100;
      case 0x14:
        goto LABEL_84;
      case 0x15:
        v20 = 2;
        goto LABEL_80;
      case 0x16:
        v20 = 3;
        goto LABEL_80;
      case 0x17:
        v20 = 4;
        goto LABEL_80;
      case 0x18:
        v20 = 5;
        goto LABEL_80;
      case 0x19:
        if (a3 == v12)
        {
          v19 = 15;
          goto LABEL_100;
        }

        *a1 = v11 + 2;
        v24 = *(a2 + v12);
        v25 = 15;
        goto LABEL_99;
      case 0x1A:
        if (a3 == v12)
        {
          v19 = 16;
          goto LABEL_100;
        }

        *a1 = v11 + 2;
        v24 = *(a2 + v12);
        v25 = 16;
        goto LABEL_99;
      case 0x1B:
        v15 = 0;
        *a1 = v11 + 2;
        v14 = (*(a2 + v12) << 32) | 0xC;
        goto LABEL_26;
      case 0x1C:
        v16 = 0x100000001;
        if (!v10)
        {
          v16 = 1;
        }

        goto LABEL_25;
      case 0x1D:
        v19 = 1;
        goto LABEL_100;
      case 0x1E:
        if (a3 == v12)
        {
          v19 = 17;
          goto LABEL_100;
        }

        *a1 = v11 + 2;
        v24 = *(a2 + v12);
        v25 = 17;
        goto LABEL_99;
      case 0x1F:
        if (a3 == v12)
        {
          v19 = 18;
          goto LABEL_100;
        }

        *a1 = v11 + 2;
        v24 = *(a2 + v12);
        v25 = 18;
        goto LABEL_99;
      case 0x20:
        if (a3 == v12)
        {
          v19 = 19;
          goto LABEL_100;
        }

        *a1 = v11 + 2;
        v24 = *(a2 + v12);
        v25 = 19;
        goto LABEL_99;
      case 0x21:
        if (a3 == v12)
        {
          v19 = 20;
          goto LABEL_100;
        }

        *a1 = v11 + 2;
        v24 = *(a2 + v12);
        v25 = 20;
        goto LABEL_99;
      case 0x22:
        if (a3 == v12)
        {
          v21 = 0;
          v22 = 21;
          goto LABEL_107;
        }

        v26 = (v11 + 2);
        *a1 = v26;
        v27 = *(a2 + v12);
        v28 = 21;
        goto LABEL_104;
      case 0x23:
        v19 = 0x800000000ALL;
        goto LABEL_100;
      case 0x24:
        v16 = 0x100000200;
        v17 = !v10;
        v18 = 512;
        goto LABEL_22;
      case 0x25:
        v16 = 0x100000400;
        v17 = !v10;
        v18 = 1024;
        goto LABEL_22;
      case 0x26:
        v20 = 6;
        goto LABEL_80;
      case 0x27:
        v20 = 7;
        goto LABEL_80;
      case 0x28:
        v20 = 8;
        goto LABEL_80;
      case 0x29:
        v19 = 9;
        goto LABEL_100;
      case 0x2A:
        if (a3 == v12)
        {
          v19 = 22;
          goto LABEL_100;
        }

        *a1 = v11 + 2;
        v24 = *(a2 + v12);
        v25 = 22;
        goto LABEL_99;
      case 0x2B:
        continue;
      case 0x2C:
        if (a3 == v12)
        {
          v19 = 23;
          goto LABEL_100;
        }

        *a1 = v11 + 2;
        v24 = *(a2 + v12);
        v25 = 23;
        goto LABEL_99;
      case 0x2D:
        if (a3 == v12)
        {
          v19 = 24;
          goto LABEL_100;
        }

        *a1 = v11 + 2;
        v24 = *(a2 + v12);
        v25 = 24;
        goto LABEL_99;
      case 0x2E:
        if (a3 == v12)
        {
          v19 = 25;
        }

        else
        {
          *a1 = v11 + 2;
          v24 = *(a2 + v12);
          v25 = 25;
LABEL_99:
          v19 = v25 | (v24 << 32);
        }

LABEL_100:

        return llvm::SmallVectorTemplateBase<llvm::Intrinsic::IITDescriptor,true>::push_back(a5, v19, 0);
      case 0x2F:
        v16 = 0x100000080;
        v17 = !v10;
        v18 = 128;
        goto LABEL_22;
      case 0x30:
        v19 = 6;
        goto LABEL_100;
      case 0x31:
        v20 = 9;
LABEL_80:
        llvm::SmallVectorTemplateBase<llvm::Intrinsic::IITDescriptor,true>::push_back(a5, (v20 << 32) | 0xD, 0);
        do
        {
          result = DecodeIITType(a1, a2, a3, v13, a5);
          LODWORD(v20) = v20 - 1;
        }

        while (v20);
        return result;
      case 0x32:
        v16 = 0x100000100;
        v17 = !v10;
        v18 = 256;
LABEL_22:
        if (v17)
        {
          v16 = v18;
        }

        goto LABEL_25;
      case 0x33:
        v19 = 26;
        goto LABEL_100;
      case 0x34:
        v19 = 27;
        goto LABEL_100;
      case 0x35:
        v16 = 3;
        if (v10)
        {
          v16 = 0x100000003;
        }

LABEL_25:
        LOBYTE(v29) = BYTE4(v16);
        v14 = __PAIR64__(v16, 11);
        v15 = v29;
LABEL_26:
        llvm::SmallVectorTemplateBase<llvm::Intrinsic::IITDescriptor,true>::push_back(a5, v14, v15);
        v9 = 0;
        continue;
      case 0x36:
        llvm::SmallVectorTemplateBase<llvm::Intrinsic::IITDescriptor,true>::push_back(a5, 0xA0000000CLL, 0);
LABEL_84:
        v19 = 13;
        goto LABEL_100;
      case 0x37:
        llvm::SmallVectorTemplateBase<llvm::Intrinsic::IITDescriptor,true>::push_back(a5, 0x140000000CLL, 0);
LABEL_78:
        v19 = 0x80000000ALL;
        goto LABEL_100;
      case 0x38:
        if (a3 == v12)
        {
          v21 = 0;
          v22 = 28;
        }

        else
        {
          v26 = (v11 + 2);
          *a1 = v26;
          v27 = *(a2 + v12);
          v28 = 28;
LABEL_104:
          v22 = v28 | (v27 << 48);
          if (a3 == v26)
          {
            v21 = 0;
          }

          else
          {
            *a1 = v11 + 3;
            v21 = *(a2 + v26) << 32;
          }
        }

LABEL_107:
        v19 = v21 | v22;
        goto LABEL_100;
      case 0x39:
        v19 = 0x20000000ALL;
        goto LABEL_100;
      case 0x3A:
        v19 = 0x40000000ALL;
        goto LABEL_100;
      default:
        v19 = 0;
        goto LABEL_100;
    }
  }
}

unint64_t llvm::Intrinsic::getType(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v23[12] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v22 = 0x800000000;
  llvm::Intrinsic::getIntrinsicInfoTableEntries(a2, &v21);
  v16 = v21;
  v17 = v22;
  DecodeFixedType(&v16, a3, a4, a1);
  v8 = v7;
  v18 = v20;
  v19 = 0x800000000;
  if (v17)
  {
    do
    {
      DecodeFixedType(&v16, a3, a4, a1);
      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v18, v9);
    }

    while (v17);
    v10 = v19;
    v11 = v18;
    if (v19)
    {
      if (*(*(v18 + v19 - 1) + 8) == 7)
      {
        v10 = (v19 - 1);
        LODWORD(v19) = v19 - 1;
        v12 = 1;
        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v11 = v20;
  }

LABEL_9:
  v13 = llvm::FunctionType::get(v8, v11, v10, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void DecodeFixedType(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61[8] = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v5 = *(*a1 + 1);
  v6 = a1[1] - 1;
  *a1 += 3;
  a1[1] = v6;
  switch(v4)
  {
    case 2:
      v32 = *a4 + 1872;
      goto LABEL_82;
    case 3:
      v37 = *a4 + 1776;
      goto LABEL_82;
    case 4:
      v27 = *a4 + 1752;
      goto LABEL_82;
    case 5:
      v42 = *a4 + 1656;
      goto LABEL_82;
    case 6:
      v48 = *a4 + 1680;
      goto LABEL_82;
    case 7:
      v38 = *a4 + 1704;
      goto LABEL_82;
    case 8:
      v53 = *a4 + 1728;
      goto LABEL_82;
    case 9:
      v31 = *a4 + 1824;
      goto LABEL_82;
    case 10:
      v52 = *MEMORY[0x277D85DE8];
      v36 = a4;
      v19 = v5;
      goto LABEL_62;
    case 11:
      v21 = DecodeFixedType(a1, a2, a3, a4);
      v22 = *MEMORY[0x277D85DE8];
      v23 = v5;
      goto LABEL_58;
    case 12:
      v28 = DecodeFixedType(a1, a2, a3, a4);
      v29 = *MEMORY[0x277D85DE8];
      v30 = v5;
      goto LABEL_68;
    case 13:
      v59 = v61;
      v60 = 0x800000000;
      if (v5)
      {
        do
        {
          v45 = DecodeFixedType(a1, a2, a3, a4);
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v59, v45);
          LODWORD(v5) = v5 - 1;
        }

        while (v5);
        v46 = v59;
        v47 = v60;
      }

      else
      {
        v47 = 0;
        v46 = v61;
      }

      llvm::StructType::get(a4, v46, v47, 0);
      if (v59 != v61)
      {
        free(v59);
      }

      goto LABEL_82;
    case 14:
      v20 = *(a2 + (v5 & 0xFFFFFFF8));
      goto LABEL_82;
    case 15:
      v33 = *(a2 + (v5 & 0xFFFFFFF8));
      if (v33)
      {
        v34 = (*(v33 + 8) & 0xFE) == 18;
      }

      else
      {
        v34 = 0;
      }

      if (!v34)
      {
        v35 = *MEMORY[0x277D85DE8];
        v19 = ((*(v33 + 8) >> 7) & 0x1FFFFFE);
        goto LABEL_36;
      }

      v57 = *MEMORY[0x277D85DE8];

      llvm::VectorType::getExtendedElementVectorType(v33);
      break;
    case 16:
      v16 = *(a2 + (v5 & 0xFFFFFFF8));
      if (v16)
      {
        v17 = (*(v16 + 8) & 0xFE) == 18;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        v56 = *MEMORY[0x277D85DE8];

        llvm::VectorType::getTruncatedElementVectorType(v16);
      }

      else
      {
        v18 = *MEMORY[0x277D85DE8];
        v19 = (*(v16 + 8) >> 9);
LABEL_36:
        v36 = a4;
LABEL_62:

        llvm::IntegerType::get(v36, v19);
      }

      break;
    case 17:
      v39 = *(a2 + (v5 & 0xFFFFFFF8));
      v21 = *(v39 + 24);
      v40 = *MEMORY[0x277D85DE8];
      v23 = ((*(v39 + 32) >> 1) | ((*(v39 + 8) == 19) << 32));
      goto LABEL_58;
    case 18:
      v21 = DecodeFixedType(a1, a2, a3, a4);
      v49 = *(a2 + (v5 & 0xFFFFFFF8));
      if (v49)
      {
        v50 = (*(v49 + 8) & 0xFE) == 18;
      }

      else
      {
        v50 = 0;
      }

      if (!v50)
      {
        goto LABEL_82;
      }

      v51 = *MEMORY[0x277D85DE8];
      v23 = (*(v49 + 32) | (((~*(v49 + 8) & 0x13) == 0) << 32));
LABEL_58:

      llvm::VectorType::get(v21, v23);
      return;
    case 19:
      v28 = *(a2 + (v5 & 0xFFFFFFF8));
      goto LABEL_67;
    case 20:
      v41 = *(a2 + (v5 & 0xFFFFFFF8));
      if ((*(v41 + 8) & 0xFE) != 0x12)
      {
        v41 = 0;
      }

      v28 = *(v41 + 24);
LABEL_67:
      v54 = *MEMORY[0x277D85DE8];
      v30 = 0;
LABEL_68:

      llvm::PointerType::get(v28, v30);
      return;
    case 21:
    case 28:
      v15 = *(a2 + 8 * WORD1(v5));
      goto LABEL_82;
    case 22:
      v43 = *(a2 + (v5 & 0xFFFFFFF8));
      if ((*(v43 + 8) & 0xFE) != 0x12)
      {
        v43 = 0;
      }

      if (v43)
      {
        v44 = *(v43 + 24);
      }

      goto LABEL_82;
    case 23:
    case 24:
      if ((*(*(a2 + (v5 & 0xFFFFFFF8)) + 8) & 0xFE) == 0x12)
      {
        v11 = *(a2 + (v5 & 0xFFFFFFF8));
      }

      else
      {
        v11 = 0;
      }

      if (v4 == 23)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      v13 = *MEMORY[0x277D85DE8];

      llvm::VectorType::getSubdividedVectorType(v11, v12);
      return;
    case 25:
      if ((*(*(a2 + (v5 & 0xFFFFFFF8)) + 8) & 0xFE) == 0x12)
      {
        v25 = *(a2 + (v5 & 0xFFFFFFF8));
      }

      else
      {
        v25 = 0;
      }

      v26 = *MEMORY[0x277D85DE8];

      llvm::VectorType::getInteger(v25);
      return;
    case 26:
      v24 = *a4 + 1896;
      goto LABEL_82;
    case 27:
      v55 = *a4 + 1848;
      goto LABEL_82;
    default:
      v14 = *a4 + 1608;
LABEL_82:
      v58 = *MEMORY[0x277D85DE8];
      return;
  }
}

uint64_t *getIntrinsicFnAttributeSet(uint64_t *a1, int a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = a1;
  switch(a2)
  {
    case 1:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v43 = v2;
      v44 = 66;
      goto LABEL_72;
    case 2:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v58 = llvm::Attribute::get(v2, 66, 0);
      v25 = v2;
      v26 = 80;
      v40 = 1;
      goto LABEL_82;
    case 3:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v23 = v2;
      v24 = 66;
      goto LABEL_40;
    case 4:
    case 26:
    case 52:
      v3 = 36;
      goto LABEL_12;
    case 5:
    case 33:
    case 72:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v4 = v2;
      v5 = 66;
      goto LABEL_91;
    case 6:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v10 = v2;
      v11 = 27;
      goto LABEL_51;
    case 7:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v58 = llvm::Attribute::get(v2, 66, 0);
      v38 = v2;
      v39 = 23;
      goto LABEL_61;
    case 8:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v10 = v2;
      v11 = 80;
      goto LABEL_51;
    case 9:
      v15 = 0;
      v16 = 0;
      break;
    case 10:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v10 = v2;
      v11 = 80;
      v12 = 3;
      goto LABEL_94;
    case 11:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v10 = v2;
      v11 = 80;
      v12 = 1;
      goto LABEL_94;
    case 12:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v10 = v2;
      v11 = 31;
      goto LABEL_51;
    case 13:
      v54 = llvm::Attribute::get(a1, 20, 0);
      v6 = v2;
      v7 = 34;
      goto LABEL_47;
    case 14:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v58 = llvm::Attribute::get(v2, 66, 0);
      v25 = v2;
      v26 = 80;
      v40 = 2;
      goto LABEL_82;
    case 15:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v58 = llvm::Attribute::get(v2, 66, 0);
      v38 = v2;
      v39 = 57;
LABEL_61:
      v59 = llvm::Attribute::get(v38, v39, 0);
      v27 = v2;
      v28 = 12;
      goto LABEL_79;
    case 16:
    case 59:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v13 = v2;
      v14 = 66;
      goto LABEL_81;
    case 17:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v58 = llvm::Attribute::get(v2, 66, 0);
      v49 = v2;
      v50 = 6;
      goto LABEL_78;
    case 18:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v58 = llvm::Attribute::get(v2, 66, 0);
      v25 = v2;
      v26 = 23;
      goto LABEL_73;
    case 19:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v58 = llvm::Attribute::get(v2, 66, 0);
      v25 = v2;
      v26 = 80;
      v40 = 21;
      goto LABEL_82;
    case 20:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v58 = llvm::Attribute::get(v2, 66, 0);
      v25 = v2;
      v26 = 80;
      v40 = 42;
      goto LABEL_82;
    case 21:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 24, 0);
      v57 = llvm::Attribute::get(v2, 66, 0);
      v4 = v2;
      v5 = 80;
      v51 = 3;
      goto LABEL_92;
    case 22:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 34, 0);
      v56 = llvm::Attribute::get(v2, 66, 0);
      v29 = v2;
      v30 = 80;
      v33 = 3;
      goto LABEL_98;
    case 23:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 24, 0);
      v57 = llvm::Attribute::get(v2, 66, 0);
      v4 = v2;
      v5 = 80;
      v51 = 2;
      goto LABEL_92;
    case 24:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 34, 0);
      v21 = v2;
      v22 = 66;
      goto LABEL_65;
    case 25:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v58 = llvm::Attribute::get(v2, 66, 0);
      v25 = v2;
      v26 = 80;
      v40 = 15;
      goto LABEL_82;
    case 27:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v31 = v2;
      v32 = 66;
      goto LABEL_44;
    case 28:
    case 31:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 31, 0);
      v8 = v2;
      v9 = 5;
      goto LABEL_86;
    case 29:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v10 = v2;
      v11 = 20;
      goto LABEL_51;
    case 30:
      v20 = 36;
      goto LABEL_89;
    case 32:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 24, 0);
      v8 = v2;
      v9 = 66;
      goto LABEL_86;
    case 34:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 66, 0);
      v8 = v2;
      v9 = 80;
      v19 = 15;
      goto LABEL_87;
    case 35:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v58 = llvm::Attribute::get(v2, 66, 0);
      v25 = v2;
      v26 = 80;
      v40 = 4;
      goto LABEL_82;
    case 36:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v36 = v2;
      v37 = 66;
      goto LABEL_58;
    case 37:
    case 38:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v10 = v2;
      v11 = 66;
LABEL_51:
      v12 = 0;
      goto LABEL_94;
    case 39:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 24, 0);
      v57 = llvm::Attribute::get(v2, 66, 0);
      v43 = v2;
      v44 = 6;
      goto LABEL_72;
    case 40:
    case 41:
    case 51:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v6 = v2;
      v7 = 20;
LABEL_47:
      v55 = llvm::Attribute::get(v6, v7, 0);
      v56 = llvm::Attribute::get(v2, 24, 0);
      v29 = v2;
      v30 = 66;
      goto LABEL_97;
    case 42:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 24, 0);
      v57 = llvm::Attribute::get(v2, 66, 0);
      v13 = v2;
      v14 = 6;
LABEL_81:
      v58 = llvm::Attribute::get(v13, v14, 0);
      v25 = v2;
      v26 = 80;
      v40 = 3;
      goto LABEL_82;
    case 43:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 24, 0);
      v57 = llvm::Attribute::get(v2, 66, 0);
      v23 = v2;
      v24 = 6;
LABEL_40:
      v58 = llvm::Attribute::get(v23, v24, 0);
      v25 = v2;
      v26 = 80;
      v40 = 12;
      goto LABEL_82;
    case 44:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 24, 0);
      v57 = llvm::Attribute::get(v2, 66, 0);
      v36 = v2;
      v37 = 6;
LABEL_58:
      v58 = llvm::Attribute::get(v36, v37, 0);
      v25 = v2;
      v26 = 80;
      v40 = 8;
      goto LABEL_82;
    case 45:
    case 47:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 24, 0);
      v57 = llvm::Attribute::get(v2, 66, 0);
      v4 = v2;
      v5 = 6;
      goto LABEL_91;
    case 46:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 31, 0);
      v56 = llvm::Attribute::get(v2, 20, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v4 = v2;
      v5 = 5;
      goto LABEL_91;
    case 48:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v8 = v2;
      v9 = 24;
      goto LABEL_86;
    case 49:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v58 = llvm::Attribute::get(v2, 66, 0);
      v59 = llvm::Attribute::get(v2, 57, 0);
      v27 = v2;
      v28 = 21;
      goto LABEL_79;
    case 50:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 24, 0);
      v57 = llvm::Attribute::get(v2, 66, 0);
      v43 = v2;
      v44 = 57;
LABEL_72:
      v58 = llvm::Attribute::get(v43, v44, 0);
      v25 = v2;
      v26 = 80;
      goto LABEL_73;
    case 53:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 24, 0);
      v57 = llvm::Attribute::get(v2, 66, 0);
      v41 = v2;
      v42 = 6;
      goto LABEL_77;
    case 54:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 24, 0);
      v29 = v2;
      v30 = 6;
      goto LABEL_97;
    case 55:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 24, 0);
      v29 = v2;
      v30 = 80;
      v33 = 8;
      goto LABEL_98;
    case 56:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v10 = v2;
      v11 = 80;
      v12 = 21;
      goto LABEL_94;
    case 57:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v45 = v2;
      v46 = 66;
      goto LABEL_68;
    case 58:
      v54 = llvm::Attribute::get(a1, 20, 0);
      v55 = llvm::Attribute::get(v2, 34, 0);
      v56 = llvm::Attribute::get(v2, 24, 0);
      v57 = llvm::Attribute::get(v2, 66, 0);
      v4 = v2;
      v5 = 80;
LABEL_91:
      v51 = 0;
LABEL_92:
      v58 = llvm::Attribute::get(v4, v5, v51);
      v15 = &v54;
      a1 = v2;
      v16 = 5;
      break;
    case 60:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v8 = v2;
      v9 = 80;
      v19 = 3;
      goto LABEL_87;
    case 61:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v47 = v2;
      v48 = 20;
      goto LABEL_85;
    case 62:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v45 = v2;
      v46 = 20;
LABEL_68:
      v55 = llvm::Attribute::get(v45, v46, 0);
      v8 = v2;
      v9 = 80;
      goto LABEL_86;
    case 63:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v8 = v2;
      v9 = 80;
      v19 = 1;
      goto LABEL_87;
    case 64:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 6, 0);
      v29 = v2;
      v30 = 80;
      v33 = 12;
      goto LABEL_98;
    case 65:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v21 = v2;
      v22 = 6;
LABEL_65:
      v56 = llvm::Attribute::get(v21, v22, 0);
      v29 = v2;
      v30 = 80;
      v33 = 2;
      goto LABEL_98;
    case 66:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v34 = v2;
      v35 = 6;
      goto LABEL_96;
    case 67:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v34 = v2;
      v35 = 57;
LABEL_96:
      v56 = llvm::Attribute::get(v34, v35, 0);
      v29 = v2;
      v30 = 80;
LABEL_97:
      v33 = 0;
LABEL_98:
      v57 = llvm::Attribute::get(v29, v30, v33);
      v15 = &v54;
      a1 = v2;
      v16 = 4;
      break;
    case 68:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v8 = v2;
      v9 = 80;
      v19 = 12;
      goto LABEL_87;
    case 69:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v17 = v2;
      v18 = 20;
      goto LABEL_75;
    case 70:
    case 81:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v10 = v2;
      v11 = 80;
      v12 = 2;
      goto LABEL_94;
    case 71:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v58 = llvm::Attribute::get(v2, 66, 0);
      v25 = v2;
      v26 = 27;
LABEL_73:
      v40 = 0;
LABEL_82:
      v59 = llvm::Attribute::get(v25, v26, v40);
      v15 = &v54;
      a1 = v2;
      v16 = 6;
      break;
    case 73:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v17 = v2;
      v18 = 23;
LABEL_75:
      v55 = llvm::Attribute::get(v17, v18, 0);
      v8 = v2;
      v9 = 80;
      v19 = 2;
      goto LABEL_87;
    case 74:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v47 = v2;
      v48 = 66;
LABEL_85:
      v55 = llvm::Attribute::get(v47, v48, 0);
      v8 = v2;
      v9 = 6;
LABEL_86:
      v19 = 0;
      goto LABEL_87;
    case 75:
      v20 = 31;
LABEL_89:
      v54 = llvm::Attribute::get(a1, v20, 0);
      v10 = v2;
      v11 = 80;
      v12 = 42;
      goto LABEL_94;
    case 76:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v31 = v2;
      v32 = 23;
LABEL_44:
      v55 = llvm::Attribute::get(v31, v32, 0);
      v8 = v2;
      v9 = 80;
      v19 = 42;
LABEL_87:
      v56 = llvm::Attribute::get(v8, v9, v19);
      v15 = &v54;
      a1 = v2;
      v16 = 3;
      break;
    case 77:
    case 79:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v10 = v2;
      v11 = 80;
      v12 = 15;
      goto LABEL_94;
    case 78:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v10 = v2;
      v11 = 80;
      v12 = 12;
LABEL_94:
      v55 = llvm::Attribute::get(v10, v11, v12);
      v15 = &v54;
      a1 = v2;
      v16 = 2;
      break;
    case 80:
      v3 = 31;
LABEL_12:
      v54 = llvm::Attribute::get(a1, v3, 0);
      v15 = &v54;
      a1 = v2;
      v16 = 1;
      break;
    default:
      v54 = llvm::Attribute::get(a1, 36, 0);
      v55 = llvm::Attribute::get(v2, 20, 0);
      v56 = llvm::Attribute::get(v2, 34, 0);
      v57 = llvm::Attribute::get(v2, 24, 0);
      v41 = v2;
      v42 = 66;
LABEL_77:
      v58 = llvm::Attribute::get(v41, v42, 0);
      v49 = v2;
      v50 = 57;
LABEL_78:
      v59 = llvm::Attribute::get(v49, v50, 0);
      v27 = v2;
      v28 = 0;
LABEL_79:
      v60 = llvm::Attribute::get(v27, 80, v28);
      v15 = &v54;
      a1 = v2;
      v16 = 7;
      break;
  }

  result = llvm::AttributeSetNode::get(a1, v15, v16);
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *getIntrinsicArgAttributeSet(uint64_t *a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      v3 = 35;
      goto LABEL_20;
    case 2:
      v3 = 67;
      goto LABEL_20;
    case 3:
      v7 = 21;
      goto LABEL_11;
    case 4:
      v3 = 44;
      goto LABEL_20;
    case 5:
      v3 = 21;
      goto LABEL_20;
    case 6:
      v15 = llvm::Attribute::get(a1, 21, 0);
      v8 = a1;
      v9 = 44;
      goto LABEL_18;
    case 7:
      v4 = 21;
      goto LABEL_13;
    case 8:
      v15 = llvm::Attribute::get(a1, 21, 0);
      v16 = llvm::Attribute::get(a1, 18, 0);
      v5 = a1;
      v6 = 67;
      goto LABEL_24;
    case 9:
      v15 = llvm::Attribute::get(a1, 21, 0);
      v16 = llvm::Attribute::get(a1, 18, 0);
      v5 = a1;
      v6 = 45;
LABEL_24:
      v17 = llvm::Attribute::get(v5, v6, 0);
      v11 = a1;
      v12 = 3;
      break;
    case 10:
      v3 = 46;
      goto LABEL_20;
    case 11:
      v3 = 38;
      goto LABEL_20;
    case 12:
      v3 = 45;
      goto LABEL_20;
    case 13:
      v3 = 75;
      v10 = 4;
      goto LABEL_21;
    case 14:
      v4 = 18;
LABEL_13:
      v15 = llvm::Attribute::get(a1, v4, 0);
      v8 = a1;
      v9 = 67;
      goto LABEL_18;
    case 15:
      v7 = 18;
LABEL_11:
      v15 = llvm::Attribute::get(a1, v7, 0);
      v8 = a1;
      v9 = 45;
LABEL_18:
      v16 = llvm::Attribute::get(v8, v9, 0);
      v11 = a1;
      v12 = 2;
      break;
    default:
      v3 = 10;
LABEL_20:
      v10 = 0;
LABEL_21:
      v15 = llvm::Attribute::get(a1, v3, v10);
      v11 = a1;
      v12 = 1;
      break;
  }

  result = llvm::AttributeSetNode::get(v11, &v15, v12);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::Intrinsic::getDeclaration(uint64_t **a1, int a2, uint64_t a3, uint64_t a4)
{
  Type = llvm::Intrinsic::getType(*a1, a2, a3, a4);
  if (a4)
  {
    getIntrinsicNameImpl(a2, a3, a4, a1, Type, &__p);
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

    llvm::Module::getOrInsertFunction(a1, p_p, size, Type, 0);
    v12 = v11;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = IntrinsicNameTable[a2];
    if (v13)
    {
      v14 = strlen(IntrinsicNameTable[a2]);
    }

    else
    {
      v14 = 0;
    }

    llvm::Module::getOrInsertFunction(a1, v13, v14, Type, 0);
    return v15;
  }

  return v12;
}

uint64_t llvm::Intrinsic::matchIntrinsicSignature(uint64_t a1, unsigned int **a2, unsigned int *a3)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x200000000;
  if (matchIntrinsicType(**(a1 + 16), a2, a3, &v17, 0))
  {
    v6 = 1;
  }

  else
  {
    v7 = v18;
    v8 = 8 * *(a1 + 12);
    v9 = (*(a1 + 16) + 8);
    v10 = v8 - 8;
    while (v10)
    {
      v11 = *v9++;
      v10 -= 8;
      if (matchIntrinsicType(v11, a2, a3, &v17, 0))
      {
        v6 = 2;
        goto LABEL_15;
      }
    }

    v12 = v18;
    if (v18)
    {
      v13 = 0;
      v14 = 0;
      while ((matchIntrinsicType(*(v17 + v13), (v17 + v13 + 8), a3, &v17, 1) & 1) == 0)
      {
        ++v14;
        v13 += 24;
        if (v12 == v14)
        {
          goto LABEL_11;
        }
      }

      if (v7 > v14)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
LABEL_11:
      v6 = 0;
    }
  }

LABEL_15:
  if (v17 != v19)
  {
    free(v17);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t matchIntrinsicType(uint64_t a1, unsigned int **a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2[1];
  if (!v5)
  {
    return 1;
  }

  v61 = *a2;
  v8 = *a2;
  v9 = **a2;
  v10 = (*a2)[1];
  v11 = *(*a2 + 8);
  v12 = v5 - 1;
  v13 = *a2 + 3;
  *a2 = v13;
  a2[1] = (v5 - 1);
  result = 1;
  switch(v9)
  {
    case 1:
      return result;
    case 2:
      v22 = *(a1 + 8) == 10;
      goto LABEL_172;
    case 3:
      v22 = *(a1 + 8) == 12;
      goto LABEL_172;
    case 4:
      v22 = *(a1 + 8) == 9;
      goto LABEL_172;
    case 5:
      v22 = *(a1 + 8) == 0;
      goto LABEL_172;
    case 6:
      v22 = *(a1 + 8) == 1;
      goto LABEL_172;
    case 7:
      v22 = *(a1 + 8) == 2;
      goto LABEL_172;
    case 8:
      v22 = *(a1 + 8) == 3;
      goto LABEL_172;
    case 9:
      v22 = *(a1 + 8) == 5;
      goto LABEL_172;
    case 10:
      v22 = *(a1 + 8) == 13 && v10 == *(a1 + 8) >> 8;
      goto LABEL_172;
    case 11:
      if (!a1 || (*(a1 + 8) & 0xFE) != 0x12)
      {
        return result;
      }

      if (*(a1 + 32) != v10 || v11 != ((~*(a1 + 8) & 0x13) == 0))
      {
        return result;
      }

      v32 = *(a1 + 24);
      return matchIntrinsicType(v32, a2, a3, a4, a5);
    case 12:
      if (!a1)
      {
        return result;
      }

      if (*(a1 + 8) != 15 || *(a1 + 8) >> 8 != v10)
      {
        return result;
      }

      v36 = *v13;
      if (*(a1 + 24))
      {
        if (v36 != 13 || *(v8 + 4))
        {
          v32 = **(a1 + 16);
          return matchIntrinsicType(v32, a2, a3, a4, a5);
        }

        result = 0;
        v58 = (v5 - 2);
      }

      else
      {
        if (v36 - 11 <= 1)
        {
          do
          {
            --v12;
            v57 = *(v8 + 6) - 11;
            v8 += 12;
          }

          while (v57 < 2);
        }

        result = 0;
        v58 = (v12 - 1);
      }

      *a2 = (v8 + 24);
      a2[1] = v58;
      return result;
    case 13:
      if (!a1 || (*(a1 + 8) & 0x6FF) != 0x410 || *(a1 + 12) != v10)
      {
        return result;
      }

      if (!v10)
      {
        goto LABEL_168;
      }

      v46 = 0;
      v47 = 8 * v10 - 8;
      do
      {
        result = matchIntrinsicType(*(*(a1 + 16) + v46), a2, a3, a4, a5);
        if (result)
        {
          break;
        }

        v19 = v47 == v46;
        v46 += 8;
      }

      while (!v19);
      return result;
    case 14:
      v29 = a3[2];
      if (v29 > (v10 >> 3))
      {
        v30 = *(*a3 + 8 * (v10 >> 3));
LABEL_134:
        v22 = v30 == a1;
        goto LABEL_172;
      }

      v55 = v10 & 7;
      if (v29 < (v10 >> 3) || v55 == 7)
      {
        goto LABEL_166;
      }

      llvm::SmallVectorTemplateBase<void *,true>::push_back(a3, a1);
      if (v55 <= 1)
      {
        if (!v55)
        {
          goto LABEL_168;
        }

        if ((*(a1 + 8) & 0xFE) == 0x12)
        {
          v59 = *(**(a1 + 16) + 8);
        }

        else
        {
          v59 = *(a1 + 8);
        }

        v22 = v59 == 13;
        goto LABEL_172;
      }

      if (v55 != 2)
      {
        if (v55 == 3)
        {
          v22 = (*(a1 + 8) & 0xFE) == 18;
        }

        else
        {
          v22 = *(a1 + 8) == 15;
        }

        goto LABEL_172;
      }

      v60 = *(a1 + 8);
      if ((v60 & 0xFE) == 0x12)
      {
        v60 = *(**(a1 + 16) + 8);
      }

      if (v60 >= 6u || ((0x2Fu >> v60) & 1) == 0)
      {
        v22 = (v60 & 0xFD) == 4;
        goto LABEL_172;
      }

      goto LABEL_168;
    case 15:
      if (a3[2] <= (v10 >> 3))
      {
        goto LABEL_166;
      }

      v37 = *(*a3 + 8 * (v10 >> 3));
      v38 = *(v37 + 8);
      if (v37)
      {
        v39 = (*(v37 + 8) & 0xFE) == 18;
      }

      else
      {
        v39 = 0;
      }

      if (v39)
      {
        llvm::VectorType::getExtendedElementVectorType(v37);
        goto LABEL_171;
      }

      if (v37)
      {
        v40 = *(v37 + 8) == 13;
      }

      else
      {
        v40 = 0;
      }

      if (v40)
      {
        v27 = *v37;
        v28 = (v38 >> 7);
        goto LABEL_68;
      }

      return 1;
    case 16:
      if (a3[2] <= (v10 >> 3))
      {
        goto LABEL_166;
      }

      v23 = *(*a3 + 8 * (v10 >> 3));
      v24 = *(v23 + 8);
      if (v23)
      {
        v25 = (*(v23 + 8) & 0xFE) == 18;
      }

      else
      {
        v25 = 0;
      }

      if (v25)
      {
        llvm::VectorType::getTruncatedElementVectorType(v23);
      }

      else
      {
        if (v23)
        {
          v26 = *(v23 + 8) == 13;
        }

        else
        {
          v26 = 0;
        }

        if (!v26)
        {
          return 1;
        }

        v27 = *v23;
        v28 = (v24 >> 9);
LABEL_68:
        v21 = llvm::IntegerType::get(v27, v28);
      }

LABEL_171:
      v22 = v21 == a1;
      goto LABEL_172;
    case 17:
      if (a3[2] <= (v10 >> 3))
      {
        goto LABEL_166;
      }

      v41 = *(*a3 + 8 * (v10 >> 3));
      if ((*(v41 + 8) & 0xFE) != 0x12)
      {
        return 1;
      }

      llvm::VectorType::getHalfElementsVectorType(v41);
      goto LABEL_171;
    case 18:
      if (a3[2] > (v10 >> 3))
      {
        if ((*(*(*a3 + 8 * (v10 >> 3)) + 8) & 0xFE) == 0x12)
        {
          v48 = *(*a3 + 8 * (v10 >> 3));
        }

        else
        {
          v48 = 0;
        }

        if ((*(a1 + 8) & 0xFE) == 0x12)
        {
          v49 = a1;
        }

        else
        {
          v49 = 0;
        }

        if ((v48 == 0) != (v49 != 0))
        {
          if (v49)
          {
            if (*(v48 + 32) != *(v49 + 32) || (*(v49 + 8) != 19) == (*(v48 + 8) == 19))
            {
              return result;
            }

            a1 = *(v49 + 24);
          }

          v32 = a1;
          return matchIntrinsicType(v32, a2, a3, a4, a5);
        }

        return result;
      }

      *a2 = (v8 + 24);
      a2[1] = (v5 - 2);
LABEL_166:
      if (a5)
      {
        return result;
      }

      goto LABEL_167;
    case 19:
      if (a3[2] <= (v10 >> 3))
      {
        goto LABEL_166;
      }

      if (!a1 || *(a1 + 8) != 15)
      {
        return result;
      }

      v53 = *(*a3 + 8 * (v10 >> 3));
      v54 = *(a1 + 24);
      goto LABEL_152;
    case 20:
      if (a3[2] <= (v10 >> 3))
      {
        goto LABEL_166;
      }

      v42 = *(*a3 + 8 * (v10 >> 3));
      if ((*(v42 + 8) & 0xFE) != 0x12)
      {
        v42 = 0;
      }

      if (*(a1 + 8) == 15)
      {
        v43 = a1;
      }

      else
      {
        v43 = 0;
      }

      if (!v43)
      {
        return result;
      }

      goto LABEL_144;
    case 21:
      if (a3[2] <= v10)
      {
        goto LABEL_146;
      }

      v44 = v10;
      if ((a5 & 1) == 0)
      {
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a3, a1);
      }

      v42 = *(*a3 + 8 * v44);
      if ((*(v42 + 8) & 0xFE) != 0x12)
      {
        v42 = 0;
      }

      if ((*(a1 + 8) & 0xFE) == 0x12)
      {
        v45 = a1;
      }

      else
      {
        v45 = 0;
      }

      result = 1;
      if (!v45)
      {
        return result;
      }

      if (!v42)
      {
        return result;
      }

      if (*(v42 + 32) != *(v45 + 32))
      {
        return result;
      }

      if ((*(v45 + 8) != 19) == (*(v42 + 8) == 19))
      {
        return result;
      }

      v43 = *(v45 + 24);
      if (!v43 || *(v43 + 8) != 15)
      {
        return result;
      }

      goto LABEL_145;
    case 22:
      if (a3[2] <= v10 >> 3)
      {
        goto LABEL_166;
      }

      v50 = *(*a3 + 8 * (v10 >> 3));
      if (v50)
      {
        v51 = (*(v50 + 8) & 0xFE) == 18;
      }

      else
      {
        v51 = 0;
      }

      if (!v51)
      {
        return result;
      }

      v30 = *(v50 + 24);
      goto LABEL_134;
    case 23:
    case 24:
      if (a3[2] <= v10 >> 3)
      {
        goto LABEL_166;
      }

      v18 = *(*a3 + 8 * (v10 >> 3));
      if (v18)
      {
        v19 = (*(v18 + 8) & 0xFE) == 18;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
        return result;
      }

      if (v9 == 23)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      llvm::VectorType::getSubdividedVectorType(v18, v20);
      goto LABEL_171;
    case 25:
      if (a3[2] <= v10 >> 3)
      {
        goto LABEL_166;
      }

      v33 = *(*a3 + 8 * (v10 >> 3));
      if ((*(v33 + 8) & 0xFE) != 0x12)
      {
        v33 = 0;
      }

      if ((*(a1 + 8) & 0xFE) != 0x12)
      {
        a1 = 0;
      }

      if (!a1 || !v33)
      {
        return result;
      }

      llvm::VectorType::getInteger(v33);
      v22 = a1 == v34;
      goto LABEL_172;
    case 26:
      v22 = *(a1 + 8) == 11;
      goto LABEL_172;
    case 27:
      v22 = *(a1 + 8) == 6;
      goto LABEL_172;
    case 28:
      if (a3[2] <= v10)
      {
LABEL_146:
        if ((a5 & 1) == 0)
        {
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a3, a1);
LABEL_167:
          llvm::SmallVectorImpl<std::pair<llvm::Type *,llvm::ArrayRef<llvm::Intrinsic::IITDescriptor>>>::emplace_back<llvm::Type *&,llvm::ArrayRef<llvm::Intrinsic::IITDescriptor>&>(a4, a1, &v61);
LABEL_168:
          result = 0;
        }
      }

      else
      {
        v52 = v10;
        if ((a5 & 1) == 0)
        {
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a3, a1);
        }

        v42 = *(*a3 + 8 * v52);
        if ((*(v42 + 8) & 0xFE) != 0x12)
        {
          v42 = 0;
        }

        if (*(a1 + 8) == 15)
        {
          v43 = a1;
        }

        else
        {
          v43 = 0;
        }

        result = 1;
        if (v43)
        {
LABEL_144:
          if (v42)
          {
LABEL_145:
            v53 = *(v42 + 24);
            v54 = *(v43 + 24);
LABEL_152:
            if (v54)
            {
              v22 = v54 == v53;
            }

            else
            {
              v22 = 1;
            }

LABEL_172:
            result = !v22;
          }
        }
      }

      break;
    default:
      v22 = *(a1 + 8) == 7;
      goto LABEL_172;
  }

  return result;
}

llvm::Value *llvm::Intrinsic::remangleIntrinsicFunction(llvm::Intrinsic *this, llvm::Function *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x400000000;
  v3 = *(this + 9);
  if (!v3)
  {
LABEL_9:
    Declaration = 0;
    goto LABEL_46;
  }

  v27 = v29;
  v28 = 0x800000000;
  llvm::Intrinsic::getIntrinsicInfoTableEntries(v3, &v27);
  __p = v27;
  v22 = v28;
  if (llvm::Intrinsic::matchIntrinsicSignature(*(this + 3), &__p, &v24))
  {
    goto LABEL_3;
  }

  v8 = *(*(this + 3) + 8);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_3;
    }

    if (v8 < 0x100 || *__p != 1)
    {
      goto LABEL_3;
    }
  }

  else if (v8 >= 0x100)
  {
LABEL_3:
    v4 = 0;
    goto LABEL_4;
  }

  v4 = 1;
LABEL_4:
  if (v27 != v29)
  {
    free(v27);
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(this + 9);
  if ((*(this + 23) & 0x10) != 0)
  {
    ValueName = llvm::Value::getValueName(this);
    v7 = ValueName + 2;
    Declaration = *ValueName;
  }

  else
  {
    Declaration = 0;
    v7 = &str_3_24;
  }

  v11 = &v20;
  getIntrinsicNameImpl(v5, v24, v25, *(this + 5), *(this + 3), &v20);
  v12 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  if (Declaration != size)
  {
LABEL_27:
    v14 = llvm::ValueSymbolTable::lookup(*(*(this + 5) + 112), v11, size);
    if (v14)
    {
      Declaration = v14;
      if (!*(v14 + 16) && *(v14 + 24) == *(this + 3))
      {
LABEL_44:
        *(Declaration + 9) = *(Declaration + 9) & 0xC00F | *(this + 9) & 0x3FF0;
        if ((*(&v20.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = v20.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:nn200100](&__p, v15 + 8);
      if (v23 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v15)
      {
        if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v20;
        }

        else
        {
          v17 = v20.__r_.__value_.__r.__words[0];
        }

        memmove(p_p, v17, v15);
      }

      strcpy(p_p + v15, ".renamed");
      v29[8] = 260;
      v27 = &__p;
      llvm::Value::setName(Declaration, &v27);
      if (v23 < 0)
      {
        operator delete(__p);
      }
    }

    Declaration = llvm::Intrinsic::getDeclaration(*(this + 5), v5, v24, v25);
    goto LABEL_44;
  }

  if (Declaration)
  {
    if (memcmp(v7, v11, Declaration))
    {
      goto LABEL_27;
    }

    Declaration = 0;
  }

  if (v12 < 0)
  {
LABEL_45:
    operator delete(v20.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (v24 != v26)
  {
    free(v24);
  }

  v18 = *MEMORY[0x277D85DE8];
  return Declaration;
}

uint64_t llvm::Function::hasAddressTaken(llvm::Function *this, const llvm::User **a2, int a3, int a4, int a5, int a6)
{
  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  while (1)
  {
    v11 = *(v6 + 24);
    v12 = *(v11 + 16);
    if (v12 == 4)
    {
      goto LABEL_3;
    }

    if (a3)
    {
      llvm::AbstractCallSite::AbstractCallSite(&v38, v6);
      if (v38)
      {
        v13 = v40 == 0;
      }

      else
      {
        v13 = 1;
      }

      v14 = v13;
      if (v39 != &v41)
      {
        free(v39);
      }

      if (!v14)
      {
        goto LABEL_3;
      }

      v12 = *(v11 + 16);
    }

    if (v12 < 0x1C)
    {
      break;
    }

    if (v12 - 33 > 0x33 || ((1 << (v12 - 33)) & 0x8000000000041) == 0)
    {
      if (v12 - 77 > 1 || (a4 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_79;
    }

    v16 = v12 != 84 || a4 == 0;
    if ((v16 || (v17 = *(v11 - 32)) == 0 || *(v17 + 16) || *(v17 + 24) != *(v11 + 72) || (*(v17 + 32) & 0x2000) == 0 || (llvm::IntrinsicInst::isAssumeLikeIntrinsic(v11) & 1) == 0) && (v11 - 32 != v6 || *(v11 + 72) != *(this + 3)))
    {
      if (!a6)
      {
        goto LABEL_88;
      }

      v18 = *(v6 + 24);
      v19 = *(v18 + 20);
      v20 = (v19 & 0x40000000) != 0 ? *(v18 - 8) : v18 - 32 * (v19 & 0x7FFFFFF);
      if (!llvm::CallBase::isOperandBundleOfType(v11, 6, (v6 - v20) >> 5))
      {
        goto LABEL_88;
      }
    }

LABEL_3:
    v6 = *(v6 + 8);
    if (!v6)
    {
      return 0;
    }
  }

  v21 = v12 != 5 || a4 == 0;
  if (v21 || *(v11 + 18) - 49 > 1)
  {
    goto LABEL_40;
  }

LABEL_79:
  v32 = *(v11 + 8);
  if (!v32)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v33 = *(v32 + 24);
    if (*(v33 + 16) != 84)
    {
      break;
    }

    v34 = *(v33 - 32);
    if (!v34 || *(v34 + 16) || *(v34 + 24) != *(v33 + 72) || (*(v34 + 32) & 0x2000) == 0 || !llvm::IntrinsicInst::isAssumeLikeIntrinsic(v33))
    {
      break;
    }

    v32 = *(v32 + 8);
    if (!v32)
    {
      goto LABEL_3;
    }
  }

LABEL_40:
  if (!a5)
  {
    goto LABEL_88;
  }

  v22 = *(v11 + 8);
  if (!v22)
  {
    goto LABEL_88;
  }

  v23 = *(v11 + 16);
  if (v23 <= 0x1B)
  {
    if (v23 != 5 || *(v11 + 18) - 49 > 1)
    {
      goto LABEL_51;
    }
  }

  else if (v23 - 77 >= 2)
  {
    goto LABEL_51;
  }

  if (!*(v22 + 8))
  {
    v24 = *(v22 + 24);
    if (!*(v24 + 8))
    {
      v24 = v11;
    }

    v22 = *(v24 + 8);
    if (!v22)
    {
      goto LABEL_3;
    }
  }

LABEL_51:
  while (1)
  {
    v25 = *(v22 + 24);
    v26 = v25 && *(v25 + 16) == 3;
    if (!v26 || (*(v25 + 23) & 0x10) == 0)
    {
      break;
    }

    ValueName = llvm::Value::getValueName(*(v22 + 24));
    if (*ValueName != 18 || (*(ValueName + 16) == 0x6D6F632E6D766C6CLL ? (v28 = *(ValueName + 24) == 0x73752E72656C6970) : (v28 = 0), v28 ? (v29 = *(ValueName + 32) == 25701) : (v29 = 0), !v29))
    {
      if ((*(v25 + 23) & 0x10) == 0)
      {
        break;
      }

      v30 = llvm::Value::getValueName(v25);
      if (*v30 != 9)
      {
        break;
      }

      if (*(v30 + 16) != 0x6573752E6D766C6CLL || *(v30 + 24) != 100)
      {
        break;
      }
    }

    v22 = *(v22 + 8);
    if (!v22)
    {
      goto LABEL_3;
    }
  }

LABEL_88:
  if (a2)
  {
    *a2 = v11;
  }

  return 1;
}

BOOL llvm::CallBase::isOperandBundleOfType(llvm::CallBase *this, int a2, unsigned int a3)
{
  v3 = *(this + 5);
  if (v3 < 0 && (v5 = this - 32 * (v3 & 0x7FFFFFF), v6 = *(v5 - 1), (v6 & 0xFFFFFFFF0) != 0) && *&v5[-v6] <= a3 && *(v5 - 3) > a3)
  {
    return *(*llvm::CallBase::getBundleOpInfoForOperand(this, a3) + 8) == a2;
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::Function::setHungoffOperand<0>(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    result = llvm::Function::allocHungoffUselist(result);
    v4 = *(v2 + 20);
    if ((v4 & 0x40000000) != 0)
    {
      v5 = *(v2 - 8);
    }

    else
    {
      v5 = v2 - 32 * (v4 & 0x7FFFFFF);
    }

    if (*v5)
    {
      v8 = *(v5 + 8);
      **(v5 + 16) = v8;
      if (v8)
      {
        *(v8 + 16) = *(v5 + 16);
      }
    }

    *v5 = a2;
    v11 = *(a2 + 8);
    v10 = (a2 + 8);
    v9 = v11;
    *(v5 + 8) = v11;
    if (v11)
    {
      *(v9 + 16) = v5 + 8;
    }

    *(v5 + 16) = v10;
    *v10 = v5;
  }

  else
  {
    v6 = *(result + 20);
    if ((v6 & 0x7FFFFFF) != 0)
    {
      if ((v6 & 0x40000000) != 0)
      {
        v7 = *(result - 8);
      }

      else
      {
        v7 = result - 32 * (v6 & 0x7FFFFFF);
      }

      v12 = llvm::PointerType::get((***result + 1920), 0);
      result = llvm::ConstantPointerNull::get(v12);
      if (*v7)
      {
        v13 = *(v7 + 8);
        **(v7 + 16) = v13;
        if (v13)
        {
          *(v13 + 16) = *(v7 + 16);
        }
      }

      *v7 = result;
      if (result)
      {
        v15 = *(result + 8);
        result += 8;
        v14 = v15;
        *(v7 + 8) = v15;
        if (v15)
        {
          *(v14 + 16) = v7 + 8;
        }

        *(v7 + 16) = result;
        *result = v7;
      }
    }
  }

  return result;
}

uint64_t llvm::Function::setHungoffOperand<1>(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    result = llvm::Function::allocHungoffUselist(result);
    v4 = *(v2 + 20);
    if ((v4 & 0x40000000) != 0)
    {
      v5 = *(v2 - 8);
    }

    else
    {
      v5 = v2 - 32 * (v4 & 0x7FFFFFF);
    }

    if (*(v5 + 32))
    {
      v8 = *(v5 + 40);
      **(v5 + 48) = v8;
      if (v8)
      {
        *(v8 + 16) = *(v5 + 48);
      }
    }

    *(v5 + 32) = a2;
    v11 = *(a2 + 8);
    v10 = (a2 + 8);
    v9 = v11;
    *(v5 + 40) = v11;
    if (v11)
    {
      *(v9 + 16) = v5 + 40;
    }

    *(v5 + 48) = v10;
    *v10 = v5 + 32;
  }

  else
  {
    v6 = *(result + 20);
    if ((v6 & 0x7FFFFFF) != 0)
    {
      if ((v6 & 0x40000000) != 0)
      {
        v7 = *(result - 8);
      }

      else
      {
        v7 = result - 32 * (v6 & 0x7FFFFFF);
      }

      v12 = llvm::PointerType::get((***result + 1920), 0);
      result = llvm::ConstantPointerNull::get(v12);
      v13 = (v7 + 32);
      if (*(v7 + 32))
      {
        v14 = *(v7 + 40);
        **(v7 + 48) = v14;
        if (v14)
        {
          *(v14 + 16) = *(v7 + 48);
        }
      }

      *v13 = result;
      if (result)
      {
        v16 = *(result + 8);
        result += 8;
        v15 = v16;
        *(v7 + 40) = v16;
        if (v16)
        {
          *(v15 + 16) = v7 + 40;
        }

        *(v7 + 48) = result;
        *result = v13;
      }
    }
  }

  return result;
}

uint64_t llvm::Function::setHungoffOperand<2>(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    result = llvm::Function::allocHungoffUselist(result);
    v4 = *(v2 + 20);
    if ((v4 & 0x40000000) != 0)
    {
      v5 = *(v2 - 8);
    }

    else
    {
      v5 = v2 - 32 * (v4 & 0x7FFFFFF);
    }

    if (*(v5 + 64))
    {
      v8 = *(v5 + 72);
      **(v5 + 80) = v8;
      if (v8)
      {
        *(v8 + 16) = *(v5 + 80);
      }
    }

    *(v5 + 64) = a2;
    v11 = *(a2 + 8);
    v10 = (a2 + 8);
    v9 = v11;
    *(v5 + 72) = v11;
    if (v11)
    {
      *(v9 + 16) = v5 + 72;
    }

    *(v5 + 80) = v10;
    *v10 = v5 + 64;
  }

  else
  {
    v6 = *(result + 20);
    if ((v6 & 0x7FFFFFF) != 0)
    {
      if ((v6 & 0x40000000) != 0)
      {
        v7 = *(result - 8);
      }

      else
      {
        v7 = result - 32 * (v6 & 0x7FFFFFF);
      }

      v12 = llvm::PointerType::get((***result + 1920), 0);
      result = llvm::ConstantPointerNull::get(v12);
      v13 = (v7 + 64);
      if (*(v7 + 64))
      {
        v14 = *(v7 + 72);
        **(v7 + 80) = v14;
        if (v14)
        {
          *(v14 + 16) = *(v7 + 80);
        }
      }

      *v13 = result;
      if (result)
      {
        v16 = *(result + 8);
        result += 8;
        v15 = v16;
        *(v7 + 72) = v16;
        if (v16)
        {
          *(v15 + 16) = v7 + 72;
        }

        *(v7 + 80) = result;
        *result = v13;
      }
    }
  }

  return result;
}

uint64_t llvm::Function::allocHungoffUselist(uint64_t this)
{
  if ((*(this + 20) & 0x7FFFFFF) == 0)
  {
    v1 = this;
    v2 = 96;
    v3 = operator new(0x60uLL);
    *(v1 - 1) = v3;
    do
    {
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
      v3[3] = v1;
      v3 += 4;
      v2 -= 32;
    }

    while (v2);
    v1[5] = v1[5] & 0xF8000000 | 3;
    v4 = llvm::PointerType::get((***v1 + 1920), 0);
    this = llvm::ConstantPointerNull::get(v4);
    v5 = v1[5];
    if ((v5 & 0x40000000) != 0)
    {
      v6 = *(v1 - 1);
    }

    else
    {
      v6 = &v1[-8 * (v5 & 0x7FFFFFF)];
    }

    if (*v6)
    {
      v7 = *(v6 + 1);
      **(v6 + 2) = v7;
      if (v7)
      {
        *(v7 + 16) = *(v6 + 2);
      }
    }

    *v6 = this;
    if (this)
    {
      v8 = (this + 8);
      v9 = *(this + 8);
      *(v6 + 1) = v9;
      if (v9)
      {
        *(v9 + 16) = v6 + 2;
      }

      *(v6 + 2) = v8;
      *v8 = v6;
    }

    v10 = v1[5];
    if ((v10 & 0x40000000) != 0)
    {
      v11 = *(v1 - 1);
    }

    else
    {
      v11 = &v1[-8 * (v10 & 0x7FFFFFF)];
    }

    v12 = v11 + 8;
    if (*(v11 + 4))
    {
      v13 = *(v11 + 5);
      **(v11 + 6) = v13;
      if (v13)
      {
        *(v13 + 16) = *(v11 + 6);
      }
    }

    *v12 = this;
    if (this)
    {
      v14 = (this + 8);
      v15 = *(this + 8);
      *(v11 + 5) = v15;
      if (v15)
      {
        *(v15 + 16) = v11 + 10;
      }

      *(v11 + 6) = v14;
      *v14 = v12;
    }

    v16 = v1[5];
    if ((v16 & 0x40000000) != 0)
    {
      v17 = *(v1 - 1);
    }

    else
    {
      v17 = &v1[-8 * (v16 & 0x7FFFFFF)];
    }

    v18 = v17 + 16;
    if (*(v17 + 8))
    {
      v19 = *(v17 + 9);
      **(v17 + 10) = v19;
      if (v19)
      {
        *(v19 + 16) = *(v17 + 10);
      }
    }

    *v18 = this;
    if (this)
    {
      v21 = *(this + 8);
      this += 8;
      v20 = v21;
      *(v17 + 9) = v21;
      if (v21)
      {
        *(v20 + 16) = v17 + 18;
      }

      *(v17 + 10) = this;
      *this = v18;
    }
  }

  return this;
}

uint64_t llvm::GlobalValue::GlobalValue(uint64_t a1, llvm::PointerType **a2, char a3, uint64_t a4, int a5, int a6, const llvm::Twine *a7, llvm::Type *a8)
{
  *a1 = llvm::PointerType::get(a2, a8);
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 17) = 0;
  *(a1 + 18) = 0;
  *(a1 + 20) = *(a1 + 20) & 0xC0000000 | a5 & 0x7FFFFFF;
  *(a1 + 24) = a2;
  *(a1 + 32) = *(a1 + 32) & 0xFFFE000F;
  *(a1 + 40) = 0;
  llvm::GlobalValue::setLinkage(a1, a6);
  llvm::Value::setName(a1, a7);
  return a1;
}

void getMangledTypeStr(std::string *a1, BOOL *a2, _BYTE *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v6 = *(a2 + 2);
  v7 = *(a2 + 2);
  if (a2 && v7 == 15)
  {
    if (v6 >= 0x100)
    {
      v13 = v6 >> 8;
      v8 = &v83.__r_.__value_.__s.__data_[21];
      do
      {
        *--v8 = (v13 % 0xA) | 0x30;
        v11 = v13 > 9;
        v13 /= 0xAuLL;
      }

      while (v11);
    }

    else
    {
      v8 = &v83.__r_.__value_.__s.__data_[20];
      v83.__r_.__value_.__s.__data_[20] = 48;
    }

    std::string::__init_with_size[abi:nn200100]<char *,char *>(&__dst, v8, &v83.__r_.__value_.__s.__data_[21], &v83.__r_.__value_.__r.__words[2] + 5 - v8);
    v14 = std::string::insert(&__dst, 0, "p");
    v15 = v14->__r_.__value_.__r.__words[2];
    *&v83.__r_.__value_.__l.__data_ = *&v14->__r_.__value_.__l.__data_;
    v83.__r_.__value_.__r.__words[2] = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v83;
    }

    else
    {
      v16 = v83.__r_.__value_.__r.__words[0];
    }

    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v83.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v16, size);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (!*(a2 + 3))
    {
      goto LABEL_142;
    }

    getMangledTypeStr(&v83, **(a2 + 2));
    v18 = (v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v83 : v83.__r_.__value_.__r.__words[0];
    v19 = (v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v83.__r_.__value_.__r.__words[2]) : v83.__r_.__value_.__l.__size_;
    std::string::append(a1, v18, v19);
    if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

    v20 = v83.__r_.__value_.__r.__words[0];
    goto LABEL_85;
  }

  if (a2 && v7 == 17)
  {
    v9 = *(a2 + 4);
    if (v9)
    {
      v10 = &v83.__r_.__value_.__s.__data_[21];
      do
      {
        *--v10 = (v9 % 0xA) | 0x30;
        v11 = v9 > 9;
        v9 /= 0xAuLL;
      }

      while (v11);
    }

    else
    {
      v10 = &v83.__r_.__value_.__s.__data_[20];
      v83.__r_.__value_.__s.__data_[20] = 48;
    }

    std::string::__init_with_size[abi:nn200100]<char *,char *>(&v81, v10, &v83.__r_.__value_.__s.__data_[21], &v83.__r_.__value_.__r.__words[2] + 5 - v10);
    v29 = "a";
LABEL_65:
    v30 = std::string::insert(&v81, 0, v29);
    v31 = v30->__r_.__value_.__r.__words[2];
    *&__dst.__r_.__value_.__l.__data_ = *&v30->__r_.__value_.__l.__data_;
    __dst.__r_.__value_.__r.__words[2] = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    getMangledTypeStr(__p, *(a2 + 3));
    if ((v80 & 0x80u) == 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    if ((v80 & 0x80u) == 0)
    {
      v33 = v80;
    }

    else
    {
      v33 = __p[1];
    }

    v34 = std::string::append(&__dst, v32, v33);
    v35 = v34->__r_.__value_.__r.__words[2];
    *&v83.__r_.__value_.__l.__data_ = *&v34->__r_.__value_.__l.__data_;
    v83.__r_.__value_.__r.__words[2] = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v83;
    }

    else
    {
      v36 = v83.__r_.__value_.__r.__words[0];
    }

    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v37 = v83.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v36, v37);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (v80 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

    v20 = v81.__r_.__value_.__r.__words[0];
    goto LABEL_85;
  }

  if (a2 && v7 == 16)
  {
    if ((v6 & 0x400) != 0)
    {
      std::string::append(a1, "sl_");
      v40 = *(a2 + 3);
      if (v40)
      {
        v41 = *(a2 + 2);
        v42 = 8 * v40;
        do
        {
          getMangledTypeStr(&v83, *v41);
          if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v83;
          }

          else
          {
            v43 = v83.__r_.__value_.__r.__words[0];
          }

          if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v44 = v83.__r_.__value_.__l.__size_;
          }

          std::string::append(a1, v43, v44);
          if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v83.__r_.__value_.__l.__data_);
          }

          ++v41;
          v42 -= 8;
        }

        while (v42);
      }
    }

    else
    {
      std::string::append(a1, "s_");
      v12 = *(a2 + 3);
      if (v12)
      {
        std::string::append(a1, (v12 + 16), *v12);
      }

      else
      {
        *a3 = 1;
      }
    }

    v28 = "s";
LABEL_141:
    std::string::append(a1, v28);
    goto LABEL_142;
  }

  if (a2 && v7 == 14)
  {
    getMangledTypeStr(&__dst, **(a2 + 2));
    v21 = std::string::insert(&__dst, 0, "f_");
    v22 = v21->__r_.__value_.__r.__words[2];
    *&v83.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
    v83.__r_.__value_.__r.__words[2] = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v83;
    }

    else
    {
      v23 = v83.__r_.__value_.__r.__words[0];
    }

    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v83.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v23, v24);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 3) != 1)
    {
      v25 = 0;
      do
      {
        getMangledTypeStr(&v83, *(*(a2 + 2) + 8 * v25 + 8));
        if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v83;
        }

        else
        {
          v26 = v83.__r_.__value_.__r.__words[0];
        }

        if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = v83.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, v26, v27);
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        ++v25;
      }

      while (v25 < (*(a2 + 3) - 1));
    }

    if (*(a2 + 2) > 0xFFu)
    {
      std::string::append(a1, "vararg");
    }

    v28 = "f";
    goto LABEL_141;
  }

  if (a2 && (*(a2 + 2) & 0xFE) == 0x12)
  {
    v38 = *(a2 + 8);
    if (v7 == 19)
    {
      std::string::append(a1, "nx");
    }

    if (v38)
    {
      v39 = &v83.__r_.__value_.__s.__data_[21];
      do
      {
        *--v39 = (v38 % 0xA) | 0x30;
        v11 = v38 > 9;
        v38 /= 0xAuLL;
      }

      while (v11);
    }

    else
    {
      v39 = &v83.__r_.__value_.__s.__data_[20];
      v83.__r_.__value_.__s.__data_[20] = 48;
    }

    std::string::__init_with_size[abi:nn200100]<char *,char *>(&v81, v39, &v83.__r_.__value_.__s.__data_[21], &v83.__r_.__value_.__r.__words[2] + 5 - v39);
    v29 = "v";
    goto LABEL_65;
  }

  if (a2 && v7 == 21)
  {
    std::string::append(a1, "t");
    std::string::append(a1, *(a2 + 3), *(a2 + 4));
    v45 = *(a2 + 3);
    if (v45)
    {
      v46 = *(a2 + 2);
      v47 = 8 * v45;
      do
      {
        getMangledTypeStr(&__dst, *v46);
        v48 = std::string::insert(&__dst, 0, "_");
        v49 = v48->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = &v83;
        }

        else
        {
          v50 = v83.__r_.__value_.__r.__words[0];
        }

        if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v51 = v83.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, v50, v51);
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        ++v46;
        v47 -= 8;
      }

      while (v47);
    }

    v52 = *(a2 + 2);
    if (v52 >= 0x100)
    {
      v53 = *(a2 + 5);
      v54 = (v53 + ((v52 >> 6) & 0x3FFFFFC));
      do
      {
        v55 = *v53;
        v56 = &v83.__r_.__value_.__s.__data_[21];
        if (v55)
        {
          do
          {
            *--v56 = (v55 % 0xA) | 0x30;
            v11 = v55 > 9;
            v55 /= 0xAuLL;
          }

          while (v11);
        }

        else
        {
          v83.__r_.__value_.__s.__data_[20] = 48;
          v56 = &v83.__r_.__value_.__s.__data_[20];
        }

        std::string::__init_with_size[abi:nn200100]<char *,char *>(&__dst, v56, &v83.__r_.__value_.__s.__data_[21], &v83.__r_.__value_.__r.__words[2] + 5 - v56);
        v57 = std::string::insert(&__dst, 0, "_");
        v58 = v57->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = *&v57->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = &v83;
        }

        else
        {
          v59 = v83.__r_.__value_.__r.__words[0];
        }

        if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v60 = v83.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, v59, v60);
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        ++v53;
      }

      while (v53 != v54);
    }

    v28 = "t";
    goto LABEL_141;
  }

  v62 = *(a2 + 2);
  if (v62 > 5)
  {
    if (*(a2 + 2) > 9u)
    {
      if (v62 == 10)
      {
        v71 = *MEMORY[0x277D85DE8];
        v64 = "x86mmx";
      }

      else
      {
        if (v62 != 11)
        {
          llvm::utostr((v6 >> 8), 0, &__dst);
          v75 = std::string::insert(&__dst, 0, "i");
          v76 = v75->__r_.__value_.__r.__words[2];
          *&v83.__r_.__value_.__l.__data_ = *&v75->__r_.__value_.__l.__data_;
          v83.__r_.__value_.__r.__words[2] = v76;
          v75->__r_.__value_.__l.__size_ = 0;
          v75->__r_.__value_.__r.__words[2] = 0;
          v75->__r_.__value_.__r.__words[0] = 0;
          if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v77 = &v83;
          }

          else
          {
            v77 = v83.__r_.__value_.__r.__words[0];
          }

          if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v78 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v78 = v83.__r_.__value_.__l.__size_;
          }

          std::string::append(a1, v77, v78);
          if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v83.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_142;
          }

          v20 = __dst.__r_.__value_.__r.__words[0];
LABEL_85:
          operator delete(v20);
LABEL_142:
          v61 = *MEMORY[0x277D85DE8];
          return;
        }

        v67 = *MEMORY[0x277D85DE8];
        v64 = "x86amx";
      }
    }

    else if (v62 == 6)
    {
      v69 = *MEMORY[0x277D85DE8];
      v64 = "ppcf128";
    }

    else if (v62 == 7)
    {
      v65 = *MEMORY[0x277D85DE8];
      v64 = "isVoid";
    }

    else
    {
      v73 = *MEMORY[0x277D85DE8];
      v64 = "Metadata";
    }
  }

  else if (*(a2 + 2) > 2u)
  {
    if (v62 == 3)
    {
      v70 = *MEMORY[0x277D85DE8];
      v64 = "f64";
    }

    else if (v62 == 4)
    {
      v66 = *MEMORY[0x277D85DE8];
      v64 = "f80";
    }

    else
    {
      v74 = *MEMORY[0x277D85DE8];
      v64 = "f128";
    }
  }

  else if (*(a2 + 2))
  {
    if (v62 == 1)
    {
      v63 = *MEMORY[0x277D85DE8];
      v64 = "bf16";
    }

    else
    {
      v72 = *MEMORY[0x277D85DE8];
      v64 = "f32";
    }
  }

  else
  {
    v68 = *MEMORY[0x277D85DE8];
    v64 = "f16";
  }

  std::string::append(a1, v64);
}

unsigned int *llvm::SmallVectorTemplateBase<llvm::Intrinsic::IITDescriptor,true>::push_back(unsigned int *result, uint64_t a2, int a3)
{
  v5 = result;
  v6 = result[2];
  if (v6 >= result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v6 + 1, 12);
    LODWORD(v6) = v5[2];
  }

  v7 = *v5 + 12 * v6;
  *v7 = a2;
  *(v7 + 8) = a3;
  ++v5[2];
  return result;
}

double llvm::VectorType::getExtendedElementVectorType(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *v2;
  if ((*(v2 + 8) & 0xFE) == 0x12)
  {
    v2 = **(v2 + 16);
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v2);
  v5 = llvm::IntegerType::get(v3, (2 * PrimitiveSizeInBits));
  v6 = (*(a1 + 32) | ((*(a1 + 8) == 19) << 32));

  return llvm::VectorType::get(v5, v6);
}

double llvm::VectorType::getTruncatedElementVectorType(uint64_t **a1)
{
  v2 = a1[3];
  v3 = v2[8];
  v4 = v3 < 4 || v3 == 5;
  if (v4 || (v3 & 0xFFFFFFFD) == 4)
  {
    v6 = **a1;
    v4 = v3 == 3;
    v7 = (v6 + 1656);
    v8 = (v6 + 1704);
    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v2);
    v14 = PrimitiveSizeInBits;
    if (v13)
    {
    }

    v9 = llvm::IntegerType::get(*a1, (v14 >> 1));
  }

  v10 = (*(a1 + 8) | ((*(a1 + 8) == 19) << 32));

  return llvm::VectorType::get(v9, v10);
}

void llvm::VectorType::getSubdividedVectorType(uint64_t a1, int a2)
{
  do
  {
    llvm::VectorType::get(*(a1 + 24), ((2 * *(a1 + 32)) | ((*(a1 + 8) == 19) << 32)));
    llvm::VectorType::getTruncatedElementVectorType(v3);
    --a2;
  }

  while (a2);
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::Type *,llvm::ArrayRef<llvm::Intrinsic::IITDescriptor>>>::emplace_back<llvm::Type *&,llvm::ArrayRef<llvm::Intrinsic::IITDescriptor>&>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<std::pair<llvm::Type *,llvm::ArrayRef<llvm::Intrinsic::IITDescriptor>>,true>::growAndEmplaceBack<llvm::Type *&,llvm::ArrayRef<llvm::Intrinsic::IITDescriptor>&>(a1, a2, a3);
  }

  v4 = *a1 + 24 * v3;
  *v4 = a2;
  *(v4 + 8) = *a3;
  ++*(a1 + 8);
  return a1;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<llvm::Type *,llvm::ArrayRef<llvm::Intrinsic::IITDescriptor>>,true>::growAndEmplaceBack<llvm::Type *&,llvm::ArrayRef<llvm::Intrinsic::IITDescriptor>&>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v11 = a2;
  v12 = *a3;
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = &v11;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= &v11 && v5 + 24 * v4 > &v11)
    {
      v10 = &v11 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 24);
      v5 = *a1;
      v6 = &v10[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 24);
      v5 = *a1;
      v6 = &v11;
    }
  }

  v7 = v5 + 24 * *(a1 + 8);
  v8 = *v6;
  *(v7 + 16) = *(v6 + 2);
  *v7 = v8;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 24 * v7 - 24;
}

uint64_t llvm::SymbolTableListTraits<llvm::Function>::removeNodeFromList(uint64_t result, llvm::Value *this)
{
  *(this + 5) = 0;
  if ((*(this + 23) & 0x10) != 0)
  {
    v2 = *(result + 88);
    if (v2)
    {
      ValueName = llvm::Value::getValueName(this);
      v4 = *ValueName;
      v5 = (ValueName + *(v2 + 20));

      return llvm::StringMapImpl::RemoveKey(v2, v5, v4);
    }
  }

  return result;
}

void llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::transfer(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 != a5)
  {
    llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList(a1, a3, a4, a5);
    if (a4 != a5)
    {
      v8 = *a5;
      v9 = *a4;
      *(v9 + 8) = a5;
      *a5 = v9;
      v10 = *a2;
      *(v8 + 8) = a2;
      *a4 = v10;
      *(v10 + 8) = a4;
      *a2 = v8;
    }
  }
}

uint64_t std::unique_ptr<llvm::ValueSymbolTable>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(result);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<llvm::Function>,llvm::SymbolTableListTraits<llvm::Function>>::insert(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a3 + 40) = a1 - 24;
  if ((*(a3 + 23) & 0x10) != 0)
  {
    v5 = *(a1 + 88);
    if (v5)
    {
      llvm::ValueSymbolTable::reinsertValue(v5, a3);
    }
  }

  v6 = *a2;
  *(a3 + 56) = *a2;
  *(a3 + 64) = a2;
  v7 = a3 + 56;
  *(v6 + 8) = v7;
  *a2 = v7;
  return v7;
}

uint64_t _GLOBAL__sub_I_Function_cpp()
{
  v4 = 1;
  v2 = 1024;
  v3 = &v2;
  v1.n128_u64[0] = "Maximum size for the name of non-global values.";
  v1.n128_u64[1] = 47;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [26],llvm::cl::OptionHidden,llvm::cl::initializer<int>,llvm::cl::desc>(&NonGlobalValueMaxNameSize, "non-global-value-max-name-size", &v4, &v3, &v1);
  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &NonGlobalValueMaxNameSize, &dword_274E5C000);
}

uint64_t llvm::getGCStrategy(const void *a1, const void *a2)
{
  v13[0] = a1;
  v13[1] = a2;
  v2 = llvm::Registry<llvm::GCStrategy>::Head;
  if (!llvm::Registry<llvm::GCStrategy>::Head)
  {
    std::string::basic_string[abi:nn200100]<0>(&v11, "unsupported GC: ");
    llvm::StringRef::str(v13, &v10);
    std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v11, &v10, &v8);
    std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v8, " (did you remember to link and initialize the library?)", &v12);
    std::string::~string(&v8);
    std::string::~string(&v10);
    std::string::~string(&v11);
LABEL_7:
    v9 = 260;
    v8.__r_.__value_.__r.__words[0] = &v12;
    llvm::report_fatal_error(&v8, 1);
  }

  while (1)
  {
    v5 = v2[1];
    if (*(v5 + 8) == a2 && (!a2 || !memcmp(*v5, a1, a2)))
    {
      break;
    }

    v2 = *v2;
    if (!v2)
    {
      std::string::basic_string[abi:nn200100]<0>(&v11, "unsupported GC: ");
      llvm::StringRef::str(v13, &v10);
      std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v11, &v10, &v12);
      goto LABEL_7;
    }
  }

  v6 = *(v5 + 32);

  return v6();
}

BOOL llvm::GlobalPtrAuthInfo::tryAnalyze@<W0>(uint64_t ***this@<X0>, llvm *a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = **this;
  v5 = llvm::Value::stripPointerCasts(this);
  if (!v5 || (v6 = v5, *(v5 + 16) != 3))
  {
    v13 = "value isn't a global";
    goto LABEL_11;
  }

  if ((*(v5 + 34) & 0x80) == 0 || (v7 = ***v5, v31[0] = v5, v8 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::FindAndConstruct((v7 + 2552), v31), v8[2] != 12) || ((v9 = v8[1], v10 = *v9, v11 = *(v9 + 2), v10 == 0x7274702E6D766C6CLL) ? (v12 = v11 == 1752462689) : (v12 = 0), !v12))
  {
    v13 = "global isn't in section llvm.ptrauth";
    goto LABEL_11;
  }

  if (*(v6 + 16))
  {
    if (*(v6 + 16) == 3 && (*(v6 + 5) & 0x7FFFFFF) == 0)
    {
LABEL_18:
      v13 = "global doesn't have an initializer";
      goto LABEL_11;
    }
  }

  else if (*(v6 + 9) == (v6 + 72) && (*(v6 + 35) & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = *(v6 - 4);
  v16 = *v15;
  if (!*v15 || *(v16 + 8) != 16)
  {
    v13 = "global isn't a struct";
    goto LABEL_11;
  }

  v17 = *v4 + 2016;
  v18 = *v4 + 1992;
  v31[0] = llvm::PointerType::get((*v4 + 1944), 0);
  v31[1] = v18;
  v31[2] = v17;
  v31[3] = v17;
  v19 = llvm::StructType::get(v4, v31, 4, 0);
  result = llvm::StructType::isLayoutIdentical(v16, v19);
  if (!result)
  {
    v13 = "global doesn't have type '{ i8*, i32, i64, i64 }'";
LABEL_11:
    v31[0] = v13;
    v32 = 259;
    getErrorErrorCat();
    operator new();
  }

  v21 = *(v15 + 5);
  if ((v21 & 0x40000000) != 0)
  {
    v22 = *(v15 - 1);
    v25 = v22[4];
    if (!v25 || *(v25 + 16) != 16)
    {
LABEL_39:
      v30 = "key isn't a constant integer";
      goto LABEL_45;
    }
  }

  else
  {
    v22 = &v15[-4 * (v21 & 0x7FFFFFF)];
    v23 = v22[4];
    if (v23)
    {
      v24 = *(v23 + 16) == 16;
    }

    else
    {
      v24 = 0;
    }

    if (!v24)
    {
      goto LABEL_39;
    }
  }

  v26 = *(v22[8] + 16);
  if (v26 != 5 && v26 != 16)
  {
    v30 = "address discriminator isn't a constant integer or expr";
    goto LABEL_45;
  }

  if ((v21 & 0x40000000) != 0)
  {
    v28 = *(v15 - 1);
  }

  else
  {
    v28 = &v15[-4 * (v21 & 0x7FFFFFF)];
  }

  v29 = v28[12];
  if (!v29 || *(v29 + 16) != 16)
  {
    v30 = "discriminator isn't a constant integer";
LABEL_45:
    v31[0] = v30;
    v32 = 259;
    llvm::createError(a2, v31);
  }

  *(a2 + 8) &= ~1u;
  *a2 = v6;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ***llvm::GlobalValue::setPartition(uint64_t ***result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = a2;
  v5 = result;
  if ((*(result + 33) & 0x80) != 0)
  {
    if (!a3)
    {
      v7 = 0;
      goto LABEL_7;
    }

LABEL_5:
    v4 = llvm::UniqueStringSaver::save((***result + 2168), a2, a3, a4);
    v7 = v6;
LABEL_7:
    v8 = ***v5;
    v9 = v5;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::FindAndConstruct((v8 + 2576), &v9);
    result[1] = v4;
    result[2] = v7;
    *(v5 + 8) = v5[4] & 0xFFFF7FFF | ((v7 != 0) << 15);
    return result;
  }

  if (a3)
  {
    goto LABEL_5;
  }

  return result;
}

void *llvm::GlobalValue::getPartition(uint64_t ***this)
{
  if ((*(this + 33) & 0x80) == 0)
  {
    return &str_3_20;
  }

  v7[1] = v1;
  v7[2] = v2;
  v4 = ***this;
  v7[0] = this;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::FindAndConstruct((v4 + 2576), v7);
  result = v5[1];
  v6 = v5[2];
  return result;
}

void *llvm::GlobalValue::setSanitizerMetadata(uint64_t ***a1, char a2)
{
  v4 = ***a1;
  v6 = a1;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>,llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>::FindAndConstruct((v4 + 2600), &v6);
  *(result + 8) = a2;
  *(a1 + 8) |= 0x10000u;
  return result;
}

void llvm::GlobalObject::~GlobalObject(llvm::GlobalObject *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    llvm::SmallPtrSetImplBase::erase_imp((v2 + 16), this);
  }

  *(this + 6) = 0;
  llvm::Constant::removeDeadConstantUsers(this);

  llvm::Value::~Value(this, v3);
}

const void **llvm::GlobalObject::setComdat(const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[6];
  if (v4)
  {
    result = llvm::SmallPtrSetImplBase::erase_imp(v4 + 2, result);
  }

  v3[6] = a2;
  if (a2)
  {
    return llvm::SmallPtrSetImpl<llvm::Value *>::insert((a2 + 16), v3, v5);
  }

  return result;
}

uint64_t llvm::GlobalValue::isInterposable(llvm::GlobalValue *this)
{
  if (*(this + 16) == 3)
  {
    Section = llvm::GlobalValue::getSection(this);
    if (v3 == 12 && *Section == 0x7274702E6D766C6CLL && Section[2] == 1752462689)
    {
      return 1;
    }
  }

  result = 1;
  if (((1 << (*(this + 8) & 0xF)) & 0x1EB) != 0)
  {
    result = *(this + 5);
    if (result)
    {
      result = llvm::Module::getSemanticInterposition(result);
      if (result)
      {
        return (*(this + 33) & 0x40) == 0;
      }
    }
  }

  return result;
}

void *llvm::GlobalValue::getSection(llvm::GlobalValue *this)
{
  v1 = this;
  if (this)
  {
    if (*(this + 16) == 1)
    {
      v6[0] = 0;
      v6[1] = 0;
      v7 = 0;
      v1 = findBaseObject<llvm::GlobalValue::getAliaseeObject(void)::$_0>(*(this - 4), v6);
      MEMORY[0x277C69E30](v6[0], 8);
      if (!v1)
      {
        return &str_3_20;
      }
    }
  }

  if ((*(v1 + 34) & 0x80) == 0)
  {
    return 0;
  }

  v3 = ***v1;
  v6[0] = v1;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::FindAndConstruct((v3 + 2552), v6);
  result = v4[1];
  v5 = v4[2];
  return result;
}

BOOL llvm::GlobalValue::isDeclaration(llvm::GlobalValue *this)
{
  if (this && *(this + 16) == 3)
  {
    return (*(this + 5) & 0x7FFFFFF) == 0;
  }

  else
  {
    if (*(this + 16) || *(this + 9) != (this + 72))
    {
      return 0;
    }

    return (*(this + 35) & 1) == 0;
  }
}

uint64_t llvm::GlobalValue::getComdat(llvm::GlobalValue *this)
{
  v1 = this;
  v2 = *(this + 16);
  if (this && v2 == 1)
  {
    v4[0] = 0;
    v4[1] = 0;
    v5 = 0;
    v1 = findBaseObject<llvm::GlobalValue::getAliaseeObject(void)::$_0>(*(this - 4), v4);
    MEMORY[0x277C69E30](v4[0], 8);
    if (v1)
    {
      return *(v1 + 6);
    }
  }

  else if (v2 != 2)
  {
    return *(v1 + 6);
  }

  return 0;
}

uint64_t ***llvm::GlobalObject::setSection(uint64_t ***result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = a2;
  v5 = result;
  if ((*(result + 34) & 0x80) != 0)
  {
    if (!a3)
    {
      v7 = 0;
      goto LABEL_7;
    }

LABEL_5:
    v4 = llvm::UniqueStringSaver::save((***result + 2168), a2, a3, a4);
    v7 = v6;
LABEL_7:
    v8 = ***v5;
    v9 = v5;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::FindAndConstruct((v8 + 2552), &v9);
    result[1] = v4;
    result[2] = v7;
    *(v5 + 8) = v5[4] & 0xFF7FFFFF | ((v7 != 0) << 23);
    return result;
  }

  if (a3)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t llvm::GlobalValue::hasExternalWeakLinkage(llvm::GlobalValue *this)
{
  if (!this)
  {
    return (*(this + 8) & 0xF) == 9;
  }

  if (*(this + 16) != 3)
  {
    return (*(this + 8) & 0xF) == 9;
  }

  Section = llvm::GlobalValue::getSection(this);
  if (v4 != 12)
  {
    return (*(this + 8) & 0xF) == 9;
  }

  if (*Section != 0x7274702E6D766C6CLL || Section[2] != 1752462689)
  {
    return (*(this + 8) & 0xF) == 9;
  }

  if (*(this + 16))
  {
    if (*(this + 16) == 3 && (*(this + 5) & 0x7FFFFFF) == 0)
    {
      return 1;
    }
  }

  else if (*(this + 9) == (this + 72) && (*(this + 8) & 0x1000000) == 0)
  {
    return 1;
  }

  v8 = *(this - 4);
  v9 = *(v8 + 20);
  if ((v9 & 0x40000000) != 0)
  {
    v10 = *(v8 - 8);
  }

  else
  {
    v10 = (v8 - 32 * (v9 & 0x7FFFFFF));
  }

  v11 = *v10;
  v16 = 64;
  v15 = 0;
  v12 = *(this + 5);
  hasExternalWeakLinkage = 1;
  v13 = llvm::Value::stripAndAccumulateConstantOffsets(v11, (v12 + 256), &v15, 1, 0, 0, v3);
  if (v13)
  {
    v14 = v13[16] > 3u;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    hasExternalWeakLinkage = llvm::GlobalValue::hasExternalWeakLinkage(v13);
  }

  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x277C69E10](v15, 0x1000C8000313F17);
  }

  return hasExternalWeakLinkage;
}

uint64_t findBaseObject<llvm::GlobalValue::getAliaseeObject(void)::$_0>(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a1 + 16);
      if (v4 <= 3 && v4 != 1)
      {
        return a1;
      }

      v6 = v4 == 1 ? a1 : 0;
      v11 = v6;
      if (!v6)
      {
        break;
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>,llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v12, a2, &v11);
      if ((v12[16] & 1) == 0)
      {
        v4 = *(a1 + 16);
        break;
      }

      a1 = *(v6 - 32);
    }

    if (v4 != 5)
    {
      return 0;
    }

    result = 0;
    v7 = *(a1 + 18);
    if (v7 > 0x2E)
    {
      if (v7 - 47 >= 3)
      {
        return result;
      }

      goto LABEL_21;
    }

    if (v7 != 15)
    {
      break;
    }

    if (findBaseObject<llvm::GlobalValue::getAliaseeObject(void)::$_0>(*(a1 - 32 * (*(a1 + 20) & 0x7FFFFFF) + 32), a2))
    {
      return 0;
    }

LABEL_21:
    a1 = *(a1 - 32 * (*(a1 + 20) & 0x7FFFFFF));
  }

  if (v7 == 34)
  {
    goto LABEL_21;
  }

  if (v7 == 13)
  {
    v9 = findBaseObject<llvm::GlobalValue::getAliaseeObject(void)::$_0>(*(a1 - 32 * (*(a1 + 20) & 0x7FFFFFF)), a2);
    result = findBaseObject<llvm::GlobalValue::getAliaseeObject(void)::$_0>(*(a1 - 32 * (*(a1 + 20) & 0x7FFFFFF) + 32), a2);
    if (result)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    if (v9)
    {
      return v10;
    }
  }

  return result;
}

uint64_t llvm::GlobalVariable::GlobalVariable(uint64_t a1, llvm::PointerType **a2, char a3, int a4, uint64_t a5, const llvm::Twine *a6, char a7, llvm::Type *a8, char a9)
{
  v12 = (a1 - 32);
  result = llvm::GlobalValue::GlobalValue(a1, a2, 3, a1 - 32, a5 != 0, a4, a6, a8);
  *(result + 48) = 0;
  *(result + 56) = 0;
  v14 = *(result + 32);
  *(result + 64) = 0;
  *(result + 72) = 0;
  if (a9)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  *(result + 80) = v15 | a3 | *(result + 80) & 0xFC;
  *(result + 32) = v14 & 0x1E3FF | ((a7 & 7) << 10);
  if (a5)
  {
    if (*v12)
    {
      v16 = *(result - 24);
      **(result - 16) = v16;
      if (v16)
      {
        *(v16 + 16) = *(result - 16);
      }
    }

    *(result - 32) = a5;
    v19 = *(a5 + 8);
    v18 = (a5 + 8);
    v17 = v19;
    *(result - 24) = v19;
    if (v19)
    {
      *(v17 + 16) = result - 24;
    }

    *(result - 16) = v18;
    *v18 = v12;
  }

  return result;
}

uint64_t llvm::GlobalVariable::GlobalVariable(uint64_t a1, uint64_t a2, llvm::PointerType **a3, char a4, int a5, uint64_t a6, const llvm::Twine *a7, uint64_t a8, char a9, uint64_t a10, char a11)
{
  v16 = (a1 - 32);
  if ((a10 & 0x100000000) != 0)
  {
    v17 = a10;
  }

  else
  {
    v17 = *(a2 + 272);
  }

  v18 = llvm::GlobalValue::GlobalValue(a1, a3, 3, a1 - 32, a6 != 0, a5, a7, v17);
  *(v18 + 56) = 0;
  v19 = v18 + 56;
  *(v18 + 48) = 0;
  v20 = *(v18 + 32);
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  if (a11)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  *(v18 + 80) = v21 | a4 | *(v18 + 80) & 0xFC;
  *(v18 + 32) = v20 & 0x1E3FF | ((a9 & 7) << 10);
  if (a6)
  {
    if (*v16)
    {
      v22 = *(a1 - 24);
      **(a1 - 16) = v22;
      if (v22)
      {
        *(v22 + 16) = *(a1 - 16);
      }
    }

    *(a1 - 32) = a6;
    v25 = *(a6 + 8);
    v24 = (a6 + 8);
    v23 = v25;
    *(a1 - 24) = v25;
    if (v25)
    {
      *(v23 + 16) = a1 - 24;
    }

    *(a1 - 16) = v24;
    *v24 = v16;
  }

  if (a8)
  {
    v26 = *(a8 + 40);
    v27 = (a8 + 56);
    v28 = v26 + 8;
  }

  else
  {
    v28 = a2 + 8;
    v27 = (a2 + 8);
  }

  *(a1 + 40) = v28 - 8;
  if ((*(a1 + 23) & 0x10) != 0)
  {
    v29 = *(v28 + 104);
    if (v29)
    {
      llvm::ValueSymbolTable::reinsertValue(v29, a1);
    }
  }

  v30 = *v27;
  *(a1 + 56) = *v27;
  *(a1 + 64) = v27;
  *(v30 + 8) = v19;
  *v27 = v19;
  return a1;
}

uint64_t llvm::GlobalVariable::setInitializer(uint64_t this, llvm::Constant *a2)
{
  if (this)
  {
    v2 = *(this + 16) == 3;
  }

  else
  {
    v2 = 0;
  }

  v3 = !v2;
  if (a2)
  {
    if (v3)
    {
      if (*(this + 16) || *(this + 72) != this + 72 || (*(this + 32) & 0x1000000) != 0)
      {
        goto LABEL_19;
      }
    }

    else if ((*(this + 20) & 0x7FFFFFF) != 0)
    {
      goto LABEL_19;
    }

    *(this + 20) = *(this + 20) & 0xF8000000 | 1;
LABEL_19:
    if (*(this - 32))
    {
      v5 = *(this - 24);
      **(this - 16) = v5;
      if (v5)
      {
        *(v5 + 16) = *(this - 16);
      }
    }

    *(this - 32) = a2;
    v8 = *(a2 + 1);
    v6 = (a2 + 8);
    v7 = v8;
    *(this - 24) = v8;
    if (v8)
    {
      *(v7 + 16) = this - 24;
    }

    *(this - 16) = v6;
    *v6 = this - 32;
    return this;
  }

  if ((v3 & 1) == 0)
  {
    v4 = *(this + 20) & 0x7FFFFFF;
LABEL_27:
    if (!v4)
    {
      return this;
    }

    goto LABEL_28;
  }

  if (!*(this + 16) && *(this + 72) == this + 72)
  {
    v4 = *(this + 32) & 0x1000000;
    goto LABEL_27;
  }

LABEL_28:
  if (*(this - 32))
  {
    v9 = *(this - 24);
    **(this - 16) = v9;
    if (v9)
    {
      *(v9 + 16) = *(this - 16);
    }
  }

  *(this - 32) = 0;
  *(this + 20) &= 0xF8000000;
  return this;
}

uint64_t llvm::GlobalAlias::GlobalAlias(uint64_t a1, llvm::PointerType **a2, llvm::Type *a3, int a4, const llvm::Twine *a5, uint64_t a6, uint64_t a7)
{
  v10 = llvm::GlobalValue::GlobalValue(a1, a2, 1, a1 - 32, 1, a4, a5, a3);
  *(v10 + 48) = 0;
  v11 = v10 + 48;
  *(v10 + 56) = 0;
  llvm::GlobalIFunc::setResolver(v10, a6);
  if (a7)
  {
    v12 = (a7 + 40);
    *(a1 + 40) = a7;
    if ((*(a1 + 23) & 0x10) != 0)
    {
      v13 = *(a7 + 112);
      if (v13)
      {
        llvm::ValueSymbolTable::reinsertValue(v13, a1);
      }
    }

    v14 = *v12;
    *(a1 + 48) = *v12;
    *(a1 + 56) = v12;
    *(v14 + 8) = v11;
    *v12 = v11;
  }

  return a1;
}

uint64_t llvm::GlobalAlias::create(llvm::PointerType **a1, llvm::Type *a2, int a3, const llvm::Twine *a4, uint64_t a5)
{
  v10 = operator new(0x60uLL);
  v10[13] = v10[13] & 0x38000000 | 1;
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = v10 + 8;
  v11 = (v10 + 8);

  return llvm::GlobalAlias::GlobalAlias(v11, a1, a2, a3, a4, 0, a5);
}

uint64_t llvm::GlobalIFunc::GlobalIFunc(uint64_t a1, llvm::PointerType **a2, llvm::Type *a3, int a4, const llvm::Twine *a5, uint64_t a6, uint64_t a7)
{
  v10 = llvm::GlobalValue::GlobalValue(a1, a2, 2, a1 - 32, 1, a4, a5, a3);
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  v11 = v10 + 56;
  *(v10 + 32) &= 0x1FFFFu;
  *(v10 + 64) = 0;
  llvm::GlobalIFunc::setResolver(v10, a6);
  if (a7)
  {
    v12 = (a7 + 56);
    *(a1 + 40) = a7;
    if ((*(a1 + 23) & 0x10) != 0)
    {
      v13 = *(a7 + 112);
      if (v13)
      {
        llvm::ValueSymbolTable::reinsertValue(v13, a1);
      }
    }

    v14 = *v12;
    *(a1 + 56) = *v12;
    *(a1 + 64) = v12;
    *(v14 + 8) = v11;
    *v12 = v11;
  }

  return a1;
}

uint64_t llvm::GlobalIFunc::create(llvm::PointerType **a1, llvm::Type *a2, int a3, const llvm::Twine *a4, uint64_t a5, uint64_t a6)
{
  v12 = operator new(0x68uLL);
  v12[13] = v12[13] & 0x38000000 | 1;
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = v12 + 8;
  v13 = (v12 + 8);

  return llvm::GlobalIFunc::GlobalIFunc(v13, a1, a2, a3, a4, a5, a6);
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<llvm::GlobalVariable>,llvm::SymbolTableListTraits<llvm::GlobalVariable>>::erase(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = a2 - 56;
  if (a2)
  {
    v4 = (a2 - 56);
  }

  else
  {
    v4 = 0;
  }

  llvm::SymbolTableListTraits<llvm::GlobalVariable>::removeNodeFromList(a1, v4);
  v5 = *(v4 + 7);
  v6 = *(v4 + 8);
  *v6 = v5;
  *(v5 + 8) = v6;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  llvm::ilist_alloc_traits<llvm::GlobalVariable>::deleteNode(v3);
  return v2;
}

void llvm::ilist_alloc_traits<llvm::GlobalVariable>::deleteNode(uint64_t a1)
{
  if (a1)
  {
    llvm::User::dropAllReferences(a1);
    llvm::Value::clearMetadata(a1);
    llvm::GlobalObject::~GlobalObject(a1);
    *(a1 + 20) = *(a1 + 20) & 0xF8000000 | 1;

    llvm::User::operator delete(v2);
  }
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<llvm::GlobalAlias>,llvm::SymbolTableListTraits<llvm::GlobalAlias>>::erase(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (a2 - 48);
  if (a2)
  {
    v4 = (a2 - 48);
  }

  else
  {
    v4 = 0;
  }

  llvm::SymbolTableListTraits<llvm::GlobalAlias>::removeNodeFromList(a1, v4);
  v5 = *(v4 + 6);
  v6 = *(v4 + 7);
  *v6 = v5;
  *(v5 + 8) = v6;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  llvm::Constant::removeDeadConstantUsers(v3);
  llvm::Value::~Value(v3, v7);
  llvm::User::operator delete(v8);
  return v2;
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<llvm::GlobalIFunc>,llvm::SymbolTableListTraits<llvm::GlobalIFunc>>::erase(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (a2 - 56);
  if (a2)
  {
    v4 = (a2 - 56);
  }

  else
  {
    v4 = 0;
  }

  llvm::SymbolTableListTraits<llvm::GlobalIFunc>::removeNodeFromList(a1, v4);
  v5 = *(v4 + 7);
  v6 = *(v4 + 8);
  *v6 = v5;
  *(v5 + 8) = v6;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  llvm::GlobalObject::~GlobalObject(v3);
  llvm::User::operator delete(v7);
  return v2;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::InsertIntoBucketImpl<llvm::GlobalValue const*>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
    v5[2] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::InsertIntoBucketImpl<llvm::GlobalValue const*>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

void *llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::grow(uint64_t a1, int a2)
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
      v11 = 0;
      v12 = 24 * v10 - 24;
      v13 = vdupq_n_s64(v12 / 0x18);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[3] = -4096;
        }

        v11 += 2;
        result += 6;
      }

      while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 24 * v3;
      v16 = v4;
      do
      {
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v23 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(a1, v16, &v23);
          v17 = v23;
          *v23 = *v16;
          *(v17 + 1) = *(v16 + 8);
          ++*(a1 + 8);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = 24 * v18 - 24;
    v21 = vdupq_n_s64(v20 / 0x18);
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v19), xmmword_2750C1210)));
      if (v22.i8[0])
      {
        *result = -4096;
      }

      if (v22.i8[4])
      {
        result[3] = -4096;
      }

      v19 += 2;
      result += 6;
    }

    while (((v20 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v19);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>,llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>,llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>::InsertIntoBucketImpl<llvm::GlobalValue const*>(a1, a2, a2, v7);
    *v5 = *a2;
    *(v5 + 8) &= 0xF0u;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>,llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>::InsertIntoBucketImpl<llvm::GlobalValue const*>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>::grow(a1, v7);
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

char *llvm::DenseMap<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::GlobalValue::SanitizerMetadata>>::grow(uint64_t a1, int a2)
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

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, v19, &v29);
          v20 = v29;
          *v29 = *v19;
          *(v20 + 2) = *(v19 + 8);
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
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0xFFFFFFFFFFFFFFFLL;
    v24 = v23 & 0xFFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0xFFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 16;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_2750C1210)));
      if (v28.i8[0])
      {
        *(v27 - 2) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 4;
    }

    while (v25 != v22);
  }

  return result;
}

uint64_t *llvm::IRBuilderBase::createCallHelper(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a2;
  if (a2)
  {
    a2 = *(a2 + 24);
  }

  result = llvm::IRBuilderBase::CreateCall(a1, a2, v12, a3, a4, a7, a8, a5, 0);
  if (a6)
  {
    *(result + 17) = *(a6 + 17) & 0xFE | *(result + 17) & 1;
  }

  return result;
}

uint64_t *llvm::IRBuilderBase::CreateIntrinsic(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Declaration = llvm::Intrinsic::getDeclaration(*(*(*(a1 + 48) + 56) + 40), a2, a3, a4);

  return llvm::IRBuilderBase::createCallHelper(a1, Declaration, a5, a6, a8, a7, 0, 0);
}

uint64_t *llvm::IRBuilderBase::CreateMaskedLoad(uint64_t a1, llvm::PoisonValue *this, uint64_t *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v18[2] = *MEMORY[0x277D85DE8];
  v14 = *a3;
  if (!a6)
  {
    v8 = llvm::PoisonValue::get(this, this);
  }

  v18[0] = this;
  v18[1] = v14;
  v17[0] = a3;
  v17[1] = llvm::ConstantInt::get(**(a1 + 64) + 1992, (1 << a4));
  v17[2] = a5;
  v17[3] = v8;
  result = llvm::IRBuilderBase::CreateMaskedIntrinsic(a1, 188, v17, 4, v18, 2, a7);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::IRBuilderBase::CreateMaskedIntrinsic(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Declaration = llvm::Intrinsic::getDeclaration(*(*(*(a1 + 48) + 56) + 40), a2, a5, a6);
  if (Declaration)
  {
    v12 = *(Declaration + 24);
  }

  else
  {
    v12 = 0;
  }

  return llvm::IRBuilderBase::CreateCall(a1, v12, Declaration, a3, a4, 0, 0, a7, 0);
}

uint64_t *llvm::IRBuilderBase::CreateMaskedStore(uint64_t a1, void *a2, uint64_t *a3, char a4, uint64_t a5)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v12[0] = *a2;
  v12[1] = v7;
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = llvm::ConstantInt::get(**(a1 + 64) + 1992, (1 << a4));
  v11[3] = a5;
  v10[16] = 257;
  result = llvm::IRBuilderBase::CreateMaskedIntrinsic(a1, 190, v11, 4, v12, 2, v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::IRBuilderBase::CreateConstrainedFPBinOp(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, llvm::MDNode *a7, __int16 a8, __int16 a9)
{
  v25[1] = *MEMORY[0x277D85DE8];
  ConstrainedFPRounding = llvm::IRBuilderBase::getConstrainedFPRounding(a1, a8);
  ConstrainedFPExcept = llvm::IRBuilderBase::getConstrainedFPExcept(a1, a9);
  if (a5)
  {
    if (*(a5 + 17) >> 1 == 127)
    {
      LOBYTE(a5) = -1;
    }

    else
    {
      LOBYTE(a5) = *(a5 + 17) >> 1;
    }
  }

  else
  {
    LODWORD(a5) = *(a1 + 96);
  }

  v18 = *a3;
  v24[3] = ConstrainedFPExcept;
  v25[0] = v18;
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = ConstrainedFPRounding;
  Declaration = llvm::Intrinsic::getDeclaration(*(*(*(a1 + 48) + 56) + 40), a2, v25, 1);
  if (Declaration)
  {
    v20 = *(Declaration + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = llvm::IRBuilderBase::CreateCall(a1, v20, Declaration, v24, 4, 0, 0, a6, 0);
  v21[8] = llvm::AttributeList::addAttributeAtIndex(v21 + 8, **v21, -1, 62);
  if (a7 || (a7 = *(a1 + 88)) != 0)
  {
    llvm::Value::setMetadata(v21, 3, a7);
  }

  *(v21 + 17) |= 2 * a5;
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t llvm::IRBuilderBase::getConstrainedFPRounding(uint64_t a1, __int16 a2)
{
  v3 = *(a1 + 102);
  if ((a2 & 0x100) != 0)
  {
    v3 = a2;
  }

  llvm::convertRoundingModeToStr(v3, v7);
  v4 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((**(a1 + 64) + 312), v7[0], v7[1]);
  if (v5)
  {
    *(v4 + 16) = v4;
  }

  return llvm::MetadataAsValue::get(*(a1 + 64), (v4 + 8));
}

uint64_t llvm::IRBuilderBase::getConstrainedFPExcept(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x100) == 0)
  {
    LOBYTE(a2) = *(a1 + 101);
  }

  llvm::convertExceptionBehaviorToStr(a2, v6);
  v3 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((**(a1 + 64) + 312), v6[0], v6[1]);
  if (v4)
  {
    *(v3 + 16) = v3;
  }

  return llvm::MetadataAsValue::get(*(a1 + 64), (v3 + 8));
}

uint64_t llvm::IRBuilderBase::CreateConstrainedFPCast(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, llvm::MDNode *a7, __int16 a8, __int16 a9)
{
  v36 = *MEMORY[0x277D85DE8];
  ConstrainedFPExcept = llvm::IRBuilderBase::getConstrainedFPExcept(a1, a9);
  v18 = ConstrainedFPExcept;
  if (a5)
  {
    if (*(a5 + 17) >> 1 == 127)
    {
      LOBYTE(v19) = -1;
    }

    else
    {
      v19 = *(a5 + 17) >> 1;
    }
  }

  else
  {
    v19 = *(a1 + 96);
  }

  if ((a2 - 81) <= 0x26 && ((1 << (a2 - 81)) & 0x5CF07BC74FLL) != 0)
  {
    ConstrainedFPRounding = llvm::IRBuilderBase::getConstrainedFPRounding(a1, a8);
    v21 = *a3;
    v34 = a4;
    v35 = v21;
    v31 = a3;
    v32 = ConstrainedFPRounding;
    v33 = v18;
    Declaration = llvm::Intrinsic::getDeclaration(*(*(*(a1 + 48) + 56) + 40), a2, &v34, 2);
    if (Declaration)
    {
      v23 = *(Declaration + 24);
    }

    else
    {
      v23 = 0;
    }

    v24 = llvm::IRBuilderBase::CreateCall(a1, v23, Declaration, &v31, 3, 0, 0, a6, 0);
  }

  else
  {
    v28 = *a3;
    v31 = a4;
    v32 = v28;
    v34 = a3;
    v35 = ConstrainedFPExcept;
    v29 = llvm::Intrinsic::getDeclaration(*(*(*(a1 + 48) + 56) + 40), a2, &v31, 2);
    if (v29)
    {
      v30 = *(v29 + 24);
    }

    else
    {
      v30 = 0;
    }

    v24 = llvm::IRBuilderBase::CreateCall(a1, v30, v29, &v34, 2, 0, 0, a6, 0);
  }

  v25 = v24;
  v24[8] = llvm::AttributeList::addAttributeAtIndex(v24 + 8, **v24, -1, 62);
  if (llvm::FPMathOperator::classof(v25))
  {
    if (a7 || (a7 = *(a1 + 88)) != 0)
    {
      llvm::Value::setMetadata(v25, 3, a7);
    }

    *(v25 + 17) |= 2 * v19;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t *llvm::IRBuilderBase::CreateSelect(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, uint64_t ***a6)
{
  result = (*(**(this + 9) + 72))(*(this + 9));
  if (result)
  {
    return result;
  }

  v21 = 257;
  v13 = operator new(0xA0uLL);
  v14 = (v13 + 96);
  *(v13 + 29) = *(v13 + 29) & 0x38000000 | 3;
  v15 = 96;
  do
  {
    *v13 = 0;
    *(v13 + 1) = 0;
    *(v13 + 2) = 0;
    *(v13 + 3) = v14;
    v13 += 32;
    v15 -= 32;
  }

  while (v15);
  llvm::SelectInst::SelectInst(v14, a2, a3, a4, v20, 0);
  if (a6)
  {
    if (a6[6] || (*(a6 + 23) & 0x20) != 0)
    {
      Metadata = llvm::Value::getMetadata(a6, 2);
      if (a6[6] || (*(a6 + 23) & 0x20) != 0)
      {
        v17 = llvm::Value::getMetadata(a6, 15);
        goto LABEL_12;
      }
    }

    else
    {
      Metadata = 0;
    }

    v17 = 0;
LABEL_12:
    v14 = llvm::IRBuilderBase::addBranchMetadata<llvm::SelectInst>(this, v14, Metadata, v17);
  }

  if (llvm::FPMathOperator::classof(v14))
  {
    v18 = *(this + 24);
    v19 = *(this + 11);
    if (v19)
    {
      llvm::Value::setMetadata(v14, 3, v19);
    }

    *(v14 + 17) |= 2 * v18;
  }

  return llvm::IRBuilderBase::Insert<llvm::LoadInst>(this, v14, a5);
}

uint64_t llvm::IRBuilderBase::addBranchMetadata<llvm::SelectInst>(uint64_t a1, uint64_t a2, llvm::MDNode *a3, llvm::MDNode *a4)
{
  if (a3)
  {
    llvm::Value::setMetadata(a2, 2, a3);
  }

  if (a4)
  {
    llvm::Value::setMetadata(a2, 15, a4);
  }

  return a2;
}

uint64_t *llvm::IRBuilderBase::CreateVectorSplat(llvm::IRBuilderBase *a1, llvm::Type *a2, uint64_t ***a3, uint64_t a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  llvm::VectorType::get(*a3, a2);
  v10 = llvm::PoisonValue::get(v8, v9);
  v11 = llvm::ConstantInt::get(**(a1 + 8) + 2016, 0);
  v12 = *(a4 + 32);
  if (*(a4 + 32))
  {
    if (v12 == 1)
    {
      v31 = ".splatinsert";
      v13 = 1;
      LOBYTE(v12) = 3;
    }

    else
    {
      v14 = *(a4 + 8);
      if (*(a4 + 33) == 1)
      {
        v15 = *a4;
      }

      else
      {
        LOBYTE(v12) = 2;
        v15 = a4;
      }

      v31 = v15;
      v32 = v14;
      v33[0] = ".splatinsert";
      v13 = 3;
    }
  }

  else
  {
    v13 = 1;
  }

  v34 = v12;
  v35 = v13;
  InsertElement = llvm::IRBuilderBase::CreateInsertElement(a1, v10, a3, v11, &v31);
  v31 = v33;
  v32 = 0x1000000000;
  llvm::SmallVectorImpl<int>::resizeImpl<false>(&v31, v7);
  v18 = v31;
  v19 = v32;
  v20 = *(a4 + 32);
  if (*(a4 + 32))
  {
    if (v20 == 1)
    {
      v28[0] = ".splat";
      v21 = 1;
      LOBYTE(v20) = 3;
    }

    else
    {
      v22 = *(a4 + 8);
      if (*(a4 + 33) == 1)
      {
        v23 = *a4;
      }

      else
      {
        LOBYTE(v20) = 2;
        v23 = a4;
      }

      v28[0] = v23;
      v28[1] = v22;
      v28[2] = ".splat";
      v21 = 3;
    }
  }

  else
  {
    v21 = 1;
  }

  v29 = v20;
  v30 = v21;
  v24 = llvm::PoisonValue::get(*InsertElement, v17);
  ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(a1, InsertElement, v24, v18, v19, v28);
  if (v31 != v33)
  {
    free(v31);
  }

  v26 = *MEMORY[0x277D85DE8];
  return ShuffleVector;
}

void llvm::IRBuilderDefaultInserter::InsertHelper(uint64_t a1, llvm::Value *a2, const llvm::Twine *a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(a4 + 40, a2);
    v8 = *a5;
    *(a2 + 3) = *a5;
    *(a2 + 4) = a5;
    *(v8 + 8) = a2 + 24;
    *a5 = a2 + 24;
  }

  llvm::Value::setName(a2, a3);
}

llvm::Constant *llvm::ConstantFolder::FoldBinOp(int a1, llvm::ConstantExpr *this, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, llvm::Type *a6)
{
  if (a3[16] >= 0x15u)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if (a4[16] >= 0x15u)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  if (((1 << this) & 0x1FD4000) != 0)
  {
    return llvm::ConstantFoldBinaryInstruction(this, v6, v7, a4);
  }

  return llvm::ConstantExpr::get(this, v6, v7, 0, 0, a6);
}

llvm::Constant *llvm::ConstantFolder::FoldExactBinOp(int a1, llvm::ConstantExpr *this, unsigned __int8 *a3, unsigned __int8 *a4, llvm::Constant *a5, llvm::Type *a6)
{
  if (a3[16] >= 0x15u)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if (a4[16] >= 0x15u)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  if (((1 << this) & 0x1FD4000) != 0)
  {
    return llvm::ConstantFoldBinaryInstruction(this, v6, v7, a4);
  }

  return llvm::ConstantExpr::get(this, v6, v7, a5, 0, a6);
}

llvm::Constant *llvm::ConstantFolder::FoldNoWrapBinOp(int a1, llvm::ConstantExpr *this, unsigned __int8 *a3, unsigned __int8 *a4, unsigned int a5, llvm::Type *a6)
{
  if (a3[16] >= 0x15u)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if (a4[16] >= 0x15u)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  if (((1 << this) & 0x1FD4000) != 0)
  {
    return llvm::ConstantFoldBinaryInstruction(this, v6, v7, a4);
  }

  if (a6)
  {
    v10 = a5 | 2;
  }

  else
  {
    v10 = a5;
  }

  return llvm::ConstantExpr::get(this, v6, v7, v10, 0, a6);
}

llvm::ConstantExpr *llvm::ConstantFolder::FoldUnOpFMF(int a1, llvm *this, unsigned __int8 *a3)
{
  if (a3 && a3[16] <= 0x14u)
  {
    return llvm::ConstantFoldUnaryInstruction(this, a3, a3);
  }

  else
  {
    return 0;
  }
}

void *llvm::ConstantFolder::FoldICmp(uint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned __int8 *a4)
{
  if (*(a3 + 16) >= 0x15u)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  if (a4[16] >= 0x15u)
  {
    v5 = 0;
  }

  else
  {
    v5 = a4;
  }

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return llvm::ConstantExpr::getCompare(a2, v4, v5, 0);
  }
}

uint64_t llvm::ConstantFolder::FoldGEP(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Value *a4, uint64_t a5, char a6)
{
  v6 = *(a2 + 8);
  if (v6 == 19)
  {
    return 0;
  }

  if (v6 == 21)
  {
    getTargetTypeInfo(a2);
    if (*(v12 + 8) == 19)
    {
      return 0;
    }
  }

  if (!a3 || *(a3 + 16) > 0x14u)
  {
    return 0;
  }

  if (a5)
  {
    v13 = 8 * a5;
    v14 = a4;
    while (*(*v14 + 16) <= 0x14u)
    {
      v14 = (v14 + 8);
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:

  return llvm::ConstantExpr::getGetElementPtr(a2, a3, a4, a5, a6, 0, 0);
}

llvm::Type *llvm::ConstantFolder::FoldSelect(llvm::ConstantFolder *this, llvm::Value *a2, llvm::PoisonValue **a3, llvm::PoisonValue **a4)
{
  if (*(a2 + 16) >= 0x15u)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  if (*(a3 + 16) >= 0x15u)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  if (*(a4 + 16) >= 0x15u)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4;
  }

  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || v6 == 0)
  {
    return 0;
  }

  else
  {
    return llvm::ConstantFoldSelectInstruction(v4, v5, v6, a4);
  }
}

llvm::Constant *llvm::ConstantFolder::FoldExtractValue(int a1, llvm::Constant *this, unsigned int *a3, uint64_t a4)
{
  result = 0;
  if (this && *(this + 16) <= 0x14u)
  {
    v5 = a4;
    if (a4)
    {
      result = this;
      do
      {
        result = llvm::Constant::getAggregateElement(result, *a3);
        if (!result)
        {
          break;
        }

        ++a3;
        --v5;
      }

      while (v5);
    }

    else
    {
      return this;
    }
  }

  return result;
}

void *llvm::ConstantFolder::FoldInsertValue(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, _DWORD *a4, uint64_t a5)
{
  if (a2[16] >= 0x15u)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (a3[16] >= 0x15u)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return llvm::ConstantFoldInsertValueInstruction(v5, v6, a4, a5);
  }
}

void *llvm::ConstantFolder::FoldExtractElement(llvm::ConstantFolder *this, llvm::Value *a2, llvm::Value *a3, llvm::Type *a4, __n128 a5)
{
  if (*(a2 + 16) >= 0x15u)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (*(a3 + 16) >= 0x15u)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return llvm::ConstantExpr::getExtractElement(v5, v6, 0, a4, a5);
  }
}

void *llvm::ConstantFolder::FoldInsertElement(llvm::ConstantFolder *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Type *a5)
{
  if (*(a2 + 16) >= 0x15u)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (*(a3 + 16) >= 0x15u)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if (*(a4 + 16) >= 0x15u)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    return 0;
  }

  else
  {
    return llvm::ConstantExpr::getInsertElement(v5, v6, v7, 0, a5);
  }
}

uint64_t llvm::ConstantFolder::FoldShuffleVector(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4, _BOOL8 a5)
{
  if (a2[16] >= 0x15u)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (a3[16] >= 0x15u)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return llvm::ConstantExpr::getShuffleVector(v5, v6, a4, a5, 0);
  }
}

llvm::ConstantExpr *llvm::ConstantFolder::CreateBitCast(llvm::ConstantFolder *this, uint64_t ***a2, llvm::Constant ****a3)
{
  if (*a2 == a3)
  {
    return a2;
  }

  else
  {
    return getFoldedCast(0x31, a2, a3, 0);
  }
}

uint64_t *llvm::IRBuilderBase::CreateCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, llvm::MDNode *a9)
{
  v17 = 257;
  v11 = llvm::CallInst::Create(a2, a3, a4, a5, a6, a7, v16, 0);
  v12 = v11;
  if (*(a1 + 100) == 1)
  {
    *(v11 + 8) = llvm::AttributeList::addAttributeAtIndex(v11 + 8, **v11, -1, 62);
  }

  if (llvm::FPMathOperator::classof(v12))
  {
    v13 = a9;
    v14 = *(a1 + 96);
    if (a9 || (v13 = *(a1 + 88)) != 0)
    {
      llvm::Value::setMetadata(v12, 3, v13);
    }

    *(v12 + 17) |= 2 * v14;
  }

  return llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, v12, a8);
}

uint64_t llvm::InlineAsm::get(llvm::PointerType **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, int a8, char a9)
{
  v17 = **a1;
  v18 = llvm::PointerType::get(a1, 0);
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a1;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  return llvm::ConstantUniqueMap<llvm::InlineAsm>::getOrCreate(v17 + 1568, v18, v20);
}

uint64_t llvm::ConstantUniqueMap<llvm::InlineAsm>::getOrCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 16);
  *&v17[8] = *a3;
  *&v17[24] = v5;
  *&v17[40] = *(a3 + 32);
  v6 = *(a3 + 48);
  *v17 = a2;
  *&v17[56] = v6;
  HashValue = llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo::getHashValue(v17);
  v13 = *v17;
  v14 = *&v17[16];
  v15 = *&v17[32];
  v16 = *&v17[48];
  *&v10[0] = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>,llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::PointerType *,llvm::InlineAsmKeyType>>>(a1, &HashValue, v10) || *&v10[0] == *a1 + 8 * *(a1 + 16))
  {
    v7 = *(a3 + 16);
    v10[0] = *a3;
    v10[1] = v7;
    v10[2] = *(a3 + 32);
    v11 = *(a3 + 48);
    llvm::InlineAsmKeyType::create();
  }

  v8 = *MEMORY[0x277D85DE8];
  return **&v10[0];
}

void llvm::InlineAsm::ParseConstraints(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a1;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = &a1[a2];
  v58 = &a1[a2];
  do
  {
    if (v3 == v5)
    {
      return;
    }

    v59[4] = 0;
    *&v59[8] = -1;
    *&v59[12] = 0;
    v61 = 0;
    v62 = 0;
    v60 = 0;
    v63 = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    v67 = 0;
    v6 = memchr(v3, 44, v5 - v3);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = v7 - v3;
    if (v7 == v3)
    {
LABEL_40:
      std::vector<llvm::InlineAsm::ConstraintInfo>::clear[abi:nn200100](a3);
      v21 = 0;
      v5 = v58;
      goto LABEL_41;
    }

    v9 = 0;
    v10 = 0;
    do
    {
      if (v3[v9] == 124)
      {
        ++v10;
      }

      ++v9;
    }

    while (v8 != v9);
    v11 = (v10 + 1);
    v63 = v11 > 1;
    v12 = &v60;
    if (v11 >= 2)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::InlineAsm::SubConstraintInfo>>(v11);
    }

    *v59 = 0;
    v59[4] = 0;
    *&v59[8] = -1;
    *&v59[12] = 0;
    v67 = 0;
    v13 = *v3;
    switch(v13)
    {
      case '!':
        v14 = 3;
        goto LABEL_21;
      case '=':
        v14 = 1;
LABEL_21:
        v15 = v3 + 1;
        *v59 = v14;
LABEL_22:
        v13 = *v15;
        goto LABEL_24;
      case '~':
        v14 = 2;
        *v59 = 2;
        v15 = v3 + 1;
        if (v8 != 1)
        {
          if (*v15 != 123)
          {
            goto LABEL_40;
          }

          v14 = 2;
          goto LABEL_26;
        }

        goto LABEL_22;
    }

    v14 = 0;
    v15 = v3;
LABEL_24:
    if (v13 == 42)
    {
      v59[13] = 1;
      ++v15;
    }

LABEL_26:
    if (v15 == v7)
    {
      goto LABEL_40;
    }

    v16 = 0;
    v17 = 0;
    v18 = v14;
    while (1)
    {
      v19 = *v15;
      if (v19 > 0x25)
      {
        break;
      }

      if (v19 != 37)
      {
        if (v19 == 35)
        {
          goto LABEL_40;
        }

        goto LABEL_43;
      }

      if ((v18 == 2) | v17 & 1)
      {
        goto LABEL_40;
      }

      v17 = 1;
      v20 = &v59[12];
LABEL_35:
      *v20 = 1;
      if (++v15 == v7)
      {
        goto LABEL_40;
      }
    }

    if (v19 == 38)
    {
      if ((v14 != 1) | v16 & 1)
      {
        goto LABEL_40;
      }

      v16 = 1;
      v20 = &v59[4];
      v18 = 1;
      goto LABEL_35;
    }

    if (v19 == 42)
    {
      goto LABEL_40;
    }

LABEL_43:
    if (v15 != v7)
    {
      LODWORD(v57) = 0;
      while (1)
      {
        if (v19 == 123)
        {
          v22 = memchr(v15 + 1, 125, v7 - (v15 + 1));
          if (!v22 || v22 == v7)
          {
            goto LABEL_40;
          }

          v23 = v22 + 1;
          v24 = v22 + 1 - v15;
          if (v24 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_135;
          }

          if (v24 >= 0x17)
          {
            operator new();
          }

          v69 = v22 + 1 - v15;
          if (v23 != v15)
          {
            memmove(&__dst, v15, v24);
          }

          *(&__dst + v24) = 0;
          std::vector<std::string>::push_back[abi:nn200100](v12, &__dst);
          if (v69 < 0)
          {
            operator delete(__dst);
          }

          v15 = v23;
        }

        else if ((*(MEMORY[0x277D85DE0] + 4 * v19 + 60) & 0x400) != 0)
        {
          v25 = v15;
          while ((*(MEMORY[0x277D85DE0] + 4 * *v25 + 60) & 0x400) != 0)
          {
            if (++v25 == v7)
            {
              v25 = v7;
              break;
            }
          }

          v26 = v25 - v15;
          if ((v25 - v15) > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_135:
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          if (v26 >= 0x17)
          {
            operator new();
          }

          v69 = v25 - v15;
          if (v25 != v15)
          {
            memmove(&__dst, v15, v25 - v15);
          }

          *(&__dst + v26) = 0;
          std::vector<std::string>::push_back[abi:nn200100](v12, &__dst);
          if (v69 < 0)
          {
            operator delete(__dst);
          }

          v27 = v12[1];
          v28 = (v27 - 24);
          if (*(v27 - 1) < 0)
          {
            v28 = *v28;
          }

          v29 = atoi(v28);
          v30 = 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 4);
          if (v30 <= v29)
          {
            goto LABEL_40;
          }

          v31 = *a3 + 80 * v29;
          if (*v31 != 1 || *v59 != 0)
          {
            goto LABEL_40;
          }

          if (v63)
          {
            v34 = v31 + 48;
            v33 = *(v31 + 48);
            if (v57 >= ((*(v34 + 8) - v33) >> 5))
            {
              goto LABEL_40;
            }

            v35 = (v33 + 32 * v57);
            if (*v35 != -1)
            {
              goto LABEL_40;
            }

            *v35 = v30;
          }

          else
          {
            v36 = *(v31 + 8);
            if (v36 != -1 && v30 != v36)
            {
              goto LABEL_40;
            }

            *(v31 + 8) = v30;
          }

          v15 = v25;
        }

        else if (v19 == 64)
        {
          v38 = v15[1] - 48;
          if (v38 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_135;
          }

          v39 = v15[1] - 71 < 0;
          if (v38 >= 0x17)
          {
            operator new();
          }

          v69 = v15[1] - 48;
          if (v38)
          {
            memmove(&__dst, v15 + 2, v38);
          }

          *(&__dst + v38) = 0;
          std::vector<std::string>::push_back[abi:nn200100](v12, &__dst);
          if (v69 < 0)
          {
            operator delete(__dst);
          }

          v15 += v38 + 2;
        }

        else if (v19 == 94)
        {
          v69 = 2;
          LOWORD(__dst) = *(v15 + 1);
          BYTE2(__dst) = 0;
          std::vector<std::string>::push_back[abi:nn200100](v12, &__dst);
          if (v69 < 0)
          {
            operator delete(__dst);
          }

          v15 += 3;
        }

        else
        {
          if (v19 == 124)
          {
            v57 = (v57 + 1);
            v12 = (v64 + 32 * v57 + 8);
          }

          else
          {
            v69 = 1;
            LOWORD(__dst) = *v15;
            std::vector<std::string>::push_back[abi:nn200100](v12, &__dst);
            if (v69 < 0)
            {
              operator delete(__dst);
            }
          }

          ++v15;
        }

        if (v15 == v7)
        {
          break;
        }

        v19 = *v15;
      }
    }

    v41 = a3[1];
    v40 = a3[2];
    if (v41 >= v40)
    {
      v46 = 0xCCCCCCCCCCCCCCCDLL * ((v41 - *a3) >> 4);
      v47 = v46 + 1;
      if (v46 + 1 > 0x333333333333333)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v48 = 0xCCCCCCCCCCCCCCCDLL * ((v40 - *a3) >> 4);
      if (2 * v48 > v47)
      {
        v47 = 2 * v48;
      }

      if (v48 >= 0x199999999999999)
      {
        v49 = 0x333333333333333;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        if (v49 <= 0x333333333333333)
        {
          operator new();
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v50 = 16 * ((v41 - *a3) >> 4);
      *v50 = *v59;
      *(v50 + 6) = *&v59[6];
      *(80 * v46 + 0x10) = 0;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0;
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(80 * v46 + 16, v60, v61, 0xAAAAAAAAAAAAAAABLL * ((v61 - v60) >> 3));
      *(v50 + 40) = v63;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      *(v50 + 48) = 0;
      std::vector<llvm::InlineAsm::SubConstraintInfo>::__init_with_size[abi:nn200100]<llvm::InlineAsm::SubConstraintInfo*,llvm::InlineAsm::SubConstraintInfo*>(80 * v46 + 48, v64, v65, (v65 - v64) >> 5);
      *(v50 + 72) = v67;
      v51 = *a3;
      v52 = a3[1];
      v53 = 80 * v46 + *a3 - v52;
      if (*a3 != v52)
      {
        v54 = *a3;
        v55 = v50 + *a3 - v52;
        do
        {
          v56 = *v54;
          *(v55 + 6) = *(v54 + 6);
          *v55 = v56;
          *(v55 + 24) = 0;
          *(v55 + 32) = 0;
          *(v55 + 16) = 0;
          *(v55 + 16) = *(v54 + 16);
          *(v55 + 32) = *(v54 + 32);
          *(v54 + 24) = 0;
          *(v54 + 32) = 0;
          *(v54 + 16) = 0;
          *(v55 + 40) = *(v54 + 40);
          *(v55 + 56) = 0;
          *(v55 + 64) = 0;
          *(v55 + 48) = 0;
          *(v55 + 48) = *(v54 + 48);
          *(v55 + 64) = *(v54 + 64);
          *(v54 + 56) = 0;
          *(v54 + 64) = 0;
          *(v54 + 48) = 0;
          *(v55 + 72) = *(v54 + 72);
          v54 += 80;
          v55 += 80;
        }

        while (v54 != v52);
        do
        {
          *&__dst = v51 + 48;
          std::vector<llvm::InlineAsm::SubConstraintInfo>::__destroy_vector::operator()[abi:nn200100](&__dst);
          *&__dst = v51 + 16;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&__dst);
          v51 += 80;
        }

        while (v51 != v52);
        v51 = *a3;
      }

      v45 = v50 + 80;
      *a3 = v53;
      a3[1] = v50 + 80;
      a3[2] = 0;
      if (v51)
      {
        operator delete(v51);
      }
    }

    else
    {
      v42 = *v59;
      *(v41 + 6) = *&v59[6];
      *v41 = v42;
      v41[2] = 0;
      v41[3] = 0;
      v41[4] = 0;
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>((v41 + 2), v60, v61, 0xAAAAAAAAAAAAAAABLL * ((v61 - v60) >> 3));
      v43 = v63;
      v41[6] = 0;
      v44 = (v41 + 6);
      *(v44 - 8) = v43;
      *(v44 + 8) = 0;
      *(v44 + 16) = 0;
      std::vector<llvm::InlineAsm::SubConstraintInfo>::__init_with_size[abi:nn200100]<llvm::InlineAsm::SubConstraintInfo*,llvm::InlineAsm::SubConstraintInfo*>(v44, v64, v65, (v65 - v64) >> 5);
      *(v44 + 24) = v67;
      v45 = v44 + 32;
    }

    v5 = v58;
    a3[1] = v45;
    if (v7 == v58)
    {
      v21 = 1;
    }

    else
    {
      v3 = v7 + 1;
      if (v7 + 1 != v58)
      {
        v21 = 1;
        goto LABEL_41;
      }

      std::vector<llvm::InlineAsm::ConstraintInfo>::clear[abi:nn200100](a3);
      v21 = 0;
    }

    v3 = v58;
LABEL_41:
    *&__dst = &v64;
    std::vector<llvm::InlineAsm::SubConstraintInfo>::__destroy_vector::operator()[abi:nn200100](&__dst);
    *&__dst = &v60;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&__dst);
  }

  while ((v21 & 1) != 0);
}

unint64_t llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo::getHashValue(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  Hash = llvm::InlineAsmKeyType::getHash((a1 + 1));
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v5);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayType *,unsigned int>(v5, 0, v5, v6, a1, &Hash);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::InlineAsmKeyType::getHash(llvm::InlineAsmKeyType *this)
{
  v8[8] = *MEMORY[0x277D85DE8];
  v2 = (this + 44);
  v3 = (this + 32);
  v4 = this + 48;
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v7);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef,BOOL,BOOL,llvm::InlineAsm::AsmDialect,llvm::FunctionType *,BOOL>(v7, 0, v7, v8, this, this + 16, this + 40, this + 41, v2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef,BOOL,BOOL,llvm::InlineAsm::AsmDialect,llvm::FunctionType *,BOOL>(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t a5, uint64_t a6, char *a7, char *a8, int *a9, uint64_t *a10, char *a11)
{
  v20 = a2;
  v17 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*a5, *a5 + *(a5 + 8), a3, a4);
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v20, a3, a4, v17);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,BOOL,BOOL,llvm::InlineAsm::AsmDialect,llvm::FunctionType *,BOOL>(a1, v20, v18, a4, a6, a7, a8, a9, a10, a11);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,BOOL,BOOL,llvm::InlineAsm::AsmDialect,llvm::FunctionType *,BOOL>(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t a5, char *a6, char *a7, int *a8, uint64_t *a9, char *a10)
{
  v36 = a2;
  v16 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*a5, *a5 + *(a5 + 8), a3, a4);
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v36, a3, a4, v16);
  v37 = v36;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(a1, &v37, v17, a4, *a6);
  v19 = *a7;
  v38 = v37;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(a1, &v38, v18, a4, v19);
  v21 = v38;
  v22 = *a8;
  LODWORD(__src) = *a8;
  v23 = v20 + 4;
  if (v20 + 4 <= a4)
  {
    *v20 = v22;
  }

  else
  {
    v24 = a4 - v20;
    memcpy(v20, &__src, a4 - v20);
    if (v21)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v25, v26);
      v21 += 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v25, v26, v39);
      v27 = v40;
      *(a1 + 64) = *v39;
      *(a1 + 80) = v27;
      *(a1 + 96) = v41;
      *(a1 + 112) = v42;
      v21 = 64;
    }

    v23 = (a1 + 4 - v24);
    if (v23 > a4)
    {
      v23 = a1;
    }

    else
    {
      memcpy(a1, &__src + v24, 4 - v24);
    }
  }

  v28 = *a9;
  __src = *a9;
  v29 = (v23 + 8);
  if (v23 + 8 <= a4)
  {
    *v23 = v28;
  }

  else
  {
    v30 = a4 - v23;
    memcpy(v23, &__src, a4 - v23);
    if (v21)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v31, v32);
      v21 += 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v31, v32, v39);
      v33 = v40;
      *(a1 + 64) = *v39;
      *(a1 + 80) = v33;
      *(a1 + 96) = v41;
      *(a1 + 112) = v42;
      v21 = 64;
    }

    v29 = (a1 + 8 - v30);
    if (v29 > a4)
    {
      v29 = a1;
    }

    else
    {
      memcpy(a1, &__src + v30, 8 - v30);
    }
  }

  v39[0] = v21;
  v34 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(a1, v39, v29, a4, *a10);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v39[0], v34, a4);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>,llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::PointerType *,llvm::InlineAsmKeyType>>>(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = 0;
    v7 = *a1;
    v9 = a2 + 16;
    v8 = *a2;
    v10 = v4 - 1;
    for (i = 1; ; ++i)
    {
      v12 = v8 & v10;
      v13 = (v7 + 8 * (v8 & v10));
      v14 = *v13;
      if ((*v13 | 0x1000) != 0xFFFFFFFFFFFFF000 && *(a2 + 8) == *v14)
      {
        if (llvm::InlineAsmKeyType::operator==(v9, v14))
        {
          result = 1;
          goto LABEL_18;
        }

        v14 = *v13;
      }

      if (v14 == -4096)
      {
        break;
      }

      if (v6)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14 == -8192;
      }

      if (v15)
      {
        v6 = (v7 + 8 * v12);
      }

      v8 = v12 + i;
    }

    result = 0;
    if (v6)
    {
      v13 = v6;
    }
  }

  else
  {
    v13 = 0;
    result = 0;
  }

LABEL_18:
  *a3 = v13;
  return result;
}

BOOL llvm::InlineAsmKeyType::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) != *(a2 + 80))
  {
    return 0;
  }

  if (*(a1 + 41) == *(a2 + 81) && *(a1 + 44) == *(a2 + 84))
  {
    v4 = *(a1 + 8);
    v5 = *(a2 + 47);
    if (v5 >= 0)
    {
      v6 = (a2 + 24);
    }

    else
    {
      v6 = *(a2 + 24);
    }

    v7 = *(a2 + 32);
    if (v5 >= 0)
    {
      v7 = *(a2 + 47);
    }

    if (v4 == v7 && (!v4 || !memcmp(*a1, v6, v4)))
    {
      v8 = *(a1 + 24);
      v9 = *(a2 + 71);
      if (v9 >= 0)
      {
        v10 = (a2 + 48);
      }

      else
      {
        v10 = *(a2 + 48);
      }

      v11 = *(a2 + 56);
      if (v9 >= 0)
      {
        v11 = *(a2 + 71);
      }

      if (v8 == v11 && (!v8 || !memcmp(*(a1 + 16), v10, v8)) && *(a1 + 32) == *(a2 + 72))
      {
        return *(a1 + 48) == *(a2 + 88);
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>,llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>::insert_as<std::pair<unsigned int,std::pair<llvm::PointerType *,llvm::InlineAsmKeyType>>>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>,llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::PointerType *,llvm::InlineAsmKeyType>>>(a1, a3, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>,llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>::InsertIntoBucketImpl<std::pair<unsigned int,std::pair<llvm::PointerType *,llvm::InlineAsmKeyType>>>(a1, a2, a3, v12);
    v9 = result;
    *result = *a2;
    v10 = 1;
  }

  v11 = *a1 + 8 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>,llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>::InsertIntoBucketImpl<std::pair<unsigned int,std::pair<llvm::PointerType *,llvm::InlineAsmKeyType>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

  llvm::DenseMap<llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>,llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::PointerType *,llvm::InlineAsmKeyType>>>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::InlineAsm *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo,llvm::detail::DenseSetPair<llvm::InlineAsm *>>::grow(uint64_t a1, int a2)
{
  v58[32] = *MEMORY[0x277D85DE8];
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
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 8;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = &v4[v3];
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v21 = *a1;
          v22 = *(a1 + 16);
          v56 = v58;
          v57 = 0x2000000000;
          v23 = *v20;
          v24 = *(v20 + 47);
          v25 = v20 + 24;
          if (v24 < 0)
          {
            v25 = *(v20 + 24);
          }

          if (v24 < 0)
          {
            v24 = *(v20 + 32);
          }

          v26 = *(v20 + 71);
          v27 = v20 + 48;
          if (v26 < 0)
          {
            v27 = *(v20 + 48);
          }

          if (v26 < 0)
          {
            v26 = *(v20 + 56);
          }

          v28 = *(v20 + 72);
          v29 = *(v20 + 80);
          v30 = *(v20 + 84);
          v31 = *(v20 + 88);
          v52[0] = v23;
          v52[1] = v25;
          v52[2] = v24;
          v52[3] = v27;
          v52[4] = v26;
          v52[5] = v28;
          v53 = v29;
          v54 = v30;
          v55 = v31;
          HashValue = llvm::ConstantUniqueMap<llvm::InlineAsm>::MapInfo::getHashValue(v52);
          if (v56 != v58)
          {
            free(v56);
          }

          v33 = v22 - 1;
          v34 = *v19;
          v35 = HashValue & (v22 - 1);
          v36 = &v21[v35];
          v37 = *v36;
          if (*v19 != *v36)
          {
            v38 = 0;
            v39 = 1;
            while (v37 != -4096)
            {
              if (v38)
              {
                v40 = 0;
              }

              else
              {
                v40 = v37 == -8192;
              }

              if (v40)
              {
                v38 = v36;
              }

              v41 = v35 + v39++;
              v35 = v41 & v33;
              v36 = &v21[v41 & v33];
              v37 = *v36;
              if (v34 == *v36)
              {
                goto LABEL_26;
              }
            }

            if (v38)
            {
              v36 = v38;
            }
          }

LABEL_26:
          *v36 = v34;
          ++*(a1 + 8);
        }

        ++v19;
      }

      while (v19 != v18);
    }

    v42 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v43 = *(a1 + 16);
  if (v43)
  {
    v44 = 0;
    v45 = v43 + 0x1FFFFFFFFFFFFFFFLL;
    v46 = v45 & 0x1FFFFFFFFFFFFFFFLL;
    v47 = (v45 & 0x1FFFFFFFFFFFFFFFLL) - (v45 & 1) + 2;
    v48 = vdupq_n_s64(v46);
    v49 = result + 8;
    do
    {
      v50 = vmovn_s64(vcgeq_u64(v48, vorrq_s8(vdupq_n_s64(v44), xmmword_2750C1210)));
      if (v50.i8[0])
      {
        *(v49 - 1) = -4096;
      }

      if (v50.i8[4])
      {
        *v49 = -4096;
      }

      v44 += 2;
      v49 += 2;
    }

    while (v47 != v44);
  }

  v51 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::InlineAsm::SubConstraintInfo>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::vector<llvm::InlineAsm::SubConstraintInfo>::__init_with_size[abi:nn200100]<llvm::InlineAsm::SubConstraintInfo*,llvm::InlineAsm::SubConstraintInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::InlineAsm::SubConstraintInfo>>(a4);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }
}

uint64_t llvm::Instruction::Instruction(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t *a6)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3 + 28;
  *(a1 + 17) = 0;
  *(a1 + 18) = 0;
  *(a1 + 20) = *(a1 + 20) & 0xC0000000 | a5 & 0x7FFFFFF;
  *(a1 + 24) = 0u;
  v7 = a1 + 24;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  if (a6)
  {
    v8 = a6;
    llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(a6[5] + 40, a1);
    v9 = v8[3];
    v8 += 3;
    *(a1 + 24) = v9;
    *(a1 + 32) = v8;
    *(v9 + 8) = v7;
    *v8 = v7;
  }

  return a1;
}

void llvm::Instruction::~Instruction(llvm::UndefValue **this, llvm::Type *a2)
{
  if ((*(this + 23) & 8) != 0)
  {
    v3 = llvm::UndefValue::get(*this, a2);
    llvm::ValueAsMetadata::handleRAUW(this, v3, v4);
  }

  llvm::Instruction::setMetadata(this, 38, 0);
  v5 = this[6];
  if (v5)
  {
    llvm::MetadataTracking::untrack((this + 6), v5);
  }

  llvm::Value::~Value(this, v5);
}

BOOL llvm::Instruction::comesBefore(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 18);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(v2 + 48);
    if (v4 != v2 + 40)
    {
      v5 = 0;
      do
      {
        v6 = v4 - 24;
        if (!v4)
        {
          v6 = 0;
        }

        *(v6 + 56) = v5++;
        v4 = *(v4 + 8);
      }

      while (v4 != v2 + 40);
    }

    *(v2 + 18) = v3 | 0x8000;
  }

  return *(a1 + 56) < *(a2 + 56);
}

BOOL llvm::Instruction::copyIRFlags(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    HIDWORD(v6) = *(a1 + 16) - 41;
    LODWORD(v6) = HIDWORD(v6);
    v5 = v6 >> 1;
    v7 = v5 > 6;
    v8 = (1 << v5) & 0x47;
    if (!v7 && v8 != 0)
    {
      v10 = *(a2 + 16);
      if (v10 < 0x1C)
      {
        if (v10 != 5)
        {
          goto LABEL_15;
        }

        v11 = *(a2 + 18) - 13;
      }

      else
      {
        v11 = v10 - 41;
      }

      HIDWORD(v13) = v11;
      LODWORD(v13) = v11;
      v12 = v13 >> 1;
      v7 = v12 > 6;
      v14 = (1 << v12) & 0x47;
      if (!v7 && v14 != 0)
      {
        v16 = *(a1 + 17) & 0xFB | (4 * ((*(a2 + 17) >> 2) & 1));
        *(a1 + 17) = v16;
        *(a1 + 17) = v16 & 0xFD | *(a2 + 17) & 2;
      }
    }
  }

LABEL_15:
  v17 = *(a2 + 16);
  if (v17 < 0x1C)
  {
    if (v17 != 5)
    {
      goto LABEL_30;
    }

    v20 = *(a2 + 18);
    v7 = v20 > 0x1B;
    v21 = (1 << v20) & 0xC180000;
    if (v7 || v21 == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v7 = v17 > 0x37;
    v18 = (1 << v17) & 0xC1800000000000;
    if (v7 || v18 == 0)
    {
      goto LABEL_30;
    }
  }

  v23 = *(a1 + 16);
  if (v23 <= 0x37 && ((1 << v23) & 0xC1800000000000) != 0)
  {
    *(a1 + 17) = *(a1 + 17) & 0xFD | *(a2 + 17) & 2;
  }

LABEL_30:
  result = llvm::FPMathOperator::classof(a2);
  if (result)
  {
    result = llvm::FPMathOperator::classof(a1);
    if (result)
    {
      *(a1 + 17) = *(a2 + 17) & 0xFE | *(a1 + 17) & 1;
    }
  }

  if (*(a2 + 16) == 62 && a1 && *(a1 + 16) == 62)
  {
    *(a1 + 17) |= *(a2 + 17) & 2;
  }

  return result;
}

const char *llvm::Instruction::getOpcodeName(llvm::Instruction *this)
{
  if ((this - 1) > 0x42)
  {
    return "<Invalid operator> ";
  }

  else
  {
    return off_279F172E0[this - 1];
  }
}

BOOL llvm::Instruction::isAtomic(llvm::Instruction *this)
{
  v1 = *(this + 16);
  if ((v1 - 63) < 3)
  {
    return 1;
  }

  if (v1 == 60 || v1 == 61)
  {
    return (*(this + 9) & 0x380) != 0;
  }

  return 0;
}

BOOL llvm::Instruction::isLaunderOrStripInvariantGroup(llvm::Instruction *this)
{
  if (*(this + 16) != 84)
  {
    return 0;
  }

  v1 = *(this - 4);
  if (!v1 || *(v1 + 16) || *(v1 + 24) != *(this + 9) || (*(v1 + 32) & 0x2000) == 0)
  {
    return 0;
  }

  v3 = *(v1 + 36);
  return v3 == 169 || v3 == 293;
}

uint64_t llvm::Instruction::getNumSuccessors(llvm::Instruction *this)
{
  result = 0;
  v3 = *(this + 16);
  if (v3 > 0x21)
  {
    if (*(this + 16) <= 0x24u)
    {
      if (v3 - 34 >= 2)
      {
        return *(this + 9) & 1;
      }

      return result;
    }

    if (v3 == 37)
    {
      return 1;
    }

    if (v3 != 38)
    {
      return (*(this + 20) + 1);
    }

    return (*(this + 5) & 0x7FFFFFFu) - 1;
  }

  if (*(this + 16) > 0x1Eu)
  {
    if (v3 == 31)
    {
      return (*(this + 5) >> 1) & 0x3FFFFFF;
    }

    if (v3 != 32)
    {
      return 2;
    }

    return (*(this + 5) & 0x7FFFFFFu) - 1;
  }

  if (v3 != 29)
  {
    if ((*(this + 5) & 0x7FFFFFF) == 3)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t llvm::Instruction::getSuccessor(llvm::Instruction *this, unsigned int a2)
{
  v2 = *(this + 16);
  if (v2 <= 0x23)
  {
    if (*(this + 16) <= 0x1Fu)
    {
      if (v2 == 30)
      {
        v3 = this - 32 * a2;
LABEL_21:
        v6 = v3 - 32;
        return *v6;
      }

      v9 = *(this + 5);
      if ((v9 & 0x40000000) != 0)
      {
        v8 = *(this - 1);
      }

      else
      {
        v8 = this - 32 * (v9 & 0x7FFFFFF);
      }

      v10 = (2 * a2) | 1;
LABEL_27:
      v6 = &v8[32 * v10];
      return *v6;
    }

    if (v2 != 32)
    {
      v5 = -64;
      if (!a2)
      {
        v5 = -96;
      }

      v6 = this + v5;
      return *v6;
    }

LABEL_14:
    v7 = *(this + 5);
    if ((v7 & 0x40000000) != 0)
    {
      v8 = *(this - 1);
    }

    else
    {
      v8 = this - 32 * (v7 & 0x7FFFFFF);
    }

    v10 = a2 + 1;
    goto LABEL_27;
  }

  if (*(this + 16) > 0x25u)
  {
    if (v2 != 38)
    {
      if (!a2)
      {
        v6 = this - 32 * *(this + 20) - 64;
        return *v6;
      }

      v3 = this + 32 * a2 + -32 * *(this + 20) - 32;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v2 == 36)
  {
    if ((*(this + 9) & 1) == 0)
    {
      return 0;
    }

    v6 = this - 32 * (*(this + 5) & 0x7FFFFFF) + 32;
  }

  else
  {
    v6 = this - 32;
  }

  return *v6;
}

uint64_t llvm::Instruction::setSuccessor(uint64_t this, unsigned int a2, llvm::BasicBlock *a3)
{
  v3 = *(this + 16);
  if (v3 <= 0x23)
  {
    if (*(this + 16) <= 0x1Fu)
    {
      if (v3 == 30)
      {
        v4 = this - 32 * a2;
        v6 = *(v4 - 32);
        v5 = (v4 - 32);
        if (!v6)
        {
LABEL_21:
          *v5 = a3;
          if (!a3)
          {
            return this;
          }

          v13 = *(a3 + 1);
          v11 = (a3 + 8);
          v12 = v13;
          v5[1] = v13;
          if (v13)
          {
            *(v12 + 16) = v5 + 1;
          }

          v5[2] = v11;
          goto LABEL_25;
        }

LABEL_19:
        v10 = v5[1];
        *v5[2] = v10;
        if (v10)
        {
          *(v10 + 16) = v5[2];
        }

        goto LABEL_21;
      }

      v7 = (2 * a2) | 1;
LABEL_15:
      v8 = *(this + 20);
      if ((v8 & 0x40000000) != 0)
      {
        v9 = *(this - 8);
      }

      else
      {
        v9 = this - 32 * (v8 & 0x7FFFFFF);
      }

      v5 = (v9 + 32 * v7);
      if (!*v5)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    if (v3 != 32)
    {
      if (a2)
      {
        return llvm::InvokeInst::setUnwindDest(this, a3);
      }

      else
      {
        return llvm::InvokeInst::setNormalDest(this, a3);
      }
    }

LABEL_13:
    v7 = a2 + 1;
    goto LABEL_15;
  }

  if (*(this + 16) > 0x25u)
  {
    if (v3 == 38)
    {
      goto LABEL_13;
    }

    if (a2)
    {
      return llvm::CallBrInst::setIndirectDest(this, a2 - 1, a3);
    }

    else
    {
      return llvm::CallBrInst::setDefaultDest(this, a3);
    }
  }

  else
  {
    if (v3 == 36)
    {
      return llvm::CleanupReturnInst::setUnwindDest(this, a3);
    }

    v5 = (this - 32);
    if (*(this - 32))
    {
      v14 = *(this - 24);
      **(this - 16) = v14;
      if (v14)
      {
        *(v14 + 16) = *(this - 16);
      }
    }

    *v5 = a3;
    if (a3)
    {
      v16 = *(a3 + 1);
      v11 = (a3 + 8);
      v15 = v16;
      *(this - 24) = v16;
      if (v16)
      {
        *(v15 + 16) = this - 24;
      }

      *(this - 16) = v11;
LABEL_25:
      *v11 = v5;
    }
  }

  return this;
}

llvm::BasicBlock *llvm::Instruction::replaceSuccessorWith(llvm::Instruction *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3)
{
  result = llvm::Instruction::getNumSuccessors(this);
  if (result)
  {
    v7 = result;
    for (i = 0; i != v7; ++i)
    {
      result = llvm::Instruction::getSuccessor(this, i);
      if (result == a2)
      {
        result = llvm::Instruction::setSuccessor(this, i, a3);
      }
    }
  }

  return result;
}

uint64_t llvm::Instruction::copyMetadata(uint64_t result, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = result;
  v21[8] = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) || (*(a2 + 23) & 0x20) != 0)
  {
    v16[0] = 0;
    v16[1] = 0;
    v17 = 0;
    if (a4)
    {
      v8 = 4 * a4;
      do
      {
        v9 = *a3++;
        LODWORD(v18) = v9;
        llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>(v16, &v18, &v19);
        v8 -= 4;
      }

      while (v8);
    }

    v19 = v21;
    v20 = 0x400000000;
    llvm::Value::getAllMetadata(a2, &v19);
    if (v20)
    {
      v10 = v19;
      v11 = 16 * v20;
      do
      {
        if (!a4 || (v18 = 0, llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(v16, v10, &v18)))
        {
          llvm::Instruction::setMetadata(v7, *v10, v10[1]);
        }

        v10 += 2;
        v11 -= 16;
      }

      while (v11);
    }

    if (!a4 || (v15 = 0, v18 = 0, (llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(v16, &v15, &v18) & 1) != 0))
    {
      v12 = *(a2 + 48);
      v14 = v12;
      if (v12)
      {
        llvm::MetadataTracking::track(&v14, v12, 2);
      }

      llvm::TrackingMDRef::operator=(v7 + 6, &v14);
      if (v14)
      {
        llvm::MetadataTracking::untrack(&v14, v14);
      }
    }

    if (v19 != v21)
    {
      free(v19);
    }

    result = MEMORY[0x277C69E30](v16[0], 4);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::CallBrInst::setDefaultDest(uint64_t this, llvm::BasicBlock *a2)
{
  v2 = this - 32 * *(this + 80);
  v4 = *(v2 - 64);
  v3 = v2 - 64;
  if (v4)
  {
    v5 = *(v3 + 8);
    **(v3 + 16) = v5;
    if (v5)
    {
      *(v5 + 16) = *(v3 + 16);
    }
  }

  *v3 = a2;
  if (a2)
  {
    v8 = *(a2 + 1);
    v6 = (a2 + 8);
    v7 = v8;
    *(v3 + 8) = v8;
    if (v8)
    {
      *(v7 + 16) = v3 + 8;
    }

    *(v3 + 16) = v6;
    *v6 = v3;
  }

  return this;
}

uint64_t llvm::CallBrInst::setIndirectDest(uint64_t this, unsigned int a2, llvm::BasicBlock *a3)
{
  v3 = this - 32 * *(this + 80) + 32 * a2;
  v5 = *(v3 - 32);
  v4 = v3 - 32;
  if (v5)
  {
    v6 = *(v4 + 8);
    **(v4 + 16) = v6;
    if (v6)
    {
      *(v6 + 16) = *(v4 + 16);
    }
  }

  *v4 = a3;
  if (a3)
  {
    v9 = *(a3 + 1);
    v7 = (a3 + 8);
    v8 = v9;
    *(v4 + 8) = v9;
    if (v9)
    {
      *(v8 + 16) = v4 + 8;
    }

    *(v4 + 16) = v7;
    *v7 = v4;
  }

  return this;
}

uint64_t llvm::AllocaInst::isArrayAllocation(llvm::AllocaInst *this)
{
  v1 = *(this - 4);
  if (v1)
  {
    v2 = *(v1 + 16) == 16;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    return 1;
  }

  v4 = *(v1 + 32);
  if (v4 > 0x40)
  {
    v5 = llvm::APInt::countLeadingZerosSlowCase((v1 + 24)) == v4 - 1;
  }

  else
  {
    v5 = *(v1 + 24) == 1;
  }

  v6 = v5;
  return v6 ^ 1u;
}

const char *llvm::SelectInst::areInvalidOperands(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*a2 != *a3)
  {
    return "both values to select must have same type";
  }

  v5 = *(v3 + 8);
  if (v5 == 12)
  {
    return "select values cannot have token type";
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = (*(*a1 + 8) & 0xFE) == 18;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    if (v6 != **v6 + 1920)
    {
      return "select condition must be i1 or <n x i1>";
    }

    return 0;
  }

  if (*(v6 + 24) != **v6 + 1920)
  {
    return "vector select condition element type must be i1";
  }

  if ((v5 & 0xFE) == 0x12)
  {
    if (*(v3 + 32) != *(v6 + 32) || ((~v5 & 0x13) == 0) != ((~*(*a1 + 8) & 0x13) == 0))
    {
      return "vector select requires selected vectors to have the same vector length as select condition";
    }

    return 0;
  }

  return "selected values for vector select must be vectors";
}

void llvm::LandingPadInst::init(llvm::LandingPadInst *this, unsigned int a2, const llvm::Twine *a3)
{
  *(this + 15) = a2;
  *(this + 5) &= 0xF8000000;
  v6 = operator new(32 * a2);
  *(this - 1) = v6;
  if (a2)
  {
    v7 = &v6[4 * a2];
    do
    {
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = this;
      v6 += 4;
    }

    while (v6 != v7);
  }

  llvm::Value::setName(this, a3);
  *(this + 9) &= ~1u;
}

_DWORD *llvm::LandingPadInst::Create(llvm::LandingPadInst *this, llvm::Type *a2, const llvm::Twine *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v7 = a2;
  v9 = operator new(0x48uLL);
  v9[7] = v9[7] & 0x38000000 | 0x40000000;
  *v9 = 0;
  llvm::Instruction::Instruction((v9 + 2), this, 66, 0, 0, a4);
  llvm::LandingPadInst::init((v9 + 2), v7, a3);
  return v9 + 2;
}

void llvm::LandingPadInst::growOperands(llvm::LandingPadInst *this, int a2)
{
  v2 = *(this + 5) & 0x7FFFFFF;
  if (*(this + 15) < v2 + a2)
  {
    if (v2 <= 1)
    {
      v2 = 1;
    }

    v3 = (a2 + 2 * v2) & 0xFFFFFFFE;
    *(this + 15) = v3;
    llvm::User::growHungoffUses(this, v3, 0);
  }
}

void llvm::LandingPadInst::addClause(llvm::LandingPadInst *this, llvm::Constant *a2)
{
  v4 = *(this + 5) & 0x7FFFFFF;
  llvm::LandingPadInst::growOperands(this, 1);
  v5 = *(this + 5);
  *(this + 5) = v5 & 0xF8000000 | (v5 + 1) & 0x7FFFFFF;
  if ((v5 & 0x40000000) != 0)
  {
    v6 = *(this - 1);
  }

  else
  {
    v6 = this - 32 * ((v5 + 1) & 0x7FFFFFF);
  }

  v7 = &v6[32 * v4];
  if (*v7)
  {
    v8 = *(v7 + 1);
    **(v7 + 2) = v8;
    if (v8)
    {
      *(v8 + 16) = *(v7 + 2);
    }
  }

  *v7 = a2;
  if (a2)
  {
    v11 = *(a2 + 1);
    v10 = (a2 + 8);
    v9 = v11;
    *(v7 + 1) = v11;
    if (v11)
    {
      *(v9 + 16) = v7 + 8;
    }

    *(v7 + 2) = v10;
    *v10 = v7;
  }
}

uint64_t llvm::CallBase::getArgOperandWithAttribute(uint64_t a1, int a2)
{
  v7 = 0;
  v4 = *(a1 + 64);
  if (v4 && llvm::AttributeListImpl::hasAttrSomewhere(v4, a2, &v7))
  {
    return *(a1 - 32 * (*(a1 + 20) & 0x7FFFFFF) + 32 * (v7 - 1));
  }

  v6 = *(a1 - 32);
  if (!v6 || *(v6 + 16) || *(v6 + 24) != *(a1 + 72))
  {
    return 0;
  }

  result = *(v6 + 112);
  if (result)
  {
    if (llvm::AttributeListImpl::hasAttrSomewhere(result, a2, &v7))
    {
      return *(a1 - 32 * (*(a1 + 20) & 0x7FFFFFF) + 32 * (v7 - 1));
    }

    return 0;
  }

  return result;
}

BOOL llvm::CallBase::paramHasAttr(llvm::CallBase *this, int a2, int a3)
{
  v4 = a2 + 2;
  v5 = *(this + 8);
  if (v5)
  {
    if (v4 < *(v5 + 8))
    {
      v6 = *(v5 + 8 * v4 + 40);
      if (v6)
      {
        if ((*(v6 + a3 / 8 + 12) >> (a3 & 7)))
        {
          return 1;
        }
      }
    }
  }

  v8 = *(this - 4);
  if (!v8)
  {
    return 0;
  }

  if (*(v8 + 16))
  {
    return 0;
  }

  if (*(v8 + 24) != *(this + 9))
  {
    return 0;
  }

  v9 = *(v8 + 112);
  if (!v9)
  {
    return 0;
  }

  if (v4 >= *(v9 + 8))
  {
    return 0;
  }

  v10 = *(v9 + 8 * v4 + 40);
  if (!v10 || ((*(v10 + a3 / 8 + 12) >> (a3 & 7)) & 1) == 0)
  {
    return 0;
  }

  if (a3 == 67)
  {
    hasReadingOperandBundles = llvm::CallBase::hasReadingOperandBundles(this);
    return !hasReadingOperandBundles;
  }

  if (a3 != 45)
  {
    if (a3 != 44)
    {
      return 1;
    }

    if (llvm::CallBase::hasReadingOperandBundles(this))
    {
      return 0;
    }
  }

  hasReadingOperandBundles = llvm::CallBase::hasClobberingOperandBundles(this);
  return !hasReadingOperandBundles;
}

BOOL llvm::CallBase::hasReadingOperandBundles(llvm::CallBase *this)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0x800000007;
  result = llvm::CallBase::hasOperandBundlesOtherThan(this, v5, 2);
  if (result)
  {
    v3 = *(this - 4);
    result = !v3 || *(v3 + 16) || *(v3 + 24) != *(this + 9) || *(v3 + 36) != 7;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::CallBase::hasClobberingOperandBundles(llvm::CallBase *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = xmmword_2750DDB60;
  result = llvm::CallBase::hasOperandBundlesOtherThan(this, &v5, 4);
  if (result)
  {
    v3 = *(this - 4);
    result = !v3 || *(v3 + 16) || *(v3 + 24) != *(this + 9) || *(v3 + 36) != 7;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::CallBase::hasFnAttrOnCalledFunction(uint64_t a1, int a2)
{
  v2 = *(a1 - 32);
  v3 = *(v2 + 16);
  if (v2)
  {
    v4 = v3 == 5;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    if (*(v2 + 18) != 49)
    {
      return 0;
    }

    v2 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF));
    v3 = *(v2 + 16);
  }

  if (v3)
  {
    return 0;
  }

  v6 = *(v2 + 112);
  if (!v6)
  {
    return 0;
  }

  return (*(v6 + a2 / 8 + 12) >> (a2 & 7)) & 1;
}

uint64_t llvm::CallBase::populateBundleOperandInfos(uint64_t ***a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a4;
  v5 = a2;
  v7 = *(a1 + 5);
  v8 = &(&a1[4 * a4])[-4 * (v7 & 0x7FFFFFF)];
  if (a3)
  {
    v9 = 48 * a3;
    v10 = (a2 + 32);
    do
    {
      std::__copy_impl::operator()[abi:nn200100]<llvm::Constant * const*,llvm::Constant * const*,llvm::Use *>(v23, *(v10 - 1), *v10, v8);
      v8 = v11;
      v10 += 6;
      v9 -= 48;
    }

    while (v9);
    v7 = *(a1 + 5);
  }

  if (v7 < 0)
  {
    v12 = &a1[-4 * (v7 & 0x7FFFFFF)];
    v15 = *(v12 - 1);
    v14 = v12 - 1;
    v13 = v15;
    if (v15)
    {
      v16 = ***a1;
      v17 = v14 - v13;
      do
      {
        v18 = *(v5 + 23);
        if (v18 >= 0)
        {
          v19 = v5;
        }

        else
        {
          v19 = *v5;
        }

        if (v18 >= 0)
        {
          v20 = *(v5 + 23);
        }

        else
        {
          v20 = *(v5 + 8);
        }

        v21 = *(v16 + 2660);
        v23[0] = v19;
        v23[1] = v20;
        v24 = v21;
        *v17 = *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int>((v16 + 2648), v19, v20, &v24);
        *(v17 + 8) = v4;
        v4 += (*(v5 + 32) - *(v5 + 24)) >> 3;
        *(v17 + 12) = v4;
        v5 += 48;
        v17 += 16;
      }

      while (v17 != v14);
    }
  }

  return v8;
}

unint64_t llvm::CallBase::getBundleOpInfoForOperand(llvm::CallBase *this, unsigned int a2)
{
  v2 = *(this + 5);
  if ((v2 & 0x80000000) == 0)
  {
    result = 0;
LABEL_6:
    while (*(result + 8) > a2 || *(result + 12) <= a2)
    {
      result += 16;
    }

    return result;
  }

  v4 = this - 32 * (v2 & 0x7FFFFFF);
  v5 = (v4 - 8);
  v6 = *(v4 - 1);
  if (v6 <= 127)
  {
    result = v5 - v6;
    goto LABEL_6;
  }

  v7 = &v4[-v6 - 8];
  if (!v6)
  {
    return v7;
  }

  do
  {
    if (v7 + 16 * (((a2 - *(v7 + 8)) << 10) / (((*(v5 - 4) - *(v7 + 8)) << 10) / ((v5 - v7) >> 4))) >= v5)
    {
      result = v5 - 16;
    }

    else
    {
      result = v7 + 16 * (((a2 - *(v7 + 8)) << 10) / (((*(v5 - 4) - *(v7 + 8)) << 10) / ((v5 - v7) >> 4)));
    }

    v8 = *(result + 12);
    if (*(result + 8) <= a2 && v8 > a2)
    {
      break;
    }

    if (v8 > a2)
    {
      v5 = result;
    }

    else
    {
      v7 = result + 16;
    }
  }

  while (v7 != v5);
  return result;
}

uint64_t llvm::CallBase::getOperandBundle@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 20);
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFF, v6 = this - 32 * v5, v7 = *(v6 - 8), (v7 & 0xFFFFFFFF0) != 0))
  {
    v8 = (v7 >> 4);
    v9 = (this - (v7 + 32 * v5));
    while (1)
    {
      v10 = *(v9 - 1);
      if (*(v10 + 8) == a2)
      {
        break;
      }

      v9 += 4;
      if (!--v8)
      {
        goto LABEL_2;
      }
    }

    v12 = v9;
    v11 = *v9;
    v13 = v12[1] - v11;
    *a3 = v6 + 32 * v11;
    *(a3 + 8) = v13;
    *(a3 + 16) = v10;
    v4 = 1;
  }

  else
  {
LABEL_2:
    v4 = 0;
    *a3 = 0;
  }

  *(a3 + 24) = v4;
  return this;
}

BOOL llvm::CallBase::hasOperandBundlesOtherThan(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = *(a1 + 20);
  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  v5 = a1 - 32 * (v3 & 0x7FFFFFF);
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = v8;
  if ((v8 & 0xFFFFFFFF0) == 0)
  {
    return 0;
  }

  v9 = 0;
  v10 = (v7 >> 4);
  v11 = v6 - v7;
  v12 = &a2[a3];
  do
  {
    if (a3)
    {
      v13 = 4 * a3;
      for (i = a2; *i != *(*(v11 + 16 * v9) + 8); ++i)
      {
        v13 -= 4;
        if (!v13)
        {
          return 1;
        }
      }
    }

    else
    {
      i = a2;
    }

    result = i == v12;
    if (i == v12)
    {
      break;
    }

    ++v9;
  }

  while (v9 != v10);
  return result;
}

uint64_t llvm::CallBase::getMemoryEffects(llvm::CallBase *this)
{
  v8 = *(this + 8);
  MemoryEffects = llvm::AttributeList::getMemoryEffects(&v8);
  v3 = *(this - 4);
  if (v3)
  {
    v4 = *(v3 + 16) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v8 = *(v3 + 112);
    v5 = llvm::AttributeList::getMemoryEffects(&v8);
    v6 = *(this + 5);
    if (v6 < 0 && (*(this - 4 * (v6 & 0x7FFFFFF) - 1) & 0xFFFFFFFF0) != 0)
    {
      if (llvm::CallBase::hasReadingOperandBundles(this))
      {
        v5 |= 0x15u;
      }

      if (llvm::CallBase::hasClobberingOperandBundles(this))
      {
        v5 |= 0x2Au;
      }
    }

    return v5 & MemoryEffects;
  }

  return MemoryEffects;
}

void llvm::CallInst::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, const llvm::Twine *a8)
{
  v11 = a5;
  *(a1 + 72) = a2;
  std::__copy_impl::operator()[abi:nn200100]<llvm::Constant * const*,llvm::Constant * const*,llvm::Use *>(&v14, a4, &a4[a5], a1 - 32 * (*(a1 + 20) & 0x7FFFFFF));
  llvm::GlobalIFunc::setResolver(a1, a3);
  llvm::CallBase::populateBundleOperandInfos(a1, a6, a7, v11);
  llvm::Value::setName(a1, a8);
}

void llvm::InvokeInst::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const llvm::Twine *a11)
{
  v11 = a7;
  *(a1 + 72) = a2;
  std::__copy_impl::operator()[abi:nn200100]<llvm::Constant * const*,llvm::Constant * const*,llvm::Use *>(&v16, a6, &a6[a7], a1 - 32 * (*(a1 + 20) & 0x7FFFFFF));
  llvm::InvokeInst::setNormalDest(a1, a4);
  llvm::InvokeInst::setUnwindDest(a1, a5);
  llvm::GlobalIFunc::setResolver(a1, a3);
  llvm::CallBase::populateBundleOperandInfos(a1, a9, a10, v11);
  llvm::Value::setName(a1, a11);
}

void llvm::CallBrInst::init(uint64_t a1, uint64_t a2, uint64_t a3, llvm::BasicBlock *a4, uint64_t a5, int a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, const llvm::Twine *a11)
{
  v11 = a8;
  *(a1 + 72) = a2;
  std::__copy_impl::operator()[abi:nn200100]<llvm::Constant * const*,llvm::Constant * const*,llvm::Use *>(&v18, a7, &a7[a8], a1 - 32 * (*(a1 + 20) & 0x7FFFFFF));
  *(a1 + 80) = a6;
  llvm::CallBrInst::setDefaultDest(a1, a4);
  if (*(a1 + 80))
  {
    v17 = 0;
    do
    {
      llvm::CallBrInst::setIndirectDest(a1, v17, *(a5 + 8 * v17));
      ++v17;
    }

    while (v17 != *(a1 + 80));
  }

  llvm::GlobalIFunc::setResolver(a1, a3);
  llvm::CallBase::populateBundleOperandInfos(a1, a9, a10, v11);
  llvm::Value::setName(a1, a11);
}

unsigned int *llvm::CallBrInst::getIndirectDests@<X0>(unsigned int *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = a2 + 16;
  *(a2 + 8) = 0x1000000000;
  v3 = this[20];
  if (v3)
  {
    v4 = this;
    v5 = this - 8;
    do
    {
      this = llvm::SmallVectorTemplateBase<void *,true>::push_back(a2, *&v5[-8 * v4[20]]);
      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return this;
}

uint64_t llvm::ReturnInst::ReturnInst(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  result = llvm::Instruction::Instruction(a1, *a2 + 1608, 1, a1 + 32 * v5, a3 != 0, a4);
  if (a3)
  {
    v7 = result - 32 * (*(result + 20) & 0x7FFFFFF);
    if (*v7)
    {
      v8 = *(v7 + 8);
      **(v7 + 16) = v8;
      if (v8)
      {
        *(v8 + 16) = *(v7 + 16);
      }
    }

    *v7 = a3;
    v11 = *(a3 + 8);
    v10 = (a3 + 8);
    v9 = v11;
    *(v7 + 8) = v11;
    if (v11)
    {
      *(v9 + 16) = v7 + 8;
    }

    *(v7 + 16) = v10;
    *v10 = v7;
  }

  return result;
}

uint64_t llvm::ResumeInst::ResumeInst(llvm::ResumeInst *this, llvm::Value *a2, llvm::Instruction *a3)
{
  v4 = this - 32;
  result = llvm::Instruction::Instruction(this, ***a2 + 1608, 6, this - 32, 1, a3);
  if (*(result - 32))
  {
    v6 = *(result - 24);
    **(result - 16) = v6;
    if (v6)
    {
      *(v6 + 16) = *(result - 16);
    }
  }

  *(result - 32) = a2;
  v9 = *(a2 + 1);
  v8 = (a2 + 8);
  v7 = v9;
  *(result - 24) = v9;
  if (v9)
  {
    *(v7 + 16) = result - 24;
  }

  *(result - 16) = v8;
  *v8 = v4;
  return result;
}

uint64_t llvm::CleanupReturnInst::init(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(result + 18) |= 1u;
    v3 = result - 32 * (*(result + 20) & 0x7FFFFFF);
    if (*v3)
    {
      v4 = *(v3 + 8);
      **(v3 + 16) = v4;
      if (v4)
      {
        *(v4 + 16) = *(v3 + 16);
      }
    }

    *v3 = a2;
    if (a2)
    {
      v7 = *(a2 + 8);
      v5 = (a2 + 8);
      v6 = v7;
      *(v3 + 8) = v7;
      if (v7)
      {
        *(v6 + 16) = v3 + 8;
      }

      *(v3 + 16) = v5;
      *v5 = v3;
    }

    v8 = result - 32 * (*(result + 20) & 0x7FFFFFF);
    if (*(v8 + 32))
    {
      v9 = *(v8 + 40);
      **(v8 + 48) = v9;
      if (v9)
      {
        *(v9 + 16) = *(v8 + 48);
      }
    }

    *(v8 + 32) = a3;
    v12 = *(a3 + 8);
    v10 = (a3 + 8);
    v11 = v12;
    *(v8 + 40) = v12;
    if (v12)
    {
      *(v11 + 16) = v8 + 40;
    }

    *(v8 + 48) = v10;
    *v10 = v8 + 32;
  }

  else
  {
    v13 = result - 32 * (*(result + 20) & 0x7FFFFFF);
    if (*v13)
    {
      v14 = *(v13 + 8);
      **(v13 + 16) = v14;
      if (v14)
      {
        *(v14 + 16) = *(v13 + 16);
      }
    }

    *v13 = a2;
    if (a2)
    {
      v17 = *(a2 + 8);
      v15 = (a2 + 8);
      v16 = v17;
      *(v13 + 8) = v17;
      if (v17)
      {
        *(v16 + 16) = v13 + 8;
      }

      *(v13 + 16) = v15;
      *v15 = v13;
    }
  }

  return result;
}

uint64_t llvm::CatchReturnInst::init(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = (result - 64);
  if (*(result - 64))
  {
    v4 = *(result - 56);
    **(result - 48) = v4;
    if (v4)
    {
      *(v4 + 16) = *(result - 48);
    }
  }

  *v3 = a2;
  if (a2)
  {
    v7 = *(a2 + 8);
    v5 = (a2 + 8);
    v6 = v7;
    *(result - 56) = v7;
    if (v7)
    {
      *(v6 + 16) = result - 56;
    }

    *(result - 48) = v5;
    *v5 = v3;
  }

  v8 = (result - 32);
  if (*(result - 32))
  {
    v9 = *(result - 24);
    **(result - 16) = v9;
    if (v9)
    {
      *(v9 + 16) = *(result - 16);
    }
  }

  *v8 = a3;
  if (a3)
  {
    v12 = *(a3 + 8);
    v10 = (a3 + 8);
    v11 = v12;
    *(result - 24) = v12;
    if (v12)
    {
      *(v11 + 16) = result - 24;
    }

    *(result - 16) = v10;
    *v10 = v8;
  }

  return result;
}

llvm::CatchSwitchInst *llvm::CatchSwitchInst::CatchSwitchInst(llvm::CatchSwitchInst *this, llvm::Value *a2, llvm::BasicBlock *a3, int a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  v11 = llvm::Instruction::Instruction(this, *a2, 10, 0, 0, a6);
  if (a3)
  {
    v12 = a4 + 1;
  }

  else
  {
    v12 = a4;
  }

  llvm::CatchSwitchInst::init(v11, a2, a3, v12 + 1);
  llvm::Value::setName(this, a5);
  return this;
}

void *llvm::CatchSwitchInst::init(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *(a1 + 60) = a4;
  if (a3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *(a1 + 20) = *(a1 + 20) & 0xF8000000 | v8;
  result = operator new(32 * a4);
  *(a1 - 8) = result;
  if (a4)
  {
    v10 = result;
    do
    {
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10[3] = a1;
      v10 += 4;
    }

    while (v10 != &result[4 * a4]);
  }

  v11 = *(a1 + 20);
  if ((v11 & 0x40000000) != 0)
  {
    v12 = result;
  }

  else
  {
    v12 = (a1 - 32 * (v11 & 0x7FFFFFF));
  }

  if (*v12)
  {
    v13 = v12[1];
    *v12[2] = v13;
    if (v13)
    {
      *(v13 + 16) = v12[2];
    }
  }

  *v12 = a2;
  if (a2)
  {
    v16 = *(a2 + 8);
    v15 = (a2 + 8);
    v14 = v16;
    v12[1] = v16;
    if (v16)
    {
      *(v14 + 16) = v12 + 1;
    }

    v12[2] = v15;
    *v15 = v12;
  }

  if (a3)
  {
    *(a1 + 18) |= 1u;
    v17 = *(a1 + 20);
    if ((v17 & 0x40000000) != 0)
    {
      v18 = *(a1 - 8);
    }

    else
    {
      v18 = a1 - 32 * (v17 & 0x7FFFFFF);
    }

    if (*(v18 + 32))
    {
      v19 = *(v18 + 40);
      **(v18 + 48) = v19;
      if (v19)
      {
        *(v19 + 16) = *(v18 + 48);
      }
    }

    *(v18 + 32) = a3;
    v22 = *(a3 + 8);
    v21 = (a3 + 8);
    v20 = v22;
    *(v18 + 40) = v22;
    if (v22)
    {
      *(v20 + 16) = v18 + 40;
    }

    *(v18 + 48) = v21;
    *v21 = v18 + 32;
  }

  return result;
}

void llvm::CatchSwitchInst::growOperands(llvm::CatchSwitchInst *this, int a2)
{
  v2 = *(this + 5) & 0x7FFFFFF;
  if (*(this + 15) < (v2 + a2))
  {
    v3 = (a2 + 2 * v2) & 0xFFFFFFFE;
    *(this + 15) = v3;
    llvm::User::growHungoffUses(this, v3, 0);
  }
}

void llvm::CatchSwitchInst::addHandler(llvm::CatchSwitchInst *this, llvm::BasicBlock *a2)
{
  v4 = *(this + 5) & 0x7FFFFFF;
  llvm::CatchSwitchInst::growOperands(this, 1);
  v5 = *(this + 5);
  *(this + 5) = v5 & 0xF8000000 | (v5 + 1) & 0x7FFFFFF;
  if ((v5 & 0x40000000) != 0)
  {
    v6 = *(this - 1);
  }

  else
  {
    v6 = this - 32 * ((v5 + 1) & 0x7FFFFFF);
  }

  v7 = &v6[32 * v4];
  if (*v7)
  {
    v8 = *(v7 + 1);
    **(v7 + 2) = v8;
    if (v8)
    {
      *(v8 + 16) = *(v7 + 2);
    }
  }

  *v7 = a2;
  if (a2)
  {
    v11 = *(a2 + 1);
    v10 = (a2 + 8);
    v9 = v11;
    *(v7 + 1) = v11;
    if (v11)
    {
      *(v9 + 16) = v7 + 8;
    }

    *(v7 + 2) = v10;
    *v10 = v7;
  }
}

void llvm::FuncletPadInst::init(llvm::Value *a1, uint64_t a2, uint64_t *a3, uint64_t a4, const llvm::Twine *a5)
{
  std::__copy_impl::operator()[abi:nn200100]<llvm::Constant * const*,llvm::Constant * const*,llvm::Use *>(&v8, a3, &a3[a4], a1 - 32 * (*(a1 + 5) & 0x7FFFFFF));
  llvm::GlobalIFunc::setResolver(a1, a2);
  llvm::Value::setName(a1, a5);
}

uint64_t llvm::BranchInst::BranchInst(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::Instruction *a3)
{
  v4 = this - 32;
  result = llvm::Instruction::Instruction(this, ***a2 + 1608, 2, this - 32, 1, a3);
  if (*(result - 32))
  {
    v6 = *(result - 24);
    **(result - 16) = v6;
    if (v6)
    {
      *(v6 + 16) = *(result - 16);
    }
  }

  *(result - 32) = a2;
  v9 = *(a2 + 1);
  v8 = (a2 + 8);
  v7 = v9;
  *(result - 24) = v9;
  if (v9)
  {
    *(v7 + 16) = result - 24;
  }

  *(result - 16) = v8;
  *v8 = v4;
  return result;
}

uint64_t llvm::BranchInst::BranchInst(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3, llvm::Value *a4, llvm::Instruction *a5)
{
  v8 = (this - 96);
  result = llvm::Instruction::Instruction(this, ***a2 + 1608, 2, this - 96, 3, a5);
  if (*(result - 96))
  {
    v10 = *(result - 88);
    **(result - 80) = v10;
    if (v10)
    {
      *(v10 + 16) = *(result - 80);
    }
  }

  *v8 = a4;
  if (a4)
  {
    v13 = *(a4 + 1);
    v12 = (a4 + 8);
    v11 = v13;
    *(result - 88) = v13;
    if (v13)
    {
      *(v11 + 16) = result - 88;
    }

    *(result - 80) = v12;
    *v12 = v8;
  }

  v14 = (result - 64);
  if (*(result - 64))
  {
    v15 = *(result - 56);
    **(result - 48) = v15;
    if (v15)
    {
      *(v15 + 16) = *(result - 48);
    }
  }

  *v14 = a3;
  if (a3)
  {
    v18 = *(a3 + 1);
    v17 = (a3 + 8);
    v16 = v18;
    *(result - 56) = v18;
    if (v18)
    {
      *(v16 + 16) = result - 56;
    }

    *(result - 48) = v17;
    *v17 = v14;
  }

  if (*(result - 32))
  {
    v19 = *(result - 24);
    **(result - 16) = v19;
    if (v19)
    {
      *(v19 + 16) = *(result - 16);
    }
  }

  *(result - 32) = a2;
  v22 = *(a2 + 1);
  v21 = (a2 + 8);
  v20 = v22;
  *(result - 24) = v22;
  if (v22)
  {
    *(v20 + 16) = result - 24;
  }

  *(result - 16) = v21;
  *v21 = result - 32;
  return result;
}

llvm::BranchInst *llvm::BranchInst::BranchInst(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3)
{
  *this = ***a2 + 1608;
  *(this + 1) = 0;
  *(this + 16) = 30;
  *(this + 17) = 0;
  *(this + 9) = 0;
  *(this + 5) = *(this + 5) & 0xC0000000 | 1;
  v6 = a3 + 40;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 24) = 0u;
  v7 = (this + 24);
  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(a3 + 40, this);
  v8 = *(this - 4);
  v9 = *(a3 + 5);
  *(this + 4) = v6;
  *v7 = v9;
  *(v9 + 8) = v7;
  *(a3 + 5) = v7;
  if (v8)
  {
    v10 = *(this - 3);
    **(this - 2) = v10;
    if (v10)
    {
      *(v10 + 16) = *(this - 2);
    }
  }

  *(this - 4) = a2;
  v13 = *(a2 + 1);
  v12 = (a2 + 8);
  v11 = v13;
  *(this - 3) = v13;
  if (v13)
  {
    *(v11 + 16) = this - 24;
  }

  *(this - 2) = v12;
  *v12 = this - 32;
  return this;
}

uint64_t llvm::AllocaInst::AllocaInst(uint64_t a1, llvm::PointerType **a2, llvm::Type *a3, llvm::Value *a4, unsigned __int8 a5, const llvm::Twine *a6, llvm::Instruction *a7)
{
  v13 = llvm::PointerType::get(a2, a3);
  if (!a4)
  {
    a4 = llvm::ConstantInt::get(**a2 + 1992, 1);
  }

  v14 = llvm::UnaryInstruction::UnaryInstruction(a1, v13, 31, a4, a7);
  *(a1 + 64) = a2;
  *(a1 + 18) = *(a1 + 18) & 0xFFC0 | a5;
  llvm::Value::setName(v14, a6);
  return a1;
}

llvm::UnaryInstruction *llvm::UnaryInstruction::UnaryInstruction(llvm::UnaryInstruction *this, llvm::Type *a2, char a3, llvm::Value *a4, llvm::BasicBlock *a5)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 16) = a3 + 28;
  *(this + 17) = 0;
  *(this + 9) = 0;
  *(this + 5) = *(this + 5) & 0xC0000000 | 1;
  v8 = a5 + 40;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 24) = 0u;
  v9 = (this + 24);
  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(a5 + 40, this);
  v10 = (this - 32);
  v11 = *(this - 4);
  v12 = *(a5 + 5);
  *(this + 4) = v8;
  *v9 = v12;
  *(v12 + 8) = v9;
  *(a5 + 5) = v9;
  if (v11)
  {
    v13 = *(this - 3);
    **(this - 2) = v13;
    if (v13)
    {
      *(v13 + 16) = *(this - 2);
    }
  }

  *v10 = a4;
  if (a4)
  {
    v16 = *(a4 + 1);
    v15 = (a4 + 8);
    v14 = v16;
    *(this - 3) = v16;
    if (v16)
    {
      *(v14 + 16) = this - 24;
    }

    *(this - 2) = v15;
    *v15 = v10;
  }

  return this;
}

llvm::UnaryInstruction *llvm::LoadInst::LoadInst(llvm::UnaryInstruction *a1, llvm::Type *a2, llvm::Value *a3, const llvm::Twine *a4, __int16 a5, char a6, llvm::Instruction *a7)
{
  v11 = llvm::UnaryInstruction::UnaryInstruction(a1, a2, 32, a3, a7);
  *(v11 + 18) = a5 & 0xFF81 | (2 * (a6 & 0x3F)) | *(v11 + 18) & 0xFC00;
  *(v11 + 60) = 1;
  llvm::Value::setName(v11, a4);
  return a1;
}

llvm::UnaryInstruction *llvm::LoadInst::LoadInst(llvm::UnaryInstruction *a1, llvm::Type *a2, llvm::Value *a3, const llvm::Twine *a4, __int16 a5, char a6, __int16 a7, char a8, llvm::Instruction *a9)
{
  v15 = llvm::UnaryInstruction::UnaryInstruction(a1, a2, 32, a3, a9);
  *(v15 + 18) = *(v15 + 18) & 0xFC00 | a5 & 0xFF81 | (2 * (a6 & 0x3F)) | (a7 << 7);
  *(v15 + 60) = a8;
  llvm::Value::setName(v15, a4);
  return a1;
}

uint64_t llvm::StoreInst::StoreInst(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, char a5, __int16 a6, char a7, uint64_t *a8)
{
  v14 = a1 - 64;
  result = llvm::Instruction::Instruction(a1, ***a2 + 1608, 33, a1 - 64, 2, a8);
  if (*(result - 64))
  {
    v16 = *(result - 56);
    **(result - 48) = v16;
    if (v16)
    {
      *(v16 + 16) = *(result - 48);
    }
  }

  *(result - 64) = a2;
  v19 = *(a2 + 8);
  v18 = (a2 + 8);
  v17 = v19;
  *(result - 56) = v19;
  if (v19)
  {
    *(v17 + 16) = result - 56;
  }

  *(result - 48) = v18;
  *v18 = v14;
  v20 = (result - 32);
  if (*(result - 32))
  {
    v21 = *(result - 24);
    **(result - 16) = v21;
    if (v21)
    {
      *(v21 + 16) = *(result - 16);
    }
  }

  *v20 = a3;
  if (a3)
  {
    v24 = *(a3 + 8);
    v23 = (a3 + 8);
    v22 = v24;
    *(result - 24) = v24;
    if (v24)
    {
      *(v22 + 16) = result - 24;
    }

    *(result - 16) = v23;
    *v23 = v20;
  }

  *(result + 18) = *(result + 18) & 0xFC00 | a4 & 0xFF81 | (2 * (a5 & 0x3F)) | (a6 << 7);
  *(result + 60) = a7;
  return result;
}

uint64_t llvm::AtomicCmpXchgInst::Init(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, __int16 a6, __int16 a7, char a8)
{
  v8 = (result - 96);
  if (*(result - 96))
  {
    v9 = *(result - 88);
    **(result - 80) = v9;
    if (v9)
    {
      *(v9 + 16) = *(result - 80);
    }
  }

  *v8 = a2;
  if (a2)
  {
    v12 = *(a2 + 8);
    v10 = (a2 + 8);
    v11 = v12;
    *(result - 88) = v12;
    if (v12)
    {
      *(v11 + 16) = result - 88;
    }

    *(result - 80) = v10;
    *v10 = v8;
  }

  v13 = (result - 64);
  if (*(result - 64))
  {
    v14 = *(result - 56);
    **(result - 48) = v14;
    if (v14)
    {
      *(v14 + 16) = *(result - 48);
    }
  }

  *v13 = a3;
  if (a3)
  {
    v17 = *(a3 + 8);
    v15 = (a3 + 8);
    v16 = v17;
    *(result - 56) = v17;
    if (v17)
    {
      *(v16 + 16) = result - 56;
    }

    *(result - 48) = v15;
    *v15 = v13;
  }

  v18 = (result - 32);
  if (*(result - 32))
  {
    v19 = *(result - 24);
    **(result - 16) = v19;
    if (v19)
    {
      *(v19 + 16) = *(result - 16);
    }
  }

  *v18 = a4;
  if (a4)
  {
    v22 = *(a4 + 8);
    v20 = (a4 + 8);
    v21 = v22;
    *(result - 24) = v22;
    if (v22)
    {
      *(v21 + 16) = result - 24;
    }

    *(result - 16) = v20;
    *v20 = v18;
  }

  v23 = *(result + 18) & 0xC003;
  *(result + 60) = a8;
  *(result + 18) = (4 * a6) & 0xC01F | (a5 << 8) | (32 * a7) & 0xC0FF | v23;
  return result;
}

uint64_t llvm::AtomicCmpXchgInst::AtomicCmpXchgInst(uint64_t a1, uint64_t a2, uint64_t ***a3, uint64_t a4, unsigned __int8 a5, __int16 a6, __int16 a7, char a8, uint64_t *a9)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v17 = **a3;
  v18 = *v17 + 1920;
  v23[0] = *a3;
  v23[1] = v18;
  v19 = llvm::StructType::get(v17, v23, 2, 0);
  v20 = llvm::Instruction::Instruction(a1, v19, 36, a1 - 96, 3, a9);
  llvm::AtomicCmpXchgInst::Init(v20, a2, a3, a4, a5, a6, a7, a8);
  v21 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t llvm::AtomicRMWInst::Init(uint64_t result, __int16 a2, uint64_t a3, uint64_t a4, __int16 a5, __int16 a6, char a7)
{
  v7 = (result - 64);
  if (*(result - 64))
  {
    v8 = *(result - 56);
    **(result - 48) = v8;
    if (v8)
    {
      *(v8 + 16) = *(result - 48);
    }
  }

  *v7 = a3;
  if (a3)
  {
    v11 = *(a3 + 8);
    v9 = (a3 + 8);
    v10 = v11;
    *(result - 56) = v11;
    if (v11)
    {
      *(v10 + 16) = result - 56;
    }

    *(result - 48) = v9;
    *v9 = v7;
  }

  v12 = (result - 32);
  if (*(result - 32))
  {
    v13 = *(result - 24);
    **(result - 16) = v13;
    if (v13)
    {
      *(v13 + 16) = *(result - 16);
    }
  }

  *v12 = a4;
  if (a4)
  {
    v16 = *(a4 + 8);
    v14 = (a4 + 8);
    v15 = v16;
    *(result - 24) = v16;
    if (v16)
    {
      *(v15 + 16) = result - 24;
    }

    *(result - 16) = v14;
    *v14 = v12;
  }

  v17 = *(result + 18) & 0x8001;
  *(result + 60) = a7;
  *(result + 18) = ((2 * a6) | (16 * a2)) & 0x81FF | (a5 << 9) | v17;
  return result;
}